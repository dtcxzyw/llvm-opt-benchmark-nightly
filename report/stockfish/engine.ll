inline.NumInlined: 3406
inline.NumDeleted: 1747
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !130
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !125
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  %.sink.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 32
  %i.r = load i64, ptr %i.p, align 8, !tbaa !25
  store i64 %i.r, ptr %i.q, align 8, !tbaa !25
  %i.s = load i32, ptr %1, align 8, !tbaa !480
  store i32 %i.s, ptr %.sink.i.i, align 8, !tbaa !480
  %i.t = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !132  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit
  %i.x = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.w, ptr noundef nonnull %.sink.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.y = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !132
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit
  %.0.in41 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.042 = load ptr, ptr %.0.in41, align 8, !tbaa !130 ; 2 uses
  %.not2843 = icmp eq ptr %.042, null
  br i1 %.not2843, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.q
  %.045 = phi ptr [ %.0, %bb.q ], [ %.042, %bb.i ] ; 4 uses
  %.02744 = phi ptr [ %.sink.i.i32, %bb.q ], [ %.sink.i.i, %bb.i ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !129  ; 7 uses
  %.not.i.i.i30 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i30, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57 ; 5 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !129
  %.not9.i.i.i31 = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i31, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !132
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.ac, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !130 ; 2 uses
  %.not10.i.i.i33 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i33, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40, label %.preheader.i.i.i34

.preheader.i.i.i34:                               ; preds = %bb.l, %.preheader.i.i.i34
  %storemerge.i.i.i35 = phi ptr [ %i.ai, %.preheader.i.i.i34 ], [ %i.ag, %bb.l ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i35, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !132 ; 2 uses
  %.not11.i.i.i36 = icmp eq ptr %i.ai, null
  br i1 %.not11.i.i.i36, label %bb.m, label %.preheader.i.i.i34, !llvm.loop !479

bb.m:                                             ; preds = %.preheader.i.i.i34
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i35, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i37 = icmp eq ptr %i.ak, null
  %spec.store.select.i.i.i38 = select i1 %.not12.i.i.i37, ptr %storemerge.i.i.i35, ptr %i.ak
  store ptr %spec.store.select.i.i.i38, ptr %i.a, align 8
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

bb.n:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !130
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

bb.o:                                             ; preds = %bb.j
  store ptr null, ptr %3, align 8, !tbaa !125
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39: ; preds = %.lr.ph
  %i.am = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40: ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39
  %.sink.i.i32 = phi ptr [ %i.am, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39 ], [ %i.z, %bb.l ], [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.z, %bb.o ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.045, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 32
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !25
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !25
  %i.aq = load i32, ptr %.045, align 8, !tbaa !480
  store i32 %i.aq, ptr %.sink.i.i32, align 8, !tbaa !480
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.02744, i64 16
  store ptr %.sink.i.i32, ptr %i.as, align 8, !tbaa !130
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 8
  store ptr %.02744, ptr %i.at, align 8, !tbaa !57
  %i.au = getelementptr inbounds nuw i8, ptr %.045, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !132 ; 2 uses
  %.not29 = icmp eq ptr %i.av, null
  br i1 %.not29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %i.aw = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.av, ptr noundef nonnull %.sink.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !132
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %.0.in = getelementptr inbounds nuw i8, ptr %.045, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !130 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !481

._crit_edge:                                      ; preds = %bb.q, %bb.i
  ret ptr %.sink.i.i
}

declare void @_ZN9Stockfish19read_file_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.33") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.179", align 8   ; 7 uses
  %3 = alloca %"class.std::vector.179", align 8   ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.g = load ptr, ptr %1, align 8, !tbaa !49
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.179") align 8 %2, i64 %i.e, ptr %i.g, i64 1, ptr nonnull @.str.49)
  %i.h = load ptr, ptr %2, align 8, !tbaa !241    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !241  ; 2 uses
  %.not5054 = icmp eq ptr %i.h, %i.j
  br i1 %.not5054, label %._crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.ah
  %.pre = load ptr, ptr %2, align 8, !tbaa !243
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.u = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.b ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !245
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #33
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.ai

bb.d:                                             ; preds = %.lr.ph56, %bb.ah
  %i.aa = phi ptr [ null, %.lr.ph56 ], [ %i.eh, %bb.ah ] ; 8 uses
  %i.ab = phi ptr [ null, %.lr.ph56 ], [ %i.ei, %bb.ah ] ; 4 uses
  %i.ac = phi ptr [ null, %.lr.ph56 ], [ %i.ej, %bb.ah ] ; 7 uses
  %i.ad = phi ptr [ null, %.lr.ph56 ], [ %.promoted61, %bb.ah ] ; 9 uses
  %.sroa.045.055 = phi ptr [ %i.h, %.lr.ph56 ], [ %i.ek, %bb.ah ] ; 3 uses
  %i.ae = load i64, ptr %.sroa.045.055, align 8, !tbaa !482 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.ah, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !246
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.179") align 8 %3, i64 %i.ae, ptr %.sroa.2.0.copyload, i64 1, ptr nonnull @.str.50)
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !484
  %i.ah = load ptr, ptr %3, align 8, !tbaa !243   ; 6 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 4
  switch i64 %i.al, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit [
    i64 1, label %bb.f
    i64 2, label %bb.q
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.sroa.0.0.copyload.i = load i64, ptr %i.ah, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !246 ; 3 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !46
  %i.am = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.an = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.an, %i.am
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #32
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %.sroa.0.0.copyload.i, ptr %i.c, align 8, !tbaa !25
  %i.ao = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.ao, label %bb.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #28 ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !49
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !25
  store i64 %i.aq, ptr %i.r, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %i.ar = phi ptr [ %i.ap, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !52
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.at = load i64, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  store i64 %i.at, ptr %i.s, align 8, !tbaa !51
  %i.au = load ptr, ptr %4, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.aw = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #28 ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.r
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.az = load i64, ptr %i.r, align 8, !tbaa !52
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not.i = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i64 %i.aw, ptr %i.ac, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !359
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = ptrtoint ptr %i.aa to i64
  %i.bd = ptrtoint ptr %i.ad to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i10 = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i10)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #31 ; 5 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i64 %i.aw, ptr %i.bn, align 8, !tbaa !25
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.ad, i64 %i.be, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.be) #33
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.bm, ptr %0, align 8, !tbaa !249
  store ptr %i.bp, ptr %i.p, align 8, !tbaa !359
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk ; 3 uses
  store ptr %i.bq, ptr %i.q, align 8, !tbaa !265
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.ah, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i12, align 8, !tbaa !246 ; 3 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !46
  %i.br = icmp eq ptr %.sroa.2.0.copyload.i13, null
  %i.bs = icmp ne i64 %.sroa.0.0.copyload.i11, 0
  %or.cond.i.i.i14 = and i1 %i.bs, %i.br
  br i1 %or.cond.i.i.i14, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #32
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %.sroa.0.0.copyload.i11, ptr %i.b, align 8, !tbaa !25
  %i.bt = icmp ugt i64 %.sroa.0.0.copyload.i11, 15
  br i1 %i.bt, label %bb.t, label %._crit_edge.i.i.i.i15

bb.t:                                             ; preds = %bb.s
  %i.bu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #28 ; 2 uses
  store ptr %i.bu, ptr %5, align 8, !tbaa !49
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.bv, ptr %i.l, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i15

._crit_edge.i.i.i.i15:                            ; preds = %bb.t, %bb.s
  %i.bw = phi ptr [ %i.bu, %bb.t ], [ %i.l, %bb.s ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i11, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i15
  %i.bx = load i8, ptr %.sroa.2.0.copyload.i13, align 1, !tbaa !52
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16

bb.v:                                             ; preds = %._crit_edge.i.i.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %.sroa.2.0.copyload.i13, i64 %.sroa.0.0.copyload.i11, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16: ; preds = %._crit_edge.i.i.i.i15, %bb.u, %bb.v
  %i.by = load i64, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  store i64 %i.by, ptr %i.m, align 8, !tbaa !51
  %i.bz = load ptr, ptr %5, align 8, !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.cb = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5) #28 ; 2 uses
  %i.cc = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.l
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16
  %i.ce = load i64, ptr %i.l, align 8, !tbaa !52
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.cg = load ptr, ptr %3, align 8, !tbaa !243   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.ch, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
end_hunk_0
