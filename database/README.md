# Database

The SQLite database file `telco_churn.db` was created locally using DB Browser for SQLite.

It is not included in this repository because it is a generated local database file.

To reproduce the database:
1. Download the Telco Customer Churn CSV dataset.
2. Open DB Browser for SQLite.
3. Create a new database named `telco_churn.db`.
4. Import the CSV file as a table named `telco_customers`.

I am also migrating selected queries to PostgreSQL to practise working with a more production-like relational database environment.

Current SQL environments:
- SQLite: initial analysis and query development
- PostgreSQL: schema design, data import, and query adaptation practice
