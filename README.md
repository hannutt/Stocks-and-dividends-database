# Stocks-and-dividends-database
Small and simple PHP application with sql-database. You can use this to search for omxh 25 stock index stock
dividends and recommendations from application sql-database. The search function works with the company name or trading code.
You can also update the dividend and recommendation information using UpdateTool.php -file.

Example:

You want to see Orion company's dividend and recommendation.

Type to the "Search by company name" -input field company name (orion) or type a trading code (ornbv in this case) to the
"Search by trading ID" -input field. After that click "Search" -button.

The program also includes the following buttons:

- Show highest dividend -> click to get the highest dividend and company name
- Show lowest dividend -> click to get the lowest dividend and company name
- Show companies that don't pay dividends -> click to get company names

Files:
Osinkotietokanta.php is a main file that contains input fields and function buttons.
UpdateTool.php file is for updating dividend and recommended information.
stocks.sql is a sql-file which includes information on stocks, dividends and recommendations.
tietokantayhteys.php is a .Php-file which opens a connection between the main file and the database.

