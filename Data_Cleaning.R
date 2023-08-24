# With this dataset there is N/A values 
head(airquality)

# Showing the two columns that have N/A values
mean(airquality$Ozone)
mean(airquality$Solar.R)

# Using na.rm to remove all N/A values 
mean(airquality$Ozone, na.rm = TRUE)
mean(airquality$Solar.R, na.rm = TRUE)

# The boxplot shows a clear visual of the irregular data
summary(airquality)
boxplot(airquality)

# Removing irregularities with is.na()
New_df = airquality
New_df$Ozone = ifelse(is.na(New_df$Ozone),
                      median(New_df$Ozone,
                             na.rm = TRUE),
                      New_df$Ozone)
summary(New_df)

# Same code but with Solar.R instead of Ozone 
New_df$Solar.R = ifelse(is.na(New_df$Solar.R),
                        median(New_df$Solar.R,
                               na.rm = TRUE),
                        New_df$Solar.R)

summary(New_df)

# Clean data
head(New_df)

# Boxplot to show that there are no errors
boxplot(New_df)


