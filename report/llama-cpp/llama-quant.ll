Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-quant?download=true
inline.NumInlined: 5842
inline.NumDeleted: 2455
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_:bb.a

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !96     ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !96   ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !126 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #37 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !96
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !512
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !126 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !96 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !126 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !1205

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #37 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !96
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !126 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #37 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !96
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !512
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !126 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !96 ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !126 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !1205

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !115
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #37 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !96
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !567  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !50
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #27 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 26 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 5 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph66

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEET_SQ_SQ_T0_.exit"
  %i.h = icmp eq i64 %i.dk, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph66, !llvm.loop !1206

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.gd, %bb.b ] ; 2 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i26.lcssa, 3             ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i.i26.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i", %._crit_edge
  %.09.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.bg, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !136  ; 3 uses
  %i.u = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i.i"
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i.i" ], [ %.09.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !136 ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !136 ; 2 uses
  %i.ac = load i16, ptr %i.aa, align 8, !tbaa !138 ; 2 uses
  %i.ad = load i16, ptr %i.ab, align 8, !tbaa !138 ; 2 uses
  %i.ae = icmp eq i16 %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !139
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !139
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = icmp ult i16 %i.ac, %i.ad
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i.i": ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi i1 [ %i.aj, %bb.d ], [ %i.ak, %bb.e ]
  %spec.select.i.i.i.i = select i1 %.0.i.i.i.i.i.i, i64 %i.y, i64 %i.w ; 4 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !136
  %i.an = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.034.i.i.i.i
  store ptr %i.am, ptr %i.an, align 8, !tbaa !136
  %i.ao = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1207

._crit_edge.i.i.i.i:                              ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i.i", %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i.i" ] ; 2 uses
  %i.ap = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  %or.cond.i.i.i = select i1 %i.o, i1 %i.ap, i1 false
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !136
  store ptr %i.aq, ptr %i.r, align 8, !tbaa !136
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.f ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ar = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.as = load i16, ptr %i.t, align 8, !tbaa !138 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.i ] ; 4 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !136 ; 3 uses
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !138 ; 2 uses
  %i.ax = icmp eq i16 %i.aw, %i.as
  br i1 %i.ax, label %.split.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESK_EEbT_RT0_.exit.i.i.i.i.i"

