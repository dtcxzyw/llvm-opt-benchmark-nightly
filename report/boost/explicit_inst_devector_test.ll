Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_devector_test?download=true
inline.NumInlined: 2703
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE4dataEv:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE4dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !63
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE10push_frontERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %.not.i.i = icmp eq i16 %i.b, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.c, 4294967295
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.h, ptr %i.g, align 4, !tbaa !65
  %i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.k = add i16 %i.b, -1
  store i16 %i.k, ptr %i.a, align 8, !tbaa !63
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE15priv_push_frontIRKS3_EEvOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.c
  %i.m = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS5_JRKS3_EEEEEPS3_PSC_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.l, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE15priv_push_frontIRKS3_EEvOT_.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE15priv_push_frontIRKS3_EEvOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE10push_frontEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %.not.i.i = icmp eq i16 %i.b, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.c, 4294967295
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.h, ptr %i.g, align 4, !tbaa !65
  store i32 0, ptr %1, align 4, !tbaa !65
  %i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.k = add i16 %i.b, -1
  store i16 %i.k, ptr %i.a, align 8, !tbaa !63
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE15priv_push_frontIS3_EEvOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.c
  %i.m = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.l, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE15priv_push_frontIS3_EEvOT_.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE15priv_push_frontIS3_EEvOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store i32 -2147483648, ptr %i.e, align 4, !tbaa !65
  %i.f = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.h = add i16 %i.c, 1
  store i16 %i.h, ptr %i.b, align 8, !tbaa !63
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i16, ptr %i.a, align 4, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !69   ; 3 uses
  %i.e = zext i16 %i.d to i64
  %.not.i.i = icmp eq i16 %i.b, %i.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.h, ptr %i.g, align 4, !tbaa !65
  %i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.k = add i16 %i.d, 1
  store i16 %i.k, ptr %i.c, align 2, !tbaa !69
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14priv_push_backIRKS3_EEvOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS5_JRKS3_EEEEEPS3_PSC_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.g, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14priv_push_backIRKS3_EEvOT_.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14priv_push_backIRKS3_EEvOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i16, ptr %i.a, align 4, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !69   ; 3 uses
  %i.e = zext i16 %i.d to i64
  %.not.i.i = icmp eq i16 %i.b, %i.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.h, ptr %i.g, align 4, !tbaa !65
  store i32 0, ptr %1, align 4, !tbaa !65
  %i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.k = add i16 %i.d, 1
  store i16 %i.k, ptr %i.c, align 2, !tbaa !69
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14priv_push_backIS3_EEvOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.g, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14priv_push_backIS3_EEvOT_.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14priv_push_backIS3_EEvOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !69
  %i.c = add i16 %i.b, -1                         ; 2 uses
  store i16 %i.c, ptr %i.a, align 2, !tbaa !69
  %i.d = load ptr, ptr %0, align 8, !tbaa !62
  %i.e = zext i16 %i.c to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  store i32 -2147483648, ptr %i.f, align 4, !tbaa !65
  %i.g = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.h = add i32 %i.g, -1
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6insertEPKS3_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE7emplaceIJRKS3_EEEPS3_PSA_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6insertEPKS3_OS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE7emplaceIJS3_EEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6insertEPKS3_mRS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr nonnull %3, i64 %2, ptr nonnull %3, i64 0)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %3, %5                           ; 36 uses
  %.not = icmp eq i64 %i.a, 0
  %i.b = load ptr, ptr %0, align 8, !tbaa !62     ; 11 uses
  %6 = ptrtoaddr ptr %i.b to i64                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !63
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !69   ; 3 uses
  %i.m = zext i16 %i.l to i64                     ; 6 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.m ; 17 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i16, ptr %i.p, align 4, !tbaa !70
  %i.r = zext i16 %i.q to i64
  %i.s = sub nsw i64 %i.r, %i.m
  %.not64 = icmp ult i64 %i.s, %i.a
  br i1 %.not64, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not12.i = icmp eq i64 %3, %5
  br i1 %.not12.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %xtraiter232 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.014.i.prol = phi ptr [ %i.x, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.2.013.i.prol = phi i64 [ %i.w, %.lr.ph.i.prol ], [ %3, %.lr.ph.i.preheader ]
  %prol.iter234 = phi i64 [ %prol.iter234.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i.prol) ]
  %i.t = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.t, ptr %.014.i.prol, align 4, !tbaa !65
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.w = add i64 %.sroa.2.013.i.prol, -1          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.014.i.prol, i64 4 ; 2 uses
  %prol.iter234.next = add i64 %prol.iter234, 1   ; 2 uses
  %prol.iter234.cmp.not = icmp eq i64 %prol.iter234.next, %xtraiter232
  br i1 %prol.iter234.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !138

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.014.i.unr = phi ptr [ %i.n, %.lr.ph.i.preheader ], [ %i.x, %.lr.ph.i.prol ]
  %.sroa.2.013.i.unr = phi i64 [ %3, %.lr.ph.i.preheader ], [ %i.w, %.lr.ph.i.prol ]
  %i.y = sub i64 %5, %3
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.014.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.014.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.sroa.2.013.i = phi i64 [ %i.am, %.lr.ph.i ], [ %.sroa.2.013.i.unr, %.lr.ph.i.prol.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i) ]
  %i.aa = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.aa, ptr %.014.i, align 4, !tbaa !65
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i, i64 4
  %i.ae = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !65
  %i.af = add i32 %i.ab, 2
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  %i.ah = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !65
  %i.ai = add i32 %i.ab, 3
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.i, i64 12
  %i.ak = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !65
  %i.al = add i32 %i.ab, 4
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.am = add i64 %.sroa.2.013.i, -4              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.014.i, i64 16
  %.not.i.3 = icmp eq i64 %i.am, %5
  br i1 %.not.i.3, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !0

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.e
  %i.ao = trunc i64 %i.a to i16
  %i.ap = add i16 %i.l, %i.ao
  store i16 %i.ap, ptr %i.k, align 2, !tbaa !73
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !63 ; 3 uses
  %i.as = zext i16 %i.ar to i64                   ; 7 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.as ; 16 uses
  %i.au = icmp eq ptr %1, %i.at
  br i1 %i.au, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not63 = icmp ugt i64 %i.a, %i.as
  br i1 %.not63, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not12.i65 = icmp eq i64 %3, %5
  br i1 %.not12.i65, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, label %.lr.ph.i66.preheader

.lr.ph.i66.preheader:                             ; preds = %bb.h
  %i.av = sub nsw i64 0, %i.a
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.av ; 2 uses
  %xtraiter229 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %.lr.ph.i66.prol.loopexit, label %.lr.ph.i66.prol

.lr.ph.i66.prol:                                  ; preds = %.lr.ph.i66.preheader, %.lr.ph.i66.prol
  %.014.i67.prol = phi ptr [ %i.bb, %.lr.ph.i66.prol ], [ %i.aw, %.lr.ph.i66.preheader ] ; 3 uses
  %.sroa.2.013.i68.prol = phi i64 [ %i.ba, %.lr.ph.i66.prol ], [ %3, %.lr.ph.i66.preheader ]
  %prol.iter231 = phi i64 [ %prol.iter231.next, %.lr.ph.i66.prol ], [ 0, %.lr.ph.i66.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i67.prol) ]
  %i.ax = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ax, ptr %.014.i67.prol, align 4, !tbaa !65
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ba = add i64 %.sroa.2.013.i68.prol, -1       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.014.i67.prol, i64 4 ; 2 uses
  %prol.iter231.next = add i64 %prol.iter231, 1   ; 2 uses
  %prol.iter231.cmp.not = icmp eq i64 %prol.iter231.next, %xtraiter229
  br i1 %prol.iter231.cmp.not, label %.lr.ph.i66.prol.loopexit, label %.lr.ph.i66.prol, !llvm.loop !139

