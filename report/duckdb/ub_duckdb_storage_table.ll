Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_table?download=true
inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 651
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZN6duckdb17RowGroupReorderer14GetRootSegmentERNS_19RowGroupSegmentTreeE:bb.a
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bg
  %.sroa.078.0 = phi ptr [ %i.eo, %bb.bg ], [ null, %bb.be ]
  %.val36 = load ptr, ptr %i.l, align 8, !tbaa !1770
  call fastcc void @_ZNSt8_Rb_treeIN6duckdb5ValueESt4pairIKS1_NS0_12_GLOBAL__N_124RowGroupSegmentNodeEntryEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef %.val36)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.ep = load ptr, ptr %3, align 8, !tbaa !1640  ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef nonnull %i.ep) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.eq = load ptr, ptr %2, align 8, !tbaa !1640  ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit68, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.eq) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit68

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit68: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.bn

bb.bk:                                            ; preds = %bb.aw, %bb.ba
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.ba ], [ %.pn29.pn, %bb.aw ]
  %.val35 = load ptr, ptr %i.l, align 8, !tbaa !1770
  call fastcc void @_ZNSt8_Rb_treeIN6duckdb5ValueESt4pairIKS1_NS0_12_GLOBAL__N_124RowGroupSegmentNodeEntryEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef %.val35)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.er = load ptr, ptr %3, align 8, !tbaa !1640  ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit70, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZdlPv(ptr noundef nonnull %i.er) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit70

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit70: ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.es = load ptr, ptr %2, align 8, !tbaa !1640  ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit72, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit70
  call void @_ZdlPv(ptr noundef nonnull %i.es) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit72

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit72: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit70, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn29.pn.pn.pn

bb.bn:                                            ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit68, %bb.c
  %.sroa.078.1 = phi ptr [ %.sroa.078.0, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit68 ], [ %i.j, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.078.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_124RowGroupSegmentNodeEntryD2Ev(ptr %.8.val) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.8.val) #37
  tail call void @_ZdlPv(ptr noundef nonnull %.8.val) #39
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_115AppendRowGroupsERKNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaIS6_EEEmRS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1639
  %i.c = load ptr, ptr %0, align 8, !tbaa !1640
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit
  %.06 = phi i64 [ %1, %.lr.ph ], [ %i.aj, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06) ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !1639 ; 5 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !1809
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.k, align 8
  store i64 %i.n, ptr %i.l, align 8
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !1639
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %i.i, align 8, !tbaa !1639
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %2, align 8, !tbaa !1640   ; 5 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #38 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  %i.ad = load i64, ptr %i.k, align 8
  store i64 %i.ad, ptr %i.ac, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.q, %i.l
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.q, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4000)
  %i.ae = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !4000, !noalias !3999
  store i64 %i.ae, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !3999, !noalias !4000
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.l
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !150

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ab, ptr %2, align 8, !tbaa !1640
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !1639
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !1809
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.aj = add nuw i64 %.06, 1                     ; 2 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !1639
  %i.al = load ptr, ptr %0, align 8, !tbaa !1640
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = icmp ult i64 %i.aj, %i.ap
  br i1 %i.aq, label %bb.b, label %._crit_edge, !llvm.loop !3998
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117SetRowGroupVectorERSt8multimapINS_5ValueENS0_24RowGroupSegmentNodeEntryESt4lessIS2_ESaISt4pairIKS2_S3_EEENS_12optional_idxEmNS_9OrderTypeENS_17OrderByColumnTypeERNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISK_EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, i64 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %14 = alloca %"class.duckdb::optional_idx", align 8 ; 3 uses
  store i64 %1, ptr %14, align 8
  %15 = icmp ne i8 %3, 2                          ; 2 uses
  %16 = zext i1 %15 to i8                         ; 2 uses
  br i1 %15, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.f, align 8, !tbaa !1771 ; 3 uses
  %.not4.i = icmp ne i64 %2, 0
  %i.g = icmp ne ptr %.val, %i.e
  %or.cond5.i = select i1 %.not4.i, i1 %i.g, i1 false
  br i1 %or.cond5.i, label %.lr.ph.i, label %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EET_S9_T0_m.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i64 [ %i.i, %.lr.ph.i ], [ %2, %bb.b ]
  %.sroa.03.06.i = phi ptr [ %i.h, %.lr.ph.i ], [ %.val, %bb.b ]
  %i.h = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.03.06.i) #42 ; 3 uses
  %i.i = add i64 %.07.i, -1                       ; 2 uses
  %.not.i = icmp ne i64 %i.i, 0
  %i.j = icmp ne ptr %i.h, %i.e
  %or.cond.i = select i1 %.not.i, i1 %i.j, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EET_S9_T0_m.exit, !llvm.loop !4001

_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EET_S9_T0_m.exit: ; preds = %.lr.ph.i, %bb.b
  %.sroa.03.0.lcssa.i = phi ptr [ %.val, %bb.b ], [ %i.h, %.lr.ph.i ] ; 6 uses
  %i.k = icmp eq ptr %.sroa.03.0.lcssa.i, %i.e
  br i1 %i.k, label %_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EET_S9_T0_m.exit
  %.not.a = icmp eq i64 %1, -1
  br i1 %.not.a, label %.lr.ph.i43, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  %17 = xor i8 %16, 1                             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.n = call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  call void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %i.n, i8 noundef zeroext %17, i8 noundef zeroext %4)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1642
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i unwind label %bb.l

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i: ; preds = %bb.d
  %i.s = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.l       ; 3 uses

bb.e:                                             ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i
  %i.t = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.e
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  %i.u = load atomic i64, ptr %i.r seq_cst, align 8
  br label %.lr.ph46.i

bb.g:                                             ; preds = %.noexc.i
  %i.v = icmp eq i8 %4, 0
  br i1 %i.v, label %bb.h, label %.lr.ph46.i

