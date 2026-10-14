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
  %i.b = load ptr, ptr %0, align 8, !tbaa !62     ; 10 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !63
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !69   ; 3 uses
  %i.n = zext i16 %i.m to i64                     ; 6 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 17 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i16, ptr %i.q, align 4, !tbaa !70
  %i.s = zext i16 %i.r to i64
  %i.t = sub nsw i64 %i.s, %i.n
  %.not64 = icmp ult i64 %i.t, %i.a
  br i1 %.not64, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not12.i = icmp eq i64 %3, %5
  br i1 %.not12.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %xtraiter232 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.014.i.prol = phi ptr [ %i.y, %.lr.ph.i.prol ], [ %i.o, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.2.013.i.prol = phi i64 [ %i.x, %.lr.ph.i.prol ], [ %3, %.lr.ph.i.preheader ]
  %prol.iter234 = phi i64 [ %prol.iter234.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i.prol) ]
  %i.u = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.u, ptr %.014.i.prol, align 4, !tbaa !65
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.x = add i64 %.sroa.2.013.i.prol, -1          ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.prol, i64 4 ; 2 uses
  %prol.iter234.next = add i64 %prol.iter234, 1   ; 2 uses
  %prol.iter234.cmp.not = icmp eq i64 %prol.iter234.next, %xtraiter232
  br i1 %prol.iter234.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !138

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.014.i.unr = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph.i.prol ]
  %.sroa.2.013.i.unr = phi i64 [ %3, %.lr.ph.i.preheader ], [ %i.x, %.lr.ph.i.prol ]
  %i.z = sub i64 %5, %3
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.014.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.014.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.sroa.2.013.i = phi i64 [ %i.an, %.lr.ph.i ], [ %.sroa.2.013.i.unr, %.lr.ph.i.prol.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i) ]
  %i.ab = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ab, ptr %.014.i, align 4, !tbaa !65
  %i.ac = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i, i64 4
  %i.af = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !65
  %i.ag = add i32 %i.ac, 2
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  %i.ai = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !65
  %i.aj = add i32 %i.ac, 3
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %.014.i, i64 12
  %i.al = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !65
  %i.am = add i32 %i.ac, 4
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.an = add i64 %.sroa.2.013.i, -4              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.014.i, i64 16
  %.not.i.3 = icmp eq i64 %i.an, %5
  br i1 %.not.i.3, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !0

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.e
  %i.ap = trunc i64 %i.a to i16
  %i.aq = add i16 %i.m, %i.ap
  store i16 %i.aq, ptr %i.l, align 2, !tbaa !73
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !63 ; 3 uses
  %i.at = zext i16 %i.as to i64                   ; 7 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.at ; 16 uses
  %i.av = icmp eq ptr %1, %i.au
  br i1 %i.av, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not63 = icmp ugt i64 %i.a, %i.at
  br i1 %.not63, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not12.i65 = icmp eq i64 %3, %5
  br i1 %.not12.i65, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, label %.lr.ph.i66.preheader

.lr.ph.i66.preheader:                             ; preds = %bb.h
  %i.aw = sub nsw i64 0, %i.a
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw ; 2 uses
  %xtraiter229 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %.lr.ph.i66.prol.loopexit, label %.lr.ph.i66.prol

.lr.ph.i66.prol:                                  ; preds = %.lr.ph.i66.preheader, %.lr.ph.i66.prol
  %.014.i67.prol = phi ptr [ %i.bc, %.lr.ph.i66.prol ], [ %i.ax, %.lr.ph.i66.preheader ] ; 3 uses
  %.sroa.2.013.i68.prol = phi i64 [ %i.bb, %.lr.ph.i66.prol ], [ %3, %.lr.ph.i66.preheader ]
  %prol.iter231 = phi i64 [ %prol.iter231.next, %.lr.ph.i66.prol ], [ 0, %.lr.ph.i66.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i67.prol) ]
  %i.ay = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ay, ptr %.014.i67.prol, align 4, !tbaa !65
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bb = add i64 %.sroa.2.013.i68.prol, -1       ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i67.prol, i64 4 ; 2 uses
  %prol.iter231.next = add i64 %prol.iter231, 1   ; 2 uses
  %prol.iter231.cmp.not = icmp eq i64 %prol.iter231.next, %xtraiter229
  br i1 %prol.iter231.cmp.not, label %.lr.ph.i66.prol.loopexit, label %.lr.ph.i66.prol, !llvm.loop !139

.lr.ph.i66.prol.loopexit:                         ; preds = %.lr.ph.i66.prol, %.lr.ph.i66.preheader
  %.014.i67.unr = phi ptr [ %i.ax, %.lr.ph.i66.preheader ], [ %i.bc, %.lr.ph.i66.prol ]
  %.sroa.2.013.i68.unr = phi i64 [ %3, %.lr.ph.i66.preheader ], [ %i.bb, %.lr.ph.i66.prol ]
  %i.bd = sub i64 %5, %3
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %.lr.ph.i66.prol.loopexit, %.lr.ph.i66
  %.014.i67 = phi ptr [ %i.bs, %.lr.ph.i66 ], [ %.014.i67.unr, %.lr.ph.i66.prol.loopexit ] ; 6 uses
  %.sroa.2.013.i68 = phi i64 [ %i.br, %.lr.ph.i66 ], [ %.sroa.2.013.i68.unr, %.lr.ph.i66.prol.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i67) ]
  %i.bf = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.bf, ptr %.014.i67, align 4, !tbaa !65
  %i.bg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bi = getelementptr inbounds nuw i8, ptr %.014.i67, i64 4
  %i.bj = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !65
  %i.bk = add i32 %i.bg, 2
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bl = getelementptr inbounds nuw i8, ptr %.014.i67, i64 8
  %i.bm = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !65
  %i.bn = add i32 %i.bg, 3
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i67, i64 12
  %i.bp = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !65
  %i.bq = add i32 %i.bg, 4
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.br = add i64 %.sroa.2.013.i68, -4            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i67, i64 16
  %.not.i69.3 = icmp eq i64 %i.br, %5
  br i1 %.not.i69.3, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, label %.lr.ph.i66, !llvm.loop !0

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71: ; preds = %.lr.ph.i66.prol.loopexit, %.lr.ph.i66, %bb.h
  %i.bt = trunc nuw i64 %i.a to i16
  %i.bu = sub i16 %i.as, %i.bt                    ; 2 uses
  store i16 %i.bu, ptr %i.ar, align 8, !tbaa !81
  %i.bv = zext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bv
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.bx = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.by = ptrtoint ptr %i.au to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2                 ; 9 uses
  %i.cb = sub nsw i64 %i.n, %i.at
  %i.cc = lshr i64 %i.cb, 1
  %.not105 = icmp ult i64 %i.ca, %i.cc
  br i1 %.not105, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !70
  %i.cf = zext i16 %i.ce to i64
  %i.cg = sub nsw i64 %i.cf, %i.n
  %.not62 = icmp ult i64 %i.cg, %i.a
  br i1 %.not62, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = ptrtoint ptr %i.o to i64
  %i.ci = sub i64 %i.ch, %i.bx
  %i.cj = ashr exact i64 %i.ci, 2                 ; 8 uses
  %.not.i72 = icmp ult i64 %i.cj, %i.a
  br i1 %.not.i72, label %.lr.ph.i48.preheader.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = sub i64 0, %i.a
  %i.cl = getelementptr [4 x i8], ptr %i.o, i64 %i.ck ; 10 uses
  %.neg = add i64 %5, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %bb.l
  %i.cm = add nsw i64 %i.a, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !65
  store i32 %i.cn, ptr %i.o, align 4, !tbaa !65
  store i32 0, ptr %i.cl, align 4, !tbaa !65
  %i.co = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %bb.l
  %.020.i.i.unr = phi i64 [ %i.a, %bb.l ], [ %i.cm, %.lr.ph.i.i.prol ]
  %.0819.i.i.unr = phi ptr [ %i.cl, %bb.l ], [ %i.cq, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.l ], [ %i.cr, %.lr.ph.i.i.prol ]
  %i.cs = icmp eq i64 %3, %.neg
  br i1 %i.cs, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.cy, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %.0819.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.ct = load i32, ptr %.0819.i.i, align 4, !tbaa !65
  store i32 %i.ct, ptr %.01618.i.i, align 4, !tbaa !65
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !65
  %i.cu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cw = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.cy = add i64 %.020.i.i, -2                   ; 2 uses
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !65
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !65
  store i32 0, ptr %i.cw, align 4, !tbaa !65
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dc = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i.1 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.cl
  br i1 %.not8.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.de = shl i64 %3, 2
  %i.df = add i64 %5, %i.n
  %i.dg = shl i64 %i.df, 2
  %i.dh = add i64 %i.dg, %i.c
  %i.di = add i64 %i.dh, -4
  %i.dj = add i64 %i.de, %i.bx
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 188
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader218, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.dn = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.do = shl i64 %5, 2                           ; 2 uses
  %i.dp = shl i64 %3, 2                           ; 2 uses
  %i.dq = add i64 %i.do, %i.c
  %i.dr = add i64 %i.dq, %i.dn
  %i.ds = add i64 %i.dr, -4
  %i.dt = add i64 %i.dp, %i.bx
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
  %bound0 = icmp ult ptr %i.dy, %i.cl
  %bound1 = icmp ult ptr %i.ed, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader218, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 9223372036854775800     ; 3 uses
  %i.ee = mul i64 %n.vec, -4                      ; 2 uses
  %i.ef = getelementptr i8, ptr %i.o, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.cl, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.eh ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.cl, i64 %i.eh ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %next.gep136, i64 -16 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %next.gep136, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ei, align 4, !tbaa !65, !alias.scope !160
  %wide.load137 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !65, !alias.scope !160
  %i.ek = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.el = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ek, align 4, !tbaa !65, !alias.scope !161, !noalias !160
  store <4 x i32> %wide.load137, ptr %i.el, align 4, !tbaa !65, !alias.scope !161, !noalias !160
  store <4 x i32> zeroinitializer, ptr %i.ei, align 4, !tbaa !65, !alias.scope !160
  store <4 x i32> zeroinitializer, ptr %i.ej, align 4, !tbaa !65, !alias.scope !160
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i40.i.preheader218

.lr.ph.i40.i.preheader218:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.ef, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i40.i.preheader ], [ %i.eg, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader218, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.eo, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader218 ]
  %.079.i.i = phi ptr [ %i.en, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader218 ]
  %i.en = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.eo = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !65
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !65
  store i32 0, ptr %i.en, align 4, !tbaa !65
  %.not.i41.i = icmp eq ptr %1, %i.en
  br i1 %.not.i41.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i40.i, !llvm.loop !144

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %.pre.i.i.i = load i32, ptr %2, align 4, !tbaa !65 ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph.preheader.i.i.i
  %n.vec142 = and i64 %i.a, -8                    ; 3 uses
  %i.eq = and i64 %i.a, 7
  %i.er = shl i64 %n.vec142, 2
  %i.es = getelementptr i8, ptr %1, i64 %i.er
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next146, %vector.body143 ] ; 2 uses
  %i.et = shl i64 %index144, 2
  %next.gep145 = getelementptr i8, ptr %1, i64 %i.et ; 2 uses
  %i.eu = getelementptr i8, ptr %next.gep145, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep145, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat, ptr %i.eu, align 4, !tbaa !65
  %index.next146 = add nuw i64 %index144, 8       ; 2 uses
  %i.ev = icmp eq i64 %index.next146, %n.vec142
  br i1 %i.ev, label %middle.block147, label %vector.body143, !llvm.loop !145

middle.block147:                                  ; preds = %vector.body143
  %cmp.n148 = icmp eq i64 %i.a, %n.vec142
  br i1 %cmp.n148, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block147
  %.012.i.i.i.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i ], [ %i.eq, %middle.block147 ]
  %.0511.i.i.i.ph = phi ptr [ %1, %.lr.ph.preheader.i.i.i ], [ %i.es, %middle.block147 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.ew, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.0511.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i ], [ %.0511.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ew = add i64 %.012.i.i.i, -1                 ; 2 uses
  store i32 %.pre.i.i.i, ptr %.0511.i.i.i, align 4, !tbaa !65
  %i.ex = getelementptr inbounds nuw i8, ptr %.0511.i.i.i, i64 4
  %.not.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !146

.lr.ph.i48.preheader.i:                           ; preds = %bb.k
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

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
  %.not.i49.i = icmp eq ptr %i.fc, %i.o
  br i1 %.not.i49.i, label %.lr.ph.preheader.i.i54.i, label %.lr.ph.i48.i, !llvm.loop !8

.lr.ph.preheader.i.i54.i:                         ; preds = %.lr.ph.i48.i
  %.pre.i.i55.i = load i32, ptr %2, align 4, !tbaa !65 ; 2 uses
  %min.iters.check152 = icmp ult i64 %i.cj, 8
  br i1 %min.iters.check152, label %.lr.ph.i.i56.i.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %.lr.ph.preheader.i.i54.i
  %n.vec154 = and i64 %i.cj, -8                   ; 3 uses
  %i.fe = and i64 %i.cj, 7
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
  %cmp.n162 = icmp eq i64 %i.cj, %n.vec154
  br i1 %cmp.n162, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i, label %.lr.ph.i.i56.i.preheader

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.preheader.i.i54.i, %middle.block161
  %.012.i.i57.i.ph = phi i64 [ %i.cj, %.lr.ph.preheader.i.i54.i ], [ %i.fe, %middle.block161 ]
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
  %i.fm = sub i64 %i.a, %i.cj                     ; 3 uses
  %xtraiter219 = and i64 %i.fm, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod220.not, label %.lr.ph.i.i66.i.prol.loopexit, label %.lr.ph.i.i66.i.prol

.lr.ph.i.i66.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i, %.lr.ph.i.i66.i.prol
  %.022.i.i.i.prol = phi i64 [ %i.fr, %.lr.ph.i.i66.i.prol ], [ %i.fm, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ]
  %.01821.i.i.i.prol = phi ptr [ %i.fq, %.lr.ph.i.i66.i.prol ], [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ] ; 3 uses
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
  %.01821.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ], [ %i.fq, %.lr.ph.i.i66.i.prol ]
  %i.fs = sub i64 %i.cj, %3
  %i.ft = add i64 %i.fs, %5
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i66.i

.lr.ph.i.i66.i:                                   ; preds = %.lr.ph.i.i66.i.prol.loopexit, %.lr.ph.i.i66.i
end_hunk_0
begin_hunk_1_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SF_:bb.a
  %lcmp.mod227.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol

.lr.ph.i.i53.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, %.lr.ph.i.i53.i.prol
  %.022.i.i.i96.prol = phi i64 [ %i.jb, %.lr.ph.i.i53.i.prol ], [ %i.iw, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %.01821.i.i.i97.prol = phi ptr [ %i.ja, %.lr.ph.i.i53.i.prol ], [ %i.iv, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ] ; 2 uses
  %prol.iter228 = phi i64 [ %prol.iter228.next, %.lr.ph.i.i53.i.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %i.ix = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ix, ptr %.01821.i.i.i97.prol, align 4, !tbaa !65
  %i.iy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.iz = add i32 %i.iy, 1
  store i32 %i.iz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ja = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97.prol, i64 4 ; 2 uses
  %i.jb = add nsw i64 %.022.i.i.i96.prol, -1      ; 2 uses
  %prol.iter228.next = add i64 %prol.iter228, 1   ; 2 uses
  %prol.iter228.cmp.not = icmp eq i64 %prol.iter228.next, %xtraiter226
  br i1 %prol.iter228.cmp.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol, !llvm.loop !157

.lr.ph.i.i53.i.prol.loopexit:                     ; preds = %.lr.ph.i.i53.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.022.i.i.i96.unr = phi i64 [ %i.iw, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.jb, %.lr.ph.i.i53.i.prol ]
  %.01821.i.i.i97.unr = phi ptr [ %i.iv, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ja, %.lr.ph.i.i53.i.prol ]
  %i.jc = sub i64 %i.ca, %3
  %i.jd = add i64 %i.jc, %5
  %i.je = icmp ugt i64 %i.jd, -4
  br i1 %i.je, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i.prol.loopexit, %.lr.ph.i.i53.i
  %.022.i.i.i96 = phi i64 [ %i.js, %.lr.ph.i.i53.i ], [ %.022.i.i.i96.unr, %.lr.ph.i.i53.i.prol.loopexit ]
  %.01821.i.i.i97 = phi ptr [ %i.jr, %.lr.ph.i.i53.i ], [ %.01821.i.i.i97.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 5 uses
  %i.jf = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.jf, ptr %.01821.i.i.i97, align 4, !tbaa !65
  %i.jg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ji = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 4
  %i.jj = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.jj, ptr %i.ji, align 4, !tbaa !65
  %i.jk = add i32 %i.jg, 2
  store i32 %i.jk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jl = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 8
  %i.jm = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.jm, ptr %i.jl, align 4, !tbaa !65
  %i.jn = add i32 %i.jg, 3
  store i32 %i.jn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jo = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 12
  %i.jp = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.jp, ptr %i.jo, align 4, !tbaa !65
  %i.jq = add i32 %i.jg, 4
  store i32 %i.jq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jr = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 16
  %i.js = add nsw i64 %.022.i.i.i96, -4           ; 2 uses
  %.not.i.i54.i.3 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i54.i.3, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i, !llvm.loop !10

.lr.ph.preheader.i.i61.i:                         ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.i.prol.loopexit
  %.pre.i.i62.i = load i32, ptr %2, align 4, !tbaa !65 ; 2 uses
  %min.iters.check200 = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check200, label %.lr.ph.i.i63.i.preheader, label %vector.ph201

vector.ph201:                                     ; preds = %.lr.ph.preheader.i.i61.i
  %n.vec202 = and i64 %i.ca, -8                   ; 3 uses
  %i.jt = and i64 %i.ca, 7
  %i.ju = shl nsw i64 %n.vec202, 2
  %i.jv = getelementptr i8, ptr %i.au, i64 %i.ju
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %.pre.i.i62.i, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph201
  %index206 = phi i64 [ 0, %vector.ph201 ], [ %index.next208, %vector.body205 ] ; 2 uses
  %i.jw = shl i64 %index206, 2
  %next.gep207 = getelementptr i8, ptr %i.au, i64 %i.jw ; 2 uses
  %i.jx = getelementptr i8, ptr %next.gep207, i64 16
  store <4 x i32> %broadcast.splat204, ptr %next.gep207, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat204, ptr %i.jx, align 4, !tbaa !65
  %index.next208 = add nuw i64 %index206, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next208, %n.vec202
  br i1 %i.jy, label %middle.block209, label %vector.body205, !llvm.loop !158

middle.block209:                                  ; preds = %vector.body205
  %cmp.n210 = icmp eq i64 %i.ca, %n.vec202
  br i1 %cmp.n210, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i63.i.preheader

.lr.ph.i.i63.i.preheader:                         ; preds = %.lr.ph.preheader.i.i61.i, %middle.block209
  %.012.i.i64.i.ph = phi i64 [ %i.ca, %.lr.ph.preheader.i.i61.i ], [ %i.jt, %middle.block209 ]
  %.0511.i.i65.i.ph = phi ptr [ %i.au, %.lr.ph.preheader.i.i61.i ], [ %i.jv, %middle.block209 ]
  br label %.lr.ph.i.i63.i

.lr.ph.i.i63.i:                                   ; preds = %.lr.ph.i.i63.i.preheader, %.lr.ph.i.i63.i
  %.012.i.i64.i = phi i64 [ %i.jz, %.lr.ph.i.i63.i ], [ %.012.i.i64.i.ph, %.lr.ph.i.i63.i.preheader ]
  %.0511.i.i65.i = phi ptr [ %i.ka, %.lr.ph.i.i63.i ], [ %.0511.i.i65.i.ph, %.lr.ph.i.i63.i.preheader ] ; 2 uses
  %i.jz = add i64 %.012.i.i64.i, -1               ; 2 uses
  store i32 %.pre.i.i62.i, ptr %.0511.i.i65.i, align 4, !tbaa !65
  %i.ka = getelementptr inbounds nuw i8, ptr %.0511.i.i65.i, i64 4
  %.not.i.i66.i = icmp eq i64 %i.jz, 0
  br i1 %.not.i.i66.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i63.i, !llvm.loop !159

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i87, %.lr.ph.i.i63.i, %middle.block195, %middle.block209
  %i.kb = trunc nuw i64 %i.a to i16
  %i.kc = sub i16 %i.as, %i.kb
  store i16 %i.kc, ptr %i.ar, align 8, !tbaa !81
  %i.kd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gl
  br label %bb.o

.thread:                                          ; preds = %bb.j, %bb.m, %bb.g, %bb.d
  %i.ke = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %i.a, ptr %2, i64 %3)
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, %bb.b
  %.1 = phi ptr [ %i.k, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit ], [ %i.ke, %.thread ], [ %i.bw, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ], [ %i.kd, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6insertEPKS3_St16initializer_listIS3_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  %i.b = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeIPKS3_EEPS3_SB_T_SD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5eraseEPKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e ; 4 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !69   ; 2 uses
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.l ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.i, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not8.i.i.i = icmp eq ptr %i.f, %1
  br i1 %.not8.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.a, %bb.b ]
  %.079.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %1, %bb.b ]
  %i.r = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.t = load i32, ptr %i.r, align 4, !tbaa !65
  store i32 %i.t, ptr %i.s, align 4, !tbaa !65
  store i32 0, ptr %i.r, align 4, !tbaa !65
  %.not.i.i.i = icmp eq ptr %i.f, %i.r
  br i1 %.not.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.b
  store i32 -2147483648, ptr %i.f, align 4, !tbaa !65
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.w = add i16 %i.d, 1
  store i16 %i.w, ptr %i.c, align 8, !tbaa !81
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5eraseEPKS3_SA_.exit

bb.c:                                             ; preds = %bb.a
  %.not8.i26.i.i = icmp eq ptr %i.a, %i.m
  br i1 %.not8.i26.i.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i, label %.lr.ph.i27.i.i

.lr.ph.i27.i.i:                                   ; preds = %bb.c, %.lr.ph.i27.i.i
  %.010.i28.i.i = phi ptr [ %i.z, %.lr.ph.i27.i.i ], [ %1, %bb.c ] ; 2 uses
  %.079.i29.i.i = phi ptr [ %i.y, %.lr.ph.i27.i.i ], [ %i.a, %bb.c ] ; 3 uses
  %i.x = load i32, ptr %.079.i29.i.i, align 4, !tbaa !65
  store i32 %i.x, ptr %.010.i28.i.i, align 4, !tbaa !65
  store i32 0, ptr %.079.i29.i.i, align 4, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %.079.i29.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i28.i.i, i64 4
  %.not.i30.i.i = icmp eq ptr %i.y, %i.m
  br i1 %.not.i30.i.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i, label %.lr.ph.i27.i.i, !llvm.loop !13

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i: ; preds = %.lr.ph.i27.i.i, %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.m, i64 -4
  store i32 -2147483648, ptr %i.aa, align 4, !tbaa !65
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ac = add i32 %i.ab, -1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ad = add i16 %i.k, -1
  store i16 %i.ad, ptr %i.j, align 2, !tbaa !73
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5eraseEPKS3_SA_.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5eraseEPKS3_SA_.exit: ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i
  %.024.i.i = phi ptr [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i ], [ %1, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i ]
  ret ptr %.024.i.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5eraseEPKS3_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %3 = ptrtoaddr ptr %i.a to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d ; 5 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !69   ; 2 uses
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.k ; 5 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = sub i64 %i.f, %i.n                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp ult i64 %i.h, %i.o
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq ptr %i.e, %1
  br i1 %.not8.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.s = shl nuw nsw i64 %i.d, 2
  %i.t = add i64 %i.n, -4
  %i.u = sub i64 %i.t, %3                         ; 2 uses
  %i.v = sub i64 %i.u, %i.s                       ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check18 = icmp ult i64 %i.v, 92
  br i1 %min.iters.check18, label %.lr.ph.i.i.preheader36, label %vector.memcheck19

vector.memcheck19:                                ; preds = %.lr.ph.i.i.preheader
  %i.y = shl nuw nsw i64 %i.d, 2
  %i.z = xor i64 %i.u, -1
  %.not = add i64 %i.y, %i.z
  %i.aa = and i64 %.not, -4                       ; 2 uses
  %i.ab = getelementptr i8, ptr %2, i64 %i.aa
  %i.ac = getelementptr i8, ptr %1, i64 %i.aa
  %bound020 = icmp ult ptr %i.ab, %1
  %bound121 = icmp ult ptr %i.ac, %2
  %found.conflict22 = and i1 %bound020, %bound121
  br i1 %found.conflict22, label %.lr.ph.i.i.preheader36, label %vector.ph23

vector.ph23:                                      ; preds = %vector.memcheck19
  %n.vec24 = and i64 %i.x, 9223372036854775800    ; 3 uses
  %i.ad = mul i64 %n.vec24, -4                    ; 2 uses
  %i.ae = getelementptr i8, ptr %2, i64 %i.ad
  %i.af = getelementptr i8, ptr %1, i64 %i.ad
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph23
  %index26 = phi i64 [ 0, %vector.ph23 ], [ %index.next31, %vector.body25 ] ; 2 uses
  %i.ag = mul i64 %index26, -4                    ; 2 uses
  %next.gep27 = getelementptr i8, ptr %2, i64 %i.ag ; 2 uses
  %next.gep28 = getelementptr i8, ptr %1, i64 %i.ag ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %next.gep28, i64 -16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %next.gep28, i64 -32 ; 2 uses
  %wide.load29 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !65, !alias.scope !174
  %wide.load30 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !65, !alias.scope !174
  %i.aj = getelementptr inbounds i8, ptr %next.gep27, i64 -16
  %i.ak = getelementptr inbounds i8, ptr %next.gep27, i64 -32
  store <4 x i32> %wide.load29, ptr %i.aj, align 4, !tbaa !65, !alias.scope !175, !noalias !174
  store <4 x i32> %wide.load30, ptr %i.ak, align 4, !tbaa !65, !alias.scope !175, !noalias !174
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !65, !alias.scope !174
  store <4 x i32> zeroinitializer, ptr %i.ai, align 4, !tbaa !65, !alias.scope !174
  %index.next31 = add nuw i64 %index26, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next31, %n.vec24
  br i1 %i.al, label %middle.block32, label %vector.body25, !llvm.loop !167

middle.block32:                                   ; preds = %vector.body25
  %cmp.n33 = icmp eq i64 %i.x, %n.vec24
  br i1 %cmp.n33, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i.i.preheader36

.lr.ph.i.i.preheader36:                           ; preds = %vector.memcheck19, %.lr.ph.i.i.preheader, %middle.block32
  %.010.i.i.ph = phi ptr [ %2, %vector.memcheck19 ], [ %2, %.lr.ph.i.i.preheader ], [ %i.ae, %middle.block32 ]
  %.079.i.i.ph = phi ptr [ %1, %vector.memcheck19 ], [ %1, %.lr.ph.i.i.preheader ], [ %i.af, %middle.block32 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader36, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader36 ]
  %.079.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader36 ]
  %i.am = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !65
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !65
  store i32 0, ptr %i.am, align 4, !tbaa !65
  %.not.i.i = icmp eq ptr %i.e, %i.am
  br i1 %.not.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !168

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %.lr.ph.i.i, %middle.block32, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  %.not2534.i = icmp eq ptr %2, %1
  br i1 %.not2534.i, label %._crit_edge37.i, label %.lr.ph36.i

._crit_edge37.i:                                  ; preds = %.lr.ph36.i, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %i.aq = trunc i64 %i.q to i16
  %i.ar = add i16 %i.c, %i.aq
  store i16 %i.ar, ptr %i.b, align 8, !tbaa !81
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5eraseEPS3_S9_.exit

.lr.ph36.i:                                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph36.i
  %.02335.i = phi ptr [ %i.au, %.lr.ph36.i ], [ %i.e, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  store i32 -2147483648, ptr %.02335.i, align 4, !tbaa !65
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.au = getelementptr inbounds nuw i8, ptr %.02335.i, i64 4 ; 2 uses
  %.not25.i = icmp eq ptr %i.au, %i.ap
  br i1 %.not25.i, label %._crit_edge37.i, label %.lr.ph36.i, !llvm.loop !14

bb.c:                                             ; preds = %bb.a
  %.not8.i26.i = icmp eq ptr %2, %i.l
  br i1 %.not8.i26.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i27.i.preheader

.lr.ph.i27.i.preheader:                           ; preds = %bb.c
  %i.av = shl nuw nsw i64 %i.k, 2
  %i.aw = add i64 %i.av, %3
  %i.ax = add i64 %i.aw, -4
  %i.ay = sub i64 %i.ax, %i.f                     ; 2 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 92
  br i1 %min.iters.check, label %.lr.ph.i27.i.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i27.i.preheader
  %i.bb = shl nuw nsw i64 %i.k, 2
  %i.bc = add i64 %i.bb, %3
  %i.bd = add i64 %i.bc, -4
  %i.be = sub i64 %i.bd, %i.f
  %i.bf = and i64 %i.be, -4
  %i.bg = add i64 %i.bf, 4                        ; 2 uses
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %i.bi = getelementptr i8, ptr %2, i64 %i.bg
  %bound0 = icmp ult ptr %1, %i.bi
  %bound1 = icmp ult ptr %2, %i.bh
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i27.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %1, i64 %i.bj
  %i.bl = getelementptr i8, ptr %2, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %next.gep9 = getelementptr i8, ptr %2, i64 %i.bm ; 3 uses
  %i.bn = getelementptr i8, ptr %next.gep9, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep9, align 4, !tbaa !65, !alias.scope !176
  %wide.load10 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !65, !alias.scope !176
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !65, !alias.scope !177, !noalias !176
  store <4 x i32> %wide.load10, ptr %i.bo, align 4, !tbaa !65, !alias.scope !177, !noalias !176
  store <4 x i32> zeroinitializer, ptr %next.gep9, align 4, !tbaa !65, !alias.scope !176
  store <4 x i32> zeroinitializer, ptr %i.bn, align 4, !tbaa !65, !alias.scope !176
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i27.i.preheader37

.lr.ph.i27.i.preheader37:                         ; preds = %vector.memcheck, %.lr.ph.i27.i.preheader, %middle.block
  %.010.i28.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i27.i.preheader ], [ %i.bk, %middle.block ]
  %.079.i29.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i27.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i.preheader37, %.lr.ph.i27.i
  %.010.i28.i = phi ptr [ %i.bs, %.lr.ph.i27.i ], [ %.010.i28.i.ph, %.lr.ph.i27.i.preheader37 ] ; 2 uses
  %.079.i29.i = phi ptr [ %i.br, %.lr.ph.i27.i ], [ %.079.i29.i.ph, %.lr.ph.i27.i.preheader37 ] ; 3 uses
  %i.bq = load i32, ptr %.079.i29.i, align 4, !tbaa !65
  store i32 %i.bq, ptr %.010.i28.i, align 4, !tbaa !65
  store i32 0, ptr %.079.i29.i, align 4, !tbaa !65
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i29.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i28.i, i64 4
  %.not.i30.i = icmp eq ptr %i.br, %i.l
  br i1 %.not.i30.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i27.i, !llvm.loop !173

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %.lr.ph.i27.i, %middle.block, %bb.c
  %.not32.i = icmp eq ptr %2, %1
  br i1 %.not32.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.idx.i = sub i64 0, %i.p
  %i.bt = getelementptr inbounds i8, ptr %i.l, i64 %.idx.i
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %i.bu = trunc i64 %i.q to i16
  %i.bv = sub i16 %i.j, %i.bu
  store i16 %i.bv, ptr %i.i, align 2, !tbaa !73
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5eraseEPS3_S9_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.033.i = phi ptr [ %i.by, %.lr.ph.i ], [ %i.bt, %.lr.ph.preheader.i ] ; 2 uses
  store i32 -2147483648, ptr %.033.i, align 4, !tbaa !65
  %i.bw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.by = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.by, %i.l
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !15

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5eraseEPS3_S9_.exit: ; preds = %._crit_edge37.i, %._crit_edge.i
  %.024.i = phi ptr [ %2, %._crit_edge37.i ], [ %1, %._crit_edge.i ]
  ret ptr %.024.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16unconst_iteratorEPKS3_(ptr noundef %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5eraseEPS3_S9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %3 = ptrtoaddr ptr %i.a to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d ; 5 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !69   ; 2 uses
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.k ; 5 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = sub i64 %i.f, %i.n                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp ult i64 %i.h, %i.o
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not8.i = icmp eq ptr %i.e, %1
  br i1 %.not8.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.s = shl nuw nsw i64 %i.d, 2
  %i.t = add i64 %i.n, -4
  %i.u = sub i64 %i.t, %3                         ; 2 uses
  %i.v = sub i64 %i.u, %i.s                       ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check51 = icmp ult i64 %i.v, 92
  br i1 %min.iters.check51, label %.lr.ph.i.preheader70, label %vector.memcheck52

vector.memcheck52:                                ; preds = %.lr.ph.i.preheader
  %i.y = shl nuw nsw i64 %i.d, 2
  %i.z = xor i64 %i.u, -1
  %.not69 = add i64 %i.y, %i.z
  %i.aa = and i64 %.not69, -4                     ; 2 uses
  %i.ab = getelementptr i8, ptr %2, i64 %i.aa
  %i.ac = getelementptr i8, ptr %1, i64 %i.aa
  %bound053 = icmp ult ptr %i.ab, %1
  %bound154 = icmp ult ptr %i.ac, %2
  %found.conflict55 = and i1 %bound053, %bound154
  br i1 %found.conflict55, label %.lr.ph.i.preheader70, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck52
  %n.vec57 = and i64 %i.x, 9223372036854775800    ; 3 uses
  %i.ad = mul i64 %n.vec57, -4                    ; 2 uses
  %i.ae = getelementptr i8, ptr %2, i64 %i.ad
  %i.af = getelementptr i8, ptr %1, i64 %i.ad
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next64, %vector.body58 ] ; 2 uses
  %i.ag = mul i64 %index59, -4                    ; 2 uses
  %next.gep60 = getelementptr i8, ptr %2, i64 %i.ag ; 2 uses
  %next.gep61 = getelementptr i8, ptr %1, i64 %i.ag ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %next.gep61, i64 -16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %next.gep61, i64 -32 ; 2 uses
  %wide.load62 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !65, !alias.scope !188
  %wide.load63 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !65, !alias.scope !188
  %i.aj = getelementptr inbounds i8, ptr %next.gep60, i64 -16
  %i.ak = getelementptr inbounds i8, ptr %next.gep60, i64 -32
  store <4 x i32> %wide.load62, ptr %i.aj, align 4, !tbaa !65, !alias.scope !189, !noalias !188
  store <4 x i32> %wide.load63, ptr %i.ak, align 4, !tbaa !65, !alias.scope !189, !noalias !188
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !65, !alias.scope !188
  store <4 x i32> zeroinitializer, ptr %i.ai, align 4, !tbaa !65, !alias.scope !188
  %index.next64 = add nuw i64 %index59, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next64, %n.vec57
  br i1 %i.al, label %middle.block65, label %vector.body58, !llvm.loop !181

