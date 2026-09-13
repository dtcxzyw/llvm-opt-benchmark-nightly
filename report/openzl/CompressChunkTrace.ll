Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/CompressChunkTrace?download=true
inline.NumInlined: 1971
inline.NumDeleted: 1047
begin_hunk_0_@_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS2_:bb.a
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !244
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE24_M_get_insert_unique_posERS2_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !27 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !26 ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !27 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !306

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !139
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE24_M_get_insert_unique_posERS2_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #30 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE24_M_get_insert_unique_posERS2_.exit

_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE24_M_get_insert_unique_posERS2_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.c = load i8, ptr %i.b, align 8, !tbaa !86
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !85   ; 7 uses
  switch i8 %i.c, label %bb.e [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.i8.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !98 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !99
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i9.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.m = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b
  %.sink20.i.i.i.i.i.i = phi ptr [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ %i.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !85
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.sink20.i.i.i.i.i.i to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink20.i.i.i.i.i.i, i64 noundef %i.r) #26
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #26
  br label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E.exit

_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E.exit: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 192) #26
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEET_SF_SF_T0_.exit"
  %i.h = icmp eq i64 %i.cn, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph46, !llvm.loop !307

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.db, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 2           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 4
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"
  %.010.us.i.i.i = phi i64 [ %i.aj, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load i32, ptr %i.s, align 4, !tbaa !58 ; 2 uses
  %i.t = icmp slt i64 %.010.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.036.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.036.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.x
  %.val.i.i.us.i.i.i = load i32, ptr %i.w, align 4, !tbaa !26
  %.val1.i.i.us.i.i.i = load i32, ptr %i.y, align 4, !tbaa !26
  %i.z = icmp ult i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.z, i64 %i.x, i64 %i.v ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ab = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.036.i.us.i.i.i
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !58
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !58
  %i.ad = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ad, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !308

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.011.i.i.us.i.i.i = phi i64 [ %.0912.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 3 uses
  %.0912.in.i.i.us.i.i.i = add nsw i64 %.011.i.i.us.i.i.i, -1
  %.0912.i.i.us.i.i.i = sdiv i64 %.0912.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0912.i.i.us.i.i.i
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %i.af = icmp ult i32 %.val.i.i.i.us.i.i.i, %.sroa.03.0.copyload.us.i.i.i
  br i1 %i.af, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.011.i.i.us.i.i.i
  store i32 %.val.i.i.i.us.i.i.i, ptr %i.ag, align 4, !tbaa !58
  %i.ah = icmp sgt i64 %.0912.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.ah, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", !llvm.loop !309

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.0912.i.i.us.i.i.i, %bb.c ], [ %.011.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i32 %.sroa.03.0.copyload.us.i.i.i, ptr %i.ai, align 4, !tbaa !58
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.aj = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !310

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.be, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %i.ak, align 4, !tbaa !58 ; 2 uses
  %i.al = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.am = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.an = add i64 %i.am, 2                        ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.an
  %i.ap = or disjoint i64 %i.am, 1                ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.ap
  %.val.i.i.i.i.i = load i32, ptr %i.ao, align 4, !tbaa !26
  %.val1.i.i.i.i.i = load i32, ptr %i.aq, align 4, !tbaa !26
  %i.ar = icmp ult i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ar, i64 %i.ap, i64 %i.an ; 4 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.at = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.036.i.i.i.i
  %i.au = load i32, ptr %i.as, align 4, !tbaa !58
  store i32 %i.au, ptr %i.at, align 4, !tbaa !58
  %i.av = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.av, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !308

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aw = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ax = load i32, ptr %i.q, align 4, !tbaa !58
  store i32 %i.ax, ptr %i.r, align 4, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ay = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i = phi i64 [ %.0912.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0912.in.i.i.i.i.i = add nsw i64 %.011.i.i.i.i.i, -1
  %.0912.i.i.i.i.i = sdiv i64 %.0912.in.i.i.i.i.i, 2 ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0912.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i32, ptr %i.az, align 4, !tbaa !26 ; 2 uses
  %i.ba = icmp ult i32 %.val.i.i.i.i.i.i, %.sroa.03.0.copyload.i.i.i
  br i1 %i.ba, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.011.i.i.i.i.i
  store i32 %.val.i.i.i.i.i.i, ptr %i.bb, align 4, !tbaa !58
  %i.bc = icmp sgt i64 %.0912.i.i.i.i.i, %.010.i.i.i
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", !llvm.loop !309

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0912.i.i.i.i.i, %bb.f ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i32 %.sroa.03.0.copyload.i.i.i, ptr %i.bd, align 4, !tbaa !58
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.be = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !310

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i26.lcssa, 4
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bf, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_RT0_.exit.i.i" ]
  %i.bf = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -4 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i32, ptr %i.bf, align 4, !tbaa !58 ; 2 uses
  %i.bg = load i32, ptr %.fr27, align 4, !tbaa !58
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !58
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bh, %i.a                     ; 3 uses
  %i.bj = ashr exact i64 %i.bi, 2                 ; 3 uses
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = lshr i64 %i.bk, 1
  %i.bm = icmp sgt i64 %i.bj, 2
  br i1 %i.bm, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.036.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bn = shl i64 %.036.i.i.i20.i, 1              ; 2 uses
  %i.bo = add i64 %i.bn, 2                        ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.bo
  %i.bq = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.bq
  %.val.i.i.i.i21.i = load i32, ptr %i.bp, align 4, !tbaa !26
  %.val1.i.i.i.i22.i = load i32, ptr %i.br, align 4, !tbaa !26
  %i.bs = icmp ult i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.bs, i64 %i.bq, i64 %i.bo ; 4 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.i.i23.i
  %i.bu = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.036.i.i.i20.i
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !58
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !58
  %i.bw = icmp slt i64 %spec.select.i.i.i23.i, %i.bl
  br i1 %i.bw, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i, !llvm.loop !308

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.bx = and i64 %i.bi, 4
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bz = add nsw i64 %i.bj, -2
  %i.ca = ashr exact i64 %i.bz, 1
  %i.cb = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.ca
  br i1 %i.cb, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cc = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.cd = or disjoint i64 %i.cc, 1                ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i12.i
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !58
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !58
  br label %.lr.ph.i.i.i.i14.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i.preheader

.lr.ph.i.i.i.i14.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.011.i.i.i.i15.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.cd, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %.lr.ph.i.i.i.i14.i.preheader, %bb.i
  %.011.i.i.i.i15.i = phi i64 [ %.0912.i.i56.i.i.i, %bb.i ], [ %.011.i.i.i.i15.i.ph, %.lr.ph.i.i.i.i14.i.preheader ] ; 3 uses
  %.0912.in.i.i.i.i16.i = add nsw i64 %.011.i.i.i.i15.i, -1
  %.0912.i.i56.i.i.i = lshr i64 %.0912.in.i.i.i.i16.i, 1 ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0912.i.i56.i.i.i
  %.val.i.i.i.i.i17.i = load i32, ptr %i.ch, align 4, !tbaa !26 ; 2 uses
  %i.ci = icmp ult i32 %.val.i.i.i.i.i17.i, %.sroa.03.0.copyload.i.i10.i
  br i1 %i.ci, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.cj = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.011.i.i.i.i15.i
  store i32 %.val.i.i.i.i.i17.i, ptr %i.cj, align 4, !tbaa !58
  %.not7.i.i.i = icmp eq i64 %.0912.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i, !llvm.loop !309

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.011.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.ck = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i18.i
  store i32 %.sroa.03.0.copyload.i.i10.i, ptr %i.ck, align 4, !tbaa !58
  %i.cl = icmp sgt i64 %i.bi, 4
  br i1 %i.cl, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !311

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2445 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02544 = phi i64 [ %i.cn, %bb.b ], [ %2, %.lr.ph ]
  %i.cm = phi i64 [ %i.dc, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cn = add nsw i64 %.02544, -1                 ; 3 uses
  %i.co = lshr i64 %i.cm, 1
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %storemerge2445, i64 -4 ; 3 uses
  %.val.i.i.i = load i32, ptr %i.f, align 4, !tbaa !26 ; 5 uses
  %.val1.i.i.i = load i32, ptr %i.cp, align 4, !tbaa !26 ; 5 uses
  %i.cr = icmp ult i32 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i32, ptr %i.cq, align 4, !tbaa !26 ; 6 uses
  br i1 %i.cr, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph46
  %i.cs = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.fr27, align 4, !tbaa !58
  store i32 %.val1.i.i.i, ptr %.fr27, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %i.cp, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.ct = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  %.sroa.0.0.copyload.i.i30.i.i = load i32, ptr %.fr27, align 4, !tbaa !58 ; 2 uses
  br i1 %i.ct, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.val1.i27.i.i, ptr %.fr27, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i30.i.i, ptr %i.cq, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %.val.i.i.i, ptr %.fr27, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i30.i.i, ptr %i.f, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph46
  %i.cu = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i.i34.i.i = load i32, ptr %.fr27, align 4, !tbaa !58
  store i32 %.val.i.i.i, ptr %.fr27, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i34.i.i, ptr %i.f, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.cv = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  %.sroa.0.0.copyload.i.i37.i.i = load i32, ptr %.fr27, align 4, !tbaa !58 ; 2 uses
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %.val1.i27.i.i, ptr %.fr27, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i37.i.i, ptr %i.cq, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store i32 %.val1.i.i.i, ptr %.fr27, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i37.i.i, ptr %i.cp, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cx, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2445, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %.fr27, align 4, !tbaa !26 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.cx, %bb.t ] ; 8 uses
  %.val.i.i14.i = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !26 ; 2 uses
  %i.cw = icmp ult i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cw, label %bb.t, label %.preheader.i.i, !llvm.loop !312

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %.val1.i9.i.i = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !26 ; 2 uses
  %i.cy = icmp ult i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.cy, label %.preheader.i.i, label %bb.u, !llvm.loop !313

bb.u:                                             ; preds = %.preheader.i.i
  %i.cz = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cz, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEET_SF_SF_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store i32 %.val1.i9.i.i, ptr %.sroa.012.1.i.i, align 4, !tbaa !58
  store i32 %.val.i.i14.i, ptr %.sroa.0.1.i.i, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !314

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEET_SF_SF_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2445, i64 noundef %i.cn)
  %i.da = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.db = sub i64 %i.da, %i.a                     ; 2 uses
  %i.dc = ashr exact i64 %i.db, 2                 ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, 16
  br i1 %i.dd, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !307

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEET_SF_SF_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(360) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !136    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
  unreachable

_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 360                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 25620477880152155)
  %i.l = select i1 %i.j, i64 25620477880152155, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 360
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN6openzl10visualizer5CodecC2EOS1_(ptr noundef nonnull align 8 dereferenceable(360) %i.q, ptr noundef nonnull align 8 dereferenceable(360) %2) #25
  %i.r = tail call noundef ptr @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 360
  %i.t = tail call noundef ptr @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.s, ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i16 = icmp eq ptr %i.c, null
  br i1 %.not.i16, label %_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !209
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.x) #26
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !136
  store ptr %i.t, ptr %i.a, align 8, !tbaa !149
  %i.y = getelementptr inbounds nuw [360 x i8], ptr %i.p, i64 %i.l
  store ptr %i.y, ptr %i.u, align 8, !tbaa !209
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl10visualizer5CodecC2EOS1_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !147
  %i.b = load ptr, ptr %1, align 8, !tbaa !98     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !148  ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !98
  %i.i = load i64, ptr %i.c, align 8, !tbaa !99
  store i64 %i.i, ptr %i.a, align 8, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !148
  store ptr %i.c, ptr %1, align 8, !tbaa !98
  store i64 0, ptr %i.j, align 8, !tbaa !148
  store i8 0, ptr %i.c, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !147
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !98   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !148  ; 2 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.r, ptr %i.o, align 8, !tbaa !98
  %i.y = load i64, ptr %i.s, align 8, !tbaa !99
  store i64 %i.y, ptr %i.q, align 8, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !148
  store ptr %i.s, ptr %i.p, align 8, !tbaa !98
  store i64 0, ptr %i.z, align 8, !tbaa !148
  store i8 0, ptr %i.s, align 8, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ac, ptr noundef nonnull align 8 dereferenceable(200) %i.ad, i64 48, i1 false), !tbaa.struct !210
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !85
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !211
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !211
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !85
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !85
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !212
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !85
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !85
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !213
  store ptr %i.av, ptr %i.at, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !214 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !214
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !215 ; 2 uses
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !215
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !216 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !217
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !218
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !218
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !220
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !221
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !214
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9
  store ptr %i.bk, ptr %i.aw, align 8, !tbaa !214
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !221
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !221
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9
  %i.bp = phi ptr [ %i.bk, %bb.d ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9 ]
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %_ZN6openzl11LocalParamsC2EOS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !58
  %i.bs = sext i32 %i.br to i64
  %i.bt = urem i64 %i.bs, %i.bb
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bt
end_hunk_0
