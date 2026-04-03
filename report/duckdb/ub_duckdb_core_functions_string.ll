begin_hunk_0
inline.NumInlined: 11296
inline.NumDeleted: 2901
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
define linkonce_odr noundef double @_ZN19duckdb_jaro_winkler6detail15jaro_similarityIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EEdRKNS_6common23BlockPatternMatchVectorET_SH_T0_SI_d(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef %4, double noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb_jaro_winkler::detail::SearchBoundMask", align 8 ; 7 uses
  %7 = alloca %"struct.duckdb_jaro_winkler::detail::FlaggedCharsMultiword", align 8 ; 12 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
end_hunk_1
begin_hunk_2

_ZNSt6vectorImSaImEE6resizeEm.exit.i:             ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, %bb.v
  %i.hz = phi ptr [ %i.hy, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %bb.v ]
  %i.ia = phi ptr [ %i.hu, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %bb.v ] ; 11 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.not = icmp eq i64 %i.ho, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE6resizeEm.exit35.i, label %bb.x
end_hunk_2
begin_hunk_3

_ZNSt6vectorImSaImEE6resizeEm.exit35.i:           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i
  %i.ik = phi ptr [ %i.ij, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ]
  %i.il = phi ptr [ %i.if, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ] ; 11 uses
  %i.im = icmp sgt i64 %.pre-phi207266, 0
  br i1 %i.im, label %.lr.ph.i88, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit

end_hunk_3
begin_hunk_4

.preheader20.i:                                   ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit
  %.not22.i = icmp eq ptr %i.ia, %i.jj
  br i1 %.not22.i, label %.critedge67, label %.lr.ph.i93.preheader

.lr.ph.i93.preheader:                             ; preds = %.preheader20.i
  %i.js = add i64 %i.jo, -8
end_hunk_4
begin_hunk_5

.preheader.i95:                                   ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit
  %.not1925.i = icmp eq ptr %i.il, %i.jk
  br i1 %.not1925.i, label %.critedge67, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %.preheader.i95
  %i.kf = add i64 %i.jl, -8
end_hunk_5
begin_hunk_6
  br i1 %.not.i94.a, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i93, !llvm.loop !1989

_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit: ; preds = %.lr.ph.i93, %.lr.ph28.i, %middle.block, %middle.block333
  %.2.i = phi i64 [ %i.ku, %.lr.ph28.i ], [ %i.kr, %middle.block333 ], [ %i.ke, %middle.block ], [ %i.ky, %.lr.ph.i93 ] ; 4 uses
  %.not.i96 = icmp eq i64 %.2.i, 0
  br i1 %.not.i96, label %.critedge67, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit98

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit98: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.la = sitofp i64 %.2.i to double
end_hunk_6
begin_hunk_7
  %i.lk = fadd double %i.lj, 1.000000e+00
  %i.ll = fdiv double %i.lk, 3.000000e+00
  %i.lm = fcmp ult double %i.ll, %5
  br i1 %i.lm, label %.critedge67, label %.preheader2.lr.ph.i

.preheader2.lr.ph.i:                              ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit98
  %i.ln = load i64, ptr %i.il, align 8, !tbaa !83
end_hunk_7
begin_hunk_8
  %.not41.i = icmp eq i64 %i.ns, 0
  br i1 %.not41.i, label %.loopexit.i, label %.preheader.i101, !llvm.loop !1993

_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit.a: ; preds = %.loopexit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ia) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.il) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit

_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit: ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84, %bb.g, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit.a, %bb.q, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit
  %.264 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ %i.nq, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit.a ], [ 0, %bb.q ], [ 0, %bb.g ], [ %i.hb, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84 ]
  %.061 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ %.2.i, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit.a ], [ %i.ev, %bb.q ], [ 0, %bb.g ], [ %i.ev, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84 ]
  %i.nv = sdiv i64 %.264, 2
  %i.nw = sitofp i64 %.061 to double              ; 3 uses
  %i.nx = insertelement <2 x double> poison, double %i.nw, i64 0
end_hunk_8
begin_hunk_9
  %i.om = select i1 %i.ol, double %i.ok, double 0.000000e+00
  br label %.critedge

.critedge67:                                      ; preds = %.preheader20.i, %.preheader.i95, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit98
  %.not.i.i.i.i106 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i106, label %_ZNSt6vectorImSaImEED2Ev.exit.i107, label %8

8:                                                ; preds = %.critedge67
  tail call void @_ZdlPv(ptr noundef nonnull %i.ia) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i107