bb.h:                                             ; preds = %bb.g
  %i.w = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %.noexc53.i unwind label %bb.l

.noexc53.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.lr.ph46.i

bb.i:                                             ; preds = %.noexc53.i
  %i.x = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats10IsConstantERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %.noexc54.i unwind label %bb.l

.noexc54.i:                                       ; preds = %bb.i
  %..i.i = select i1 %i.x, i64 1, i64 2
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.f, %bb.g, %.noexc53.i, %.noexc54.i
  %.0.i.i = phi i64 [ %..i.i, %.noexc54.i ], [ 0, %.noexc53.i ], [ %i.u, %bb.f ], [ 0, %bb.g ]
  %i.y = icmp eq i8 %4, 0
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i, %.lr.ph46.i
  %.03245.i = phi i64 [ %.0.i.i, %.lr.ph46.i ], [ %.13320.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i ] ; 2 uses
  %.03444.i = phi i64 [ 0, %.lr.ph46.i ], [ %.135.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i ] ; 3 uses
  %.03643.i = phi i64 [ 0, %.lr.ph46.i ], [ %.238.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i ] ; 2 uses
  %.sroa.01.042.i = phi ptr [ %.sroa.03.0.lcssa.i, %.lr.ph46.i ], [ %.sroa.01.133.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i ] ; 3 uses
  %.sroa.03.041.i = phi ptr [ %.sroa.03.0.lcssa.i, %.lr.ph46.i ], [ %i.cs, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.041.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.041.i, i64 96 ; 2 uses
  %.not834.i = icmp eq ptr %.sroa.01.042.i, %.sroa.03.041.i
  br i1 %.not834.i, label %.loopexit.i, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.j, %bb.aa
  %.13337.i = phi i64 [ %i.bq, %bb.aa ], [ %.03245.i, %bb.j ] ; 4 uses
  %.13736.i = phi i64 [ %.13337.i, %bb.aa ], [ %.03643.i, %bb.j ]
  %.sroa.01.135.i = phi ptr [ %i.al, %bb.aa ], [ %.sroa.01.042.i, %bb.j ] ; 2 uses
  %i.ad = invoke noundef zeroext i1 @_ZNK6duckdb5ValuegtERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i unwind label %.loopexit10.i

_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i: ; preds = %.lr.ph.i40
  br i1 %i.ad, label %bb.n, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i

_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i: ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i
  %i.ae = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.041.i) #42
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = invoke noundef zeroext i1 @_ZNK6duckdb5ValueneERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i
  %i.ah = add i64 %.03444.i, 1                    ; 2 uses
  %i.ai = select i1 %i.ag, i64 %i.ah, i64 0
  %spec.select.i = add i64 %i.ai, %.13736.i
  %spec.select105.i = select i1 %i.ag, i64 0, i64 %i.ah
  br label %.loopexit.i

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.e, %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body75.i

.loopexit10.i:                                    ; preds = %.lr.ph.i40
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body75.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit11.i = landingpad { ptr, i32 }
          cleanup
  br label %.body75.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.ag
  %lpad.loopexit.split-lp12.i = landingpad { ptr, i32 }
          cleanup
  br label %.body75.i

bb.m:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body75.i

bb.n:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i
  %i.al = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.01.135.i) #42 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1642
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1545 ; 2 uses
  %.not.i68.i = icmp eq ptr %i.ap, null
  br i1 %.not.i68.i, label %.noexc.i79.i, label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit58.i, !prof !274

.noexc.i79.i:                                     ; preds = %bb.n
  %i.aq = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ar, ptr %10, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i64 49, ptr %i.c, align 8, !tbaa !218
  %i.as = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc80.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i69.i ; 3 uses

.noexc80.i:                                       ; preds = %.noexc.i79.i
  store ptr %i.as, ptr %10, align 8, !tbaa !227
  %i.at = load i64, ptr %i.c, align 8, !tbaa !218 ; 3 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.as, ptr noundef nonnull align 1 dereferenceable(49) @.str.180, i64 49, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !288
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc80.i
  invoke void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.r unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i69.i: ; preds = %.noexc.i79.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %.noexc80.i
  %.0.i.i72.i = phi i1 [ false, %bb.o ], [ true, %.noexc80.i ] ; 2 uses
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ay = load ptr, ptr %10, align 8, !tbaa !227  ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ar
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.ay) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br i1 %.0.i.i72.i, label %bb.q, label %.body75.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br i1 %.0.i.i72.i, label %bb.q, label %.body75.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i69.i
  %.pn9.i.i70.i = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i69.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i ]
  call void @__cxa_free_exception(ptr %i.aq) #37
  br label %.body75.i

bb.r:                                             ; preds = %bb.o
  unreachable

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit58.i: ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !327 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %.noexc.i.i, label %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i, !prof !274

.noexc.i.i:                                       ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit58.i
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.bd, ptr %11, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 49, ptr %i.d, align 8, !tbaa !218
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc77.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc77.i:                                       ; preds = %.noexc.i.i
  store ptr %i.be, ptr %11, align 8, !tbaa !227
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !218 ; 3 uses
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.be, ptr noundef nonnull align 1 dereferenceable(49) @.str.157, i64 49, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !288
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  store i8 0, ptr %i.bh, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc77.i
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.v unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %.noexc77.i
  %.0.i.i.i = phi i1 [ false, %bb.s ], [ true, %.noexc77.i ] ; 2 uses
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bk = load ptr, ptr %11, align 8, !tbaa !227  ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bd
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.bk) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br i1 %.0.i.i.i, label %bb.u, label %.body75.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br i1 %.0.i.i.i, label %bb.u, label %.body75.i

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bc) #37
  br label %.body75.i

bb.v:                                             ; preds = %bb.s
  unreachable

_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i: ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit58.i
  %i.bm = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.bb)
          to label %.noexc61.i.a unwind label %bb.ab