middle.block65:                                   ; preds = %vector.body58
  %cmp.n66 = icmp eq i64 %i.x, %n.vec57
  br i1 %cmp.n66, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i.preheader70

.lr.ph.i.preheader70:                             ; preds = %vector.memcheck52, %.lr.ph.i.preheader, %middle.block65
  %.010.i.ph = phi ptr [ %2, %vector.memcheck52 ], [ %2, %.lr.ph.i.preheader ], [ %i.ae, %middle.block65 ]
  %.079.i.ph = phi ptr [ %1, %vector.memcheck52 ], [ %1, %.lr.ph.i.preheader ], [ %i.af, %middle.block65 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader70, %.lr.ph.i
  %.010.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader70 ]
  %.079.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader70 ]
  %i.am = getelementptr inbounds i8, ptr %.079.i, i64 -4 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %.010.i, i64 -4 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !65
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !65
  store i32 0, ptr %i.am, align 4, !tbaa !65
  %.not.i = icmp eq ptr %i.e, %i.am
  br i1 %.not.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i, !llvm.loop !182

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i, %middle.block65, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  %.not2534 = icmp eq ptr %2, %1
  br i1 %.not2534, label %._crit_edge37, label %.lr.ph36

._crit_edge37:                                    ; preds = %.lr.ph36, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %i.aq = trunc i64 %i.q to i16
  %i.ar = add i16 %i.c, %i.aq
  store i16 %i.ar, ptr %i.b, align 8, !tbaa !81
  br label %bb.d

.lr.ph36:                                         ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, %.lr.ph36
  %.02335 = phi ptr [ %i.au, %.lr.ph36 ], [ %i.e, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.02335, align 4, !tbaa !65
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.au = getelementptr inbounds nuw i8, ptr %.02335, i64 4 ; 2 uses
  %.not25 = icmp eq ptr %i.au, %i.ap
  br i1 %.not25, label %._crit_edge37, label %.lr.ph36, !llvm.loop !14

bb.c:                                             ; preds = %bb.a
  %.not8.i26 = icmp eq ptr %2, %i.l
  br i1 %.not8.i26, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i27.preheader

.lr.ph.i27.preheader:                             ; preds = %bb.c
  %i.av = shl nuw nsw i64 %i.k, 2
  %i.aw = add i64 %i.av, %3
  %i.ax = add i64 %i.aw, -4
  %i.ay = sub i64 %i.ax, %i.f                     ; 2 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 92
  br i1 %min.iters.check, label %.lr.ph.i27.preheader71, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i27.preheader
  %i.bb = shl nuw nsw i64 %i.k, 2
  %i.bc = add i64 %i.bb, %3
  %i.bd = add i64 %i.bc, -4
  %i.be = sub i64 %i.bd, %i.f
  %i.bf = and i64 %i.be, -4
  %i.bg = add i64 %i.bf, 4                        ; 2 uses
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %i.bi = getelementptr i8, ptr %2, i64 %i.bg
  %bound0 = icmp ult ptr %1, %i.bi
  %bound1 = icmp ult ptr %2, %i.bh
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i27.preheader71, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %1, i64 %i.bj
  %i.bl = getelementptr i8, ptr %2, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %next.gep42 = getelementptr i8, ptr %2, i64 %i.bm ; 3 uses
  %i.bn = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !65, !alias.scope !190
  %wide.load43 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !65, !alias.scope !190
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !65, !alias.scope !191, !noalias !190
  store <4 x i32> %wide.load43, ptr %i.bo, align 4, !tbaa !65, !alias.scope !191, !noalias !190
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !65, !alias.scope !190
  store <4 x i32> zeroinitializer, ptr %i.bn, align 4, !tbaa !65, !alias.scope !190
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i27.preheader71

.lr.ph.i27.preheader71:                           ; preds = %vector.memcheck, %.lr.ph.i27.preheader, %middle.block
  %.010.i28.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i27.preheader ], [ %i.bk, %middle.block ]
  %.079.i29.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i27.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.preheader71, %.lr.ph.i27
  %.010.i28 = phi ptr [ %i.bs, %.lr.ph.i27 ], [ %.010.i28.ph, %.lr.ph.i27.preheader71 ] ; 2 uses
  %.079.i29 = phi ptr [ %i.br, %.lr.ph.i27 ], [ %.079.i29.ph, %.lr.ph.i27.preheader71 ] ; 3 uses
  %i.bq = load i32, ptr %.079.i29, align 4, !tbaa !65
  store i32 %i.bq, ptr %.010.i28, align 4, !tbaa !65
  store i32 0, ptr %.079.i29, align 4, !tbaa !65
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i29, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i28, i64 4
  %.not.i30 = icmp eq ptr %i.br, %i.l
  br i1 %.not.i30, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i27, !llvm.loop !187

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i27, %middle.block, %bb.c
  %.not32 = icmp eq ptr %2, %1
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %.idx = sub i64 0, %i.p
  %i.bt = getelementptr inbounds i8, ptr %i.l, i64 %.idx
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %i.bu = trunc i64 %i.q to i16
  %i.bv = sub i16 %i.j, %i.bu
  store i16 %i.bv, ptr %i.i, align 2, !tbaa !73
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.033 = phi ptr [ %i.by, %.lr.ph ], [ %i.bt, %.lr.ph.preheader ] ; 2 uses
  store i32 -2147483648, ptr %.033, align 4, !tbaa !65
  %i.bw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.by = getelementptr inbounds nuw i8, ptr %.033, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.by, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

bb.d:                                             ; preds = %._crit_edge, %._crit_edge37
  %.024 = phi ptr [ %2, %._crit_edge37 ], [ %1, %._crit_edge ]
  ret ptr %.024
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12pos_to_indexEPKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !63
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  ret i64 %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE4impl13set_front_idxEm(ptr noundef nonnull align 8 dereferenceable(14) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.a, ptr %i.b, align 8, !tbaa !81
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE4impl12set_back_idxEm(ptr noundef nonnull align 8 dereferenceable(14) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.a, ptr %i.b, align 2, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE4swapERS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i16, ptr %i.a, align 4, !tbaa !75
  %i.d = load i16, ptr %i.b, align 4, !tbaa !75
  store i16 %i.d, ptr %i.a, align 4, !tbaa !75
  store i16 %i.c, ptr %i.b, align 4, !tbaa !75
  %i.e = load ptr, ptr %0, align 8, !tbaa !82
  %i.f = load ptr, ptr %1, align 8, !tbaa !82
  store ptr %i.f, ptr %0, align 8, !tbaa !82
  store ptr %i.e, ptr %1, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i16, ptr %i.g, align 8, !tbaa !75
  %i.j = load i16, ptr %i.h, align 8, !tbaa !75
  store i16 %i.j, ptr %i.g, align 8, !tbaa !75
  store i16 %i.i, ptr %i.h, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.m = load i16, ptr %i.k, align 2, !tbaa !75
  %i.n = load i16, ptr %i.l, align 2, !tbaa !75
  store i16 %i.n, ptr %i.k, align 2, !tbaa !75
  store i16 %i.m, ptr %i.l, align 2, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12swap_big_bigERS8_S9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i16, ptr %i.a, align 4, !tbaa !75
  %i.d = load i16, ptr %i.b, align 4, !tbaa !75
  store i16 %i.d, ptr %i.a, align 4, !tbaa !75
  store i16 %i.c, ptr %i.b, align 4, !tbaa !75
  %i.e = load ptr, ptr %0, align 8, !tbaa !82
  %i.f = load ptr, ptr %1, align 8, !tbaa !82
  store ptr %i.f, ptr %0, align 8, !tbaa !82
  store ptr %i.e, ptr %1, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !63   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !69   ; 2 uses
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %.not5.i = icmp eq i16 %i.c, %i.e
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = zext i16 %i.c to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.06.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.i, %.lr.ph.i.preheader ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !65
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, label %.lr.ph.i, !llvm.loop !2

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit: ; preds = %.lr.ph.i, %bb.a
  store i16 %i.c, ptr %i.d, align 2, !tbaa !69
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14unused_storageERm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJRKS3_EEES8_EEvT_mSC_SC_mT0_RT1_:bb.a
.lr.ph.i.i258.preheader517:                       ; preds = %vector.memcheck475, %.lr.ph.i.i258.preheader, %middle.block488
  %.010.i.i259.ph = phi ptr [ %i.gg, %vector.memcheck475 ], [ %i.gg, %.lr.ph.i.i258.preheader ], [ %i.hb, %middle.block488 ]
  %.079.i.i260.ph = phi ptr [ %3, %vector.memcheck475 ], [ %3, %.lr.ph.i.i258.preheader ], [ %i.hc, %middle.block488 ]
  br label %.lr.ph.i.i258

.lr.ph.i.i258:                                    ; preds = %.lr.ph.i.i258.preheader517, %.lr.ph.i.i258
  %.010.i.i259 = phi ptr [ %i.hj, %.lr.ph.i.i258 ], [ %.010.i.i259.ph, %.lr.ph.i.i258.preheader517 ] ; 2 uses
  %.079.i.i260 = phi ptr [ %i.hi, %.lr.ph.i.i258 ], [ %.079.i.i260.ph, %.lr.ph.i.i258.preheader517 ] ; 3 uses
  %i.hh = load i32, ptr %.079.i.i260, align 4, !tbaa !65
  store i32 %i.hh, ptr %.010.i.i259, align 4, !tbaa !65
  store i32 0, ptr %.079.i.i260, align 4, !tbaa !65
  %i.hi = getelementptr inbounds nuw i8, ptr %.079.i.i260, i64 4 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.010.i.i259, i64 4 ; 2 uses
  %.not.i.i261 = icmp eq ptr %i.hi, %i.a
  br i1 %.not.i.i261, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit262, label %.lr.ph.i.i258, !llvm.loop !228

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit262: ; preds = %.lr.ph.i.i258, %middle.block488, %bb.l
  %i.hk = phi ptr [ %i.gg, %bb.l ], [ %i.hb, %middle.block488 ], [ %i.hj, %.lr.ph.i.i258 ] ; 2 uses
  %.not3.i263 = icmp eq ptr %i.hk, %i.a
  br i1 %.not3.i263, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit262, %.lr.ph.i264
  %storemerge4.i265 = phi ptr [ %i.hn, %.lr.ph.i264 ], [ %i.hk, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit262 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i265, align 4, !tbaa !65
  %i.hl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hm = add i32 %i.hl, -1
  store i32 %i.hm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hn = getelementptr inbounds nuw i8, ptr %storemerge4.i265, i64 4 ; 2 uses
  %.not.i266 = icmp eq ptr %i.hn, %i.a
  br i1 %.not.i266, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %.lr.ph.i264, !llvm.loop !16

_ZN5boost9container13destroy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_S9_.exit248: ; preds = %.loopexit
  %i.ho = load i32, ptr %5, align 4, !tbaa !65    ; 2 uses
  store i32 %i.ho, ptr %0, align 4, !tbaa !65
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost9container13destroy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_S9_.exit248, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %i.hp = phi i32 [ %i.ho, %_ZN5boost9container13destroy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_S9_.exit248 ], [ %i.ep, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit ]
  %i.hq = sub nuw i64 %4, %i.h                    ; 3 uses
  %i.hr = sub i64 %1, %i.e                        ; 2 uses
  %.not185 = icmp ult i64 %i.hr, %i.hq
  br i1 %.not185, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  %.neg350 = mul i64 %i.hq, -4                    ; 2 uses
  %i.hs = getelementptr i8, ptr %i.a, i64 %.neg350 ; 7 uses
  %.not16.i276 = icmp eq i64 %.neg350, 0
  br i1 %.not16.i276, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i277

.lr.ph.i277:                                      ; preds = %bb.m, %.lr.ph.i277
  %.018.i278 = phi ptr [ %i.hw, %.lr.ph.i277 ], [ %i.hs, %bb.m ] ; 3 uses
  %.01517.i279 = phi ptr [ %i.hx, %.lr.ph.i277 ], [ %i.a, %bb.m ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i279) ]
  %i.ht = load i32, ptr %.018.i278, align 4, !tbaa !65
  store i32 %i.ht, ptr %.01517.i279, align 4, !tbaa !65
  store i32 0, ptr %.018.i278, align 4, !tbaa !65
  %i.hu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hv = add i32 %i.hu, 1
  store i32 %i.hv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hw = getelementptr inbounds nuw i8, ptr %.018.i278, i64 4 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.01517.i279, i64 4
  %.not.i280 = icmp eq ptr %i.hw, %i.a
  br i1 %.not.i280, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit282, label %.lr.ph.i277, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit282: ; preds = %.lr.ph.i277
  %.not8.i.i284 = icmp eq ptr %3, %i.hs
  br i1 %.not8.i.i284, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i285.preheader

.lr.ph.i.i285.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit282
  %i.hy = shl i64 %1, 2
  %i.hz = shl i64 %4, 2
  %i.ia = add i64 %i.g, %i.c
  %i.ib = add i64 %i.ia, %i.hy
  %i.ic = add i64 %i.ib, -4
  %i.id = add i64 %i.hz, %i.b
  %i.ie = sub i64 %i.ic, %i.id                    ; 2 uses
  %i.if = lshr i64 %i.ie, 2
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check498 = icmp ult i64 %i.ie, 172
  br i1 %min.iters.check498, label %.lr.ph.i.i285.preheader516, label %vector.memcheck499

vector.memcheck499:                               ; preds = %.lr.ph.i.i285.preheader
  %i.ih = shl i64 %1, 2                           ; 3 uses
  %i.ii = shl i64 %4, 2                           ; 2 uses
  %i.ij = add i64 %i.g, %i.c
  %i.ik = add i64 %i.ij, %i.ih
  %i.il = add i64 %i.ik, -4
  %i.im = add i64 %i.ii, %i.b
  %i.in = sub i64 %i.il, %i.im
  %i.io = and i64 %i.in, -4                       ; 2 uses
  %i.ip = add i64 %i.ih, -4
  %i.iq = sub i64 %i.ip, %i.io
  %i.ir = getelementptr i8, ptr %0, i64 %i.iq
  %i.is = add i64 %i.g, %i.ih
  %i.it = add i64 %i.is, -4
  %i.iu = add i64 %i.ii, %i.io
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = getelementptr i8, ptr %0, i64 %i.iv
  %bound0500 = icmp ult ptr %i.ir, %i.hs
  %bound1501 = icmp ult ptr %i.iw, %i.a
  %found.conflict502 = and i1 %bound0500, %bound1501
  br i1 %found.conflict502, label %.lr.ph.i.i285.preheader516, label %vector.ph503

vector.ph503:                                     ; preds = %vector.memcheck499
  %n.vec504 = and i64 %i.ig, 9223372036854775800  ; 3 uses
  %i.ix = mul i64 %n.vec504, -4                   ; 2 uses
  %i.iy = getelementptr i8, ptr %i.a, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.hs, i64 %i.ix
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next511, %vector.body505 ] ; 2 uses
  %i.ja = mul i64 %index506, -4                   ; 2 uses
  %next.gep507 = getelementptr i8, ptr %i.a, i64 %i.ja ; 2 uses
  %next.gep508 = getelementptr i8, ptr %i.hs, i64 %i.ja ; 2 uses
  %i.jb = getelementptr inbounds i8, ptr %next.gep508, i64 -16 ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %next.gep508, i64 -32 ; 2 uses
  %wide.load509 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !65, !alias.scope !242
  %wide.load510 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !65, !alias.scope !242
  %i.jd = getelementptr inbounds i8, ptr %next.gep507, i64 -16
  %i.je = getelementptr inbounds i8, ptr %next.gep507, i64 -32
  store <4 x i32> %wide.load509, ptr %i.jd, align 4, !tbaa !65, !alias.scope !243, !noalias !242
  store <4 x i32> %wide.load510, ptr %i.je, align 4, !tbaa !65, !alias.scope !243, !noalias !242
  store <4 x i32> zeroinitializer, ptr %i.jb, align 4, !tbaa !65, !alias.scope !242
  store <4 x i32> zeroinitializer, ptr %i.jc, align 4, !tbaa !65, !alias.scope !242
  %index.next511 = add nuw i64 %index506, 8       ; 2 uses
  %i.jf = icmp eq i64 %index.next511, %n.vec504
  br i1 %i.jf, label %middle.block512, label %vector.body505, !llvm.loop !232

middle.block512:                                  ; preds = %vector.body505
  %cmp.n513 = icmp eq i64 %i.ig, %n.vec504
  br i1 %cmp.n513, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i285.preheader516

.lr.ph.i.i285.preheader516:                       ; preds = %vector.memcheck499, %.lr.ph.i.i285.preheader, %middle.block512
  %.010.i.i286.ph = phi ptr [ %i.a, %vector.memcheck499 ], [ %i.a, %.lr.ph.i.i285.preheader ], [ %i.iy, %middle.block512 ]
  %.079.i.i287.ph = phi ptr [ %i.hs, %vector.memcheck499 ], [ %i.hs, %.lr.ph.i.i285.preheader ], [ %i.iz, %middle.block512 ]
  br label %.lr.ph.i.i285

.lr.ph.i.i285:                                    ; preds = %.lr.ph.i.i285.preheader516, %.lr.ph.i.i285
  %.010.i.i286 = phi ptr [ %i.jh, %.lr.ph.i.i285 ], [ %.010.i.i286.ph, %.lr.ph.i.i285.preheader516 ]
  %.079.i.i287 = phi ptr [ %i.jg, %.lr.ph.i.i285 ], [ %.079.i.i287.ph, %.lr.ph.i.i285.preheader516 ]
  %i.jg = getelementptr inbounds i8, ptr %.079.i.i287, i64 -4 ; 4 uses
  %i.jh = getelementptr inbounds i8, ptr %.010.i.i286, i64 -4 ; 2 uses
  %i.ji = load i32, ptr %i.jg, align 4, !tbaa !65
  store i32 %i.ji, ptr %i.jh, align 4, !tbaa !65
  store i32 0, ptr %i.jg, align 4, !tbaa !65
  %.not.i.i288 = icmp eq ptr %3, %i.jg
  br i1 %.not.i.i288, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i285, !llvm.loop !233

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i285, %middle.block512, %bb.m, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit282
  %i.jj = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.jj, ptr %3, align 4, !tbaa !65
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218

bb.n:                                             ; preds = %.critedge
  %.not16.i289 = icmp eq ptr %3, %i.a
  br i1 %.not16.i289, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299, label %.lr.ph.i290.preheader

.lr.ph.i290.preheader:                            ; preds = %bb.n
  %i.jk = sub nuw i64 %i.hq, %i.hr
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jk
  br label %.lr.ph.i290

.lr.ph.i290:                                      ; preds = %.lr.ph.i290.preheader, %.lr.ph.i290
  %.018.i291 = phi ptr [ %i.jp, %.lr.ph.i290 ], [ %3, %.lr.ph.i290.preheader ] ; 3 uses
  %.01517.i292 = phi ptr [ %i.jq, %.lr.ph.i290 ], [ %i.jl, %.lr.ph.i290.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i292) ]
  %i.jm = load i32, ptr %.018.i291, align 4, !tbaa !65
  store i32 %i.jm, ptr %.01517.i292, align 4, !tbaa !65
  store i32 0, ptr %.018.i291, align 4, !tbaa !65
  %i.jn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jo = add i32 %i.jn, 1
  store i32 %i.jo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jp = getelementptr inbounds nuw i8, ptr %.018.i291, i64 4 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.01517.i292, i64 4
  %.not.i293 = icmp eq ptr %i.jp, %i.a
  br i1 %.not.i293, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299.loopexit, label %.lr.ph.i290, !llvm.loop !8

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299.loopexit: ; preds = %.lr.ph.i290
  %.pre = load i32, ptr %5, align 4, !tbaa !65
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299: ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299.loopexit, %bb.n
  %i.jr = phi i32 [ %.pre, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299.loopexit ], [ %i.hp, %bb.n ]
  store i32 %i.jr, ptr %3, align 4, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.js = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.js, ptr %i.a, align 4, !tbaa !65
  %i.jt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ju = add i32 %i.jt, 1
  store i32 %i.ju, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i211, %.lr.ph.i245, %.lr.ph.i264, %bb.k, %bb.h, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit243, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit262, %.loopexit354, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvT0_mSC_SC_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %8 = ptrtoaddr ptr %0 to i64                    ; 7 uses
  %i.a = sub i64 0, %4
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 27 uses
  %i.c = add i64 %4, %1                           ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c ; 4 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %3 to i64                   ; 7 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 3 uses
  %i.i = sub nsw i64 0, %i.h
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub i64 %i.j, %i.e                       ; 5 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 8 uses
  %i.m = add i64 %i.h, %4                         ; 6 uses
  %.not = icmp ult i64 %i.l, %i.m
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sub i64 0, %i.m
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.p = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.p, ptr %i.o, align 4, !tbaa !65
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %.not16.i = icmp eq ptr %3, %i.b
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.w, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 3 uses
  %.01517.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.s, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.t = load i32, ptr %.018.i, align 4, !tbaa !65
  store i32 %i.t, ptr %.01517.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i, align 4, !tbaa !65
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.w, %i.b
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.not123 = icmp ult i64 %i.l, %i.c
  br i1 %.not123, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i128 = icmp eq ptr %0, %3
  br i1 %.not16.i128, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %bb.c, %.lr.ph.i129
  %.018.i130 = phi ptr [ %i.ab, %.lr.ph.i129 ], [ %0, %bb.c ] ; 3 uses
  %.01517.i131 = phi ptr [ %i.ac, %.lr.ph.i129 ], [ %2, %bb.c ] ; 2 uses
  %i.y = load i32, ptr %.018.i130, align 4, !tbaa !65
  store i32 %i.y, ptr %.01517.i131, align 4, !tbaa !65
  store i32 0, ptr %.018.i130, align 4, !tbaa !65
  %i.z = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %.018.i130, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01517.i131, i64 4
  %.not.i132 = icmp eq ptr %i.ab, %3
  br i1 %.not.i132, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i129, !llvm.loop !8

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.ad = sub nuw i64 %i.l, %i.m                  ; 5 uses
  %i.ae = sub i64 0, %i.ad                        ; 3 uses
  %i.af = getelementptr [4 x i8], ptr %3, i64 %i.ae ; 11 uses
  %.not17.i = icmp eq i64 %i.ad, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135.preheader

.lr.ph.i135.preheader:                            ; preds = %bb.d
  %.neg = add i64 %i.m, 1
  %xtraiter373 = and i64 %i.ad, 1
  %lcmp.mod374.not = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod374.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol

.lr.ph.i135.prol:                                 ; preds = %.lr.ph.i135.preheader
  %i.ag = add nsw i64 %i.ad, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !65
  store i32 %i.ah, ptr %i.b, align 4, !tbaa !65
  store i32 0, ptr %i.af, align 4, !tbaa !65
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph.i135.prol.loopexit

