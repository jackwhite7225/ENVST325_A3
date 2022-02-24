#Prompt 1

install.packages('ggplot2')
library(ggplot2)

North_Hemi = climate_change[climate_change$Entity == "Northern Hemisphere",]
South_Hemi = climate_change[climate_change$Entity == "Southern Hemisphere",]

plot(North_Hemi$Day, North_Hemi$temperature_anomaly, xlab = "Year", ylab = "Temperature Anomaly",
     main = "North Hemisphere Temperature Anomaly")
plot(South_Hemi$Day, South_Hemi$temperature_anomaly, xlab = "Year", ylab = "Temperature Anomaly",
     main = "South Hemisphere Temperature Anomaly")

ggplot(data = North_Hemi, aes(x = Day, y = temperature_anomaly)) + geom_point()
ggplot(data = South_Hemi, aes(x = Day, y = temperature_anomaly)) + geom_point()

#Prompt 2

American_emissions = annual_co_emissions_by_region[annual_co_emissions_by_region$Entity == "United States",]
Mexican_emissions = annual_co_emissions_by_region[annual_co_emissions_by_region$Entity == "Mexico",]
Canadian_emissions = annual_co_emissions_by_region[annual_co_emissions_by_region$Entity == "Canada",]
plot(American_emissions$Year, American_emissions$`Annual CO2 emissions (zero filled)`,
     xlab = "Year", ylab = "Annual CO2 Emissions", main = "USA Annual CO2 Emissions")
plot(Mexican_emissions$Year, Mexican_emissions$`Annual CO2 emissions (zero filled)`,
     xlab = "Year", ylab = "Annual CO2 Emissions", main = "Mexico Annual CO2 Emissions")
plot(Canadian_emissions$Year, Canadian_emissions$`Annual CO2 emissions (zero filled)`,
     xlab = "Year", ylab = "Annual CO2 Emissions", main = "Canada Annual CO2 Emissions")

#Question 1

Malta_emissions = annual_co_emissions_by_region[annual_co_emissions_by_region$Entity == "Malta",]
plot(Malta_emissions$Year, Malta_emissions$`Annual CO2 emissions (zero filled)`, 
     xlab = "Year", ylab = "Annual CO2 Emissions", main = "Malta Annual CO2 Emissions", col = "19",
     pch = 16)

#Question 2

plot(annual_co_emissions_by_region$Year, annual_co_emissions_by_region$`Annual CO2 emissions (zero filled)`, 
     xlab = "Year", ylab = "Annual CO2 Emissions", main = "World Annual CO2 Emissions", col = 20,
     pch = 16)
plot(climate_change$Day, climate_change$temperature_anomaly, xlab = "Year", ylab = "Temperature Anomaly",
     main = "World Temperature Anomaly", pch = 16, col = 'seagreen4')

#Question 3

india_rivers = plastics_top_rivers[plastics_top_rivers$Country == "India",]

plot(plastics_top_rivers$sharePlastics, 
     col = "darkslategray3",
     pch = 16, ylab = "Percent of Global Ocean Plastics",
     main = "South East Asian Global Ocean Plastics from Rivers")
