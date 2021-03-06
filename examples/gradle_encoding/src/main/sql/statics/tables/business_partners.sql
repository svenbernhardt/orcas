create table BUSINESS_PARTNERS
(
  BPAR_ID number(15) not null,
  VERSION number(15) default "0" not null,
  TYPE varchar2(10) not null,
  STREET varchar2(50) not null,
  CITY varchar2(30) not null,
  STATE varchar2(2),
  ZIPCODE varchar2(10) not null,
  COUNTRY varchar2(2) not null,
  EMAIL varchar2(40) not null,
  FIRSTNAME varchar2(30),
  LASTNAME varchar2(30),
  USERNAME varchar2(15),
  PASSWORD varchar2(15),
  STATUS varchar2(8),
  NAME varchar2(30),
  WEBSITE varchar2(40),

  constraint BPAR_PK primary key (BPAR_ID),

  constraint BPAR_UC_NAME unique (NAME),
  constraint BPAR_UC_USERNAME unique (USERNAME)
);

