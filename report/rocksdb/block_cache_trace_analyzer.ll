inline.NumInlined: 8970
inline.NumDeleted: 3445
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0E9_M_invokeERKSt9_Any_dataS7_OmOjOS9_S7_SK_SC_":bb.a
._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, %bb.g
  %i.ba = phi ptr [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i ], [ %i.ar, %bb.g ] ; 3 uses
  switch i64 %i.au, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bb = load i8, ptr %i.as, align 1, !tbaa !17
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !17
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %i.as, i64 %i.au, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.au, ptr %i.bc, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.au
  store i8 0, ptr %i.bd, align 1, !tbaa !17
  %i.be = load ptr, ptr %i.an, align 8, !tbaa !739
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.bf, ptr %i.an, align 8, !tbaa !739
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i

bb.l:                                             ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEEixERSC_.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 40
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i: ; preds = %bb.l, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i, %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1260, !nonnull !460, !align !858
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !143
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.bi, i64 noundef %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1261, !nonnull !460, !align !858 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !19 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %.not10.i.i.i.i8.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not10.i.i.i.i8.i.i.i, label %.critedge.i18.i.i.i, label %.lr.ph.i.i.i.i9.i.i.i

.lr.ph.i.i.i.i9.i.i.i:                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i, %.lr.ph.i.i.i.i9.i.i.i
  %.012.i.i.i.i10.i.i.i = phi ptr [ %.1.i.i.i.i15.i.i.i, %.lr.ph.i.i.i.i9.i.i.i ], [ %i.bn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i ] ; 3 uses
  %.0811.i.i.i.i11.i.i.i = phi ptr [ %.19.i.i.i.i12.i.i.i, %.lr.ph.i.i.i.i9.i.i.i ], [ %i.bo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i10.i.i.i, i64 32
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !300
  %i.br = icmp slt i8 %i.bq, %.val10              ; 2 uses
  %.19.i.i.i.i12.i.i.i = select i1 %i.br, ptr %.0811.i.i.i.i11.i.i.i, ptr %.012.i.i.i.i10.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i13.i.i.i = select i1 %i.br, i64 24, i64 16
  %.1.in.i.i.i.i14.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i10.i.i.i, i64 %.1.in.v.i.i.i.i13.i.i.i
  %.1.i.i.i.i15.i.i.i = load ptr, ptr %.1.in.i.i.i.i14.i.i.i, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i16.i.i.i = icmp eq ptr %.1.i.i.i.i15.i.i.i, null
  br i1 %.not.i.i.i.i16.i.i.i, label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i9.i.i.i, !llvm.loop !1246

_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i9.i.i.i
  %i.bs = icmp eq ptr %.19.i.i.i.i12.i.i.i, %i.bo
  br i1 %i.bs, label %.critedge.i18.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i12.i.i.i, i64 32
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !300
  %i.bv = icmp slt i8 %.val10, %i.bu
  br i1 %i.bv, label %.critedge.i18.i.i.i, label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit.i.i.i

.critedge.i18.i.i.i:                              ; preds = %bb.m, %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i
  %.08.lcssa.i.i.i11.i19.i.i.i = phi ptr [ %.19.i.i.i.i12.i.i.i, %bb.m ], [ %.19.i.i.i.i12.i.i.i, %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i.i.i.i ], [ %i.bo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr %i.a, ptr %10, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.bw = call ptr @_ZNSt8_Rb_treeIN7rocksdb9TraceTypeESt4pairIKS1_NS0_13HistogramStatEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr %.08.lcssa.i.i.i11.i19.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit.i.i.i

_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit.i.i.i: ; preds = %.critedge.i18.i.i.i, %bb.m
  %.sroa.06.0.i17.i.i.i = phi ptr [ %i.bw, %.critedge.i18.i.i.i ], [ %.19.i.i.i.i12.i.i.i, %bb.m ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i17.i.i.i, i64 40
  %i.by = load i64, ptr %i.b, align 8, !tbaa !143
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.bx, i64 noundef %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1262, !nonnull !460, !align !858
  %i.cb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEEixERSH_(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !19 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 3 uses
  %.not10.i.i.i.i20.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not10.i.i.i.i20.i.i.i, label %.critedge.i31.i.i.i, label %.lr.ph.i.i.i.i21.i.i.i

.lr.ph.i.i.i.i21.i.i.i:                           ; preds = %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit.i.i.i
  %i.cf = load i8, ptr %i.a, align 1, !tbaa !300  ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i21.i.i.i
  %.012.i.i.i.i22.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i21.i.i.i ], [ %.1.i.i.i.i27.i.i.i, %bb.n ] ; 3 uses
  %.0811.i.i.i.i23.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i21.i.i.i ], [ %.19.i.i.i.i24.i.i.i, %bb.n ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i22.i.i.i, i64 32
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !300
  %i.ci = icmp slt i8 %i.ch, %i.cf                ; 2 uses
  %.19.i.i.i.i24.i.i.i = select i1 %i.ci, ptr %.0811.i.i.i.i23.i.i.i, ptr %.012.i.i.i.i22.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i25.i.i.i = select i1 %i.ci, i64 24, i64 16
  %.1.in.i.i.i.i26.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i22.i.i.i, i64 %.1.in.v.i.i.i.i25.i.i.i
  %.1.i.i.i.i27.i.i.i = load ptr, ptr %.1.in.i.i.i.i26.i.i.i, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i28.i.i.i = icmp eq ptr %.1.i.i.i.i27.i.i.i, null
  br i1 %.not.i.i.i.i28.i.i.i, label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i29.i.i.i, label %bb.n, !llvm.loop !1246

_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i29.i.i.i: ; preds = %bb.n
  %i.cj = icmp eq ptr %.19.i.i.i.i24.i.i.i, %i.ce
  br i1 %i.cj, label %.critedge.i31.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i29.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24.i.i.i, i64 32
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !300
  %i.cm = icmp slt i8 %i.cf, %i.cl
  br i1 %i.cm, label %.critedge.i31.i.i.i, label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit33.i.i.i

.critedge.i31.i.i.i:                              ; preds = %bb.o, %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i29.i.i.i, %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit.i.i.i
  %.08.lcssa.i.i.i11.i32.i.i.i = phi ptr [ %.19.i.i.i.i24.i.i.i, %bb.o ], [ %.19.i.i.i.i24.i.i.i, %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i29.i.i.i ], [ %i.ce, %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.a, ptr %8, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.cn = call ptr @_ZNSt8_Rb_treeIN7rocksdb9TraceTypeESt4pairIKS1_NS0_13HistogramStatEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr %.08.lcssa.i.i.i11.i32.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit33.i.i.i

_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit33.i.i.i: ; preds = %.critedge.i31.i.i.i, %bb.o
  %.sroa.06.0.i30.i.i.i = phi ptr [ %i.cn, %.critedge.i31.i.i.i ], [ %.19.i.i.i.i24.i.i.i, %bb.o ]
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i30.i.i.i, i64 40
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !143
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.co, i64 noundef %i.cp)
  br label %"_ZSt10__invoke_rIvRZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjNS0_9TraceTypeESB_mRKNS0_15BlockAccessInfoEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

"_ZSt10__invoke_rIvRZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjNS0_9TraceTypeESB_mRKNS0_15BlockAccessInfoEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %bb.a, %._crit_edge.i.i.i, %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit33.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !302
  store ptr %.val, ptr %0, align 8, !tbaa !302
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1024
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val5, i64 40, i1 false), !tbaa.struct !1263
  store ptr %i.a, ptr %0, align 8, !tbaa !302
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !302 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 40) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0E9_M_invokeERKSt9_Any_dataS7_OmOjOS9_S7_SK_SC_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree nonnull readonly align 8 captures(none) %2, ptr nofree nonnull readonly align 4 captures(none) %3, ptr nofree nonnull readonly align 1 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5, ptr nofree nonnull readonly align 8 captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(512) %7) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.rocksdb::HistogramStat", align 8 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !302   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !656  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZSt10__invoke_rIvRZNK7rocksdb23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjNS0_9TraceTypeESB_mRKNS0_15BlockAccessInfoEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.e = load <2 x i64>, ptr %i.d, align 8
  %i.f = uitofp i64 %i.b to double
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.h = load i64, ptr %i.g, align 8, !tbaa !158
  %i.i = insertelement <2 x i64> %i.e, i64 %i.h, i64 1
  %i.j = uitofp <2 x i64> %i.i to <2 x double>
  %i.k = insertelement <2 x double> poison, double %i.f, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fdiv <2 x double> %i.j, %i.l
  %9 = fmul <2 x double> %i.m, splat (double 1.000000e+04) ; 2 uses
  %10 = extractelement <2 x double> %9, i64 0
  %i.n = fptoui double %10 to i64                 ; 2 uses
  %i.o = extractelement <2 x double> %9, i64 1
  %i.p = fptoui double %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.r = load i64, ptr %i.q, align 8, !tbaa !661
  %i.s = uitofp i64 %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !627
  %i.v = uitofp i64 %i.u to double
  %i.w = fdiv double %i.s, %i.v
  %i.x = fmul double %i.w, 1.000000e+04
  %i.y = fptoui double %i.x to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZN7rocksdb13HistogramStatC1Ev(ptr noundef nonnull align 8 dereferenceable(920) %8)
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !121 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %._crit_edge12.i.i.i, label %.lr.ph11.i.i.i