.lr.ph.i135.prol.loopexit:                        ; preds = %.lr.ph.i135.prol, %.lr.ph.i135.preheader
  %.020.i.unr = phi i64 [ %i.ad, %.lr.ph.i135.preheader ], [ %i.ag, %.lr.ph.i135.prol ]
  %.0819.i.unr = phi ptr [ %i.af, %.lr.ph.i135.preheader ], [ %i.ak, %.lr.ph.i135.prol ]
  %.01618.i.unr = phi ptr [ %i.b, %.lr.ph.i135.preheader ], [ %i.al, %.lr.ph.i135.prol ]
  %i.am = icmp eq i64 %i.l, %.neg
  br i1 %i.am, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135
  %.020.i = phi i64 [ %i.as, %.lr.ph.i135 ], [ %.020.i.unr, %.lr.ph.i135.prol.loopexit ]
  %.0819.i = phi ptr [ %i.aw, %.lr.ph.i135 ], [ %.0819.i.unr, %.lr.ph.i135.prol.loopexit ] ; 4 uses
  %.01618.i = phi ptr [ %i.ax, %.lr.ph.i135 ], [ %.01618.i.unr, %.lr.ph.i135.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.an = load i32, ptr %.0819.i, align 4, !tbaa !65
  store i32 %i.an, ptr %.01618.i, align 4, !tbaa !65
  store i32 0, ptr %.0819.i, align 4, !tbaa !65
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.as = add i64 %.020.i, -2                     ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !65
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !65
  store i32 0, ptr %i.aq, align 4, !tbaa !65
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i136.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i136.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135, %bb.d
  %.not.i137 = icmp eq ptr %i.af, %i.b
  %.not8.i.i = icmp eq ptr %0, %i.af
  %or.cond = or i1 %.not.i137, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.ay = shl i64 %i.ae, 2
  %i.az = add i64 %i.ay, %i.f
  %i.ba = add i64 %i.az, -4
  %i.bb = sub i64 %i.ba, %8                       ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 140
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader371, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.be = shl nsw i64 %1, 2
  %i.bf = shl i64 %i.ae, 2                        ; 2 uses
  %i.bg = add i64 %i.bf, %i.f
  %i.bh = add i64 %i.bg, -4
  %i.bi = sub i64 %i.bh, %8
  %i.bj = and i64 %i.bi, -4                       ; 2 uses
  %i.bk = add i64 %i.be, -4
  %i.bl = sub i64 %i.bk, %i.bj
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl
  %i.bn = add i64 %i.bf, -4
  %i.bo = sub i64 %i.bn, %i.bj
  %i.bp = getelementptr i8, ptr %3, i64 %i.bo
  %bound0 = icmp ult ptr %i.bm, %i.af
  %bound1 = icmp ult ptr %i.bp, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader371, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 9223372036854775800     ; 3 uses
  %i.bq = mul i64 %n.vec, -4                      ; 2 uses
  %i.br = getelementptr i8, ptr %i.b, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.af, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.bt ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.af, i64 %i.bt ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %next.gep289, i64 -16 ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep289, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !65, !alias.scope !265
  %wide.load290 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !65, !alias.scope !265
  %i.bw = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bw, align 4, !tbaa !65, !alias.scope !266, !noalias !265
  store <4 x i32> %wide.load290, ptr %i.bx, align 4, !tbaa !65, !alias.scope !266, !noalias !265
  store <4 x i32> zeroinitializer, ptr %i.bu, align 4, !tbaa !65, !alias.scope !265
  store <4 x i32> zeroinitializer, ptr %i.bv, align 4, !tbaa !65, !alias.scope !265
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !247

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader371

.lr.ph.i.i.preheader371:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.i.preheader ], [ %i.br, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader371, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader371 ]
  %.079.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader371 ]
  %i.bz = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.ca = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !65
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !65
  store i32 0, ptr %i.bz, align 4, !tbaa !65
  %.not.i.i = icmp eq ptr %0, %i.bz
  br i1 %.not.i.i, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i, !llvm.loop !248

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i138
  %storemerge4.i = phi ptr [ %i.ce, %.lr.ph.i138 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !65
  %i.cc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cd = add i32 %i.cc, -1
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i139 = icmp eq ptr %i.ce, %2
  br i1 %.not.i139, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.lr.ph.i138, !llvm.loop !16

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i129, %bb.c
  %.not.i142 = icmp eq i64 %1, 0
  br i1 %.not.i142, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cf = phi i64 [ %i.cg, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i143.prol = phi ptr [ %i.cj, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cg = add i64 %i.cf, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i143.prol, align 4, !tbaa !65
  %i.ch = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ci = add i32 %i.ch, -1
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i143.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !249

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cg, %.preheader.prol ]
  %.0.i143.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cj, %.preheader.prol ]
  %i.ck = icmp ult i64 %1, 4
  br i1 %i.ck, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cl = phi i64 [ %i.ct, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i143 = phi ptr [ %i.cv, %.preheader ], [ %.0.i143.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i143, align 4, !tbaa !65
  %i.cm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i143, i64 4
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !65
  %i.cp = add i32 %i.cm, -2
  store i32 %i.cp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i143, i64 8
  store i32 -2147483648, ptr %i.cq, align 4, !tbaa !65
  %i.cr = add i32 %i.cm, -3
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i143, i64 12
  %i.ct = add i64 %i.cl, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.cs, align 4, !tbaa !65
  %i.cu = add i32 %i.cm, -4
  store i32 %i.cu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i143, i64 16
  %.not3.i144.3 = icmp eq i64 %i.ct, 0
  br i1 %.not3.i144.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.preheader, !llvm.loop !17

bb.e:                                             ; preds = %bb.a
  %i.cw = icmp ugt i64 %i.l, %i.h
  br i1 %i.cw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i154 = icmp eq ptr %3, %i.b
  br i1 %.not16.i154, label %.loopexit, label %.lr.ph.i155.preheader

.lr.ph.i155.preheader:                            ; preds = %bb.f
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155.preheader, %.lr.ph.i155
  %.018.i156 = phi ptr [ %i.db, %.lr.ph.i155 ], [ %3, %.lr.ph.i155.preheader ] ; 3 uses
  %.01517.i157 = phi ptr [ %i.dc, %.lr.ph.i155 ], [ %i.cx, %.lr.ph.i155.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i157) ]
  %i.cy = load i32, ptr %.018.i156, align 4, !tbaa !65
  store i32 %i.cy, ptr %.01517.i157, align 4, !tbaa !65
  store i32 0, ptr %.018.i156, align 4, !tbaa !65
  %i.cz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.db = getelementptr inbounds nuw i8, ptr %.018.i156, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01517.i157, i64 4
  %.not.i158 = icmp eq ptr %i.db, %i.b
  br i1 %.not.i158, label %.loopexit, label %.lr.ph.i155, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph.i155, %bb.f
  %.neg244 = sub i64 %i.l, %i.m
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.neg244 ; 8 uses
  %i.de = load i32, ptr %5, align 4, !tbaa !65    ; 2 uses
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.de, ptr %i.b, align 4, !tbaa !65
  %i.df = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %.not.i161 = icmp eq ptr %3, %i.dd
  br i1 %.not.i161, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i162 = icmp eq ptr %0, %3
  br i1 %.not8.i.i162, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.g
  %i.dh = add i64 %i.f, -4
  %i.di = sub i64 %i.dh, %8                       ; 3 uses
  %i.dj = lshr i64 %i.di, 2
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.di, 140
  br i1 %min.iters.check346, label %.lr.ph.i.i163.preheader364, label %vector.memcheck347

vector.memcheck347:                               ; preds = %.lr.ph.i.i163.preheader
  %i.dl = shl nsw i64 %1, 2
  %i.dm = and i64 %i.di, -4                       ; 2 uses
  %i.dn = shl i64 %i.m, 2
  %i.do = add i64 %i.k, %i.dl
  %i.dp = add i64 %i.do, -4
  %i.dq = add i64 %i.dm, %i.dn
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = getelementptr i8, ptr %0, i64 %i.dr
  %i.dt = sub nuw nsw i64 -4, %i.dm
  %i.du = getelementptr i8, ptr %3, i64 %i.dt
  %bound0348 = icmp ult ptr %i.ds, %3
  %bound1349 = icmp ult ptr %i.du, %i.dd
  %found.conflict350 = and i1 %bound0348, %bound1349
  br i1 %found.conflict350, label %.lr.ph.i.i163.preheader364, label %vector.ph351

vector.ph351:                                     ; preds = %vector.memcheck347
  %n.vec352 = and i64 %i.dk, 9223372036854775800  ; 3 uses
  %i.dv = mul i64 %n.vec352, -4                   ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dd, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %3, i64 %i.dv
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next359, %vector.body353 ] ; 2 uses
  %i.dy = mul i64 %index354, -4                   ; 2 uses
  %next.gep355 = getelementptr i8, ptr %i.dd, i64 %i.dy ; 2 uses
  %next.gep356 = getelementptr i8, ptr %3, i64 %i.dy ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %next.gep356, i64 -16 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %next.gep356, i64 -32 ; 2 uses
  %wide.load357 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !65, !alias.scope !267
  %wide.load358 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !65, !alias.scope !267
  %i.eb = getelementptr inbounds i8, ptr %next.gep355, i64 -16
  %i.ec = getelementptr inbounds i8, ptr %next.gep355, i64 -32
  store <4 x i32> %wide.load357, ptr %i.eb, align 4, !tbaa !65, !alias.scope !268, !noalias !267
  store <4 x i32> %wide.load358, ptr %i.ec, align 4, !tbaa !65, !alias.scope !268, !noalias !267
  store <4 x i32> zeroinitializer, ptr %i.dz, align 4, !tbaa !65, !alias.scope !267
  store <4 x i32> zeroinitializer, ptr %i.ea, align 4, !tbaa !65, !alias.scope !267
  %index.next359 = add nuw i64 %index354, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next359, %n.vec352
  br i1 %i.ed, label %middle.block360, label %vector.body353, !llvm.loop !253

middle.block360:                                  ; preds = %vector.body353
  %cmp.n361 = icmp eq i64 %i.dk, %n.vec352
  br i1 %cmp.n361, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader364

.lr.ph.i.i163.preheader364:                       ; preds = %vector.memcheck347, %.lr.ph.i.i163.preheader, %middle.block360
  %.010.i.i164.ph = phi ptr [ %i.dd, %vector.memcheck347 ], [ %i.dd, %.lr.ph.i.i163.preheader ], [ %i.dw, %middle.block360 ]
  %.079.i.i165.ph = phi ptr [ %3, %vector.memcheck347 ], [ %3, %.lr.ph.i.i163.preheader ], [ %i.dx, %middle.block360 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader364, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.ef, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader364 ]
  %.079.i.i165 = phi ptr [ %i.ee, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader364 ]
  %i.ee = getelementptr inbounds i8, ptr %.079.i.i165, i64 -4 ; 4 uses
  %i.ef = getelementptr inbounds i8, ptr %.010.i.i164, i64 -4 ; 3 uses
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !65
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !65
  store i32 0, ptr %i.ee, align 4, !tbaa !65
  %.not.i.i166 = icmp eq ptr %0, %i.ee
  br i1 %.not.i.i166, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163, !llvm.loop !254

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167: ; preds = %.lr.ph.i.i163, %middle.block360, %bb.g
  %i.eh = phi ptr [ %i.dd, %bb.g ], [ %i.dw, %middle.block360 ], [ %i.ef, %.lr.ph.i.i163 ] ; 2 uses
  %.not3.i168 = icmp eq ptr %0, %i.eh
  br i1 %.not3.i168, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %.lr.ph.i169
  %storemerge4.i170 = phi ptr [ %i.ek, %.lr.ph.i169 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i170, align 4, !tbaa !65
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ek = getelementptr inbounds nuw i8, ptr %storemerge4.i170, i64 4 ; 2 uses
  %.not.i171 = icmp eq ptr %i.ek, %i.eh
  br i1 %.not.i171, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.lr.ph.i169, !llvm.loop !16

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.el = getelementptr i8, ptr %i.b, i64 %.idx   ; 10 uses
  %.not17.i181 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %bb.h
  %i.em = and i64 %i.k, 4
  %lcmp.mod377.not = icmp eq i64 %i.em, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i182.prol.loopexit, label %.lr.ph.i182.prol

.lr.ph.i182.prol:                                 ; preds = %.lr.ph.i182.preheader
  %i.en = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.eo = load i32, ptr %i.el, align 4, !tbaa !65
  store i32 %i.eo, ptr %i.b, align 4, !tbaa !65
  store i32 0, ptr %i.el, align 4, !tbaa !65
  %i.ep = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph.i182.prol.loopexit

.lr.ph.i182.prol.loopexit:                        ; preds = %.lr.ph.i182.prol, %.lr.ph.i182.preheader
  %.020.i183.unr = phi i64 [ %i.l, %.lr.ph.i182.preheader ], [ %i.en, %.lr.ph.i182.prol ]
  %.0819.i184.unr = phi ptr [ %i.el, %.lr.ph.i182.preheader ], [ %i.er, %.lr.ph.i182.prol ]
  %.01618.i185.unr = phi ptr [ %i.b, %.lr.ph.i182.preheader ], [ %i.es, %.lr.ph.i182.prol ]
  %i.et = icmp eq i64 %i.k, 4
  br i1 %i.et, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.prol.loopexit, %.lr.ph.i182
  %.020.i183 = phi i64 [ %i.ez, %.lr.ph.i182 ], [ %.020.i183.unr, %.lr.ph.i182.prol.loopexit ]
  %.0819.i184 = phi ptr [ %i.fd, %.lr.ph.i182 ], [ %.0819.i184.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  %.01618.i185 = phi ptr [ %i.fe, %.lr.ph.i182 ], [ %.01618.i185.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i185) ]
  %i.eu = load i32, ptr %.0819.i184, align 4, !tbaa !65
  store i32 %i.eu, ptr %.01618.i185, align 4, !tbaa !65
  store i32 0, ptr %.0819.i184, align 4, !tbaa !65
  %i.ev = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ex = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 4
  %i.ez = add i64 %.020.i183, -2                  ; 2 uses
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !65
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !65
  store i32 0, ptr %i.ex, align 4, !tbaa !65
  %i.fb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fd = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 8
  %.not.i186.1 = icmp eq i64 %i.ez, 0
  br i1 %.not.i186.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188: ; preds = %.lr.ph.i182, %.lr.ph.i182.prol.loopexit
  %.not8.i.i190 = icmp eq ptr %3, %i.el
  br i1 %.not8.i.i190, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader

.lr.ph.i.i191.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.ff = shl nsw i64 %1, 2
  %i.fg = shl i64 %8, 1
  %i.fh = shl i64 %4, 2
  %i.fi = add i64 %i.ff, %i.fg
  %i.fj = add i64 %i.fi, -4
  %i.fk = add i64 %i.f, %7
  %i.fl = add i64 %i.fk, %i.fh
  %i.fm = sub i64 %i.fj, %i.fl                    ; 2 uses
  %i.fn = lshr i64 %i.fm, 2
  %i.fo = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %min.iters.check298 = icmp ult i64 %i.fm, 188
  br i1 %min.iters.check298, label %.lr.ph.i.i191.preheader368, label %vector.memcheck299

vector.memcheck299:                               ; preds = %.lr.ph.i.i191.preheader
  %i.fp = shl nsw i64 %1, 2                       ; 3 uses
  %i.fq = shl i64 %8, 1
  %i.fr = shl i64 %4, 2                           ; 2 uses
  %i.fs = add i64 %i.fp, %i.fq
  %i.ft = add i64 %i.fs, -4
  %i.fu = add i64 %i.f, %7
  %i.fv = add i64 %i.fu, %i.fr
  %i.fw = sub i64 %i.ft, %i.fv
  %i.fx = and i64 %i.fw, -4                       ; 2 uses
  %i.fy = add i64 %i.fp, -4
  %i.fz = sub i64 %i.fy, %i.fx
  %i.ga = getelementptr i8, ptr %0, i64 %i.fz
  %i.gb = add i64 %i.fp, %8
  %i.gc = add i64 %i.gb, -4
  %i.gd = add i64 %i.fr, %7
  %i.ge = add i64 %i.gd, %i.fx
  %i.gf = sub i64 %i.gc, %i.ge
  %i.gg = getelementptr i8, ptr %0, i64 %i.gf
  %bound0300 = icmp ult ptr %i.ga, %i.el
  %bound1301 = icmp ult ptr %i.gg, %i.b
  %found.conflict302 = and i1 %bound0300, %bound1301
  br i1 %found.conflict302, label %.lr.ph.i.i191.preheader368, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck299
  %n.vec304 = and i64 %i.fo, 9223372036854775800  ; 3 uses
  %i.gh = mul i64 %n.vec304, -4                   ; 2 uses
  %i.gi = getelementptr i8, ptr %i.b, i64 %i.gh   ; 2 uses
  %i.gj = getelementptr i8, ptr %i.el, i64 %i.gh
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.gk = mul i64 %index306, -4                   ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.b, i64 %i.gk ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.el, i64 %i.gk ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %next.gep308, i64 -16 ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %next.gep308, i64 -32 ; 2 uses
  %wide.load309 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !65, !alias.scope !269
  %wide.load310 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !65, !alias.scope !269
  %i.gn = getelementptr inbounds i8, ptr %next.gep307, i64 -16
  %i.go = getelementptr inbounds i8, ptr %next.gep307, i64 -32
  store <4 x i32> %wide.load309, ptr %i.gn, align 4, !tbaa !65, !alias.scope !270, !noalias !269
  store <4 x i32> %wide.load310, ptr %i.go, align 4, !tbaa !65, !alias.scope !270, !noalias !269
  store <4 x i32> zeroinitializer, ptr %i.gl, align 4, !tbaa !65, !alias.scope !269
  store <4 x i32> zeroinitializer, ptr %i.gm, align 4, !tbaa !65, !alias.scope !269
  %index.next311 = add nuw i64 %index306, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.gp, label %middle.block312, label %vector.body305, !llvm.loop !258

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.fo, %n.vec304
  br i1 %cmp.n313, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader368

.lr.ph.i.i191.preheader368:                       ; preds = %vector.memcheck299, %.lr.ph.i.i191.preheader, %middle.block312
  %.010.i.i192.ph = phi ptr [ %i.b, %vector.memcheck299 ], [ %i.b, %.lr.ph.i.i191.preheader ], [ %i.gi, %middle.block312 ]
  %.079.i.i193.ph = phi ptr [ %i.el, %vector.memcheck299 ], [ %i.el, %.lr.ph.i.i191.preheader ], [ %i.gj, %middle.block312 ]
  br label %.lr.ph.i.i191

.lr.ph.i.i191:                                    ; preds = %.lr.ph.i.i191.preheader368, %.lr.ph.i.i191
  %.010.i.i192 = phi ptr [ %i.gr, %.lr.ph.i.i191 ], [ %.010.i.i192.ph, %.lr.ph.i.i191.preheader368 ]
  %.079.i.i193 = phi ptr [ %i.gq, %.lr.ph.i.i191 ], [ %.079.i.i193.ph, %.lr.ph.i.i191.preheader368 ]
  %i.gq = getelementptr inbounds i8, ptr %.079.i.i193, i64 -4 ; 4 uses
  %i.gr = getelementptr inbounds i8, ptr %.010.i.i192, i64 -4 ; 3 uses
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !65
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !65
  store i32 0, ptr %i.gq, align 4, !tbaa !65
  %.not.i.i194 = icmp eq ptr %3, %i.gq
  br i1 %.not.i.i194, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191, !llvm.loop !259

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195: ; preds = %.lr.ph.i.i191, %middle.block312, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.gt = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188 ], [ %i.gi, %middle.block312 ], [ %i.gr, %.lr.ph.i.i191 ] ; 2 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.a ; 8 uses
  %i.gv = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.gv, ptr %i.gu, align 4, !tbaa !65
  %.not.i196 = icmp eq ptr %3, %i.gu
  br i1 %.not.i196, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195
  %.not8.i.i197 = icmp eq ptr %0, %3
  br i1 %.not8.i.i197, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader

.lr.ph.i.i198.preheader:                          ; preds = %bb.i
  %i.gw = add i64 %i.f, -4
  %i.gx = sub i64 %i.gw, %8                       ; 3 uses
  %i.gy = lshr i64 %i.gx, 2
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.gx, 108
  br i1 %min.iters.check322, label %.lr.ph.i.i198.preheader366, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i.i198.preheader
  %i.ha = shl i64 %4, 2
  %i.hb = and i64 %i.gx, -4                       ; 2 uses
  %i.hc = add i64 %i.ha, %i.hb
  %i.hd = sub nuw nsw i64 -4, %i.hc
  %i.he = getelementptr i8, ptr %i.gt, i64 %i.hd
  %i.hf = sub nuw nsw i64 -4, %i.hb
  %i.hg = getelementptr i8, ptr %3, i64 %i.hf
  %bound0324 = icmp ult ptr %i.he, %3
  %bound1325 = icmp ult ptr %i.hg, %i.gu
  %found.conflict326 = and i1 %bound0324, %bound1325
  br i1 %found.conflict326, label %.lr.ph.i.i198.preheader366, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck323
  %n.vec328 = and i64 %i.gz, 9223372036854775800  ; 3 uses
  %i.hh = mul i64 %n.vec328, -4                   ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gu, i64 %i.hh  ; 2 uses
  %i.hj = getelementptr i8, ptr %3, i64 %i.hh
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ] ; 2 uses
  %i.hk = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.gu, i64 %i.hk ; 2 uses
  %next.gep332 = getelementptr i8, ptr %3, i64 %i.hk ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !65, !alias.scope !271
  %wide.load334 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !65, !alias.scope !271
  %i.hn = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.ho = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  store <4 x i32> %wide.load333, ptr %i.hn, align 4, !tbaa !65, !alias.scope !272, !noalias !271
  store <4 x i32> %wide.load334, ptr %i.ho, align 4, !tbaa !65, !alias.scope !272, !noalias !271
  store <4 x i32> zeroinitializer, ptr %i.hl, align 4, !tbaa !65, !alias.scope !271
  store <4 x i32> zeroinitializer, ptr %i.hm, align 4, !tbaa !65, !alias.scope !271
  %index.next335 = add nuw i64 %index330, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.hp, label %middle.block336, label %vector.body329, !llvm.loop !263

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %i.gz, %n.vec328
  br i1 %cmp.n337, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader366

.lr.ph.i.i198.preheader366:                       ; preds = %vector.memcheck323, %.lr.ph.i.i198.preheader, %middle.block336
  %.010.i.i199.ph = phi ptr [ %i.gu, %vector.memcheck323 ], [ %i.gu, %.lr.ph.i.i198.preheader ], [ %i.hi, %middle.block336 ]
  %.079.i.i200.ph = phi ptr [ %3, %vector.memcheck323 ], [ %3, %.lr.ph.i.i198.preheader ], [ %i.hj, %middle.block336 ]
  br label %.lr.ph.i.i198

.lr.ph.i.i198:                                    ; preds = %.lr.ph.i.i198.preheader366, %.lr.ph.i.i198
  %.010.i.i199 = phi ptr [ %i.hr, %.lr.ph.i.i198 ], [ %.010.i.i199.ph, %.lr.ph.i.i198.preheader366 ]
  %.079.i.i200 = phi ptr [ %i.hq, %.lr.ph.i.i198 ], [ %.079.i.i200.ph, %.lr.ph.i.i198.preheader366 ]
  %i.hq = getelementptr inbounds i8, ptr %.079.i.i200, i64 -4 ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %.010.i.i199, i64 -4 ; 3 uses
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !65
  store i32 %i.hs, ptr %i.hr, align 4, !tbaa !65
  store i32 0, ptr %i.hq, align 4, !tbaa !65
  %.not.i.i201 = icmp eq ptr %0, %i.hq
  br i1 %.not.i.i201, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198, !llvm.loop !264

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202: ; preds = %.lr.ph.i.i198, %middle.block336, %bb.i
  %i.ht = phi ptr [ %i.gu, %bb.i ], [ %i.hi, %middle.block336 ], [ %i.hr, %.lr.ph.i.i198 ] ; 2 uses
  %.not3.i203 = icmp eq ptr %0, %i.ht
  br i1 %.not3.i203, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %.lr.ph.i204
  %storemerge4.i205 = phi ptr [ %i.hw, %.lr.ph.i204 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i205, align 4, !tbaa !65
  %i.hu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hv = add i32 %i.hu, -1
  store i32 %i.hv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hw = getelementptr inbounds nuw i8, ptr %storemerge4.i205, i64 4 ; 2 uses
  %.not.i206 = icmp eq ptr %i.hw, %i.ht
  br i1 %.not.i206, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.lr.ph.i204, !llvm.loop !16

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i138, %.lr.ph.i204, %.lr.ph.i169, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !70   ; 3 uses
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !69   ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = sub nsw i64 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.j = zext i16 %i.i to i64                     ; 5 uses
  %i.k = add nsw i64 %i.g, %i.j                   ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j ; 3 uses
  %.not = icmp ult i64 %i.k, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw i64 %i.k, %2
  %i.o = udiv i16 %i.b, 10
  %.zext = zext nneg i16 %i.o to i64
  %.not51 = icmp ult i64 %i.n, %.zext
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sub nsw i64 %i.f, %i.j                   ; 3 uses
  %i.q = add i64 %i.p, %2                         ; 2 uses
  %i.r = sub i64 %i.c, %i.q
  %i.s = lshr i64 %i.r, 1                         ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.s ; 2 uses
  store i16 0, ptr %i.d, align 2, !tbaa !69
  store i16 0, ptr %i.h, align 8, !tbaa !63
  %i.u = icmp samesign ult i64 %i.s, %i.j
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEES8_EEvT_mSA_SA_mT0_RT1_(ptr noundef nonnull %i.m, i64 noundef %i.p, ptr noundef %i.t, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEES8_EEvT_mSA_SA_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvT0_mSA_SA_mT1_RT_(ptr noundef %i.m, i64 noundef %i.p, ptr noundef %i.t, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEES8_EEvT_mSA_SA_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEES8_EEvT_mSA_SA_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  %i.v = trunc i64 %i.s to i16
  store i16 %i.v, ptr %i.h, align 8, !tbaa !81
  %i.w = add i64 %i.s, %i.q
  %i.x = trunc i64 %i.w to i16
  store i16 %i.x, ptr %i.d, align 2, !tbaa !73
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !62
  br label %bb.k

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.y = xor i64 %i.c, 65535
  %i.z = icmp ult i64 %i.y, %2
  br i1 %i.z, label %bb.g, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.1) #20
  unreachable

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit: ; preds = %bb.f
  %i.aa = add nuw nsw i64 %2, %i.c                ; 2 uses
  %.tr.i = zext i16 %i.b to i32
  %.lhs.trunc.i = shl nuw nsw i32 %.tr.i, 3
  %i.ab = udiv i32 %.lhs.trunc.i, 5
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 65535)
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = tail call noundef i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ad) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit
  %i.af = icmp samesign ugt i64 %i.aa, 65535
  br i1 %i.af, label %bb.i, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #20
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i: ; preds = %bb.h
  %i.ag = shl nuw nsw i64 %i.ae, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21
  %.pre = load i16, ptr %i.d, align 2, !tbaa !69  ; 2 uses
  %.pre61 = load i16, ptr %i.h, align 8, !tbaa !63 ; 2 uses
  %.pre62 = load ptr, ptr %0, align 8, !tbaa !62
  %.pre64 = zext i16 %.pre to i64
  %.pre65 = zext i16 %.pre61 to i64
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i
  %.pre-phi66 = phi i64 [ %i.j, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre65, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.f, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre64, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ] ; 2 uses
  %i.ai = phi ptr [ %i.l, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre62, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ] ; 4 uses
  %i.aj = phi i16 [ %i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre61, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ]
  %i.ak = phi i16 [ %i.e, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ]
  %.0.i.i = phi ptr [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %i.ah, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ] ; 3 uses
  %i.al = sub nsw i64 %.pre-phi, %.pre-phi66
  %i.am = add nsw i64 %2, %i.al                   ; 2 uses
  %i.an = sub nsw i64 %i.ae, %i.am
  %i.ao = lshr i64 %i.an, 1                       ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.pre-phi66 ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.pre-phi ; 3 uses
  %.not16.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not16.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit, %.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.aq, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.ap, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.as = load i32, ptr %.018.i.i, align 4, !tbaa !65
  store i32 %i.as, ptr %.01517.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i, align 4, !tbaa !65
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
end_hunk_2
begin_hunk_3_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEES8_EEvT_mSA_SA_mT0_RT1_:bb.a
  %.010.i.i264.ph = phi ptr [ %i.gg, %vector.memcheck481 ], [ %i.gg, %.lr.ph.i.i263.preheader ], [ %i.hb, %middle.block494 ]
  %.079.i.i265.ph = phi ptr [ %3, %vector.memcheck481 ], [ %3, %.lr.ph.i.i263.preheader ], [ %i.hc, %middle.block494 ]
  br label %.lr.ph.i.i263

.lr.ph.i.i263:                                    ; preds = %.lr.ph.i.i263.preheader523, %.lr.ph.i.i263
  %.010.i.i264 = phi ptr [ %i.hj, %.lr.ph.i.i263 ], [ %.010.i.i264.ph, %.lr.ph.i.i263.preheader523 ] ; 2 uses
  %.079.i.i265 = phi ptr [ %i.hi, %.lr.ph.i.i263 ], [ %.079.i.i265.ph, %.lr.ph.i.i263.preheader523 ] ; 3 uses
  %i.hh = load i32, ptr %.079.i.i265, align 4, !tbaa !65
  store i32 %i.hh, ptr %.010.i.i264, align 4, !tbaa !65
  store i32 0, ptr %.079.i.i265, align 4, !tbaa !65
  %i.hi = getelementptr inbounds nuw i8, ptr %.079.i.i265, i64 4 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.010.i.i264, i64 4 ; 2 uses
  %.not.i.i266 = icmp eq ptr %i.hi, %i.a
  br i1 %.not.i.i266, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit267, label %.lr.ph.i.i263, !llvm.loop !293

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit267: ; preds = %.lr.ph.i.i263, %middle.block494, %bb.l
  %i.hk = phi ptr [ %i.gg, %bb.l ], [ %i.hb, %middle.block494 ], [ %i.hj, %.lr.ph.i.i263 ] ; 2 uses
  %.not3.i268 = icmp eq ptr %i.hk, %i.a
  br i1 %.not3.i268, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %.lr.ph.i269

.lr.ph.i269:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit267, %.lr.ph.i269
  %storemerge4.i270 = phi ptr [ %i.hn, %.lr.ph.i269 ], [ %i.hk, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit267 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i270, align 4, !tbaa !65
  %i.hl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hm = add i32 %i.hl, -1
  store i32 %i.hm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hn = getelementptr inbounds nuw i8, ptr %storemerge4.i270, i64 4 ; 2 uses
  %.not.i271 = icmp eq ptr %i.hn, %i.a
  br i1 %.not.i271, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %.lr.ph.i269, !llvm.loop !16

_ZN5boost9container13destroy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_S9_.exit253: ; preds = %.loopexit
  %i.ho = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.ho, ptr %0, align 4, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost9container13destroy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_S9_.exit253, %.loopexit357
  %i.hp = sub nuw i64 %4, %i.h                    ; 3 uses
  %i.hq = sub i64 %1, %i.e                        ; 2 uses
  %.not190 = icmp ult i64 %i.hq, %i.hp
  br i1 %.not190, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  %.neg355 = mul i64 %i.hp, -4                    ; 2 uses
  %i.hr = getelementptr i8, ptr %i.a, i64 %.neg355 ; 7 uses
  %.not16.i281 = icmp eq i64 %.neg355, 0
  br i1 %.not16.i281, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i282

.lr.ph.i282:                                      ; preds = %bb.m, %.lr.ph.i282
  %.018.i283 = phi ptr [ %i.hv, %.lr.ph.i282 ], [ %i.hr, %bb.m ] ; 3 uses
  %.01517.i284 = phi ptr [ %i.hw, %.lr.ph.i282 ], [ %i.a, %bb.m ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i284) ]
  %i.hs = load i32, ptr %.018.i283, align 4, !tbaa !65
  store i32 %i.hs, ptr %.01517.i284, align 4, !tbaa !65
  store i32 0, ptr %.018.i283, align 4, !tbaa !65
  %i.ht = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hu = add i32 %i.ht, 1
  store i32 %i.hu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hv = getelementptr inbounds nuw i8, ptr %.018.i283, i64 4 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.01517.i284, i64 4
  %.not.i285 = icmp eq ptr %i.hv, %i.a
  br i1 %.not.i285, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit287, label %.lr.ph.i282, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit287: ; preds = %.lr.ph.i282
  %.not8.i.i289 = icmp eq ptr %3, %i.hr
  br i1 %.not8.i.i289, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i290.preheader

.lr.ph.i.i290.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit287
  %i.hx = shl i64 %1, 2
  %i.hy = shl i64 %4, 2
  %i.hz = add i64 %i.g, %i.c
  %i.ia = add i64 %i.hz, %i.hx
  %i.ib = add i64 %i.ia, -4
  %i.ic = add i64 %i.hy, %i.b
  %i.id = sub i64 %i.ib, %i.ic                    ; 2 uses
  %i.ie = lshr i64 %i.id, 2
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check504 = icmp ult i64 %i.id, 172
  br i1 %min.iters.check504, label %.lr.ph.i.i290.preheader522, label %vector.memcheck505

vector.memcheck505:                               ; preds = %.lr.ph.i.i290.preheader
  %i.ig = shl i64 %1, 2                           ; 3 uses
  %i.ih = shl i64 %4, 2                           ; 2 uses
  %i.ii = add i64 %i.g, %i.c
  %i.ij = add i64 %i.ii, %i.ig
  %i.ik = add i64 %i.ij, -4
  %i.il = add i64 %i.ih, %i.b
  %i.im = sub i64 %i.ik, %i.il
  %i.in = and i64 %i.im, -4                       ; 2 uses
  %i.io = add i64 %i.ig, -4
  %i.ip = sub i64 %i.io, %i.in
  %i.iq = getelementptr i8, ptr %0, i64 %i.ip
  %i.ir = add i64 %i.g, %i.ig
  %i.is = add i64 %i.ir, -4
  %i.it = add i64 %i.ih, %i.in
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = getelementptr i8, ptr %0, i64 %i.iu
  %bound0506 = icmp ult ptr %i.iq, %i.hr
  %bound1507 = icmp ult ptr %i.iv, %i.a
  %found.conflict508 = and i1 %bound0506, %bound1507
  br i1 %found.conflict508, label %.lr.ph.i.i290.preheader522, label %vector.ph509

vector.ph509:                                     ; preds = %vector.memcheck505
  %n.vec510 = and i64 %i.if, 9223372036854775800  ; 3 uses
  %i.iw = mul i64 %n.vec510, -4                   ; 2 uses
  %i.ix = getelementptr i8, ptr %i.a, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.hr, i64 %i.iw
  br label %vector.body511

vector.body511:                                   ; preds = %vector.body511, %vector.ph509
  %index512 = phi i64 [ 0, %vector.ph509 ], [ %index.next517, %vector.body511 ] ; 2 uses
  %i.iz = mul i64 %index512, -4                   ; 2 uses
  %next.gep513 = getelementptr i8, ptr %i.a, i64 %i.iz ; 2 uses
  %next.gep514 = getelementptr i8, ptr %i.hr, i64 %i.iz ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %next.gep514, i64 -16 ; 2 uses
  %i.jb = getelementptr inbounds i8, ptr %next.gep514, i64 -32 ; 2 uses
  %wide.load515 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !65, !alias.scope !307
  %wide.load516 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !65, !alias.scope !307
  %i.jc = getelementptr inbounds i8, ptr %next.gep513, i64 -16
  %i.jd = getelementptr inbounds i8, ptr %next.gep513, i64 -32
  store <4 x i32> %wide.load515, ptr %i.jc, align 4, !tbaa !65, !alias.scope !308, !noalias !307
  store <4 x i32> %wide.load516, ptr %i.jd, align 4, !tbaa !65, !alias.scope !308, !noalias !307
  store <4 x i32> zeroinitializer, ptr %i.ja, align 4, !tbaa !65, !alias.scope !307
  store <4 x i32> zeroinitializer, ptr %i.jb, align 4, !tbaa !65, !alias.scope !307
  %index.next517 = add nuw i64 %index512, 8       ; 2 uses
  %i.je = icmp eq i64 %index.next517, %n.vec510
  br i1 %i.je, label %middle.block518, label %vector.body511, !llvm.loop !297

middle.block518:                                  ; preds = %vector.body511
  %cmp.n519 = icmp eq i64 %i.if, %n.vec510
  br i1 %cmp.n519, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i290.preheader522

.lr.ph.i.i290.preheader522:                       ; preds = %vector.memcheck505, %.lr.ph.i.i290.preheader, %middle.block518
  %.010.i.i291.ph = phi ptr [ %i.a, %vector.memcheck505 ], [ %i.a, %.lr.ph.i.i290.preheader ], [ %i.ix, %middle.block518 ]
  %.079.i.i292.ph = phi ptr [ %i.hr, %vector.memcheck505 ], [ %i.hr, %.lr.ph.i.i290.preheader ], [ %i.iy, %middle.block518 ]
  br label %.lr.ph.i.i290

.lr.ph.i.i290:                                    ; preds = %.lr.ph.i.i290.preheader522, %.lr.ph.i.i290
  %.010.i.i291 = phi ptr [ %i.jg, %.lr.ph.i.i290 ], [ %.010.i.i291.ph, %.lr.ph.i.i290.preheader522 ]
  %.079.i.i292 = phi ptr [ %i.jf, %.lr.ph.i.i290 ], [ %.079.i.i292.ph, %.lr.ph.i.i290.preheader522 ]
  %i.jf = getelementptr inbounds i8, ptr %.079.i.i292, i64 -4 ; 4 uses
  %i.jg = getelementptr inbounds i8, ptr %.010.i.i291, i64 -4 ; 2 uses
  %i.jh = load i32, ptr %i.jf, align 4, !tbaa !65
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !65
  store i32 0, ptr %i.jf, align 4, !tbaa !65
  %.not.i.i293 = icmp eq ptr %3, %i.jf
  br i1 %.not.i.i293, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i290, !llvm.loop !298

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i290, %middle.block518, %bb.m, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit287
  %i.ji = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.ji, ptr %3, align 4, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223

bb.n:                                             ; preds = %.critedge
  %.not16.i294 = icmp eq ptr %3, %i.a
  br i1 %.not16.i294, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304, label %.lr.ph.i295.preheader

.lr.ph.i295.preheader:                            ; preds = %bb.n
  %i.jj = sub nuw i64 %i.hp, %i.hq
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jj
  br label %.lr.ph.i295

