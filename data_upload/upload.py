import pandas as pd
import pyodbc


class Upload:

    def upload(self):
        # Import CSV
        data = pd.read_csv(r'./resources/Bakery.csv')
        df = pd.DataFrame(data)

        # Connect to SQL Server
        conn = pyodbc.connect("Driver={ODBC Driver 17 for SQL Server};"
                              "Server=127.0.0.1;"
                              "Database=master;"
                              "UID=SA;"
                              "PWD=TemporaryPass123;", autocommit=True)
        cursor = conn.cursor()

        # Create Table
        cursor.execute('''IF OBJECT_ID('Bakery_Sales') IS NULL
                CREATE TABLE Bakery_Sales(
                    TransactionNo INT NOT NULL,
                    Items NVARCHAR(255) NOT NULL,
                    TransactionTime DATETIME NOT NULL,
                    Daypart NVARCHAR(255) NOT NULL,
                    DayType NVARCHAR(255) NOT NULL
                );''')

        # Insert DataFrame to Table
        for row in df.itertuples():
            cursor.execute('''INSERT INTO Bakery_Sales (TransactionNo, Items, TransactionTime, Daypart, DayType)
                        VALUES (?,?,?,?,?)''',
                           row.TransactionNo,
                           row.Items,
                           row.TransactionTime,
                           row.Daypart,
                           row.DayType
                           )
        conn.commit()


if __name__ == "__main__":
    Upload().upload()