._crit_edge12.i.i.i:                              ; preds = %._crit_edge.i.i.i, %bb.b
  %i.ad = call noundef double @_ZNK7rocksdb13HistogramStat7AverageEv(ptr noundef nonnull align 8 dereferenceable(920) %8)
  %i.ae = fptoui double %i.ad to i64              ; 2 uses
  %i.af = call noundef double @_ZNK7rocksdb13HistogramStat17StandardDeviationEv(ptr noundef nonnull align 8 dereferenceable(920) %8)
  %i.ag = fptoui double %i.af to i64              ; 2 uses
  %i.ah = load ptr, ptr %.val, align 8, !tbaa !1264, !nonnull !460, !align !858
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.ah, i64 noundef %i.ae)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1266, !nonnull !460, !align !858
  %i.ak = call noundef nonnull align 8 dereferenceable(920) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, i64 noundef %i.ae)
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1267, !nonnull !460, !align !858
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.am, i64 noundef %i.ag)
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1268, !nonnull !460, !align !858
  %i.ap = call noundef nonnull align 8 dereferenceable(920) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.ap, i64 noundef %i.ag)
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1269, !nonnull !460, !align !858
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.ar, i64 noundef %i.n)
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1270, !nonnull !460, !align !858
  %i.au = call noundef nonnull align 8 dereferenceable(920) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.au, i64 noundef %i.n)
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1271, !nonnull !460, !align !858
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.aw, i64 noundef %i.p)
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1272, !nonnull !460, !align !858
  %i.az = call noundef nonnull align 8 dereferenceable(920) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.az, i64 noundef %i.p)
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1273, !nonnull !460, !align !858
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.bb, i64 noundef %i.y)
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1274, !nonnull !460, !align !858
  %i.be = call noundef nonnull align 8 dereferenceable(920) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.be, i64 noundef %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %"_ZSt10__invoke_rIvRZNK7rocksdb23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjNS0_9TraceTypeESB_mRKNS0_15BlockAccessInfoEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph11.i.i.i:                                   ; preds = %bb.b, %._crit_edge.i.i.i
  %.sroa.05.09.i.i.i = phi ptr [ %i.bj, %._crit_edge.i.i.i ], [ %i.aa, %bb.b ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !121 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 72 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i
  %i.bj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.05.09.i.i.i) #33 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ab
  br i1 %i.bk, label %._crit_edge12.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph11.i.i.i, %.lr.ph.i.i.i
  %.sroa.01.08.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %i.bg, %.lr.ph11.i.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i.i.i, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !731
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef %i.bm)
  %i.bn = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.08.i.i.i) #33 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.bh
  br i1 %i.bo, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

"_ZSt10__invoke_rIvRZNK7rocksdb23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjNS0_9TraceTypeESB_mRKNS0_15BlockAccessInfoEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %bb.a, %._crit_edge12.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !302
  store ptr %.val, ptr %0, align 8, !tbaa !302
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1024
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val5, i64 80, i1 false), !tbaa.struct !1275
  store ptr %i.a, ptr %0, align 8, !tbaa !302
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !302 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 80) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef double @_ZNK7rocksdb13HistogramStat7AverageEv(ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #1

declare noundef double @_ZNK7rocksdb13HistogramStat17StandardDeviationEv(ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(920) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.472", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.461", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !1276

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
end_hunk_0
