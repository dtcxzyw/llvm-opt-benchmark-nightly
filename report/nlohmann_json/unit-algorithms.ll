Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-algorithms?download=true
inline.NumInlined: 3920
inline.NumDeleted: 1179
loop-unroll.NumCompletelyUnrolled: 209
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 211
begin_hunk_0_@_ZSt9__reverseIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEEvT_SI_St26bidirectional_iterator_tag:bb.a
  store ptr %i.r, ptr %2, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !45
  %i.s = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %i.s, ptr %3, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !45
  %i.t = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) ; 3 uses
  %i.u = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) ; 3 uses
  %i.v = load i8, ptr %i.t, align 8, !tbaa !66
  %i.w = load i8, ptr %i.u, align 8, !tbaa !66
  store i8 %i.w, ptr %i.t, align 8, !tbaa !66
  store i8 %i.v, ptr %i.u, align 8, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = load i64, ptr %i.y, align 8, !tbaa !22
  store i64 %i.z, ptr %i.x, align 8, !tbaa !22
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.y, align 8, !tbaa !22
  %i.aa = load ptr, ptr %0, align 8, !tbaa !40
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !21
  switch i8 %i.ab, label %bb.g [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i
    i8 2, label %bb.f
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i: ; preds = %bb.e
  %.promoted11.i.i = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.ac = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i) #28
  store ptr %i.ac, ptr %i.f, align 8, !tbaa !47
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !48
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.i, align 8, !tbaa !41
  %i.ag = add nsw i64 %i.af, 1
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !41
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, %bb.f, %bb.g
  %i.ah = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.ah, label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEmmEv.exit._crit_edge, label %bb.b, !llvm.loop !895
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3_V28__rotateIN8nlohmann16json_abi_v3_12_06detail9iter_implINS2_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES7_IhSaIhEEvEEEEEET_SJ_SJ_SJ_St26bidirectional_iterator_tag(ptr dead_on_unwind noalias writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::iter_impl") align 8 %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %5 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %6 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %7 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %8 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %9 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %10 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %11 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %12 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %13 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %i.a = tail call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !50
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !50
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %i.c, ptr %4, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !45
  %i.f = load ptr, ptr %2, align 8, !tbaa !40
  store ptr %i.f, ptr %5, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !45
  call void @_ZSt9__reverseIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEEvT_SI_St26bidirectional_iterator_tag(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %5)
  %i.i = load ptr, ptr %2, align 8, !tbaa !40
  store ptr %i.i, ptr %6, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !45
  %i.k = load ptr, ptr %3, align 8, !tbaa !40
  store ptr %i.k, ptr %7, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !45
  call void @_ZSt9__reverseIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEEvT_SI_St26bidirectional_iterator_tag(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %7)
  %i.n = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.n, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit
  %i.u = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br i1 %i.u, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %i.v, ptr %8, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !45
  %i.w = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !21
  switch i8 %i.x, label %bb.i [
    i8 1, label %.lr.ph.i.i
    i8 2, label %bb.h
  ]

.lr.ph.i.i:                                       ; preds = %bb.g
  %.promoted.i.i = load ptr, ptr %i.m, align 8
  %i.y = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.promoted.i.i) #28
  store ptr %i.y, ptr %i.m, align 8, !tbaa !47
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEmmEv.exit

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -16
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !48
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEmmEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !41
  %i.ac = add nsw i64 %i.ab, -1
  store i64 %i.ac, ptr %i.q, align 8, !tbaa !41
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEmmEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEmmEv.exit: ; preds = %.lr.ph.i.i, %bb.h, %bb.i
  store ptr %i.w, ptr %9, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !45
  %i.ad = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %8) ; 3 uses
  %i.ae = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %9) ; 3 uses
  %i.af = load i8, ptr %i.ad, align 8, !tbaa !66
  %i.ag = load i8, ptr %i.ae, align 8, !tbaa !66
  store i8 %i.ag, ptr %i.ad, align 8, !tbaa !66
  store i8 %i.af, ptr %i.ae, align 8, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !22
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !22
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.ai, align 8, !tbaa !22
  %i.ak = load ptr, ptr %1, align 8, !tbaa !40
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !21
  switch i8 %i.al, label %bb.k [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i
    i8 2, label %bb.j
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEmmEv.exit
  %.promoted11.i.i = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.am = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i) #28
  store ptr %i.am, ptr %i.e, align 8, !tbaa !47
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.j:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEmmEv.exit
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !48
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.k:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEmmEv.exit
  %i.ap = load i64, ptr %i.t, align 8, !tbaa !41
  %i.aq = add nsw i64 %i.ap, 1
  store i64 %i.aq, ptr %i.t, align 8, !tbaa !41
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, %bb.j, %bb.k
  %i.ar = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.ar, label %.critedge, label %bb.f, !llvm.loop !896

