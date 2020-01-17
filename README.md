# ETL(Extract, Transform, Load) 

Data analysis and management requires data integration. These data is in formats and sources such as csv files, json, files, or html tables. Integration of various datasets is a key for data analysis. In other words, identifying the dataset, extracting and reading the data, cleaning and structuring it in the desired format, and loading the clean data into a database for storage is imperative for analysis and management.
For this ETL project we are using Winter tire postings from Kijiji.ca for Toronto and Thunder Bay. Datasets we extracted  shows actionable insights into customer interest, Url Link for the detail posting, Title, Price, Location and Date when posted. And dataset from OpwnWeatherMap API dataset includes location, temperature, humidity, cloudiness, wind_speed, weathercondition observable insights.

* [Background](#background)
* [Observable Trends Based on the Data](#trends)
* [Jupyter Notebook](#nb)
* [Technologies Used](#technologies)

##  <a name="background"></a>Background

For this project, I started with dataset from Web Scraping and OpenWeatherMap API. 
Url used for Web Scrapings are one: [here]<https://www.kijiji.ca/b-tires-rims/city-of-toronto/winter-tires>. Second [URL]<https://www.kijiji.ca/b-tires-rims/thunder-bay/winter-tires/>
 And dataset from OpenWeatherMap [URL]<https://api.openweathermap.org/data/2.5/weather?> with units="metric"

## <a name="trends"></a>Observable Trends Based on the Data

Extraction: Extract is the process of reading data from a database. Data sets of interest: Winter tire postings from Kijiji.ca for Toronto and Thunder Bay. 
Datasets we extracted  shows actionable insights into customer interest, Url Link for the detail posting, Title, Price, Location and Date when posted. 
AND used OpenWeatherMap to get the dataset for weather condition of that city.

Transform: The first step was scraping the data from Urls and stored them into dictionary. Then we converted the dictionary into Pandas data frame.  Dataset was not clean so we clean the data by using str.replace() function to replace unwanted (\n, $,)
Symbol’s from Title and Price column. Removed the not date format records and null records. Converted the data type of Price and Date column from string to float and string to date respectively, then cleaned again to ensure data quality. 

Load: The Toronto postings dataset were sent to postgresql. For this project, postgresql was chosen for its speed and simplicity when dealing with large datasets, and because there was little need to scale up space on this database



##  <a name="nb"></a>Jupyter Notebook

For this project, I used jupyter notebook to render and display the results of this analysis. You can view the notebook here:

<https://github.com/PunamSonawane/ETL-Project/blob/master/ETL_Project.ipynb>
The notebook is also available inside this repository [here](./ETL_Project.ipynb).

##  <a name="technologies"></a>Technologies Used

* Python
* Pandas library
* PostgreSQL 
* Jupyter Notebook