.noexc61.i.a:                                     ; preds = %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i
  br i1 %i.bm, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc61.i.a
  %i.bn = load atomic i64, ptr %i.ap seq_cst, align 8
  br label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i

bb.x:                                             ; preds = %.noexc61.i.a
  br i1 %i.y, label %bb.y, label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i

bb.y:                                             ; preds = %bb.x
  %i.bo = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.bb)
          to label %.noexc62.i.a unwind label %bb.ab

.noexc62.i.a:                                     ; preds = %bb.y
  br i1 %i.bo, label %bb.z, label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i

bb.z:                                             ; preds = %.noexc62.i.a
  %i.bp = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats10IsConstantERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.bb)
          to label %.noexc63.i unwind label %bb.ab

.noexc63.i:                                       ; preds = %bb.z
  %..i60.i = select i1 %i.bp, i64 1, i64 2
  br label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i

_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i: ; preds = %.noexc63.i, %.noexc62.i.a, %bb.x, %bb.w
  %.0.i59.i = phi i64 [ %..i60.i, %.noexc63.i ], [ 0, %.noexc62.i.a ], [ %i.bn, %bb.w ], [ 0, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  invoke void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %13, ptr noundef nonnull align 8 dereferenceable(128) %i.bb, i8 noundef zeroext %17, i8 noundef zeroext %4)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i
  %i.bq = add i64 %.0.i59.i, %.13337.i            ; 2 uses
  %i.br = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(64) %13) #37 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %.not8.i = icmp eq ptr %i.al, %.sroa.03.041.i
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i40, !llvm.loop !4002

bb.ab:                                            ; preds = %bb.z, %bb.y, %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body75.i

bb.ac:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %.body75.i

.loopexit.i:                                      ; preds = %bb.aa, %bb.k, %bb.j
  %.sroa.01.133.i = phi ptr [ %.sroa.01.042.i, %bb.j ], [ %.sroa.01.135.i, %bb.k ], [ %i.al, %bb.aa ]
  %.13320.i = phi i64 [ %.03245.i, %bb.j ], [ %.13337.i, %bb.k ], [ %i.bq, %bb.aa ]
  %.238.i = phi i64 [ %.03643.i, %bb.j ], [ %spec.select.i, %bb.k ], [ %.13337.i, %bb.aa ] ; 2 uses
  %.135.i = phi i64 [ %.03444.i, %bb.j ], [ %spec.select105.i, %bb.k ], [ %.03444.i, %bb.aa ]
  %.not.i41 = icmp ult i64 %.238.i, %i.l
  br i1 %.not.i41, label %bb.ad, label %_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvRSt8multimapIS4_S6_St4lessIS4_ESaIS7_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISM_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit

bb.ad:                                            ; preds = %.loopexit.i
  %i.bu = load ptr, ptr %i.z, align 8, !tbaa !1639 ; 5 uses
  %i.bv = load ptr, ptr %i.aa, align 8, !tbaa !1809
  %.not.i65.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i65.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = load i64, ptr %i.ac, align 8
  store i64 %i.bw, ptr %i.bu, align 8
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !1639
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.by, ptr %i.z, align 8, !tbaa !1639
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.bz = load ptr, ptr %5, align 8, !tbaa !1640  ; 5 uses
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.ag, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc66.i.a unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc66.i.a:                                     ; preds = %bb.ag
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #38
          to label %.noexc67.i.a unwind label %.loopexit.split-lp.loopexit.i ; 5 uses

.noexc67.i.a:                                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  %i.cm = load i64, ptr %i.ac, align 8
  store i64 %i.cm, ptr %i.cl, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.bu
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc67.i.a, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ck, %.noexc67.i.a ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bz, %.noexc67.i.a ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4023)
  call void @llvm.experimental.noalias.scope.decl(metadata !4024)
  %i.cn = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !4024, !noalias !4023
  store i64 %i.cn, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !4023, !noalias !4024
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.co, %i.bu
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !150

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc67.i.a
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.noexc67.i.a ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ah, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ck, ptr %5, align 8, !tbaa !1640
  store ptr %i.cq, ptr %i.z, align 8, !tbaa !1639
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.cr, ptr %i.aa, align 8, !tbaa !1809
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ae
  %i.cs = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.041.i) #42 ; 2 uses
  %.not7.i = icmp eq ptr %i.cs, %i.e
  br i1 %.not7.i, label %_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvRSt8multimapIS4_S6_St4lessIS4_ESaIS7_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISM_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit, label %bb.j, !llvm.loop !4006

common.resume:                                    ; preds = %.body80.i, %.body75.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %.body75.i ], [ %.pn.pn.pn.pn.pn.i, %.body80.i ]
  resume { ptr, i32 } %common.resume.op

