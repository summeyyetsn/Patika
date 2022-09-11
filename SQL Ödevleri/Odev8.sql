-- test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
);

-- Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, birthday, email) values ('Susanetta', '1968-04-01', null);
insert into employee (name, birthday, email) values ('Benito', null, 'bdeleek1@theguardian.com');
insert into employee (name, birthday, email) values ('Hedvige', '1981-05-11', 'hdrummond2@dell.com');
insert into employee (name, birthday, email) values ('Leonidas', '1918-10-07', 'ltully3@bravesites.com');
insert into employee (name, birthday, email) values ('Nanny', '1919-05-26', 'npentecust4@over-blog.com');
insert into employee (name, birthday, email) values ('Tomasine', '1980-04-20', 'tbreeton5@storify.com');
...


-- Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee SET name = 'Seher' WHERE id = 8;
UPDATE employee SET email = 'abcde@gmail.com' WHERE id = 20;
UPDATE employee SET name = 'Ahmet', birthday = '1995-02-14' WHERE name = 'Salih';
UPDATE employee SET name = 'Amne', birthday = '2000-04-04' WHERE email = 'Amne25@gmail.com';
UPDATE employee SET name = 'XYZ' WHERE id > 40;

-- Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee WHERE id > 45 RETURNING *;
DELETE FROM employee WHERE name = 'Salih' RETURNING *;
DELETE FROM employee WHERE id = 28 RETURNING *;
DELETE FROM employee WHERE name LIKE 'A%' RETURNING *;
DELETE FROM employee WHERE email = 'Amne25@gmail.com' RETURNING *;