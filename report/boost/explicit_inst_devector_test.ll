Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_devector_test?download=true
inline.NumInlined: 2703
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE10push_frontERKS3_:bb.a
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
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !69   ; 3 uses
  %i.n = zext i16 %i.m to i64                     ; 6 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 17 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i16, ptr %i.q, align 4, !tbaa !70
  %i.s = zext i16 %i.r to i64
  %i.t = sub nsw i64 %i.s, %i.n
  %.not64 = icmp ult i64 %i.t, %i.a
  br i1 %.not64, label %.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter233 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod234.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.014.i.prol = phi ptr [ %i.y, %.lr.ph.i.prol ], [ %i.o, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.2.013.i.prol = phi i64 [ %i.x, %.lr.ph.i.prol ], [ %3, %.lr.ph.i.preheader ]
  %prol.iter235 = phi i64 [ %prol.iter235.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i.prol) ]
  %i.u = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.u, ptr %.014.i.prol, align 4, !tbaa !65
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.x = add i64 %.sroa.2.013.i.prol, -1          ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.prol, i64 4 ; 2 uses
  %prol.iter235.next = add i64 %prol.iter235, 1   ; 2 uses
  %prol.iter235.cmp.not = icmp eq i64 %prol.iter235.next, %xtraiter233
  br i1 %prol.iter235.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !141

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

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.ap = trunc i64 %i.a to i16
  %i.aq = add i16 %i.m, %i.ap
  store i16 %i.aq, ptr %i.l, align 2, !tbaa !73
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !63 ; 3 uses
  %i.at = zext i16 %i.as to i64                   ; 7 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.at ; 16 uses
  %i.av = icmp eq ptr %1, %i.au
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not63 = icmp ugt i64 %i.a, %i.at
  br i1 %.not63, label %.thread, label %.lr.ph.i66.preheader

.lr.ph.i66.preheader:                             ; preds = %bb.f
  %i.aw = sub nsw i64 0, %i.a
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw ; 2 uses
  %xtraiter230 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i66.prol.loopexit, label %.lr.ph.i66.prol

