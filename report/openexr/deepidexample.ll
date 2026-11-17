Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/deepidexample?download=true
inline.NumInlined: 970
inline.NumDeleted: 385
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !tbaa !44
  store i32 4096, ptr %i.tn, align 4, !tbaa !45
  %i.amp = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.ft unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.amq = sitofp i32 %i.amp to float
  %i.amr = fmul nnan float %i.amq, 5.000000e-01   ; 2 uses
  %i.ams = insertelement <2 x i32> poison, i32 %i.amn, i64 0
  %i.amt = insertelement <2 x i32> %i.ams, i32 %i.amo, i64 1
  %i.amu = sitofp <2 x i32> %i.amt to <2 x float>
  %i.amv = insertelement <2 x i32> poison, i32 %i.aml, i64 0
  %i.amw = insertelement <2 x i32> %i.amv, i32 %i.amm, i64 1
  %i.amx = sitofp <2 x i32> %i.amw to <2 x double>
  %i.amy = fmul <2 x float> %i.tt, %i.amu
  %i.amz = fpext <2 x float> %i.amy to <2 x double>
  %i.ana = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tr, <2 x double> %i.amx, <2 x double> %i.amz) ; 2 uses
  %i.anb = extractelement <2 x double> %i.ana, i64 0
  %i.anc = fptrunc double %i.anb to float         ; 2 uses
  %i.and = extractelement <2 x double> %i.ana, i64 1
  %i.ane = fptrunc double %i.and to float         ; 2 uses
  %i.anf = icmp eq i32 %i.ua, 0
  br i1 %i.anf, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  invoke void @_Z8drawBlobRSt6vectorIS_I5RgbazSaIS0_EESaIS2_EEiifffiiPKj(ptr noundef nonnull align 8 dereferenceable(24) %28, i32 noundef %.1195, i32 noundef %.1197, float noundef %i.anc, float noundef %i.ane, float noundef %i.amr, i32 noundef %i.ub, i32 noundef %i.uc, ptr noundef nonnull %i.f)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fv:                                            ; preds = %bb.ft
  invoke void @_Z10drawCircleRSt6vectorIS_I5RgbazSaIS0_EESaIS2_EEiifffiiPKj(ptr noundef nonnull align 8 dereferenceable(24) %28, i32 noundef %.1195, i32 noundef %.1197, float noundef %i.anc, float noundef %i.ane, float noundef %i.amr, i32 noundef %i.ub, i32 noundef %i.uc, ptr noundef nonnull %i.f)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.ang = add nuw nsw i32 %.01872328, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ang, %.1199
  br i1 %exitcond.not, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, label %bb.cg, !llvm.loop !92

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %.noexc552
  %i.anh = getelementptr i8, ptr %i.tv, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.tx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.anh, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !42
  br label %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %.noexc552
  %i.ani = shl nuw nsw i64 %i.rl, 3               ; 10 uses
  %i.anj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc769 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit928.thread ; 15 uses

.noexc769:                                        ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %i.anj, i64 %i.rl ; 11 uses
  store ptr null, ptr %i.anj, align 8, !tbaa !94
  br i1 %i.ty, label %bb.fx, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc769
  %i.anl = getelementptr i8, ptr %i.anj, i64 8
  %.idx.i.i.i.i.i.i.i766 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.anl, i8 0, i64 %.idx.i.i.i.i.i.i.i766, i1 false), !tbaa !94
  br label %bb.fx

bb.fx:                                            ; preds = %.noexc769, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.anm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc777 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit926.thread ; 14 uses

.noexc777:                                        ; preds = %bb.fx
  %i.ann = getelementptr inbounds nuw [8 x i8], ptr %i.anm, i64 %i.rl ; 10 uses
  store ptr null, ptr %i.anm, align 8, !tbaa !94
  br i1 %i.ty, label %bb.fy, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i772

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i772: ; preds = %.noexc777
  %i.ano = getelementptr i8, ptr %i.anm, i64 8
  %.idx.i.i.i.i.i.i.i773 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ano, i8 0, i64 %.idx.i.i.i.i.i.i.i773, i1 false), !tbaa !94
  br label %bb.fy

