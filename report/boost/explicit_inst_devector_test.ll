Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_devector_test?download=true
inline.NumInlined: 2703
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6assignINS0_17constant_iteratorIS3_EEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE:bb.a
  %.06.i.i = phi ptr [ %i.dv, %.lr.ph.i24.i ], [ %i.ds, %.lr.ph.i24.preheader.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i, align 4, !tbaa !65
  %i.dt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.du = add i32 %i.dt, -1
  store i32 %i.du, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dv = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4 ; 2 uses
  %.not.i25.i = icmp eq ptr %i.dv, %i.dq
  br i1 %.not.i25.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i, label %.lr.ph.i24.i, !llvm.loop !2

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i: ; preds = %.lr.ph.i24.i, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i
  %.not.i26.i = icmp eq ptr %i.dk, null
  br i1 %.not.i26.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE23allocate_and_copy_rangeINS0_17constant_iteratorIS3_EEEEvT_SC_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i
  %i.dw = load i16, ptr %i.b, align 4, !tbaa !70
  %i.dx = zext i16 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dy) #19
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE23allocate_and_copy_rangeINS0_17constant_iteratorIS3_EEEEvT_SC_.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE23allocate_and_copy_rangeINS0_17constant_iteratorIS3_EEEEvT_SC_.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i, %bb.e
  %i.dz = trunc nuw i64 %i.a to i16               ; 2 uses
  store i16 %i.dz, ptr %i.b, align 4, !tbaa !74
  store ptr %i.dj, ptr %0, align 8, !tbaa !62
  store i16 0, ptr %i.dl, align 8, !tbaa !63
  store i16 %i.dz, ptr %i.dn, align 2, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE23allocate_and_copy_rangeINS0_17constant_iteratorIS3_EEEEvT_SC_.exit, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16overwrite_bufferINS0_17constant_iteratorIS3_EEEEvT_SC_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6assignESt16initializer_listIS3_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6assignIPKS3_EEvT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %i.a, ptr noundef null)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::new_allocator.4") align 1 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !63
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE3endEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !69
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !69
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %0, align 8, !tbaa !77
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !69
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !63
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %0, align 8, !tbaa !77
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !63
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6cbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !63
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE4cendEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !69
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE7crbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !69
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5crendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !63
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !69
  %i.e = icmp eq i16 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  ret i64 2305843009213693951
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i16, ptr %i.a, align 4, !tbaa !70   ; 3 uses
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = udiv i16 %i.b, 10
  %1 = sub nuw i16 %i.b, %i.c
  %2 = zext i16 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %2, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE19front_free_capacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !63
  %i.c = zext i16 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE18back_free_capacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i16, ptr %i.a, align 4, !tbaa !70
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !69
  %i.f = zext i16 %i.e to i64
  %i.g = sub nsw i64 %i.c, %i.f
  ret i64 %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !69   ; 2 uses
  %i.c = zext i16 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !63
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = sub nsw i64 %i.c, %i.f                   ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  %i.i = sub i64 %1, %i.g                         ; 5 uses
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i16, ptr %i.j, align 4, !tbaa !70
  %i.l = zext i16 %i.k to i64
  %i.m = sub nsw i64 %i.l, %i.f
  %.not.i.i = icmp ugt i64 %1, %i.m
  br i1 %.not.i.i, label %bb.e, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !62, !nonnull !80, !noundef !80
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.c ; 5 uses
  %i.p = add i64 %1, %i.f
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.q = sub i64 %i.c, %i.p
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i64 %i.i, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.new
  %.06.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.ah, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.3, %bb.c ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.06.i.i.i.i
  store i32 0, ptr %i.s, align 4, !tbaa !65
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.06.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !65
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.06.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 0, ptr %i.aa, align 4, !tbaa !65
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.06.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !65
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ah = add nuw i64 %.06.i.i.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.unr-lcssa, label %bb.c, !llvm.loop !5

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJEEEvPS3_mDpOT_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.unr-lcssa, %.lr.ph.i.i.i.i
  %.06.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.06.i.i.i.i.epil = phi i64 [ %.06.i.i.i.i.epil.init, %.epil.preheader ], [ %i.al, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.06.i.i.i.i.epil
  store i32 0, ptr %i.ai, align 4, !tbaa !65
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.al = add nuw i64 %.06.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJEEEvPS3_mDpOT_.exit.i.i, label %bb.d, !llvm.loop !132

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJEEEvPS3_mDpOT_.exit.i.i: ; preds = %bb.d, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.unr-lcssa
  %i.am = trunc i64 %i.i to i16
  %i.an = add i16 %i.b, %i.am
  store i16 %i.an, ptr %i.a, align 2, !tbaa !73
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11resize_backEm.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.i)
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11resize_backEm.exit

