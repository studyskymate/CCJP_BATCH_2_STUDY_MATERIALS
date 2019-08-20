
DECLARE
RESULTS VARCHAR2(100);
BEGIN
RESULTS :=FUNCTION1('20');
DBMS_OUTPUT.PUT_LINE('OUTPUT=' ||RESULTS);
END;


DECLARE
 -- variable declaration
 display_message varchar2(30):= 'Hello World!';
BEGIN
 /*
 * PL/SQL executable statement(s)
 */
 dbms_output.put_line(display_message);
END;
/












SET SERVEROUT ON;
DECLARE
 pe_ratio NUMBER(3,2);
BEGIN
DBMS_OUTPUT.PUT_LINE('DK');
pe_ratio :=12/0;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('exception');
END;



DECLARE
RESULTS NUMBER;
BEGIN
PROCEDURE_TEST(2,3,RESULTS);
DBMS_OUTPUT.PUT_LINE('OUTPUT=' ||RESULTS);
END;





select * from student order by roll_no desc;

DESC student;
insert into student values (1,'dinesh1',123);
insert into student values (2,'dilkkkkk',124);
insert into student values (3,'di21212',125);
insert into student values (4,'dinsdsds',126);
insert into student values (5,'dikr',123);
insert into student values (6,'dinsfdfdsfsf',123);


select 45-12 from dual;

select count(*) from student where "Name" like '_ik%';


create table purchase_dk(product varchar2(20), quantity NUMBER(20));
DROP TABLE purchase_dk;
insert into purchase_dk VALUES('A',20);
insert into purchase_dk VALUES('B',30);
insert into purchase_dk VALUES('A',40);
insert into purchase_dk VALUES('B',10);

SELECT * FROM purchase_dk;
SELECT SUM(QUANTITY) FROM purchase_dk;

SELECT PRODUCT,sum(QUANTITY) FROM purchase_dk 
GROUP BY PRODUCT;
;


commit;
DBMS_OUTPUT.PUT_LINE(get_sal(100));




create table date_ex(a_date date);
insert into date_ex values(to_date('10-DEC-1990','DD-MON-YYYY')); 
SELECT * FROM date_ex;




create table customers(id number,name varchar(50),salary NUMBER(15,2));
insert into customers values (1,'A',10000);
insert into customers values (2,'B',20000);
insert into customers values (3,'C',30000);
insert into customers values (4,'D',40000);
insert into customers values (5,'E',50000);

SELECT * FROM CUSTOMERS;
DECLARE  
   total_rows number(2); 
BEGIN 
   UPDATE customers 
   SET salary = salary + 500; 
   IF sql%notfound THEN 
      dbms_output.put_line('no customers selected'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' customers selected '); 
   END IF;  
END; 
/      


CURSOR cursor_name IS select_statement; 
CURSOR c_customers IS 
   SELECT id, name, address FROM customers; 
   
   OPEN c_customers; 
   
   FETCH c_customers INTO c_id, c_name, c_addr; 
   CLOSE c_customers;
   
SELECT * FROM CUSTOMERS;
   
/   
DECLARE 
   c_id customers.id%type; 
   c_name customers.Name%type; 
   CURSOR c_customers is 
      SELECT id, name FROM customers; 
BEGIN 
   OPEN c_customers; 
   LOOP 
   FETCH c_customers into c_id, c_name; 
      EXIT WHEN c_customers%notfound; 
      dbms_output.put_line(c_id || ' ' || c_name); 
   END LOOP; 
   CLOSE c_customers; 
END; 
/