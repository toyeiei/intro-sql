# Intro to SQL

`Course`: พื้นฐานการเขียน SQL สำหรับ Data Analyst

`Reference`: ไฟล์ตัวอย่าง chinook.db และ ER diagram จากเว็บไซต์ [SQLite Tutorial](https://www.sqlitetutorial.net/)

### ทำไมต้องเรียน SQL

SQL ย่อมาจาก Structured (English) Query Language เป็นภาษาทางการที่ใช้ทำงานกับ (relational) database มาตั้งแต่ปี 1970s คิดค้นโดยนักวิจัยของ IBM สำหรับงานด้าน data analytics SQL คือภาษาแรกที่ทุกคนควรเขียนให้เป็น จะได้ดึงข้อมูลจาก database มาวิเคราะห์ต่อได้ อ้างอิงจากเว็บไซต์ [payscale](https://www.payscale.com/research/TH/Job=Data_Analyst/Salary) รายได้เฉลี่ยของ SQL data analyst อยู่ที่ 360,000 บาทต่อปี (สูงสุดคือ 2 ล้านบาท)

สำหรับ GitHub นี้ แอดออกแบบมาสำหรับนักเรียนที่ไม่เคยเขียนโปรแกรมมาก่อนเลย ติดตั้งโปรแกรม ดาวน์โหลด slide และไฟล์ตัวอย่าง ใช้เวลาเรียนตามบทเรียนด้านล่างประมาณ 1-2 ชั่วโมง ps. SQL ไม่ยาก จริงๆเรียนพื้นฐานคร่าวๆก็ต่อยอดได้สบายๆแล้ว

![DB Browser](https://github.com/datarockie/intro-sql/blob/master/DB%20Browser.png)

### เรียนฟรีกับเรา

นักเรียนสามารถดาวน์โหลด แจกจ่าย slide + code ทั้งหมดใน GitHub นี้ได้โดยไม่ต้องขออนุญาต :D

แอดมีทำวีดีโอสอนแบบ full HD ความยาวสองชั่วโมง สมัครเรียนฟรีได้ที่เว็บไซต์ https://datarockie.com - Intro to SQL for Data Analysis (นักเรียนมากกว่า 3,800 คนลงเรียนคอร์สนี้แล้ว)

### เตรียมตัวก่อนเริ่มเรียน

* ดาวน์โหลดโปรแกรมฟรี [DB Browser](https://sqlitebrowser.org/)
* ดาวน์โหลดไฟล์ [chinook.db](https://github.com/datarockie/intro-sql/blob/master/chinook.db) ใน GitHub นี้
* ดาวน์โหลด slide ฟรีของเราได้ที่ [Google Drive](https://bit.ly/DATASQL2020)
* หรือจะดู slide presentation แบบออนไลน์ได้ที่ [Google Slides](https://docs.google.com/presentation/d/e/2PACX-1vQm7AjgNkdqIG_nRce1ZLHTnq_hW_PhDqFDtSNwj_1IyarEKrMfNIpT32ljphHMhg/pub?start=false&loop=false&delayms=3000)

ติดตั้งโปรแกรมเสร็จแล้ว เปิด DB Browser คลิก `Open Database` เลือกไฟล์ chinook.db คลิก `Open` เพื่อเริ่มเรียน

### เรียน SQL ตามลำดับนี้

ถ้าไม่เคยเขียน SQL มาก่อน แอดแนะนำให้ทุกคนเรียนตามบทเรียนนี้เลย เรียนจบ SELECT และ WHERE ก็สามารถดึงข้อมูลง่ายๆจาก database ได้แล้ว :D

1. `SELECT`
2. `WHERE`
3. Aggregate Functions: `AVG` `SUM` `MIN` `MAX` `COUNT`
4. Value Functions: `UPPER` `LOWER` `COALESCE` `RANDOM` `ROUND`
5. `GROUP BY`
6. `HAVING`
7. `ORDER BY`
8. `JOIN`
9. `CASE WHEN`
10. Subqueries (coming soon)
11. `CREATE VIEW` (coming soon)
12. `CREATE TABLE` (coming soon)

### เริ่มต้นอย่างรวดเร็ว

SQL clauses ที่เราใช้ประจำคือ `SELECT` และ `WHERE` โดย `SELECT` ใช้เลือกคอลัมน์และ `WHERE` ใช้ฟิลเตอร์ข้อมูล ตัวอย่าง query ด้านล่างเลือกทุกคอลัมน์จากตาราง customers และฟิลเตอร์เฉพาะลูกค้าที่อาศัยอยู่ในประเทศ USA

```SQL
-- standard query
SELECT * FROM customers
WHERE country = 'USA';
```

เราสามารถใส่ชื่อคอลัมน์ที่ต้องการใน `SELECT` clause ได้เลยแบบนี้

```SQL
-- select columns you want in SELECT clause
SELECT firstname, lastname, country, email
FROM customers
WHERE country = 'USA';
```

ถ้าต้องการกำหนดจำนวนแถวของข้อมูลที่ดึงออกมา ให้ใช้ `LIMIT` clause

```SQL
-- return top ten rows
SELECT * FROM customers
LIMIT 10;
```

### มีคำถาม ทักแอดมาเลย

ทักแชทแอดได้ที่ [FB messenger](https://m.me/datarockie) หรือติดตามเราทาง facebook: [DataRockie](https://www.facebook.com/datarockie) :D