.lr.ph.i66.prol.loopexit:                         ; preds = %.lr.ph.i66.prol, %.lr.ph.i66.preheader
  %.014.i67.unr = phi ptr [ %i.aw, %.lr.ph.i66.preheader ], [ %i.bb, %.lr.ph.i66.prol ]
  %.sroa.2.013.i68.unr = phi i64 [ %3, %.lr.ph.i66.preheader ], [ %i.ba, %.lr.ph.i66.prol ]
  %i.bc = sub i64 %5, %3
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %.lr.ph.i66.prol.loopexit, %.lr.ph.i66
  %.014.i67 = phi ptr [ %i.br, %.lr.ph.i66 ], [ %.014.i67.unr, %.lr.ph.i66.prol.loopexit ] ; 6 uses
  %.sroa.2.013.i68 = phi i64 [ %i.bq, %.lr.ph.i66 ], [ %.sroa.2.013.i68.unr, %.lr.ph.i66.prol.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i67) ]
  %i.be = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.be, ptr %.014.i67, align 4, !tbaa !65
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %.014.i67, i64 4
  %i.bi = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !65
  %i.bj = add i32 %i.bf, 2
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bk = getelementptr inbounds nuw i8, ptr %.014.i67, i64 8
  %i.bl = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !65
  %i.bm = add i32 %i.bf, 3
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bn = getelementptr inbounds nuw i8, ptr %.014.i67, i64 12
  %i.bo = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !65
  %i.bp = add i32 %i.bf, 4
  store i32 %i.bp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bq = add i64 %.sroa.2.013.i68, -4            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.014.i67, i64 16
  %.not.i69.3 = icmp eq i64 %i.bq, %5
  br i1 %.not.i69.3, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, label %.lr.ph.i66, !llvm.loop !0

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71: ; preds = %.lr.ph.i66.prol.loopexit, %.lr.ph.i66, %bb.h
  %i.bs = trunc nuw i64 %i.a to i16
  %i.bt = sub i16 %i.ar, %i.bs                    ; 2 uses
  store i16 %i.bt, ptr %i.aq, align 8, !tbaa !81
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bu
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.bw = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.bx = ptrtoint ptr %i.at to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 2                 ; 9 uses
  %i.ca = sub nsw i64 %i.m, %i.as
  %i.cb = lshr i64 %i.ca, 1
  %.not105 = icmp ult i64 %i.bz, %i.cb
  br i1 %.not105, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !70
  %i.ce = zext i16 %i.cd to i64
  %i.cf = sub nsw i64 %i.ce, %i.m
  %.not62 = icmp ult i64 %i.cf, %i.a
  br i1 %.not62, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = ptrtoint ptr %i.n to i64
  %i.ch = sub i64 %i.cg, %i.bw
  %i.ci = ashr exact i64 %i.ch, 2                 ; 8 uses
  %.not.i72 = icmp ult i64 %i.ci, %i.a
  br i1 %.not.i72, label %.lr.ph.i48.preheader.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = sub i64 0, %i.a
  %i.ck = getelementptr [4 x i8], ptr %i.n, i64 %i.cj ; 10 uses
  %.neg = add i64 %5, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %bb.l
  %i.cl = add nsw i64 %i.a, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !65
  store i32 %i.cm, ptr %i.n, align 4, !tbaa !65
  store i32 0, ptr %i.ck, align 4, !tbaa !65
  %i.cn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %bb.l
  %.020.i.i.unr = phi i64 [ %i.a, %bb.l ], [ %i.cl, %.lr.ph.i.i.prol ]
  %.0819.i.i.unr = phi ptr [ %i.ck, %bb.l ], [ %i.cp, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %i.n, %bb.l ], [ %i.cq, %.lr.ph.i.i.prol ]
  %i.cr = icmp eq i64 %3, %.neg
  br i1 %i.cr, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.cx, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %.0819.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.cs = load i32, ptr %.0819.i.i, align 4, !tbaa !65
  store i32 %i.cs, ptr %.01618.i.i, align 4, !tbaa !65
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !65
  %i.ct = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cv = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.cx = add i64 %.020.i.i, -2                   ; 2 uses
  %i.cy = load i32, ptr %i.cv, align 4, !tbaa !65
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !65
  store i32 0, ptr %i.cv, align 4, !tbaa !65
  %i.cz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.db = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i.1 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.ck
  br i1 %.not8.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.dd = ptrtoaddr ptr %i.b to i64               ; 2 uses
  %i.de = shl i64 %3, 2
  %i.df = add i64 %5, %i.m
  %i.dg = shl i64 %i.df, 2
  %i.dh = add i64 %i.dg, %i.dd
  %i.di = add i64 %i.dh, -4
  %i.dj = add i64 %i.de, %i.bw
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 188
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader218, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.dn = shl nuw nsw i64 %i.m, 2                 ; 3 uses
  %i.do = shl i64 %5, 2                           ; 2 uses
  %i.dp = shl i64 %3, 2                           ; 2 uses
  %i.dq = add i64 %i.do, %i.dd
  %i.dr = add i64 %i.dq, %i.dn
  %i.ds = add i64 %i.dr, -4
  %i.dt = add i64 %i.dp, %i.bw
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = and i64 %i.du, -4                       ; 2 uses
  %i.dw = add nsw i64 %i.dn, -4
  %i.dx = sub i64 %i.dw, %i.dv
  %i.dy = getelementptr i8, ptr %i.b, i64 %i.dx
  %i.dz = add i64 %i.do, %i.dn
  %i.ea = add i64 %i.dz, -4
  %i.eb = add i64 %i.dp, %i.dv
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = getelementptr i8, ptr %i.b, i64 %i.ec
  %bound0 = icmp ult ptr %i.dy, %i.ck
  %bound1 = icmp ult ptr %i.ed, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader218, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 9223372036854775800     ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SF_:bb.a

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.fc, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.fd, %.lr.ph.i48.i ], [ %i.ey, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.ez = load i32, ptr %.018.i.i, align 4, !tbaa !65
  store i32 %i.ez, ptr %.01517.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i, align 4, !tbaa !65
  %i.fa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fc = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.fc, %i.n
  br i1 %.not.i49.i, label %.lr.ph.preheader.i.i54.i, label %.lr.ph.i48.i, !llvm.loop !8

.lr.ph.preheader.i.i54.i:                         ; preds = %.lr.ph.i48.i
  %.pre.i.i55.i = load i32, ptr %2, align 4, !tbaa !65 ; 2 uses
  %min.iters.check152 = icmp ult i64 %i.ci, 8
  br i1 %min.iters.check152, label %.lr.ph.i.i56.i.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %.lr.ph.preheader.i.i54.i
  %n.vec154 = and i64 %i.ci, -8                   ; 3 uses
  %i.fe = and i64 %i.ci, 7
  %i.ff = shl nsw i64 %n.vec154, 2
  %i.fg = getelementptr i8, ptr %1, i64 %i.ff
  %broadcast.splatinsert155 = insertelement <4 x i32> poison, i32 %.pre.i.i55.i, i64 0
  %broadcast.splat156 = shufflevector <4 x i32> %broadcast.splatinsert155, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph153
  %index158 = phi i64 [ 0, %vector.ph153 ], [ %index.next160, %vector.body157 ] ; 2 uses
  %i.fh = shl i64 %index158, 2
  %next.gep159 = getelementptr i8, ptr %1, i64 %i.fh ; 2 uses
  %i.fi = getelementptr i8, ptr %next.gep159, i64 16
  store <4 x i32> %broadcast.splat156, ptr %next.gep159, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat156, ptr %i.fi, align 4, !tbaa !65
  %index.next160 = add nuw i64 %index158, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next160, %n.vec154
  br i1 %i.fj, label %middle.block161, label %vector.body157, !llvm.loop !147

middle.block161:                                  ; preds = %vector.body157
  %cmp.n162 = icmp eq i64 %i.ci, %n.vec154
  br i1 %cmp.n162, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i, label %.lr.ph.i.i56.i.preheader

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.preheader.i.i54.i, %middle.block161
  %.012.i.i57.i.ph = phi i64 [ %i.ci, %.lr.ph.preheader.i.i54.i ], [ %i.fe, %middle.block161 ]
  %.0511.i.i58.i.ph = phi ptr [ %1, %.lr.ph.preheader.i.i54.i ], [ %i.fg, %middle.block161 ]
  br label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i
  %.012.i.i57.i = phi i64 [ %i.fk, %.lr.ph.i.i56.i ], [ %.012.i.i57.i.ph, %.lr.ph.i.i56.i.preheader ]
  %.0511.i.i58.i = phi ptr [ %i.fl, %.lr.ph.i.i56.i ], [ %.0511.i.i58.i.ph, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %i.fk = add i64 %.012.i.i57.i, -1               ; 2 uses
  store i32 %.pre.i.i55.i, ptr %.0511.i.i58.i, align 4, !tbaa !65
  %i.fl = getelementptr inbounds nuw i8, ptr %.0511.i.i58.i, i64 4
  %.not.i.i59.i = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i59.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i, label %.lr.ph.i.i56.i, !llvm.loop !148

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i: ; preds = %.lr.ph.i.i56.i, %middle.block161
  %i.fm = sub i64 %i.a, %i.ci                     ; 3 uses
  %xtraiter219 = and i64 %i.fm, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod220.not, label %.lr.ph.i.i66.i.prol.loopexit, label %.lr.ph.i.i66.i.prol

.lr.ph.i.i66.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i, %.lr.ph.i.i66.i.prol
  %.022.i.i.i.prol = phi i64 [ %i.fr, %.lr.ph.i.i66.i.prol ], [ %i.fm, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ]
  %.01821.i.i.i.prol = phi ptr [ %i.fq, %.lr.ph.i.i66.i.prol ], [ %i.n, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i66.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.prol) ]
  %i.fn = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.fn, ptr %.01821.i.i.i.prol, align 4, !tbaa !65
  %i.fo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fq = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.prol, i64 4 ; 2 uses
  %i.fr = add i64 %.022.i.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter219
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i66.i.prol.loopexit, label %.lr.ph.i.i66.i.prol, !llvm.loop !149

.lr.ph.i.i66.i.prol.loopexit:                     ; preds = %.lr.ph.i.i66.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i
  %.022.i.i.i.unr = phi i64 [ %i.fm, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ], [ %i.fr, %.lr.ph.i.i66.i.prol ]
  %.01821.i.i.i.unr = phi ptr [ %i.n, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ], [ %i.fq, %.lr.ph.i.i66.i.prol ]
  %i.fs = sub i64 %i.ci, %3
  %i.ft = add i64 %i.fs, %5
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i66.i

.lr.ph.i.i66.i:                                   ; preds = %.lr.ph.i.i66.i.prol.loopexit, %.lr.ph.i.i66.i
  %.022.i.i.i = phi i64 [ %i.gi, %.lr.ph.i.i66.i ], [ %.022.i.i.i.unr, %.lr.ph.i.i66.i.prol.loopexit ]
  %.01821.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i66.i ], [ %.01821.i.i.i.unr, %.lr.ph.i.i66.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i) ]
  %i.fv = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.fv, ptr %.01821.i.i.i, align 4, !tbaa !65
  %i.fw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fy = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 4
  %i.fz = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !65
  %i.ga = add i32 %i.fw, 2
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gb = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 8
  %i.gc = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !65
  %i.gd = add i32 %i.fw, 3
  store i32 %i.gd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ge = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 12
  %i.gf = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !65
  %i.gg = add i32 %i.fw, 4
  store i32 %i.gg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gh = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 16
  %i.gi = add i64 %.022.i.i.i, -4                 ; 2 uses
  %.not.i.i67.i.3 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i67.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i66.i, !llvm.loop !10

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i66.i.prol.loopexit, %.lr.ph.i.i66.i, %middle.block147
  %i.gj = trunc i64 %i.a to i16
  %i.gk = add i16 %i.l, %i.gj
  store i16 %i.gk, ptr %i.k, align 2, !tbaa !73
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %.not61 = icmp ugt i64 %i.a, %i.as
  br i1 %.not61, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i74 = icmp samesign ult i64 %i.bz, %i.a
  %i.gl = sub nsw i64 0, %i.a                     ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.gl ; 3 uses
  br i1 %.not.i74, label %.lr.ph.i48.i92, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %bb.n
  %.neg235 = add i64 %5, 1
  %xtraiter221 = and i64 %i.a, 1
  %i.gn = icmp eq i64 %3, %.neg235
  br i1 %i.gn, label %.lr.ph.i.i76.epil.preheader, label %.lr.ph.i.i76.preheader.new

.lr.ph.i.i76.preheader.new:                       ; preds = %.lr.ph.i.i76.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76, %.lr.ph.i.i76.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i76 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.at, %.lr.ph.i.i76.preheader.new ], [ %i.gw, %.lr.ph.i.i76 ] ; 4 uses
  %.01618.i.i78 = phi ptr [ %i.gm, %.lr.ph.i.i76.preheader.new ], [ %i.gx, %.lr.ph.i.i76 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %niter.next.1, %.lr.ph.i.i76 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78) ]
  %i.go = load i32, ptr %.0919.i.i, align 4, !tbaa !65
  store i32 %i.go, ptr %.01618.i.i78, align 4, !tbaa !65
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !65
  %i.gp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gr = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 4
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !65
  store i32 %i.gt, ptr %i.gs, align 4, !tbaa !65
  store i32 0, ptr %i.gr, align 4, !tbaa !65
  %i.gu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gw = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i76, !llvm.loop !11

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i76
  %indvar.next = or disjoint i64 %indvar, 1
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i76.epil.preheader

