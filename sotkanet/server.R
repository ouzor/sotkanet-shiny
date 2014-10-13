library(googleVis)
library(reshape2)
library(ggplot2)
theme_set(theme_grey(20))
library(grid)

load("Sotkanet_MunicipalityData_20130908.RData")
# # Preprocess data already here
load("sotkanet_data_20130908.RData")
# sotkanet.wide.list <- lapply(sotkanet.list, function(x) reshape2::dcast(x, Alue + Vuosi + Maakunta ~ Muuttuja, value.var="Arvo"))
# save(sotkanet.wide.list, file="sotkanet_data_wide_20141013.RData")
load("sotkanet_data_wide_20141013.RData")

shinyServer(function (input, output) {
  
  ## MOTION CHART #######
  data.mc <- reactive({
    
    # Take subset based on chosen indicator categories (only when input given)
    if (!is.null(input$indicator.category)) {
      sotkanet.df <- sotkanet.wide.list[[input$region.category]]
      indicators.core <- c("Alue", "Vuosi", "Maakunta", "[YLEISET] Väestö 31.12.")
      indicators.categories <- unlist(lapply(input$indicator.category, function(x) grep(x, names(sotkanet.df), value=TRUE)))
      sotkanet.df <- sotkanet.df[c(indicators.core, indicators.categories)]
      
    } else {
      message("Valitse ainakin yksi Muuttujakategoria!")
    }
    return(sotkanet.df)
    
#     # Use given region cateogry
#     sotkanet.df <- sotkanet.list[[input$region.category]]
#     # Take subset based on chosen indicator categories (only when input given)
#     if (!is.null(input$indicator.category)) {
#       indicator.categories <- c("YLEISET", input$indicator.category)
#       # message(indicator.categories)
#       inds.totake <- unlist(lapply(indicator.categories, function(x) grep(x, sotkanet.df$Muuttuja)))
#       sotkanet.df <- droplevels(sotkanet.df[inds.totake,])
#     } else {
#       stop("Valitse ainakin yksi Muuttujakategoria!")
#     }
#     return(sotkanet.df)
  })
  
  output$motionchart <- renderGvis({
    
    sotkanet.df <- data.mc()
    mchart <- googleVis::gvisMotionChart(sotkanet.df, idvar="Alue", timevar="Vuosi", 
                                         xvar=names(sotkanet.df)[5], yvar=names(sotkanet.df)[6], 
                                         colorvar = "Maakunta", sizevar = "[YLEISET] Väestö 31.12.", # Does not have any effect
                                         options=list(height=500, width=600))
    return(mchart)
  })
  
  
  ## MAP WITH GGPLOT #######
  data.map.ggplot <- reactive({
    
    # Use data for given indicator (all available years)
    map.df <- droplevels(subset(sotkanet.list$maakunta, Muuttuja==input$map.indicator))
    map.df <- merge(map.df, unique(kunnat[c("maakunta.title.fi", "Code")]), 
                    by.x="Maakunta", by.y="maakunta.title.fi", all.y=TRUE)
    map.df <- merge(mk.df, map.df, all.x=TRUE)
    
    return(map.df)
  })
  
  
  output$map.ggplot <- renderPlot({
    map.df <- data.map.ggplot()
    p.map <- ggplot2::ggplot(map.df, aes(x=long, y=lat, fill=Arvo)) + 
      geom_polygon(aes(group=Maakunta), colour="white", size=0.1) + 
      facet_wrap(~ Vuosi, ncol=12) + 
      theme(legend.position="bottom", axis.text.x=element_blank(), axis.ticks.x=element_blank(), 
            axis.text.y=element_blank(), axis.ticks.y=element_blank(), 
            legend.key.width = unit(2, "cm"), legend.direction="horizontal",
            plot.title=element_text(size=18)) + 
      labs(x=NULL, y=NULL, fill=NULL) + 
      coord_equal() + 
      #      ggtitle(levels(map.df$Muuttuja)[1])
      ggtitle(gsub("] ", "]\n", levels(map.df$Muuttuja)[1]))
    
    return(p.map)
  })
  
  #   data.map.gvis <- reactive({
  #     
  #     # Use data for given indicator and year
  #     map.df <- droplevels(subset(sotkanet.list$maakunta, 
  #                                 Muuttuja == input$map.indicator & Vuosi == input$map.year))
  #     map.df <- merge(map.df, unique(kunnat[c("maakunta.title.fi", "Code")]), 
  #                     by.x="Maakunta", by.y="maakunta.title.fi")#, all.y=TRUE)
  #     
  #     return(map.df)
  #   })
  
  #   output$map.status <- renderText({
  #     status <- paste("Muuttuja:", input$map.indicator)
  #     if (nrow(data.map.gvis())==0)
  #       status <- paste(status, "VIRHE: ANNETULLE VUODELLE EI LÖYDY DATAA. VAIHDA VUOSI!")
  #     
  #     return(status)
  #   })
  #   
  #   output$map.gvis <- renderGvis({
  #     map.df <- data.map.gvis()
  #     if (nrow(map.df)==0)
  #       return(NULL)
  #     map <- googleVis::gvisGeoMap(map.df, locationvar="Code", numvar="Arvo", hovervar="Maakunta", options=list(region="FI"))
  #     return(map)
  #   })
  
  outputOptions(output, "motionchart", suspendWhenHidden = FALSE)
})