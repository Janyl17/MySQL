-- Queries:
-- 1.Query: select all columns
select * from dictionary.english_dictionary_master; -- 1000 rows
-- 2.Query: select Word column
select Word from dictionary.english_dictionary_master;
-- 3.Query: select Length 667 
select Length from dictionary.english_dictionary_master
where Length = "667";
-- 4. Query: find "The act of abacinating." in Definiition 
select Definition from dictionary.english_dictionary_master
where Definition like '%The act of abacinating.%';
-- 5.Query: show counts of both tables
select count(Word), count(Definition) from dictionary.english_dictionary_master;

-- 6.Query: find all english words for different colors (pink, bronze, ruby)
(select Definition,Type, 'Pink' from dictionary.english_dictionary_master
where Definition like "%pink%")
union 
(select Definition,Type, 'Bronze' from dictionary.english_dictionary_master
where Definition like "%bronze%")
union
(select Definition,Type, 'Ruby' from dictionary.english_dictionary_master
where Definition like "%ruby%");

select Definition,Type from dictionary.english_dictionary_master
where Definition LIKE "%pink%" or Definition like "%bronze%" or Definition like "%ruby%";