.lr.ph.i.i76.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i76.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i76.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.at, %.lr.ph.i.i76.preheader ], [ %i.gw, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i78.epil.init = phi ptr [ %i.gm, %.lr.ph.i.i76.preheader ], [ %i.gx, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod225 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod225)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78.epil.init) ]
  %i.gy = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !65
  store i32 %i.gy, ptr %.01618.i.i78.epil.init, align 4, !tbaa !65
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !65
  %i.gz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hb = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i76.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i76.epil.preheader ]
  %.lcssa216 = phi ptr [ %i.gw, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.hb, %.lr.ph.i.i76.epil.preheader ] ; 6 uses
  %.not8.i.i80 = icmp eq ptr %.lcssa216, %1
  br i1 %.not8.i.i80, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader

.lr.ph.i40.i81.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.hc = shl i64 %5, 2
  %i.hd = add i64 %3, %i.as
  %i.he = shl i64 %i.hd, 2
  %i.hf = add i64 %i.hc, %i.bw
  %i.hg = add i64 %i.hf, -4
  %i.hh = add i64 %i.he, %6
  %i.hi = sub i64 %i.hg, %i.hh                    ; 2 uses
  %i.hj = lshr i64 %i.hi, 2
  %i.hk = add nuw nsw i64 %i.hj, 1                ; 2 uses
  %min.iters.check171 = icmp ult i64 %i.hi, 172
  br i1 %min.iters.check171, label %.lr.ph.i40.i81.preheader214, label %vector.memcheck165

vector.memcheck165:                               ; preds = %.lr.ph.i40.i81.preheader
  %i.hl = shl i64 %5, 2
  %7 = add i64 %i.hl, %i.bw
  %i.hm = add i64 %7, -4
  %i.hn = add i64 %3, %i.as
  %8 = shl i64 %i.hn, 2
  %i.ho = add i64 %8, %6
  %i.hp = sub i64 %i.hm, %i.ho
  %i.hq = and i64 %i.hp, -4
  %i.hr = shl nuw nsw i64 %i.as, 2
  %i.hs = add i64 %i.hq, %i.hr                    ; 2 uses
  %i.ht = getelementptr i8, ptr %i.b, i64 %i.hs
  %scevgep = getelementptr i8, ptr %i.ht, i64 4
  %i.hu = shl nuw nsw i64 %indvar.lcssa, 2
  %i.hv = getelementptr i8, ptr %i.b, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.hs
  %scevgep166 = getelementptr i8, ptr %i.hw, i64 8
  %bound0167 = icmp ult ptr %i.at, %scevgep166
  %bound1168 = icmp ult ptr %.lcssa216, %scevgep
  %found.conflict169 = and i1 %bound0167, %bound1168
  br i1 %found.conflict169, label %.lr.ph.i40.i81.preheader214, label %vector.ph172

vector.ph172:                                     ; preds = %vector.memcheck165
  %n.vec173 = and i64 %i.hk, 9223372036854775800  ; 3 uses
  %i.hx = shl i64 %n.vec173, 2                    ; 2 uses
  %i.hy = getelementptr i8, ptr %i.at, i64 %i.hx  ; 2 uses
  %i.hz = getelementptr i8, ptr %.lcssa216, i64 %i.hx
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body174 ] ; 2 uses
  %i.ia = shl i64 %index175, 2                    ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.at, i64 %i.ia ; 2 uses
  %next.gep177 = getelementptr i8, ptr %.lcssa216, i64 %i.ia ; 3 uses
  %i.ib = getelementptr i8, ptr %next.gep177, i64 16 ; 2 uses
  %wide.load178 = load <4 x i32>, ptr %next.gep177, align 4, !tbaa !65, !alias.scope !162
  %wide.load179 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !65, !alias.scope !162
  %i.ic = getelementptr i8, ptr %next.gep176, i64 16
  store <4 x i32> %wide.load178, ptr %next.gep176, align 4, !tbaa !65, !alias.scope !163, !noalias !162
  store <4 x i32> %wide.load179, ptr %i.ic, align 4, !tbaa !65, !alias.scope !163, !noalias !162
  store <4 x i32> zeroinitializer, ptr %next.gep177, align 4, !tbaa !65, !alias.scope !162
  store <4 x i32> zeroinitializer, ptr %i.ib, align 4, !tbaa !65, !alias.scope !162
  %index.next180 = add nuw i64 %index175, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.id, label %middle.block181, label %vector.body174, !llvm.loop !153

middle.block181:                                  ; preds = %vector.body174
  %cmp.n182 = icmp eq i64 %i.hk, %n.vec173
  br i1 %cmp.n182, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader214

.lr.ph.i40.i81.preheader214:                      ; preds = %vector.memcheck165, %.lr.ph.i40.i81.preheader, %middle.block181
  %.010.i.i82.ph = phi ptr [ %i.at, %vector.memcheck165 ], [ %i.at, %.lr.ph.i40.i81.preheader ], [ %i.hy, %middle.block181 ]
  %.079.i.i83.ph = phi ptr [ %.lcssa216, %vector.memcheck165 ], [ %.lcssa216, %.lr.ph.i40.i81.preheader ], [ %i.hz, %middle.block181 ]
  br label %.lr.ph.i40.i81

.lr.ph.i40.i81:                                   ; preds = %.lr.ph.i40.i81.preheader214, %.lr.ph.i40.i81
  %.010.i.i82 = phi ptr [ %i.ig, %.lr.ph.i40.i81 ], [ %.010.i.i82.ph, %.lr.ph.i40.i81.preheader214 ] ; 2 uses
  %.079.i.i83 = phi ptr [ %i.if, %.lr.ph.i40.i81 ], [ %.079.i.i83.ph, %.lr.ph.i40.i81.preheader214 ] ; 3 uses
  %i.ie = load i32, ptr %.079.i.i83, align 4, !tbaa !65
  store i32 %i.ie, ptr %.010.i.i82, align 4, !tbaa !65
  store i32 0, ptr %.079.i.i83, align 4, !tbaa !65
  %i.if = getelementptr inbounds nuw i8, ptr %.079.i.i83, i64 4 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.010.i.i82, i64 4 ; 2 uses
  %.not.i41.i84 = icmp eq ptr %i.if, %1
  br i1 %.not.i41.i84, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81, !llvm.loop !154

.lr.ph.preheader.i.i.i85:                         ; preds = %.lr.ph.i40.i81, %middle.block181, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.at, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.hy, %middle.block181 ], [ %i.ig, %.lr.ph.i40.i81 ] ; 3 uses
  %.pre.i.i.i86 = load i32, ptr %2, align 4, !tbaa !65 ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check186, label %.lr.ph.i.i.i87.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph.preheader.i.i.i85
  %n.vec188 = and i64 %i.a, -8                    ; 3 uses
  %i.ih = and i64 %i.a, 7
  %i.ii = shl i64 %n.vec188, 2
  %i.ij = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ii
  %broadcast.splatinsert189 = insertelement <4 x i32> poison, i32 %.pre.i.i.i86, i64 0
  %broadcast.splat190 = shufflevector <4 x i32> %broadcast.splatinsert189, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph187
  %index192 = phi i64 [ 0, %vector.ph187 ], [ %index.next194, %vector.body191 ] ; 2 uses
  %i.ik = shl i64 %index192, 2
  %next.gep193 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ik ; 2 uses
  %i.il = getelementptr i8, ptr %next.gep193, i64 16
  store <4 x i32> %broadcast.splat190, ptr %next.gep193, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat190, ptr %i.il, align 4, !tbaa !65
  %index.next194 = add nuw i64 %index192, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next194, %n.vec188
  br i1 %i.im, label %middle.block195, label %vector.body191, !llvm.loop !155

middle.block195:                                  ; preds = %vector.body191
  %cmp.n196 = icmp eq i64 %i.a, %n.vec188
  br i1 %cmp.n196, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i87.preheader

.lr.ph.i.i.i87.preheader:                         ; preds = %.lr.ph.preheader.i.i.i85, %middle.block195
  %.012.i.i.i88.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i85 ], [ %i.ih, %middle.block195 ]
  %.0511.i.i.i89.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph.preheader.i.i.i85 ], [ %i.ij, %middle.block195 ]
  br label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %.lr.ph.i.i.i87.preheader, %.lr.ph.i.i.i87
  %.012.i.i.i88 = phi i64 [ %i.in, %.lr.ph.i.i.i87 ], [ %.012.i.i.i88.ph, %.lr.ph.i.i.i87.preheader ]
  %.0511.i.i.i89 = phi ptr [ %i.io, %.lr.ph.i.i.i87 ], [ %.0511.i.i.i89.ph, %.lr.ph.i.i.i87.preheader ] ; 2 uses
  %i.in = add nsw i64 %.012.i.i.i88, -1           ; 2 uses
  store i32 %.pre.i.i.i86, ptr %.0511.i.i.i89, align 4, !tbaa !65
  %i.io = getelementptr inbounds nuw i8, ptr %.0511.i.i.i89, i64 4
  %.not.i.i.i90 = icmp eq i64 %i.in, 0
  br i1 %.not.i.i.i90, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i87, !llvm.loop !156

.lr.ph.i48.i92:                                   ; preds = %bb.n, %.lr.ph.i48.i92
  %.018.i.i93 = phi ptr [ %i.is, %.lr.ph.i48.i92 ], [ %i.at, %bb.n ] ; 3 uses
  %.01517.i.i94 = phi ptr [ %i.it, %.lr.ph.i48.i92 ], [ %i.gm, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i94) ]
  %i.ip = load i32, ptr %.018.i.i93, align 4, !tbaa !65
  store i32 %i.ip, ptr %.01517.i.i94, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i93, align 4, !tbaa !65
  %i.iq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.is = getelementptr inbounds nuw i8, ptr %.018.i.i93, i64 4 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.01517.i.i94, i64 4 ; 3 uses
  %.not.i49.i95 = icmp eq ptr %i.is, %1
  br i1 %.not.i49.i95, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i92, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i92
  %i.iu = sub i64 %i.a, %i.bz                     ; 3 uses
  %xtraiter226 = and i64 %i.iu, 3                 ; 2 uses
  %lcmp.mod227.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol

.lr.ph.i.i53.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, %.lr.ph.i.i53.i.prol
  %.022.i.i.i96.prol = phi i64 [ %i.iz, %.lr.ph.i.i53.i.prol ], [ %i.iu, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %.01821.i.i.i97.prol = phi ptr [ %i.iy, %.lr.ph.i.i53.i.prol ], [ %i.it, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ] ; 2 uses
  %prol.iter228 = phi i64 [ %prol.iter228.next, %.lr.ph.i.i53.i.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %i.iv = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.iv, ptr %.01821.i.i.i97.prol, align 4, !tbaa !65
  %i.iw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ix = add i32 %i.iw, 1
  store i32 %i.ix, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.iy = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97.prol, i64 4 ; 2 uses
  %i.iz = add nsw i64 %.022.i.i.i96.prol, -1      ; 2 uses
  %prol.iter228.next = add i64 %prol.iter228, 1   ; 2 uses
  %prol.iter228.cmp.not = icmp eq i64 %prol.iter228.next, %xtraiter226
  br i1 %prol.iter228.cmp.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol, !llvm.loop !157

.lr.ph.i.i53.i.prol.loopexit:                     ; preds = %.lr.ph.i.i53.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.022.i.i.i96.unr = phi i64 [ %i.iu, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iz, %.lr.ph.i.i53.i.prol ]
  %.01821.i.i.i97.unr = phi ptr [ %i.it, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iy, %.lr.ph.i.i53.i.prol ]
  %i.ja = sub i64 %i.bz, %3
  %i.jb = add i64 %i.ja, %5
  %i.jc = icmp ugt i64 %i.jb, -4
  br i1 %i.jc, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i.prol.loopexit, %.lr.ph.i.i53.i
  %.022.i.i.i96 = phi i64 [ %i.jq, %.lr.ph.i.i53.i ], [ %.022.i.i.i96.unr, %.lr.ph.i.i53.i.prol.loopexit ]
  %.01821.i.i.i97 = phi ptr [ %i.jp, %.lr.ph.i.i53.i ], [ %.01821.i.i.i97.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 5 uses
  %i.jd = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.jd, ptr %.01821.i.i.i97, align 4, !tbaa !65
  %i.je = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jg = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 4
  %i.jh = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !65
  %i.ji = add i32 %i.je, 2
  store i32 %i.ji, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jj = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 8
  %i.jk = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.jk, ptr %i.jj, align 4, !tbaa !65
  %i.jl = add i32 %i.je, 3
  store i32 %i.jl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jm = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 12
  %i.jn = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !65
  %i.jo = add i32 %i.je, 4
  store i32 %i.jo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jp = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 16
  %i.jq = add nsw i64 %.022.i.i.i96, -4           ; 2 uses
  %.not.i.i54.i.3 = icmp eq i64 %i.jq, 0
  br i1 %.not.i.i54.i.3, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i, !llvm.loop !10

.lr.ph.preheader.i.i61.i:                         ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.i.prol.loopexit
  %.pre.i.i62.i = load i32, ptr %2, align 4, !tbaa !65 ; 2 uses
  %min.iters.check200 = icmp ult i64 %i.bz, 8
  br i1 %min.iters.check200, label %.lr.ph.i.i63.i.preheader, label %vector.ph201

vector.ph201:                                     ; preds = %.lr.ph.preheader.i.i61.i
  %n.vec202 = and i64 %i.bz, -8                   ; 3 uses
  %i.jr = and i64 %i.bz, 7
  %i.js = shl nsw i64 %n.vec202, 2
  %i.jt = getelementptr i8, ptr %i.at, i64 %i.js
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %.pre.i.i62.i, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph201
  %index206 = phi i64 [ 0, %vector.ph201 ], [ %index.next208, %vector.body205 ] ; 2 uses
  %i.ju = shl i64 %index206, 2
  %next.gep207 = getelementptr i8, ptr %i.at, i64 %i.ju ; 2 uses
  %i.jv = getelementptr i8, ptr %next.gep207, i64 16
  store <4 x i32> %broadcast.splat204, ptr %next.gep207, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat204, ptr %i.jv, align 4, !tbaa !65
  %index.next208 = add nuw i64 %index206, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next208, %n.vec202
  br i1 %i.jw, label %middle.block209, label %vector.body205, !llvm.loop !158

middle.block209:                                  ; preds = %vector.body205
  %cmp.n210 = icmp eq i64 %i.bz, %n.vec202
  br i1 %cmp.n210, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i63.i.preheader

.lr.ph.i.i63.i.preheader:                         ; preds = %.lr.ph.preheader.i.i61.i, %middle.block209
  %.012.i.i64.i.ph = phi i64 [ %i.bz, %.lr.ph.preheader.i.i61.i ], [ %i.jr, %middle.block209 ]
  %.0511.i.i65.i.ph = phi ptr [ %i.at, %.lr.ph.preheader.i.i61.i ], [ %i.jt, %middle.block209 ]
end_hunk_1
begin_hunk_2_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvT0_mSC_SC_mT1_RT_:bb.a
vector.ph336:                                     ; preds = %vector.memcheck332
  %n.vec337 = and i64 %i.hj, 9223372036854775800  ; 3 uses
  %i.ic = mul i64 %n.vec337, -4                   ; 2 uses
  %i.id = getelementptr i8, ptr %i.a, i64 %i.ic   ; 2 uses
  %i.ie = getelementptr i8, ptr %i.ge, i64 %i.ic
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph336
  %index339 = phi i64 [ 0, %vector.ph336 ], [ %index.next344, %vector.body338 ] ; 2 uses
  %i.if = mul i64 %index339, -4                   ; 2 uses
  %next.gep340 = getelementptr i8, ptr %i.a, i64 %i.if ; 2 uses
  %next.gep341 = getelementptr i8, ptr %i.ge, i64 %i.if ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %next.gep341, i64 -16 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %next.gep341, i64 -32 ; 2 uses
  %wide.load342 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !65, !alias.scope !429
  %wide.load343 = load <4 x i32>, ptr %i.ih, align 4, !tbaa !65, !alias.scope !429
  %i.ii = getelementptr inbounds i8, ptr %next.gep340, i64 -16
  %i.ij = getelementptr inbounds i8, ptr %next.gep340, i64 -32
  store <4 x i32> %wide.load342, ptr %i.ii, align 4, !tbaa !65, !alias.scope !430, !noalias !429
  store <4 x i32> %wide.load343, ptr %i.ij, align 4, !tbaa !65, !alias.scope !430, !noalias !429
  store <4 x i32> zeroinitializer, ptr %i.ig, align 4, !tbaa !65, !alias.scope !429
  store <4 x i32> zeroinitializer, ptr %i.ih, align 4, !tbaa !65, !alias.scope !429
  %index.next344 = add nuw i64 %index339, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next344, %n.vec337
  br i1 %i.ik, label %middle.block345, label %vector.body338, !llvm.loop !416

middle.block345:                                  ; preds = %vector.body338
  %cmp.n346 = icmp eq i64 %i.hj, %n.vec337
  br i1 %cmp.n346, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213.preheader427

.lr.ph.i.i213.preheader427:                       ; preds = %vector.memcheck332, %.lr.ph.i.i213.preheader, %middle.block345
  %.010.i.i214.ph = phi ptr [ %i.a, %vector.memcheck332 ], [ %i.a, %.lr.ph.i.i213.preheader ], [ %i.id, %middle.block345 ]
  %.079.i.i215.ph = phi ptr [ %i.ge, %vector.memcheck332 ], [ %i.ge, %.lr.ph.i.i213.preheader ], [ %i.ie, %middle.block345 ]
  br label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.preheader427, %.lr.ph.i.i213
  %.010.i.i214 = phi ptr [ %i.im, %.lr.ph.i.i213 ], [ %.010.i.i214.ph, %.lr.ph.i.i213.preheader427 ]
  %.079.i.i215 = phi ptr [ %i.il, %.lr.ph.i.i213 ], [ %.079.i.i215.ph, %.lr.ph.i.i213.preheader427 ]
  %i.il = getelementptr inbounds i8, ptr %.079.i.i215, i64 -4 ; 4 uses
  %i.im = getelementptr inbounds i8, ptr %.010.i.i214, i64 -4 ; 3 uses
  %i.in = load i32, ptr %i.il, align 4, !tbaa !65
  store i32 %i.in, ptr %i.im, align 4, !tbaa !65
  store i32 0, ptr %i.il, align 4, !tbaa !65
  %.not.i.i216 = icmp eq ptr %3, %i.il
  br i1 %.not.i.i216, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213, !llvm.loop !417

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217: ; preds = %.lr.ph.i.i213, %middle.block345, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210
  %i.io = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210 ], [ %i.id, %middle.block345 ], [ %i.im, %.lr.ph.i.i213 ] ; 2 uses
  %i.ip = sub i64 0, %4
  %i.iq = getelementptr [4 x i8], ptr %i.io, i64 %i.ip ; 10 uses
  %.not9.i.i221 = icmp eq i64 %4, 0
  br i1 %.not9.i.i221, label %._crit_edge.loopexit.i.i228, label %.lr.ph.preheader.i.i222

.lr.ph.preheader.i.i222:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217
  %.sroa.0.0.copyload.i218 = load ptr, ptr %5, align 8
  %.pre.i.i223 = load i32, ptr %.sroa.0.0.copyload.i218, align 4, !tbaa !65 ; 2 uses
  %min.iters.check350 = icmp ult i64 %4, 8
  br i1 %min.iters.check350, label %.lr.ph.i.i224.preheader, label %vector.ph351

vector.ph351:                                     ; preds = %.lr.ph.preheader.i.i222
  %n.vec352 = and i64 %4, -8                      ; 3 uses
  %i.ir = and i64 %4, 7
  %i.is = shl i64 %n.vec352, 2
  %i.it = getelementptr i8, ptr %i.iq, i64 %i.is
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i223, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next356, %vector.body353 ] ; 2 uses
  %i.iu = shl i64 %index354, 2
  %next.gep355 = getelementptr i8, ptr %i.iq, i64 %i.iu ; 2 uses
  %i.iv = getelementptr i8, ptr %next.gep355, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep355, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat, ptr %i.iv, align 4, !tbaa !65
  %index.next356 = add nuw i64 %index354, 8       ; 2 uses
  %i.iw = icmp eq i64 %index.next356, %n.vec352
  br i1 %i.iw, label %middle.block357, label %vector.body353, !llvm.loop !418

middle.block357:                                  ; preds = %vector.body353
  %cmp.n358 = icmp eq i64 %4, %n.vec352
  br i1 %cmp.n358, label %._crit_edge.loopexit.i.i228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %.lr.ph.preheader.i.i222, %middle.block357
  %.012.i.i225.ph = phi i64 [ %4, %.lr.ph.preheader.i.i222 ], [ %i.ir, %middle.block357 ]
  %.0511.i.i226.ph = phi ptr [ %i.iq, %.lr.ph.preheader.i.i222 ], [ %i.it, %middle.block357 ]
  br label %.lr.ph.i.i224

.lr.ph.i.i224:                                    ; preds = %.lr.ph.i.i224.preheader, %.lr.ph.i.i224
  %.012.i.i225 = phi i64 [ %i.ix, %.lr.ph.i.i224 ], [ %.012.i.i225.ph, %.lr.ph.i.i224.preheader ]
  %.0511.i.i226 = phi ptr [ %i.iy, %.lr.ph.i.i224 ], [ %.0511.i.i226.ph, %.lr.ph.i.i224.preheader ] ; 2 uses
  %i.ix = add i64 %.012.i.i225, -1                ; 2 uses
  store i32 %.pre.i.i223, ptr %.0511.i.i226, align 4, !tbaa !65
  %i.iy = getelementptr inbounds nuw i8, ptr %.0511.i.i226, i64 4
  %.not.i.i227 = icmp eq i64 %i.ix, 0
  br i1 %.not.i.i227, label %._crit_edge.loopexit.i.i228, label %.lr.ph.i.i224, !llvm.loop !419

._crit_edge.loopexit.i.i228:                      ; preds = %.lr.ph.i.i224, %middle.block357, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217
  %.not.i231 = icmp eq ptr %3, %i.iq
  br i1 %.not.i231, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %._crit_edge.loopexit.i.i228
  %.not8.i.i232 = icmp eq ptr %0, %3
  br i1 %.not8.i.i232, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, label %.lr.ph.i.i233.preheader

.lr.ph.i.i233.preheader:                          ; preds = %bb.i
  %i.iz = ptrtoaddr ptr %0 to i64
  %i.ja = add i64 %i.e, -4
  %i.jb = sub i64 %i.ja, %i.iz                    ; 3 uses
  %i.jc = lshr i64 %i.jb, 2
  %i.jd = add nuw nsw i64 %i.jc, 1                ; 2 uses
  %min.iters.check367 = icmp ult i64 %i.jb, 108
  br i1 %min.iters.check367, label %.lr.ph.i.i233.preheader425, label %vector.memcheck368

vector.memcheck368:                               ; preds = %.lr.ph.i.i233.preheader
  %i.je = shl i64 %4, 2
  %i.jf = and i64 %i.jb, -4                       ; 2 uses
  %i.jg = add i64 %i.je, %i.jf
  %i.jh = sub nuw nsw i64 -4, %i.jg
  %i.ji = getelementptr i8, ptr %i.io, i64 %i.jh
  %i.jj = sub nuw nsw i64 -4, %i.jf
  %i.jk = getelementptr i8, ptr %3, i64 %i.jj
  %bound0369 = icmp ult ptr %i.ji, %3
  %bound1370 = icmp ult ptr %i.jk, %i.iq
  %found.conflict371 = and i1 %bound0369, %bound1370
  br i1 %found.conflict371, label %.lr.ph.i.i233.preheader425, label %vector.ph372

vector.ph372:                                     ; preds = %vector.memcheck368
  %n.vec373 = and i64 %i.jd, 9223372036854775800  ; 3 uses
  %i.jl = mul i64 %n.vec373, -4                   ; 2 uses
  %i.jm = getelementptr i8, ptr %i.iq, i64 %i.jl  ; 2 uses
  %i.jn = getelementptr i8, ptr %3, i64 %i.jl
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph372
  %index375 = phi i64 [ 0, %vector.ph372 ], [ %index.next380, %vector.body374 ] ; 2 uses
  %i.jo = mul i64 %index375, -4                   ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.iq, i64 %i.jo ; 2 uses
  %next.gep377 = getelementptr i8, ptr %3, i64 %i.jo ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %next.gep377, i64 -16 ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %next.gep377, i64 -32 ; 2 uses
  %wide.load378 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !65, !alias.scope !431
  %wide.load379 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !65, !alias.scope !431
  %i.jr = getelementptr inbounds i8, ptr %next.gep376, i64 -16
  %i.js = getelementptr inbounds i8, ptr %next.gep376, i64 -32
  store <4 x i32> %wide.load378, ptr %i.jr, align 4, !tbaa !65, !alias.scope !432, !noalias !431
  store <4 x i32> %wide.load379, ptr %i.js, align 4, !tbaa !65, !alias.scope !432, !noalias !431
  store <4 x i32> zeroinitializer, ptr %i.jp, align 4, !tbaa !65, !alias.scope !431
  store <4 x i32> zeroinitializer, ptr %i.jq, align 4, !tbaa !65, !alias.scope !431
  %index.next380 = add nuw i64 %index375, 8       ; 2 uses
  %i.jt = icmp eq i64 %index.next380, %n.vec373
  br i1 %i.jt, label %middle.block381, label %vector.body374, !llvm.loop !423

middle.block381:                                  ; preds = %vector.body374
  %cmp.n382 = icmp eq i64 %i.jd, %n.vec373
  br i1 %cmp.n382, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, label %.lr.ph.i.i233.preheader425

.lr.ph.i.i233.preheader425:                       ; preds = %vector.memcheck368, %.lr.ph.i.i233.preheader, %middle.block381
  %.010.i.i234.ph = phi ptr [ %i.iq, %vector.memcheck368 ], [ %i.iq, %.lr.ph.i.i233.preheader ], [ %i.jm, %middle.block381 ]
  %.079.i.i235.ph = phi ptr [ %3, %vector.memcheck368 ], [ %3, %.lr.ph.i.i233.preheader ], [ %i.jn, %middle.block381 ]
  br label %.lr.ph.i.i233

.lr.ph.i.i233:                                    ; preds = %.lr.ph.i.i233.preheader425, %.lr.ph.i.i233
  %.010.i.i234 = phi ptr [ %i.jv, %.lr.ph.i.i233 ], [ %.010.i.i234.ph, %.lr.ph.i.i233.preheader425 ]
  %.079.i.i235 = phi ptr [ %i.ju, %.lr.ph.i.i233 ], [ %.079.i.i235.ph, %.lr.ph.i.i233.preheader425 ]
  %i.ju = getelementptr inbounds i8, ptr %.079.i.i235, i64 -4 ; 4 uses
  %i.jv = getelementptr inbounds i8, ptr %.010.i.i234, i64 -4 ; 3 uses
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !65
  store i32 %i.jw, ptr %i.jv, align 4, !tbaa !65
  store i32 0, ptr %i.ju, align 4, !tbaa !65
  %.not.i.i236 = icmp eq ptr %0, %i.ju
  br i1 %.not.i.i236, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, label %.lr.ph.i.i233, !llvm.loop !424

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237: ; preds = %.lr.ph.i.i233, %middle.block381, %bb.i
  %i.jx = phi ptr [ %i.iq, %bb.i ], [ %i.jm, %middle.block381 ], [ %i.jv, %.lr.ph.i.i233 ] ; 2 uses
  %.not3.i238 = icmp eq ptr %0, %i.jx
  br i1 %.not3.i238, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, %.lr.ph.i239
  %storemerge4.i240 = phi ptr [ %i.ka, %.lr.ph.i239 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i240, align 4, !tbaa !65
  %i.jy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jz = add i32 %i.jy, -1
  store i32 %i.jz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ka = getelementptr inbounds nuw i8, ptr %storemerge4.i240, i64 4 ; 2 uses
  %.not.i241 = icmp eq ptr %i.ka, %i.jx
  br i1 %.not.i241, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i239, !llvm.loop !16

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i142, %.lr.ph.i239, %.lr.ph.i191, %._crit_edge.loopexit.i.i228, %._crit_edge.loopexit.i.i180, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeIPKS3_EEPS3_SB_T_SD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 11 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 32 uses
  %.not = icmp eq ptr %3, %2
  %i.e = load ptr, ptr %0, align 8, !tbaa !62     ; 11 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !63
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.i ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !69   ; 3 uses
  %i.q = zext i16 %i.p to i64                     ; 6 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q ; 16 uses
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i16, ptr %i.t, align 4, !tbaa !70
  %i.v = zext i16 %i.u to i64
  %i.w = sub nsw i64 %i.v, %i.q
  %.not48 = icmp ult i64 %i.w, %i.d
  br i1 %.not48, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %2, %bb.d ] ; 2 uses
  %.01517.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.r, %bb.d ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.x = load i32, ptr %.018.i, align 4, !tbaa !65
  store i32 %i.x, ptr %.01517.i, align 4, !tbaa !65
  %i.y = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.aa, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !1

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i
  %i.ac = trunc i64 %i.d to i16
  %i.ad = add i16 %i.p, %i.ac
  store i16 %i.ad, ptr %i.o, align 2, !tbaa !73
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !63 ; 3 uses
  %i.ag = zext i16 %i.af to i64                   ; 7 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ag ; 17 uses
  %i.ai = icmp eq ptr %1, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not47 = icmp ugt i64 %i.d, %i.ag
  br i1 %.not47, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = sub nsw i64 0, %i.d
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.aj
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.g, %.lr.ph.i50
  %.018.i51 = phi ptr [ %i.ao, %.lr.ph.i50 ], [ %2, %bb.g ] ; 2 uses
  %.01517.i52 = phi ptr [ %i.ap, %.lr.ph.i50 ], [ %i.ak, %bb.g ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i52) ]
  %i.al = load i32, ptr %.018.i51, align 4, !tbaa !65
  store i32 %i.al, ptr %.01517.i52, align 4, !tbaa !65
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i51, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i52, i64 4
  %.not.i53 = icmp eq ptr %i.ao, %3
  br i1 %.not.i53, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit55, label %.lr.ph.i50, !llvm.loop !1

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit55: ; preds = %.lr.ph.i50
  %i.aq = trunc nuw i64 %i.d to i16
  %i.ar = sub i16 %i.af, %i.aq                    ; 2 uses
  store i16 %i.ar, ptr %i.ae, align 8, !tbaa !81
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.as
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.au = ptrtoint ptr %1 to i64                  ; 8 uses
  %i.av = ptrtoint ptr %i.ah to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2                 ; 10 uses
  %i.ay = sub nsw i64 %i.q, %i.ag
  %i.az = lshr i64 %i.ay, 1
  %.not85 = icmp ult i64 %i.ax, %i.az
  br i1 %.not85, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !70
  %i.bc = zext i16 %i.bb to i64
  %i.bd = sub nsw i64 %i.bc, %i.q
  %.not46 = icmp ult i64 %i.bd, %i.d
  br i1 %.not46, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = ptrtoint ptr %i.r to i64
  %i.bf = sub i64 %i.be, %i.au
  %i.bg = ashr exact i64 %i.bf, 2                 ; 8 uses
  %.not.i56 = icmp ult i64 %i.bg, %i.d
  br i1 %.not.i56, label %.lr.ph.i48.preheader.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = sub nsw i64 0, %i.d
  %i.bi = getelementptr [4 x i8], ptr %i.r, i64 %i.bh ; 10 uses
  %i.bj = and i64 %i.c, 4
  %lcmp.mod.not = icmp eq i64 %i.bj, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %bb.k
  %i.bk = add nsw i64 %i.d, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !65
  store i32 %i.bl, ptr %i.r, align 4, !tbaa !65
  store i32 0, ptr %i.bi, align 4, !tbaa !65
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %bb.k
  %.020.i.i.unr = phi i64 [ %i.d, %bb.k ], [ %i.bk, %.lr.ph.i.i.prol ]
  %.0819.i.i.unr = phi ptr [ %i.bi, %bb.k ], [ %i.bo, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %i.r, %bb.k ], [ %i.bp, %.lr.ph.i.i.prol ]
  %i.bq = icmp eq i64 %i.c, 4
  br i1 %i.bq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.bw, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.0819.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.br = load i32, ptr %.0819.i.i, align 4, !tbaa !65
  store i32 %i.br, ptr %.01618.i.i, align 4, !tbaa !65
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !65
  %i.bs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bw = add i64 %.020.i.i, -2                   ; 2 uses
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !65
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !65
  store i32 0, ptr %i.bu, align 4, !tbaa !65
  %i.by = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ca = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i.1 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.bi
  br i1 %.not8.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.cc = ptrtoaddr ptr %i.e to i64               ; 2 uses
  %i.cd = shl nuw nsw i64 %i.q, 2
  %i.ce = add i64 %i.cd, %i.cc
  %i.cf = add i64 %i.ce, -4
  %i.cg = add i64 %i.c, %i.au
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 140
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader231, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.ck = shl nuw nsw i64 %i.q, 2                 ; 2 uses
  %i.cl = add i64 %i.ck, %i.cc
  %i.cm = add i64 %i.cl, -4
  %i.cn = add i64 %i.c, %i.au
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = and i64 %i.co, -4                       ; 2 uses
  %i.cq = add nsw i64 %i.ck, -4                   ; 2 uses
  %i.cr = sub i64 %i.cq, %i.cp
  %i.cs = getelementptr i8, ptr %i.e, i64 %i.cr
  %i.ct = add i64 %i.c, %i.cp
  %i.cu = sub i64 %i.cq, %i.ct
  %i.cv = getelementptr i8, ptr %i.e, i64 %i.cu
  %bound0 = icmp ult ptr %i.cs, %i.bi
  %bound1 = icmp ult ptr %i.cv, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader231, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cj, 9223372036854775800     ; 3 uses
  %i.cw = mul i64 %n.vec, -4                      ; 2 uses
  %i.cx = getelementptr i8, ptr %i.r, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.bi, i64 %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.cz ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.bi, i64 %i.cz ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep123, i64 -16 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep123, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.da, align 4, !tbaa !65, !alias.scope !456
  %wide.load124 = load <4 x i32>, ptr %i.db, align 4, !tbaa !65, !alias.scope !456
  %i.dc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.dc, align 4, !tbaa !65, !alias.scope !457, !noalias !456
  store <4 x i32> %wide.load124, ptr %i.dd, align 4, !tbaa !65, !alias.scope !457, !noalias !456
  store <4 x i32> zeroinitializer, ptr %i.da, align 4, !tbaa !65, !alias.scope !456
  store <4 x i32> zeroinitializer, ptr %i.db, align 4, !tbaa !65, !alias.scope !456
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i.preheader231