.split.i.i.i.i.i:                                 ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !139
  %i.ba = load i64, ptr %i.at, align 8, !tbaa !139
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESK_EEbT_RT0_.exit.i.i.i.i.i": ; preds = %bb.h
  %i.bc = icmp ult i16 %i.aw, %i.as
  br i1 %i.bc, label %bb.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i"

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESK_EEbT_RT0_.exit.i.i.i.i.i", %.split.i.i.i.i.i
  %i.bd = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store ptr %i.av, ptr %i.bd, align 8, !tbaa !136
  %i.be = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.be, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i", !llvm.loop !1208

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i": ; preds = %bb.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESK_EEbT_RT0_.exit.i.i.i.i.i", %.split.i.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.g ], [ %.010.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESK_EEbT_RT0_.exit.i.i.i.i.i" ], [ %.0911.i.i.i.i.i, %bb.i ], [ %.010.i.i.i.i.i, %.split.i.i.i.i.i ]
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.t, ptr %i.bf, align 8, !tbaa !136
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bg = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !1209

.lr.ph.i9.i:                                      ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bh, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i" ]
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !136 ; 3 uses
  %i.bj = load ptr, ptr %.fr27, align 8, !tbaa !136
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !136
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bk, %i.a                     ; 3 uses
  %i.bm = ashr exact i64 %i.bl, 3                 ; 3 uses
  %i.bn = add nsw i64 %i.bm, -1
  %i.bo = sdiv i64 %i.bn, 2
  %i.bp = icmp sgt i64 %i.bm, 2
  br i1 %i.bp, label %.lr.ph.i.i.i20.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i20.i:                                 ; preds = %.lr.ph.i9.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i22.i"
  %.034.i.i.i21.i = phi i64 [ %spec.select.i.i.i24.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i22.i" ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bq = shl i64 %.034.i.i.i21.i, 1              ; 2 uses
  %i.br = add i64 %i.bq, 2                        ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.br
  %i.bt = or disjoint i64 %i.bq, 1                ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bt
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !136 ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !136 ; 2 uses
  %i.bx = load i16, ptr %i.bv, align 8, !tbaa !138 ; 2 uses
  %i.by = load i16, ptr %i.bw, align 8, !tbaa !138 ; 2 uses
  %i.bz = icmp eq i16 %i.bx, %i.by
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i20.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !139
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !139
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i22.i"

bb.k:                                             ; preds = %.lr.ph.i.i.i20.i
  %i.cf = icmp ult i16 %i.bx, %i.by
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i22.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i22.i": ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i23.i = phi i1 [ %i.ce, %bb.j ], [ %i.cf, %bb.k ]
  %spec.select.i.i.i24.i = select i1 %.0.i.i.i.i.i23.i, i64 %i.bt, i64 %i.br ; 4 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i24.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !136
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.034.i.i.i21.i
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !136
  %i.cj = icmp slt i64 %spec.select.i.i.i24.i, %i.bo
  br i1 %i.cj, label %.lr.ph.i.i.i20.i, label %._crit_edge.i.i.i10.i, !llvm.loop !1207

._crit_edge.i.i.i10.i:                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i22.i", %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i24.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i22.i" ] ; 5 uses
  %i.ck = and i64 %i.bl, 8
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cm = add nsw i64 %i.bm, -2
  %i.cn = ashr exact i64 %i.cm, 1
  %i.co = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cn
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cp = shl nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cq = or disjoint i64 %i.cp, 1                ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !136
  %i.ct = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !136
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i10.i
  %.1.i.i.i12.i = phi i64 [ %i.cq, %bb.m ], [ %.0.lcssa.i.i.i11.i, %bb.l ], [ %.0.lcssa.i.i.i11.i, %._crit_edge.i.i.i10.i ] ; 3 uses
  %i.cu = icmp sgt i64 %.1.i.i.i12.i, 0
  br i1 %i.cu, label %.lr.ph.i.i.i.i14.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_RT0_.exit.i.i"

.lr.ph.i.i.i.i14.i:                               ; preds = %bb.n
  %i.cv = load i16, ptr %i.bi, align 8, !tbaa !138 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i14.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i.i.i12.i, %.lr.ph.i.i.i.i14.i ], [ %.0911.i.i56.i.i.i, %bb.p ] ; 4 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i56.i.i.i
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !136 ; 3 uses
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !138 ; 2 uses
  %i.da = icmp eq i16 %i.cz, %i.cv
  br i1 %i.da, label %.split.i.i.i.i19.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESK_EEbT_RT0_.exit.i.i.i.i17.i"

.split.i.i.i.i19.i:                               ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !139
  %i.dd = load i64, ptr %i.cw, align 8, !tbaa !139
  %i.de = icmp ult i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.p, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_RT0_.exit.i.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESK_EEbT_RT0_.exit.i.i.i.i17.i": ; preds = %bb.o
  %i.df = icmp ult i16 %i.cz, %i.cv
  br i1 %i.df, label %bb.p, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_RT0_.exit.i.i"

