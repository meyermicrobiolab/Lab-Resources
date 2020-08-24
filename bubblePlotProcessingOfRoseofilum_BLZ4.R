##renames reults.xprs files by the directory starting with LK (the new Florida Samples) Not important.
# names<-dir(path=".", pattern = "^[L]")
# for(i in names){
#  file.rename(paste0(i, "/results.xprs"),paste0(noquote(substring(i,1,4)),".txt"))
# }

library(dplyr)

exp<-read.table("B1.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
B1<-exp
names(B1)<-sub("tpm","B1",names(B1))

exp<-read.table("B2.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
B2<-exp
names(B2)<-sub("tpm","B2",names(B2))

exp<-read.table("B3D.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
B3D<-exp
names(B3D)<-sub("tpm","B3D",names(B3D))

exp<-read.table("B3N.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
B3N<-exp
names(B3N)<-sub("tpm","B3N",names(B3N))

exp<-read.table("B4.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
B4<-exp
names(B4)<-sub("tpm","B4",names(B4))

exp<-read.table("T1.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
T1<-exp
names(T1)<-sub("tpm","T1",names(T1))

exp<-read.table("T2.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
T2<-exp
names(T2)<-sub("tpm","T2",names(T2))

exp<-read.table("T3D.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
T3D<-exp
names(T3D)<-sub("tpm","T3D",names(T3D))

exp<-read.table("T3N.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
T3N<-exp
names(T3N)<-sub("tpm","T3N",names(T3N))

exp<-read.table("T4.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
T4<-exp
names(T4)<-sub("tpm","T4",names(T4))

exp<-read.table("H1.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
H1<-exp
names(H1)<-sub("tpm","H1",names(H1))

exp<-read.table("H2.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
H2<-exp
names(H2)<-sub("tpm","H2",names(H2))

exp<-read.table("H3D.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
H3D<-exp
names(H3D)<-sub("tpm","H3D",names(H3D))

exp<-read.table("H3N.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
H3N<-exp
names(H3N)<-sub("tpm","H3N",names(H3N))

exp<-read.table("H4.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
H4<-exp
names(H4)<-sub("tpm","H4",names(H4))

exp<-read.table("LKB1.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
LKB1<-exp
names(LKB1)<-sub("tpm","LKB1",names(LKB1))

exp<-read.table("LKB2.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
LKB2<-exp
names(LKB2)<-sub("tpm","LKB2",names(LKB2))

exp<-read.table("LKH1.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
LKH1<-exp
names(LKH1)<-sub("tpm","LKH1",names(LKH1))

exp<-read.table("LKH2.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
LKH2<-exp
names(LKH2)<-sub("tpm","LKH2",names(LKH2))

exp<-read.table("LKT1.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
LKT1<-exp
names(LKT1)<-sub("tpm","LKT1",names(LKT1))

exp<-read.table("LKT2.txt",sep="\t",header=T)
exp$bundle_id<-NULL
exp$length<-NULL
exp$eff_length<-NULL
exp$tot_counts<-NULL
exp$uniq_counts<-NULL
exp$est_counts<-NULL
exp$eff_counts<-NULL
exp$ambig_distr_alpha<-NULL
exp$ambig_distr_beta<-NULL
exp$fpkm<-NULL
exp$fpkm_conf_low<-NULL
exp$fpkm_conf_high<-NULL
exp$solvable<-NULL
LKT2<-exp
names(LKT2)<-sub("tpm","LKT2",names(LKT2))



a<-merge(B1,B2,"target_id", all=TRUE)
b<-merge(a,B3D,"target_id", all=TRUE)
c<-merge(b,B3N,"target_id", all=TRUE)
d<-merge(c,B4,"target_id", all=TRUE)
e<-merge(d,T1,"target_id", all=TRUE)
f<-merge(e,T2,"target_id", all=TRUE)
g<-merge(f,T3D,"target_id", all=TRUE)
h<-merge(g,T3N,"target_id", all=TRUE)
i<-merge(h,T4,"target_id", all=TRUE)
j<-merge(i,H1,"target_id", all=TRUE)
k<-merge(j,H2,"target_id", all=TRUE)
l<-merge(k,H3D,"target_id", all=TRUE)
m<-merge(l,H3N,"target_id", all=TRUE)
n<-merge(m,H4,"target_id", all=TRUE)
o<-merge(n,LKB1,"target_id", all=TRUE)
p<-merge(o,LKB2,"target_id", all=TRUE)
q<-merge(p,LKH1,"target_id", all=TRUE)
r<-merge(q,LKH2,"target_id", all=TRUE)
s<-merge(r,LKT1,"target_id", all=TRUE)
t <- merge(s,LKT2,"target_id", all=TRUE)

gff<-read.table("2627853561_BLZ4_bin2_Roseofilum/2627853561.gff",sep="\t",header=FALSE,quote="")
names(gff)<-c("seq_id","source","type","start","end","score","strand","phase","attributes")
gff$mod_start <- gff$start - 1
gff$a <-paste(gff$seq_id, gff$mod_start, sep=":")
gff$target_id <- paste(gff$a,gff$end,sep="-")
gff$mod_start <- NULL
gff$source <- NULL
gff$start <- NULL
gff$end <- NULL
gff$score <- NULL
gff$strand <- NULL
gff$phase <- NULL
gff$seq_id <- NULL
gff$a <- NULL
gff<-gff[grepl("CDS",gff$type),]
gff$type <- NULL
gff$geneid<-sub(".*locus_tag=","",gff$attributes)
gff$gene_id<-gsub(";.*","",gff$geneid)
gff$geneid <- NULL
gff$product<-sub("ID=.*product=","",gff$attributes)
gff$attributes <- NULL
rose<-merge(gff,t,"target_id")
write.table(rose,"Roseofilum_TPM_15RNAseqlibraries.txt",sep="\t",row.names=FALSE, quote=FALSE)
#open with text edit, remove quotations (Use the quote flage FALSE to circumbent opening the text file)

##Summarize TPM results
library(reshape2)
library(dplyr)
library(ggplot2)
#DAYTIME samples only
genes<-read.table("Roseofilum_TPM_15RNAseqlibraries.txt",sep="\t",header=TRUE,quote="")
genes_day<-genes[,c(1:4,6:9,11:14,16)]
genes_key<-genes[,2:3]
genes_day$target_id<-NULL
genes_day$product<-NULL
genes_long<-melt(genes_day,id.vars="gene_id",variable.name="sample",value.name="TPM")
meta<-read.table("sample_metadata_15libraries.txt",sep="\t",header=TRUE)
meta_day<-meta[c(1:9,13:15),]
genes_long_meta<-merge(genes_long,meta_day,"sample")
genes_long_meta<-genes_long_meta[c("sample","coral","zone","host","gene_id","TPM")]
genes_long_meta_product<-merge(genes_key,genes_long_meta,"gene_id")
genes_long_meta_product_nohyp<-genes_long_meta_product[!grepl("hypothetical",genes_long_meta_product$product),]
genes_long_meta_product_CDS<-genes_long_meta_product_nohyp[!grepl("ribosomal",genes_long_meta_product_nohyp$product),]
genes_sum<- genes_long_meta_product_CDS %>% group_by(zone,gene_id) %>% summarize(TPMavg=mean(TPM),sd=sd(TPM))
genes_sum_product<-merge(genes_key,genes_sum,"gene_id")
write.table(genes_sum_product, "Roseofilum_TPM_avg_sd_by_zone_DAYONLY.txt",sep="\t",row.names=FALSE)
BT<-genes_sum_product[!grepl("Healthy",genes_sum_product$zone),]
BT$sd<-NULL
BT$product<-NULL
BTwide<-dcast(BT,gene_id~zone)
BTwide[, "fold_change"] <- BTwide[, "Black Band"] / BTwide[, "Transition"]
BTwide_product <- merge(genes_key,BTwide,"gene_id")
BTwide_product <- BTwide_product[order(-BTwide_product$fold_change),] 
write.table(BTwide_product,"Roseofilum_TPM_foldchange_BT.txt",sep="\t",row.names=FALSE)

BTwide[, "fold_change_TB"] <- BTwide[, "Transition"] / BTwide[, "Black Band"]
BTwide_product <- merge(genes_key,BTwide,"gene_id")
BTwide_product <- BTwide_product[order(-BTwide_product$fold_change_TB),] 
write.table(BTwide_product,"Roseofilum_TPM_foldchange_TB.txt",sep="\t",row.names=FALSE)
TH<-genes_sum_product[!grepl("Black Band",genes_sum_product$zone),]
TH$sd<-NULL
TH$product<-NULL
THwide<-dcast(TH,gene_id~zone)
THwide[, "fold_change"] <- THwide[, "Transition"] / THwide[, "Healthy"]
THwide_product <- merge(genes_key,THwide,"gene_id")
THwide_product <- THwide_product[order(-THwide_product$fold_change),] 
write.table(THwide_product,"Roseofilum_TPM_foldchange_TH.txt",sep="\t",row.names=FALSE)

###Make a KO key to add KEGG Hierarchy to TPM of MAGs
library(reshape2)
library(dplyr)
library(ggplot2)
ko_img<-read.table("2627853561_BLZ4_bin2_Roseofilum/2627853561.ko.tab.txt",sep="\t",header=TRUE,quote="")
ko<-ko_img[,c(1,10)]
ko$ko_id<-sub("KO:","",ko$ko_id)
kegg<-read.table("KEGG_hierarchy_selectlist.txt",sep="\t",header=TRUE,quote="")
names(ko)<-sub("ko_id","ko",names(ko))
kegg_geneoid <- merge(ko,kegg,"ko")
gff<-read.table("2627853561_BLZ4_bin2_Roseofilum/2627853561.gff",sep="\t",header=FALSE,quote="")
names(gff)<-c("seq_id","source","type","start","end","score","strand","phase","attributes")
gff$mod_start <- gff$start - 1
gff$a <-paste(gff$seq_id, gff$mod_start, sep=":")
gff$target_id <- paste(gff$a,gff$end,sep="-")
gff$mod_start <- NULL
gff$source <- NULL
gff$start <- NULL
gff$end <- NULL
gff$score <- NULL
gff$strand <- NULL
gff$phase <- NULL
gff$seq_id <- NULL
gff$a <- NULL
gff<-gff[grepl("CDS",gff$type),]
gff$type <- NULL
gff$geneid<-sub(".*locus_tag=","",gff$attributes)
gff$gene_id<-gsub(";.*","",gff$geneid)
gff$geneid <- NULL
gff$product<-sub("ID=.*product=","",gff$attributes)
gff$gene_oid1<-sub("ID=","",gff$attributes)
gff$gene_oid<-sub(";.*","",gff$gene_oid1)
gff$gene_oid1 <- NULL
gff$attributes <- NULL
gff$target_id<-NULL
gff$product<-NULL
kegg_rose<-merge(kegg_geneoid,gff,"gene_oid")
kegg_rose$gene_oid<-NULL
kegg_rose<-kegg_rose[,c("gene_id","ko","A","B","C","gene")]
genes<-read.table("Roseofilum_TPM_15RNAseqlibraries.txt",sep="\t",header=TRUE,quote="")
genes$target_id<-NULL
genes$product<-NULL
genes_kegg<-merge(genes,kegg_rose,"gene_id")
genes_kegg_long<-melt(genes_kegg,id.vars=c("gene_id","ko","A","B","C","gene"),variable.name="sample",value.name="TPM")
write.table(genes_kegg_long,"Roseofilum_TPM_15RNAseqlibraries_withKEGG.txt",sep="\t",row.names=FALSE)

tpm_cumm<- genes_kegg_long %>% group_by(B,sample) %>% summarize(TPMcumm=sum(TPM))
write.table(tpm_cumm,"Roseofilum_TPMcummulative_levelB.txt",sep="\t",row.names=FALSE)
tpm_cumm$TPMcumm<-round(tpm_cumm$TPMcumm,digits=0)
tpm_cumm_wide<-dcast(tpm_cumm,B~sample)
write.table(tpm_cumm_wide,"Roseofilum_TPMcummulative_levelB_forSTAMP.txt",sep="\t",row.names=FALSE)

tpm_cumm_c<-genes_kegg_long %>% group_by(C,sample) %>% summarize(TPMcumm=sum(TPM))
write.table(tpm_cumm,"Roseofilum_TPMcummulative_levelC.txt",sep="\t",row.names=FALSE)
tpm_cumm_c$TPMcumm<-round(tpm_cumm_c$TPMcumm,digits=0)
tpm_cumm_c_wide<-dcast(tpm_cumm_c,C~sample)
write.table(tpm_cumm_c_wide,"Roseofilum_TPMcummulative_levelC_forSTAMP.txt",sep="\t",row.names=FALSE)

tpm_cumm_g<-genes_kegg_long %>% group_by(gene,sample) %>% summarize(TPMcumm=sum(TPM))
write.table(tpm_cumm,"Roseofilum_TPMcummulative_gene.txt",sep="\t",row.names=FALSE)
tpm_cumm_g$TPMcumm<-round(tpm_cumm_g$TPMcumm,digits=0)
tpm_cumm_g_wide<-dcast(tpm_cumm_g,gene~sample)
write.table(tpm_cumm_g_wide,"Roseofilum_TPMcummulative_gene_forSTAMP.txt",sep="\t",row.names=FALSE)

meta<-read.table("sample_metadata_15libraries.txt",sep="\t",header=TRUE)
tpm_cumm_meta<-merge(tpm_cumm,meta,"sample",all=TRUE)
tpm_cumm_meta$zone<-factor(tpm_cumm_meta$zone, levels=c("Black Band","Transition","Healthy"))

###Bubble plot
#Create pdf file placeholders
pdf(file="TPMcumm.bubbleplot_levelB.pdf",width=8.5)

tpm_cumm_meta$radius <- sqrt(tpm_cumm_meta$TPMcumm / pi )

#####Variable to play with is radius*number to change the size of the bubbles
ggplot(tpm_cumm_meta,aes(sample,B,fill=zone))+
  geom_point(aes(size=radius*0.1),shape=21)+
  geom_text(aes(label=TPMcumm),size=2)+
  scale_size_identity()+
  theme_bw()+
  theme(axis.text.x=element_text(size=8,angle=90,hjust=1,vjust=0))+
  theme(axis.text.y=element_text(size=8))+
  scale_fill_brewer()

#save to file
dev.off()

###Level C
tpm_cumm_c_meta<-merge(tpm_cumm_c,meta,"sample",all=TRUE)
tpm_cumm_c_meta$zone<-factor(tpm_cumm_c_meta$zone, levels=c("Black Band","Transition","Healthy"))
tpm_cumm_c_meta$radius <- sqrt(tpm_cumm_c_meta$TPMcumm / pi )
pdf(file="TPMcumm.bubbleplot_levelC.pdf",width=8.5)
ggplot(tpm_cumm_c_meta,aes(sample,C,fill=zone))+
  geom_point(aes(size=radius*0.1),shape=21)+
  geom_text(aes(label=TPMcumm),size=2)+
  scale_size_identity()+
  theme_bw()+
  theme(axis.text.x=element_text(size=8,angle=90,hjust=1,vjust=0))+
  theme(axis.text.y=element_text(size=8))+
  scale_fill_brewer()
dev.off()


###### Compare TPMcummulative of LevelB in 4 MAGs
rose<-read.table("Roseofilum_TPMcummulative_levelB_forSTAMP.txt",sep="\t",header=TRUE)
rose<-rose[,c(1:6)]
names(rose)<-sub("B1","B1_Rose",names(rose))
names(rose)<-sub("B2","B2_Rose",names(rose))
names(rose)<-sub("B3D","B3D_Rose",names(rose))
names(rose)<-sub("B3N","B3N_Rose",names(rose))
names(rose)<-sub("B4","B4_Rose",names(rose))

rhodo<-read.table("Rhodo_TPMcummulative_levelB_forSTAMP.txt",sep="\t",header=TRUE)
rhodo<-rhodo[,c(1:6)]
names(rhodo)<-sub("B1","B1_Rhodo",names(rhodo))
names(rhodo)<-sub("B2","B2_Rhodo",names(rhodo))
names(rhodo)<-sub("B3D","B3D_Rhodo",names(rhodo))
names(rhodo)<-sub("B3N","B3N_Rhodo",names(rhodo))
names(rhodo)<-sub("B4","B4_Rhodo",names(rhodo))

bact<-read.table("Bacteroidetes_TPMcummulative_levelB_forSTAMP.txt",sep="\t",header=TRUE)
bact<-bact[,c(1:6)]
names(bact)<-sub("B1","B1_Bact",names(bact))
names(bact)<-sub("B2","B2_Bact",names(bact))
names(bact)<-sub("B3D","B3D_Bact",names(bact))
names(bact)<-sub("B3N","B3N_Bact",names(bact))
names(bact)<-sub("B4","B4_Bact",names(bact))

desulf<-read.table("Desulfovibrio_TPMcummulative_levelB_forSTAMP.txt",sep="\t",header=TRUE)
desulf<-desulf[,c(1:6)]
names(desulf)<-sub("B1","B1_Desulf",names(desulf))
names(desulf)<-sub("B2","B2_Desulf",names(desulf))
names(desulf)<-sub("B3D","B3D_Desulf",names(desulf))
names(desulf)<-sub("B3N","B3N_Desulf",names(desulf))
names(desulf)<-sub("B4","B4_Desulf",names(desulf))

#deliberately not using "all=TRUE" here bc only extra Rosefilum category is euk. related
A<-merge(rose,bact,"B")
B<-merge(A,desulf,"B")
C<-merge(B,rhodo,"B")
write.table(C,"CompareTPMcumm_4MAGs_forSTAMP.txt",sep="\t",row.names=FALSE)