bb.fy:                                            ; preds = %.noexc777, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i772
  %i.anp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc786 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit924.thread ; 13 uses

.noexc786:                                        ; preds = %bb.fy
  %i.anq = getelementptr inbounds nuw [8 x i8], ptr %i.anp, i64 %i.rl ; 9 uses
  store ptr null, ptr %i.anp, align 8, !tbaa !94
  br i1 %i.ty, label %bb.fz, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i781

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i781: ; preds = %.noexc786
  %i.anr = getelementptr i8, ptr %i.anp, i64 8
  %.idx.i.i.i.i.i.i.i782 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.anr, i8 0, i64 %.idx.i.i.i.i.i.i.i782, i1 false), !tbaa !94
  br label %bb.fz

bb.fz:                                            ; preds = %.noexc786, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i781
  %i.ans = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc795 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit922.thread ; 12 uses

.noexc795:                                        ; preds = %bb.fz
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %i.rl ; 8 uses
  store ptr null, ptr %i.ans, align 8, !tbaa !94
  br i1 %i.ty, label %bb.ga, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i790

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i790: ; preds = %.noexc795
  %i.anu = getelementptr i8, ptr %i.ans, i64 8
  %.idx.i.i.i.i.i.i.i791 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.anu, i8 0, i64 %.idx.i.i.i.i.i.i.i791, i1 false), !tbaa !94
  br label %bb.ga

bb.ga:                                            ; preds = %.noexc795, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i790
  %i.anv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc804 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit920.thread ; 11 uses

.noexc804:                                        ; preds = %bb.ga
  %i.anw = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.rl ; 7 uses
  store ptr null, ptr %i.anv, align 8, !tbaa !94
  br i1 %i.ty, label %bb.gb, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i799

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i799: ; preds = %.noexc804
  %i.anx = getelementptr i8, ptr %i.anv, i64 8
  %.idx.i.i.i.i.i.i.i800 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.anx, i8 0, i64 %.idx.i.i.i.i.i.i.i800, i1 false), !tbaa !94
  br label %bb.gb

bb.gb:                                            ; preds = %.noexc804, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i799
  %i.any = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc813 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit918.thread ; 10 uses

.noexc813:                                        ; preds = %bb.gb
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %i.rl ; 6 uses
  store ptr null, ptr %i.any, align 8, !tbaa !94
  br i1 %i.ty, label %bb.gc, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i808

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i808: ; preds = %.noexc813
  %i.aoa = getelementptr i8, ptr %i.any, i64 8
  %.idx.i.i.i.i.i.i.i809 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aoa, i8 0, i64 %.idx.i.i.i.i.i.i.i809, i1 false), !tbaa !94
  br label %bb.gc

bb.gc:                                            ; preds = %.noexc813, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i808
  %i.aob = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc822 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit916.thread ; 9 uses

.noexc822:                                        ; preds = %bb.gc
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %i.aob, i64 %i.rl ; 5 uses
  store ptr null, ptr %i.aob, align 8, !tbaa !94
  br i1 %i.ty, label %bb.gd, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i817

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i817: ; preds = %.noexc822
  %i.aod = getelementptr i8, ptr %i.aob, i64 8
  %.idx.i.i.i.i.i.i.i818 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aod, i8 0, i64 %.idx.i.i.i.i.i.i.i818, i1 false), !tbaa !94
  br label %bb.gd

bb.gd:                                            ; preds = %.noexc822, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i817
  %i.aoe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc831 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit914.thread ; 8 uses

.noexc831:                                        ; preds = %bb.gd
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %i.aoe, i64 %i.rl ; 4 uses
  store ptr null, ptr %i.aoe, align 8, !tbaa !94
  br i1 %i.ty, label %bb.ge, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i826

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i826: ; preds = %.noexc831
  %i.aog = getelementptr i8, ptr %i.aoe, i64 8
  %.idx.i.i.i.i.i.i.i827 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aog, i8 0, i64 %.idx.i.i.i.i.i.i.i827, i1 false), !tbaa !94
  br label %bb.ge