.body75.i:                                        ; preds = %bb.ac, %bb.ab, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i, %bb.m, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit10.i, %bb.l
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ak, %bb.m ], [ %.pn9.i.i.i, %bb.u ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i ], [ %i.bt, %bb.ac ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74.i ], [ %.pn9.i.i70.i, %bb.q ], [ %i.bs, %bb.ab ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %lpad.loopexit.i, %.loopexit10.i ], [ %lpad.loopexit11.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp12.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %common.resume

_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvRSt8multimapIS4_S6_St4lessIS4_ESaIS7_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISM_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit: ; preds = %.loopexit.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit

.lr.ph.i43:                                       ; preds = %bb.c
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.pre.i = load ptr, ptr %i.ct, align 8, !tbaa !1639
  %.pre7.i = load ptr, ptr %i.cu, align 8, !tbaa !1809
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i, %.lr.ph.i43
  %i.cv = phi ptr [ %.pre7.i, %.lr.ph.i43 ], [ %i.du, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i ] ; 4 uses
  %i.cw = phi ptr [ %.pre.i, %.lr.ph.i43 ], [ %i.dv, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i ] ; 2 uses
  %.sroa.03.05.i = phi ptr [ %.sroa.03.0.lcssa.i, %.lr.ph.i43 ], [ %i.dw, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 96 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not.i.i44, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cy = load i64, ptr %i.cx, align 8
  store i64 %i.cy, ptr %i.cw, align 8
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !1639
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  store ptr %i.da, ptr %i.ct, align 8, !tbaa !1639
  %.pre6.i = load ptr, ptr %i.cu, align 8, !tbaa !1809
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.db = load ptr, ptr %5, align 8, !tbaa !1640  ; 5 uses
  %i.dc = ptrtoint ptr %i.cv to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.al, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46: ; preds = %bb.ak
  %i.dg = ashr exact i64 %i.de, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i47 = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i.i47, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = tail call i64 @llvm.umin.i64(i64 %i.dh, i64 1152921504606846975)
  %i.dk = select i1 %i.di, i64 1152921504606846975, i64 %i.dj ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %i.dk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #38 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.de
  %i.do = load i64, ptr %i.cx, align 8
  store i64 %i.do, ptr %i.dn, align 8
  %.not10.i.i.i.i.i.i.i49 = icmp eq ptr %i.db, %i.cv
  br i1 %.not10.i.i.i.i.i.i.i49, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50

.lr.ph.i.i.i.i.i.i.i50:                           ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46, %.lr.ph.i.i.i.i.i.i.i50
  %.012.i.i.i.i.i.i.i51 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.i50 ], [ %i.dm, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i52 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i50 ], [ %i.db, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4026)
  %i.dp = load i64, ptr %.0911.i.i.i.i.i.i.i52, align 8, !alias.scope !4026, !noalias !4025
  store i64 %i.dp, ptr %.012.i.i.i.i.i.i.i51, align 8, !alias.scope !4025, !noalias !4026
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i52, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i51, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i53 = icmp eq ptr %i.dq, %i.cv
  br i1 %.not.i.i.i.i.i.i.i53, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50, !llvm.loop !150

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i.i.i50, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46
  %.0.lcssa.i.i.i.i.i.i.i55 = phi ptr [ %i.dm, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46 ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i50 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i55, i64 8 ; 2 uses
  %.not.i23.i.i.i56 = icmp eq ptr %i.db, null
  br i1 %.not.i23.i.i.i56, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54
  tail call void @_ZdlPv(ptr noundef nonnull %i.db) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.am, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54
  store ptr %i.dm, ptr %5, align 8, !tbaa !1640
  store ptr %i.ds, ptr %i.ct, align 8, !tbaa !1639
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk ; 2 uses
  store ptr %i.dt, ptr %i.cu, align 8, !tbaa !1809
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.aj
  %i.du = phi ptr [ %.pre6.i, %bb.aj ], [ %i.dt, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ]
  %i.dv = phi ptr [ %i.da, %bb.aj ], [ %i.ds, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ]
  %i.dw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.05.i) #42 ; 2 uses
  %.not.i45 = icmp eq ptr %i.dw, %i.e
  br i1 %.not.i45, label %_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit, label %bb.ai, !llvm.loop !4010

bb.an:                                            ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val29 = load ptr, ptr %i.dx, align 8, !tbaa !1771 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not2.i = icmp eq i64 %2, 0
  %.not1.i185 = icmp eq ptr %i.dy, %.val29
  %or.cond = select i1 %.not2.i, i1 true, i1 %.not1.i185
  br i1 %or.cond, label %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.an
  %i.dz = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.dy) #42, !noalias !4027 ; 2 uses
  %i.ea = add i64 %2, -1                          ; 2 uses
  %.not.i58397 = icmp eq i64 %i.ea, 0
  br i1 %.not.i58397, label %._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge, label %.lr.ph398, !llvm.loop !4013

.lr.ph398:                                        ; preds = %.lr.ph.preheader
  br label %bb.ao, !llvm.loop !4013

bb.ao:                                            ; preds = %.lr.ph398, %.lr.ph
  %i.eb = phi i64 [ %i.ea, %.lr.ph398 ], [ %i.ee, %.lr.ph ]
  %i.ec = phi ptr [ %i.dz, %.lr.ph398 ], [ %i.ed, %.lr.ph ] ; 3 uses
  %.not1.i = icmp eq ptr %i.ec, %.val29
  br i1 %.not1.i, label %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit, label %.lr.ph, !llvm.loop !4013

.lr.ph:                                           ; preds = %bb.ao
  %i.ed = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.ec) #42, !noalias !4027 ; 2 uses
  %i.ee = add i64 %i.eb, -1                       ; 2 uses
  %.not.i58 = icmp eq i64 %i.ee, 0
  br i1 %.not.i58, label %.lr.ph.._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge_crit_edge, label %bb.ao, !llvm.loop !4013

.lr.ph.._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph
  br label %._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge, !llvm.loop !4013

._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge: ; preds = %.lr.ph.._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge_crit_edge, %.lr.ph.preheader
  %.lcssa368 = phi ptr [ %i.ed, %.lr.ph.._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge_crit_edge ], [ %i.dz, %.lr.ph.preheader ]
  br label %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit, !llvm.loop !4013

_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit: ; preds = %bb.ao, %bb.an, %._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge
  %.val.i.in = phi ptr [ %i.dy, %bb.an ], [ %.lcssa368, %._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge ], [ %i.ec, %bb.ao ] ; 6 uses
  %i.ef = icmp eq ptr %.val29, %.val.i.in
  br i1 %i.ef, label %_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit
  %.not131 = icmp eq i64 %1, -1
  br i1 %.not131, label %.lr.ph.i100, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eg = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  %18 = xor i8 %16, 1                             ; 2 uses
  %i.eh = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.val.i.in) #42
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.ej = call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
  call void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %i.ej, i8 noundef zeroext %18, i8 noundef zeroext %4)
  %i.ek = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.val.i.in) #42
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1642
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i59 unwind label %bb.ay

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i59: ; preds = %bb.aq
  %i.ep = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %bb.ar unwind label %bb.ay     ; 3 uses

