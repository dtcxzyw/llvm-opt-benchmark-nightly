Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_static_vector_test?download=true
inline.NumInlined: 305
inline.NumDeleted: 178
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5boost9container13static_vectorIiLm10EvEC2ESt16initializer_listIiE:bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #11
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i: ; preds = %bb.a
  %.not.i.i.i = icmp ne i64 %2, 0
  %i.c = icmp ne ptr %1, null
  %or.cond.i = select i1 %.not.i.i.i, i1 %i.c, i1 false, !prof !13
  br i1 %or.cond.i, label %bb.c, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2ESt16initializer_listIiERKS4_.exit, !prof !13

bb.c:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i
  %i.d = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %0, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2ESt16initializer_listIiERKS4_.exit

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2ESt16initializer_listIiERKS4_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat($_ZN5boost9container13static_vectorIiLm10EvEC5ERKS2_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.b, ptr %i.c, align 8, !tbaa !20
  %i.d = icmp ugt i64 %i.b, 10
  br i1 %i.d, label %bb.b, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #11
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2ERKS5_.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i
  %i.e = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %0, ptr nonnull align 8 dereferenceable(48) %1, i64 %i.e, i1 false)
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2ERKS5_.exit

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2ERKS5_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_RKNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(40) %2) unnamed_addr #1 comdat($_ZN5boost9container13static_vectorIiLm10EvEC5ERKS2_RKNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.b, ptr %i.c, align 8, !tbaa !20
  %i.d = icmp ugt i64 %i.b, 10
  br i1 %i.d, label %bb.b, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #11
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2ERKS5_.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i
  %i.e = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %0, ptr nonnull align 8 dereferenceable(48) %1, i64 %i.e, i1 false)
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2ERKS5_.exit

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2ERKS5_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container13static_vectorIiLm10EvEC2EOS2_RKNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(40) %2) unnamed_addr #0 comdat($_ZN5boost9container13static_vectorIiLm10EvEC5EOS2_RKNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !20
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2EOS5_.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %i.c, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %0, ptr nonnull align 8 dereferenceable(48) %1, i64 %i.d, i1 false)
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2EOS5_.exit

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2EOS5_.exit: ; preds = %bb.a, %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container13static_vectorIiLm10EvEC2ERKNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(40) %1) unnamed_addr #0 comdat($_ZN5boost9container13static_vectorIiLm10EvEC5ERKNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEE) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container13static_vectorIiLm10EvEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat($_ZN5boost9container13static_vectorIiLm10EvEC5EOS2_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !20
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2EOS5_.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %i.c, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %0, ptr nonnull align 8 dereferenceable(48) %1, i64 %i.d, i1 false)
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2EOS5_.exit

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEC2EOS5_.exit: ; preds = %bb.a, %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !20
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost9container13static_vectorIiLm10EvEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, %0
  br i1 %.not.i, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEaSERKS5_.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 5 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.f = shl i64 %i.b, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %0, ptr nonnull align 8 dereferenceable(48) %1, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  br label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i

_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %0, %bb.c ], [ %i.h, %bb.d ]
  %.0.i.i.i.i.i = phi ptr [ %1, %bb.c ], [ %i.g, %bb.d ]
  %i.i = sub nuw i64 %i.d, %i.b
  %i.j = shl i64 %i.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull align 1 %.0.i.i.i.i.i, i64 %i.j, i1 false)
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE16priv_copy_assignIS4_EEvRKNS1_IiT_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELi0EEE5valueENSB_13enable_if_natEE4typeE.exit.i

bb.e:                                             ; preds = %bb.b
  %.not.i.i17.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i17.i.i.i, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE16priv_copy_assignIS4_EEvRKNS1_IiT_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELi0EEE5valueENSB_13enable_if_natEE4typeE.exit.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.k = shl i64 %i.d, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %0, ptr nonnull align 8 dereferenceable(48) %1, i64 %i.k, i1 false)
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE16priv_copy_assignIS4_EEvRKNS1_IiT_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELi0EEE5valueENSB_13enable_if_natEE4typeE.exit.i

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE16priv_copy_assignIS4_EEvRKNS1_IiT_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELi0EEE5valueENSB_13enable_if_natEE4typeE.exit.i: ; preds = %bb.f, %bb.e, %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i
  store i64 %i.d, ptr %i.a, align 8, !tbaa !20
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEaSERKS5_.exit

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEaSERKS5_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE16priv_copy_assignIS4_EEvRKNS1_IiT_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELi0EEE5valueENSB_13enable_if_natEE4typeE.exit.i
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost9container13static_vectorIiLm10EvEaSESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.idx.i = shl i64 %2, 2                         ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24, !noalias !49 ; 5 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.c ; 3 uses
  %.not22.i.i = icmp eq i64 %2, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.e = ptrtoaddr ptr %0 to i64
  %i.f = ptrtoaddr ptr %1 to i64
  %i.g = and i64 %i.c, 4611686018427387903
  %i.h = add i64 %.idx.i, -4
  %i.i = lshr exact i64 %i.h, 2
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.i) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.j, 8
  %i.k = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.l = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %i.m = and i64 %i.l, 7                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 8, i64 %i.m
  %n.vec = sub nsw i64 %i.l, %i.o                 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.p  ; 2 uses
  %next.gep9 = getelementptr i8, ptr %0, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !21
  %wide.load10 = load <4 x i32>, ptr %i.q, align 4, !tbaa !21
  %i.r = getelementptr i8, ptr %next.gep9, i64 16
  store <4 x i32> %wide.load, ptr %next.gep9, align 8, !tbaa !21
  store <4 x i32> %wide.load10, ptr %i.r, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %.lr.ph.i.i.preheader12.loopexit, label %vector.body, !llvm.loop !43

