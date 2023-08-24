library(BasketballAnalyzeR)
# Pbp stands for 'Play by play' 
PbP <- PbPmanipulation(PbP.BDB)

# Choosing my play by play stats to be Stephen Curry. You can check in subdata tab
subdata <- subset(PbP, player=="Stephen Curry")

# Dimensions of the court for the plot
subdata$xx <- subdata$original_x/10
subdata$yy <- subdata$original_y/10-41.75

# The shot chart of all shots. The shots will be recorded in blue and the court as yellow
shotchart(data=subdata, x="xx", y="yy", scatter = T,
          pt.col = 'blue',
          bg.col = 'yellow')

# Shows makes and misses
shotchart(data=subdata, x="xx", y="yy", scatter = T,
          z = 'result',
          bg.col = 'black',
          courtline.col = 'white',
          palette = 'hot')

# Adding sectors to see where Stephen spent majority of his time
# He spends less time outside the perimeter because of coming off screens or just cutting.
shotchart(data=subdata, x="xx", y="yy", scatter = T,
          num.sect = 5,
          type = 'sectors',
          z = 'playlength')

# Shows % of shots made and misses but still has play length available 
shotchart(data=subdata, x="xx", y="yy", scatter = F,
          num.sect = 5,
          type = 'sectors',
          z = 'playlength',
          result = 'result')     