bb.ar:                                            ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i59
  %i.eq = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ep)
          to label %.noexc.i60 unwind label %bb.ay

.noexc.i60:                                       ; preds = %bb.ar
  br i1 %i.eq, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.noexc.i60
  %i.er = load atomic i64, ptr %i.eo seq_cst, align 8
  br label %.lr.ph46.i63

bb.at:                                            ; preds = %.noexc.i60
  %i.es = icmp eq i8 %4, 0
  br i1 %i.es, label %bb.au, label %.lr.ph46.i63

bb.au:                                            ; preds = %bb.at
  %i.et = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.ep)
          to label %.noexc58.i unwind label %bb.ay

.noexc58.i:                                       ; preds = %bb.au
  br i1 %i.et, label %bb.av, label %.lr.ph46.i63

bb.av:                                            ; preds = %.noexc58.i
  %i.eu = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats10IsConstantERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.ep)
          to label %.noexc59.i unwind label %bb.ay

.noexc59.i:                                       ; preds = %bb.av
  %..i.i98 = select i1 %i.eu, i64 1, i64 2
  br label %.lr.ph46.i63

.lr.ph46.i63:                                     ; preds = %bb.as, %bb.at, %.noexc58.i, %.noexc59.i
  %.0.i.i62 = phi i64 [ %..i.i98, %.noexc59.i ], [ 0, %.noexc58.i ], [ %i.er, %bb.as ], [ 0, %bb.at ]
  %i.ev = icmp eq i8 %4, 0
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i72, %.lr.ph46.i63
  %.sroa.0119.0 = phi ptr [ %.val.i.in, %.lr.ph46.i63 ], [ %i.hs, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i72 ] ; 5 uses
  %.03345.i = phi i64 [ %.0.i.i62, %.lr.ph46.i63 ], [ %.13419.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i72 ] ; 2 uses
  %.03544.i = phi i64 [ 0, %.lr.ph46.i63 ], [ %.136.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i72 ] ; 3 uses
  %.03743.i = phi i64 [ 0, %.lr.ph46.i63 ], [ %.239.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i72 ] ; 2 uses
  %.sroa.02.042.i = phi ptr [ %.val.i.in, %.lr.ph46.i63 ], [ %.sroa.02.132.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i72 ] ; 3 uses
  %i.ey = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0119.0) #42 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 96 ; 2 uses
  %.not734.i = icmp eq ptr %.sroa.02.042.i, %.sroa.0119.0
  br i1 %.not734.i, label %.loopexit.i70, label %.lr.ph.i65.preheader

.lr.ph.i65.preheader:                             ; preds = %bb.aw, %bb.bn
  %.13437.i = phi i64 [ %i.gq, %bb.bn ], [ %.03345.i, %bb.aw ] ; 4 uses
  %.13836.i = phi i64 [ %.13437.i, %bb.bn ], [ %.03743.i, %bb.aw ]
  %.sroa.02.135.i = phi ptr [ %i.fk, %bb.bn ], [ %.sroa.02.042.i, %bb.aw ] ; 2 uses
  %i.fb = invoke noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ez, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i67 unwind label %.loopexit9.i

_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i67: ; preds = %.lr.ph.i65.preheader
  br i1 %i.fb, label %bb.ba, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i68

_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i68: ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i67
  %i.fc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0119.0) #42
  %i.fd = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.fc) #42
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = invoke noundef zeroext i1 @_ZNK6duckdb5ValueneERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ez, ptr noundef nonnull align 8 dereferenceable(64) %i.fe)
          to label %bb.ax unwind label %bb.az     ; 2 uses

bb.ax:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i68
  %i.fg = add i64 %.03544.i, 1                    ; 2 uses
  %i.fh = select i1 %i.ff, i64 %i.fg, i64 0
  %spec.select.i69 = add i64 %i.fh, %.13836.i
  %spec.select103.i = select i1 %i.ff, i64 0, i64 %i.fg
  br label %.loopexit.i70

bb.ay:                                            ; preds = %bb.av, %bb.au, %bb.ar, %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i59, %bb.aq
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body80.i

.loopexit9.i:                                     ; preds = %.lr.ph.i65.preheader
  %lpad.loopexit.i66 = landingpad { ptr, i32 }
          cleanup
  br label %.body80.i

.loopexit.split-lp.loopexit.i76:                  ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i73
  %lpad.loopexit10.i = landingpad { ptr, i32 }
          cleanup
  br label %.body80.i

.loopexit.split-lp.loopexit.split-lp.i86:         ; preds = %bb.bt
  %lpad.loopexit.split-lp11.i = landingpad { ptr, i32 }
          cleanup
  br label %.body80.i

bb.az:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i68
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body80.i

bb.ba:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i67
  %i.fk = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.135.i) #42 ; 4 uses
  %i.fl = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.fk) #42 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 96
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1642
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !1545 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.fp, null
  br i1 %.not.i73.i, label %.noexc.i84.i, label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit63.i, !prof !274

.noexc.i84.i:                                     ; preds = %bb.ba
  %i.fq = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.fr, ptr %6, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 49, ptr %i.a, align 8, !tbaa !218
  %i.fs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc85.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i74.i ; 3 uses