.lr.ph.i40.i.preheader231:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i40.i.preheader ], [ %i.cx, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bi, %vector.memcheck ], [ %i.bi, %.lr.ph.i40.i.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader231, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.dg, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader231 ]
  %.079.i.i = phi ptr [ %i.df, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader231 ]
  %i.df = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !65
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !65
  store i32 0, ptr %i.df, align 4, !tbaa !65
  %.not.i41.i = icmp eq ptr %1, %i.df
  br i1 %.not.i41.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i, !llvm.loop !437

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %min.iters.check128 = icmp ult i64 %i.d, 8
  %i.di = sub i64 %i.b, %i.au
  %diff.check = icmp ugt i64 %i.di, -32
  %or.cond = or i1 %min.iters.check128, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %n.vec130 = and i64 %i.d, -8                    ; 3 uses
  %i.dj = shl nsw i64 %n.vec130, 2                ; 2 uses
  %i.dk = getelementptr i8, ptr %1, i64 %i.dj
  %i.dl = and i64 %i.d, 7
  %i.dm = getelementptr i8, ptr %2, i64 %i.dj
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next137, %vector.body131 ] ; 2 uses
  %i.dn = shl i64 %index132, 2                    ; 2 uses
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.dn ; 2 uses
  %next.gep134 = getelementptr i8, ptr %2, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep134, i64 16
  %wide.load135 = load <4 x i32>, ptr %next.gep134, align 4, !tbaa !65
  %wide.load136 = load <4 x i32>, ptr %i.do, align 4, !tbaa !65
  %i.dp = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %wide.load135, ptr %next.gep133, align 4, !tbaa !65
  store <4 x i32> %wide.load136, ptr %i.dp, align 4, !tbaa !65
  %index.next137 = add nuw i64 %index132, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next137, %n.vec130
  br i1 %i.dq, label %middle.block138, label %vector.body131, !llvm.loop !438