_ZNSt6vectorImSaImEED2Ev.exit.i107:               ; preds = %8, %.critedge67
  %.not.i.i.i1.i108 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i1.i108, label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit109, label %9

9:                                                ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i107
  tail call void @_ZdlPv(ptr noundef nonnull %i.il) #30
  br label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit109

_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit109: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i107, %9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit, %bb.a, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit109, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, %bb.c
  %.3 = phi double [ %i.z, %bb.c ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit ], [ %i.om, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit109 ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit ], [ 0.000000e+00, %bb.a ]
  ret double %.3
}

end_hunk_9
begin_hunk_10
bb.a:
  %5 = alloca %"struct.duckdb_jaro_winkler::detail::SearchBoundMask", align 8 ; 7 uses
  %6 = alloca %"struct.duckdb_jaro_winkler::common::PatternMatchVector", align 8 ; 18 uses
  %7 = alloca %"struct.duckdb_jaro_winkler::common::BlockPatternMatchVector", align 8 ; 17 uses
  %8 = alloca %"struct.duckdb_jaro_winkler::detail::FlaggedCharsMultiword", align 8 ; 15 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
end_hunk_10
begin_hunk_11
  %i.gp = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.0.1.lcssa.i)
  %i.gq = add nuw nsw i64 %i.gp, %.0.lcssa.i      ; 3 uses
  %.not.i68 = icmp eq i64 %i.gq, 0
  br i1 %.not.i68, label %.critedge, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit
  %i.gr = uitofp nneg i64 %i.gq to double
end_hunk_11
begin_hunk_12
  %i.hb = fadd double %i.ha, 1.000000e+00
  %i.hc = fdiv double %i.hb, 3.000000e+00
  %i.hd = fcmp ult double %i.hc, %4
  br i1 %i.hd, label %.critedge, label %bb.v

bb.v:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit
  %.not2.i = icmp eq i64 %.sroa.8.1.lcssa.i, 0
  br i1 %.not2.i, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.v, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79
  %.05.i = phi i64 [ %i.it, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79 ], [ %.sroa.0.1.lcssa.i, %bb.v ] ; 3 uses
end_hunk_12
begin_hunk_13
  %i.is = and i64 %i.ir, %.0133.i                 ; 2 uses
  %i.it = xor i64 %i.hf, %.05.i
  %.not.i81 = icmp eq i64 %i.is, 0
  br i1 %.not.i81, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, label %.lr.ph.i70, !llvm.loop !2004

_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit: ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79, %bb.v
  %.012.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.iq, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.at

bb.z:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
end_hunk_13
begin_hunk_14

_ZNSt6vectorImSaImEE6resizeEm.exit.i:             ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit
  %i.js = phi ptr [ %i.jr, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit ]
  %i.jt = phi ptr [ %i.jn, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit ] ; 12 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not = icmp eq i64 %i.jh, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE6resizeEm.exit34.i, label %bb.ae
end_hunk_14
begin_hunk_15
  %.2.i = phi i64 [ %i.mn, %.lr.ph28.i ], [ 0, %.preheader.i91 ], [ 0, %.preheader20.i ], [ %i.mk, %middle.block392 ], [ %i.lx, %middle.block ], [ %i.mr, %.lr.ph.i89 ] ; 3 uses
  %i.mt = add nsw i64 %.2.i, %.0.lcssa.i          ; 3 uses
  %.not.i92 = icmp eq i64 %i.mt, 0
  br i1 %.not.i92, label %.critedge50, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit94

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit94: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.mu = sitofp i64 %i.mt to double
end_hunk_15
begin_hunk_16
  %i.ne = fadd double %i.nd, 1.000000e+00
  %i.nf = fdiv double %i.ne, 3.000000e+00
  %i.ng = fcmp ult double %i.nf, %4
  br i1 %i.ng, label %.critedge50, label %bb.al

bb.al:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit94
  %.not19.i95 = icmp eq i64 %.2.i, 0
end_hunk_16
begin_hunk_17
  %.not41.i = icmp eq i64 %i.pm, 0
  br i1 %.not41.i, label %.loopexit.i, label %.preheader.i97, !llvm.loop !1993

_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit: ; preds = %.loopexit.i, %bb.al
  %.026.lcssa.i = phi i64 [ 0, %bb.al ], [ %i.pk, %.loopexit.i ]
  %.not.i.i.i.i109.a = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i109.a, label %_ZNSt6vectorImSaImEED2Ev.exit.i110.a, label %bb.ap

