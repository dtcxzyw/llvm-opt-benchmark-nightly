Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE6insertEOSt4pairIS2_S2_E:bb.a
  %i.w = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.v
  %i.x = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.v
  %i.y = shl i64 %i.t, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.x, i64 %i.y, i1 false), !noalias !644
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE13insert_uniqueEOS5_.exit

bb.f:                                             ; preds = %.loopexit.i
  call void @_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.j, i64 noundef 1, ptr nonnull align 1 dereferenceable(2) %2), !noalias !641
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !219, !noalias !641
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE13insert_uniqueEOS5_.exit

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE13insert_uniqueEOS5_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.j, %bb.e ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  store ptr %i.z, ptr %0, align 8, !tbaa !231, !alias.scope !641
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !641
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE6insertENS0_12vec_iteratorIPSt4pairIS2_S2_ELb1EEERKS8_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !219    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !218, !noalias !657
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !223, !noalias !657 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.c, %i.e
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !224, !noalias !657 ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.e ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %i.a
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.h = add i64 %i.e, 1
  store i64 %i.h, ptr %i.d, align 8, !tbaa !223, !noalias !657
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJRKS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.j, %i.i
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.m = add i64 %i.e, 1
  store i64 %i.m, ptr %i.d, align 8, !tbaa !223, !noalias !657
  %i.n = add nsw i64 %i.l, -1                     ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJRKS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i, label %bb.e, !prof !225

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -2
  %i.p = sub nsw i64 1, %i.l                      ; 2 uses
  %i.q = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.p
  %i.r = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p
  %i.s = shl i64 %i.n, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.r, i64 %i.s, i1 false), !noalias !657
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJRKS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i

_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJRKS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  store ptr %i.a, ptr %0, align 8, !tbaa !231, !alias.scope !657
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE13insert_uniqueENS0_12vec_iteratorIPS5_Lb1EEERKS5_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJRKS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef 1, ptr nonnull align 1 dereferenceable(2) %3)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE13insert_uniqueENS0_12vec_iteratorIPS5_Lb1EEERKS5_.exit

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE13insert_uniqueENS0_12vec_iteratorIPS5_Lb1EEERKS5_.exit: ; preds = %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJRKS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE6insertENS0_12vec_iteratorIPSt4pairIS2_S2_ELb1EEEOS8_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !219    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !218, !noalias !670
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !223, !noalias !670 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.c, %i.e
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !224, !noalias !670 ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.e ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %i.a
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.h = add i64 %i.e, 1
  store i64 %i.h, ptr %i.d, align 8, !tbaa !223, !noalias !670
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.j, %i.i
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.m = add i64 %i.e, 1
  store i64 %i.m, ptr %i.d, align 8, !tbaa !223, !noalias !670
  %i.n = add nsw i64 %i.l, -1                     ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i, label %bb.e, !prof !225

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -2
  %i.p = sub nsw i64 1, %i.l                      ; 2 uses
  %i.q = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.p
  %i.r = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p
  %i.s = shl i64 %i.n, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.r, i64 %i.s, i1 false), !noalias !670
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i

_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  store ptr %i.a, ptr %0, align 8, !tbaa !231, !alias.scope !670
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE13insert_uniqueENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef 1, ptr nonnull align 1 dereferenceable(2) %3)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE13insert_uniqueENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE13insert_uniqueENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit: ; preds = %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS4_EEJS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE6insertESt16initializer_listISt4pairIS2_S2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE19insert_unique_rangeIPKS5_EEvT_SE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE19insert_unique_rangeIPKS5_EEvT_SE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = load ptr, ptr %0, align 8, !tbaa !224, !noalias !681 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !223, !noalias !681 ; 4 uses
  %i.d = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.c ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 1                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !218, !noalias !684
  %i.k = sub i64 %i.j, %i.c
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  br i1 %.not.i.i, label %bb.e, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.c, !prof !225

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ne ptr %i.a, null
  %i.m = icmp ne ptr %1, null
  %or.cond.i.i.i.i.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.d, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %1, i64 %i.g, i1 false), !noalias !684
  %.pre = load i64, ptr %i.b, align 8, !tbaa !221, !noalias !684
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.n = phi i64 [ %.pre, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  %i.o = add i64 %i.n, %i.h                       ; 2 uses
  store i64 %i.o, ptr %i.b, align 8, !tbaa !221, !noalias !684
  store ptr %i.d, ptr %4, align 8, !tbaa !231, !alias.scope !684
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE6insertIPKS4_EENS0_12vec_iteratorIPS4_Lb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESM_E4typeE.exit

bb.e:                                             ; preds = %bb.a
  call void @_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEENS0_12vec_iteratorIPS4_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.h, ptr %1)
  %.pre29 = load ptr, ptr %4, align 8, !tbaa !219
  %.pre30 = load i64, ptr %i.b, align 8, !tbaa !223, !noalias !685
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE6insertIPKS4_EENS0_12vec_iteratorIPS4_Lb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESM_E4typeE.exit

