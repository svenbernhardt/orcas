create table ITEMS_SUPPLIERS
(
  ITEM_ID number(15) not null,
  BPAR_ID number(15) not null,

  constraint ITSU_PK primary key (ITEM_ID,BPAR_ID),

  index ITSU_BPAR_FK_GEN_IX (BPAR_ID),

  constraint ITSU_BPAR_FK foreign key (BPAR_ID) references BUSINESS_PARTNERS (BPAR_ID),
  constraint ITSU_ITEM_FK foreign key (ITEM_ID) references ITEMS (ITEM_ID)
);