bb.ge:                                            ; preds = %.noexc831, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i826
  %i.aoh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc840 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit912.thread ; 7 uses

.noexc840:                                        ; preds = %bb.ge
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %i.aoh, i64 %i.rl ; 3 uses
  store ptr null, ptr %i.aoh, align 8, !tbaa !94
  br i1 %i.ty, label %bb.gf, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i835

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i835: ; preds = %.noexc840
  %i.aoj = getelementptr i8, ptr %i.aoh, i64 8
  %.idx.i.i.i.i.i.i.i836 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aoj, i8 0, i64 %.idx.i.i.i.i.i.i.i836, i1 false), !tbaa !94
  br label %bb.gf

bb.gf:                                            ; preds = %.noexc840, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i835
  %i.aok = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc849 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit910.thread ; 6 uses

.noexc849:                                        ; preds = %bb.gf
  %i.aol = getelementptr inbounds nuw [8 x i8], ptr %i.aok, i64 %i.rl ; 2 uses
  store ptr null, ptr %i.aok, align 8, !tbaa !94
  br i1 %i.ty, label %.lr.ph2331.preheader, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i844

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i844: ; preds = %.noexc849
  %i.aom = getelementptr i8, ptr %i.aok, i64 8
  %.idx.i.i.i.i.i.i.i845 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aom, i8 0, i64 %.idx.i.i.i.i.i.i.i845, i1 false), !tbaa !94
  br label %.lr.ph2331.preheader

.lr.ph2331.preheader:                             ; preds = %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i844, %.noexc849
  %85 = load ptr, ptr %28, align 8, !tbaa !37
  %wide.trip.count = zext nneg i32 %i.rk to i64
  br label %.lr.ph2331

._crit_edge2332:                                  ; preds = %bb.gi, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.02875 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aol, %bb.gi ] ; 2 uses
  %.sroa.01016.02872 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aok, %bb.gi ] ; 6 uses
  %.sroa.12.0160916312859 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aof, %bb.gi ] ; 3 uses
  %.sroa.01030.0160016332847 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aoe, %bb.gi ] ; 7 uses
  %.sroa.14.014771495159116352835 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anz, %bb.gi ] ; 3 uses
  %.sroa.01047.014661497158916372823 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.any, %bb.gi ] ; 9 uses
  %.sroa.111069.01361137514551499158716392811 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ant, %bb.gi ] ; 3 uses
  %.sroa.01064.01348137714531501158516412799 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ans, %bb.gi ] ; 6 uses
  %.sroa.111085.0126112711335137914511503158316432787 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ann, %bb.gi ] ; 3 uses
  %.sroa.01080.0124612731333138114491505158116452775 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anm, %bb.gi ] ; 6 uses
  %.sroa.121102.0115011721183123112751331138314471507157916472763 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.tw, %bb.gi ] ; 3 uses
  %.sroa.01096.0116711701185122912771329138514451509157716492751 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.tv, %bb.gi ] ; 6 uses
  %.sroa.111093.01201122712791327138714431511157516512739 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ank, %bb.gi ] ; 3 uses
  %.sroa.01088.01217122512811325138914411513157316532727 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anj, %bb.gi ] ; 6 uses
  %.sroa.01072.012951323139114391515157116552715 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anp, %bb.gi ] ; 6 uses
  %.sroa.111077.013091321139314371517156916572703 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anq, %bb.gi ] ; 3 uses
  %.sroa.01056.0140514351519156716592691 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anv, %bb.gi ] ; 6 uses
  %.sroa.111061.0141714331521156516612679 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anw, %bb.gi ] ; 3 uses
  %.sroa.01038.01531156316632667 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aob, %bb.gi ] ; 7 uses
  %.sroa.121044.01541156116652655 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aoc, %bb.gi ] ; 3 uses
  %.sroa.01022.016732643 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aoh, %bb.gi ] ; 6 uses
  %.sroa.111027.016812631 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aoi, %bb.gi ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  store <2 x float> zeroinitializer, ptr %46, align 8, !tbaa !128
  invoke void @_ZN7Imf_3_46HeaderC1EiifRKN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49) %45, i32 noundef %.1195, i32 noundef %.1197, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(8) %46, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 3)
          to label %bb.gj unwind label %bb.hz

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fu, %bb.fv, %bb.cg, %bb.ch, %bb.ci, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ce
  %lpad.loopexit.split-lp2979 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit930