bb.f:                                             ; preds = %bb.a
  %i.ao = add i64 %i.i, %i.c                      ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.c
  %.not5.i.i.i = icmp eq i64 %1, %i.g
  br i1 %.not5.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.06.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %i.ar, %.lr.ph.i.preheader.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i, align 4, !tbaa !65
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %i.aq
  br i1 %.not.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.f
  %i.av = trunc i64 %i.ao to i16
  store i16 %i.av, ptr %i.a, align 2, !tbaa !73
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11resize_backEm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11resize_backEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJEEEvPS3_mDpOT_.exit.i.i, %bb.e, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11resize_backEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !69   ; 2 uses
  %i.c = zext i16 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !63
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = sub nsw i64 %i.c, %i.f                   ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  %i.i = sub i64 %1, %i.g                         ; 5 uses
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i16, ptr %i.j, align 4, !tbaa !70
  %i.l = zext i16 %i.k to i64
  %i.m = sub nsw i64 %i.l, %i.f
  %.not.i = icmp ugt i64 %1, %i.m
  br i1 %.not.i, label %bb.e, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !62, !nonnull !80, !noundef !80
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.c ; 5 uses
  %i.p = add i64 %1, %i.f
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.q = sub i64 %i.c, %i.p
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %i.i, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.new
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %i.ah, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.c ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.06.i.i.i
  store i32 0, ptr %i.s, align 4, !tbaa !65
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.u = add i32 %i.t, 1
end_hunk_0
begin_hunk_1_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12resize_frontEmNS0_14default_init_tE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 0, ptr %i.y, align 4, !tbaa !65
  %i.z = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.07.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !65
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.af = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKNS0_14default_init_tEEEEvPS3_mDpOT_.exit.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKNS0_14default_init_tEEEEvPS3_mDpOT_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKNS0_14default_init_tEEEEvPS3_mDpOT_.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKNS0_14default_init_tEEEEvPS3_mDpOT_.exit.i.unr-lcssa, %.lr.ph.i.i.preheader.i
  %.07.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader.i ], [ %i.af, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKNS0_14default_init_tEEEEvPS3_mDpOT_.exit.i.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.aj, %.lr.ph.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.07.i.i.i.epil
  store i32 0, ptr %i.ag, align 4, !tbaa !65
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aj = add nuw i64 %.07.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKNS0_14default_init_tEEEEvPS3_mDpOT_.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !137

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKNS0_14default_init_tEEEEvPS3_mDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.epil, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKNS0_14default_init_tEEEEvPS3_mDpOT_.exit.i.unr-lcssa
  %i.ak = trunc i64 %i.i to i16
  %i.al = sub i16 %i.e, %i.ak
  store i16 %i.al, ptr %i.d, align 8, !tbaa !81
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17resize_front_implIJRKNS0_14default_init_tEEEEvmDpOT_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22resize_front_slow_pathIJRKNS0_14default_init_tEEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost9container12default_initE)
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17resize_front_implIJRKNS0_14default_init_tEEEEvmDpOT_.exit

bb.d:                                             ; preds = %bb.a
  %i.am = sub nuw i64 %i.g, %1
  %i.an = add i64 %i.am, %i.f                     ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.an
  %.not5.i.i = icmp eq i64 %i.g, %1
  br i1 %.not5.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.f
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.06.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %i.aq, %.lr.ph.i.preheader.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i, align 4, !tbaa !65
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.ap
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %i.au = trunc i64 %i.an to i16
  store i16 %i.au, ptr %i.d, align 8, !tbaa !81
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17resize_front_implIJRKNS0_14default_init_tEEEEvmDpOT_.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17resize_front_implIJRKNS0_14default_init_tEEEEvmDpOT_.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKNS0_14default_init_tEEEEvPS3_mDpOT_.exit.i, %bb.c, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12resize_frontEmRKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !69
  %i.c = zext i16 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 5 uses
  %i.g = sub nsw i64 %i.c, %i.f                   ; 4 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %.not.i = icmp ugt i64 %1, %i.c
  br i1 %.not.i, label %bb.c, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.f
  %i.l = sub i64 0, %i.i
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = add i64 %1, %i.f
  %.neg = add nuw nsw i64 %i.c, 1
  %xtraiter = and i64 %i.i, 1
  %i.o = icmp eq i64 %i.n, %.neg
  br i1 %i.o, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.preheader.i.new

