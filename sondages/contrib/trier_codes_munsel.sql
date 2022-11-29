-- creation d'une vue sur la table de méta données donesol 
-- pour disposer de façon triée les couleurs des codes munsel
-- Tri  selon teinte valeur chroma
-- objectif : simplifier la saisie des codes munsel dans l'application de saisie

-- liste des lettres ou groupes de lettres dans les codes :

-- YR
-- GY
-- BG
-- Y
-- G
-- B
-- N
-- R

-- sortie : 
/*
select * from donesol_meta_table.code_munsel ;
 teinte | valeur | chroma |  code  |     signification     
--------+--------+--------+--------+-----------------------
 10R    | 4      | 3      | 10R43  | rouge violacé clair
 10R    | 4      | 2      | 10R42  | rouge violacé clair
 10R    | 4      | 1      | 10R41  | gris rougeâtre foncé
 10R    | 3      | 8      | 10R38  | rouge foncé
 10R    | 3      | 7      | 10R37  | rouge foncé
 10R    | 3      | 6      | 10R36  | rouge foncé
 10R    | 3      | 4      | 10R34  | rouge violacé
 10R    | 3      | 3      | 10R33  | rouge violacé
 10R    | 3      | 2      | 10R32  | rouge violacé
 10R    | 3      | 1      | 10R31  | gris rougeâtre foncé
 10R    | 2      | 4      | 10R24  | violet
 10R    | 2      | 3      | 10R23  | violet
 10R    | 2      | 2      | 10R22  | violet
 10R    | 2      | 1      | 10R21  | violet foncé
 10R    | 6      | 8      | 10R68  | rouge pâle
 10R    | 6      | 7      | 10R67  | rouge pâle
 10R    | 6      | 6      | 10R66  | rouge pâle
 10R    | 6      | 4      | 10R64  | rouge violacé pâle
 10R    | 6      | 3      | 10R63  | rouge violacé pâle
 10R    | 6      | 2      | 10R62  | rouge violacé pâle
...
...
*/

create view donesol_meta_table.code_munsel as
with source as 
(
select code, signification from donesol_meta_table.code where id_codage = '292'
),
yr as
(
select split_part(code,'YR',1) || 'YR' as teinte, code, signification from source
where code like '%YR%'
),
gy as
(
select split_part(code,'GY',1) || 'GY' as teinte, code, signification from source
where code like '%GY%'
),
bg as
(
select split_part(code,'BG',1) || 'BG' as teinte, code, signification from source
where code like '%BG%'
),
y as
(
select split_part(code,'Y',1) || 'Y' as teinte, code, signification from source
where code like '%Y%' 
and code not in (select code from gy) 
and code not in (select code from yr)
),
g as
(
select split_part(code,'G',1) || 'G' as teinte, code, signification from source
where code like '%G%' 
and code not in (select code from gy) 
and code not in (select code from bg)
),
b as
(
select split_part(code,'B',1) || 'B' as teinte, code, signification from source
where code like '%B%' 
and code not in (select code from bg)
),
n as
(
select split_part(code,'N',1) || 'N' as teinte, code, signification from source
where code like '%N%' 
),
r as
(
select split_part(code,'R',1) || 'R' as teinte, code, signification from source
where code like '%R%' 
and code not in (select code from yr)
),
munsel1 as
(
select * from gy 
union all
select * from yr
union all
select * from bg
union all
select * from y
union all
select * from g
union all
select * from b
union all
select * from n
union all
select * from r
order by teinte
)
select teinte, 
left(split_part(code,teinte,2),length(split_part(code,teinte,2))-1) as valeur,
right(split_part(code,teinte,2),1) as chroma, 
code,
signification
from munsel1
;