.noexc85.i:                                       ; preds = %.noexc.i84.i
  store ptr %i.fs, ptr %6, align 8, !tbaa !227
  %i.ft = load i64, ptr %i.a, align 8, !tbaa !218 ; 3 uses
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fs, ptr noundef nonnull align 1 dereferenceable(49) @.str.180, i64 49, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !288
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft
  store i8 0, ptr %i.fv, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %.noexc85.i
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.be unwind label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i74.i: ; preds = %.noexc.i84.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %.noexc85.i
  %.0.i.i77.i = phi i1 [ false, %bb.bb ], [ true, %.noexc85.i ] ; 2 uses
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fy = load ptr, ptr %6, align 8, !tbaa !227   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.fr
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i79.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.fy) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %.0.i.i77.i, label %bb.bd, label %.body80.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i79.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %.0.i.i77.i, label %bb.bd, label %.body80.i

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i79.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i74.i
  %.pn9.i.i75.i = phi { ptr, i32 } [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i74.i ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i79.i ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i ]
  call void @__cxa_free_exception(ptr %i.fq) #37
  br label %.body80.i

bb.be:                                            ; preds = %bb.bb
  unreachable

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit63.i: ; preds = %bb.ba
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 104
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !327 ; 5 uses
  %.not.i.i87 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i87, label %.noexc.i.i92, label %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i88, !prof !274

.noexc.i.i92:                                     ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit63.i
  %i.gc = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.gd, ptr %7, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 49, ptr %i.b, align 8, !tbaa !218
  %i.ge = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc82.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i93 ; 3 uses

.noexc82.i:                                       ; preds = %.noexc.i.i92
  store ptr %i.ge, ptr %7, align 8, !tbaa !227
  %i.gf = load i64, ptr %i.b, align 8, !tbaa !218 ; 3 uses
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ge, ptr noundef nonnull align 1 dereferenceable(49) @.str.157, i64 49, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !288
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gf
  store i8 0, ptr %i.gh, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %.noexc82.i
  invoke void @__cxa_throw(ptr nonnull %i.gc, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.bi unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i93: ; preds = %.noexc.i.i92
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %.noexc82.i
  %.0.i.i.i95 = phi i1 [ false, %bb.bf ], [ true, %.noexc82.i ] ; 2 uses
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gk = load ptr, ptr %7, align 8, !tbaa !227   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.gd
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.gk) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.0.i.i.i95, label %bb.bh, label %.body80.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i97: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.0.i.i.i95, label %bb.bh, label %.body80.i

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i93
  %.pn9.i.i.i94 = phi { ptr, i32 } [ %i.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i93 ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i97 ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96 ]
  call void @__cxa_free_exception(ptr %i.gc) #37
  br label %.body80.i

bb.bi:                                            ; preds = %bb.bf
  unreachable

_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i88: ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit63.i
  %i.gm = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.gb)
          to label %.noexc66.i89 unwind label %bb.bo

.noexc66.i89:                                     ; preds = %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i88
  br i1 %i.gm, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.noexc66.i89
  %i.gn = load atomic i64, ptr %i.fp seq_cst, align 8
  br label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i

bb.bk:                                            ; preds = %.noexc66.i89
  br i1 %i.ev, label %bb.bl, label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i

bb.bl:                                            ; preds = %bb.bk
  %i.go = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.gb)
          to label %.noexc67.i91 unwind label %bb.bo

.noexc67.i91:                                     ; preds = %bb.bl
  br i1 %i.go, label %bb.bm, label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i

bb.bm:                                            ; preds = %.noexc67.i91
  %i.gp = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats10IsConstantERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.gb)
          to label %.noexc68.i unwind label %bb.bo

.noexc68.i:                                       ; preds = %bb.bm
  %..i65.i = select i1 %i.gp, i64 1, i64 2
  br label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i

_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i: ; preds = %.noexc68.i, %.noexc67.i91, %bb.bk, %bb.bj
  %.0.i64.i = phi i64 [ %..i65.i, %.noexc68.i ], [ 0, %.noexc67.i91 ], [ %i.gn, %bb.bj ], [ 0, %bb.bk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %i.gb, i8 noundef zeroext %18, i8 noundef zeroext %4)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i
  %i.gq = add i64 %.0.i64.i, %.13437.i            ; 2 uses
  %i.gr = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %9) #37 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %.not7.i90 = icmp eq ptr %i.fk, %.sroa.0119.0
  br i1 %.not7.i90, label %.loopexit.i70, label %.lr.ph.i65.preheader, !llvm.loop !4014

bb.bo:                                            ; preds = %bb.bm, %bb.bl, %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i88
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.body80.i

bb.bp:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.body80.i

.loopexit.i70:                                    ; preds = %bb.bn, %bb.ax, %bb.aw
  %.sroa.02.132.i = phi ptr [ %.sroa.02.042.i, %bb.aw ], [ %.sroa.02.135.i, %bb.ax ], [ %i.fk, %bb.bn ]
  %.13419.i = phi i64 [ %.03345.i, %bb.aw ], [ %.13437.i, %bb.ax ], [ %i.gq, %bb.bn ]
  %.239.i = phi i64 [ %.03743.i, %bb.aw ], [ %spec.select.i69, %bb.ax ], [ %.13437.i, %bb.bn ] ; 2 uses
  %.136.i = phi i64 [ %.03544.i, %bb.aw ], [ %spec.select103.i, %bb.ax ], [ %.03544.i, %bb.bn ]
  %.not.i71 = icmp ult i64 %.239.i, %i.eg
  br i1 %.not.i71, label %bb.bq, label %_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EEvRSt8multimapIS5_S7_St4lessIS5_ESaIS8_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISO_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit

bb.bq:                                            ; preds = %.loopexit.i70
  %i.gu = load ptr, ptr %i.ew, align 8, !tbaa !1639 ; 5 uses
  %i.gv = load ptr, ptr %i.ex, align 8, !tbaa !1809
  %.not.i70.i = icmp eq ptr %i.gu, %i.gv
  br i1 %.not.i70.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gw = load i64, ptr %i.fa, align 8
  store i64 %i.gw, ptr %i.gu, align 8
  %i.gx = load ptr, ptr %i.ew, align 8, !tbaa !1639
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store ptr %i.gy, ptr %i.ew, align 8, !tbaa !1639
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i72