middle.block138:                                  ; preds = %vector.body131
  %cmp.n139 = icmp eq i64 %i.d, %n.vec130
  br i1 %cmp.n139, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %middle.block138
  %.011.i.i.i.ph = phi ptr [ %1, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.dk, %middle.block138 ] ; 2 uses
  %.0610.i.i.i.ph = phi i64 [ %i.d, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.dl, %middle.block138 ] ; 4 uses
  %.079.i.i.i.ph = phi ptr [ %2, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.dm, %middle.block138 ] ; 2 uses
  %i.dr = add nsw i64 %.0610.i.i.i.ph, -1
  %xtraiter232 = and i64 %.0610.i.i.i.ph, 7       ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.011.i.i.i.prol = phi ptr [ %i.dv, %.lr.ph.i.i.i.prol ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeIPKS3_EEPS3_SB_T_SD_:bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.prol, i64 4 ; 2 uses
  %prol.iter236.next = add i64 %prol.iter236, 1   ; 2 uses
  %prol.iter236.cmp.not = icmp eq i64 %prol.iter236.next, %xtraiter234
  br i1 %prol.iter236.cmp.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol, !llvm.loop !442

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %.lr.ph.i.i51.i.preheader228
  %.lcssa229.unr = phi ptr [ poison, %.lr.ph.i.i51.i.preheader228 ], [ %i.fo, %.lr.ph.i.i51.i.prol ]
  %.011.i.i52.i.unr = phi ptr [ %.011.i.i52.i.ph, %.lr.ph.i.i51.i.preheader228 ], [ %i.fp, %.lr.ph.i.i51.i.prol ]
  %.0610.i.i53.i.unr = phi i64 [ %.0610.i.i53.i.ph, %.lr.ph.i.i51.i.preheader228 ], [ %i.fm, %.lr.ph.i.i51.i.prol ]
  %.079.i.i54.i.unr = phi ptr [ %.079.i.i54.i.ph, %.lr.ph.i.i51.i.preheader228 ], [ %i.fo, %.lr.ph.i.i51.i.prol ]
  %i.fq = icmp ult i64 %i.fl, 7
  br i1 %i.fq, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.011.i.i52.i = phi ptr [ %i.gp, %.lr.ph.i.i51.i ], [ %.011.i.i52.i.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 9 uses
  %.0610.i.i53.i = phi i64 [ %i.gm, %.lr.ph.i.i51.i ], [ %.0610.i.i53.i.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.079.i.i54.i = phi ptr [ %i.go, %.lr.ph.i.i51.i ], [ %.079.i.i54.i.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 9 uses
  %i.fr = load i32, ptr %.079.i.i54.i, align 4, !tbaa !65
  store i32 %i.fr, ptr %.011.i.i52.i, align 4, !tbaa !65
  %i.fs = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 4
  %i.fu = load i32, ptr %i.fs, align 4, !tbaa !65
  store i32 %i.fu, ptr %i.ft, align 4, !tbaa !65
  %i.fv = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 8
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !65
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !65
  %i.fy = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 12
  %i.fz = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 12
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !65
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !65
  %i.gb = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 16
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !65
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !65
  %i.ge = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 20
  %i.gf = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 20
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !65
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !65
  %i.gh = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 24
  %i.gi = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 24
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !65
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !65
  %i.gk = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 28
  %i.gl = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 28
  %i.gm = add i64 %.0610.i.i53.i, -8              ; 2 uses
  %i.gn = load i32, ptr %i.gk, align 4, !tbaa !65
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !65
  %i.go = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 32 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 32
  %.not.i.i55.i.7 = icmp eq i64 %i.gm, 0
  br i1 %.not.i.i55.i.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i, label %.lr.ph.i.i51.i, !llvm.loop !443

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i: ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i, %middle.block156
  %.lcssa121 = phi ptr [ %i.fg, %middle.block156 ], [ %.lcssa229.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.go, %.lr.ph.i.i51.i ] ; 2 uses
  %i.gq = sub nsw i64 %i.d, %i.bg                 ; 3 uses
  %xtraiter237 = and i64 %i.gq, 3                 ; 2 uses
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %.lr.ph.i.i58.i.prol.loopexit, label %.lr.ph.i.i58.i.prol

.lr.ph.i.i58.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i, %.lr.ph.i.i58.i.prol
  %.020.i.i.i.prol = phi i64 [ %i.gw, %.lr.ph.i.i58.i.prol ], [ %i.gq, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ]
  %.0919.i.i.i.prol = phi ptr [ %i.gu, %.lr.ph.i.i58.i.prol ], [ %.lcssa121, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ] ; 2 uses
  %.01618.i.i.i.prol = phi ptr [ %i.gv, %.lr.ph.i.i58.i.prol ], [ %i.r, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ] ; 3 uses
  %prol.iter239 = phi i64 [ %prol.iter239.next, %.lr.ph.i.i58.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.prol) ]
  %i.gr = load i32, ptr %.0919.i.i.i.prol, align 4, !tbaa !65
  store i32 %i.gr, ptr %.01618.i.i.i.prol, align 4, !tbaa !65
  %i.gs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gu = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.prol, i64 4 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.prol, i64 4 ; 2 uses
  %i.gw = add i64 %.020.i.i.i.prol, -1            ; 2 uses
  %prol.iter239.next = add i64 %prol.iter239, 1   ; 2 uses
  %prol.iter239.cmp.not = icmp eq i64 %prol.iter239.next, %xtraiter237
  br i1 %prol.iter239.cmp.not, label %.lr.ph.i.i58.i.prol.loopexit, label %.lr.ph.i.i58.i.prol, !llvm.loop !444

.lr.ph.i.i58.i.prol.loopexit:                     ; preds = %.lr.ph.i.i58.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i
  %.020.i.i.i.unr = phi i64 [ %i.gq, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ], [ %i.gw, %.lr.ph.i.i58.i.prol ]
  %.0919.i.i.i.unr = phi ptr [ %.lcssa121, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ], [ %i.gu, %.lr.ph.i.i58.i.prol ]
  %.01618.i.i.i.unr = phi ptr [ %i.r, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ], [ %i.gv, %.lr.ph.i.i58.i.prol ]
  %i.gx = sub nsw i64 %i.bg, %i.d
  %i.gy = icmp ugt i64 %i.gx, -4
  br i1 %i.gy, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i58.i

.lr.ph.i.i58.i:                                   ; preds = %.lr.ph.i.i58.i.prol.loopexit, %.lr.ph.i.i58.i
  %.020.i.i.i = phi i64 [ %i.hq, %.lr.ph.i.i58.i ], [ %.020.i.i.i.unr, %.lr.ph.i.i58.i.prol.loopexit ]
  %.0919.i.i.i = phi ptr [ %i.ho, %.lr.ph.i.i58.i ], [ %.0919.i.i.i.unr, %.lr.ph.i.i58.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i58.i ], [ %.01618.i.i.i.unr, %.lr.ph.i.i58.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i) ]
  %i.gz = load i32, ptr %.0919.i.i.i, align 4, !tbaa !65
  store i32 %i.gz, ptr %.01618.i.i.i, align 4, !tbaa !65
  %i.ha = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.hb = add i32 %i.ha, 1
  store i32 %i.hb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hc = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 4
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !65
  store i32 %i.he, ptr %i.hd, align 4, !tbaa !65
  %i.hf = add i32 %i.ha, 2
  store i32 %i.hf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hg = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 8
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !65
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !65
  %i.hj = add i32 %i.ha, 3
  store i32 %i.hj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hk = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 12
  %i.hl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 12
  %i.hm = load i32, ptr %i.hk, align 4, !tbaa !65
  store i32 %i.hm, ptr %i.hl, align 4, !tbaa !65
  %i.hn = add i32 %i.ha, 4
  store i32 %i.hn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ho = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 16
  %i.hq = add i64 %.020.i.i.i, -4                 ; 2 uses
  %.not.i.i59.i.3 = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i59.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i58.i, !llvm.loop !18

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i58.i.prol.loopexit, %.lr.ph.i.i58.i, %middle.block138
  %i.hr = trunc i64 %i.d to i16
  %i.hs = add i16 %i.p, %i.hr
  store i16 %i.hs, ptr %i.o, align 2, !tbaa !73
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %.not45 = icmp ugt i64 %i.d, %i.ag
  br i1 %.not45, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i57 = icmp samesign ult i64 %i.ax, %i.d
  %i.ht = sub nsw i64 0, %i.d                     ; 2 uses
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ht ; 3 uses
  br i1 %.not.i57, label %.lr.ph.i48.i74, label %.lr.ph.i.i59.preheader

.lr.ph.i.i59.preheader:                           ; preds = %bb.m
  %i.hv = icmp eq i64 %i.c, 4
  br i1 %i.hv, label %.lr.ph.i.i59.epil.preheader, label %.lr.ph.i.i59.preheader.new

.lr.ph.i.i59.preheader.new:                       ; preds = %.lr.ph.i.i59.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %.lr.ph.i.i59, %.lr.ph.i.i59.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i59.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i59 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ah, %.lr.ph.i.i59.preheader.new ], [ %i.ie, %.lr.ph.i.i59 ] ; 4 uses
  %.01618.i.i61 = phi ptr [ %i.hu, %.lr.ph.i.i59.preheader.new ], [ %i.if, %.lr.ph.i.i59 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i59.preheader.new ], [ %niter.next.1, %.lr.ph.i.i59 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i61) ]
  %i.hw = load i32, ptr %.0919.i.i, align 4, !tbaa !65
  store i32 %i.hw, ptr %.01618.i.i61, align 4, !tbaa !65
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !65
  %i.hx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hz = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.01618.i.i61, i64 4
  %i.ib = load i32, ptr %i.hz, align 4, !tbaa !65
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !65
  store i32 0, ptr %i.hz, align 4, !tbaa !65
  %i.ic = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ie = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.01618.i.i61, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i59, !llvm.loop !11

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i59
  %indvar.next = or disjoint i64 %indvar, 1
  %i.ig = and i64 %i.c, 4
  %lcmp.mod241.not = icmp eq i64 %i.ig, 0
  br i1 %lcmp.mod241.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i59.epil.preheader