bb.p:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESK_EEbT_RT0_.exit.i.i.i.i17.i", %.split.i.i.i.i19.i
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i
  store ptr %i.cy, ptr %i.dg, align 8, !tbaa !136
  %.not.i.i18.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not.i.i18.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_RT0_.exit.i.i", label %bb.o, !llvm.loop !1208

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_RT0_.exit.i.i": ; preds = %bb.p, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESK_EEbT_RT0_.exit.i.i.i.i17.i", %.split.i.i.i.i19.i, %bb.n
  %.0.lcssa.i.i.i.i13.i = phi i64 [ %.1.i.i.i12.i, %bb.n ], [ %.010.i.i.i.i15.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESK_EEbT_RT0_.exit.i.i.i.i17.i" ], [ 0, %bb.p ], [ %.010.i.i.i.i15.i, %.split.i.i.i.i19.i ]
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i13.i
  store ptr %i.bi, ptr %i.dh, align 8, !tbaa !136
  %i.di = icmp sgt i64 %i.bl, 8
  br i1 %i.di, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_T0_.exit", !llvm.loop !1210

.lr.ph66:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2465 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02564 = phi i64 [ %i.dk, %bb.b ], [ %2, %.lr.ph ]
  %i.dj = phi i64 [ %i.ge, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dk = add nsw i64 %.02564, -1                 ; 3 uses
  %i.dl = lshr i64 %i.dj, 1
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.dl ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %storemerge2465, i64 -8 ; 6 uses
  %i.do = load ptr, ptr %i.f, align 8, !tbaa !136 ; 7 uses
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !136 ; 7 uses
  %i.dq = load i16, ptr %i.do, align 8, !tbaa !138 ; 6 uses
  %i.dr = load i16, ptr %i.dp, align 8, !tbaa !138 ; 6 uses
  %i.ds = icmp eq i16 %i.dq, %i.dr
  br i1 %i.ds, label %.split.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i"

.split.i.i:                                       ; preds = %.lr.ph66
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !139
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !139
  %i.dx = icmp ult i64 %i.du, %i.dw
  br i1 %i.dx, label %bb.q, label %bb.t

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i": ; preds = %.lr.ph66
  %i.dy = icmp ult i16 %i.dq, %i.dr
  br i1 %i.dy, label %bb.q, label %bb.t

bb.q:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i", %.split.i.i
  %i.dz = load ptr, ptr %i.dn, align 8, !tbaa !136 ; 5 uses
  %i.ea = load i16, ptr %i.dz, align 8, !tbaa !138 ; 4 uses
  %i.eb = icmp eq i16 %i.dr, %i.ea
  br i1 %i.eb, label %.split34.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit27.i.i"

.split34.i.i:                                     ; preds = %bb.q
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !139
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !139
  %i.eg = icmp ult i64 %i.ed, %i.ef
  br i1 %i.eg, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %bb.r

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit27.i.i": ; preds = %bb.q
  %i.eh = icmp ult i16 %i.dr, %i.ea
  br i1 %i.eh, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %bb.r

bb.r:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit27.i.i", %.split34.i.i
  %i.ei = icmp eq i16 %i.dq, %i.ea
  br i1 %i.ei, label %.split35.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit29.i.i"

.split35.i.i:                                     ; preds = %bb.r
  %i.ej = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !139
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !139
  %i.en = icmp ult i64 %i.ek, %i.em
  br i1 %i.en, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %bb.s

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit29.i.i": ; preds = %bb.r
  %i.eo = icmp ult i16 %i.dq, %i.ea
  br i1 %i.eo, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %bb.s

bb.s:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit29.i.i", %.split35.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"

bb.t:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i", %.split.i.i
  %i.ep = load ptr, ptr %i.dn, align 8, !tbaa !136 ; 5 uses
  %i.eq = load i16, ptr %i.ep, align 8, !tbaa !138 ; 4 uses
  %i.er = icmp eq i16 %i.dq, %i.eq
  br i1 %i.er, label %.split36.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit31.i.i"

.split36.i.i:                                     ; preds = %bb.t
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !139
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !139
  %i.ew = icmp ult i64 %i.et, %i.ev
  br i1 %i.ew, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %bb.u

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit31.i.i": ; preds = %bb.t
  %i.ex = icmp ult i16 %i.dq, %i.eq
  br i1 %i.ex, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %bb.u

bb.u:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit31.i.i", %.split36.i.i
  %i.ey = icmp eq i16 %i.dr, %i.eq
  br i1 %i.ey, label %.split37.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit33.i.i"

.split37.i.i:                                     ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !139
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !139
  %i.fd = icmp ult i64 %i.fa, %i.fc
  br i1 %i.fd, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %bb.v

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit33.i.i": ; preds = %bb.u
  %i.fe = icmp ult i16 %i.dr, %i.eq
  br i1 %i.fe, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %bb.v

bb.v:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit33.i.i", %.split37.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i": ; preds = %bb.v, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit33.i.i", %.split37.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit31.i.i", %.split36.i.i, %bb.s, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit29.i.i", %.split35.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit27.i.i", %.split34.i.i
  %.sink46.i.i = phi ptr [ %i.dz, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit29.i.i" ], [ %i.dp, %bb.v ], [ %i.do, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit31.i.i" ], [ %i.dp, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit27.i.i" ], [ %i.do, %bb.s ], [ %i.dp, %.split34.i.i ], [ %i.dz, %.split35.i.i ], [ %i.do, %.split36.i.i ], [ %i.ep, %.split37.i.i ], [ %i.ep, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit33.i.i" ]
  %.sink45.i.i = phi ptr [ %i.dn, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit29.i.i" ], [ %i.dm, %bb.v ], [ %i.f, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit31.i.i" ], [ %i.dm, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit27.i.i" ], [ %i.f, %bb.s ], [ %i.dm, %.split34.i.i ], [ %i.dn, %.split35.i.i ], [ %i.f, %.split36.i.i ], [ %i.dn, %.split37.i.i ], [ %i.dn, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit33.i.i" ]
  %i.ff = load ptr, ptr %.fr27, align 8, !tbaa !136
  store ptr %.sink46.i.i, ptr %.fr27, align 8, !tbaa !136
  store ptr %i.ff, ptr %.sink45.i.i, align 8, !tbaa !136
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"
  %.sroa.012.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i" ], [ %i.gb, %bb.ab ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2465, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i" ], [ %.sroa.0.1.i.i, %bb.ab ]
  %i.fg = load ptr, ptr %.fr27, align 8, !tbaa !136 ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 8, !tbaa !138 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.w ], [ %i.fr, %bb.y ] ; 9 uses
  %i.fj = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !136 ; 3 uses
  %i.fk = load i16, ptr %i.fj, align 8, !tbaa !138 ; 2 uses
  %i.fl = icmp eq i16 %i.fk, %i.fh
  br i1 %i.fl, label %.split.i14.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i13.i"

