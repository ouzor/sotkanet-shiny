library(googleVis)
library(reshape2)
library(ggplot2)
theme_set(theme_grey(20))
library(grid)

load("sotkanet_data_20130908.RData")
load("Sotkanet_MunicipalityData_20130908.RData")


shinyServer(function (input, output) {
  
  data.mc <- reactive({
    
    # Use given region cateogry
    sotkanet.df <- sotkanet.list[[input$region.category]]
    # Take subset based on chosen indicator categories (only when input given)
    if (!is.null(input$indicator.category)) {
      indicator.categories <- c("YLEISET", input$indicator.category)
      # message(indicator.categories)
      inds.totake <- unlist(lapply(indicator.categories, function(x) grep(x, sotkanet.df$Muuttuja)))
      sotkanet.df <- droplevels(sotkanet.df[inds.totake,])
    } else {
      stop("Valitse ainakin yksi Muuttujakategoria!")
    }
    return(sotkanet.df)
  })
  
  data.map.gvis <- reactive({
    
    # Use data for given indicator and year
    map.df <- droplevels(subset(sotkanet.list$maakunta, 
                                Muuttuja == input$map.indicator & Vuosi == input$map.year))
    map.df <- merge(map.df, unique(kunnat[c("maakunta.title.fi", "Code")]), 
                    by.x="Maakunta", by.y="maakunta.title.fi")#, all.y=TRUE)
    
    return(map.df)
  })
  
  data.map.ggplot <- reactive({
    
    # Use data for given indicator (all available years)
    map.df <- droplevels(subset(sotkanet.list$maakunta, Muuttuja==input$map.indicator))
    map.df <- merge(map.df, unique(kunnat[c("maakunta.title.fi", "Code")]), 
                    by.x="Maakunta", by.y="maakunta.title.fi", all.y=TRUE)
    map.df <- merge(mk.df, map.df, all.x=TRUE)
    
    return(map.df)
  })
  
  output$motionchart <- renderGvis({
    
    sotkanet.wide <- reshape2::dcast(data.mc(), Alue + Vuosi + Maakunta ~ Muuttuja, value.var="Arvo")
    # Arrange variables in order: 1) Alue 2) Vuosi 3 & 4) First variables in data, 5) Maakunta 6) "[YLEISET] Väestö 31.12."
#     sotkanet.core <- sotkanet.wide[c("Alue", "Vuosi", "Maakunta", "[YLEISET] Väestö 31.12.")]
#     sotkanet.others <- sotkanet.wide[!(names(sotkanet.wide) %in% names(sotkanet.core))]
#     
#     sotkanet.wide <- cbind(sotkanet.core[1:2], sotkanet.others[1:2], sotkanet.core[3:4], sotkanet.others[3:ncol(sotkanet.others)])
    mchart <- googleVis::gvisMotionChart(sotkanet.wide, idvar="Alue", timevar="Vuosi", 
                                         xvar=names(sotkanet.wide)[4], yvar=names(sotkanet.wide)[5], 
                                         colorvar = "Maakunta", sizevar = "[YLEISET] Väestö 31.12.", # Does not have any effect
                                         options=list(height=500, width=600))
    return(mchart)
  })
  
  output$map.status <- renderText({
    status <- paste("Muuttuja:", input$map.indicator)
    if (nrow(data.map.gvis())==0)
      status <- paste(status, "VIRHE: ANNETULLE VUODELLE EI LÖYDY DATAA. VAIHDA VUOSI!")
    
    return(status)
  })
  
  output$map.gvis <- renderGvis({
    map.df <- data.map.gvis()
    if (nrow(map.df)==0)
      return(NULL)
    map <- googleVis::gvisGeoMap(map.df, locationvar="Code", numvar="Arvo", hovervar="Maakunta", options=list(region="FI"))
    return(map)
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
  
  outputOptions(output, "motionchart", suspendWhenHidden = FALSE)
})