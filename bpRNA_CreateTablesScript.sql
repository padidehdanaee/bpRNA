/* MAIN Table */
/* RNA Table */
DROP TABLE RNA
CREATE TABLE RNA(rna_ID bigint NOT NULL PRIMARY KEY,rna_Name Longtext NULL,rna_Desc Longtext NULL,rna_Sequence Longtext NULL,rna_Length bigint NULL,rna_UnpairedBPs int NULL,rna_PairedBPs int NULL,rna_NumMolecules int NULL,rna_HasPK Tinyint NULL,rna_HasLigand Tinyint NULL,rna_HasModifiedResidues TINYINT NULL,rna_Flag int NULL,rna_OriginName varchar(50) NULL,rna_OriginPubMedID varchar(50) NULL,rna_OriginURL Longtext NULL,rna_OriginPubMedCentralID varchar(50) NULL,rna_OriginSourceImageURL Longtext NULL,rna_PhylogeneticClass  varchar(50) NULL,rna_OrganismName varchar(50) NULL,rna_OrganismDesc Longtext NULL,rna_CreationDate DATETIME NULL ,reference_ID bigint NULL,type_ID int NULL,method_ID int NULL,validation_ID int NULL)

/* ******************************* */
/* BASE Tables */
/* Refrence Database  Table */
DROP TABLE RefrenceDatabase 
CREATE TABLE RefrenceDatabase(reference_ID bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,reference_Name Longtext NULL,reference_Description Longtext NULL,reference_Link Longtext NULL,reference_CreationDate DATETIME NULL )
/* RNA TYPE  Table */
DROP TABLE RNAType
CREATE TABLE RNAType(type_ID int AUTO_INCREMENT NOT NULL PRIMARY KEY,type_Name Longtext NULL,type_Desc Longtext NULL,type_CreationDate DATETIME NULL)
/* VALIDATION  Table */
DROP TABLE Validation
CREATE TABLE Validation(validation_ID int AUTO_INCREMENT NOT NULL PRIMARY KEY,validation_Name Longtext NULL,validation_Desc Longtext NULL,validation_CreationDate DATETIME NULL ) 
/* METHOD  Table */
DROP TABLE Method
CREATE TABLE Method(method_ID int AUTO_INCREMENT  NOT NULL PRIMARY KEY,method_Name Longtext NULL,method_Desc Longtext NULL,method_CreationDate DATETIME NULL )

