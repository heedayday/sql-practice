set serveroutput on
declare
    v_name1   sample.fruit%type;
    v_name2   sample.fruit%type; 
begin 
     for  i   in   1 .. 3   loop 
         for  j  in  1 .. 3   loop 
            select  fruit  into v_name1 from sample  where num = i;
            select  fruit  into v_name2 from sample  where num = j; 
            dbms_output.put_line( v_name1 ||','|| v_name2 );
         end  loop;
    end  loop;
end;
/