_ZNSt6vectorIPcSaIS0_EED2Ev.exit928.thread:       ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.aon = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

_ZNSt6vectorIPcSaIS0_EED2Ev.exit926.thread:       ; preds = %bb.fx
  %i.aoo = landingpad { ptr, i32 }
          cleanup
  br label %bb.nn

_ZNSt6vectorIPcSaIS0_EED2Ev.exit924.thread:       ; preds = %bb.fy
  %i.aop = landingpad { ptr, i32 }
          cleanup
  br label %bb.nm

_ZNSt6vectorIPcSaIS0_EED2Ev.exit922.thread:       ; preds = %bb.fz
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

_ZNSt6vectorIPcSaIS0_EED2Ev.exit920.thread:       ; preds = %bb.ga
  %i.aor = landingpad { ptr, i32 }
          cleanup
  br label %bb.nk

_ZNSt6vectorIPcSaIS0_EED2Ev.exit918.thread:       ; preds = %bb.gb
  %i.aos = landingpad { ptr, i32 }
          cleanup
  br label %bb.nj

_ZNSt6vectorIPcSaIS0_EED2Ev.exit916.thread:       ; preds = %bb.gc
  %i.aot = landingpad { ptr, i32 }
          cleanup
  br label %bb.ni

_ZNSt6vectorIPcSaIS0_EED2Ev.exit914.thread:       ; preds = %bb.gd
  %i.aou = landingpad { ptr, i32 }
          cleanup
  br label %bb.nh

_ZNSt6vectorIPcSaIS0_EED2Ev.exit912.thread:       ; preds = %bb.ge
  %i.aov = landingpad { ptr, i32 }
          cleanup
  br label %bb.ng

_ZNSt6vectorIPcSaIS0_EED2Ev.exit910.thread:       ; preds = %bb.gf
  %i.aow = landingpad { ptr, i32 }
          cleanup
  br label %bb.nf

.lr.ph2331:                                       ; preds = %.lr.ph2331.preheader, %bb.gi
  %indvars.iv = phi i64 [ 0, %.lr.ph2331.preheader ], [ %indvars.iv.next, %bb.gi ] ; 13 uses
  %i.aox = getelementptr inbounds nuw [24 x i8], ptr %85, i64 %indvars.iv ; 3 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 8
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !49 ; 4 uses
  %i.apa = load ptr, ptr %i.aox, align 8, !tbaa !50 ; 5 uses
  %i.apb = ptrtoint ptr %i.aoz to i64
  %i.apc = ptrtoint ptr %i.apa to i64
  %i.apd = sub i64 %i.apb, %i.apc
  %i.ape = ashr exact i64 %i.apd, 5               ; 2 uses
  %i.apf = trunc i64 %i.ape to i32                ; 2 uses
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %indvars.iv
  store i32 %i.apf, ptr %i.apg, align 4, !tbaa !42
  %i.aph = icmp sgt i32 %i.apf, 0
  br i1 %i.aph, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %.lr.ph2331
  %.not.i.i851 = icmp eq ptr %i.apa, %i.aoz
  br i1 %.not.i.i851, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.api = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ape, i1 true)
  %i.apj = shl nuw nsw i64 %i.api, 1
  %i.apk = xor i64 %i.apj, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %i.apa, ptr %i.aoz, i64 noundef %i.apk)
          to label %.noexc852 unwind label %.thread2876

.noexc852:                                        ; preds = %bb.gh
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %i.apa, ptr %i.aoz)
          to label %.noexc852._ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit_crit_edge unwind label %.thread2876