.lr.ph.i.i.preheader.i.new:                       ; preds = %.lr.ph.i.i.preheader.i
  %unroll_iter = and i64 %i.i, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i.new
  %.07.i.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %i.y, %.lr.ph.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.07.i.i.i
  %i.q = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.q, ptr %i.p, align 4, !tbaa !65
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.07.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.v, ptr %i.u, align 4, !tbaa !65
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.y = add nuw i64 %.07.i.i.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKS3_EEEvPS3_mDpOT_.exit.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !7

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKS3_EEEvPS3_mDpOT_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKS3_EEEvPS3_mDpOT_.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKS3_EEEvPS3_mDpOT_.exit.i.unr-lcssa, %.lr.ph.i.i.preheader.i
  %.07.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader.i ], [ %i.y, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKS3_EEEvPS3_mDpOT_.exit.i.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.07.i.i.i.epil.init
  %i.aa = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !65
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKS3_EEEvPS3_mDpOT_.exit.i

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKS3_EEEvPS3_mDpOT_.exit.i: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKS3_EEEvPS3_mDpOT_.exit.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %i.ad = trunc i64 %i.i to i16
  %i.ae = sub i16 %i.e, %i.ad
  store i16 %i.ae, ptr %i.d, align 8, !tbaa !81
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17resize_front_implIJRKS3_EEEvmDpOT_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22resize_front_slow_pathIJRKS3_EEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17resize_front_implIJRKS3_EEEvmDpOT_.exit

bb.d:                                             ; preds = %bb.a
  %i.af = sub nuw i64 %i.g, %1
  %i.ag = add i64 %i.af, %i.f                     ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ag
  %.not5.i.i = icmp eq i64 %i.g, %1
  br i1 %.not5.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.f
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.06.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.aj, %.lr.ph.i.preheader.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i, align 4, !tbaa !65
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.ai
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %i.an = trunc i64 %i.ag to i16
  store i16 %i.an, ptr %i.d, align 8, !tbaa !81
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17resize_front_implIJRKS3_EEEvmDpOT_.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17resize_front_implIJRKS3_EEEvmDpOT_.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE11construct_nIJRKS3_EEEvPS3_mDpOT_.exit.i, %bb.c, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !70   ; 3 uses
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8capacityEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = udiv i16 %i.b, 10
  %2 = sub nuw i16 %i.b, %i.c
  %3 = zext i16 %2 to i64
  br label %_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8capacityEv.exit

_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %3, %bb.b ], [ 0, %bb.a ]
  %i.e = icmp ult i64 %i.d, %1
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8capacityEv.exit
  %i.f = add i64 %1, 8
  %i.g = udiv i64 %i.f, 9                         ; 2 uses
  %i.h = mul i64 %i.g, 10                         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !69   ; 2 uses
  %i.k = zext i16 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !63   ; 2 uses
  %i.n = zext i16 %i.m to i64                     ; 2 uses
  %.neg = sub i64 %i.h, %i.k
  %i.o = add i64 %.neg, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i64 %i.h, 65535
  br i1 %i.q, label %bb.e, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #20
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i.i: ; preds = %bb.d
  %i.r = mul i64 %i.g, 40
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #21
  %.pre = load i16, ptr %i.l, align 8, !tbaa !63  ; 2 uses
  %.pre7 = load i16, ptr %i.i, align 2, !tbaa !69 ; 2 uses
  %.pre8 = zext i16 %.pre to i64
  %.pre9 = zext i16 %.pre7 to i64
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit.i

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit.i: ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i.i, %bb.c
  %.pre-phi10 = phi i64 [ %.pre9, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i.i ], [ %i.k, %bb.c ]
  %.pre-phi = phi i64 [ %.pre8, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i.i ], [ %i.n, %bb.c ]
  %i.t = phi i16 [ %.pre7, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.u = phi i16 [ %.pre, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.s, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i.i ], [ null, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !62     ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.pre-phi ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.pre-phi10 ; 2 uses
  %.not16.i.i = icmp eq i16 %i.u, %i.t
  br i1 %.not16.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.p
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.018.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.w, %.lr.ph.i.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.y, %.lr.ph.i.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.z = load i32, ptr %.018.i.i, align 4, !tbaa !65
  store i32 %i.z, ptr %.01517.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i, align 4, !tbaa !65
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ac, %i.x
  br i1 %.not.i.i, label %.lr.ph.i14.i, label %.lr.ph.i.i, !llvm.loop !8

.lr.ph.i14.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i14.i
  %.06.i.i = phi ptr [ %i.ag, %.lr.ph.i14.i ], [ %i.w, %.lr.ph.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i, align 4, !tbaa !65
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.ag, %i.x
  br i1 %.not.i15.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i, label %.lr.ph.i14.i, !llvm.loop !2

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i: ; preds = %.lr.ph.i14.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit.i
  %.not.i16.i = icmp eq ptr %i.v, null
  br i1 %.not.i16.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE13reallocate_atEmm.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i
  %i.ah = load i16, ptr %i.a, align 4, !tbaa !70
  %i.ai = zext i16 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aj) #19
  %.pre.i = load i16, ptr %i.i, align 2, !tbaa !69
  %.pre21.i = load i16, ptr %i.l, align 8, !tbaa !63
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE13reallocate_atEmm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE13reallocate_atEmm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i, %bb.f
  %i.ak = phi i16 [ %i.u, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i ], [ %.pre21.i, %bb.f ]
  %i.al = phi i16 [ %i.t, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i ], [ %.pre.i, %bb.f ]
  store ptr %.0.i.i.i, ptr %0, align 8, !tbaa !62
  %i.am = trunc nuw i64 %i.h to i16
  store i16 %i.am, ptr %i.a, align 4, !tbaa !74
  %i.an = trunc i64 %i.p to i16                   ; 2 uses
  %i.ao = sub i16 %i.an, %i.ak
  %i.ap = add i16 %i.ao, %i.al
  store i16 %i.ap, ptr %i.i, align 2, !tbaa !73
  store i16 %i.an, ptr %i.l, align 8, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE13reallocate_atEmm.exit, %_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8capacityEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE13reallocate_atEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 65535
  br i1 %i.a, label %bb.c, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #20
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i: ; preds = %bb.b
  %i.b = shl nuw nsw i64 %1, 2
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #21
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit: ; preds = %bb.a, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i
  %.0.i.i = phi ptr [ %i.c, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ], [ null, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !62     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !69   ; 3 uses
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %.not16.i = icmp eq i16 %i.f, %i.j
  br i1 %.not16.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ] ; 3 uses
  %.01517.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.m, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.n = load i32, ptr %.018.i, align 4, !tbaa !65
  store i32 %i.n, ptr %.01517.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i, align 4, !tbaa !65
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.q, %i.l
  br i1 %.not.i, label %.lr.ph.i14, label %.lr.ph.i, !llvm.loop !8

.lr.ph.i14:                                       ; preds = %.lr.ph.i, %.lr.ph.i14
  %.06.i = phi ptr [ %i.u, %.lr.ph.i14 ], [ %i.h, %.lr.ph.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !65
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.t = add i32 %i.s, -1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i15 = icmp eq ptr %i.u, %i.l
  br i1 %.not.i15, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, label %.lr.ph.i14, !llvm.loop !2

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit: ; preds = %.lr.ph.i14, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit
  %.not.i16 = icmp eq ptr %i.d, null
  br i1 %.not.i16, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17deallocate_bufferEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i16, ptr %i.v, align 4, !tbaa !70
  %i.x = zext i16 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.y) #19
  %.pre = load i16, ptr %i.i, align 2, !tbaa !69
  %.pre21 = load i16, ptr %i.e, align 8, !tbaa !63
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17deallocate_bufferEv.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17deallocate_bufferEv.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, %bb.d
  %i.z = phi i16 [ %i.f, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit ], [ %.pre21, %bb.d ]
  %i.aa = phi i16 [ %i.j, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit ], [ %.pre, %bb.d ]
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !62
  %i.ab = trunc nuw i64 %1 to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.ab, ptr %i.ac, align 4, !tbaa !74
  %i.ad = trunc i64 %2 to i16                     ; 2 uses
  %i.ae = add i16 %i.aa, %i.ad
  %i.af = sub i16 %i.ae, %i.z
  store i16 %i.af, ptr %i.i, align 2, !tbaa !73
  store i16 %i.ad, ptr %i.e, align 8, !tbaa !81
  ret void
end_hunk_1