bb.bs:                                            ; preds = %bb.bq
  %i.gz = load ptr, ptr %5, align 8, !tbaa !1640  ; 5 uses
  %i.ha = ptrtoint ptr %i.gu to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 3 uses
  %i.hd = icmp eq i64 %i.hc, 9223372036854775800
  br i1 %i.hd, label %bb.bt, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i73

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc71.i.a unwind label %.loopexit.split-lp.loopexit.split-lp.i86

.noexc71.i.a:                                     ; preds = %bb.bt
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i73: ; preds = %bb.bs
  %i.he = ashr exact i64 %i.hc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i74 = call i64 @llvm.umax.i64(i64 %i.he, i64 1)
  %i.hf = add nsw i64 %.sroa.speculated.i.i.i.i74, %i.he ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %i.he
  %i.hh = call i64 @llvm.umin.i64(i64 %i.hf, i64 1152921504606846975)
  %i.hi = select i1 %i.hg, i64 1152921504606846975, i64 %i.hh ; 3 uses
  %.not.i.i.i.i75 = icmp ne i64 %i.hi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i75)
  %i.hj = shl nuw nsw i64 %i.hi, 3
  %i.hk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hj) #38
          to label %.noexc72.i unwind label %.loopexit.split-lp.loopexit.i76 ; 5 uses

.noexc72.i:                                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i73
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hc
  %i.hm = load i64, ptr %i.fa, align 8
  store i64 %i.hm, ptr %i.hl, align 8
  %.not10.i.i.i.i.i.i.i77 = icmp eq ptr %i.gz, %i.gu
  br i1 %.not10.i.i.i.i.i.i.i77, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i82, label %.lr.ph.i.i.i.i.i.i.i78

.lr.ph.i.i.i.i.i.i.i78:                           ; preds = %.noexc72.i, %.lr.ph.i.i.i.i.i.i.i78
  %.012.i.i.i.i.i.i.i79 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i.i78 ], [ %i.hk, %.noexc72.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i80 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i.i.i78 ], [ %i.gz, %.noexc72.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4028)
  call void @llvm.experimental.noalias.scope.decl(metadata !4029)
  %i.hn = load i64, ptr %.0911.i.i.i.i.i.i.i80, align 8, !alias.scope !4029, !noalias !4028
  store i64 %i.hn, ptr %.012.i.i.i.i.i.i.i79, align 8, !alias.scope !4028, !noalias !4029
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i80, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i79, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i81 = icmp eq ptr %i.ho, %i.gu
  br i1 %.not.i.i.i.i.i.i.i81, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i82, label %.lr.ph.i.i.i.i.i.i.i78, !llvm.loop !150

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i82: ; preds = %.lr.ph.i.i.i.i.i.i.i78, %.noexc72.i
  %.0.lcssa.i.i.i.i.i.i.i83 = phi ptr [ %i.hk, %.noexc72.i ], [ %i.hp, %.lr.ph.i.i.i.i.i.i.i78 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i83, i64 8
  %.not.i23.i.i.i84 = icmp eq ptr %i.gz, null
  br i1 %.not.i23.i.i.i84, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i85, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i82
  call void @_ZdlPv(ptr noundef nonnull %i.gz) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i85

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i85: ; preds = %bb.bu, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i82
  store ptr %i.hk, ptr %5, align 8, !tbaa !1640
  store ptr %i.hq, ptr %i.ew, align 8, !tbaa !1639
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hi
  store ptr %i.hr, ptr %i.ex, align 8, !tbaa !1809
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i72

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i72: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i85, %bb.br
  %i.hs = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0119.0) #42 ; 2 uses
  %.not6.i = icmp eq ptr %i.hs, %.val29
  br i1 %.not6.i, label %_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EEvRSt8multimapIS5_S7_St4lessIS5_ESaIS8_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISO_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit, label %bb.aw, !llvm.loop !4018

.body80.i:                                        ; preds = %bb.bp, %bb.bo, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i79.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i, %bb.az, %.loopexit.split-lp.loopexit.split-lp.i86, %.loopexit.split-lp.loopexit.i76, %.loopexit9.i, %bb.ay
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.fi, %bb.ay ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96 ], [ %i.fj, %bb.az ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i97 ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i ], [ %i.gt, %bb.bp ], [ %.pn9.i.i.i94, %bb.bh ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i79.i ], [ %.pn9.i.i75.i, %bb.bd ], [ %i.gs, %bb.bo ], [ %lpad.loopexit.i66, %.loopexit9.i ], [ %lpad.loopexit10.i, %.loopexit.split-lp.loopexit.i76 ], [ %lpad.loopexit.split-lp11.i, %.loopexit.split-lp.loopexit.split-lp.i86 ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %common.resume

_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EEvRSt8multimapIS5_S7_St4lessIS5_ESaIS8_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISO_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit: ; preds = %.loopexit.i70, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i72
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit

.lr.ph.i100:                                      ; preds = %bb.ap
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.pre.i101 = load ptr, ptr %i.ht, align 8, !tbaa !1639
  %.pre5.i = load ptr, ptr %i.hu, align 8, !tbaa !1809
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i103, %.lr.ph.i100
  %.sroa.0117.0 = phi ptr [ %.val.i.in, %.lr.ph.i100 ], [ %i.ix, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i103 ] ; 2 uses
  %i.hv = phi ptr [ %.pre5.i, %.lr.ph.i100 ], [ %i.iv, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i103 ] ; 4 uses
  %i.hw = phi ptr [ %.pre.i101, %.lr.ph.i100 ], [ %i.iw, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i103 ] ; 2 uses
  %i.hx = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0117.0) #42
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 96 ; 2 uses
  %.not.i.i102 = icmp eq ptr %i.hw, %i.hv
  br i1 %.not.i.i102, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hz = load i64, ptr %i.hy, align 8
  store i64 %i.hz, ptr %i.hw, align 8
  %i.ia = load ptr, ptr %i.ht, align 8, !tbaa !1639
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  store ptr %i.ib, ptr %i.ht, align 8, !tbaa !1639
  %.pre4.i = load ptr, ptr %i.hu, align 8, !tbaa !1809
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i103