.lr.ph.i295:                                      ; preds = %.lr.ph.i295.preheader, %.lr.ph.i295
  %.018.i296 = phi ptr [ %i.jo, %.lr.ph.i295 ], [ %3, %.lr.ph.i295.preheader ] ; 3 uses
  %.01517.i297 = phi ptr [ %i.jp, %.lr.ph.i295 ], [ %i.jk, %.lr.ph.i295.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i297) ]
  %i.jl = load i32, ptr %.018.i296, align 4, !tbaa !65
  store i32 %i.jl, ptr %.01517.i297, align 4, !tbaa !65
  store i32 0, ptr %.018.i296, align 4, !tbaa !65
  %i.jm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jn = add i32 %i.jm, 1
  store i32 %i.jn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jo = getelementptr inbounds nuw i8, ptr %.018.i296, i64 4 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.01517.i297, i64 4
  %.not.i298 = icmp eq ptr %i.jo, %i.a
  br i1 %.not.i298, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304.loopexit, label %.lr.ph.i295, !llvm.loop !8

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304.loopexit: ; preds = %.lr.ph.i295
  %.pre = load i32, ptr %5, align 4, !tbaa !65
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304: ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304.loopexit, %bb.n
  %i.jq = phi i32 [ %.pre, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304.loopexit ], [ 0, %bb.n ]
  store i32 %i.jq, ptr %3, align 4, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 0, ptr %i.a, align 4, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  %i.jr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i216, %.lr.ph.i250, %.lr.ph.i269, %bb.k, %bb.h, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit248, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit267, %.loopexit360, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvT0_mSA_SA_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %8 = ptrtoaddr ptr %0 to i64                    ; 7 uses
  %i.a = sub i64 0, %4
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 27 uses
  %i.c = add i64 %4, %1                           ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c ; 4 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %3 to i64                   ; 7 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 3 uses
  %i.i = sub nsw i64 0, %i.h
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub i64 %i.j, %i.e                       ; 5 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 8 uses
  %i.m = add i64 %i.h, %4                         ; 6 uses
  %.not = icmp ult i64 %i.l, %i.m
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sub i64 0, %i.m
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.p = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.p, ptr %i.o, align 4, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %.not16.i = icmp eq ptr %3, %i.b
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.w, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 3 uses
  %.01517.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.s, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.t = load i32, ptr %.018.i, align 4, !tbaa !65
  store i32 %i.t, ptr %.01517.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i, align 4, !tbaa !65
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.w, %i.b
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.not125 = icmp ult i64 %i.l, %i.c
  br i1 %.not125, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i130 = icmp eq ptr %0, %3
  br i1 %.not16.i130, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.c, %.lr.ph.i131
  %.018.i132 = phi ptr [ %i.ab, %.lr.ph.i131 ], [ %0, %bb.c ] ; 3 uses
  %.01517.i133 = phi ptr [ %i.ac, %.lr.ph.i131 ], [ %2, %bb.c ] ; 2 uses
  %i.y = load i32, ptr %.018.i132, align 4, !tbaa !65
  store i32 %i.y, ptr %.01517.i133, align 4, !tbaa !65
  store i32 0, ptr %.018.i132, align 4, !tbaa !65
  %i.z = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %.018.i132, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01517.i133, i64 4
  %.not.i134 = icmp eq ptr %i.ab, %3
  br i1 %.not.i134, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i131, !llvm.loop !8

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.ad = sub nuw i64 %i.l, %i.m                  ; 5 uses
  %i.ae = sub i64 0, %i.ad                        ; 3 uses
  %i.af = getelementptr [4 x i8], ptr %3, i64 %i.ae ; 11 uses
  %.not17.i = icmp eq i64 %i.ad, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %bb.d
  %.neg = add i64 %i.m, 1
  %xtraiter376 = and i64 %i.ad, 1
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader
  %i.ag = add nsw i64 %i.ad, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !65
  store i32 %i.ah, ptr %i.b, align 4, !tbaa !65
  store i32 0, ptr %i.af, align 4, !tbaa !65
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph.i137.prol.loopexit

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %.020.i.unr = phi i64 [ %i.ad, %.lr.ph.i137.preheader ], [ %i.ag, %.lr.ph.i137.prol ]
  %.0819.i.unr = phi ptr [ %i.af, %.lr.ph.i137.preheader ], [ %i.ak, %.lr.ph.i137.prol ]
  %.01618.i.unr = phi ptr [ %i.b, %.lr.ph.i137.preheader ], [ %i.al, %.lr.ph.i137.prol ]
  %i.am = icmp eq i64 %i.l, %.neg
  br i1 %i.am, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %.020.i = phi i64 [ %i.as, %.lr.ph.i137 ], [ %.020.i.unr, %.lr.ph.i137.prol.loopexit ]
  %.0819.i = phi ptr [ %i.aw, %.lr.ph.i137 ], [ %.0819.i.unr, %.lr.ph.i137.prol.loopexit ] ; 4 uses
  %.01618.i = phi ptr [ %i.ax, %.lr.ph.i137 ], [ %.01618.i.unr, %.lr.ph.i137.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.an = load i32, ptr %.0819.i, align 4, !tbaa !65
  store i32 %i.an, ptr %.01618.i, align 4, !tbaa !65
  store i32 0, ptr %.0819.i, align 4, !tbaa !65
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.as = add i64 %.020.i, -2                     ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !65
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !65
  store i32 0, ptr %i.aq, align 4, !tbaa !65
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i138.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i138.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137, %bb.d
  %.not.i139 = icmp eq ptr %i.af, %i.b
  %.not8.i.i = icmp eq ptr %0, %i.af
  %or.cond = or i1 %.not.i139, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.ay = shl i64 %i.ae, 2
  %i.az = add i64 %i.ay, %i.f
  %i.ba = add i64 %i.az, -4
  %i.bb = sub i64 %i.ba, %8                       ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 140
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader374, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.be = shl nsw i64 %1, 2
  %i.bf = shl i64 %i.ae, 2                        ; 2 uses
  %i.bg = add i64 %i.bf, %i.f
  %i.bh = add i64 %i.bg, -4
  %i.bi = sub i64 %i.bh, %8
  %i.bj = and i64 %i.bi, -4                       ; 2 uses
  %i.bk = add i64 %i.be, -4
  %i.bl = sub i64 %i.bk, %i.bj
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl
  %i.bn = add i64 %i.bf, -4
  %i.bo = sub i64 %i.bn, %i.bj
  %i.bp = getelementptr i8, ptr %3, i64 %i.bo
  %bound0 = icmp ult ptr %i.bm, %i.af
  %bound1 = icmp ult ptr %i.bp, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader374, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 9223372036854775800     ; 3 uses
  %i.bq = mul i64 %n.vec, -4                      ; 2 uses
  %i.br = getelementptr i8, ptr %i.b, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.af, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.bt ; 2 uses
  %next.gep292 = getelementptr i8, ptr %i.af, i64 %i.bt ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %next.gep292, i64 -16 ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep292, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !65, !alias.scope !330
  %wide.load293 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !65, !alias.scope !330
  %i.bw = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bw, align 4, !tbaa !65, !alias.scope !331, !noalias !330
  store <4 x i32> %wide.load293, ptr %i.bx, align 4, !tbaa !65, !alias.scope !331, !noalias !330
  store <4 x i32> zeroinitializer, ptr %i.bu, align 4, !tbaa !65, !alias.scope !330
  store <4 x i32> zeroinitializer, ptr %i.bv, align 4, !tbaa !65, !alias.scope !330
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader374

.lr.ph.i.i.preheader374:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.i.preheader ], [ %i.br, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader374, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader374 ]
  %.079.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader374 ]
  %i.bz = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.ca = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !65
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !65
  store i32 0, ptr %i.bz, align 4, !tbaa !65
  %.not.i.i = icmp eq ptr %0, %i.bz
  br i1 %.not.i.i, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i, !llvm.loop !313

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i140
  %storemerge4.i = phi ptr [ %i.ce, %.lr.ph.i140 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !65
  %i.cc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cd = add i32 %i.cc, -1
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i141 = icmp eq ptr %i.ce, %2
  br i1 %.not.i141, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i140, !llvm.loop !16

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i131, %bb.c
  %.not.i144 = icmp eq i64 %1, 0
  br i1 %.not.i144, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cf = phi i64 [ %i.cg, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i145.prol = phi ptr [ %i.cj, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cg = add i64 %i.cf, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i145.prol, align 4, !tbaa !65
  %i.ch = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ci = add i32 %i.ch, -1
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i145.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !314

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cg, %.preheader.prol ]
  %.0.i145.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cj, %.preheader.prol ]
  %i.ck = icmp ult i64 %1, 4
  br i1 %i.ck, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cl = phi i64 [ %i.ct, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i145 = phi ptr [ %i.cv, %.preheader ], [ %.0.i145.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i145, align 4, !tbaa !65
  %i.cm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i145, i64 4
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !65
  %i.cp = add i32 %i.cm, -2
  store i32 %i.cp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i145, i64 8
  store i32 -2147483648, ptr %i.cq, align 4, !tbaa !65
  %i.cr = add i32 %i.cm, -3
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i145, i64 12
  %i.ct = add i64 %i.cl, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.cs, align 4, !tbaa !65
  %i.cu = add i32 %i.cm, -4
  store i32 %i.cu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i145, i64 16
  %.not3.i146.3 = icmp eq i64 %i.ct, 0
  br i1 %.not3.i146.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.preheader, !llvm.loop !17

bb.e:                                             ; preds = %bb.a
  %i.cw = icmp ugt i64 %i.l, %i.h
  br i1 %i.cw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i156 = icmp eq ptr %3, %i.b
  br i1 %.not16.i156, label %.loopexit, label %.lr.ph.i157.preheader

.lr.ph.i157.preheader:                            ; preds = %bb.f
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157.preheader, %.lr.ph.i157
  %.018.i158 = phi ptr [ %i.db, %.lr.ph.i157 ], [ %3, %.lr.ph.i157.preheader ] ; 3 uses
  %.01517.i159 = phi ptr [ %i.dc, %.lr.ph.i157 ], [ %i.cx, %.lr.ph.i157.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i159) ]
  %i.cy = load i32, ptr %.018.i158, align 4, !tbaa !65
  store i32 %i.cy, ptr %.01517.i159, align 4, !tbaa !65
  store i32 0, ptr %.018.i158, align 4, !tbaa !65
  %i.cz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.db = getelementptr inbounds nuw i8, ptr %.018.i158, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01517.i159, i64 4
  %.not.i160 = icmp eq ptr %i.db, %i.b
  br i1 %.not.i160, label %.loopexit, label %.lr.ph.i157, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph.i157, %bb.f
  %.neg246 = sub i64 %i.l, %i.m
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.neg246 ; 8 uses
  %i.de = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 0, ptr %i.b, align 4, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  %i.df = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %.not.i163 = icmp eq ptr %3, %i.dd
  br i1 %.not.i163, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i164 = icmp eq ptr %0, %3
  br i1 %.not8.i.i164, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169, label %.lr.ph.i.i165.preheader

.lr.ph.i.i165.preheader:                          ; preds = %bb.g
  %i.dh = add i64 %i.f, -4
  %i.di = sub i64 %i.dh, %8                       ; 3 uses
  %i.dj = lshr i64 %i.di, 2
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check349 = icmp ult i64 %i.di, 140
  br i1 %min.iters.check349, label %.lr.ph.i.i165.preheader367, label %vector.memcheck350

vector.memcheck350:                               ; preds = %.lr.ph.i.i165.preheader
  %i.dl = shl nsw i64 %1, 2
  %i.dm = and i64 %i.di, -4                       ; 2 uses
  %i.dn = shl i64 %i.m, 2
  %i.do = add i64 %i.k, %i.dl
  %i.dp = add i64 %i.do, -4
  %i.dq = add i64 %i.dm, %i.dn
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = getelementptr i8, ptr %0, i64 %i.dr
  %i.dt = sub nuw nsw i64 -4, %i.dm
  %i.du = getelementptr i8, ptr %3, i64 %i.dt
  %bound0351 = icmp ult ptr %i.ds, %3
  %bound1352 = icmp ult ptr %i.du, %i.dd
  %found.conflict353 = and i1 %bound0351, %bound1352
  br i1 %found.conflict353, label %.lr.ph.i.i165.preheader367, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck350
  %n.vec355 = and i64 %i.dk, 9223372036854775800  ; 3 uses
  %i.dv = mul i64 %n.vec355, -4                   ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dd, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %3, i64 %i.dv
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next362, %vector.body356 ] ; 2 uses
  %i.dy = mul i64 %index357, -4                   ; 2 uses
  %next.gep358 = getelementptr i8, ptr %i.dd, i64 %i.dy ; 2 uses
  %next.gep359 = getelementptr i8, ptr %3, i64 %i.dy ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %next.gep359, i64 -16 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %next.gep359, i64 -32 ; 2 uses
  %wide.load360 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !65, !alias.scope !332
  %wide.load361 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !65, !alias.scope !332
  %i.eb = getelementptr inbounds i8, ptr %next.gep358, i64 -16
  %i.ec = getelementptr inbounds i8, ptr %next.gep358, i64 -32
  store <4 x i32> %wide.load360, ptr %i.eb, align 4, !tbaa !65, !alias.scope !333, !noalias !332
  store <4 x i32> %wide.load361, ptr %i.ec, align 4, !tbaa !65, !alias.scope !333, !noalias !332
  store <4 x i32> zeroinitializer, ptr %i.dz, align 4, !tbaa !65, !alias.scope !332
  store <4 x i32> zeroinitializer, ptr %i.ea, align 4, !tbaa !65, !alias.scope !332
  %index.next362 = add nuw i64 %index357, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.ed, label %middle.block363, label %vector.body356, !llvm.loop !318

middle.block363:                                  ; preds = %vector.body356
  %cmp.n364 = icmp eq i64 %i.dk, %n.vec355
  br i1 %cmp.n364, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169, label %.lr.ph.i.i165.preheader367

.lr.ph.i.i165.preheader367:                       ; preds = %vector.memcheck350, %.lr.ph.i.i165.preheader, %middle.block363
  %.010.i.i166.ph = phi ptr [ %i.dd, %vector.memcheck350 ], [ %i.dd, %.lr.ph.i.i165.preheader ], [ %i.dw, %middle.block363 ]
  %.079.i.i167.ph = phi ptr [ %3, %vector.memcheck350 ], [ %3, %.lr.ph.i.i165.preheader ], [ %i.dx, %middle.block363 ]
  br label %.lr.ph.i.i165

.lr.ph.i.i165:                                    ; preds = %.lr.ph.i.i165.preheader367, %.lr.ph.i.i165
  %.010.i.i166 = phi ptr [ %i.ef, %.lr.ph.i.i165 ], [ %.010.i.i166.ph, %.lr.ph.i.i165.preheader367 ]
  %.079.i.i167 = phi ptr [ %i.ee, %.lr.ph.i.i165 ], [ %.079.i.i167.ph, %.lr.ph.i.i165.preheader367 ]
  %i.ee = getelementptr inbounds i8, ptr %.079.i.i167, i64 -4 ; 4 uses
  %i.ef = getelementptr inbounds i8, ptr %.010.i.i166, i64 -4 ; 3 uses
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !65
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !65
  store i32 0, ptr %i.ee, align 4, !tbaa !65
  %.not.i.i168 = icmp eq ptr %0, %i.ee
  br i1 %.not.i.i168, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169, label %.lr.ph.i.i165, !llvm.loop !319

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169: ; preds = %.lr.ph.i.i165, %middle.block363, %bb.g
  %i.eh = phi ptr [ %i.dd, %bb.g ], [ %i.dw, %middle.block363 ], [ %i.ef, %.lr.ph.i.i165 ] ; 2 uses
  %.not3.i170 = icmp eq ptr %0, %i.eh
  br i1 %.not3.i170, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169, %.lr.ph.i171
  %storemerge4.i172 = phi ptr [ %i.ek, %.lr.ph.i171 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i172, align 4, !tbaa !65
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ek = getelementptr inbounds nuw i8, ptr %storemerge4.i172, i64 4 ; 2 uses
  %.not.i173 = icmp eq ptr %i.ek, %i.eh
  br i1 %.not.i173, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i171, !llvm.loop !16

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.el = getelementptr i8, ptr %i.b, i64 %.idx   ; 10 uses
  %.not17.i183 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i183, label %.loopexit248, label %.lr.ph.i184.preheader

.lr.ph.i184.preheader:                            ; preds = %bb.h
  %i.em = and i64 %i.k, 4
  %lcmp.mod380.not = icmp eq i64 %i.em, 0
  br i1 %lcmp.mod380.not, label %.lr.ph.i184.prol.loopexit, label %.lr.ph.i184.prol

.lr.ph.i184.prol:                                 ; preds = %.lr.ph.i184.preheader
  %i.en = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.eo = load i32, ptr %i.el, align 4, !tbaa !65
  store i32 %i.eo, ptr %i.b, align 4, !tbaa !65
  store i32 0, ptr %i.el, align 4, !tbaa !65
  %i.ep = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph.i184.prol.loopexit

.lr.ph.i184.prol.loopexit:                        ; preds = %.lr.ph.i184.prol, %.lr.ph.i184.preheader
  %.020.i185.unr = phi i64 [ %i.l, %.lr.ph.i184.preheader ], [ %i.en, %.lr.ph.i184.prol ]
  %.0819.i186.unr = phi ptr [ %i.el, %.lr.ph.i184.preheader ], [ %i.er, %.lr.ph.i184.prol ]
  %.01618.i187.unr = phi ptr [ %i.b, %.lr.ph.i184.preheader ], [ %i.es, %.lr.ph.i184.prol ]
  %i.et = icmp eq i64 %i.k, 4
  br i1 %i.et, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %.lr.ph.i184.prol.loopexit, %.lr.ph.i184
  %.020.i185 = phi i64 [ %i.ez, %.lr.ph.i184 ], [ %.020.i185.unr, %.lr.ph.i184.prol.loopexit ]
  %.0819.i186 = phi ptr [ %i.fd, %.lr.ph.i184 ], [ %.0819.i186.unr, %.lr.ph.i184.prol.loopexit ] ; 4 uses
  %.01618.i187 = phi ptr [ %i.fe, %.lr.ph.i184 ], [ %.01618.i187.unr, %.lr.ph.i184.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i187) ]
  %i.eu = load i32, ptr %.0819.i186, align 4, !tbaa !65
  store i32 %i.eu, ptr %.01618.i187, align 4, !tbaa !65
  store i32 0, ptr %.0819.i186, align 4, !tbaa !65
  %i.ev = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ex = getelementptr inbounds nuw i8, ptr %.0819.i186, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.01618.i187, i64 4
  %i.ez = add i64 %.020.i185, -2                  ; 2 uses
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !65
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !65
  store i32 0, ptr %i.ex, align 4, !tbaa !65
  %i.fb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fd = getelementptr inbounds nuw i8, ptr %.0819.i186, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.01618.i187, i64 8
  %.not.i188.1 = icmp eq i64 %i.ez, 0
  br i1 %.not.i188.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190, label %.lr.ph.i184, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190: ; preds = %.lr.ph.i184, %.lr.ph.i184.prol.loopexit
  %.not8.i.i192 = icmp eq ptr %3, %i.el
  br i1 %.not8.i.i192, label %.loopexit248, label %.lr.ph.i.i193.preheader

.lr.ph.i.i193.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190
  %i.ff = shl nsw i64 %1, 2
  %i.fg = shl i64 %8, 1
  %i.fh = shl i64 %4, 2
  %i.fi = add i64 %i.ff, %i.fg
  %i.fj = add i64 %i.fi, -4
  %i.fk = add i64 %i.f, %7
  %i.fl = add i64 %i.fk, %i.fh
  %i.fm = sub i64 %i.fj, %i.fl                    ; 2 uses
  %i.fn = lshr i64 %i.fm, 2
  %i.fo = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %min.iters.check301 = icmp ult i64 %i.fm, 188
  br i1 %min.iters.check301, label %.lr.ph.i.i193.preheader371, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.lr.ph.i.i193.preheader
  %i.fp = shl nsw i64 %1, 2                       ; 3 uses
  %i.fq = shl i64 %8, 1
  %i.fr = shl i64 %4, 2                           ; 2 uses
  %i.fs = add i64 %i.fp, %i.fq
  %i.ft = add i64 %i.fs, -4
  %i.fu = add i64 %i.f, %7
  %i.fv = add i64 %i.fu, %i.fr
  %i.fw = sub i64 %i.ft, %i.fv
  %i.fx = and i64 %i.fw, -4                       ; 2 uses
  %i.fy = add i64 %i.fp, -4
  %i.fz = sub i64 %i.fy, %i.fx
  %i.ga = getelementptr i8, ptr %0, i64 %i.fz
  %i.gb = add i64 %i.fp, %8
  %i.gc = add i64 %i.gb, -4
  %i.gd = add i64 %i.fr, %7
  %i.ge = add i64 %i.gd, %i.fx
  %i.gf = sub i64 %i.gc, %i.ge
  %i.gg = getelementptr i8, ptr %0, i64 %i.gf
  %bound0303 = icmp ult ptr %i.ga, %i.el
  %bound1304 = icmp ult ptr %i.gg, %i.b
  %found.conflict305 = and i1 %bound0303, %bound1304
  br i1 %found.conflict305, label %.lr.ph.i.i193.preheader371, label %vector.ph306

vector.ph306:                                     ; preds = %vector.memcheck302
  %n.vec307 = and i64 %i.fo, 9223372036854775800  ; 3 uses
  %i.gh = mul i64 %n.vec307, -4                   ; 2 uses
  %i.gi = getelementptr i8, ptr %i.b, i64 %i.gh   ; 2 uses
  %i.gj = getelementptr i8, ptr %i.el, i64 %i.gh
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph306
  %index309 = phi i64 [ 0, %vector.ph306 ], [ %index.next314, %vector.body308 ] ; 2 uses
  %i.gk = mul i64 %index309, -4                   ; 2 uses
  %next.gep310 = getelementptr i8, ptr %i.b, i64 %i.gk ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.el, i64 %i.gk ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %next.gep311, i64 -16 ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %next.gep311, i64 -32 ; 2 uses
  %wide.load312 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !65, !alias.scope !334
  %wide.load313 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !65, !alias.scope !334
  %i.gn = getelementptr inbounds i8, ptr %next.gep310, i64 -16
  %i.go = getelementptr inbounds i8, ptr %next.gep310, i64 -32
  store <4 x i32> %wide.load312, ptr %i.gn, align 4, !tbaa !65, !alias.scope !335, !noalias !334
  store <4 x i32> %wide.load313, ptr %i.go, align 4, !tbaa !65, !alias.scope !335, !noalias !334
  store <4 x i32> zeroinitializer, ptr %i.gl, align 4, !tbaa !65, !alias.scope !334
  store <4 x i32> zeroinitializer, ptr %i.gm, align 4, !tbaa !65, !alias.scope !334
  %index.next314 = add nuw i64 %index309, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next314, %n.vec307
  br i1 %i.gp, label %middle.block315, label %vector.body308, !llvm.loop !323

middle.block315:                                  ; preds = %vector.body308
  %cmp.n316 = icmp eq i64 %i.fo, %n.vec307
  br i1 %cmp.n316, label %.loopexit248, label %.lr.ph.i.i193.preheader371

.lr.ph.i.i193.preheader371:                       ; preds = %vector.memcheck302, %.lr.ph.i.i193.preheader, %middle.block315
  %.010.i.i194.ph = phi ptr [ %i.b, %vector.memcheck302 ], [ %i.b, %.lr.ph.i.i193.preheader ], [ %i.gi, %middle.block315 ]
  %.079.i.i195.ph = phi ptr [ %i.el, %vector.memcheck302 ], [ %i.el, %.lr.ph.i.i193.preheader ], [ %i.gj, %middle.block315 ]
  br label %.lr.ph.i.i193

.lr.ph.i.i193:                                    ; preds = %.lr.ph.i.i193.preheader371, %.lr.ph.i.i193
  %.010.i.i194 = phi ptr [ %i.gr, %.lr.ph.i.i193 ], [ %.010.i.i194.ph, %.lr.ph.i.i193.preheader371 ]
  %.079.i.i195 = phi ptr [ %i.gq, %.lr.ph.i.i193 ], [ %.079.i.i195.ph, %.lr.ph.i.i193.preheader371 ]
  %i.gq = getelementptr inbounds i8, ptr %.079.i.i195, i64 -4 ; 4 uses
  %i.gr = getelementptr inbounds i8, ptr %.010.i.i194, i64 -4 ; 3 uses
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !65
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !65
  store i32 0, ptr %i.gq, align 4, !tbaa !65
  %.not.i.i196 = icmp eq ptr %3, %i.gq
  br i1 %.not.i.i196, label %.loopexit248, label %.lr.ph.i.i193, !llvm.loop !324

.loopexit248:                                     ; preds = %.lr.ph.i.i193, %middle.block315, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190
  %i.gt = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190 ], [ %i.gi, %middle.block315 ], [ %i.gr, %.lr.ph.i.i193 ] ; 2 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.a ; 8 uses
  %i.gv = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.gv, ptr %i.gu, align 4, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  %.not.i198 = icmp eq ptr %3, %i.gu
  br i1 %.not.i198, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %bb.i

bb.i:                                             ; preds = %.loopexit248
  %.not8.i.i199 = icmp eq ptr %0, %3
  br i1 %.not8.i.i199, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204, label %.lr.ph.i.i200.preheader

.lr.ph.i.i200.preheader:                          ; preds = %bb.i
  %i.gw = add i64 %i.f, -4
  %i.gx = sub i64 %i.gw, %8                       ; 3 uses
  %i.gy = lshr i64 %i.gx, 2
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check325 = icmp ult i64 %i.gx, 108
  br i1 %min.iters.check325, label %.lr.ph.i.i200.preheader369, label %vector.memcheck326

vector.memcheck326:                               ; preds = %.lr.ph.i.i200.preheader
  %i.ha = shl i64 %4, 2
  %i.hb = and i64 %i.gx, -4                       ; 2 uses
  %i.hc = add i64 %i.ha, %i.hb
  %i.hd = sub nuw nsw i64 -4, %i.hc
  %i.he = getelementptr i8, ptr %i.gt, i64 %i.hd
  %i.hf = sub nuw nsw i64 -4, %i.hb
  %i.hg = getelementptr i8, ptr %3, i64 %i.hf
  %bound0327 = icmp ult ptr %i.he, %3
  %bound1328 = icmp ult ptr %i.hg, %i.gu
  %found.conflict329 = and i1 %bound0327, %bound1328
  br i1 %found.conflict329, label %.lr.ph.i.i200.preheader369, label %vector.ph330

vector.ph330:                                     ; preds = %vector.memcheck326
  %n.vec331 = and i64 %i.gz, 9223372036854775800  ; 3 uses
  %i.hh = mul i64 %n.vec331, -4                   ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gu, i64 %i.hh  ; 2 uses
  %i.hj = getelementptr i8, ptr %3, i64 %i.hh
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph330
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next338, %vector.body332 ] ; 2 uses
  %i.hk = mul i64 %index333, -4                   ; 2 uses
  %next.gep334 = getelementptr i8, ptr %i.gu, i64 %i.hk ; 2 uses
  %next.gep335 = getelementptr i8, ptr %3, i64 %i.hk ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %next.gep335, i64 -16 ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %next.gep335, i64 -32 ; 2 uses
  %wide.load336 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !65, !alias.scope !336
  %wide.load337 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !65, !alias.scope !336
  %i.hn = getelementptr inbounds i8, ptr %next.gep334, i64 -16
  %i.ho = getelementptr inbounds i8, ptr %next.gep334, i64 -32
  store <4 x i32> %wide.load336, ptr %i.hn, align 4, !tbaa !65, !alias.scope !337, !noalias !336
  store <4 x i32> %wide.load337, ptr %i.ho, align 4, !tbaa !65, !alias.scope !337, !noalias !336
  store <4 x i32> zeroinitializer, ptr %i.hl, align 4, !tbaa !65, !alias.scope !336
  store <4 x i32> zeroinitializer, ptr %i.hm, align 4, !tbaa !65, !alias.scope !336
  %index.next338 = add nuw i64 %index333, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next338, %n.vec331
  br i1 %i.hp, label %middle.block339, label %vector.body332, !llvm.loop !328

middle.block339:                                  ; preds = %vector.body332
  %cmp.n340 = icmp eq i64 %i.gz, %n.vec331
  br i1 %cmp.n340, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204, label %.lr.ph.i.i200.preheader369

.lr.ph.i.i200.preheader369:                       ; preds = %vector.memcheck326, %.lr.ph.i.i200.preheader, %middle.block339
  %.010.i.i201.ph = phi ptr [ %i.gu, %vector.memcheck326 ], [ %i.gu, %.lr.ph.i.i200.preheader ], [ %i.hi, %middle.block339 ]
  %.079.i.i202.ph = phi ptr [ %3, %vector.memcheck326 ], [ %3, %.lr.ph.i.i200.preheader ], [ %i.hj, %middle.block339 ]
  br label %.lr.ph.i.i200

.lr.ph.i.i200:                                    ; preds = %.lr.ph.i.i200.preheader369, %.lr.ph.i.i200
  %.010.i.i201 = phi ptr [ %i.hr, %.lr.ph.i.i200 ], [ %.010.i.i201.ph, %.lr.ph.i.i200.preheader369 ]
  %.079.i.i202 = phi ptr [ %i.hq, %.lr.ph.i.i200 ], [ %.079.i.i202.ph, %.lr.ph.i.i200.preheader369 ]
  %i.hq = getelementptr inbounds i8, ptr %.079.i.i202, i64 -4 ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %.010.i.i201, i64 -4 ; 3 uses
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !65
  store i32 %i.hs, ptr %i.hr, align 4, !tbaa !65
  store i32 0, ptr %i.hq, align 4, !tbaa !65
  %.not.i.i203 = icmp eq ptr %0, %i.hq
  br i1 %.not.i.i203, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204, label %.lr.ph.i.i200, !llvm.loop !329

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204: ; preds = %.lr.ph.i.i200, %middle.block339, %bb.i
  %i.ht = phi ptr [ %i.gu, %bb.i ], [ %i.hi, %middle.block339 ], [ %i.hr, %.lr.ph.i.i200 ] ; 2 uses
  %.not3.i205 = icmp eq ptr %0, %i.ht
  br i1 %.not3.i205, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204, %.lr.ph.i206
  %storemerge4.i207 = phi ptr [ %i.hw, %.lr.ph.i206 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i207, align 4, !tbaa !65
  %i.hu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hv = add i32 %i.hu, -1
  store i32 %i.hv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hw = getelementptr inbounds nuw i8, ptr %storemerge4.i207, i64 4 ; 2 uses
  %.not.i208 = icmp eq ptr %i.hw, %i.ht
  br i1 %.not.i208, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i206, !llvm.loop !16

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i140, %.lr.ph.i206, %.lr.ph.i171, %.loopexit248, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE7emplaceIJRKS3_EEEPS3_PSA_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !69   ; 5 uses
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i16, ptr %i.g, align 4, !tbaa !70
  %.not27 = icmp eq i16 %i.h, %i.c
  br i1 %.not27, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.i = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.i, ptr %i.e, align 4, !tbaa !65
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.l = add i16 %i.c, 1
  store i16 %i.l, ptr %i.b, align 2, !tbaa !69
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !63   ; 5 uses
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 9 uses
  %i.q = icmp eq ptr %1, %i.p
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not26 = icmp eq i16 %i.n, 0
  br i1 %.not26, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.p, i64 -4       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.s, ptr %i.r, align 4, !tbaa !65
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.v = add i16 %i.n, -1
  store i16 %i.v, ptr %i.m, align 8, !tbaa !63
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %1 to i64
  %i.x = ptrtoint ptr %i.p to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = sub nsw i64 %i.d, %i.o
  %i.ab = lshr i64 %i.aa, 1
  %.not37 = icmp ult i64 %i.z, %i.ab
  br i1 %.not37, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !70
  %.not25 = icmp eq i16 %i.ad, %i.c
  br i1 %.not25, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !65
  store i32 %i.af, ptr %i.e, align 4, !tbaa !65
  store i32 0, ptr %i.ae, align 4, !tbaa !65
  %i.ag = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %.not8.i.i = icmp eq ptr %1, %i.ae
  br i1 %.not8.i.i, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.e, %bb.i ]
  %.079.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ae, %bb.i ]
  %i.ai = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !65
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !65
  store i32 0, ptr %i.ai, align 4, !tbaa !65
  %.not.i.i = icmp eq ptr %1, %i.ai
  br i1 %.not.i.i, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i, !llvm.loop !12

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i, %bb.i
  %i.al = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.al, ptr %1, align 4, !tbaa !65
  %i.am = add i16 %i.c, 1
  store i16 %i.am, ptr %i.b, align 2, !tbaa !69
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !65
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !65
  store i32 0, ptr %i.p, align 4, !tbaa !65
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %.not8.i.i28 = icmp eq ptr %i.ar, %1
  br i1 %.not8.i.i28, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %bb.k, %.lr.ph.i.i29
  %.010.i.i30 = phi ptr [ %i.au, %.lr.ph.i.i29 ], [ %i.p, %bb.k ] ; 2 uses
  %.079.i.i31 = phi ptr [ %i.at, %.lr.ph.i.i29 ], [ %i.ar, %bb.k ] ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_:bb.a
  %.079.i.i338.ph = phi ptr [ %i.ju, %vector.memcheck624 ], [ %i.ju, %.lr.ph.i.i336.preheader ], [ %i.lb, %middle.block637 ]
  br label %.lr.ph.i.i336

.lr.ph.i.i336:                                    ; preds = %.lr.ph.i.i336.preheader670, %.lr.ph.i.i336
  %.010.i.i337 = phi ptr [ %i.lj, %.lr.ph.i.i336 ], [ %.010.i.i337.ph, %.lr.ph.i.i336.preheader670 ]
  %.079.i.i338 = phi ptr [ %i.li, %.lr.ph.i.i336 ], [ %.079.i.i338.ph, %.lr.ph.i.i336.preheader670 ]
  %i.li = getelementptr inbounds i8, ptr %.079.i.i338, i64 -4 ; 4 uses
  %i.lj = getelementptr inbounds i8, ptr %.010.i.i337, i64 -4 ; 2 uses
  %i.lk = load i32, ptr %i.li, align 4, !tbaa !65
  store i32 %i.lk, ptr %i.lj, align 4, !tbaa !65
  store i32 0, ptr %i.li, align 4, !tbaa !65
  %.not.i.i339 = icmp eq ptr %3, %i.li
  br i1 %.not.i.i339, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i336, !llvm.loop !382

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i336, %middle.block637, %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit333
  %.not9.i.i343 = icmp eq i64 %i.js, 0
  br i1 %.not9.i.i343, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.preheader.i.i344

.lr.ph.preheader.i.i344:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit
  %.sroa.0.0.copyload.i340 = load ptr, ptr %5, align 8
  %.pre.i.i345 = load i32, ptr %.sroa.0.0.copyload.i340, align 4, !tbaa !65 ; 2 uses
  %min.iters.check642 = icmp ult i64 %i.js, 8
  br i1 %min.iters.check642, label %.lr.ph.i.i346.preheader, label %vector.ph643

vector.ph643:                                     ; preds = %.lr.ph.preheader.i.i344
  %n.vec644 = and i64 %i.js, -8                   ; 3 uses
  %i.ll = and i64 %i.js, 7
  %i.lm = shl i64 %n.vec644, 2
  %i.ln = getelementptr i8, ptr %3, i64 %i.lm
  %broadcast.splatinsert645 = insertelement <4 x i32> poison, i32 %.pre.i.i345, i64 0
  %broadcast.splat646 = shufflevector <4 x i32> %broadcast.splatinsert645, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body647

vector.body647:                                   ; preds = %vector.body647, %vector.ph643
  %index648 = phi i64 [ 0, %vector.ph643 ], [ %index.next650, %vector.body647 ] ; 2 uses
  %i.lo = shl i64 %index648, 2
  %next.gep649 = getelementptr i8, ptr %3, i64 %i.lo ; 2 uses
  %i.lp = getelementptr i8, ptr %next.gep649, i64 16
  store <4 x i32> %broadcast.splat646, ptr %next.gep649, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat646, ptr %i.lp, align 4, !tbaa !65
  %index.next650 = add nuw i64 %index648, 8       ; 2 uses
  %i.lq = icmp eq i64 %index.next650, %n.vec644
  br i1 %i.lq, label %middle.block651, label %vector.body647, !llvm.loop !383

middle.block651:                                  ; preds = %vector.body647
  %cmp.n652 = icmp eq i64 %i.js, %n.vec644
  br i1 %cmp.n652, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i346.preheader