_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE6insertIPKS4_EENS0_12vec_iteratorIPS4_Lb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESM_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.e
  %i.p = phi i64 [ %i.o, %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre30, %bb.e ] ; 4 uses
  %i.q = phi ptr [ %i.d, %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre29, %bb.e ] ; 8 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !224, !noalias !685 ; 6 uses
  %i.s = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.p ; 3 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairI5emptyS5_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEET_SG_SG_T0_SH_T1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE6insertIPKS4_EENS0_12vec_iteratorIPS4_Lb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESM_E4typeE.exit
  %i.u = ptrtoaddr ptr %i.r to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = shl nsw i64 %i.p, 1
  %i.x = add i64 %i.w, %i.u
  %i.y = add i64 %i.x, -2
  %i.z = sub i64 %i.y, %i.v
  %i.aa = and i64 %i.z, -2
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa
  %scevgep = getelementptr i8, ptr %i.ab, i64 2
  br label %_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairI5emptyS5_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEET_SG_SG_T0_SH_T1_.exit

_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairI5emptyS5_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEET_SG_SG_T0_SH_T1_.exit: ; preds = %.lr.ph.preheader.i, %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE6insertIPKS4_EENS0_12vec_iteratorIPS4_Lb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESM_E4typeE.exit
  %storemerge.i = phi ptr [ %i.q, %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE6insertIPKS4_EENS0_12vec_iteratorIPS4_Lb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESM_E4typeE.exit ], [ %scevgep, %.lr.ph.preheader.i ] ; 3 uses
  %.not = icmp eq ptr %storemerge.i, %i.q
  %.not.i11 = icmp eq ptr %storemerge.i, %i.s
  br i1 %.not.i11, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE5eraseENS0_12vec_iteratorIPS4_Lb1EEES8_.exit, label %_ZN5boost9container4moveIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_S8_S9_.exit.i

_ZN5boost9container4moveIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_S8_S9_.exit.i: ; preds = %_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairI5emptyS5_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEET_SG_SG_T0_SH_T1_.exit
  %i.ac = ptrtoint ptr %i.s to i64
  %i.ad = ptrtoint ptr %storemerge.i to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = sub i64 %i.p, %i.af                     ; 2 uses
  store i64 %i.ag, ptr %i.b, align 8, !tbaa !221, !noalias !686
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE5eraseENS0_12vec_iteratorIPS4_Lb1EEES8_.exit