bb.bx:                                            ; preds = %bb.bv
  %i.ic = load ptr, ptr %5, align 8, !tbaa !1640  ; 5 uses
  %i.id = ptrtoint ptr %i.hv to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie                    ; 3 uses
  %i.ig = icmp eq i64 %i.if, 9223372036854775800
  br i1 %i.ig, label %bb.by, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i105

bb.by:                                            ; preds = %bb.bx
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i105: ; preds = %bb.bx
  %i.ih = ashr exact i64 %i.if, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i106 = tail call i64 @llvm.umax.i64(i64 %i.ih, i64 1)
  %i.ii = add nsw i64 %.sroa.speculated.i.i.i.i106, %i.ih ; 2 uses
  %i.ij = icmp ult i64 %i.ii, %i.ih
  %i.ik = tail call i64 @llvm.umin.i64(i64 %i.ii, i64 1152921504606846975)
  %i.il = select i1 %i.ij, i64 1152921504606846975, i64 %i.ik ; 3 uses
  %.not.i.i.i.i107 = icmp ne i64 %i.il, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i107)
  %i.im = shl nuw nsw i64 %i.il, 3
  %i.in = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.im) #38 ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.if
  %i.ip = load i64, ptr %i.hy, align 8
  store i64 %i.ip, ptr %i.io, align 8
  %.not10.i.i.i.i.i.i.i108 = icmp eq ptr %i.ic, %i.hv
  br i1 %.not10.i.i.i.i.i.i.i108, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i113, label %.lr.ph.i.i.i.i.i.i.i109

.lr.ph.i.i.i.i.i.i.i109:                          ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i105, %.lr.ph.i.i.i.i.i.i.i109
  %.012.i.i.i.i.i.i.i110 = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.i109 ], [ %i.in, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i105 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i111 = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i.i.i109 ], [ %i.ic, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i105 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4031)
  %i.iq = load i64, ptr %.0911.i.i.i.i.i.i.i111, align 8, !alias.scope !4031, !noalias !4030
  store i64 %i.iq, ptr %.012.i.i.i.i.i.i.i110, align 8, !alias.scope !4030, !noalias !4031
  %i.ir = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i111, i64 8 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i110, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i112 = icmp eq ptr %i.ir, %i.hv
  br i1 %.not.i.i.i.i.i.i.i112, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i113, label %.lr.ph.i.i.i.i.i.i.i109, !llvm.loop !150

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i113: ; preds = %.lr.ph.i.i.i.i.i.i.i109, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i105
  %.0.lcssa.i.i.i.i.i.i.i114 = phi ptr [ %i.in, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i105 ], [ %i.is, %.lr.ph.i.i.i.i.i.i.i109 ]
  %i.it = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i114, i64 8 ; 2 uses
  %.not.i23.i.i.i115 = icmp eq ptr %i.ic, null
  br i1 %.not.i23.i.i.i115, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i116, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i113
  tail call void @_ZdlPv(ptr noundef nonnull %i.ic) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i116

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i116: ; preds = %bb.bz, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i113
  store ptr %i.in, ptr %5, align 8, !tbaa !1640
  store ptr %i.it, ptr %i.ht, align 8, !tbaa !1639
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.il ; 2 uses
  store ptr %i.iu, ptr %i.hu, align 8, !tbaa !1809
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i103

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i103: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i116, %bb.bw
  %i.iv = phi ptr [ %.pre4.i, %bb.bw ], [ %i.iu, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i116 ]
  %i.iw = phi ptr [ %i.ib, %bb.bw ], [ %i.it, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i116 ]
  %i.ix = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0117.0) #42 ; 2 uses
  %.not.i104 = icmp eq ptr %i.ix, %.val29
  br i1 %.not.i104, label %_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit, label %bb.bv, !llvm.loop !4022

_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i103, %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit, %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EET_S9_T0_m.exit, %_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EEvRSt8multimapIS5_S7_St4lessIS5_ESaIS8_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISO_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit, %_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvRSt8multimapIS4_S6_St4lessIS4_ESaIS7_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISM_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb17RowVersionManagerC2ERNS_13BufferManagerE(ptr noundef nonnull align 8 dereferenceable(336) initializes((0, 40)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !213
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6duckdb18FixedSizeAllocatorC1EmRNS_12BlockManagerENS_9MemoryTagE(ptr noundef nonnull align 8 dereferenceable(240) %i.e, i64 noundef 16384, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i8 noundef zeroext 0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 -1, ptr %i.g, align 8, !tbaa !829
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #41
  unreachable
}

declare void @_ZN6duckdb18FixedSizeAllocatorC1EmRNS_12BlockManagerENS_9MemoryTagE(ptr noundef nonnull align 8 dereferenceable(240), i64 noundef, ptr noundef nonnull align 8 dereferenceable(144), i8 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_9ChunkInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1486
  %i.e = load ptr, ptr %0, align 8, !tbaa !1487   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !218
  store i64 %i.i, ptr %i.b, align 8, !tbaa !218
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_9ChunkInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !421

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.183, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !227    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_9ChunkInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_9ChunkInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1488   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_9ChunkInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !274

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.157, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_9ChunkInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define ptr @_ZN6duckdb17RowVersionManager12GetChunkInfoEm(ptr noundef nonnull align 8 dereferenceable(336) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1486
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1487
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c

end_hunk_0