.lr.ph.i.i346.preheader:                          ; preds = %.lr.ph.preheader.i.i344, %middle.block651
  %.012.i.i347.ph = phi i64 [ %i.js, %.lr.ph.preheader.i.i344 ], [ %i.ll, %middle.block651 ]
  %.0511.i.i348.ph = phi ptr [ %3, %.lr.ph.preheader.i.i344 ], [ %i.ln, %middle.block651 ]
  br label %.lr.ph.i.i346

.lr.ph.i.i346:                                    ; preds = %.lr.ph.i.i346.preheader, %.lr.ph.i.i346
  %.012.i.i347 = phi i64 [ %i.lr, %.lr.ph.i.i346 ], [ %.012.i.i347.ph, %.lr.ph.i.i346.preheader ]
  %.0511.i.i348 = phi ptr [ %i.ls, %.lr.ph.i.i346 ], [ %.0511.i.i348.ph, %.lr.ph.i.i346.preheader ] ; 2 uses
  %i.lr = add i64 %.012.i.i347, -1                ; 2 uses
  store i32 %.pre.i.i345, ptr %.0511.i.i348, align 4, !tbaa !65
  %i.ls = getelementptr inbounds nuw i8, ptr %.0511.i.i348, i64 4
  %.not.i.i349 = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i349, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i346, !llvm.loop !384

bb.o:                                             ; preds = %.critedge
  %i.lt = sub nuw i64 %i.js, %i.jt                ; 4 uses
  %.not16.i353 = icmp eq ptr %3, %i.a
  br i1 %.not16.i353, label %.loopexit, label %.lr.ph.i354.preheader

.lr.ph.i354.preheader:                            ; preds = %bb.o
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.lt
  br label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %.lr.ph.i354.preheader, %.lr.ph.i354
  %.018.i355 = phi ptr [ %i.ly, %.lr.ph.i354 ], [ %3, %.lr.ph.i354.preheader ] ; 3 uses
  %.01517.i356 = phi ptr [ %i.lz, %.lr.ph.i354 ], [ %i.lu, %.lr.ph.i354.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i356) ]
  %i.lv = load i32, ptr %.018.i355, align 4, !tbaa !65
  store i32 %i.lv, ptr %.01517.i356, align 4, !tbaa !65
  store i32 0, ptr %.018.i355, align 4, !tbaa !65
  %i.lw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.lx = add i32 %i.lw, 1
  store i32 %i.lx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ly = getelementptr inbounds nuw i8, ptr %.018.i355, i64 4 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.01517.i356, i64 4
  %.not.i357 = icmp eq ptr %i.ly, %i.a
  br i1 %.not.i357, label %.loopexit, label %.lr.ph.i354, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph.i354, %bb.o
  %.sroa.0.0.copyload.i360 = load ptr, ptr %5, align 8 ; 6 uses
  %.not9.i.i363 = icmp eq i64 %i.jt, 0
  br i1 %.not9.i.i363, label %.lr.ph.i.i377.preheader, label %.lr.ph.preheader.i.i364

.lr.ph.preheader.i.i364:                          ; preds = %.loopexit
  %.pre.i.i365 = load i32, ptr %.sroa.0.0.copyload.i360, align 4, !tbaa !65 ; 2 uses
  %min.iters.check656 = icmp ult i64 %i.jt, 8
  br i1 %min.iters.check656, label %.lr.ph.i.i366.preheader, label %vector.ph657

vector.ph657:                                     ; preds = %.lr.ph.preheader.i.i364
  %n.vec658 = and i64 %i.jt, -8                   ; 3 uses
  %i.ma = and i64 %i.jt, 7
  %i.mb = shl i64 %n.vec658, 2
  %i.mc = getelementptr i8, ptr %3, i64 %i.mb
  %broadcast.splatinsert659 = insertelement <4 x i32> poison, i32 %.pre.i.i365, i64 0
  %broadcast.splat660 = shufflevector <4 x i32> %broadcast.splatinsert659, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body661

vector.body661:                                   ; preds = %vector.body661, %vector.ph657
  %index662 = phi i64 [ 0, %vector.ph657 ], [ %index.next664, %vector.body661 ] ; 2 uses
  %i.md = shl i64 %index662, 2
  %next.gep663 = getelementptr i8, ptr %3, i64 %i.md ; 2 uses
  %i.me = getelementptr i8, ptr %next.gep663, i64 16
  store <4 x i32> %broadcast.splat660, ptr %next.gep663, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat660, ptr %i.me, align 4, !tbaa !65
  %index.next664 = add nuw i64 %index662, 8       ; 2 uses
  %i.mf = icmp eq i64 %index.next664, %n.vec658
  br i1 %i.mf, label %middle.block665, label %vector.body661, !llvm.loop !385

middle.block665:                                  ; preds = %vector.body661
  %cmp.n666 = icmp eq i64 %i.jt, %n.vec658
  br i1 %cmp.n666, label %.lr.ph.i.i377.preheader, label %.lr.ph.i.i366.preheader

.lr.ph.i.i366.preheader:                          ; preds = %.lr.ph.preheader.i.i364, %middle.block665
  %.012.i.i367.ph = phi i64 [ %i.jt, %.lr.ph.preheader.i.i364 ], [ %i.ma, %middle.block665 ]
  %.0511.i.i368.ph = phi ptr [ %3, %.lr.ph.preheader.i.i364 ], [ %i.mc, %middle.block665 ]
  br label %.lr.ph.i.i366

.lr.ph.i.i366:                                    ; preds = %.lr.ph.i.i366.preheader, %.lr.ph.i.i366
  %.012.i.i367 = phi i64 [ %i.mg, %.lr.ph.i.i366 ], [ %.012.i.i367.ph, %.lr.ph.i.i366.preheader ]
  %.0511.i.i368 = phi ptr [ %i.mh, %.lr.ph.i.i366 ], [ %.0511.i.i368.ph, %.lr.ph.i.i366.preheader ] ; 2 uses
  %i.mg = add i64 %.012.i.i367, -1                ; 2 uses
  store i32 %.pre.i.i365, ptr %.0511.i.i368, align 4, !tbaa !65
  %i.mh = getelementptr inbounds nuw i8, ptr %.0511.i.i368, i64 4
  %.not.i.i369 = icmp eq i64 %i.mg, 0
  br i1 %.not.i.i369, label %.lr.ph.i.i377.preheader, label %.lr.ph.i.i366, !llvm.loop !386

.lr.ph.i.i377.preheader:                          ; preds = %.lr.ph.i.i366, %middle.block665, %.loopexit
  %i.mi = add i64 %i.e, %4
  %xtraiter696 = and i64 %i.lt, 3                 ; 2 uses
  %lcmp.mod697.not = icmp eq i64 %xtraiter696, 0
  br i1 %lcmp.mod697.not, label %.lr.ph.i.i377.prol.loopexit, label %.lr.ph.i.i377.prol

.lr.ph.i.i377.prol:                               ; preds = %.lr.ph.i.i377.preheader, %.lr.ph.i.i377.prol
  %.022.i.i378.prol = phi i64 [ %i.mn, %.lr.ph.i.i377.prol ], [ %i.lt, %.lr.ph.i.i377.preheader ]
  %.01821.i.i379.prol = phi ptr [ %i.mm, %.lr.ph.i.i377.prol ], [ %i.a, %.lr.ph.i.i377.preheader ] ; 3 uses
  %prol.iter698 = phi i64 [ %prol.iter698.next, %.lr.ph.i.i377.prol ], [ 0, %.lr.ph.i.i377.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i379.prol) ]
  %i.mj = load i32, ptr %.sroa.0.0.copyload.i360, align 4, !tbaa !65
  store i32 %i.mj, ptr %.01821.i.i379.prol, align 4, !tbaa !65
  %i.mk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ml = add i32 %i.mk, 1
  store i32 %i.ml, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.mm = getelementptr inbounds nuw i8, ptr %.01821.i.i379.prol, i64 4 ; 2 uses
  %i.mn = add i64 %.022.i.i378.prol, -1           ; 2 uses
  %prol.iter698.next = add i64 %prol.iter698, 1   ; 2 uses
  %prol.iter698.cmp.not = icmp eq i64 %prol.iter698.next, %xtraiter696
  br i1 %prol.iter698.cmp.not, label %.lr.ph.i.i377.prol.loopexit, label %.lr.ph.i.i377.prol, !llvm.loop !387

.lr.ph.i.i377.prol.loopexit:                      ; preds = %.lr.ph.i.i377.prol, %.lr.ph.i.i377.preheader
  %.022.i.i378.unr = phi i64 [ %i.lt, %.lr.ph.i.i377.preheader ], [ %i.mn, %.lr.ph.i.i377.prol ]
  %.01821.i.i379.unr = phi ptr [ %i.a, %.lr.ph.i.i377.preheader ], [ %i.mm, %.lr.ph.i.i377.prol ]
  %i.mo = sub i64 %i.h, %i.mi
  %i.mp = add i64 %i.mo, %1
  %i.mq = icmp ugt i64 %i.mp, -4
  br i1 %i.mq, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i377