_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE5eraseENS0_12vec_iteratorIPS4_Lb1EEES8_.exit: ; preds = %_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairI5emptyS5_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEET_SG_SG_T0_SH_T1_.exit, %_ZN5boost9container4moveIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_S8_S9_.exit.i
  %i.ah = phi i64 [ %i.p, %_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairI5emptyS5_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEET_SG_SG_T0_SH_T1_.exit ], [ %i.ag, %_ZN5boost9container4moveIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_S8_S9_.exit.i ]
  br i1 %.not, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairI5emptyS5_EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES6_NS1_9select1stIS5_EEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE5eraseENS0_12vec_iteratorIPS4_Lb1EEES8_.exit
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ah ; 2 uses
  %i.aj = icmp eq ptr %i.r, %i.q
  %i.ak = icmp eq ptr %i.q, %i.ai
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairI5emptyS5_EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES6_NS1_9select1stIS5_EEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.al = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.am = ptrtoint ptr %i.r to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = sub i64 %i.ap, %i.al
  %i.ar = ashr exact i64 %i.aq, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_NS0_9iter_sizeISH_E4typeESK_T0_RT1_(ptr noundef nonnull %i.r, i64 noundef %i.ao, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairI5emptyS5_EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES6_NS1_9select1stIS5_EEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairI5emptyS5_EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES6_NS1_9select1stIS5_EEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.f, %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE5eraseENS0_12vec_iteratorIPS4_Lb1EEES8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE6insertENS0_22ordered_unique_range_tESt16initializer_listISt4pairIS2_S2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !223  ; 3 uses
  tail call void @_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE24priv_set_difference_backIPKS4_NS0_3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS9_9select1stIS3_EEEEEEvT_SG_T0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
  %i.d = load i64, ptr %i.b, align 8, !tbaa !223  ; 2 uses
  %.idx8.i.i.i = shl nuw nsw i64 %i.d, 1          ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.c, 1           ; 2 uses
  %i.e = icmp eq i64 %i.c, 0
  %i.f = icmp samesign eq i64 %.idx.i.i.i, %.idx8.i.i.i
  %or.cond.i.i.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE19insert_unique_rangeIPKS5_EEvNS0_22ordered_unique_range_tET_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !224    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx8.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !218
  %i.k = sub i64 %i.j, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.h, ptr %3, align 8, !tbaa !245
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !246
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.k, ptr %i.m, align 8, !tbaa !247
  %gepdiff.i.i.i = sub nsw i64 %.idx8.i.i.i, %.idx.i.i.i
  %i.n = ashr exact i64 %gepdiff.i.i.i, 1
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_NS0_9iter_sizeISH_E4typeESK_T0_RT1_(ptr noundef nonnull %i.g, i64 noundef %i.c, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE19insert_unique_rangeIPKS5_EEvNS0_22ordered_unique_range_tET_SF_.exit

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE19insert_unique_rangeIPKS5_EEvNS0_22ordered_unique_range_tET_SF_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE5eraseENS0_12vec_iteratorIPSt4pairIS2_S2_ELb1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !219    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.b = load ptr, ptr %1, align 8, !tbaa !224, !noalias !693
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !223, !noalias !693 ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.g = icmp ne ptr %i.f, %i.e
  %i.h = icmp ne ptr %i.a, null
  %or.cond.i.i.i.i = and i1 %i.h, %i.g
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE5eraseENS0_12vec_iteratorIPS5_Lb1EEE.exit, !prof !220

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.f, i64 %i.k, i1 false), !noalias !693
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !223, !noalias !693
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE5eraseENS0_12vec_iteratorIPS5_Lb1EEE.exit

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE5eraseENS0_12vec_iteratorIPS5_Lb1EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %.pre.i.i, %bb.b ], [ %i.d, %bb.a ]
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !223, !noalias !693
  store ptr %i.a, ptr %0, align 8, !tbaa !231, !alias.scope !693
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE5eraseERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret i64 0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE5eraseENS0_12vec_iteratorIPSt4pairIS2_S2_ELb1EEESA_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !219    ; 6 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !219    ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %.not.i.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !224, !noalias !700
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !223, !noalias !700 ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = icmp ne ptr %i.b, %i.f
  %i.h = icmp ne ptr %i.a, null
  %or.cond.i.i.i.i = and i1 %i.h, %i.g
  %i.i = icmp ne ptr %i.b, null
  %spec.select.i.i.i.i = and i1 %i.i, %or.cond.i.i.i.i
  %i.j = ptrtoint ptr %i.f to i64                 ; 2 uses
  br i1 %spec.select.i.i.i.i, label %bb.c, label %_ZN5boost9container4moveIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_S8_S9_.exit.i.i, !prof !220

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.b, i64 %i.l, i1 false), !noalias !700
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.l
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !221, !noalias !700
  br label %_ZN5boost9container4moveIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_S8_S9_.exit.i.i

_ZN5boost9container4moveIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_S8_S9_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ %.pre.i.i, %bb.c ], [ %i.e, %bb.b ]
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.a, %bb.b ]
  %i.o = ptrtoint ptr %.0.i.i.i.i to i64
  %i.p = sub i64 %i.j, %i.o
  %i.q = ashr exact i64 %i.p, 1
  %i.r = sub i64 %i.n, %i.q
  store i64 %i.r, ptr %i.d, align 8, !tbaa !221, !noalias !700
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESD_.exit

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESD_.exit: ; preds = %bb.a, %_ZN5boost9container4moveIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_S8_S9_.exit.i.i
  store ptr %i.a, ptr %0, align 8, !tbaa !231, !alias.scope !700
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE4swapERSA_.exit, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !219
  %i.c = load ptr, ptr %1, align 8, !tbaa !219
  store ptr %i.c, ptr %0, align 8, !tbaa !219
  store ptr %i.b, ptr %1, align 8, !tbaa !219
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !226
  %i.g = load i64, ptr %i.e, align 8, !tbaa !226
  store i64 %i.g, ptr %i.d, align 8, !tbaa !226
  store i64 %i.f, ptr %i.e, align 8, !tbaa !226
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !226
  %i.k = load i64, ptr %i.i, align 8, !tbaa !226
  store i64 %i.k, ptr %i.h, align 8, !tbaa !226
  store i64 %i.j, ptr %i.i, align 8, !tbaa !226
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE4swapERSA_.exit
end_hunk_0