/* ******************************* */
/*  STRUCTURE  Tables */
/*  BULGE Table */
DROP TABLE Bulge
CREATE TABLE Bulge(bulge_ID bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,bulge_SubID Longtext NULL,bulge_Seq Longtext NULL,bulge_StartPos int NULL,bulge_StopPos int NULL,bulge_5pBP varchar(10) NULL,bulge_5pBPPos1 int NULL,bulge_5pBPPos2 int NULL,bulge_3pBP varchar(10) NULL,bulge_3pBPPos1 int NULL,bulge_3pBPPos2 int NULL,bulge_Length int NULL,bulge_isPK Tinyint NULL,bulge_CreationDate DATETIME NULL ,rna_ID bigint NOT NULL)
/*  HAIRPINLOOP Table */
DROP TABLE HairpinLoop
CREATE TABLE HairpinLoop(hairpinloop_ID bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,hairpinloop_SubID Longtext NULL,hairpinloop_Sequence Longtext NULL,hairpinloop_StartPos int NULL,hairpinloop_StopPos int NULL,hairpinloop_BP varchar(10) NULL,hairpinloop_BPPos1 int NULL,hairpinloop_BPPos2 int NULL,hairpinloop_Length int NULL,hairpinloop_isPK Tinyint NULL,hairpinloop_CreationDate DATETIME NULL ,rna_ID bigint NOT NULL)
/* INTERNAL LOOP  Table */
DROP TABLE InternalLoop
CREATE TABLE InternalLoop(internalloop_ID bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,internalloop_SubID Longtext NULL,internalloop_CreationDate DATETIME NULL ,rna_ID bigint NOT NULL)
/* INTERNAL LOOP BRANCHES  Table */
DROP TABLE InternalLoopBranch
CREATE TABLE InternalLoopBranch(internalloopBranch_ID bigint  AUTO_INCREMENT NOT NULL PRIMARY KEY,internalloopBranch_SubID Longtext NULL,internalloopBranch_Seq Longtext NULL,internalloopBranch_StartPos int NULL,internalloopBranch_StopPos int NULL,internalloopBranch_BP varchar(50) NULL,internalloopBranch_BPPos1 int NULL,internalloopBranch_BPPos2 int NULL,internalloopBranch_Length int NULL,internalloopBranch_CreationDate DATETIME NULL ,internalloopBranch_isPK Tinyint NULL,internalloop_ID bigint NOT NULL)
/* MULTILOOP Table */
DROP TABLE MultiLoop
CREATE TABLE MultiLoop(multiloop_ID bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,multiloop_SubID Longtext NULL,multiLoop_CreationDate DATETIME NULL ,rna_ID bigint NOT NULL)
/* MULTILOOP BRANCHES  Table */
DROP TABLE MultiLoopBranch
CREATE TABLE MultiLoopBranch(multiloopBranch_ID bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,multiloopBranch_SubID Longtext NULL,multiloopBranch_Seq Longtext NULL,multiloopBranch_StartPos int NULL,multiloopBranch_StopPos int NULL,multiloopBranch_Length int NULL,multiloopBranch_5pBP varchar(10) NULL,multiloopBranch_5pBPPos1 int NULL,multiloopBranch_5pBPPos2 int NULL,multiloopBranch_3pBP varchar(10) NULL,multiloopBranch_3pBPPos1 int NULL,multiloopBranch_3pBPPos2 int NULL,multiLoopBranch_isPK Tinyint NULL,multiLoopBranch_CreationDate DATETIME NULL ,multiloop_ID bigint NOT NULL)
/* NONCANONICAL  Table */
DROP TABLE NonCanonical
CREATE TABLE NonCanonical(noncanonical_ID bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,noncanonical_SubID Longtext NULL,noncanonical_5pPos int NULL,noncanonical_3pPos int NULL,noncanonical_5pNuc varchar(50) NULL,noncanonical_3pNuc varchar(50) NULL,noncanonical_Type varchar(50) NULL ,noncanonical_TypeID Longtext  NULL,noncanonical_CreationDate DATETIME NULL ,rna_ID bigint NOT NULL)
/* PSEUDOKNOT BASE PAIRS  Table */
DROP TABLE PseudoknotBasePairs
CREATE TABLE PseudoknotBasePairs(pseudoknotBPs_ID bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,pseudoknotBPs_SubID Longtext NULL,pseudoknotBPs_5pPos int NULL,pseudoknotBPs_5pNuc varchar(50) NULL,pseudoknotBPs_3pPos int NULL,pseudoknotBPs_3pNuc varchar(50) NULL,pseudoknotBPs_CreationDate DATETIME NULL ,pseudoknot_ID bigint NOT NULL)
/* PSEUDOKNOT Table */
DROP TABLE Pseudoknot
CREATE TABLE Pseudoknot(pseudoknot_ID bigint  AUTO_INCREMENT NOT NULL PRIMARY KEY, pseudoknot_SubID Longtext NULL,pseudoknot_NumBPs int NULL,pseudoknot_5pStartPos int NULL,pseudoknot_5pStopPos int NULL,pseudoknot_3pStartPos int NULL,pseudoknot_3pStopPos int NULL,pseudoknot_loopType1 varchar(10) NULL,pseudoknot_ID1 bigint NULL,pseudoknot_loopType2 varchar(10) NULL,pseudoknot_ID2 bigint NULL,pseudoknot_CreationDate DATETIME NULL ,rna_ID bigint NOT NULL)
/* SEGMENT Table */
DROP TABLE Segment
CREATE TABLE Segment(segment_ID bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,segment_SubID Longtext NULL,segment_NumBPs int NULL,segment_5pStartPos int NULL,segment_5pStopPos int NULL,segment_5pSeq Longtext NULL,segment_5pLength int NULL,segment_3pStartPos int NULL,segment_3pStopPos int NULL,segment_3pSeq Longtext NULL,segment_3pLength int NULL,segment_CreationDate DATETIME NULL ,rna_ID bigint NOT NULL)
/*  STEM Table */
DROP TABLE Stem
CREATE TABLE Stem(stem_ID bigint  AUTO_INCREMENT NOT NULL PRIMARY KEY,stem_SubID Longtext NULL,stem_5p_StartPos int NULL,stem_5p_StopPos int NULL,stem_5p_Seq Longtext NULL,stem_5p_Length int NULL,stem_3p_StartPos int NULL,stem_3p_StopPos int NULL,stem_3p_Seq Longtext NULL,stem_3p_Length int NULL,stem_isPK Tinyint NULL,stem_CreationDate DATETIME NULL ,rna_ID bigint NOT NULL)
/* UNPAIRED REGION  Table */
DROP TABLE UnpairedRegion
CREATE TABLE UnpairedRegion(unpairedRegion_ID bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,unpairedRegion_SubID Longtext NULL,unpairedRegion_Start int NULL,unpairedRegion_Stop int NULL,unpairedRegion_Seq Longtext NULL,unpairedRegion_Length int NULL,unpairedRegion_5pBP varchar(50) NULL,unpairedRegion_5pBPPos1 int NULL,unpairedRegion_5pBPPos2 int NULL,unpairedRegion_3pBP varchar(50) NULL,unpairedRegion_3pBPPos1 int NULL,unpairedRegion_3pBPPos2 int NULL,unpairedRegion_Type varchar(10) NULL,unpairedRegion_isPK Tinyint NULL,unpairedRegion_CreationDate DATETIME NULL ,rna_ID bigint NOT NULL)