.lr.ph.i.i377:                                    ; preds = %.lr.ph.i.i377.prol.loopexit, %.lr.ph.i.i377
  %.022.i.i378 = phi i64 [ %i.ne, %.lr.ph.i.i377 ], [ %.022.i.i378.unr, %.lr.ph.i.i377.prol.loopexit ]
  %.01821.i.i379 = phi ptr [ %i.nd, %.lr.ph.i.i377 ], [ %.01821.i.i379.unr, %.lr.ph.i.i377.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i379) ]
  %i.mr = load i32, ptr %.sroa.0.0.copyload.i360, align 4, !tbaa !65
  store i32 %i.mr, ptr %.01821.i.i379, align 4, !tbaa !65
  %i.ms = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.mt = add i32 %i.ms, 1
  store i32 %i.mt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.mu = getelementptr inbounds nuw i8, ptr %.01821.i.i379, i64 4
  %i.mv = load i32, ptr %.sroa.0.0.copyload.i360, align 4, !tbaa !65
  store i32 %i.mv, ptr %i.mu, align 4, !tbaa !65
  %i.mw = add i32 %i.ms, 2
  store i32 %i.mw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.mx = getelementptr inbounds nuw i8, ptr %.01821.i.i379, i64 8
  %i.my = load i32, ptr %.sroa.0.0.copyload.i360, align 4, !tbaa !65
  store i32 %i.my, ptr %i.mx, align 4, !tbaa !65
  %i.mz = add i32 %i.ms, 3
  store i32 %i.mz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.na = getelementptr inbounds nuw i8, ptr %.01821.i.i379, i64 12
  %i.nb = load i32, ptr %.sroa.0.0.copyload.i360, align 4, !tbaa !65
  store i32 %i.nb, ptr %i.na, align 4, !tbaa !65
  %i.nc = add i32 %i.ms, 4
  store i32 %i.nc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.nd = getelementptr inbounds nuw i8, ptr %.01821.i.i379, i64 16
  %i.ne = add i64 %.022.i.i378, -4                ; 2 uses
  %.not.i.i380.3 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i380.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i377, !llvm.loop !10

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i218, %.lr.ph.i259, %.lr.ph.i315, %.lr.ph.i.i346, %.lr.ph.i.i377.prol.loopexit, %.lr.ph.i.i377, %middle.block651, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %._crit_edge.loopexit.i.i304, %bb.h, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit257, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit313, %.loopexit433, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvT0_mSC_SC_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef byval(%"struct.boost::container::dtl::insert_range_proxy.20") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %8 = ptrtoaddr ptr %0 to i64                    ; 7 uses
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 28 uses
  %i.b = add i64 %4, %1                           ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %2, i64 %i.b ; 4 uses
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = ptrtoint ptr %3 to i64                   ; 7 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 5 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.h, %i.d                       ; 4 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 9 uses
  %i.k = add i64 %i.g, %4                         ; 4 uses
  %.not = icmp ult i64 %i.j, %i.k
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub i64 0, %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.l ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %5, align 8 ; 5 uses
  %.not19.i.i = icmp eq i64 %4, 0
  br i1 %.not19.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.022.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.01821.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.prol ], [ %i.m, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.prol) ]
  %i.n = load i32, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !65
  store i32 %i.n, ptr %.01821.i.i.prol, align 4, !tbaa !65
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %.01821.i.i.prol, i64 4 ; 2 uses
  %i.r = add i64 %.022.i.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !398

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.022.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %.01821.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.preheader ], [ %i.q, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i64 %4, 4
  br i1 %i.s, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.022.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %.022.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01821.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.01821.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i) ]
  %i.t = load i32, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !65
  store i32 %i.t, ptr %.01821.i.i, align 4, !tbaa !65
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %.01821.i.i, i64 4
  %i.x = load i32, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !65
  store i32 %i.x, ptr %i.w, align 4, !tbaa !65
  %i.y = add i32 %i.u, 2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %.01821.i.i, i64 8
  %i.aa = load i32, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !65
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !65
  %i.ab = add i32 %i.u, 3
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %.01821.i.i, i64 12
  %i.ad = load i32, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !65
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !65
  %i.ae = add i32 %i.u, 4
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %.01821.i.i, i64 16
  %i.ag = add i64 %.022.i.i, -4                   ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !10

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not16.i = icmp eq ptr %3, %i.a
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge.loopexit.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.al, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 3 uses
  %.01517.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.ah, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.ai = load i32, ptr %.018.i, align 4, !tbaa !65
  store i32 %i.ai, ptr %.01517.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i, align 4, !tbaa !65
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.al, %i.a
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %._crit_edge.loopexit.i.i
  %.not125 = icmp ult i64 %i.j, %i.b
  br i1 %.not125, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i130 = icmp eq ptr %0, %3
  br i1 %.not16.i130, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.c, %.lr.ph.i131
  %.018.i132 = phi ptr [ %i.aq, %.lr.ph.i131 ], [ %0, %bb.c ] ; 3 uses
  %.01517.i133 = phi ptr [ %i.ar, %.lr.ph.i131 ], [ %2, %bb.c ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i133) ]
  %i.an = load i32, ptr %.018.i132, align 4, !tbaa !65
  store i32 %i.an, ptr %.01517.i133, align 4, !tbaa !65
  store i32 0, ptr %.018.i132, align 4, !tbaa !65
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i132, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i133, i64 4
  %.not.i134 = icmp eq ptr %i.aq, %3
  br i1 %.not.i134, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i131, !llvm.loop !8

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.as = sub nuw i64 %i.j, %i.k                  ; 5 uses
  %i.at = sub i64 0, %i.as                        ; 3 uses
  %i.au = getelementptr [4 x i8], ptr %3, i64 %i.at ; 11 uses
  %.not17.i = icmp eq i64 %i.as, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %bb.d
  %.neg = add i64 %i.k, 1
  %xtraiter435 = and i64 %i.as, 1
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod436.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader
  %i.av = add nsw i64 %i.as, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !65
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !65
  store i32 0, ptr %i.au, align 4, !tbaa !65
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i137.prol.loopexit

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %.020.i.unr = phi i64 [ %i.as, %.lr.ph.i137.preheader ], [ %i.av, %.lr.ph.i137.prol ]
  %.0819.i.unr = phi ptr [ %i.au, %.lr.ph.i137.preheader ], [ %i.az, %.lr.ph.i137.prol ]
  %.01618.i.unr = phi ptr [ %i.a, %.lr.ph.i137.preheader ], [ %i.ba, %.lr.ph.i137.prol ]
  %i.bb = icmp eq i64 %i.j, %.neg
  br i1 %i.bb, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %.020.i = phi i64 [ %i.bh, %.lr.ph.i137 ], [ %.020.i.unr, %.lr.ph.i137.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bl, %.lr.ph.i137 ], [ %.0819.i.unr, %.lr.ph.i137.prol.loopexit ] ; 4 uses
  %.01618.i = phi ptr [ %i.bm, %.lr.ph.i137 ], [ %.01618.i.unr, %.lr.ph.i137.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.bc = load i32, ptr %.0819.i, align 4, !tbaa !65
  store i32 %i.bc, ptr %.01618.i, align 4, !tbaa !65
  store i32 0, ptr %.0819.i, align 4, !tbaa !65
  %i.bd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.bh = add i64 %.020.i, -2                     ; 2 uses
  %i.bi = load i32, ptr %i.bf, align 4, !tbaa !65
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !65
  store i32 0, ptr %i.bf, align 4, !tbaa !65
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bl = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i138.1 = icmp eq i64 %i.bh, 0
  br i1 %.not.i138.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137, %bb.d
  %.not.i139 = icmp eq ptr %i.au, %i.a
  %.not8.i.i = icmp eq ptr %0, %i.au
  %or.cond = or i1 %.not.i139, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i140.preheader

.lr.ph.i.i140.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.bn = shl i64 %i.at, 2
  %i.bo = add i64 %i.bn, %i.e
  %i.bp = add i64 %i.bo, -4
  %i.bq = sub i64 %i.bp, %8                       ; 2 uses
  %i.br = lshr i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 140
  br i1 %min.iters.check, label %.lr.ph.i.i140.preheader430, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i140.preheader
  %i.bt = shl nsw i64 %1, 2
  %i.bu = shl i64 %i.at, 2                        ; 2 uses
  %i.bv = add i64 %i.bu, %i.e
  %i.bw = add i64 %i.bv, -4
  %i.bx = sub i64 %i.bw, %8
  %i.by = and i64 %i.bx, -4                       ; 2 uses
  %i.bz = add i64 %i.bt, -4
  %i.ca = sub i64 %i.bz, %i.by
  %i.cb = getelementptr i8, ptr %0, i64 %i.ca
  %i.cc = add i64 %i.bu, -4
  %i.cd = sub i64 %i.cc, %i.by
  %i.ce = getelementptr i8, ptr %3, i64 %i.cd
  %bound0 = icmp ult ptr %i.cb, %i.au
  %bound1 = icmp ult ptr %i.ce, %i.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i140.preheader430, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.cf = mul i64 %n.vec, -4                      ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.au, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.ci ; 2 uses
  %next.gep322 = getelementptr i8, ptr %i.au, i64 %i.ci ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %next.gep322, i64 -16 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %next.gep322, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cj, align 4, !tbaa !65, !alias.scope !425
  %wide.load323 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !65, !alias.scope !425
  %i.cl = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cm = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cl, align 4, !tbaa !65, !alias.scope !426, !noalias !425
  store <4 x i32> %wide.load323, ptr %i.cm, align 4, !tbaa !65, !alias.scope !426, !noalias !425
  store <4 x i32> zeroinitializer, ptr %i.cj, align 4, !tbaa !65, !alias.scope !425
  store <4 x i32> zeroinitializer, ptr %i.ck, align 4, !tbaa !65, !alias.scope !425
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !402

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i140.preheader430

.lr.ph.i.i140.preheader430:                       ; preds = %vector.memcheck, %.lr.ph.i.i140.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i140.preheader ], [ %i.cg, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i140.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i.i140

.lr.ph.i.i140:                                    ; preds = %.lr.ph.i.i140.preheader430, %.lr.ph.i.i140
  %.010.i.i = phi ptr [ %i.cp, %.lr.ph.i.i140 ], [ %.010.i.i.ph, %.lr.ph.i.i140.preheader430 ]
  %.079.i.i = phi ptr [ %i.co, %.lr.ph.i.i140 ], [ %.079.i.i.ph, %.lr.ph.i.i140.preheader430 ]
  %i.co = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !65
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !65
  store i32 0, ptr %i.co, align 4, !tbaa !65
  %.not.i.i141 = icmp eq ptr %0, %i.co
  br i1 %.not.i.i141, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i140, !llvm.loop !403

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i140, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i142
  %storemerge4.i = phi ptr [ %i.ct, %.lr.ph.i142 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !65
  %i.cr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cs = add i32 %i.cr, -1
  store i32 %i.cs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ct = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i143 = icmp eq ptr %i.ct, %2
  br i1 %.not.i143, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i142, !llvm.loop !16

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i131, %bb.c
  %.not.i146 = icmp eq i64 %1, 0
  br i1 %.not.i146, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  %xtraiter432 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cu = phi i64 [ %i.cv, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i147.prol = phi ptr [ %i.cy, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter434 = phi i64 [ %prol.iter434.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cv = add i64 %i.cu, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i147.prol, align 4, !tbaa !65
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cx = add i32 %i.cw, -1
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i147.prol, i64 4 ; 2 uses
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !404

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cv, %.preheader.prol ]
  %.0.i147.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cy, %.preheader.prol ]
  %i.cz = icmp ult i64 %1, 4
  br i1 %i.cz, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.da = phi i64 [ %i.di, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i147 = phi ptr [ %i.dk, %.preheader ], [ %.0.i147.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i147, align 4, !tbaa !65
  %i.db = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.dc = add i32 %i.db, -1
  store i32 %i.dc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i147, i64 4
  store i32 -2147483648, ptr %i.dd, align 4, !tbaa !65
  %i.de = add i32 %i.db, -2
  store i32 %i.de, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i147, i64 8
  store i32 -2147483648, ptr %i.df, align 4, !tbaa !65
  %i.dg = add i32 %i.db, -3
  store i32 %i.dg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i147, i64 12
  %i.di = add i64 %i.da, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.dh, align 4, !tbaa !65
  %i.dj = add i32 %i.db, -4
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i147, i64 16
  %.not3.i148.3 = icmp eq i64 %i.di, 0
  br i1 %.not3.i148.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.preheader, !llvm.loop !17

bb.e:                                             ; preds = %bb.a
  %i.dl = icmp ugt i64 %i.j, %i.g
  br i1 %i.dl, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i158 = icmp eq ptr %3, %i.a
  br i1 %.not16.i158, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164, label %.lr.ph.i159.preheader

.lr.ph.i159.preheader:                            ; preds = %bb.f
  %i.dm = sub nsw i64 0, %i.g
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dm
  br label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %.lr.ph.i159.preheader, %.lr.ph.i159
  %.018.i160 = phi ptr [ %i.dr, %.lr.ph.i159 ], [ %3, %.lr.ph.i159.preheader ] ; 3 uses
  %.01517.i161 = phi ptr [ %i.ds, %.lr.ph.i159 ], [ %i.dn, %.lr.ph.i159.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i161) ]
  %i.do = load i32, ptr %.018.i160, align 4, !tbaa !65
  store i32 %i.do, ptr %.01517.i161, align 4, !tbaa !65
  store i32 0, ptr %.018.i160, align 4, !tbaa !65
  %i.dp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dr = getelementptr inbounds nuw i8, ptr %.018.i160, i64 4 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01517.i161, i64 4
  %.not.i162 = icmp eq ptr %i.dr, %i.a
  br i1 %.not.i162, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164, label %.lr.ph.i159, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164: ; preds = %.lr.ph.i159, %bb.f
  %i.dt = sub nuw nsw i64 %i.j, %i.g              ; 4 uses
  %i.du = sub i64 %4, %i.dt                       ; 8 uses
  %i.dv = sub i64 0, %i.du
  %i.dw = getelementptr [4 x i8], ptr %i.a, i64 %i.dv ; 10 uses
  %.sroa.0.0.copyload.i165 = load ptr, ptr %5, align 8 ; 6 uses
  %.not9.i.i = icmp eq i64 %i.du, 0
  br i1 %.not9.i.i, label %.lr.ph.i.i176.preheader, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164
  %.pre.i.i = load i32, ptr %.sroa.0.0.copyload.i165, align 4, !tbaa !65 ; 2 uses
  %min.iters.check386 = icmp ult i64 %i.du, 8
  br i1 %min.iters.check386, label %.lr.ph.i.i168.preheader, label %vector.ph387

vector.ph387:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec388 = and i64 %i.du, -8                   ; 3 uses
  %i.dx = and i64 %i.du, 7
  %i.dy = shl i64 %n.vec388, 2
  %i.dz = getelementptr i8, ptr %i.dw, i64 %i.dy
  %broadcast.splatinsert389 = insertelement <4 x i32> poison, i32 %.pre.i.i, i64 0
  %broadcast.splat390 = shufflevector <4 x i32> %broadcast.splatinsert389, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph387
  %index392 = phi i64 [ 0, %vector.ph387 ], [ %index.next394, %vector.body391 ] ; 2 uses
  %i.ea = shl i64 %index392, 2
  %next.gep393 = getelementptr i8, ptr %i.dw, i64 %i.ea ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep393, i64 16
  store <4 x i32> %broadcast.splat390, ptr %next.gep393, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat390, ptr %i.eb, align 4, !tbaa !65
  %index.next394 = add nuw i64 %index392, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next394, %n.vec388
  br i1 %i.ec, label %middle.block395, label %vector.body391, !llvm.loop !405

middle.block395:                                  ; preds = %vector.body391
  %cmp.n396 = icmp eq i64 %i.du, %n.vec388
  br i1 %cmp.n396, label %.lr.ph.i.i176.preheader, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block395
  %.012.i.i.ph = phi i64 [ %i.du, %.lr.ph.preheader.i.i ], [ %i.dx, %middle.block395 ]
  %.0511.i.i.ph = phi ptr [ %i.dw, %.lr.ph.preheader.i.i ], [ %i.dz, %middle.block395 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader, %.lr.ph.i.i168
  %.012.i.i = phi i64 [ %i.ed, %.lr.ph.i.i168 ], [ %.012.i.i.ph, %.lr.ph.i.i168.preheader ]
  %.0511.i.i = phi ptr [ %i.ee, %.lr.ph.i.i168 ], [ %.0511.i.i.ph, %.lr.ph.i.i168.preheader ] ; 2 uses
  %i.ed = add i64 %.012.i.i, -1                   ; 2 uses
  store i32 %.pre.i.i, ptr %.0511.i.i, align 4, !tbaa !65
  %i.ee = getelementptr inbounds nuw i8, ptr %.0511.i.i, i64 4
  %.not.i.i169 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i169, label %.lr.ph.i.i176.preheader, label %.lr.ph.i.i168, !llvm.loop !406

.lr.ph.i.i176.preheader:                          ; preds = %.lr.ph.i.i168, %middle.block395, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164
  %xtraiter441 = and i64 %i.dt, 3                 ; 2 uses
  %lcmp.mod442.not = icmp eq i64 %xtraiter441, 0
  br i1 %lcmp.mod442.not, label %.lr.ph.i.i176.prol.loopexit, label %.lr.ph.i.i176.prol

.lr.ph.i.i176.prol:                               ; preds = %.lr.ph.i.i176.preheader, %.lr.ph.i.i176.prol
  %.022.i.i177.prol = phi i64 [ %i.ej, %.lr.ph.i.i176.prol ], [ %i.dt, %.lr.ph.i.i176.preheader ]
  %.01821.i.i178.prol = phi ptr [ %i.ei, %.lr.ph.i.i176.prol ], [ %i.a, %.lr.ph.i.i176.preheader ] ; 3 uses
  %prol.iter443 = phi i64 [ %prol.iter443.next, %.lr.ph.i.i176.prol ], [ 0, %.lr.ph.i.i176.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i178.prol) ]
  %i.ef = load i32, ptr %.sroa.0.0.copyload.i165, align 4, !tbaa !65
  store i32 %i.ef, ptr %.01821.i.i178.prol, align 4, !tbaa !65
  %i.eg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ei = getelementptr inbounds nuw i8, ptr %.01821.i.i178.prol, i64 4 ; 2 uses
  %i.ej = add i64 %.022.i.i177.prol, -1           ; 2 uses
  %prol.iter443.next = add i64 %prol.iter443, 1   ; 2 uses
  %prol.iter443.cmp.not = icmp eq i64 %prol.iter443.next, %xtraiter441
  br i1 %prol.iter443.cmp.not, label %.lr.ph.i.i176.prol.loopexit, label %.lr.ph.i.i176.prol, !llvm.loop !407

.lr.ph.i.i176.prol.loopexit:                      ; preds = %.lr.ph.i.i176.prol, %.lr.ph.i.i176.preheader
  %.022.i.i177.unr = phi i64 [ %i.dt, %.lr.ph.i.i176.preheader ], [ %i.ej, %.lr.ph.i.i176.prol ]
  %.01821.i.i178.unr = phi ptr [ %i.a, %.lr.ph.i.i176.preheader ], [ %i.ei, %.lr.ph.i.i176.prol ]
  %i.ek = sub nsw i64 %i.g, %i.j
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %._crit_edge.loopexit.i.i180, label %.lr.ph.i.i176

.lr.ph.i.i176:                                    ; preds = %.lr.ph.i.i176.prol.loopexit, %.lr.ph.i.i176
  %.022.i.i177 = phi i64 [ %i.ez, %.lr.ph.i.i176 ], [ %.022.i.i177.unr, %.lr.ph.i.i176.prol.loopexit ]
  %.01821.i.i178 = phi ptr [ %i.ey, %.lr.ph.i.i176 ], [ %.01821.i.i178.unr, %.lr.ph.i.i176.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i178) ]
  %i.em = load i32, ptr %.sroa.0.0.copyload.i165, align 4, !tbaa !65
  store i32 %i.em, ptr %.01821.i.i178, align 4, !tbaa !65
  %i.en = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ep = getelementptr inbounds nuw i8, ptr %.01821.i.i178, i64 4
  %i.eq = load i32, ptr %.sroa.0.0.copyload.i165, align 4, !tbaa !65
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !65
  %i.er = add i32 %i.en, 2
  store i32 %i.er, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.es = getelementptr inbounds nuw i8, ptr %.01821.i.i178, i64 8
  %i.et = load i32, ptr %.sroa.0.0.copyload.i165, align 4, !tbaa !65
  store i32 %i.et, ptr %i.es, align 4, !tbaa !65
  %i.eu = add i32 %i.en, 3
  store i32 %i.eu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ev = getelementptr inbounds nuw i8, ptr %.01821.i.i178, i64 12
  %i.ew = load i32, ptr %.sroa.0.0.copyload.i165, align 4, !tbaa !65
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !65
  %i.ex = add i32 %i.en, 4
  store i32 %i.ex, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ey = getelementptr inbounds nuw i8, ptr %.01821.i.i178, i64 16
  %i.ez = add i64 %.022.i.i177, -4                ; 2 uses
  %.not.i.i179.3 = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i179.3, label %._crit_edge.loopexit.i.i180, label %.lr.ph.i.i176, !llvm.loop !10

._crit_edge.loopexit.i.i180:                      ; preds = %.lr.ph.i.i176, %.lr.ph.i.i176.prol.loopexit
  %.not.i183 = icmp eq ptr %3, %i.dw
  br i1 %.not.i183, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i180
  %.not8.i.i184 = icmp eq ptr %0, %3
  br i1 %.not8.i.i184, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189, label %.lr.ph.i.i185.preheader

.lr.ph.i.i185.preheader:                          ; preds = %bb.g
  %i.fa = add i64 %i.e, -4
  %i.fb = sub i64 %i.fa, %8                       ; 3 uses
  %i.fc = lshr i64 %i.fb, 2
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check405 = icmp ult i64 %i.fb, 124
  br i1 %min.iters.check405, label %.lr.ph.i.i185.preheader423, label %vector.memcheck406

vector.memcheck406:                               ; preds = %.lr.ph.i.i185.preheader
  %i.fe = and i64 %i.fb, -4                       ; 2 uses
  %i.ff = sub i64 %1, %i.du
  %i.fg = shl i64 %i.ff, 2
  %i.fh = add i64 %i.fg, -4
  %i.fi = sub i64 %i.fh, %i.fe
  %i.fj = getelementptr i8, ptr %0, i64 %i.fi
  %i.fk = sub nuw nsw i64 -4, %i.fe
  %i.fl = getelementptr i8, ptr %3, i64 %i.fk
  %bound0407 = icmp ult ptr %i.fj, %3
  %bound1408 = icmp ult ptr %i.fl, %i.dw
  %found.conflict409 = and i1 %bound0407, %bound1408
  br i1 %found.conflict409, label %.lr.ph.i.i185.preheader423, label %vector.ph410

vector.ph410:                                     ; preds = %vector.memcheck406
  %n.vec411 = and i64 %i.fd, 9223372036854775800  ; 3 uses
  %i.fm = mul i64 %n.vec411, -4                   ; 2 uses
  %i.fn = getelementptr i8, ptr %i.dw, i64 %i.fm  ; 2 uses
  %i.fo = getelementptr i8, ptr %3, i64 %i.fm
  br label %vector.body412

vector.body412:                                   ; preds = %vector.body412, %vector.ph410
  %index413 = phi i64 [ 0, %vector.ph410 ], [ %index.next418, %vector.body412 ] ; 2 uses
  %i.fp = mul i64 %index413, -4                   ; 2 uses
  %next.gep414 = getelementptr i8, ptr %i.dw, i64 %i.fp ; 2 uses
  %next.gep415 = getelementptr i8, ptr %3, i64 %i.fp ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %next.gep415, i64 -16 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %next.gep415, i64 -32 ; 2 uses
  %wide.load416 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !65, !alias.scope !427
  %wide.load417 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !65, !alias.scope !427
  %i.fs = getelementptr inbounds i8, ptr %next.gep414, i64 -16
  %i.ft = getelementptr inbounds i8, ptr %next.gep414, i64 -32
  store <4 x i32> %wide.load416, ptr %i.fs, align 4, !tbaa !65, !alias.scope !428, !noalias !427
  store <4 x i32> %wide.load417, ptr %i.ft, align 4, !tbaa !65, !alias.scope !428, !noalias !427
  store <4 x i32> zeroinitializer, ptr %i.fq, align 4, !tbaa !65, !alias.scope !427
  store <4 x i32> zeroinitializer, ptr %i.fr, align 4, !tbaa !65, !alias.scope !427
  %index.next418 = add nuw i64 %index413, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next418, %n.vec411
  br i1 %i.fu, label %middle.block419, label %vector.body412, !llvm.loop !411

middle.block419:                                  ; preds = %vector.body412
  %cmp.n420 = icmp eq i64 %i.fd, %n.vec411
  br i1 %cmp.n420, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189, label %.lr.ph.i.i185.preheader423

.lr.ph.i.i185.preheader423:                       ; preds = %vector.memcheck406, %.lr.ph.i.i185.preheader, %middle.block419
  %.010.i.i186.ph = phi ptr [ %i.dw, %vector.memcheck406 ], [ %i.dw, %.lr.ph.i.i185.preheader ], [ %i.fn, %middle.block419 ]
  %.079.i.i187.ph = phi ptr [ %3, %vector.memcheck406 ], [ %3, %.lr.ph.i.i185.preheader ], [ %i.fo, %middle.block419 ]
  br label %.lr.ph.i.i185

.lr.ph.i.i185:                                    ; preds = %.lr.ph.i.i185.preheader423, %.lr.ph.i.i185
  %.010.i.i186 = phi ptr [ %i.fw, %.lr.ph.i.i185 ], [ %.010.i.i186.ph, %.lr.ph.i.i185.preheader423 ]
  %.079.i.i187 = phi ptr [ %i.fv, %.lr.ph.i.i185 ], [ %.079.i.i187.ph, %.lr.ph.i.i185.preheader423 ]
  %i.fv = getelementptr inbounds i8, ptr %.079.i.i187, i64 -4 ; 4 uses
  %i.fw = getelementptr inbounds i8, ptr %.010.i.i186, i64 -4 ; 3 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !65
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !65
  store i32 0, ptr %i.fv, align 4, !tbaa !65
  %.not.i.i188 = icmp eq ptr %0, %i.fv
  br i1 %.not.i.i188, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189, label %.lr.ph.i.i185, !llvm.loop !412

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189: ; preds = %.lr.ph.i.i185, %middle.block419, %bb.g
  %i.fy = phi ptr [ %i.dw, %bb.g ], [ %i.fn, %middle.block419 ], [ %i.fw, %.lr.ph.i.i185 ] ; 2 uses
  %.not3.i190 = icmp eq ptr %0, %i.fy
  br i1 %.not3.i190, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189, %.lr.ph.i191
  %storemerge4.i192 = phi ptr [ %i.gb, %.lr.ph.i191 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i192, align 4, !tbaa !65
  %i.fz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ga = add i32 %i.fz, -1
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i192, i64 4 ; 2 uses
  %.not.i193 = icmp eq ptr %i.gb, %i.fy
  br i1 %.not.i193, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i191, !llvm.loop !16

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.gc = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i203 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i203, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i204.preheader

.lr.ph.i204.preheader:                            ; preds = %bb.h
  %i.gd = and i64 %i.i, 4
  %lcmp.mod439.not = icmp eq i64 %i.gd, 0
  br i1 %lcmp.mod439.not, label %.lr.ph.i204.prol.loopexit, label %.lr.ph.i204.prol

.lr.ph.i204.prol:                                 ; preds = %.lr.ph.i204.preheader
  %i.ge = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gf = load i32, ptr %i.gc, align 4, !tbaa !65
  store i32 %i.gf, ptr %i.a, align 4, !tbaa !65
  store i32 0, ptr %i.gc, align 4, !tbaa !65
  %i.gg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i204.prol.loopexit

.lr.ph.i204.prol.loopexit:                        ; preds = %.lr.ph.i204.prol, %.lr.ph.i204.preheader
  %.020.i205.unr = phi i64 [ %i.j, %.lr.ph.i204.preheader ], [ %i.ge, %.lr.ph.i204.prol ]
  %.0819.i206.unr = phi ptr [ %i.gc, %.lr.ph.i204.preheader ], [ %i.gi, %.lr.ph.i204.prol ]
  %.01618.i207.unr = phi ptr [ %i.a, %.lr.ph.i204.preheader ], [ %i.gj, %.lr.ph.i204.prol ]
  %i.gk = icmp eq i64 %i.i, 4
  br i1 %i.gk, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.lr.ph.i204.prol.loopexit, %.lr.ph.i204
  %.020.i205 = phi i64 [ %i.gq, %.lr.ph.i204 ], [ %.020.i205.unr, %.lr.ph.i204.prol.loopexit ]
  %.0819.i206 = phi ptr [ %i.gu, %.lr.ph.i204 ], [ %.0819.i206.unr, %.lr.ph.i204.prol.loopexit ] ; 4 uses
  %.01618.i207 = phi ptr [ %i.gv, %.lr.ph.i204 ], [ %.01618.i207.unr, %.lr.ph.i204.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i207) ]
  %i.gl = load i32, ptr %.0819.i206, align 4, !tbaa !65
  store i32 %i.gl, ptr %.01618.i207, align 4, !tbaa !65
  store i32 0, ptr %.0819.i206, align 4, !tbaa !65
  %i.gm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.go = getelementptr inbounds nuw i8, ptr %.0819.i206, i64 4 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.01618.i207, i64 4
  %i.gq = add i64 %.020.i205, -2                  ; 2 uses
  %i.gr = load i32, ptr %i.go, align 4, !tbaa !65
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !65
  store i32 0, ptr %i.go, align 4, !tbaa !65
  %i.gs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gu = getelementptr inbounds nuw i8, ptr %.0819.i206, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.01618.i207, i64 8
  %.not.i208.1 = icmp eq i64 %i.gq, 0
  br i1 %.not.i208.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210, label %.lr.ph.i204, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210: ; preds = %.lr.ph.i204, %.lr.ph.i204.prol.loopexit
  %.not8.i.i212 = icmp eq ptr %3, %i.gc
  br i1 %.not8.i.i212, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213.preheader

.lr.ph.i.i213.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210
  %i.gw = shl nsw i64 %1, 2
  %i.gx = shl i64 %8, 1
  %i.gy = shl i64 %4, 2
  %i.gz = add i64 %i.gw, %i.gx
  %i.ha = add i64 %i.gz, -4
  %i.hb = add i64 %i.e, %7
  %i.hc = add i64 %i.hb, %i.gy
  %i.hd = sub i64 %i.ha, %i.hc                    ; 2 uses
  %i.he = lshr i64 %i.hd, 2
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check331 = icmp ult i64 %i.hd, 188
  br i1 %min.iters.check331, label %.lr.ph.i.i213.preheader427, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.lr.ph.i.i213.preheader
  %i.hg = shl nsw i64 %1, 2                       ; 3 uses
  %i.hh = shl i64 %8, 1
  %i.hi = shl i64 %4, 2                           ; 2 uses
  %i.hj = add i64 %i.hg, %i.hh
  %i.hk = add i64 %i.hj, -4
  %i.hl = add i64 %i.e, %7
  %i.hm = add i64 %i.hl, %i.hi
  %i.hn = sub i64 %i.hk, %i.hm
  %i.ho = and i64 %i.hn, -4                       ; 2 uses
  %i.hp = add i64 %i.hg, -4
  %i.hq = sub i64 %i.hp, %i.ho
  %i.hr = getelementptr i8, ptr %0, i64 %i.hq
  %i.hs = add i64 %i.hg, %8
  %i.ht = add i64 %i.hs, -4
  %i.hu = add i64 %i.hi, %7
  %i.hv = add i64 %i.hu, %i.ho
  %i.hw = sub i64 %i.ht, %i.hv
  %i.hx = getelementptr i8, ptr %0, i64 %i.hw
  %bound0333 = icmp ult ptr %i.hr, %i.gc
  %bound1334 = icmp ult ptr %i.hx, %i.a
  %found.conflict335 = and i1 %bound0333, %bound1334
  br i1 %found.conflict335, label %.lr.ph.i.i213.preheader427, label %vector.ph336

vector.ph336:                                     ; preds = %vector.memcheck332
  %n.vec337 = and i64 %i.hf, 9223372036854775800  ; 3 uses
  %i.hy = mul i64 %n.vec337, -4                   ; 2 uses
  %i.hz = getelementptr i8, ptr %i.a, i64 %i.hy   ; 2 uses
  %i.ia = getelementptr i8, ptr %i.gc, i64 %i.hy
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph336
  %index339 = phi i64 [ 0, %vector.ph336 ], [ %index.next344, %vector.body338 ] ; 2 uses
  %i.ib = mul i64 %index339, -4                   ; 2 uses
  %next.gep340 = getelementptr i8, ptr %i.a, i64 %i.ib ; 2 uses
  %next.gep341 = getelementptr i8, ptr %i.gc, i64 %i.ib ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %next.gep341, i64 -16 ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %next.gep341, i64 -32 ; 2 uses
  %wide.load342 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !65, !alias.scope !429
  %wide.load343 = load <4 x i32>, ptr %i.id, align 4, !tbaa !65, !alias.scope !429
  %i.ie = getelementptr inbounds i8, ptr %next.gep340, i64 -16
  %i.if = getelementptr inbounds i8, ptr %next.gep340, i64 -32
  store <4 x i32> %wide.load342, ptr %i.ie, align 4, !tbaa !65, !alias.scope !430, !noalias !429
  store <4 x i32> %wide.load343, ptr %i.if, align 4, !tbaa !65, !alias.scope !430, !noalias !429
  store <4 x i32> zeroinitializer, ptr %i.ic, align 4, !tbaa !65, !alias.scope !429
  store <4 x i32> zeroinitializer, ptr %i.id, align 4, !tbaa !65, !alias.scope !429
  %index.next344 = add nuw i64 %index339, 8       ; 2 uses
  %i.ig = icmp eq i64 %index.next344, %n.vec337
  br i1 %i.ig, label %middle.block345, label %vector.body338, !llvm.loop !416

middle.block345:                                  ; preds = %vector.body338
  %cmp.n346 = icmp eq i64 %i.hf, %n.vec337
  br i1 %cmp.n346, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213.preheader427

.lr.ph.i.i213.preheader427:                       ; preds = %vector.memcheck332, %.lr.ph.i.i213.preheader, %middle.block345
  %.010.i.i214.ph = phi ptr [ %i.a, %vector.memcheck332 ], [ %i.a, %.lr.ph.i.i213.preheader ], [ %i.hz, %middle.block345 ]
  %.079.i.i215.ph = phi ptr [ %i.gc, %vector.memcheck332 ], [ %i.gc, %.lr.ph.i.i213.preheader ], [ %i.ia, %middle.block345 ]
  br label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.preheader427, %.lr.ph.i.i213
  %.010.i.i214 = phi ptr [ %i.ii, %.lr.ph.i.i213 ], [ %.010.i.i214.ph, %.lr.ph.i.i213.preheader427 ]
  %.079.i.i215 = phi ptr [ %i.ih, %.lr.ph.i.i213 ], [ %.079.i.i215.ph, %.lr.ph.i.i213.preheader427 ]
  %i.ih = getelementptr inbounds i8, ptr %.079.i.i215, i64 -4 ; 4 uses
  %i.ii = getelementptr inbounds i8, ptr %.010.i.i214, i64 -4 ; 3 uses
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !65
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !65
  store i32 0, ptr %i.ih, align 4, !tbaa !65
  %.not.i.i216 = icmp eq ptr %3, %i.ih
  br i1 %.not.i.i216, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213, !llvm.loop !417

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217: ; preds = %.lr.ph.i.i213, %middle.block345, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210
  %i.ik = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210 ], [ %i.hz, %middle.block345 ], [ %i.ii, %.lr.ph.i.i213 ] ; 2 uses
  %i.il = sub i64 0, %4
  %i.im = getelementptr [4 x i8], ptr %i.ik, i64 %i.il ; 10 uses
  %.not9.i.i221 = icmp eq i64 %4, 0
  br i1 %.not9.i.i221, label %._crit_edge.loopexit.i.i228, label %.lr.ph.preheader.i.i222

.lr.ph.preheader.i.i222:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217
  %.sroa.0.0.copyload.i218 = load ptr, ptr %5, align 8
  %.pre.i.i223 = load i32, ptr %.sroa.0.0.copyload.i218, align 4, !tbaa !65 ; 2 uses
  %min.iters.check350 = icmp ult i64 %4, 8
  br i1 %min.iters.check350, label %.lr.ph.i.i224.preheader, label %vector.ph351

vector.ph351:                                     ; preds = %.lr.ph.preheader.i.i222
  %n.vec352 = and i64 %4, -8                      ; 3 uses
  %i.in = and i64 %4, 7
  %i.io = shl i64 %n.vec352, 2
  %i.ip = getelementptr i8, ptr %i.im, i64 %i.io
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i223, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next356, %vector.body353 ] ; 2 uses
  %i.iq = shl i64 %index354, 2
  %next.gep355 = getelementptr i8, ptr %i.im, i64 %i.iq ; 2 uses
  %i.ir = getelementptr i8, ptr %next.gep355, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep355, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat, ptr %i.ir, align 4, !tbaa !65
  %index.next356 = add nuw i64 %index354, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next356, %n.vec352
  br i1 %i.is, label %middle.block357, label %vector.body353, !llvm.loop !418

middle.block357:                                  ; preds = %vector.body353
  %cmp.n358 = icmp eq i64 %4, %n.vec352
  br i1 %cmp.n358, label %._crit_edge.loopexit.i.i228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %.lr.ph.preheader.i.i222, %middle.block357
  %.012.i.i225.ph = phi i64 [ %4, %.lr.ph.preheader.i.i222 ], [ %i.in, %middle.block357 ]
  %.0511.i.i226.ph = phi ptr [ %i.im, %.lr.ph.preheader.i.i222 ], [ %i.ip, %middle.block357 ]
  br label %.lr.ph.i.i224

.lr.ph.i.i224:                                    ; preds = %.lr.ph.i.i224.preheader, %.lr.ph.i.i224
  %.012.i.i225 = phi i64 [ %i.it, %.lr.ph.i.i224 ], [ %.012.i.i225.ph, %.lr.ph.i.i224.preheader ]
  %.0511.i.i226 = phi ptr [ %i.iu, %.lr.ph.i.i224 ], [ %.0511.i.i226.ph, %.lr.ph.i.i224.preheader ] ; 2 uses
  %i.it = add i64 %.012.i.i225, -1                ; 2 uses
  store i32 %.pre.i.i223, ptr %.0511.i.i226, align 4, !tbaa !65
  %i.iu = getelementptr inbounds nuw i8, ptr %.0511.i.i226, i64 4
  %.not.i.i227 = icmp eq i64 %i.it, 0
  br i1 %.not.i.i227, label %._crit_edge.loopexit.i.i228, label %.lr.ph.i.i224, !llvm.loop !419

._crit_edge.loopexit.i.i228:                      ; preds = %.lr.ph.i.i224, %middle.block357, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217
  %.not.i231 = icmp eq ptr %3, %i.im
  br i1 %.not.i231, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %._crit_edge.loopexit.i.i228
  %.not8.i.i232 = icmp eq ptr %0, %3
  br i1 %.not8.i.i232, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, label %.lr.ph.i.i233.preheader

.lr.ph.i.i233.preheader:                          ; preds = %bb.i
  %i.iv = add i64 %i.e, -4
  %i.iw = sub i64 %i.iv, %8                       ; 3 uses
  %i.ix = lshr i64 %i.iw, 2
  %i.iy = add nuw nsw i64 %i.ix, 1                ; 2 uses
  %min.iters.check367 = icmp ult i64 %i.iw, 108
  br i1 %min.iters.check367, label %.lr.ph.i.i233.preheader425, label %vector.memcheck368

vector.memcheck368:                               ; preds = %.lr.ph.i.i233.preheader
  %i.iz = shl i64 %4, 2
  %i.ja = and i64 %i.iw, -4                       ; 2 uses
  %i.jb = add i64 %i.iz, %i.ja
  %i.jc = sub nuw nsw i64 -4, %i.jb
  %i.jd = getelementptr i8, ptr %i.ik, i64 %i.jc
  %i.je = sub nuw nsw i64 -4, %i.ja
  %i.jf = getelementptr i8, ptr %3, i64 %i.je
  %bound0369 = icmp ult ptr %i.jd, %3
  %bound1370 = icmp ult ptr %i.jf, %i.im
  %found.conflict371 = and i1 %bound0369, %bound1370
  br i1 %found.conflict371, label %.lr.ph.i.i233.preheader425, label %vector.ph372

vector.ph372:                                     ; preds = %vector.memcheck368
  %n.vec373 = and i64 %i.iy, 9223372036854775800  ; 3 uses
  %i.jg = mul i64 %n.vec373, -4                   ; 2 uses
  %i.jh = getelementptr i8, ptr %i.im, i64 %i.jg  ; 2 uses
  %i.ji = getelementptr i8, ptr %3, i64 %i.jg
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph372
  %index375 = phi i64 [ 0, %vector.ph372 ], [ %index.next380, %vector.body374 ] ; 2 uses
  %i.jj = mul i64 %index375, -4                   ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.im, i64 %i.jj ; 2 uses
  %next.gep377 = getelementptr i8, ptr %3, i64 %i.jj ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %next.gep377, i64 -16 ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %next.gep377, i64 -32 ; 2 uses
  %wide.load378 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !65, !alias.scope !431
  %wide.load379 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !65, !alias.scope !431
  %i.jm = getelementptr inbounds i8, ptr %next.gep376, i64 -16
  %i.jn = getelementptr inbounds i8, ptr %next.gep376, i64 -32
  store <4 x i32> %wide.load378, ptr %i.jm, align 4, !tbaa !65, !alias.scope !432, !noalias !431
  store <4 x i32> %wide.load379, ptr %i.jn, align 4, !tbaa !65, !alias.scope !432, !noalias !431
  store <4 x i32> zeroinitializer, ptr %i.jk, align 4, !tbaa !65, !alias.scope !431
  store <4 x i32> zeroinitializer, ptr %i.jl, align 4, !tbaa !65, !alias.scope !431
  %index.next380 = add nuw i64 %index375, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next380, %n.vec373
  br i1 %i.jo, label %middle.block381, label %vector.body374, !llvm.loop !423

middle.block381:                                  ; preds = %vector.body374
  %cmp.n382 = icmp eq i64 %i.iy, %n.vec373
  br i1 %cmp.n382, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, label %.lr.ph.i.i233.preheader425

.lr.ph.i.i233.preheader425:                       ; preds = %vector.memcheck368, %.lr.ph.i.i233.preheader, %middle.block381
  %.010.i.i234.ph = phi ptr [ %i.im, %vector.memcheck368 ], [ %i.im, %.lr.ph.i.i233.preheader ], [ %i.jh, %middle.block381 ]
  %.079.i.i235.ph = phi ptr [ %3, %vector.memcheck368 ], [ %3, %.lr.ph.i.i233.preheader ], [ %i.ji, %middle.block381 ]
  br label %.lr.ph.i.i233

.lr.ph.i.i233:                                    ; preds = %.lr.ph.i.i233.preheader425, %.lr.ph.i.i233
  %.010.i.i234 = phi ptr [ %i.jq, %.lr.ph.i.i233 ], [ %.010.i.i234.ph, %.lr.ph.i.i233.preheader425 ]
  %.079.i.i235 = phi ptr [ %i.jp, %.lr.ph.i.i233 ], [ %.079.i.i235.ph, %.lr.ph.i.i233.preheader425 ]
  %i.jp = getelementptr inbounds i8, ptr %.079.i.i235, i64 -4 ; 4 uses
  %i.jq = getelementptr inbounds i8, ptr %.010.i.i234, i64 -4 ; 3 uses
  %i.jr = load i32, ptr %i.jp, align 4, !tbaa !65
  store i32 %i.jr, ptr %i.jq, align 4, !tbaa !65
  store i32 0, ptr %i.jp, align 4, !tbaa !65
  %.not.i.i236 = icmp eq ptr %0, %i.jp
  br i1 %.not.i.i236, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, label %.lr.ph.i.i233, !llvm.loop !424

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237: ; preds = %.lr.ph.i.i233, %middle.block381, %bb.i
  %i.js = phi ptr [ %i.im, %bb.i ], [ %i.jh, %middle.block381 ], [ %i.jq, %.lr.ph.i.i233 ] ; 2 uses
  %.not3.i238 = icmp eq ptr %0, %i.js
  br i1 %.not3.i238, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, %.lr.ph.i239
  %storemerge4.i240 = phi ptr [ %i.jv, %.lr.ph.i239 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i240, align 4, !tbaa !65
  %i.jt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ju = add i32 %i.jt, -1
  store i32 %i.ju, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jv = getelementptr inbounds nuw i8, ptr %storemerge4.i240, i64 4 ; 2 uses
  %.not.i241 = icmp eq ptr %i.jv, %i.js
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
  %i.e = load ptr, ptr %0, align 8, !tbaa !62     ; 10 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 5 uses
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
  %i.cc = shl nuw nsw i64 %i.q, 2
  %i.cd = add i64 %i.cc, %i.f
  %i.ce = add i64 %i.cd, -4
  %i.cf = add i64 %i.c, %i.au
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 140
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader231, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.cj = shl nuw nsw i64 %i.q, 2                 ; 2 uses
  %i.ck = add i64 %i.cj, %i.f
  %i.cl = add i64 %i.ck, -4
  %i.cm = add i64 %i.c, %i.au
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = and i64 %i.cn, -4                       ; 2 uses
  %i.cp = add nsw i64 %i.cj, -4                   ; 2 uses
  %i.cq = sub i64 %i.cp, %i.co
  %i.cr = getelementptr i8, ptr %i.e, i64 %i.cq
  %i.cs = add i64 %i.c, %i.co
  %i.ct = sub i64 %i.cp, %i.cs
  %i.cu = getelementptr i8, ptr %i.e, i64 %i.ct
  %bound0 = icmp ult ptr %i.cr, %i.bi
  %bound1 = icmp ult ptr %i.cu, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader231, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, 9223372036854775800     ; 3 uses
  %i.cv = mul i64 %n.vec, -4                      ; 2 uses
  %i.cw = getelementptr i8, ptr %i.r, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.bi, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.cy ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.bi, i64 %i.cy ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep123, i64 -16 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep123, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cz, align 4, !tbaa !65, !alias.scope !456
  %wide.load124 = load <4 x i32>, ptr %i.da, align 4, !tbaa !65, !alias.scope !456
  %i.db = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dc = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.db, align 4, !tbaa !65, !alias.scope !457, !noalias !456
  store <4 x i32> %wide.load124, ptr %i.dc, align 4, !tbaa !65, !alias.scope !457, !noalias !456
  store <4 x i32> zeroinitializer, ptr %i.cz, align 4, !tbaa !65, !alias.scope !456
  store <4 x i32> zeroinitializer, ptr %i.da, align 4, !tbaa !65, !alias.scope !456
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i.preheader231

.lr.ph.i40.i.preheader231:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i40.i.preheader ], [ %i.cw, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bi, %vector.memcheck ], [ %i.bi, %.lr.ph.i40.i.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader231, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.df, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader231 ]
  %.079.i.i = phi ptr [ %i.de, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader231 ]
  %i.de = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !65
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !65
  store i32 0, ptr %i.de, align 4, !tbaa !65
  %.not.i41.i = icmp eq ptr %1, %i.de
  br i1 %.not.i41.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i, !llvm.loop !437

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %min.iters.check128 = icmp ult i64 %i.d, 8
  %i.dh = sub i64 %i.b, %i.au
  %diff.check = icmp ugt i64 %i.dh, -32
  %or.cond = or i1 %min.iters.check128, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %n.vec130 = and i64 %i.d, -8                    ; 3 uses
  %i.di = shl nsw i64 %n.vec130, 2                ; 2 uses
  %i.dj = getelementptr i8, ptr %1, i64 %i.di
  %i.dk = and i64 %i.d, 7
  %i.dl = getelementptr i8, ptr %2, i64 %i.di
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next137, %vector.body131 ] ; 2 uses
  %i.dm = shl i64 %index132, 2                    ; 2 uses
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.dm ; 2 uses
  %next.gep134 = getelementptr i8, ptr %2, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep134, i64 16
  %wide.load135 = load <4 x i32>, ptr %next.gep134, align 4, !tbaa !65
  %wide.load136 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !65
  %i.do = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %wide.load135, ptr %next.gep133, align 4, !tbaa !65
  store <4 x i32> %wide.load136, ptr %i.do, align 4, !tbaa !65
  %index.next137 = add nuw i64 %index132, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next137, %n.vec130
  br i1 %i.dp, label %middle.block138, label %vector.body131, !llvm.loop !438