.critedge:                                        ; preds = %bb.f, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit, %bb.e
  %i.as = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.at = load ptr, ptr %2, align 8, !tbaa !40
  store ptr %i.at, ptr %10, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !45
  %i.av = load ptr, ptr %3, align 8, !tbaa !40
  store ptr %i.av, ptr %11, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !45
  call void @_ZSt9__reverseIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEEvT_SI_St26bidirectional_iterator_tag(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %10, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !50
  br label %bb.n

bb.m:                                             ; preds = %.critedge
  %i.ax = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %i.ax, ptr %12, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !45
  %i.az = load ptr, ptr %2, align 8, !tbaa !40
  store ptr %i.az, ptr %13, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !45
  call void @_ZSt9__reverseIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEEvT_SI_St26bidirectional_iterator_tag(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %12, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !50
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.45", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !21
  switch i8 %i.b, label %bb.g [
    i8 1, label %bb.b
    i8 2, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 32) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.156, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !40
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iterator6createIPNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SJ_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::invalid_iterator") align 8 %i.c, i32 noundef 209, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.c, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #30
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #26
  br label %bb.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds [16 x i8], ptr %i.k, i64 %1
  store ptr %i.l, ptr %i.j, align 8, !tbaa !48
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41
  %i.o = add nsw i64 %i.n, %1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  ret ptr %0

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SL_T0_T1_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 6 uses
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %5 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 6 uses
  %6 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %7 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 6 uses
  %8 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 6 uses
  %9 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %10 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %12 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %13 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %14 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %15 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %16 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %17 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 6 uses
  %18 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %19 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %20 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %21 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %i.a = tail call noundef i64 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEmiERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = icmp sgt i64 %i.a, 16
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.r = icmp eq i64 %2, 0
  br i1 %i.r, label %._crit_edge, label %.lr.ph10

bb.b:                                             ; preds = %.lr.ph10
  %i.s = icmp eq i64 %i.aa, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph10, !llvm.loop !897

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %i.t = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.v = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %i.t, ptr %12, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store ptr %i.v, ptr %13, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store ptr %i.v, ptr %14, align 8, !tbaa !40
  call void @_ZSt13__heap_selectIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SL_SL_T0_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %12, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %13, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %14)
  store ptr %i.t, ptr %15, align 8, !tbaa !40
  store ptr %i.v, ptr %16, align 8, !tbaa !40
  call void @_ZSt11__sort_heapIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SL_RT0_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %15, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %16, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %.loopexit

.lr.ph10:                                         ; preds = %.lr.ph, %bb.b
  %.089 = phi i64 [ %i.aa, %bb.b ], [ %2, %.lr.ph ]
  %i.aa = add nsw i64 %.089, -1                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.ab = load ptr, ptr %0, align 8, !tbaa !40
  store ptr %i.ab, ptr %18, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !45
  %i.ac = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %i.ac, ptr %19, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !908
  %i.ad = call noundef i64 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEmiERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %18), !noalias !908
  %i.ae = sdiv i64 %i.ad, 2
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.af = load ptr, ptr %18, align 8, !tbaa !40, !noalias !910
  store ptr %i.af, ptr %3, align 8, !tbaa !40, !alias.scope !909, !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !45, !noalias !908
  %i.ag = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ae), !noalias !908 ; 0 uses
  %i.ah = load ptr, ptr %18, align 8, !tbaa !40, !noalias !908 ; 2 uses
  store ptr %i.ah, ptr %4, align 8, !tbaa !40, !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !45, !noalias !908
  store ptr %i.ah, ptr %5, align 8, !tbaa !40, !alias.scope !911, !noalias !908
end_hunk_0