end_hunk_17
begin_hunk_18
_ZNSt6vectorImSaImEED2Ev.exit.i112:               ; preds = %bb.ar, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit
  %i.ps = load ptr, ptr %7, align 8, !tbaa !1953  ; 2 uses
  %.not.i.i.i1.i113 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i1.i113, label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit.a, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i112
  call void @_ZdlPv(ptr noundef nonnull %i.ps) #30
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit.a

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit.a: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i112, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.at

bb.at:                                            ; preds = %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit.a, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit
  %.246 = phi i64 [ %.012.lcssa.i, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit ], [ %.026.lcssa.i, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit.a ], [ 0, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ]
  %.043 = phi i64 [ %i.gq, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit ], [ %i.mt, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit.a ], [ %.0.lcssa.i, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ]
  %i.pt = sdiv i64 %.246, 2
  %i.pu = sitofp i64 %.043 to double              ; 3 uses
  %i.pv = insertelement <2 x double> poison, double %i.pu, i64 0
end_hunk_18
begin_hunk_19
  %i.qk = select i1 %i.qj, double %i.qi, double 0.000000e+00
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

.critedge:                                        ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

.critedge50:                                      ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit94
  %.not.i.i.i.i115 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i115, label %_ZNSt6vectorImSaImEED2Ev.exit.i116, label %9

9:                                                ; preds = %.critedge50
  call void @_ZdlPv(ptr noundef nonnull %i.jt) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i116

_ZNSt6vectorImSaImEED2Ev.exit.i116:               ; preds = %9, %.critedge50
  %10 = load ptr, ptr %8, align 8, !tbaa !1695    ; 2 uses
  %.not.i.i.i1.i117 = icmp eq ptr %10, null
  br i1 %.not.i.i.i1.i117, label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit118, label %11

11:                                               ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i116
  call void @_ZdlPv(ptr noundef nonnull %10) #30
  br label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit118

_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit118: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i116, %11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !1695   ; 2 uses
  %.not.i.i.i.i119 = icmp eq ptr %13, null
  br i1 %.not.i.i.i.i119, label %_ZNSt6vectorImSaImEED2Ev.exit.i120, label %14

14:                                               ; preds = %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit118
  call void @_ZdlPv(ptr noundef nonnull %13) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i120

_ZNSt6vectorImSaImEED2Ev.exit.i120:               ; preds = %14, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit118
  %15 = load ptr, ptr %7, align 8, !tbaa !1953    ; 2 uses
  %.not.i.i.i1.i121 = icmp eq ptr %15, null
  br i1 %.not.i.i.i1.i121, label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit123, label %16

16:                                               ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i120
  call void @_ZdlPv(ptr noundef nonnull %15) #30
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit123

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit123: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i120, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread: ; preds = %bb.a, %bb.at, %.critedge, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit123, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, %bb.c
  %.3 = phi double [ %i.z, %bb.c ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit ], [ %i.qk, %bb.at ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit123 ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.critedge ]
  ret double %.3
}

end_hunk_19
begin_hunk_20
bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.x, ptr %1, align 8, !tbaa !327
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit
  br i1 %i.d, label %bb.k, label %bb.l
end_hunk_20
begin_hunk_21

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not44 = icmp eq i32 %.017.i, 0
  br i1 %.not44, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.l
  store i32 %.017.i, ptr %3, align 4, !tbaa !2139
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.x

bb.m:                                             ; preds = %bb.i, %bb.l
  %.137 = phi i32 [ -1, %bb.l ], [ %.017.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  %.2 = phi i32 [ %.137, %bb.m ], [ -1, %bb.a ]   ; 4 uses
  tail call void @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE11parse_flagsERNS0_18basic_format_specsIcEERPKcSC_(ptr noundef nonnull align 4 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  %i.z = load ptr, ptr %1, align 8, !tbaa !327    ; 5 uses
  %.not45 = icmp eq ptr %i.z, %2
end_hunk_21
begin_hunk_22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.v, %bb.w, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57, %.critedge
  %.1 = phi i32 [ -1, %.critedge ], [ %.2, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57 ], [ %.2, %bb.w ], [ %.2, %bb.v ], [ %.2, %bb.n ]
  ret i32 %.1
}

end_hunk_22
begin_hunk_23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.ac

bb.ab:                                            ; preds = %bb.p, %bb.r, %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit, %bb.k
  %.1 = phi ptr [ %i.aw, %bb.p ], [ %i.bh, %bb.r ], [ %i.t, %bb.k ], [ %i.t, %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bu, %i.a
end_hunk_23