.lr.ph.i.i59.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i59.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i59.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ah, %.lr.ph.i.i59.preheader ], [ %i.ie, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i61.epil.init = phi ptr [ %i.hu, %.lr.ph.i.i59.preheader ], [ %i.if, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod244 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod244)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i61.epil.init) ]
  %i.ih = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !65
  store i32 %i.ih, ptr %.01618.i.i61.epil.init, align 4, !tbaa !65
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !65
  %i.ii = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ik = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i59.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i59.epil.preheader ]
  %.lcssa227 = phi ptr [ %i.ie, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.ik, %.lr.ph.i.i59.epil.preheader ] ; 6 uses
  %.not8.i.i63 = icmp eq ptr %.lcssa227, %1
  br i1 %.not8.i.i63, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i64.preheader

.lr.ph.i40.i64.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.il = shl nuw nsw i64 %i.ag, 2
  %i.im = add i64 %i.au, -4
  %4 = add i64 %i.c, %i.f
  %i.in = add i64 %4, %i.il
  %i.io = sub i64 %i.im, %i.in                    ; 2 uses
  %i.ip = lshr i64 %i.io, 2
  %i.iq = add nuw nsw i64 %i.ip, 1                ; 2 uses
  %min.iters.check167 = icmp ult i64 %i.io, 140
  br i1 %min.iters.check167, label %.lr.ph.i40.i64.preheader225, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph.i40.i64.preheader
  %5 = add i64 %i.au, -4
  %6 = add i64 %i.c, %i.f
  %i.ir = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.is = add i64 %6, %i.ir
  %i.it = sub i64 %5, %i.is
  %i.iu = and i64 %i.it, -4
  %i.iv = add i64 %i.iu, %i.ir                    ; 2 uses
  %i.iw = getelementptr i8, ptr %i.e, i64 %i.iv
  %scevgep = getelementptr i8, ptr %i.iw, i64 4
  %i.ix = shl i64 %indvar.lcssa, 2
  %i.iy = getelementptr i8, ptr %i.e, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 %i.iv
  %scevgep162 = getelementptr i8, ptr %i.iz, i64 8
  %bound0163 = icmp ult ptr %i.ah, %scevgep162
  %bound1164 = icmp ult ptr %.lcssa227, %scevgep
  %found.conflict165 = and i1 %bound0163, %bound1164
  br i1 %found.conflict165, label %.lr.ph.i40.i64.preheader225, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck161
  %n.vec169 = and i64 %i.iq, 9223372036854775800  ; 3 uses
  %i.ja = shl i64 %n.vec169, 2                    ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ah, i64 %i.ja  ; 2 uses
  %i.jc = getelementptr i8, ptr %.lcssa227, i64 %i.ja
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body170 ] ; 2 uses
  %i.jd = shl i64 %index171, 2                    ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.ah, i64 %i.jd ; 2 uses
  %next.gep173 = getelementptr i8, ptr %.lcssa227, i64 %i.jd ; 3 uses
  %i.je = getelementptr i8, ptr %next.gep173, i64 16 ; 2 uses
  %wide.load174 = load <4 x i32>, ptr %next.gep173, align 4, !tbaa !65, !alias.scope !458
  %wide.load175 = load <4 x i32>, ptr %i.je, align 4, !tbaa !65, !alias.scope !458
  %i.jf = getelementptr i8, ptr %next.gep172, i64 16
  store <4 x i32> %wide.load174, ptr %next.gep172, align 4, !tbaa !65, !alias.scope !459, !noalias !458
  store <4 x i32> %wide.load175, ptr %i.jf, align 4, !tbaa !65, !alias.scope !459, !noalias !458
  store <4 x i32> zeroinitializer, ptr %next.gep173, align 4, !tbaa !65, !alias.scope !458
  store <4 x i32> zeroinitializer, ptr %i.je, align 4, !tbaa !65, !alias.scope !458
  %index.next176 = add nuw i64 %index171, 8       ; 2 uses
  %i.jg = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.jg, label %middle.block177, label %vector.body170, !llvm.loop !448

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.iq, %n.vec169
  br i1 %cmp.n178, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i64.preheader225

.lr.ph.i40.i64.preheader225:                      ; preds = %vector.memcheck161, %.lr.ph.i40.i64.preheader, %middle.block177
  %.010.i.i65.ph = phi ptr [ %i.ah, %vector.memcheck161 ], [ %i.ah, %.lr.ph.i40.i64.preheader ], [ %i.jb, %middle.block177 ]
  %.079.i.i66.ph = phi ptr [ %.lcssa227, %vector.memcheck161 ], [ %.lcssa227, %.lr.ph.i40.i64.preheader ], [ %i.jc, %middle.block177 ]
  br label %.lr.ph.i40.i64