.lr.ph.i66.prol:                                  ; preds = %.lr.ph.i66.preheader, %.lr.ph.i66.prol
  %.014.i67.prol = phi ptr [ %i.bc, %.lr.ph.i66.prol ], [ %i.ax, %.lr.ph.i66.preheader ] ; 3 uses
  %.sroa.2.013.i68.prol = phi i64 [ %i.bb, %.lr.ph.i66.prol ], [ %3, %.lr.ph.i66.preheader ]
  %prol.iter232 = phi i64 [ %prol.iter232.next, %.lr.ph.i66.prol ], [ 0, %.lr.ph.i66.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i67.prol) ]
  %i.ay = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ay, ptr %.014.i67.prol, align 4, !tbaa !65
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bb = add i64 %.sroa.2.013.i68.prol, -1       ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i67.prol, i64 4 ; 2 uses
  %prol.iter232.next = add i64 %prol.iter232, 1   ; 2 uses
  %prol.iter232.cmp.not = icmp eq i64 %prol.iter232.next, %xtraiter230
  br i1 %prol.iter232.cmp.not, label %.lr.ph.i66.prol.loopexit, label %.lr.ph.i66.prol, !llvm.loop !142

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

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71: ; preds = %.lr.ph.i66, %.lr.ph.i66.prol.loopexit
  %i.bt = trunc nuw i64 %i.a to i16
  %i.bu = sub i16 %i.as, %i.bt                    ; 2 uses
  store i16 %i.bu, ptr %i.ar, align 8, !tbaa !81
  %i.bv = zext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bv
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.bx = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.by = ptrtoint ptr %i.au to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2                 ; 9 uses
  %i.cb = sub nsw i64 %i.n, %i.at
  %i.cc = lshr i64 %i.cb, 1
  %.not105 = icmp ult i64 %i.ca, %i.cc
  br i1 %.not105, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !70
  %i.cf = zext i16 %i.ce to i64
  %i.cg = sub nsw i64 %i.cf, %i.n
  %.not62 = icmp ult i64 %i.cg, %i.a
  br i1 %.not62, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = ptrtoint ptr %i.o to i64
  %i.ci = sub i64 %i.ch, %i.bx
  %i.cj = ashr exact i64 %i.ci, 2                 ; 8 uses
  %.not.i72 = icmp ult i64 %i.cj, %i.a
  br i1 %.not.i72, label %.lr.ph.i48.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = sub i64 0, %i.a
  %i.cl = getelementptr [4 x i8], ptr %i.o, i64 %i.ck ; 10 uses
  %.neg = add i64 %5, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %bb.j
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

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %i.cm, %.lr.ph.i.i.prol ]
  %.0819.i.i.unr = phi ptr [ %i.cl, %bb.j ], [ %i.cq, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.j ], [ %i.cr, %.lr.ph.i.i.prol ]
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
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader219, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.dn = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.do = add nsw i64 %i.dn, -4
  %i.dp = shl i64 %5, 2                           ; 2 uses
  %i.dq = add i64 %i.dp, %i.c
  %i.dr = add i64 %i.dq, %i.dn
  %i.ds = add i64 %i.dr, -4
  %i.dt = shl i64 %3, 2                           ; 2 uses
  %i.du = add i64 %i.dt, %i.bx
  %i.dv = sub i64 %i.ds, %i.du
  %i.dw = and i64 %i.dv, -4                       ; 2 uses
  %i.dx = sub i64 %i.do, %i.dw
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.dx
  %i.dy = add i64 %i.dp, %i.dn
  %i.dz = add i64 %i.dy, -4
  %i.ea = add i64 %i.dt, %i.dw
  %i.eb = sub i64 %i.dz, %i.ea
  %scevgep135 = getelementptr i8, ptr %i.b, i64 %i.eb
  %bound0 = icmp ult ptr %scevgep, %i.cl
  %bound1 = icmp ult ptr %scevgep135, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader219, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 9223372036854775800     ; 3 uses
  %i.ec = mul i64 %n.vec, -4                      ; 2 uses
  %i.ed = getelementptr i8, ptr %i.o, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.cl, i64 %i.ec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ef = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ef ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.cl, i64 %i.ef ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %next.gep136, i64 -16 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %next.gep136, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.eg, align 4, !tbaa !65, !alias.scope !163
  %wide.load137 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !65, !alias.scope !163
  %i.ei = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ej = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ei, align 4, !tbaa !65, !alias.scope !164, !noalias !163
  store <4 x i32> %wide.load137, ptr %i.ej, align 4, !tbaa !65, !alias.scope !164, !noalias !163
  store <4 x i32> zeroinitializer, ptr %i.eg, align 4, !tbaa !65, !alias.scope !163
  store <4 x i32> zeroinitializer, ptr %i.eh, align 4, !tbaa !65, !alias.scope !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i40.i.preheader219

.lr.ph.i40.i.preheader219:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.ed, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i40.i.preheader ], [ %i.ee, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader219, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.em, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader219 ]
  %.079.i.i = phi ptr [ %i.el, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader219 ]
  %i.el = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.em = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.en = load i32, ptr %i.el, align 4, !tbaa !65
  store i32 %i.en, ptr %i.em, align 4, !tbaa !65
  store i32 0, ptr %i.el, align 4, !tbaa !65
  %.not.i41.i = icmp eq ptr %1, %i.el
  br i1 %.not.i41.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i40.i, !llvm.loop !147

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %.pre.i.i.i = load i32, ptr %2, align 4, !tbaa !65 ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph.preheader.i.i.i
  %n.vec142 = and i64 %i.a, -8                    ; 3 uses
  %i.eo = and i64 %i.a, 7
  %i.ep = shl i64 %n.vec142, 2
  %i.eq = getelementptr i8, ptr %1, i64 %i.ep
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next146, %vector.body143 ] ; 2 uses
  %i.er = shl i64 %index144, 2
  %next.gep145 = getelementptr i8, ptr %1, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep145, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep145, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat, ptr %i.es, align 4, !tbaa !65
  %index.next146 = add nuw i64 %index144, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next146, %n.vec142
  br i1 %i.et, label %middle.block147, label %vector.body143, !llvm.loop !148

middle.block147:                                  ; preds = %vector.body143
  %cmp.n148 = icmp eq i64 %i.a, %n.vec142
  br i1 %cmp.n148, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i.preheader

end_hunk_0