.noexc852._ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit_crit_edge: ; preds = %.noexc852
  %.pre2358 = load ptr, ptr %i.aox, align 8, !tbaa !50
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit: ; preds = %.noexc852._ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit_crit_edge, %bb.gg
  %86 = phi ptr [ %.pre2358, %.noexc852._ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit_crit_edge ], [ %i.apa, %bb.gg ] ; 10 uses
  %i.apl = getelementptr inbounds nuw [8 x i8], ptr %i.anj, i64 %indvars.iv
  store ptr %86, ptr %i.apl, align 8, !tbaa !94
  %i.apm = getelementptr inbounds nuw i8, ptr %86, i64 2
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %i.anm, i64 %indvars.iv
  store ptr %i.apm, ptr %i.apn, align 8, !tbaa !94
  %i.apo = getelementptr inbounds nuw i8, ptr %86, i64 4
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %i.anp, i64 %indvars.iv
  store ptr %i.apo, ptr %i.app, align 8, !tbaa !94
  %i.apq = getelementptr inbounds nuw i8, ptr %86, i64 6
  %i.apr = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %indvars.iv
  store ptr %i.apq, ptr %i.apr, align 8, !tbaa !94
  %i.aps = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv
  store ptr %i.aps, ptr %i.apt, align 8, !tbaa !94
  %i.apu = getelementptr inbounds nuw i8, ptr %86, i64 12
  %i.apv = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv
  store ptr %i.apu, ptr %i.apv, align 8, !tbaa !94
  %i.apw = getelementptr inbounds nuw i8, ptr %86, i64 16
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %i.aob, i64 %indvars.iv
  store ptr %i.apw, ptr %i.apx, align 8, !tbaa !94
  %i.apy = getelementptr inbounds nuw i8, ptr %86, i64 20
  %i.apz = getelementptr inbounds nuw [8 x i8], ptr %i.aoe, i64 %indvars.iv
  store ptr %i.apy, ptr %i.apz, align 8, !tbaa !94
  %i.aqa = getelementptr inbounds nuw i8, ptr %86, i64 24
  %i.aqb = getelementptr inbounds nuw [8 x i8], ptr %i.aoh, i64 %indvars.iv
  store ptr %i.aqa, ptr %i.aqb, align 8, !tbaa !94
  %i.aqc = getelementptr inbounds nuw i8, ptr %86, i64 28
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.aok, i64 %indvars.iv
  store ptr %i.aqc, ptr %i.aqd, align 8, !tbaa !94
  br label %bb.gi

.thread2876:                                      ; preds = %bb.gh, %.noexc852
  %i.aqe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.gi:                                            ; preds = %.lr.ph2331, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond2356.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond2356.not, label %._crit_edge2332, label %.lr.ph2331, !llvm.loop !93

bb.gj:                                            ; preds = %._crit_edge2332
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.aqf = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %45)
          to label %bb.gk unwind label %bb.ia

bb.gk:                                            ; preds = %bb.gj
  store i32 2, ptr %i.aqf, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  %i.aqg = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  store i32 0, ptr %i.aqg, align 8, !tbaa !95
  %i.aqh = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  store ptr null, ptr %i.aqh, align 8, !tbaa !22
  %i.aqi = getelementptr inbounds nuw i8, ptr %47, i64 24
  store ptr %i.aqg, ptr %i.aqi, align 8, !tbaa !23
  %i.aqj = getelementptr inbounds nuw i8, ptr %47, i64 32
  store ptr %i.aqg, ptr %i.aqj, align 8, !tbaa !96
  %i.aqk = getelementptr inbounds nuw i8, ptr %47, i64 40
  store i64 0, ptr %i.aqk, align 8, !tbaa !97
  %i.aql = getelementptr inbounds nuw i8, ptr %47, i64 48
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.aql, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aqm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %47) #21
  br label %.body854

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit:            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  %i.aqn = sext i32 %.1195 to i64                 ; 2 uses
  %i.aqo = shl nsw i64 %i.aqn, 2
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %48, i32 noundef 0, ptr noundef %.sroa.01096.0116711701185122912771329138514451509157716492751, i64 noundef 4, i64 noundef %i.aqo, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.gm unwind label %bb.ib