.split.i14.i:                                     ; preds = %bb.x
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !139
  %i.fo = load i64, ptr %i.fi, align 8, !tbaa !139
  %i.fp = icmp ult i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.y, label %.preheader

.preheader:                                       ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i13.i", %.split.i14.i
  br label %bb.z

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i13.i": ; preds = %bb.x
  %i.fq = icmp ult i16 %i.fk, %i.fh
  br i1 %i.fq, label %bb.y, label %.preheader

bb.y:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i13.i", %.split.i14.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  br label %bb.x, !llvm.loop !1211

bb.z:                                             ; preds = %.backedge, %.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %.preheader ], [ %.sroa.0.1.i.i, %.backedge ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.fs = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !136 ; 3 uses
  %i.ft = load i16, ptr %i.fs, align 8, !tbaa !138 ; 2 uses
  %i.fu = icmp eq i16 %i.fh, %i.ft
  br i1 %i.fu, label %.split15.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit9.i.i"

.split15.i.i:                                     ; preds = %bb.z
  %i.fv = load i64, ptr %i.fi, align 8, !tbaa !139
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !139
  %i.fy = icmp ult i64 %i.fv, %i.fx
  br i1 %i.fy, label %.backedge, label %bb.aa

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit9.i.i": ; preds = %bb.z
  %i.fz = icmp ult i16 %i.fh, %i.ft
  br i1 %i.fz, label %.backedge, label %bb.aa

.backedge:                                        ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit9.i.i", %.split15.i.i
  br label %bb.z, !llvm.loop !1212

bb.aa:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit9.i.i", %.split15.i.i
  %i.ga = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ga, label %bb.ab, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEET_SQ_SQ_T0_.exit"

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.fs, ptr %.sroa.012.1.i.i, align 8, !tbaa !136
  store ptr %i.fj, ptr %.sroa.0.1.i.i, align 8, !tbaa !136
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  br label %bb.w, !llvm.loop !1213

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEET_SQ_SQ_T0_.exit": ; preds = %bb.aa
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2465, i64 noundef %i.dk)
  %i.gc = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.gd = sub i64 %i.gc, %i.a                     ; 2 uses
  %i.ge = ashr exact i64 %i.gd, 3                 ; 2 uses
  %i.gf = icmp sgt i64 %i.ge, 16
  br i1 %i.gf, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_T0_.exit", !llvm.loop !1206

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEET_SQ_SQ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_SQ_RT0_.exit.i.i", %bb.a
  ret void
}

declare void @gguf_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #24

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #6

declare noundef i64 @_Z14llama_path_maxv() local_unnamed_addr #6

declare i32 @llama_split_path(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #3 align 2

declare i64 @gguf_get_meta_size(ptr noundef) local_unnamed_addr #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(240) ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_base7_M_swapERS_(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #13

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE15_M_cache_localeERKSt6locale(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5seekpESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(8), i64, i64) local_unnamed_addr #6

declare void @gguf_get_meta_data(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #24

declare noundef ptr @_ZNK18llama_model_loader15load_data_rangeERKNS_19llama_tensor_weightEmmPv(ptr noundef nonnull align 8 dereferenceable(592), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !82
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !93 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !93 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !1214

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !51
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !93 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !1214

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #34
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !76   ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !305 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !93 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !307 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !51
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !93 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = load i64, ptr %i.am, align 8, !tbaa !307 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !8

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !51
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !49
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !93 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !307 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !8

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIfSaIfEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

declare ptr @ggml_get_type_traits(i32 noundef) local_unnamed_addr #6

declare void @ggml_fp16_to_fp32_row(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @ggml_bf16_to_fp32_row(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare i64 @ggml_blck_size(i32 noundef) local_unnamed_addr #6

declare i64 @ggml_type_size(i32 noundef) local_unnamed_addr #6

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr nofreeobj noundef align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #11 comdat align 2 {
end_hunk_0