.lr.ph.i.i.preheader12.loopexit:                  ; preds = %vector.body
  %3 = shl i64 %n.vec, 2                          ; 2 uses
  %4 = getelementptr i8, ptr %1, i64 %3
  %5 = getelementptr i8, ptr %0, i64 %3
  br label %.lr.ph.i.i.preheader12

.lr.ph.i.i.preheader12:                           ; preds = %.lr.ph.i.i.preheader12.loopexit, %.lr.ph.i.i.preheader
  %.024.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %4, %.lr.ph.i.i.preheader12.loopexit ]
  %.sroa.014.023.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %5, %.lr.ph.i.i.preheader12.loopexit ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader12, %bb.b
  %.024.i.i = phi ptr [ %i.v, %bb.b ], [ %.024.i.i.ph, %.lr.ph.i.i.preheader12 ] ; 5 uses
  %.sroa.014.023.i.i = phi ptr [ %i.u, %bb.b ], [ %.sroa.014.023.i.i.ph, %.lr.ph.i.i.preheader12 ] ; 3 uses
  %.not18.i.i = icmp eq ptr %.sroa.014.023.i.i, %i.d
  br i1 %.not18.i.i, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.t = load i32, ptr %.024.i.i, align 4, !tbaa !21
  store i32 %i.t, ptr %.sroa.014.023.i.i, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.a
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !44

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %.sroa.014.0.lcssa.i.i = phi ptr [ %0, %bb.a ], [ %i.u, %bb.b ]
  %i.w = ptrtoint ptr %i.d to i64
  %i.x = ptrtoint ptr %.sroa.014.0.lcssa.i.i to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = sub i64 %i.c, %i.z
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEaSESt16initializer_listIiE.exit

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ab = ptrtoint ptr %i.a to i64
  %i.ac = ptrtoint ptr %.024.i.i to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 2 uses
  %i.af = sub i64 10, %i.c
  %.not.i.i.i.i = icmp ugt i64 %i.ae, %i.af
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !prof !16

bb.c:                                             ; preds = %.critedge.i.i
  %.not19.i.i = icmp eq ptr %.024.i.i, null
  br i1 %.not19.i.i, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertIPKiEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS2_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i.i, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.d, ptr nonnull align 1 %.024.i.i, i64 %i.ad, i1 false), !noalias !52
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !20, !noalias !52
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertIPKiEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS2_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i.i

bb.e:                                             ; preds = %.critedge.i.i
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #11, !noalias !52
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertIPKiEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS2_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ag = phi i64 [ %i.c, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.ah = add i64 %i.ag, %i.ae
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEaSESt16initializer_listIiE.exit

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEaSESt16initializer_listIiE.exit: ; preds = %._crit_edge.i.i, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertIPKiEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS2_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i.i
  %storemerge.i.i = phi i64 [ %i.ah, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertIPKiEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS2_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i.i ], [ %i.aa, %._crit_edge.i.i ]
  store i64 %storemerge.i.i, ptr %i.b, align 8, !tbaa !20
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost9container13static_vectorIiLm10EvEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, %0
  br i1 %.not.i, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEaSEOS5_.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 5 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container18move_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.f = shl i64 %i.b, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %0, ptr nonnull align 8 dereferenceable(48) %1, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  br label %_ZN5boost9container18move_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i

_ZN5boost9container18move_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %0, %bb.c ], [ %i.h, %bb.d ]
  %.0.i.i.i.i.i = phi ptr [ %1, %bb.c ], [ %i.g, %bb.d ]
  %i.i = sub nuw i64 %i.d, %i.b
  %i.j = shl i64 %i.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull align 1 %.0.i.i.i.i.i, i64 %i.j, i1 false)
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE16priv_move_assignIS4_EEvONS1_IiT_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELi0EEE5valueENSA_13enable_if_natEE4typeE.exit.i

bb.e:                                             ; preds = %bb.b
  %.not.i.i17.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i17.i.i.i, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE16priv_move_assignIS4_EEvONS1_IiT_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELi0EEE5valueENSA_13enable_if_natEE4typeE.exit.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.k = shl i64 %i.d, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %0, ptr nonnull align 8 dereferenceable(48) %1, i64 %i.k, i1 false)
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE16priv_move_assignIS4_EEvONS1_IiT_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELi0EEE5valueENSA_13enable_if_natEE4typeE.exit.i

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE16priv_move_assignIS4_EEvONS1_IiT_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELi0EEE5valueENSA_13enable_if_natEE4typeE.exit.i: ; preds = %bb.f, %bb.e, %_ZN5boost9container18move_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i
  store i64 %i.d, ptr %i.a, align 8, !tbaa !20
  store i64 0, ptr %i.c, align 8, !tbaa !24
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEaSEOS5_.exit

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEaSEOS5_.exit: ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE16priv_move_assignIS4_EEvONS1_IiT_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELi0EEE5valueENSA_13enable_if_natEE4typeE.exit.i, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZN5boost9container13static_vectorIiLm10EvE8capacityEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 10
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZN5boost9container13static_vectorIiLm10EvE8max_sizeEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @main() local_unnamed_addr #2 {
bb.a:
  ret i32 0
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorI5emptyLm2ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #11
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container15throw_bad_allocEv() local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str, ptr %i.b, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container9bad_allocE, i64 16), ptr %i.a, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container9bad_allocE, ptr nonnull @_ZNSt9exceptionD2Ev) #11
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container9bad_allocD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost9container9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.1, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #11
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
end_hunk_0
