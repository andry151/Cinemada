/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     01/03/2017 10:32:55                          */
/*==============================================================*/


drop table if exists CLIENT;

drop table if exists EMPLOIDUTEMPS;

drop table if exists FILM;

drop table if exists RESERVATION;

drop table if exists SALLE;

/*==============================================================*/
/* Table: CLIENT                                                */
/*==============================================================*/
create table CLIENT
(
   IDCLIENT             int  ,
   NOM                  varchar(50),
   PRENOM               varchar(100),
   DATENAISSANCE        date,
   SEXE                 char(7),
   PSEUDO               varchar(30),
   MDP                  varchar(30)
);

/*==============================================================*/
/* Table: EMPLOIDUTEMPS                                         */
/*==============================================================*/
create table EMPLOIDUTEMPS
(
   IDEMPLOI             int ,
   DATEFILM             date,
   HEUREDEBUT           varchar(20),
   PRIX                 numeric(8,0),
   IDSALLE              int,
   IDFILM 				int
);

/*==============================================================*/
/* Table: FILM                                                  */
/*==============================================================*/
create table FILM
(
   IDFILM               int ,
   TITRE                varchar(60),
   RESUME               varchar(1024),
   DUREE                varchar(20),
   TYPE                 varchar(10),
   PRIXFOURNISSEUR      numeric(8,0),
   DATEACHAT            date
);

/*==============================================================*/
/* Table: RESERVATION                                           */
/*==============================================================*/
create table RESERVATION
(
   IDRESERVATION        int ,
   IDEMPLOI 			int ,
   IDCLIENT				int

);

/*==============================================================*/
/* Table: SALLE                                                 */
/*==============================================================*/
create table SALLE
(
   IDSALLE              int ,
   NUMERO               int,
   NB_PLACE             numeric(8,0)
);
/*
alter table EMPLOIDUTEMPS add constraint FK_FILM_RESERV foreign key ()
      references FILM on delete restrict on update restrict;

alter table EMPLOIDUTEMPS add constraint FK_SALLE_EMPLOI foreign key ()
      references SALLE on delete restrict on update restrict;

alter table RESERVATION add constraint FK_CLIENT_RESERVATIO foreign key ()
      references CLIENT on delete restrict on update restrict;

alter table RESERVATION add constraint FK_RESERV_EMPLOI foreign key ()
      references EMPLOIDUTEMPS on delete restrict on update restrict;
*/
