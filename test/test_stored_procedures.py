import pyodbc


class TestStoredProcedure:

    def test_calculate_total_sales_sp(self):
        conn = pyodbc.connect("Driver={ODBC Driver 17 for SQL Server};"
                              "Server=127.0.0.1;"
                              "Database=master;"
                              "UID=SA;"
                              "PWD=TemporaryPass123;", autocommit=True)

        cursor: pyodbc.Cursor = conn.cursor()
        row: pyodbc.Row = cursor.execute('EXECUTE calculate_total_sale').fetchone()
        assert 94.5 == row[0]