bb.gm:                                            ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %47, ptr noundef nonnull align 8 dereferenceable(50) %48)
          to label %bb.gn unwind label %bb.ib

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  %i.aqp = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %45)
          to label %bb.go unwind label %bb.ic

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %49, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.gp unwind label %bb.id

bb.gp:                                            ; preds = %bb.go
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.aqp, ptr noundef nonnull @.str.29, ptr noundef nonnull align 4 dereferenceable(13) %49)
          to label %bb.gq unwind label %bb.id

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  %i.aqq = shl nsw i64 %i.aqn, 3                  ; 15 uses
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %50, i32 noundef 1, ptr noundef %.sroa.01088.01217122512811325138914411513157316532727, i64 noundef 8, i64 noundef %i.aqq, i64 noundef 32, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.gr unwind label %bb.ie

bb.gr:                                            ; preds = %bb.gq
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %47, ptr noundef nonnull @.str.29, ptr noundef nonnull align 8 dereferenceable(56) %50)
          to label %bb.gs unwind label %bb.ie

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  %i.aqr = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %45)
          to label %bb.gt unwind label %bb.ic

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %51, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.gu unwind label %bb.if

bb.gu:                                            ; preds = %bb.gt
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.aqr, ptr noundef nonnull @.str.30, ptr noundef nonnull align 4 dereferenceable(13) %51)
          to label %bb.gv unwind label %bb.if

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %52, i32 noundef 1, ptr noundef %.sroa.01080.0124612731333138114491505158116452775, i64 noundef 8, i64 noundef %i.aqq, i64 noundef 32, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.gw unwind label %bb.ig

bb.gw:                                            ; preds = %bb.gv
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %47, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(56) %52)
          to label %bb.gx unwind label %bb.ig

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  %i.aqs = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %45)
          to label %bb.gy unwind label %bb.ic

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %53, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.gz unwind label %bb.ih

bb.gz:                                            ; preds = %bb.gy
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.aqs, ptr noundef nonnull @.str.31, ptr noundef nonnull align 4 dereferenceable(13) %53)
          to label %bb.ha unwind label %bb.ih

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #21
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %54, i32 noundef 1, ptr noundef %.sroa.01072.012951323139114391515157116552715, i64 noundef 8, i64 noundef %i.aqq, i64 noundef 32, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.hb unwind label %bb.ii

bb.hb:                                            ; preds = %bb.ha
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %47, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(56) %54)
          to label %bb.hc unwind label %bb.ii

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21
  %i.aqt = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %45)
          to label %bb.hd unwind label %bb.ic

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #21
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %55, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.he unwind label %bb.ij

bb.he:                                            ; preds = %bb.hd
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.aqt, ptr noundef nonnull @.str.32, ptr noundef nonnull align 4 dereferenceable(13) %55)
          to label %bb.hf unwind label %bb.ij

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #21
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %56, i32 noundef 1, ptr noundef %.sroa.01064.01348137714531501158516412799, i64 noundef 8, i64 noundef %i.aqq, i64 noundef 32, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.hg unwind label %bb.ik

bb.hg:                                            ; preds = %bb.hf
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %47, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(56) %56)
          to label %bb.hh unwind label %bb.ik

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  %i.aqu = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %45)
          to label %bb.hi unwind label %bb.ic

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #21
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %57, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.hj unwind label %bb.il

bb.hj:                                            ; preds = %bb.hi
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.aqu, ptr noundef nonnull @.str.33, ptr noundef nonnull align 4 dereferenceable(13) %57)
          to label %bb.hk unwind label %bb.il

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #21
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %58, i32 noundef 1, ptr noundef %.sroa.01056.0140514351519156716592691, i64 noundef 8, i64 noundef %i.aqq, i64 noundef 32, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.hl unwind label %bb.im

bb.hl:                                            ; preds = %bb.hk
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %47, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(56) %58)
          to label %bb.hm unwind label %bb.im
end_hunk_0
