CREATE TABLE public.members(
    memid integer,
    surname character varying(200),
    firstname character varying(200),
    "address" character varying(200),
    zipcode numeric,    
    telephone  character varying(20),
    recommendedby integer,
    joindate timestamp);

INSERT INTO members (memid, surname, firstname, "address", zipcode, telephone, recommendedby, joindate) VALUES (1, 'sur', 'first', 'Olmaliq', 110101 , '+998931535858', 536 , now() );

CREATE TABLE public.bookings(
    facid integer,
    memid integer ,
    startime timestamp,
    slots integer);    


INSERT INTO bookings (facid, memid, startime, slots) VALUES (2,2,now(),11);


 CREATE TABLE public.facilities(
    facid integer,
    "name" character varying(100),
    membercost numeric,
    guestcost numeric,
    initialoutly numeric,    
    monthlymaintenance numeric);

INSERT INTO facilities (facid, "name", membercost, guestcost, initialoutly, monthlymaintenance) VALUES (2,'massage room 2',11,11,11,12);





select bookings.facid, facilities.name, facilities.membercost, facilities.monthlymaintenance from bookings JOIN members ON bookings.memid = members.memid JOIN facilities ON bookings.facid = facilities.facid; 