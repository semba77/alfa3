import mysql.connector

class Facade:
    def __init__(self):
        self.conn = mysql.connector.connect(  host="localhost", user="root", password="root", database="alfa3")
        self.cursor = self.conn.cursor()

    def create_person(self, firstname, surname, birth, education_id, residence_id):
        self.cursor.execute(f""" insert into users(firstname, surname, birth, education_id, residence_id)
                            values ('{firstname}',{surname},'{birth}',{education_id},{residence_id});""")
        self.conn.commit()


    def find_user(self, username):
        self.cursor.execute(f""" select * from users where username = '{username}';""")
        print(self.cursor.fetchone())


    def find_all_users(self):
        self.cursor.execute(""" select * from users;""")
        ret =self.cursor.fetchall()
        print(ret)

    def update_fav_color(self, username, favorite_color):
        self.cursor.execute(f""" update users set favorite_color='{favorite_color}' where username = '{username}'""")
        self.conn.commit()
