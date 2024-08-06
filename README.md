# PizzaProject

##Description
This project aims to analyze pizza sales data to identify key trends and patterns that can help in making better business decisions. The data was sourced from the Kaggle platform, then cleaned and processed to enable detailed analysis. The final analysis results are presented in the form of interactive dashboards in Tableau Public, which are available for public viewing.

Problems the project addresses:
- Identification of Best-Selling Products: Analyzing sales data allows for identifying which types of pizza sell the best, which can help optimize the product offering.
- Analysis of Sales Trends Over Time: Analyzing how sales change over time can assist in planning future promotions and managing inventory.

## Zawartość Repozytorium
- `A_year_of_pizza_sales_from_a_pizza_place_872_68`: Pliki źródłowe z danymi pobrany z Kaggle.
- `Pizza4.csv`: Plik zawierający oczyszczone dane.
- `Pizza.sql`: Skrypty SQL użyte do analizy danych w MS SQL Server.
- `images/`: Zrzuty ekranu z dashboardów Tableau.
- `README.md`: Ten plik.
  
## Wymagania 
Lista oprogramowania i bibliotek, które są potrzebne do uruchomienia projektu 
- [MS SQL Server] (https://www.microsoft.com/pl-pl/sql-server/sql-server-downloads)
- [Tableau Desktop] (https://www.tableau.com/products/desktop)

## Użycie
-Analiza danych w MS SQL Server:
Uruchom skrypty SQL z folderu `Pizza.sql` w MS SQL Server, aby przeprowadzić analizę danych.
-Przeglądanie dashboardów w Tableau Public:
[https://public.tableau.com/views/PizzaProject4/DBSummary?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link]
[https://public.tableau.com/views/PizzaProject2/DBSalesByName?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link]
[https://public.tableau.com/views/PizzaProject3/DBSalesByCategories?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link]
[https://public.tableau.com/views/PizzaProject4_17229392560270/DBSalesInTime?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link]

## Dashboard na Tableau Public
Dashboardy zawierają: 
-podsumowanie sprzedaży (liczba zamówień, całkowity przychód, średnia cena zamówienia)
-wykresy trendu sprzedaży w czasie
-sprzedaż wg kategorii (nazw, typów, rozmiarów) - możliwość filtrowania danych
-analiza czasowa (godziny, dni tygodnia, miesiące)
-średnia cena zamówień w czasie

## Rezultaty and summary
Dzięki temu projektowi uzyskano wgląd w sprzedaż pizzy, co może pomóc w podejmowaniu decyzji strategicznych w zakresie zarządzania produktem, marketingiem i logistyką. Projekt dostarcza również narzędzia do ciągłej analizy sprzedaży, co jest kluczowe dla dynamicznego rynku.

Ten projekt demonstruje kompleksowy proces analizy danych sprzedaży, od pobierania i oczyszczania danych, poprzez analizę SQL, aż do wizualizacji wyników za pomocą Tableau. Stanowi on wartościowe narzędzie do zrozumienia kluczowych aspektów sprzedaży pizzy i podejmowania opartych na danych decyzji biznesowych.

## Licencja 
Dane wykorzystane w tym projekcie pochodzą z Kaggle i są objęte licencją CC0 (Public Domain). Więcej informacji można znaleźć pod tym linkiem: [https://www.kaggle.com/datasets/mexwell/pizza-sales].

## Autorzy 
https://github.com/klaudia199
