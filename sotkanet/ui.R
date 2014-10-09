shinyUI(fluidPage(
  
  # Include googel analytics script (updated 8.10.2014)
  tags$head(includeScript("google-analytics.js")),
  
  # Application title
  titlePanel("Sotkanet: Alueellinen hyvinvointi"),
  
  sidebarLayout(
    sidebarPanel(
      # Adjust size
      tags$head(
        tags$style(type="text/css", "select { width: 300px; }"),
        tags$style(type="text/css", "textarea { max-width: 280px; }"),
        tags$style(type="text/css", ".jslider { max-width: 300; }"),
        tags$style(type='text/css', ".well { max-width: 300px; }"),
        tags$style(type='text/css', ".span4 { max-width: 300px; }")
      ),
      #      helpText(h4("Käyttöhjeet:")),
      helpText("Tällä visualisoinnilla voit tarkastella Sotkanetin indikaattoridataa motion chartin ja kartan avulla."),
      selectInput("plotType", "Visualisointitapa", c("Motion chart" = "motionchart", "Kartta" = "map")),
      conditionalPanel(
        condition = "input.plotType == 'motionchart'",
        helpText(h4("Motion chartin asetukset:")),
        
        radioButtons("region.category", "Aluekategoria",
                     c("Kunta" = "kunta",
                       "Maakunta" = "maakunta",
                       "Seutukunta" = "seutukunta")),
        checkboxGroupInput("indicator.category","Muuttujakategoriat",
                           choices=c("Talous"="TALOUS",
                                     "Tilastollinen hyvintointi"="TILASTOLLINEN HYVINVOINTI",
                                     "Tuloerot"="TULOEROT",
                                     "Työelämä"="TYÖELÄMÄ",
                                     "Väestönmuutos"="VÄESTÖNMUUTOS"),
                           selected=c("Talous"="TALOUS",
                                      "Tilastollinen hyvintointi"="TILASTOLLINEN HYVINVOINTI")
        )
      ),
#       conditionalPanel(
#         condition = "input.plotType == 'map'",
#         helpText(h4("Kartan asetukset:"))
#         selectInput("map.indicator", "Muuttuja", width="400px",
#                     choices=c(
#                       "[TALOUS] Keskiasteen koulutuksen saaneet, % 15 vuotta täyttäneistä",
#                       "[TALOUS] Korkea-asteen koulutuksen saaneet, % 15 vuotta täyttäneistä",
#                       "[TALOUS] Koulutuksen ulkopuolelle jääneet 17 - 24-vuotiaat, % vastaavanikaisesta väestöstä",
#                       "[TALOUS] Koulutustasomittain",
#                       "[TALOUS] Lainakanta, euroa / asukas",
#                       "[TALOUS] Suhteellinen velkaantuneisuus, %",
#                       "[TALOUS] Verotulot, euroa / asukas",
#                       "[TILASTOLLINEN HYVINVOINTI] Depressiolääkkeistä korvausta saaneet 18-64-vuotiaat / 1000 vastaavanikäistä",
#                       "[TILASTOLLINEN HYVINVOINTI] Hoitopäivät perusterveydenhuollossa 75 vuotta täyttäneillä / 1000 vastaavanikäistä",
#                       "[TILASTOLLINEN HYVINVOINTI] Mielenterveyden häirioihin sairaalahoitoa saaneet 0 - 17-vuotiaat / 1000 vastaavanikaista",
#                       "[TILASTOLLINEN HYVINVOINTI] Sairauspäivärahaa saaneet 16 - 64-vuotiaat / 1000 vastaavanikäistä",
#                       "[TILASTOLLINEN HYVINVOINTI] Toimeentulotukea saaneet henkilöt vuoden aikana, % asukkaista",
#                       "[TILASTOLLINEN HYVINVOINTI] Toimeentulotuki, euroa / asukas",
#                       "[TULOEROT] Äänestysaktiivisuus kuntavaaleissa, %",
#                       "[TULOEROT] Gini-kerroin, käytettävissä olevat tulot",
#                       "[TULOEROT] Kunnan yleinen pienituloisuusaste",
#                       "[TYÖELÄMÄ] Ammatillinen, tieteellinen ja tekninen toiminta; Hallinto ja tukipalvelutoiminta, % työllisistä",
#                       "[TYÖELÄMÄ] Informaatio ja viestintä, % työllisistä",
#                       "[TYÖELÄMÄ] Julkinen hallinto ja maanpuolustus sekä Pakollinen sosiaalivakuutus; Koulutus; Sosiaali- ja terveyspalvelut, % työllisistä",
#                       "[TYÖELÄMÄ] Julkiset ja muut palvelut, % työllisistä (-2007)",
#                       "[TYÖELÄMÄ] Kaivostoiminta; Sähkö-, kaasu ja lämpöhuolto; Vesi-, viemäri- ja jätehuolto, % työllisistä",
#                       "[TYÖELÄMÄ] Kauppa, majoitus- ja ravitsemistoiminta, % työllisistä (-2007)",
#                       "[TYÖELÄMÄ] Kiinteistöalan toiminta, % työllisistä",
#                       "[TYÖELÄMÄ] Liikenne, % työllisistä (-2007)",
#                       "[TYÖELÄMÄ] Maa- ja metsätalous, % työllisistä (-2007)",
#                       "[TYÖELÄMÄ] Maa-, metsä- ja kalatalous, % työllisistä",
#                       "[TYÖELÄMÄ] Muut palvelut, % työllisistä",
#                       "[TYÖELÄMÄ] Rahoitus ja vakuutustoiminta, % työllisistä",
#                       "[TYÖELÄMÄ] Rahoitus-, vakuutus- ja liike-elämää palveleva toiminta, % työllisistä (-2007)",
#                       "[TYÖELÄMÄ] Rakentaminen, % työllisistä",
#                       "[TYÖELÄMÄ] Rakentaminen, % työllisistä (-2007)",
#                       "[TYÖELÄMÄ] Teollisuus, % työllisistä",
#                       "[TYÖELÄMÄ] Teollisuus, % työllisistä (-2007)",
#                       "[TYÖELÄMÄ] Tukku- ja vähittäiskauppa; Kuljetus ja varastointi; Majoitus- ja ravitsemistoiminta , % työllisistä",
#                       "[TYÖELÄMÄ] Työlliset, % väestöstä",
#                       "[TYÖELÄMÄ] Työttömät, % työvoimasta",
#                       "[TYÖELÄMÄ] Vaikeasti työllistyvät, % 15 - 64-vuotiaista",
#                       "[VÄESTÖNMUUTOS] 16-64 -vuotiaat, % väestöstä",
#                       "[VÄESTÖNMUUTOS] 16-64 -vuotiaat, % väestöstä, väestöennuste 2040",
#                       "[VÄESTÖNMUUTOS] 65 vuotta täyttäneet, % väestöstä, väestöennuste 2040",
#                       "[VÄESTÖNMUUTOS] 65-74 -vuotiaat, % väestöstä",
#                       "[VÄESTÖNMUUTOS] 7-15 -vuotiaat, % väestöstä, väestöennuste 2040",
#                       "[VÄESTÖNMUUTOS] Huoltosuhde, demografinen",
#                       "[VÄESTÖNMUUTOS] Kuntien välinen nettomuutto / 1 000 asukasta",
#                       "[VÄESTÖNMUUTOS] Lähtömuuttajat, lkm",
#                       "[VÄESTÖNMUUTOS] Muu kuin suomi, ruotsi tai saame äidinkielenä / 1000 asukasta",
#                       "[VÄESTÖNMUUTOS] Tulomuuttajat, lkm",
#                       "[VÄESTÖNMUUTOS] Väestöennuste 2020",
#                       "[VÄESTÖNMUUTOS] Väestöennuste 2030",
#                       "[VÄESTÖNMUUTOS] Väestöennuste 2040",
#                       "[YLEISET] Väestö 31.12."))
        #        selectInput("map.year", "Vuosi", choices=1990:2011)
#       ),
      #      submitButton(text="Päivitä"),
      br(),
      p("Made by", a("@ouzor", href="https://twitter.com/ouzor")),
      helpText(a("Datalähde: Sotkanet", href="http://www.sotkanet.fi", target="_blank")),
      helpText(a("Lähdekoodi GitHubissa", href="https://github.com/ouzor/sotkanet-shiny", target="_blank"))),
    
    mainPanel(
      conditionalPanel(
        condition = "input.plotType == 'motionchart'",
        h4("Vertaile indikaattoreita alueittain"), htmlOutput("motionchart")
      ),
      conditionalPanel(
        condition = "input.plotType == 'map'",
        h4("Tarkastele indikaattoreita kartalla vuosittain"),
        selectInput("map.indicator", "Valitse indikaattori", width="100%",
                    choices=c(
                      "[TALOUS] Keskiasteen koulutuksen saaneet, % 15 vuotta täyttäneistä",
                      "[TALOUS] Korkea-asteen koulutuksen saaneet, % 15 vuotta täyttäneistä",
                      "[TALOUS] Koulutuksen ulkopuolelle jääneet 17 - 24-vuotiaat, % vastaavanikaisesta väestöstä",
                      "[TALOUS] Koulutustasomittain",
                      "[TALOUS] Lainakanta, euroa / asukas",
                      "[TALOUS] Suhteellinen velkaantuneisuus, %",
                      "[TALOUS] Verotulot, euroa / asukas",
                      "[TILASTOLLINEN HYVINVOINTI] Depressiolääkkeistä korvausta saaneet 18-64-vuotiaat / 1000 vastaavanikäistä",
                      "[TILASTOLLINEN HYVINVOINTI] Hoitopäivät perusterveydenhuollossa 75 vuotta täyttäneillä / 1000 vastaavanikäistä",
                      "[TILASTOLLINEN HYVINVOINTI] Mielenterveyden häirioihin sairaalahoitoa saaneet 0 - 17-vuotiaat / 1000 vastaavanikaista",
                      "[TILASTOLLINEN HYVINVOINTI] Sairauspäivärahaa saaneet 16 - 64-vuotiaat / 1000 vastaavanikäistä",
                      "[TILASTOLLINEN HYVINVOINTI] Toimeentulotukea saaneet henkilöt vuoden aikana, % asukkaista",
                      "[TILASTOLLINEN HYVINVOINTI] Toimeentulotuki, euroa / asukas",
                      "[TULOEROT] Äänestysaktiivisuus kuntavaaleissa, %",
                      "[TULOEROT] Gini-kerroin, käytettävissä olevat tulot",
                      "[TULOEROT] Kunnan yleinen pienituloisuusaste",
                      "[TYÖELÄMÄ] Ammatillinen, tieteellinen ja tekninen toiminta; Hallinto ja tukipalvelutoiminta, % työllisistä",
                      "[TYÖELÄMÄ] Informaatio ja viestintä, % työllisistä",
                      "[TYÖELÄMÄ] Julkinen hallinto ja maanpuolustus sekä Pakollinen sosiaalivakuutus; Koulutus; Sosiaali- ja terveyspalvelut, % työllisistä",
                      "[TYÖELÄMÄ] Julkiset ja muut palvelut, % työllisistä (-2007)",
                      "[TYÖELÄMÄ] Kaivostoiminta; Sähkö-, kaasu ja lämpöhuolto; Vesi-, viemäri- ja jätehuolto, % työllisistä",
                      "[TYÖELÄMÄ] Kauppa, majoitus- ja ravitsemistoiminta, % työllisistä (-2007)",
                      "[TYÖELÄMÄ] Kiinteistöalan toiminta, % työllisistä",
                      "[TYÖELÄMÄ] Liikenne, % työllisistä (-2007)",
                      "[TYÖELÄMÄ] Maa- ja metsätalous, % työllisistä (-2007)",
                      "[TYÖELÄMÄ] Maa-, metsä- ja kalatalous, % työllisistä",
                      "[TYÖELÄMÄ] Muut palvelut, % työllisistä",
                      "[TYÖELÄMÄ] Rahoitus ja vakuutustoiminta, % työllisistä",
                      "[TYÖELÄMÄ] Rahoitus-, vakuutus- ja liike-elämää palveleva toiminta, % työllisistä (-2007)",
                      "[TYÖELÄMÄ] Rakentaminen, % työllisistä",
                      "[TYÖELÄMÄ] Rakentaminen, % työllisistä (-2007)",
                      "[TYÖELÄMÄ] Teollisuus, % työllisistä",
                      "[TYÖELÄMÄ] Teollisuus, % työllisistä (-2007)",
                      "[TYÖELÄMÄ] Tukku- ja vähittäiskauppa; Kuljetus ja varastointi; Majoitus- ja ravitsemistoiminta , % työllisistä",
                      "[TYÖELÄMÄ] Työlliset, % väestöstä",
                      "[TYÖELÄMÄ] Työttömät, % työvoimasta",
                      "[TYÖELÄMÄ] Vaikeasti työllistyvät, % 15 - 64-vuotiaista",
                      "[VÄESTÖNMUUTOS] 16-64 -vuotiaat, % väestöstä",
                      "[VÄESTÖNMUUTOS] 16-64 -vuotiaat, % väestöstä, väestöennuste 2040",
                      "[VÄESTÖNMUUTOS] 65 vuotta täyttäneet, % väestöstä, väestöennuste 2040",
                      "[VÄESTÖNMUUTOS] 65-74 -vuotiaat, % väestöstä",
                      "[VÄESTÖNMUUTOS] 7-15 -vuotiaat, % väestöstä, väestöennuste 2040",
                      "[VÄESTÖNMUUTOS] Huoltosuhde, demografinen",
                      "[VÄESTÖNMUUTOS] Kuntien välinen nettomuutto / 1 000 asukasta",
                      "[VÄESTÖNMUUTOS] Lähtömuuttajat, lkm",
                      "[VÄESTÖNMUUTOS] Muu kuin suomi, ruotsi tai saame äidinkielenä / 1000 asukasta",
                      "[VÄESTÖNMUUTOS] Tulomuuttajat, lkm",
                      "[VÄESTÖNMUUTOS] Väestöennuste 2020",
                      "[VÄESTÖNMUUTOS] Väestöennuste 2030",
                      "[VÄESTÖNMUUTOS] Väestöennuste 2040",
                      "[YLEISET] Väestö 31.12.")),
        plotOutput("map.ggplot", height="400px", width="100%")
        #        h4("Tarkastele indikaattoreita kartalla"),h4(textOutput("map.status")), htmlOutput("map.gvis")
        
        
      )
    )
  )
))