middle.block138:                                  ; preds = %vector.body131
  %cmp.n139 = icmp eq i64 %i.d, %n.vec130
  br i1 %cmp.n139, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %middle.block138
  %.011.i.i.i.ph = phi ptr [ %1, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.dj, %middle.block138 ] ; 2 uses
  %.0610.i.i.i.ph = phi i64 [ %i.d, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.dk, %middle.block138 ] ; 4 uses
  %.079.i.i.i.ph = phi ptr [ %2, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.dl, %middle.block138 ] ; 2 uses
  %i.dq = add nsw i64 %.0610.i.i.i.ph, -1
  %xtraiter232 = and i64 %.0610.i.i.i.ph, 7       ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.011.i.i.i.prol = phi ptr [ %i.du, %.lr.ph.i.i.i.prol ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0610.i.i.i.prol = phi i64 [ %i.dr, %.lr.ph.i.i.i.prol ], [ %.0610.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.079.i.i.i.prol = phi ptr [ %i.dt, %.lr.ph.i.i.i.prol ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.dr = add i64 %.0610.i.i.i.prol, -1           ; 2 uses
  %i.ds = load i32, ptr %.079.i.i.i.prol, align 4, !tbaa !65
  store i32 %i.ds, ptr %.011.i.i.i.prol, align 4, !tbaa !65
  %i.dt = getelementptr inbounds nuw i8, ptr %.079.i.i.i.prol, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.011.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter232
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !439

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.011.i.i.i.unr = phi ptr [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.du, %.lr.ph.i.i.i.prol ]
  %.0610.i.i.i.unr = phi i64 [ %.0610.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.dr, %.lr.ph.i.i.i.prol ]
  %.079.i.i.i.unr = phi ptr [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.dt, %.lr.ph.i.i.i.prol ]
  %i.dv = icmp ult i64 %i.dq, 7
  br i1 %i.dv, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.0610.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i ], [ %.0610.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.079.i.i.i = phi ptr [ %i.et, %.lr.ph.i.i.i ], [ %.079.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.dw = load i32, ptr %.079.i.i.i, align 4, !tbaa !65
  store i32 %i.dw, ptr %.011.i.i.i, align 4, !tbaa !65
  %i.dx = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !65
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !65
  %i.ea = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !65
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !65
  %i.ed = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 12
  %i.ee = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 12
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !65
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !65
  %i.eg = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !65
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !65
  %i.ej = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 20
  %i.ek = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 20
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !65
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !65
  %i.em = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 24
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !65
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !65
  %i.ep = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 28
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 28
  %i.er = add i64 %.0610.i.i.i, -8                ; 2 uses
  %i.es = load i32, ptr %i.ep, align 4, !tbaa !65
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !65
  %i.et = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 32
  %.not.i.i.i.7 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i.i.7, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !440

.lr.ph.i48.preheader.i:                           ; preds = %bb.j
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.ez, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.fa, %.lr.ph.i48.i ], [ %i.ev, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.ew = load i32, ptr %.018.i.i, align 4, !tbaa !65
  store i32 %i.ew, ptr %.01517.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i, align 4, !tbaa !65
  %i.ex = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ez = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.ez, %i.r
  br i1 %.not.i49.i, label %.lr.ph.i.i51.i.preheader, label %.lr.ph.i48.i, !llvm.loop !8

.lr.ph.i.i51.i.preheader:                         ; preds = %.lr.ph.i48.i
  %min.iters.check146 = icmp ult i64 %i.bg, 8
  %i.fb = sub i64 %i.b, %i.au
  %diff.check144 = icmp ugt i64 %i.fb, -32
  %or.cond220 = or i1 %min.iters.check146, %diff.check144
  br i1 %or.cond220, label %.lr.ph.i.i51.i.preheader228, label %vector.ph147

vector.ph147:                                     ; preds = %.lr.ph.i.i51.i.preheader
  %n.vec148 = and i64 %i.bg, -8                   ; 3 uses
  %i.fc = shl nsw i64 %n.vec148, 2                ; 2 uses
  %i.fd = getelementptr i8, ptr %1, i64 %i.fc
  %i.fe = and i64 %i.bg, 7
  %i.ff = getelementptr i8, ptr %2, i64 %i.fc     ; 2 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
end_hunk_4
begin_hunk_5_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_:bb.a

.lr.ph.i333:                                      ; preds = %.lr.ph.i333.preheader, %.lr.ph.i333
  %.018.i334 = phi ptr [ %i.rb, %.lr.ph.i333 ], [ %3, %.lr.ph.i333.preheader ] ; 3 uses
  %.01517.i335 = phi ptr [ %i.rc, %.lr.ph.i333 ], [ %i.qx, %.lr.ph.i333.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i335) ]
  %i.qy = load i32, ptr %.018.i334, align 4, !tbaa !65
  store i32 %i.qy, ptr %.01517.i335, align 4, !tbaa !65
  store i32 0, ptr %.018.i334, align 4, !tbaa !65
  %i.qz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ra = add i32 %i.qz, 1
  store i32 %i.ra, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.rb = getelementptr inbounds nuw i8, ptr %.018.i334, i64 4 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.01517.i335, i64 4
  %.not.i336 = icmp eq ptr %i.rb, %i.b
  br i1 %.not.i336, label %.loopexit, label %.lr.ph.i333, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph.i333, %bb.o
  %.not8.i.i339 = icmp eq i64 %i.nq, 0
  br i1 %.not8.i.i339, label %.lr.ph.i.i348.preheader, label %.lr.ph.i.i340.preheader

.lr.ph.i.i340.preheader:                          ; preds = %.loopexit
  %min.iters.check679 = icmp ult i64 %i.nq, 8
  %i.rd = sub i64 %.sroa.0394.2658, %i.c
  %diff.check677 = icmp ugt i64 %i.rd, -32
  %or.cond696 = select i1 %min.iters.check679, i1 true, i1 %diff.check677
  br i1 %or.cond696, label %.lr.ph.i.i340.preheader697, label %vector.ph680

vector.ph680:                                     ; preds = %.lr.ph.i.i340.preheader
  %n.vec681 = and i64 %i.nq, -8                   ; 3 uses
  %i.re = shl i64 %n.vec681, 2                    ; 2 uses
  %i.rf = getelementptr i8, ptr %3, i64 %i.re
  %i.rg = and i64 %i.nq, 7
  %i.rh = getelementptr i8, ptr %.sroa.0394.2, i64 %i.re ; 2 uses
  br label %vector.body682

vector.body682:                                   ; preds = %vector.body682, %vector.ph680
  %index683 = phi i64 [ 0, %vector.ph680 ], [ %index.next688, %vector.body682 ] ; 2 uses
  %i.ri = shl i64 %index683, 2                    ; 2 uses
  %next.gep684 = getelementptr i8, ptr %3, i64 %i.ri ; 2 uses
  %next.gep685 = getelementptr i8, ptr %.sroa.0394.2, i64 %i.ri ; 2 uses
  %i.rj = getelementptr i8, ptr %next.gep685, i64 16
  %wide.load686 = load <4 x i32>, ptr %next.gep685, align 4, !tbaa !65
  %wide.load687 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !65
  %i.rk = getelementptr i8, ptr %next.gep684, i64 16
  store <4 x i32> %wide.load686, ptr %next.gep684, align 4, !tbaa !65
  store <4 x i32> %wide.load687, ptr %i.rk, align 4, !tbaa !65
  %index.next688 = add nuw i64 %index683, 8       ; 2 uses
  %i.rl = icmp eq i64 %index.next688, %n.vec681
  br i1 %i.rl, label %middle.block689, label %vector.body682, !llvm.loop !510

middle.block689:                                  ; preds = %vector.body682
  %cmp.n690 = icmp eq i64 %i.nq, %n.vec681
  br i1 %cmp.n690, label %.lr.ph.i.i348.preheader, label %.lr.ph.i.i340.preheader697

.lr.ph.i.i340.preheader697:                       ; preds = %.lr.ph.i.i340.preheader, %middle.block689
  %.011.i.i341.ph = phi ptr [ %3, %.lr.ph.i.i340.preheader ], [ %i.rf, %middle.block689 ] ; 2 uses
  %.0610.i.i342.ph = phi i64 [ %i.nq, %.lr.ph.i.i340.preheader ], [ %i.rg, %middle.block689 ] ; 4 uses
  %.079.i.i343.ph = phi ptr [ %.sroa.0394.2, %.lr.ph.i.i340.preheader ], [ %i.rh, %middle.block689 ] ; 2 uses
  %i.rm = add i64 %.0610.i.i342.ph, -1
  %xtraiter747 = and i64 %.0610.i.i342.ph, 7      ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  br i1 %lcmp.mod748.not, label %.lr.ph.i.i340.prol.loopexit, label %.lr.ph.i.i340.prol

.lr.ph.i.i340.prol:                               ; preds = %.lr.ph.i.i340.preheader697, %.lr.ph.i.i340.prol
  %.011.i.i341.prol = phi ptr [ %i.rq, %.lr.ph.i.i340.prol ], [ %.011.i.i341.ph, %.lr.ph.i.i340.preheader697 ] ; 2 uses
  %.0610.i.i342.prol = phi i64 [ %i.rn, %.lr.ph.i.i340.prol ], [ %.0610.i.i342.ph, %.lr.ph.i.i340.preheader697 ]
  %.079.i.i343.prol = phi ptr [ %i.rp, %.lr.ph.i.i340.prol ], [ %.079.i.i343.ph, %.lr.ph.i.i340.preheader697 ] ; 2 uses
  %prol.iter749 = phi i64 [ %prol.iter749.next, %.lr.ph.i.i340.prol ], [ 0, %.lr.ph.i.i340.preheader697 ]
  %i.rn = add i64 %.0610.i.i342.prol, -1          ; 2 uses
  %i.ro = load i32, ptr %.079.i.i343.prol, align 4, !tbaa !65
  store i32 %i.ro, ptr %.011.i.i341.prol, align 4, !tbaa !65
  %i.rp = getelementptr inbounds nuw i8, ptr %.079.i.i343.prol, i64 4 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.011.i.i341.prol, i64 4 ; 2 uses
  %prol.iter749.next = add i64 %prol.iter749, 1   ; 2 uses
  %prol.iter749.cmp.not = icmp eq i64 %prol.iter749.next, %xtraiter747
  br i1 %prol.iter749.cmp.not, label %.lr.ph.i.i340.prol.loopexit, label %.lr.ph.i.i340.prol, !llvm.loop !511

.lr.ph.i.i340.prol.loopexit:                      ; preds = %.lr.ph.i.i340.prol, %.lr.ph.i.i340.preheader697
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i340.preheader697 ], [ %i.rp, %.lr.ph.i.i340.prol ]
  %.011.i.i341.unr = phi ptr [ %.011.i.i341.ph, %.lr.ph.i.i340.preheader697 ], [ %i.rq, %.lr.ph.i.i340.prol ]
  %.0610.i.i342.unr = phi i64 [ %.0610.i.i342.ph, %.lr.ph.i.i340.preheader697 ], [ %i.rn, %.lr.ph.i.i340.prol ]
  %.079.i.i343.unr = phi ptr [ %.079.i.i343.ph, %.lr.ph.i.i340.preheader697 ], [ %i.rp, %.lr.ph.i.i340.prol ]
  %i.rr = icmp ult i64 %i.rm, 7
  br i1 %i.rr, label %.lr.ph.i.i348.preheader, label %.lr.ph.i.i340

.lr.ph.i.i340:                                    ; preds = %.lr.ph.i.i340.prol.loopexit, %.lr.ph.i.i340
  %.011.i.i341 = phi ptr [ %i.sq, %.lr.ph.i.i340 ], [ %.011.i.i341.unr, %.lr.ph.i.i340.prol.loopexit ] ; 9 uses
  %.0610.i.i342 = phi i64 [ %i.sn, %.lr.ph.i.i340 ], [ %.0610.i.i342.unr, %.lr.ph.i.i340.prol.loopexit ]
  %.079.i.i343 = phi ptr [ %i.sp, %.lr.ph.i.i340 ], [ %.079.i.i343.unr, %.lr.ph.i.i340.prol.loopexit ] ; 9 uses
  %i.rs = load i32, ptr %.079.i.i343, align 4, !tbaa !65
  store i32 %i.rs, ptr %.011.i.i341, align 4, !tbaa !65
  %i.rt = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 4
  %i.ru = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 4
  %i.rv = load i32, ptr %i.rt, align 4, !tbaa !65
  store i32 %i.rv, ptr %i.ru, align 4, !tbaa !65
  %i.rw = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 8
  %i.rx = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 8
  %i.ry = load i32, ptr %i.rw, align 4, !tbaa !65
  store i32 %i.ry, ptr %i.rx, align 4, !tbaa !65
  %i.rz = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 12
  %i.sa = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 12
  %i.sb = load i32, ptr %i.rz, align 4, !tbaa !65
  store i32 %i.sb, ptr %i.sa, align 4, !tbaa !65
  %i.sc = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 16
  %i.se = load i32, ptr %i.sc, align 4, !tbaa !65
  store i32 %i.se, ptr %i.sd, align 4, !tbaa !65
  %i.sf = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 20
  %i.sg = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 20
  %i.sh = load i32, ptr %i.sf, align 4, !tbaa !65
  store i32 %i.sh, ptr %i.sg, align 4, !tbaa !65
  %i.si = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 24
  %i.sj = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 24
  %i.sk = load i32, ptr %i.si, align 4, !tbaa !65
  store i32 %i.sk, ptr %i.sj, align 4, !tbaa !65
  %i.sl = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 28
  %i.sm = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 28
  %i.sn = add i64 %.0610.i.i342, -8               ; 2 uses
  %i.so = load i32, ptr %i.sl, align 4, !tbaa !65
  store i32 %i.so, ptr %i.sm, align 4, !tbaa !65
  %i.sp = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 32 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 32
  %.not.i.i344.7 = icmp eq i64 %i.sn, 0
  br i1 %.not.i.i344.7, label %.lr.ph.i.i348.preheader, label %.lr.ph.i.i340, !llvm.loop !512

.lr.ph.i.i348.preheader:                          ; preds = %.lr.ph.i.i340.prol.loopexit, %.lr.ph.i.i340, %middle.block689, %.loopexit
  %.0919.i.i350.ph = phi ptr [ %.sroa.0394.2, %.loopexit ], [ %i.rh, %middle.block689 ], [ %.lcssa.unr, %.lr.ph.i.i340.prol.loopexit ], [ %i.sp, %.lr.ph.i.i340 ] ; 2 uses
  %i.sr = add i64 %i.f, %4
  %xtraiter750 = and i64 %i.qw, 3                 ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  br i1 %lcmp.mod751.not, label %.lr.ph.i.i348.prol.loopexit, label %.lr.ph.i.i348.prol

.lr.ph.i.i348.prol:                               ; preds = %.lr.ph.i.i348.preheader, %.lr.ph.i.i348.prol
  %.020.i.i349.prol = phi i64 [ %i.sx, %.lr.ph.i.i348.prol ], [ %i.qw, %.lr.ph.i.i348.preheader ]
  %.0919.i.i350.prol = phi ptr [ %i.sv, %.lr.ph.i.i348.prol ], [ %.0919.i.i350.ph, %.lr.ph.i.i348.preheader ] ; 2 uses
  %.01618.i.i351.prol = phi ptr [ %i.sw, %.lr.ph.i.i348.prol ], [ %i.b, %.lr.ph.i.i348.preheader ] ; 3 uses
  %prol.iter752 = phi i64 [ %prol.iter752.next, %.lr.ph.i.i348.prol ], [ 0, %.lr.ph.i.i348.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i351.prol) ]
  %i.ss = load i32, ptr %.0919.i.i350.prol, align 4, !tbaa !65
  store i32 %i.ss, ptr %.01618.i.i351.prol, align 4, !tbaa !65
  %i.st = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.su = add i32 %i.st, 1
  store i32 %i.su, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.sv = getelementptr inbounds nuw i8, ptr %.0919.i.i350.prol, i64 4 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.01618.i.i351.prol, i64 4 ; 2 uses
  %i.sx = add i64 %.020.i.i349.prol, -1           ; 2 uses
  %prol.iter752.next = add i64 %prol.iter752, 1   ; 2 uses
  %prol.iter752.cmp.not = icmp eq i64 %prol.iter752.next, %xtraiter750
  br i1 %prol.iter752.cmp.not, label %.lr.ph.i.i348.prol.loopexit, label %.lr.ph.i.i348.prol, !llvm.loop !513

.lr.ph.i.i348.prol.loopexit:                      ; preds = %.lr.ph.i.i348.prol, %.lr.ph.i.i348.preheader
  %.020.i.i349.unr = phi i64 [ %i.qw, %.lr.ph.i.i348.preheader ], [ %i.sx, %.lr.ph.i.i348.prol ]
  %.0919.i.i350.unr = phi ptr [ %.0919.i.i350.ph, %.lr.ph.i.i348.preheader ], [ %i.sv, %.lr.ph.i.i348.prol ]
  %.01618.i.i351.unr = phi ptr [ %i.b, %.lr.ph.i.i348.preheader ], [ %i.sw, %.lr.ph.i.i348.prol ]
  %i.sy = sub i64 %i.i, %i.sr
  %i.sz = add i64 %i.sy, %1
  %i.ta = icmp ugt i64 %i.sz, -4
  br i1 %i.ta, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i348

.lr.ph.i.i348:                                    ; preds = %.lr.ph.i.i348.prol.loopexit, %.lr.ph.i.i348
  %.020.i.i349 = phi i64 [ %i.ts, %.lr.ph.i.i348 ], [ %.020.i.i349.unr, %.lr.ph.i.i348.prol.loopexit ]
  %.0919.i.i350 = phi ptr [ %i.tq, %.lr.ph.i.i348 ], [ %.0919.i.i350.unr, %.lr.ph.i.i348.prol.loopexit ] ; 5 uses
  %.01618.i.i351 = phi ptr [ %i.tr, %.lr.ph.i.i348 ], [ %.01618.i.i351.unr, %.lr.ph.i.i348.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i351) ]
  %i.tb = load i32, ptr %.0919.i.i350, align 4, !tbaa !65
  store i32 %i.tb, ptr %.01618.i.i351, align 4, !tbaa !65
  %i.tc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.td = add i32 %i.tc, 1
  store i32 %i.td, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.te = getelementptr inbounds nuw i8, ptr %.0919.i.i350, i64 4
  %i.tf = getelementptr inbounds nuw i8, ptr %.01618.i.i351, i64 4
  %i.tg = load i32, ptr %i.te, align 4, !tbaa !65
  store i32 %i.tg, ptr %i.tf, align 4, !tbaa !65
  %i.th = add i32 %i.tc, 2
  store i32 %i.th, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ti = getelementptr inbounds nuw i8, ptr %.0919.i.i350, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %.01618.i.i351, i64 8
  %i.tk = load i32, ptr %i.ti, align 4, !tbaa !65
  store i32 %i.tk, ptr %i.tj, align 4, !tbaa !65
  %i.tl = add i32 %i.tc, 3
  store i32 %i.tl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.tm = getelementptr inbounds nuw i8, ptr %.0919.i.i350, i64 12
  %i.tn = getelementptr inbounds nuw i8, ptr %.01618.i.i351, i64 12
  %i.to = load i32, ptr %i.tm, align 4, !tbaa !65
  store i32 %i.to, ptr %i.tn, align 4, !tbaa !65
  %i.tp = add i32 %i.tc, 4
  store i32 %i.tp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.tq = getelementptr inbounds nuw i8, ptr %.0919.i.i350, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %.01618.i.i351, i64 16
  %i.ts = add i64 %.020.i.i349, -4                ; 2 uses
  %.not.i.i352.3 = icmp eq i64 %i.ts, 0
  br i1 %.not.i.i352.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i348, !llvm.loop !18

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i218, %.lr.ph.i256, %.lr.ph.i299, %.lr.ph.i.i325.prol.loopexit, %.lr.ph.i.i325, %.lr.ph.i.i348.prol.loopexit, %.lr.ph.i.i348, %middle.block671, %.loopexit412, %bb.h, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297, %.loopexit416, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvT0_mSC_SC_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = ptrtoaddr ptr %5 to i64                    ; 2 uses
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 8 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 28 uses
  %i.d = add i64 %4, %1                           ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.g = ptrtoint ptr %3 to i64                   ; 7 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 5 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.j, %i.f                       ; 4 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 9 uses
  %i.m = add i64 %i.i, %4                         ; 4 uses
  %.not = icmp ult i64 %i.l, %i.m
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sub i64 0, %i.m
  %i.o = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.n ; 3 uses
  %.not17.i.i = icmp eq i64 %4, 0
  br i1 %.not17.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.020.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.0919.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.prol ], [ %5, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.prol ], [ %i.o, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.p = load i32, ptr %.0919.i.i.prol, align 4, !tbaa !65
  store i32 %i.p, ptr %.01618.i.i.prol, align 4, !tbaa !65
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %.0919.i.i.prol, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %i.u = add i64 %.020.i.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !524

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.020.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.0919.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %i.v = icmp ult i64 %4, 4
  br i1 %i.v, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0919.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.0919.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.w = load i32, ptr %.0919.i.i, align 4, !tbaa !65
  store i32 %i.w, ptr %.01618.i.i, align 4, !tbaa !65
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !65
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !65
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !65
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !65
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !65
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !65
  %i.ak = add i32 %i.x, 4
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %i.an = add i64 %.020.i.i, -4                   ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !18

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not16.i = icmp eq ptr %3, %i.c
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.as, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 3 uses
  %.01517.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.ao, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.ap = load i32, ptr %.018.i, align 4, !tbaa !65
  store i32 %i.ap, ptr %.01517.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i, align 4, !tbaa !65
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.as, %i.c
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.not125 = icmp ult i64 %i.l, %i.d
  br i1 %.not125, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i130 = icmp eq ptr %0, %3
  br i1 %.not16.i130, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.c, %.lr.ph.i131
  %.018.i132 = phi ptr [ %i.ax, %.lr.ph.i131 ], [ %0, %bb.c ] ; 3 uses
  %.01517.i133 = phi ptr [ %i.ay, %.lr.ph.i131 ], [ %2, %bb.c ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i133) ]
  %i.au = load i32, ptr %.018.i132, align 4, !tbaa !65
  store i32 %i.au, ptr %.01517.i133, align 4, !tbaa !65
  store i32 0, ptr %.018.i132, align 4, !tbaa !65
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %.018.i132, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i133, i64 4
  %.not.i134 = icmp eq ptr %i.ax, %3
  br i1 %.not.i134, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i131, !llvm.loop !8

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.az = sub nuw i64 %i.l, %i.m                  ; 5 uses
  %i.ba = sub i64 0, %i.az                        ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %3, i64 %i.ba ; 11 uses
  %.not17.i = icmp eq i64 %i.az, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %bb.d
  %.neg = add i64 %i.m, 1
  %xtraiter446 = and i64 %i.az, 1
  %lcmp.mod447.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader
  %i.bc = add nsw i64 %i.az, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !65
  store i32 %i.bd, ptr %i.c, align 4, !tbaa !65
  store i32 0, ptr %i.bb, align 4, !tbaa !65
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %.lr.ph.i137.prol.loopexit

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %.020.i.unr = phi i64 [ %i.az, %.lr.ph.i137.preheader ], [ %i.bc, %.lr.ph.i137.prol ]
  %.0819.i.unr = phi ptr [ %i.bb, %.lr.ph.i137.preheader ], [ %i.bg, %.lr.ph.i137.prol ]
  %.01618.i.unr = phi ptr [ %i.c, %.lr.ph.i137.preheader ], [ %i.bh, %.lr.ph.i137.prol ]
  %i.bi = icmp eq i64 %i.l, %.neg
  br i1 %i.bi, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %.020.i = phi i64 [ %i.bo, %.lr.ph.i137 ], [ %.020.i.unr, %.lr.ph.i137.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bs, %.lr.ph.i137 ], [ %.0819.i.unr, %.lr.ph.i137.prol.loopexit ] ; 4 uses
  %.01618.i = phi ptr [ %i.bt, %.lr.ph.i137 ], [ %.01618.i.unr, %.lr.ph.i137.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.bj = load i32, ptr %.0819.i, align 4, !tbaa !65
  store i32 %i.bj, ptr %.01618.i, align 4, !tbaa !65
  store i32 0, ptr %.0819.i, align 4, !tbaa !65
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.bo = add i64 %.020.i, -2                     ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !65
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !65
  store i32 0, ptr %i.bm, align 4, !tbaa !65
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i138.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.i138.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137, %bb.d
  %.not.i139 = icmp eq ptr %i.bb, %i.c
  %.not8.i.i = icmp eq ptr %0, %i.bb
  %or.cond = or i1 %.not.i139, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i140.preheader

.lr.ph.i.i140.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.bu = shl i64 %i.ba, 2
  %i.bv = add i64 %i.bu, %i.g
  %i.bw = add i64 %i.bv, -4
  %i.bx = sub i64 %i.bw, %i.b                     ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 140
  br i1 %min.iters.check, label %.lr.ph.i.i140.preheader441, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i140.preheader
  %i.ca = shl nsw i64 %1, 2
  %i.cb = shl i64 %i.ba, 2                        ; 2 uses
  %i.cc = add i64 %i.cb, %i.g
  %i.cd = add i64 %i.cc, -4
  %i.ce = sub i64 %i.cd, %i.b
  %i.cf = and i64 %i.ce, -4                       ; 2 uses
  %i.cg = add i64 %i.ca, -4
  %i.ch = sub i64 %i.cg, %i.cf
  %i.ci = getelementptr i8, ptr %0, i64 %i.ch
  %i.cj = add i64 %i.cb, -4
  %i.ck = sub i64 %i.cj, %i.cf
  %i.cl = getelementptr i8, ptr %3, i64 %i.ck
  %bound0 = icmp ult ptr %i.ci, %i.bb
  %bound1 = icmp ult ptr %i.cl, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i140.preheader441, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 9223372036854775800     ; 3 uses
  %i.cm = mul i64 %n.vec, -4                      ; 2 uses
  %i.cn = getelementptr i8, ptr %i.c, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bb, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.cp ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.bb, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep319, i64 -16 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep319, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cq, align 4, !tbaa !65, !alias.scope !553
  %wide.load320 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !65, !alias.scope !553
  %i.cs = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cs, align 4, !tbaa !65, !alias.scope !554, !noalias !553
  store <4 x i32> %wide.load320, ptr %i.ct, align 4, !tbaa !65, !alias.scope !554, !noalias !553
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !65, !alias.scope !553
  store <4 x i32> zeroinitializer, ptr %i.cr, align 4, !tbaa !65, !alias.scope !553
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !528

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i140.preheader441

.lr.ph.i.i140.preheader441:                       ; preds = %vector.memcheck, %.lr.ph.i.i140.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i140.preheader ], [ %i.cn, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i140.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i.i140

.lr.ph.i.i140:                                    ; preds = %.lr.ph.i.i140.preheader441, %.lr.ph.i.i140
  %.010.i.i = phi ptr [ %i.cw, %.lr.ph.i.i140 ], [ %.010.i.i.ph, %.lr.ph.i.i140.preheader441 ]
  %.079.i.i = phi ptr [ %i.cv, %.lr.ph.i.i140 ], [ %.079.i.i.ph, %.lr.ph.i.i140.preheader441 ]
  %i.cv = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !65
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !65
  store i32 0, ptr %i.cv, align 4, !tbaa !65
  %.not.i.i141 = icmp eq ptr %0, %i.cv
  br i1 %.not.i.i141, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i140, !llvm.loop !529

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i140, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i142
  %storemerge4.i = phi ptr [ %i.da, %.lr.ph.i142 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !65
  %i.cy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.da = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i143 = icmp eq ptr %i.da, %2
  br i1 %.not.i143, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i142, !llvm.loop !16

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i131, %bb.c
  %.not.i146 = icmp eq i64 %1, 0
  br i1 %.not.i146, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  %xtraiter443 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod444.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.db = phi i64 [ %i.dc, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i147.prol = phi ptr [ %i.df, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter445 = phi i64 [ %prol.iter445.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.dc = add i64 %i.db, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i147.prol, align 4, !tbaa !65
  %i.dd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i147.prol, i64 4 ; 2 uses
  %prol.iter445.next = add i64 %prol.iter445, 1   ; 2 uses
  %prol.iter445.cmp.not = icmp eq i64 %prol.iter445.next, %xtraiter443
  br i1 %prol.iter445.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !530

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.dc, %.preheader.prol ]
  %.0.i147.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.df, %.preheader.prol ]
  %i.dg = icmp ult i64 %1, 4
  br i1 %i.dg, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.dh = phi i64 [ %i.dp, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i147 = phi ptr [ %i.dr, %.preheader ], [ %.0.i147.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i147, align 4, !tbaa !65
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i147, i64 4
  store i32 -2147483648, ptr %i.dk, align 4, !tbaa !65
  %i.dl = add i32 %i.di, -2
  store i32 %i.dl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i147, i64 8
  store i32 -2147483648, ptr %i.dm, align 4, !tbaa !65
  %i.dn = add i32 %i.di, -3
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i147, i64 12
  %i.dp = add i64 %i.dh, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.do, align 4, !tbaa !65
  %i.dq = add i32 %i.di, -4
  store i32 %i.dq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i147, i64 16
  %.not3.i148.3 = icmp eq i64 %i.dp, 0
  br i1 %.not3.i148.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.preheader, !llvm.loop !17

bb.e:                                             ; preds = %bb.a
  %i.ds = icmp ugt i64 %i.l, %i.i
  br i1 %i.ds, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i158 = icmp eq ptr %3, %i.c
  br i1 %.not16.i158, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164, label %.lr.ph.i159.preheader

.lr.ph.i159.preheader:                            ; preds = %bb.f
  %i.dt = sub nsw i64 0, %i.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dt
  br label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %.lr.ph.i159.preheader, %.lr.ph.i159
  %.018.i160 = phi ptr [ %i.dy, %.lr.ph.i159 ], [ %3, %.lr.ph.i159.preheader ] ; 3 uses
  %.01517.i161 = phi ptr [ %i.dz, %.lr.ph.i159 ], [ %i.du, %.lr.ph.i159.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i161) ]
  %i.dv = load i32, ptr %.018.i160, align 4, !tbaa !65
  store i32 %i.dv, ptr %.01517.i161, align 4, !tbaa !65
  store i32 0, ptr %.018.i160, align 4, !tbaa !65
  %i.dw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dy = getelementptr inbounds nuw i8, ptr %.018.i160, i64 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.01517.i161, i64 4
  %.not.i162 = icmp eq ptr %i.dy, %i.c
  br i1 %.not.i162, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164, label %.lr.ph.i159, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164: ; preds = %.lr.ph.i159, %bb.f
  %i.ea = sub nuw nsw i64 %i.l, %i.i              ; 4 uses
  %i.eb = sub i64 %4, %i.ea                       ; 10 uses
  %i.ec = sub i64 0, %i.eb
  %i.ed = getelementptr [4 x i8], ptr %i.c, i64 %i.ec ; 11 uses
  %.not8.i.i165 = icmp eq i64 %i.eb, 0
  br i1 %.not8.i.i165, label %.lr.ph.i.i170.preheader, label %.lr.ph.i.i166.preheader

.lr.ph.i.i166.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164
  %min.iters.check390 = icmp ult i64 %i.eb, 20
  br i1 %min.iters.check390, label %.lr.ph.i.i166.preheader432, label %vector.memcheck387

vector.memcheck387:                               ; preds = %.lr.ph.i.i166.preheader
  %i.ee = sub i64 %1, %i.eb
  %i.ef = shl i64 %i.ee, 2
  %i.eg = add i64 %i.ef, %i.b
  %i.eh = sub i64 %7, %i.eg
  %diff.check388 = icmp ugt i64 %i.eh, -32
  br i1 %diff.check388, label %.lr.ph.i.i166.preheader432, label %vector.ph391

vector.ph391:                                     ; preds = %vector.memcheck387
  %n.vec392 = and i64 %i.eb, -8                   ; 3 uses
  %i.ei = shl i64 %n.vec392, 2                    ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ed, i64 %i.ei
  %i.ek = and i64 %i.eb, 7
  %i.el = getelementptr i8, ptr %5, i64 %i.ei     ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.body393, %vector.ph391
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next399, %vector.body393 ] ; 2 uses
  %i.em = shl i64 %index394, 2                    ; 2 uses
  %next.gep395 = getelementptr i8, ptr %i.ed, i64 %i.em ; 2 uses
  %next.gep396 = getelementptr i8, ptr %5, i64 %i.em ; 2 uses
  %i.en = getelementptr i8, ptr %next.gep396, i64 16
  %wide.load397 = load <4 x i32>, ptr %next.gep396, align 4, !tbaa !65
  %wide.load398 = load <4 x i32>, ptr %i.en, align 4, !tbaa !65
  %i.eo = getelementptr i8, ptr %next.gep395, i64 16
  store <4 x i32> %wide.load397, ptr %next.gep395, align 4, !tbaa !65
  store <4 x i32> %wide.load398, ptr %i.eo, align 4, !tbaa !65
  %index.next399 = add nuw i64 %index394, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next399, %n.vec392
  br i1 %i.ep, label %middle.block400, label %vector.body393, !llvm.loop !531

middle.block400:                                  ; preds = %vector.body393
  %cmp.n401 = icmp eq i64 %i.eb, %n.vec392
  br i1 %cmp.n401, label %.lr.ph.i.i170.preheader, label %.lr.ph.i.i166.preheader432

.lr.ph.i.i166.preheader432:                       ; preds = %vector.memcheck387, %.lr.ph.i.i166.preheader, %middle.block400
  %.011.i.i.ph = phi ptr [ %i.ed, %vector.memcheck387 ], [ %i.ed, %.lr.ph.i.i166.preheader ], [ %i.ej, %middle.block400 ] ; 2 uses
  %.0610.i.i.ph = phi i64 [ %i.eb, %vector.memcheck387 ], [ %i.eb, %.lr.ph.i.i166.preheader ], [ %i.ek, %middle.block400 ] ; 4 uses
  %.079.i.i167.ph = phi ptr [ %5, %vector.memcheck387 ], [ %5, %.lr.ph.i.i166.preheader ], [ %i.el, %middle.block400 ] ; 2 uses
  %i.eq = add i64 %.0610.i.i.ph, -1
  %xtraiter455 = and i64 %.0610.i.i.ph, 7         ; 2 uses
  %lcmp.mod456.not = icmp eq i64 %xtraiter455, 0
  br i1 %lcmp.mod456.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol

.lr.ph.i.i166.prol:                               ; preds = %.lr.ph.i.i166.preheader432, %.lr.ph.i.i166.prol
  %.011.i.i.prol = phi ptr [ %i.eu, %.lr.ph.i.i166.prol ], [ %.011.i.i.ph, %.lr.ph.i.i166.preheader432 ] ; 2 uses
  %.0610.i.i.prol = phi i64 [ %i.er, %.lr.ph.i.i166.prol ], [ %.0610.i.i.ph, %.lr.ph.i.i166.preheader432 ]
  %.079.i.i167.prol = phi ptr [ %i.et, %.lr.ph.i.i166.prol ], [ %.079.i.i167.ph, %.lr.ph.i.i166.preheader432 ] ; 2 uses
  %prol.iter457 = phi i64 [ %prol.iter457.next, %.lr.ph.i.i166.prol ], [ 0, %.lr.ph.i.i166.preheader432 ]
  %i.er = add i64 %.0610.i.i.prol, -1             ; 2 uses
  %i.es = load i32, ptr %.079.i.i167.prol, align 4, !tbaa !65
  store i32 %i.es, ptr %.011.i.i.prol, align 4, !tbaa !65
  %i.et = getelementptr inbounds nuw i8, ptr %.079.i.i167.prol, i64 4 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.011.i.i.prol, i64 4 ; 2 uses
  %prol.iter457.next = add i64 %prol.iter457, 1   ; 2 uses
  %prol.iter457.cmp.not = icmp eq i64 %prol.iter457.next, %xtraiter455
  br i1 %prol.iter457.cmp.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol, !llvm.loop !532

.lr.ph.i.i166.prol.loopexit:                      ; preds = %.lr.ph.i.i166.prol, %.lr.ph.i.i166.preheader432
  %.lcssa433.unr = phi ptr [ poison, %.lr.ph.i.i166.preheader432 ], [ %i.et, %.lr.ph.i.i166.prol ]
  %.011.i.i.unr = phi ptr [ %.011.i.i.ph, %.lr.ph.i.i166.preheader432 ], [ %i.eu, %.lr.ph.i.i166.prol ]
  %.0610.i.i.unr = phi i64 [ %.0610.i.i.ph, %.lr.ph.i.i166.preheader432 ], [ %i.er, %.lr.ph.i.i166.prol ]
  %.079.i.i167.unr = phi ptr [ %.079.i.i167.ph, %.lr.ph.i.i166.preheader432 ], [ %i.et, %.lr.ph.i.i166.prol ]
  %i.ev = icmp ult i64 %i.eq, 7
  br i1 %i.ev, label %.lr.ph.i.i170.preheader, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166
  %.011.i.i = phi ptr [ %i.fu, %.lr.ph.i.i166 ], [ %.011.i.i.unr, %.lr.ph.i.i166.prol.loopexit ] ; 9 uses
  %.0610.i.i = phi i64 [ %i.fr, %.lr.ph.i.i166 ], [ %.0610.i.i.unr, %.lr.ph.i.i166.prol.loopexit ]
  %.079.i.i167 = phi ptr [ %i.ft, %.lr.ph.i.i166 ], [ %.079.i.i167.unr, %.lr.ph.i.i166.prol.loopexit ] ; 9 uses
  %i.ew = load i32, ptr %.079.i.i167, align 4, !tbaa !65
  store i32 %i.ew, ptr %.011.i.i, align 4, !tbaa !65
  %i.ex = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !65
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !65
  %i.fa = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !65
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !65
  %i.fd = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 12
  %i.fe = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 12
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !65
  store i32 %i.ff, ptr %i.fe, align 4, !tbaa !65
  %i.fg = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !65
  store i32 %i.fi, ptr %i.fh, align 4, !tbaa !65
  %i.fj = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 20
  %i.fk = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 20
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !65
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !65
  %i.fm = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 24
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !65
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !65
  %i.fp = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 28
  %i.fq = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 28
  %i.fr = add i64 %.0610.i.i, -8                  ; 2 uses
  %i.fs = load i32, ptr %i.fp, align 4, !tbaa !65
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !65
  %i.ft = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32
  %.not.i.i168.7 = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i168.7, label %.lr.ph.i.i170.preheader, label %.lr.ph.i.i166, !llvm.loop !533

.lr.ph.i.i170.preheader:                          ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166, %middle.block400, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164
  %.0919.i.i172.ph = phi ptr [ %5, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164 ], [ %i.el, %middle.block400 ], [ %.lcssa433.unr, %.lr.ph.i.i166.prol.loopexit ], [ %i.ft, %.lr.ph.i.i166 ] ; 2 uses
  %xtraiter458 = and i64 %i.ea, 3                 ; 2 uses
  %lcmp.mod459.not = icmp eq i64 %xtraiter458, 0
  br i1 %lcmp.mod459.not, label %.lr.ph.i.i170.prol.loopexit, label %.lr.ph.i.i170.prol

.lr.ph.i.i170.prol:                               ; preds = %.lr.ph.i.i170.preheader, %.lr.ph.i.i170.prol
  %.020.i.i171.prol = phi i64 [ %i.ga, %.lr.ph.i.i170.prol ], [ %i.ea, %.lr.ph.i.i170.preheader ]
  %.0919.i.i172.prol = phi ptr [ %i.fy, %.lr.ph.i.i170.prol ], [ %.0919.i.i172.ph, %.lr.ph.i.i170.preheader ] ; 2 uses
  %.01618.i.i173.prol = phi ptr [ %i.fz, %.lr.ph.i.i170.prol ], [ %i.c, %.lr.ph.i.i170.preheader ] ; 3 uses
  %prol.iter460 = phi i64 [ %prol.iter460.next, %.lr.ph.i.i170.prol ], [ 0, %.lr.ph.i.i170.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i173.prol) ]
  %i.fv = load i32, ptr %.0919.i.i172.prol, align 4, !tbaa !65
  store i32 %i.fv, ptr %.01618.i.i173.prol, align 4, !tbaa !65
  %i.fw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fy = getelementptr inbounds nuw i8, ptr %.0919.i.i172.prol, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.01618.i.i173.prol, i64 4 ; 2 uses
  %i.ga = add i64 %.020.i.i171.prol, -1           ; 2 uses
  %prol.iter460.next = add i64 %prol.iter460, 1   ; 2 uses
  %prol.iter460.cmp.not = icmp eq i64 %prol.iter460.next, %xtraiter458
  br i1 %prol.iter460.cmp.not, label %.lr.ph.i.i170.prol.loopexit, label %.lr.ph.i.i170.prol, !llvm.loop !534

.lr.ph.i.i170.prol.loopexit:                      ; preds = %.lr.ph.i.i170.prol, %.lr.ph.i.i170.preheader
  %.020.i.i171.unr = phi i64 [ %i.ea, %.lr.ph.i.i170.preheader ], [ %i.ga, %.lr.ph.i.i170.prol ]
  %.0919.i.i172.unr = phi ptr [ %.0919.i.i172.ph, %.lr.ph.i.i170.preheader ], [ %i.fy, %.lr.ph.i.i170.prol ]
  %.01618.i.i173.unr = phi ptr [ %i.c, %.lr.ph.i.i170.preheader ], [ %i.fz, %.lr.ph.i.i170.prol ]
  %i.gb = sub nsw i64 %i.i, %i.l
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176, label %.lr.ph.i.i170

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i170.prol.loopexit, %.lr.ph.i.i170
  %.020.i.i171 = phi i64 [ %i.gu, %.lr.ph.i.i170 ], [ %.020.i.i171.unr, %.lr.ph.i.i170.prol.loopexit ]
  %.0919.i.i172 = phi ptr [ %i.gs, %.lr.ph.i.i170 ], [ %.0919.i.i172.unr, %.lr.ph.i.i170.prol.loopexit ] ; 5 uses
  %.01618.i.i173 = phi ptr [ %i.gt, %.lr.ph.i.i170 ], [ %.01618.i.i173.unr, %.lr.ph.i.i170.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i173) ]
  %i.gd = load i32, ptr %.0919.i.i172, align 4, !tbaa !65
  store i32 %i.gd, ptr %.01618.i.i173, align 4, !tbaa !65
  %i.ge = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gg = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 4
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !65
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !65
  %i.gj = add i32 %i.ge, 2
  store i32 %i.gj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gk = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 8
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !65
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !65
  %i.gn = add i32 %i.ge, 3
  store i32 %i.gn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.go = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 12
  %i.gp = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 12
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !65
  store i32 %i.gq, ptr %i.gp, align 4, !tbaa !65
  %i.gr = add i32 %i.ge, 4
  store i32 %i.gr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gs = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 16
  %i.gu = add i64 %.020.i.i171, -4                ; 2 uses
  %.not.i.i174.3 = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i174.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176, label %.lr.ph.i.i170, !llvm.loop !18

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176: ; preds = %.lr.ph.i.i170, %.lr.ph.i.i170.prol.loopexit
  %.not.i177 = icmp eq ptr %3, %i.ed
  br i1 %.not.i177, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176
  %.not8.i.i178 = icmp eq ptr %0, %3
  br i1 %.not8.i.i178, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, label %.lr.ph.i.i179.preheader

.lr.ph.i.i179.preheader:                          ; preds = %bb.g
  %i.gv = add i64 %i.g, -4
  %i.gw = sub i64 %i.gv, %i.b                     ; 3 uses
  %i.gx = lshr i64 %i.gw, 2
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 2 uses
  %min.iters.check411 = icmp ult i64 %i.gw, 124
  br i1 %min.iters.check411, label %.lr.ph.i.i179.preheader431, label %vector.memcheck412

vector.memcheck412:                               ; preds = %.lr.ph.i.i179.preheader
  %i.gz = and i64 %i.gw, -4                       ; 2 uses
  %i.ha = sub i64 %1, %i.eb
  %i.hb = shl i64 %i.ha, 2
  %i.hc = add i64 %i.hb, -4
  %i.hd = sub i64 %i.hc, %i.gz
  %i.he = getelementptr i8, ptr %0, i64 %i.hd
  %i.hf = sub nuw nsw i64 -4, %i.gz
  %i.hg = getelementptr i8, ptr %3, i64 %i.hf
  %bound0413 = icmp ult ptr %i.he, %3
  %bound1414 = icmp ult ptr %i.hg, %i.ed
  %found.conflict415 = and i1 %bound0413, %bound1414
  br i1 %found.conflict415, label %.lr.ph.i.i179.preheader431, label %vector.ph416

vector.ph416:                                     ; preds = %vector.memcheck412
  %n.vec417 = and i64 %i.gy, 9223372036854775800  ; 3 uses
  %i.hh = mul i64 %n.vec417, -4                   ; 2 uses
  %i.hi = getelementptr i8, ptr %i.ed, i64 %i.hh  ; 2 uses
  %i.hj = getelementptr i8, ptr %3, i64 %i.hh
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %vector.ph416
  %index419 = phi i64 [ 0, %vector.ph416 ], [ %index.next424, %vector.body418 ] ; 2 uses
  %i.hk = mul i64 %index419, -4                   ; 2 uses
  %next.gep420 = getelementptr i8, ptr %i.ed, i64 %i.hk ; 2 uses
  %next.gep421 = getelementptr i8, ptr %3, i64 %i.hk ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %next.gep421, i64 -16 ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %next.gep421, i64 -32 ; 2 uses
  %wide.load422 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !65, !alias.scope !555
  %wide.load423 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !65, !alias.scope !555
  %i.hn = getelementptr inbounds i8, ptr %next.gep420, i64 -16
  %i.ho = getelementptr inbounds i8, ptr %next.gep420, i64 -32
  store <4 x i32> %wide.load422, ptr %i.hn, align 4, !tbaa !65, !alias.scope !556, !noalias !555
  store <4 x i32> %wide.load423, ptr %i.ho, align 4, !tbaa !65, !alias.scope !556, !noalias !555
  store <4 x i32> zeroinitializer, ptr %i.hl, align 4, !tbaa !65, !alias.scope !555
  store <4 x i32> zeroinitializer, ptr %i.hm, align 4, !tbaa !65, !alias.scope !555
  %index.next424 = add nuw i64 %index419, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next424, %n.vec417
  br i1 %i.hp, label %middle.block425, label %vector.body418, !llvm.loop !538

middle.block425:                                  ; preds = %vector.body418
  %cmp.n426 = icmp eq i64 %i.gy, %n.vec417
  br i1 %cmp.n426, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, label %.lr.ph.i.i179.preheader431

.lr.ph.i.i179.preheader431:                       ; preds = %vector.memcheck412, %.lr.ph.i.i179.preheader, %middle.block425
  %.010.i.i180.ph = phi ptr [ %i.ed, %vector.memcheck412 ], [ %i.ed, %.lr.ph.i.i179.preheader ], [ %i.hi, %middle.block425 ]
  %.079.i.i181.ph = phi ptr [ %3, %vector.memcheck412 ], [ %3, %.lr.ph.i.i179.preheader ], [ %i.hj, %middle.block425 ]
  br label %.lr.ph.i.i179

.lr.ph.i.i179:                                    ; preds = %.lr.ph.i.i179.preheader431, %.lr.ph.i.i179
  %.010.i.i180 = phi ptr [ %i.hr, %.lr.ph.i.i179 ], [ %.010.i.i180.ph, %.lr.ph.i.i179.preheader431 ]
  %.079.i.i181 = phi ptr [ %i.hq, %.lr.ph.i.i179 ], [ %.079.i.i181.ph, %.lr.ph.i.i179.preheader431 ]
  %i.hq = getelementptr inbounds i8, ptr %.079.i.i181, i64 -4 ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %.010.i.i180, i64 -4 ; 3 uses
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !65
  store i32 %i.hs, ptr %i.hr, align 4, !tbaa !65
  store i32 0, ptr %i.hq, align 4, !tbaa !65
  %.not.i.i182 = icmp eq ptr %0, %i.hq
  br i1 %.not.i.i182, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, label %.lr.ph.i.i179, !llvm.loop !539

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183: ; preds = %.lr.ph.i.i179, %middle.block425, %bb.g
  %i.ht = phi ptr [ %i.ed, %bb.g ], [ %i.hi, %middle.block425 ], [ %i.hr, %.lr.ph.i.i179 ] ; 2 uses
  %.not3.i184 = icmp eq ptr %0, %i.ht
  br i1 %.not3.i184, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, %.lr.ph.i185
  %storemerge4.i186 = phi ptr [ %i.hw, %.lr.ph.i185 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i186, align 4, !tbaa !65
  %i.hu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hv = add i32 %i.hu, -1
  store i32 %i.hv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hw = getelementptr inbounds nuw i8, ptr %storemerge4.i186, i64 4 ; 2 uses
  %.not.i187 = icmp eq ptr %i.hw, %i.ht
  br i1 %.not.i187, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i185, !llvm.loop !16

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.hx = getelementptr i8, ptr %i.c, i64 %.idx   ; 10 uses
  %.not17.i197 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i197, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i198.preheader

.lr.ph.i198.preheader:                            ; preds = %bb.h
  %i.hy = and i64 %i.k, 4
  %lcmp.mod450.not = icmp eq i64 %i.hy, 0
  br i1 %lcmp.mod450.not, label %.lr.ph.i198.prol.loopexit, label %.lr.ph.i198.prol

.lr.ph.i198.prol:                                 ; preds = %.lr.ph.i198.preheader
  %i.hz = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.ia = load i32, ptr %i.hx, align 4, !tbaa !65
  store i32 %i.ia, ptr %i.c, align 4, !tbaa !65
  store i32 0, ptr %i.hx, align 4, !tbaa !65
  %i.ib = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %.lr.ph.i198.prol.loopexit

.lr.ph.i198.prol.loopexit:                        ; preds = %.lr.ph.i198.prol, %.lr.ph.i198.preheader
  %.020.i199.unr = phi i64 [ %i.l, %.lr.ph.i198.preheader ], [ %i.hz, %.lr.ph.i198.prol ]
  %.0819.i200.unr = phi ptr [ %i.hx, %.lr.ph.i198.preheader ], [ %i.id, %.lr.ph.i198.prol ]
  %.01618.i201.unr = phi ptr [ %i.c, %.lr.ph.i198.preheader ], [ %i.ie, %.lr.ph.i198.prol ]
  %i.if = icmp eq i64 %i.k, 4
  br i1 %i.if, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204, label %.lr.ph.i198

.lr.ph.i198:                                      ; preds = %.lr.ph.i198.prol.loopexit, %.lr.ph.i198
  %.020.i199 = phi i64 [ %i.il, %.lr.ph.i198 ], [ %.020.i199.unr, %.lr.ph.i198.prol.loopexit ]
  %.0819.i200 = phi ptr [ %i.ip, %.lr.ph.i198 ], [ %.0819.i200.unr, %.lr.ph.i198.prol.loopexit ] ; 4 uses
  %.01618.i201 = phi ptr [ %i.iq, %.lr.ph.i198 ], [ %.01618.i201.unr, %.lr.ph.i198.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i201) ]
  %i.ig = load i32, ptr %.0819.i200, align 4, !tbaa !65
  store i32 %i.ig, ptr %.01618.i201, align 4, !tbaa !65
  store i32 0, ptr %.0819.i200, align 4, !tbaa !65
  %i.ih = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ij = getelementptr inbounds nuw i8, ptr %.0819.i200, i64 4 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.01618.i201, i64 4
  %i.il = add i64 %.020.i199, -2                  ; 2 uses
  %i.im = load i32, ptr %i.ij, align 4, !tbaa !65
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !65
  store i32 0, ptr %i.ij, align 4, !tbaa !65
  %i.in = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ip = getelementptr inbounds nuw i8, ptr %.0819.i200, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %.01618.i201, i64 8
  %.not.i202.1 = icmp eq i64 %i.il, 0
  br i1 %.not.i202.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204, label %.lr.ph.i198, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204: ; preds = %.lr.ph.i198, %.lr.ph.i198.prol.loopexit
  %.not8.i.i206 = icmp eq ptr %3, %i.hx
  br i1 %.not8.i.i206, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i.i207.preheader

.lr.ph.i.i207.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204
  %i.ir = shl nsw i64 %1, 2
  %i.is = shl i64 %i.b, 1
  %i.it = shl i64 %4, 2
  %i.iu = add i64 %i.ir, %i.is
  %i.iv = add i64 %i.iu, -4
  %i.iw = add i64 %i.g, %i.a
  %i.ix = add i64 %i.iw, %i.it
  %i.iy = sub i64 %i.iv, %i.ix                    ; 2 uses
  %i.iz = lshr i64 %i.iy, 2
  %i.ja = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %min.iters.check328 = icmp ult i64 %i.iy, 188
  br i1 %min.iters.check328, label %.lr.ph.i.i207.preheader438, label %vector.memcheck329

vector.memcheck329:                               ; preds = %.lr.ph.i.i207.preheader
  %i.jb = shl nsw i64 %1, 2                       ; 3 uses
  %i.jc = shl i64 %i.b, 1
  %i.jd = shl i64 %4, 2                           ; 2 uses
  %i.je = add i64 %i.jb, %i.jc
  %i.jf = add i64 %i.je, -4
  %i.jg = add i64 %i.g, %i.a
  %i.jh = add i64 %i.jg, %i.jd
  %i.ji = sub i64 %i.jf, %i.jh
  %i.jj = and i64 %i.ji, -4                       ; 2 uses
  %i.jk = add i64 %i.jb, -4
  %i.jl = sub i64 %i.jk, %i.jj
  %i.jm = getelementptr i8, ptr %0, i64 %i.jl
  %i.jn = add i64 %i.jb, %i.b
  %i.jo = add i64 %i.jn, -4
  %i.jp = add i64 %i.jd, %i.a
  %i.jq = add i64 %i.jp, %i.jj
  %i.jr = sub i64 %i.jo, %i.jq
  %i.js = getelementptr i8, ptr %0, i64 %i.jr
  %bound0330 = icmp ult ptr %i.jm, %i.hx
  %bound1331 = icmp ult ptr %i.js, %i.c
  %found.conflict332 = and i1 %bound0330, %bound1331
  br i1 %found.conflict332, label %.lr.ph.i.i207.preheader438, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck329
  %n.vec334 = and i64 %i.ja, 9223372036854775800  ; 3 uses
  %i.jt = mul i64 %n.vec334, -4                   ; 2 uses
  %i.ju = getelementptr i8, ptr %i.c, i64 %i.jt   ; 2 uses
  %i.jv = getelementptr i8, ptr %i.hx, i64 %i.jt
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next341, %vector.body335 ] ; 2 uses
  %i.jw = mul i64 %index336, -4                   ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.c, i64 %i.jw ; 2 uses
  %next.gep338 = getelementptr i8, ptr %i.hx, i64 %i.jw ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %next.gep338, i64 -16 ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %next.gep338, i64 -32 ; 2 uses
  %wide.load339 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !65, !alias.scope !557
  %wide.load340 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !65, !alias.scope !557
  %i.jz = getelementptr inbounds i8, ptr %next.gep337, i64 -16
  %i.ka = getelementptr inbounds i8, ptr %next.gep337, i64 -32
  store <4 x i32> %wide.load339, ptr %i.jz, align 4, !tbaa !65, !alias.scope !558, !noalias !557
  store <4 x i32> %wide.load340, ptr %i.ka, align 4, !tbaa !65, !alias.scope !558, !noalias !557
  store <4 x i32> zeroinitializer, ptr %i.jx, align 4, !tbaa !65, !alias.scope !557
  store <4 x i32> zeroinitializer, ptr %i.jy, align 4, !tbaa !65, !alias.scope !557
  %index.next341 = add nuw i64 %index336, 8       ; 2 uses
  %i.kb = icmp eq i64 %index.next341, %n.vec334
  br i1 %i.kb, label %middle.block342, label %vector.body335, !llvm.loop !543