.lr.ph.i40.i64:                                   ; preds = %.lr.ph.i40.i64.preheader225, %.lr.ph.i40.i64
  %.010.i.i65 = phi ptr [ %i.jj, %.lr.ph.i40.i64 ], [ %.010.i.i65.ph, %.lr.ph.i40.i64.preheader225 ] ; 2 uses
  %.079.i.i66 = phi ptr [ %i.ji, %.lr.ph.i40.i64 ], [ %.079.i.i66.ph, %.lr.ph.i40.i64.preheader225 ] ; 3 uses
  %i.jh = load i32, ptr %.079.i.i66, align 4, !tbaa !65
  store i32 %i.jh, ptr %.010.i.i65, align 4, !tbaa !65
  store i32 0, ptr %.079.i.i66, align 4, !tbaa !65
  %i.ji = getelementptr inbounds nuw i8, ptr %.079.i.i66, i64 4 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.010.i.i65, i64 4 ; 2 uses
  %.not.i41.i67 = icmp eq ptr %i.ji, %1
  br i1 %.not.i41.i67, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i64, !llvm.loop !449

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %.lr.ph.i40.i64, %middle.block177, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.ah, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.jb, %middle.block177 ], [ %i.jj, %.lr.ph.i40.i64 ] ; 4 uses
  %min.iters.check185 = icmp ult i64 %i.d, 8
  %.0.lcssa.i.i182 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.jk = sub i64 %i.b, %.0.lcssa.i.i182
  %diff.check183 = icmp ugt i64 %i.jk, -32
  %or.cond221 = select i1 %min.iters.check185, i1 true, i1 %diff.check183
  br i1 %or.cond221, label %.lr.ph.i.i.i68.preheader, label %vector.ph186

vector.ph186:                                     ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %n.vec187 = and i64 %i.d, -8                    ; 3 uses
  %i.jl = shl nsw i64 %n.vec187, 2                ; 2 uses
  %i.jm = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.jl
  %i.jn = and i64 %i.d, 7
  %i.jo = getelementptr i8, ptr %2, i64 %i.jl
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body188 ] ; 2 uses
  %i.jp = shl i64 %index189, 2                    ; 2 uses
  %next.gep190 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.jp ; 2 uses
  %next.gep191 = getelementptr i8, ptr %2, i64 %i.jp ; 2 uses
  %i.jq = getelementptr i8, ptr %next.gep191, i64 16
  %wide.load192 = load <4 x i32>, ptr %next.gep191, align 4, !tbaa !65
  %wide.load193 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !65
  %i.jr = getelementptr i8, ptr %next.gep190, i64 16
  store <4 x i32> %wide.load192, ptr %next.gep190, align 4, !tbaa !65
  store <4 x i32> %wide.load193, ptr %i.jr, align 4, !tbaa !65
  %index.next194 = add nuw i64 %index189, 8       ; 2 uses
  %i.js = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.js, label %middle.block195, label %vector.body188, !llvm.loop !450

middle.block195:                                  ; preds = %vector.body188
  %cmp.n196 = icmp eq i64 %i.d, %n.vec187
  br i1 %cmp.n196, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i68.preheader

.lr.ph.i.i.i68.preheader:                         ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %middle.block195
  %.011.i.i.i69.ph = phi ptr [ %.0.lcssa.i.i, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.jm, %middle.block195 ] ; 2 uses
  %.0610.i.i.i70.ph = phi i64 [ %i.d, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.jn, %middle.block195 ] ; 4 uses
  %.079.i.i.i71.ph = phi ptr [ %2, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.jo, %middle.block195 ] ; 2 uses
  %i.jt = add nsw i64 %.0610.i.i.i70.ph, -1
  %xtraiter245 = and i64 %.0610.i.i.i70.ph, 7     ; 2 uses
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %.lr.ph.i.i.i68.prol.loopexit, label %.lr.ph.i.i.i68.prol

.lr.ph.i.i.i68.prol:                              ; preds = %.lr.ph.i.i.i68.preheader, %.lr.ph.i.i.i68.prol
  %.011.i.i.i69.prol = phi ptr [ %i.jx, %.lr.ph.i.i.i68.prol ], [ %.011.i.i.i69.ph, %.lr.ph.i.i.i68.preheader ] ; 2 uses
  %.0610.i.i.i70.prol = phi i64 [ %i.ju, %.lr.ph.i.i.i68.prol ], [ %.0610.i.i.i70.ph, %.lr.ph.i.i.i68.preheader ]
  %.079.i.i.i71.prol = phi ptr [ %i.jw, %.lr.ph.i.i.i68.prol ], [ %.079.i.i.i71.ph, %.lr.ph.i.i.i68.preheader ] ; 2 uses
  %prol.iter247 = phi i64 [ %prol.iter247.next, %.lr.ph.i.i.i68.prol ], [ 0, %.lr.ph.i.i.i68.preheader ]
  %i.ju = add i64 %.0610.i.i.i70.prol, -1         ; 2 uses
  %i.jv = load i32, ptr %.079.i.i.i71.prol, align 4, !tbaa !65
  store i32 %i.jv, ptr %.011.i.i.i69.prol, align 4, !tbaa !65
  %i.jw = getelementptr inbounds nuw i8, ptr %.079.i.i.i71.prol, i64 4 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.011.i.i.i69.prol, i64 4 ; 2 uses
  %prol.iter247.next = add i64 %prol.iter247, 1   ; 2 uses
  %prol.iter247.cmp.not = icmp eq i64 %prol.iter247.next, %xtraiter245
  br i1 %prol.iter247.cmp.not, label %.lr.ph.i.i.i68.prol.loopexit, label %.lr.ph.i.i.i68.prol, !llvm.loop !451

.lr.ph.i.i.i68.prol.loopexit:                     ; preds = %.lr.ph.i.i.i68.prol, %.lr.ph.i.i.i68.preheader
  %.011.i.i.i69.unr = phi ptr [ %.011.i.i.i69.ph, %.lr.ph.i.i.i68.preheader ], [ %i.jx, %.lr.ph.i.i.i68.prol ]
  %.0610.i.i.i70.unr = phi i64 [ %.0610.i.i.i70.ph, %.lr.ph.i.i.i68.preheader ], [ %i.ju, %.lr.ph.i.i.i68.prol ]
  %.079.i.i.i71.unr = phi ptr [ %.079.i.i.i71.ph, %.lr.ph.i.i.i68.preheader ], [ %i.jw, %.lr.ph.i.i.i68.prol ]
  %i.jy = icmp ult i64 %i.jt, 7
  br i1 %i.jy, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i68

.lr.ph.i.i.i68:                                   ; preds = %.lr.ph.i.i.i68.prol.loopexit, %.lr.ph.i.i.i68
  %.011.i.i.i69 = phi ptr [ %i.kx, %.lr.ph.i.i.i68 ], [ %.011.i.i.i69.unr, %.lr.ph.i.i.i68.prol.loopexit ] ; 9 uses
  %.0610.i.i.i70 = phi i64 [ %i.ku, %.lr.ph.i.i.i68 ], [ %.0610.i.i.i70.unr, %.lr.ph.i.i.i68.prol.loopexit ]
  %.079.i.i.i71 = phi ptr [ %i.kw, %.lr.ph.i.i.i68 ], [ %.079.i.i.i71.unr, %.lr.ph.i.i.i68.prol.loopexit ] ; 9 uses
  %i.jz = load i32, ptr %.079.i.i.i71, align 4, !tbaa !65
  store i32 %i.jz, ptr %.011.i.i.i69, align 4, !tbaa !65
  %i.ka = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 4
  %i.kb = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 4
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !65
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !65
  %i.kd = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 8
  %i.kf = load i32, ptr %i.kd, align 4, !tbaa !65
  store i32 %i.kf, ptr %i.ke, align 4, !tbaa !65
  %i.kg = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 12
  %i.kh = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 12
  %i.ki = load i32, ptr %i.kg, align 4, !tbaa !65
  store i32 %i.ki, ptr %i.kh, align 4, !tbaa !65
  %i.kj = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 16
  %i.kk = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 16
  %i.kl = load i32, ptr %i.kj, align 4, !tbaa !65
  store i32 %i.kl, ptr %i.kk, align 4, !tbaa !65
  %i.km = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 20
  %i.kn = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 20
  %i.ko = load i32, ptr %i.km, align 4, !tbaa !65
  store i32 %i.ko, ptr %i.kn, align 4, !tbaa !65
  %i.kp = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 24
  %i.kq = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 24
  %i.kr = load i32, ptr %i.kp, align 4, !tbaa !65
  store i32 %i.kr, ptr %i.kq, align 4, !tbaa !65
  %i.ks = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 28
  %i.kt = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 28
  %i.ku = add i64 %.0610.i.i.i70, -8              ; 2 uses
  %i.kv = load i32, ptr %i.ks, align 4, !tbaa !65
  store i32 %i.kv, ptr %i.kt, align 4, !tbaa !65
  %i.kw = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 32
  %i.kx = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 32
  %.not.i.i.i72.7 = icmp eq i64 %i.ku, 0
  br i1 %.not.i.i.i72.7, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i68, !llvm.loop !452

.lr.ph.i48.i74:                                   ; preds = %bb.m, %.lr.ph.i48.i74
  %.018.i.i75 = phi ptr [ %i.lb, %.lr.ph.i48.i74 ], [ %i.ah, %bb.m ] ; 3 uses
  %.01517.i.i76 = phi ptr [ %i.lc, %.lr.ph.i48.i74 ], [ %i.hu, %bb.m ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i76) ]
  %i.ky = load i32, ptr %.018.i.i75, align 4, !tbaa !65
  store i32 %i.ky, ptr %.01517.i.i76, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i75, align 4, !tbaa !65
  %i.kz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.la = add i32 %i.kz, 1
  store i32 %i.la, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.lb = getelementptr inbounds nuw i8, ptr %.018.i.i75, i64 4 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.01517.i.i76, i64 4 ; 3 uses
  %.not.i49.i77 = icmp eq ptr %i.lb, %1
  br i1 %.not.i49.i77, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i74, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i74
  %i.ld = sub nsw i64 %i.d, %i.ax                 ; 3 uses
  %.neg = add nsw i64 %i.ax, 1
  %xtraiter248 = and i64 %i.ld, 1
  %i.le = icmp eq i64 %i.d, %.neg
  br i1 %i.le, label %.lr.ph.i.i50.i.epil.preheader, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %unroll_iter253 = and i64 %i.ld, -2
  br label %.lr.ph.i.i50.i

.lr.ph.i.i50.i:                                   ; preds = %.lr.ph.i.i50.i, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new
  %indvar201 = phi i64 [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new ], [ %indvar.next202.1, %.lr.ph.i.i50.i ] ; 2 uses
  %.0919.i.i.i79 = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new ], [ %i.lm, %.lr.ph.i.i50.i ] ; 3 uses
  %.01618.i.i.i80 = phi ptr [ %i.lc, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new ], [ %i.ln, %.lr.ph.i.i50.i ] ; 3 uses
  %niter254 = phi i64 [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new ], [ %niter254.next.1, %.lr.ph.i.i50.i ]
  %i.lf = load i32, ptr %.0919.i.i.i79, align 4, !tbaa !65
  store i32 %i.lf, ptr %.01618.i.i.i80, align 4, !tbaa !65
  %i.lg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 2 uses
  %i.lh = add i32 %i.lg, 1
  store i32 %i.lh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
end_hunk_3
