import sqlite3

class Database():
    def __init__(self, path, name):
        self.name = name
        self.path = path
        self.connection=sqlite3.connect(path+name)

    def __execute(self,query):
        self.query = query
        try:
            result = self.connection.cursor().execute(query)
            self.connection.commit()
            return result 
        except sqlite3.Error as e:
            print(e)
            return None 

    def __executemany(self,query,params):
        try:
            result = self.connection.cursor().executemany(query,params)
            self.connection.commit()
            return result
        except sqlite3.Error as e:
            print(e)
            return None

    def __script(self,query):
        self.query = query
        try:
            result = self.connection.cursor().executescript(query)
            self.connection.commit()
            return result
        except sqlite3.Error as e:
            print(e)
            return None 
     
    def run(self,query):
        return self.__execute(query) 

    def runmany(self,query,params):
        return self.__executemany(query,params)

    def runScript(self,query):
        return self.__script(query)