middle.block342:                                  ; preds = %vector.body335
  %cmp.n343 = icmp eq i64 %i.ja, %n.vec334
  br i1 %cmp.n343, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i.i207.preheader438

.lr.ph.i.i207.preheader438:                       ; preds = %vector.memcheck329, %.lr.ph.i.i207.preheader, %middle.block342
  %.010.i.i208.ph = phi ptr [ %i.c, %vector.memcheck329 ], [ %i.c, %.lr.ph.i.i207.preheader ], [ %i.ju, %middle.block342 ]
  %.079.i.i209.ph = phi ptr [ %i.hx, %vector.memcheck329 ], [ %i.hx, %.lr.ph.i.i207.preheader ], [ %i.jv, %middle.block342 ]
  br label %.lr.ph.i.i207

.lr.ph.i.i207:                                    ; preds = %.lr.ph.i.i207.preheader438, %.lr.ph.i.i207
  %.010.i.i208 = phi ptr [ %i.kd, %.lr.ph.i.i207 ], [ %.010.i.i208.ph, %.lr.ph.i.i207.preheader438 ]
  %.079.i.i209 = phi ptr [ %i.kc, %.lr.ph.i.i207 ], [ %.079.i.i209.ph, %.lr.ph.i.i207.preheader438 ]
  %i.kc = getelementptr inbounds i8, ptr %.079.i.i209, i64 -4 ; 4 uses
  %i.kd = getelementptr inbounds i8, ptr %.010.i.i208, i64 -4 ; 3 uses
  %i.ke = load i32, ptr %i.kc, align 4, !tbaa !65
  store i32 %i.ke, ptr %i.kd, align 4, !tbaa !65
  store i32 0, ptr %i.kc, align 4, !tbaa !65
  %.not.i.i210 = icmp eq ptr %3, %i.kc
  br i1 %.not.i.i210, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i.i207, !llvm.loop !544

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211: ; preds = %.lr.ph.i.i207, %middle.block342, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204
  %i.kf = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204 ], [ %i.ju, %middle.block342 ], [ %i.kd, %.lr.ph.i.i207 ] ; 3 uses
  %i.kg = ptrtoaddr ptr %i.kf to i64
  %i.kh = sub i64 0, %4
  %i.ki = getelementptr [4 x i8], ptr %i.kf, i64 %i.kh ; 11 uses
  %.not8.i.i212 = icmp eq i64 %4, 0
  br i1 %.not8.i.i212, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader

.lr.ph.i.i213.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211
  %min.iters.check348 = icmp ult i64 %4, 16
  br i1 %min.iters.check348, label %.lr.ph.i.i213.preheader437, label %vector.memcheck346

vector.memcheck346:                               ; preds = %.lr.ph.i.i213.preheader
  %i.kj = shl i64 %4, 2
  %i.kk = add i64 %i.kj, %7
  %i.kl = sub i64 %i.kk, %i.kg
  %diff.check = icmp ugt i64 %i.kl, -32
  br i1 %diff.check, label %.lr.ph.i.i213.preheader437, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck346
  %n.vec350 = and i64 %4, -8                      ; 3 uses
  %i.km = shl i64 %n.vec350, 2                    ; 2 uses
  %i.kn = getelementptr i8, ptr %i.ki, i64 %i.km
  %i.ko = and i64 %4, 7
  %i.kp = getelementptr i8, ptr %5, i64 %i.km
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next357, %vector.body351 ] ; 2 uses
  %i.kq = shl i64 %index352, 2                    ; 2 uses
  %next.gep353 = getelementptr i8, ptr %i.ki, i64 %i.kq ; 2 uses
  %next.gep354 = getelementptr i8, ptr %5, i64 %i.kq ; 2 uses
  %i.kr = getelementptr i8, ptr %next.gep354, i64 16
  %wide.load355 = load <4 x i32>, ptr %next.gep354, align 4, !tbaa !65
  %wide.load356 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !65
  %i.ks = getelementptr i8, ptr %next.gep353, i64 16
  store <4 x i32> %wide.load355, ptr %next.gep353, align 4, !tbaa !65
  store <4 x i32> %wide.load356, ptr %i.ks, align 4, !tbaa !65
  %index.next357 = add nuw i64 %index352, 8       ; 2 uses
  %i.kt = icmp eq i64 %index.next357, %n.vec350
  br i1 %i.kt, label %middle.block358, label %vector.body351, !llvm.loop !545

middle.block358:                                  ; preds = %vector.body351
  %cmp.n359 = icmp eq i64 %4, %n.vec350
  br i1 %cmp.n359, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader437

.lr.ph.i.i213.preheader437:                       ; preds = %vector.memcheck346, %.lr.ph.i.i213.preheader, %middle.block358
  %.011.i.i214.ph = phi ptr [ %i.ki, %vector.memcheck346 ], [ %i.ki, %.lr.ph.i.i213.preheader ], [ %i.kn, %middle.block358 ] ; 2 uses
  %.0610.i.i215.ph = phi i64 [ %4, %vector.memcheck346 ], [ %4, %.lr.ph.i.i213.preheader ], [ %i.ko, %middle.block358 ] ; 4 uses
  %.079.i.i216.ph = phi ptr [ %5, %vector.memcheck346 ], [ %5, %.lr.ph.i.i213.preheader ], [ %i.kp, %middle.block358 ] ; 2 uses
  %i.ku = add i64 %.0610.i.i215.ph, -1
  %xtraiter452 = and i64 %.0610.i.i215.ph, 7      ; 2 uses
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  br i1 %lcmp.mod453.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol

.lr.ph.i.i213.prol:                               ; preds = %.lr.ph.i.i213.preheader437, %.lr.ph.i.i213.prol
  %.011.i.i214.prol = phi ptr [ %i.ky, %.lr.ph.i.i213.prol ], [ %.011.i.i214.ph, %.lr.ph.i.i213.preheader437 ] ; 2 uses
  %.0610.i.i215.prol = phi i64 [ %i.kv, %.lr.ph.i.i213.prol ], [ %.0610.i.i215.ph, %.lr.ph.i.i213.preheader437 ]
  %.079.i.i216.prol = phi ptr [ %i.kx, %.lr.ph.i.i213.prol ], [ %.079.i.i216.ph, %.lr.ph.i.i213.preheader437 ] ; 2 uses
  %prol.iter454 = phi i64 [ %prol.iter454.next, %.lr.ph.i.i213.prol ], [ 0, %.lr.ph.i.i213.preheader437 ]
  %i.kv = add i64 %.0610.i.i215.prol, -1          ; 2 uses
  %i.kw = load i32, ptr %.079.i.i216.prol, align 4, !tbaa !65
  store i32 %i.kw, ptr %.011.i.i214.prol, align 4, !tbaa !65
  %i.kx = getelementptr inbounds nuw i8, ptr %.079.i.i216.prol, i64 4 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.011.i.i214.prol, i64 4 ; 2 uses
  %prol.iter454.next = add i64 %prol.iter454, 1   ; 2 uses
  %prol.iter454.cmp.not = icmp eq i64 %prol.iter454.next, %xtraiter452
  br i1 %prol.iter454.cmp.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol, !llvm.loop !546

.lr.ph.i.i213.prol.loopexit:                      ; preds = %.lr.ph.i.i213.prol, %.lr.ph.i.i213.preheader437
  %.011.i.i214.unr = phi ptr [ %.011.i.i214.ph, %.lr.ph.i.i213.preheader437 ], [ %i.ky, %.lr.ph.i.i213.prol ]
  %.0610.i.i215.unr = phi i64 [ %.0610.i.i215.ph, %.lr.ph.i.i213.preheader437 ], [ %i.kv, %.lr.ph.i.i213.prol ]
  %.079.i.i216.unr = phi ptr [ %.079.i.i216.ph, %.lr.ph.i.i213.preheader437 ], [ %i.kx, %.lr.ph.i.i213.prol ]
  %i.kz = icmp ult i64 %i.ku, 7
  br i1 %i.kz, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213
  %.011.i.i214 = phi ptr [ %i.ly, %.lr.ph.i.i213 ], [ %.011.i.i214.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %.0610.i.i215 = phi i64 [ %i.lv, %.lr.ph.i.i213 ], [ %.0610.i.i215.unr, %.lr.ph.i.i213.prol.loopexit ]
  %.079.i.i216 = phi ptr [ %i.lx, %.lr.ph.i.i213 ], [ %.079.i.i216.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %i.la = load i32, ptr %.079.i.i216, align 4, !tbaa !65
  store i32 %i.la, ptr %.011.i.i214, align 4, !tbaa !65
  %i.lb = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 4
  %i.lc = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 4
  %i.ld = load i32, ptr %i.lb, align 4, !tbaa !65
  store i32 %i.ld, ptr %i.lc, align 4, !tbaa !65
  %i.le = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 8
  %i.lg = load i32, ptr %i.le, align 4, !tbaa !65
  store i32 %i.lg, ptr %i.lf, align 4, !tbaa !65
  %i.lh = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 12
  %i.li = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 12
  %i.lj = load i32, ptr %i.lh, align 4, !tbaa !65
  store i32 %i.lj, ptr %i.li, align 4, !tbaa !65
  %i.lk = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 16
  %i.lm = load i32, ptr %i.lk, align 4, !tbaa !65
  store i32 %i.lm, ptr %i.ll, align 4, !tbaa !65
  %i.ln = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 20
  %i.lo = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 20
  %i.lp = load i32, ptr %i.ln, align 4, !tbaa !65
  store i32 %i.lp, ptr %i.lo, align 4, !tbaa !65
  %i.lq = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 24
  %i.lr = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 24
  %i.ls = load i32, ptr %i.lq, align 4, !tbaa !65
  store i32 %i.ls, ptr %i.lr, align 4, !tbaa !65
  %i.lt = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 28
  %i.lu = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 28
  %i.lv = add i64 %.0610.i.i215, -8               ; 2 uses
  %i.lw = load i32, ptr %i.lt, align 4, !tbaa !65
  store i32 %i.lw, ptr %i.lu, align 4, !tbaa !65
  %i.lx = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 32
  %i.ly = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 32
  %.not.i.i217.7 = icmp eq i64 %i.lv, 0
  br i1 %.not.i.i217.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213, !llvm.loop !547

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219: ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213, %middle.block358, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211
  %.not.i220 = icmp eq ptr %3, %i.ki
  br i1 %.not.i220, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219
  %.not8.i.i221 = icmp eq ptr %0, %3
  br i1 %.not8.i.i221, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222.preheader

.lr.ph.i.i222.preheader:                          ; preds = %bb.i
  %i.lz = add i64 %i.g, -4
  %i.ma = sub i64 %i.lz, %i.b                     ; 3 uses
  %i.mb = lshr i64 %i.ma, 2
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %min.iters.check369 = icmp ult i64 %i.ma, 108
  br i1 %min.iters.check369, label %.lr.ph.i.i222.preheader435, label %vector.memcheck370

vector.memcheck370:                               ; preds = %.lr.ph.i.i222.preheader
  %i.md = shl i64 %4, 2
  %i.me = and i64 %i.ma, -4                       ; 2 uses
  %i.mf = add i64 %i.md, %i.me
  %i.mg = sub nuw nsw i64 -4, %i.mf
  %i.mh = getelementptr i8, ptr %i.kf, i64 %i.mg
  %i.mi = sub nuw nsw i64 -4, %i.me
  %i.mj = getelementptr i8, ptr %3, i64 %i.mi
  %bound0371 = icmp ult ptr %i.mh, %3
  %bound1372 = icmp ult ptr %i.mj, %i.ki
  %found.conflict373 = and i1 %bound0371, %bound1372
  br i1 %found.conflict373, label %.lr.ph.i.i222.preheader435, label %vector.ph374

vector.ph374:                                     ; preds = %vector.memcheck370
  %n.vec375 = and i64 %i.mc, 9223372036854775800  ; 3 uses
  %i.mk = mul i64 %n.vec375, -4                   ; 2 uses
  %i.ml = getelementptr i8, ptr %i.ki, i64 %i.mk  ; 2 uses
  %i.mm = getelementptr i8, ptr %3, i64 %i.mk
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph374
  %index377 = phi i64 [ 0, %vector.ph374 ], [ %index.next382, %vector.body376 ] ; 2 uses
  %i.mn = mul i64 %index377, -4                   ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.ki, i64 %i.mn ; 2 uses
  %next.gep379 = getelementptr i8, ptr %3, i64 %i.mn ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %next.gep379, i64 -16 ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %next.gep379, i64 -32 ; 2 uses
  %wide.load380 = load <4 x i32>, ptr %i.mo, align 4, !tbaa !65, !alias.scope !559
  %wide.load381 = load <4 x i32>, ptr %i.mp, align 4, !tbaa !65, !alias.scope !559
  %i.mq = getelementptr inbounds i8, ptr %next.gep378, i64 -16
  %i.mr = getelementptr inbounds i8, ptr %next.gep378, i64 -32
  store <4 x i32> %wide.load380, ptr %i.mq, align 4, !tbaa !65, !alias.scope !560, !noalias !559
  store <4 x i32> %wide.load381, ptr %i.mr, align 4, !tbaa !65, !alias.scope !560, !noalias !559
  store <4 x i32> zeroinitializer, ptr %i.mo, align 4, !tbaa !65, !alias.scope !559
  store <4 x i32> zeroinitializer, ptr %i.mp, align 4, !tbaa !65, !alias.scope !559
  %index.next382 = add nuw i64 %index377, 8       ; 2 uses
  %i.ms = icmp eq i64 %index.next382, %n.vec375
  br i1 %i.ms, label %middle.block383, label %vector.body376, !llvm.loop !551

middle.block383:                                  ; preds = %vector.body376
  %cmp.n384 = icmp eq i64 %i.mc, %n.vec375
  br i1 %cmp.n384, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222.preheader435

.lr.ph.i.i222.preheader435:                       ; preds = %vector.memcheck370, %.lr.ph.i.i222.preheader, %middle.block383
  %.010.i.i223.ph = phi ptr [ %i.ki, %vector.memcheck370 ], [ %i.ki, %.lr.ph.i.i222.preheader ], [ %i.ml, %middle.block383 ]
  %.079.i.i224.ph = phi ptr [ %3, %vector.memcheck370 ], [ %3, %.lr.ph.i.i222.preheader ], [ %i.mm, %middle.block383 ]
  br label %.lr.ph.i.i222

.lr.ph.i.i222:                                    ; preds = %.lr.ph.i.i222.preheader435, %.lr.ph.i.i222
  %.010.i.i223 = phi ptr [ %i.mu, %.lr.ph.i.i222 ], [ %.010.i.i223.ph, %.lr.ph.i.i222.preheader435 ]
  %.079.i.i224 = phi ptr [ %i.mt, %.lr.ph.i.i222 ], [ %.079.i.i224.ph, %.lr.ph.i.i222.preheader435 ]
  %i.mt = getelementptr inbounds i8, ptr %.079.i.i224, i64 -4 ; 4 uses
  %i.mu = getelementptr inbounds i8, ptr %.010.i.i223, i64 -4 ; 3 uses
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !65
  store i32 %i.mv, ptr %i.mu, align 4, !tbaa !65
  store i32 0, ptr %i.mt, align 4, !tbaa !65
  %.not.i.i225 = icmp eq ptr %0, %i.mt
  br i1 %.not.i.i225, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222, !llvm.loop !552

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226: ; preds = %.lr.ph.i.i222, %middle.block383, %bb.i
  %i.mw = phi ptr [ %i.ki, %bb.i ], [ %i.ml, %middle.block383 ], [ %i.mu, %.lr.ph.i.i222 ] ; 2 uses
  %.not3.i227 = icmp eq ptr %0, %i.mw
  br i1 %.not3.i227, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, %.lr.ph.i228
  %storemerge4.i229 = phi ptr [ %i.mz, %.lr.ph.i228 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i229, align 4, !tbaa !65
  %i.mx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.my = add i32 %i.mx, -1
  store i32 %i.my, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.mz = getelementptr inbounds nuw i8, ptr %storemerge4.i229, i64 4 ; 2 uses
  %.not.i230 = icmp eq ptr %i.mz, %i.mw
  br i1 %.not.i230, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i228, !llvm.loop !16

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i142, %.lr.ph.i228, %.lr.ph.i185, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { allocsize(0) }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!27}

!0 = distinct !{!0, !68}
!1 = distinct !{!1, !68}
!2 = distinct !{!2, !68}
!3 = distinct !{!3, !68}
!4 = distinct !{!4, !68}
!5 = distinct !{!5, !68}
!6 = distinct !{!6, !68}
!7 = distinct !{!7, !68}
!8 = distinct !{!8, !68}
!9 = distinct !{!9, !68}
!10 = distinct !{!10, !68}
!11 = distinct !{!11, !68}
!12 = distinct !{!12, !68}
!13 = distinct !{!13, !68}
!14 = distinct !{!14, !68}
!15 = distinct !{!15, !68}
!16 = distinct !{!16, !68}
!17 = distinct !{!17, !68}
!18 = distinct !{!18, !68}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!23 = !{!"Simple C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!"__libc_errno", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"any pointer", !24, i64 0}
!29 = !{!"p1 _ZTS5empty", !28, i64 0}
!30 = !{!"long", !24, i64 0}
!31 = !{!"_ZTSN5boost9container8devectorI5emptyvvE4implE", !29, i64 0, !30, i64 8, !30, i64 16, !30, i64 24}
!32 = !{!"_ZTSN5boost9container8devectorI5emptyvvEE", !31, i64 0}
!33 = !{!32, !29, i64 0}
!34 = !{!32, !30, i64 8}
!35 = !{!32, !30, i64 16}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!32, !30, i64 24}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!31, !30, i64 16}
!40 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!41 = !{!31, !30, i64 24}
!42 = !{!30, !30, i64 0}
!43 = !{!"_ZTSN5boost7movelib16reverse_iteratorIP5emptyEE", !29, i64 0}
!44 = !{!43, !29, i64 0}
!45 = !{!"_ZTSN5boost7movelib16reverse_iteratorIPK5emptyEE", !29, i64 0}
!46 = !{!45, !29, i64 0}
!47 = !{!31, !30, i64 8}
!48 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!49 = !{!"_ZTSSt9exception"}
!50 = !{!"p1 omnipotent char", !28, i64 0}
!51 = !{!"_ZTSN5boost9container9exceptionE", !49, i64 0, !50, i64 8}
!52 = !{!51, !50, i64 8}
!53 = !{!"vtable pointer", !23, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"branch_weights", i32 2002, i32 2000}
!56 = !{!29, !29, i64 0}
!57 = !{!31, !29, i64 0}
!58 = !{!"p1 _ZTSN5boost9container4test24movable_and_copyable_intE", !28, i64 0}
!59 = !{!"short", !24, i64 0}
!60 = !{!"_ZTSN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE4implE", !58, i64 0, !59, i64 8, !59, i64 10, !59, i64 12}
!61 = !{!"_ZTSN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEEE", !60, i64 0}
!62 = !{!61, !58, i64 0}
!63 = !{!61, !59, i64 8}
!64 = !{!"_ZTSN5boost9container4test24movable_and_copyable_intE", !25, i64 0}
!65 = !{!64, !25, i64 0}
!66 = !{!25, !25, i64 0}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!61, !59, i64 10}
!70 = !{!61, !59, i64 12}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!60, !59, i64 10}
end_hunk_5
