Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_devector_test?download=true
inline.NumInlined: 2703
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEEC2EOS8_:bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEEC2EOS8_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat($_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEEC5EOS8_RKS5_) align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !47
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.f = load i16, ptr %i.e, align 2, !tbaa !59
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i16, ptr %i.h, align 4, !tbaa !61
  %i.j = zext i16 %i.i to i64
  tail call void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE4implC1ENS0_23review_implementation_tERKS5_PS3_mmm(ptr noundef nonnull align 8 dereferenceable(14) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %i.a, i64 noundef %i.d, i64 noundef %i.g, i64 noundef %i.j)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %1, i8 0, i64 14, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEEC2ERKSt16initializer_listIS3_ERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat($_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEEC5ERKSt16initializer_listIS3_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62
  tail call void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE4implC1ENS0_23reserve_uninitialized_tERKS5_m(ptr noundef nonnull align 8 dereferenceable(14) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.b)
  %i.c = load ptr, ptr %1, align 8, !tbaa !64     ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %.idx = shl i64 %i.d, 2                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not16.i.i = icmp eq i64 %i.d, 0
  br i1 %.not16.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE20construct_from_rangeIPKS3_EEvT_SC_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.g = add i64 %.idx, -4                        ; 2 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = add nuw nsw i64 %i.h, 1
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i.prol
  %.018.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.prol ], [ %i.c, %.lr.ph.i.preheader.i ] ; 2 uses
  %.01517.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.prol ], [ %i.f, %.lr.ph.i.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.preheader.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.prol) ]
  %i.j = load i32, ptr %.018.i.i.prol, align 4, !tbaa !48
  store i32 %i.j, ptr %.01517.i.i.prol, align 4, !tbaa !48
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i.i.prol, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !65

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.preheader.i
  %.018.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader.i ], [ %i.m, %.lr.ph.i.i.prol ]
  %.01517.i.i.unr = phi ptr [ %i.f, %.lr.ph.i.preheader.i ], [ %i.n, %.lr.ph.i.i.prol ]
  %i.o = icmp ult i64 %i.g, 12
  br i1 %i.o, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE20construct_from_rangeIPKS3_EEvT_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.01517.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.01517.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.p = load i32, ptr %.018.i.i, align 4, !tbaa !48
  store i32 %i.p, ptr %.01517.i.i, align 4, !tbaa !48
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %i.u = load i32, ptr %i.s, align 4, !tbaa !48
  store i32 %i.u, ptr %i.t, align 4, !tbaa !48
  %i.v = add i32 %i.q, 2
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8
  %i.y = load i32, ptr %i.w, align 4, !tbaa !48
  store i32 %i.y, ptr %i.x, align 4, !tbaa !48
  %i.z = add i32 %i.q, 3
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 12
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !48
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !48
  %i.ad = add i32 %i.q, 4
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 16
  %.not.i.i.3 = icmp eq ptr %i.ae, %i.e
  br i1 %.not.i.i.3, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE20construct_from_rangeIPKS3_EEvT_SC_.exit, label %.lr.ph.i.i, !llvm.loop !60

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE20construct_from_rangeIPKS3_EEvT_SC_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat($_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEED5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !59   ; 2 uses
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
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !48
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, label %.lr.ph.i, !llvm.loop !66

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit: ; preds = %.lr.ph.i, %bb.a
  %.not.i1 = icmp eq ptr %i.a, null
  br i1 %.not.i1, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17deallocate_bufferEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i16, ptr %i.m, align 4, !tbaa !61
  %i.o = zext i16 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.p) #19
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17deallocate_bufferEv.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17deallocate_bufferEv.exit: ; preds = %bb.b, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not5 = icmp eq ptr %1, %2
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  store i32 -2147483648, ptr %.06, align 4, !tbaa !48
  %i.a = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.b = add i32 %i.a, -1
  store i32 %i.b, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %.06, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.c, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE17deallocate_bufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i16, ptr %i.b, align 4, !tbaa !61
  %i.d = zext i16 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.e) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !59   ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 4 uses
  %i.h = sub nsw i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.j = load i16, ptr %i.i, align 4, !tbaa !61   ; 2 uses
  %i.k = zext i16 %i.j to i64                     ; 2 uses
  %.not = icmp ugt i64 %i.h, %i.k
  %i.l = load ptr, ptr %1, align 8, !tbaa !42     ; 5 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.d ; 5 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !42     ; 9 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %.not72.i.i = icmp eq i16 %i.f, %i.c
  br i1 %.not72.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i16, ptr %i.r, align 8, !tbaa !47
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.t ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.02074.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.z, %bb.e ] ; 3 uses
  %.073.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.v, %bb.e ] ; 4 uses
  %.not23.i.i = icmp eq ptr %.073.i.i, %i.u
  br i1 %.not23.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.073.i.i, i64 4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.073.i.i) ]
  %i.w = load i32, ptr %.02074.i.i, align 4, !tbaa !48
  store i32 %i.w, ptr %.073.i.i, align 4, !tbaa !48
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %.02074.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.o
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !67

.critedge.i.i:                                    ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i = phi ptr [ %i.p, %bb.c ], [ %i.u, %bb.d ] ; 6 uses
  %.020.lcssa.i.i = phi ptr [ %i.n, %bb.c ], [ %.02074.i.i, %bb.d ] ; 6 uses
  %.0.lcssa.i.i41 = ptrtoaddr ptr %.0.lcssa.i.i to i64 ; 3 uses
  %.020.lcssa.i.i42 = ptrtoaddr ptr %.020.lcssa.i.i to i64 ; 3 uses
  %.not2479.i.i = icmp eq ptr %.020.lcssa.i.i, %i.o
  br i1 %.not2479.i.i, label %._crit_edge.i.i, label %.lr.ph82.i.i

.lr.ph82.i.i:                                     ; preds = %.critedge.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !59 ; 2 uses
  %i.ac = zext i16 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ac ; 3 uses
  %i.ae = shl nuw nsw i64 %i.d, 2
  %i.af = add i64 %i.ae, %i.m
  %i.ag = add i64 %i.af, -4
  %i.ah = sub i64 %i.ag, %.020.lcssa.i.i42
  %.fr = freeze i64 %i.ah
  %i.ai = lshr i64 %.fr, 2
  %i.aj = shl nuw nsw i64 %i.ac, 2
  %i.ak = add i64 %i.aj, %i.q
  %i.al = sub i64 %i.ak, %.0.lcssa.i.i41
  %i.am = lshr i64 %i.al, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.am) ; 2 uses
  %i.an = add nuw nsw i64 %umin, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph82.i.i
  %i.ao = sub i64 %i.q, %.0.lcssa.i.i41
  %i.ap = sub i64 %i.m, %.020.lcssa.i.i42
  %i.aq = or i64 %i.ao, %i.ap
  %i.ar = and i64 %i.aq, 3
  %.not70 = icmp ne i64 %i.ar, 0
  %i.as = sub i64 %.020.lcssa.i.i42, %.0.lcssa.i.i41
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %.not70, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.at = and i64 %i.an, 7                        ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = select i1 %i.au, i64 8, i64 %i.at
  %n.vec = sub nsw i64 %i.an, %i.av               ; 2 uses
  %i.aw = shl i64 %n.vec, 2                       ; 2 uses
  %i.ax = getelementptr i8, ptr %.020.lcssa.i.i, i64 %i.aw
  %i.ay = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.020.lcssa.i.i, i64 %i.az ; 2 uses
  %next.gep44 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !48
  %wide.load45 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !48
  %i.bb = getelementptr i8, ptr %next.gep44, i64 16
  store <4 x i32> %wide.load, ptr %next.gep44, align 4, !tbaa !48
  store <4 x i32> %wide.load45, ptr %i.bb, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %scalar.ph.preheader, label %vector.body, !llvm.loop !68

scalar.ph.preheader:                              ; preds = %vector.body, %vector.scevcheck, %.lr.ph82.i.i
  %.12181.i.i.ph = phi ptr [ %.020.lcssa.i.i, %vector.scevcheck ], [ %.020.lcssa.i.i, %.lr.ph82.i.i ], [ %i.ax, %vector.body ]
  %.180.i.i.ph = phi ptr [ %.0.lcssa.i.i, %vector.scevcheck ], [ %.0.lcssa.i.i, %.lr.ph82.i.i ], [ %i.ay, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.f
  %.12181.i.i = phi ptr [ %i.bd, %bb.f ], [ %.12181.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %.180.i.i = phi ptr [ %i.be, %bb.f ], [ %.180.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.not25.i.i = icmp eq ptr %.180.i.i, %i.ad
  br i1 %.not25.i.i, label %.critedge2.i.i, label %bb.f

bb.f:                                             ; preds = %scalar.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.12181.i.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.180.i.i, i64 4 ; 2 uses
  %i.bf = load i32, ptr %.12181.i.i, align 4, !tbaa !48
  store i32 %i.bf, ptr %.180.i.i, align 4, !tbaa !48
  %.not24.i.i = icmp eq ptr %i.bd, %i.o
  br i1 %.not24.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !71

.critedge2.i.i:                                   ; preds = %scalar.ph
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.k
  %i.bh = icmp ne ptr %.12181.i.i, %i.o
  %i.bi = icmp ne i16 %i.ab, %i.j
  %i.bj = and i1 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph90.i.i, label %._crit_edge.i.i

.lr.ph90.i.i:                                     ; preds = %.critedge2.i.i, %.lr.ph90.i.i
  %.289.i.i = phi ptr [ %i.bo, %.lr.ph90.i.i ], [ %.12181.i.i, %.critedge2.i.i ] ; 2 uses
  %.27088.i.i = phi ptr [ %i.bk, %.lr.ph90.i.i ], [ %i.ad, %.critedge2.i.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.27088.i.i, i64 4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.27088.i.i) ]
  %i.bl = load i32, ptr %.289.i.i, align 4, !tbaa !48
  store i32 %i.bl, ptr %.27088.i.i, align 4, !tbaa !48
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %.289.i.i, i64 4 ; 2 uses
  %i.bp = icmp ne ptr %i.bo, %i.o
  %i.bq = icmp ne ptr %i.bk, %i.bg
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %.lr.ph90.i.i, label %._crit_edge.i.i, !llvm.loop !72

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.f, %.lr.ph90.i.i, %.critedge.i.i, %.critedge2.i.i
  %.270.lcssa.i.i = phi ptr [ %i.ad, %.critedge2.i.i ], [ %i.bk, %.lr.ph90.i.i ], [ %i.be, %bb.f ], [ %.0.lcssa.i.i, %.critedge.i.i ], [ %i.v, %bb.e ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !47
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bu ; 2 uses
  %i.bw = icmp ugt ptr %i.bv, %.270.lcssa.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !59
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bz ; 2 uses
  %.sroa.speculated52.i.i = select i1 %i.bw, ptr %i.bv, ptr %.270.lcssa.i.i ; 2 uses
  %.not71.i.i = icmp ult ptr %.sroa.speculated52.i.i, %i.ca
  br i1 %.not71.i.i, label %.lr.ph.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16overwrite_bufferIPKS3_EEvT_SC_.exit

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %.sroa.speculated52.i.i, %._crit_edge.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i, align 4, !tbaa !48
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cd, %i.ca
  br i1 %.not.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16overwrite_bufferIPKS3_EEvT_SC_.exit, label %.lr.ph.i.i.i, !llvm.loop !66

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16overwrite_bufferIPKS3_EEvT_SC_.exit: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i
  store i16 0, ptr %i.bs, align 8, !tbaa !47
  %i.ce = ptrtoint ptr %.270.lcssa.i.i to i64
  %i.cf = ptrtoint ptr %i.p to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = lshr exact i64 %i.cg, 2
  %i.ci = trunc i64 %i.ch to i16
  store i16 %i.ci, ptr %i.bx, align 2, !tbaa !73
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %.idx12 = shl nuw nsw i64 %i.g, 2               ; 3 uses
  %i.cj = getelementptr i8, ptr %i.l, i64 %.idx12 ; 6 uses
  %.idx = shl nuw nsw i64 %i.d, 2                 ; 4 uses
  %i.ck = getelementptr i8, ptr %i.l, i64 %.idx   ; 3 uses
  %gepdiff = sub nsw i64 %.idx, %.idx12           ; 3 uses
  %i.cl = ashr exact i64 %gepdiff, 2              ; 2 uses
  %.not.i = icmp samesign eq i64 %.idx, %.idx12
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.g
  %i.cm = icmp ugt i64 %i.cl, 65535
  br i1 %i.cm, label %bb.h, label %.lr.ph.i.preheader.i

bb.h:                                             ; preds = %.split.i
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #20
  unreachable

.lr.ph.i.preheader.i:                             ; preds = %.split.i
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %gepdiff) #21 ; 9 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 3 uses
  %i.co = add nsw i64 %.idx, -4
  %2 = shl nuw nsw i64 %i.g, 2
  %i.cp = sub nsw i64 %i.co, %2                   ; 2 uses
  %i.cq = lshr exact i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.cp, 92
  br i1 %min.iters.check56, label %.lr.ph.i.i10.preheader, label %vector.memcheck47

vector.memcheck47:                                ; preds = %.lr.ph.i.preheader.i
  %scevgep = getelementptr i8, ptr %i.cn, i64 %gepdiff ; 2 uses
  %bound0 = icmp ult ptr %i.cn, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound048 = icmp ult ptr %i.cn, %i.ck
  %bound149 = icmp ult ptr %i.cj, %scevgep
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx = or i1 %found.conflict, %found.conflict50
  %bound051 = icmp ugt ptr %i.ck, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound152 = icmp ult ptr %i.cj, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx54 = or i1 %conflict.rdx, %found.conflict53
  br i1 %conflict.rdx54, label %.lr.ph.i.i10.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck47
  %n.vec58 = and i64 %i.cr, 9223372036854775800   ; 3 uses
  %i.cs = shl i64 %n.vec58, 2                     ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cj, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.cn, i64 %i.cs
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, i64 0
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next66, %vector.body59 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cv, %vector.ph57 ], [ %i.cz, %vector.body59 ]
  %vec.phi61 = phi <4 x i32> [ zeroinitializer, %vector.ph57 ], [ %i.da, %vector.body59 ]
  %i.cw = shl i64 %index60, 2                     ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.cj, i64 %i.cw ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.cn, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load64 = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !48, !alias.scope !74
  %wide.load65 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !48, !alias.scope !74
  %i.cy = getelementptr i8, ptr %next.gep63, i64 16
  store <4 x i32> %wide.load64, ptr %next.gep63, align 4, !tbaa !48, !alias.scope !77, !noalias !79
  store <4 x i32> %wide.load65, ptr %i.cy, align 4, !tbaa !48, !alias.scope !77, !noalias !79
  %i.cz = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.da = add <4 x i32> %vec.phi61, splat (i32 1) ; 2 uses
  %index.next66 = add nuw i64 %index60, 8         ; 2 uses
  %i.db = icmp eq i64 %index.next66, %n.vec58
  br i1 %i.db, label %middle.block67, label %vector.body59, !llvm.loop !81

middle.block67:                                   ; preds = %vector.body59
  %bin.rdx = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.dc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50, !alias.scope !82, !noalias !74
  %cmp.n = icmp eq i64 %i.cr, %n.vec58
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i, label %.lr.ph.i.i10.preheader

.lr.ph.i.i10.preheader:                           ; preds = %vector.memcheck47, %.lr.ph.i.preheader.i, %middle.block67
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %vector.memcheck47 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.lr.ph.i.preheader.i ], [ %i.dc, %middle.block67 ]
  %.018.i.i.ph = phi ptr [ %i.cj, %vector.memcheck47 ], [ %i.cj, %.lr.ph.i.preheader.i ], [ %i.ct, %middle.block67 ]
  %.01517.i.i.ph = phi ptr [ %i.cn, %vector.memcheck47 ], [ %i.cn, %.lr.ph.i.preheader.i ], [ %i.cu, %middle.block67 ]
  br label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i.i10.preheader, %.lr.ph.i.i10
  %i.dd = phi i32 [ %i.df, %.lr.ph.i.i10 ], [ %.ph, %.lr.ph.i.i10.preheader ]
  %.018.i.i = phi ptr [ %i.dg, %.lr.ph.i.i10 ], [ %.018.i.i.ph, %.lr.ph.i.i10.preheader ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.dh, %.lr.ph.i.i10 ], [ %.01517.i.i.ph, %.lr.ph.i.i10.preheader ] ; 2 uses
  %i.de = load i32, ptr %.018.i.i, align 4, !tbaa !48
  store i32 %i.de, ptr %.01517.i.i, align 4, !tbaa !48
  %i.df = add i32 %i.dd, 1                        ; 2 uses
  store i32 %i.df, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dg = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i.i11 = icmp eq ptr %i.dg, %i.ck
  br i1 %.not.i.i11, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i, label %.lr.ph.i.i10, !llvm.loop !83

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i: ; preds = %.lr.ph.i.i10, %middle.block67, %bb.g
  %i.di = phi ptr [ null, %bb.g ], [ %i.cn, %middle.block67 ], [ %i.cn, %.lr.ph.i.i10 ]
  %i.dj = load ptr, ptr %0, align 8, !tbaa !42    ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dl = load i16, ptr %i.dk, align 8, !tbaa !47 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !59 ; 2 uses
  %i.do = zext i16 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.do
  %.not5.i.i = icmp eq i16 %i.dl, %i.dn
  br i1 %.not5.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i, label %.lr.ph.i17.preheader.i

.lr.ph.i17.preheader.i:                           ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i
  %i.dq = zext i16 %i.dl to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dq
  br label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.preheader.i
  %.06.i.i = phi ptr [ %i.du, %.lr.ph.i17.i ], [ %i.dr, %.lr.ph.i17.preheader.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i, align 4, !tbaa !48
  %i.ds = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dt = add i32 %i.ds, -1
  store i32 %i.dt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.du = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4 ; 2 uses
  %.not.i18.i = icmp eq ptr %i.du, %i.dp
  br i1 %.not.i18.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i, label %.lr.ph.i17.i, !llvm.loop !66

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i: ; preds = %.lr.ph.i17.i, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i
  %.not.i19.i = icmp eq ptr %i.dj, null
  br i1 %.not.i19.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE23allocate_and_copy_rangeIPKS3_EEvT_SC_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i
  %i.dv = load i16, ptr %i.i, align 4, !tbaa !61
  %i.dw = zext i16 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.dx) #19
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE23allocate_and_copy_rangeIPKS3_EEvT_SC_.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE23allocate_and_copy_rangeIPKS3_EEvT_SC_.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit.i, %bb.i
  %i.dy = trunc nuw i64 %i.cl to i16              ; 2 uses
  store i16 %i.dy, ptr %i.i, align 4, !tbaa !84
  store ptr %i.di, ptr %0, align 8, !tbaa !42
  store i16 0, ptr %i.dk, align 8, !tbaa !47
  store i16 %i.dy, ptr %i.dm, align 2, !tbaa !73
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16overwrite_bufferIPKS3_EEvT_SC_.exit, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE23allocate_and_copy_rangeIPKS3_EEvT_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEEaSEOS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !59   ; 2 uses
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %.not5.i.i.i = icmp eq i16 %i.c, %i.e
  br i1 %.not5.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5clearEv.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.h = zext i16 %i.c to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.06.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.i, %.lr.ph.i.preheader.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i, align 4, !tbaa !48
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !66

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.b
  store i16 %i.c, ptr %i.d, align 2, !tbaa !59
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16priv_move_assignEOS8_NS_11move_detail5bool_ILb1EEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5clearEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i16, ptr %i.m, align 4, !tbaa !61
  %i.o = zext i16 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.p) #19
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16priv_move_assignEOS8_NS_11move_detail5bool_ILb1EEE.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16priv_move_assignEOS8_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5clearEv.exit.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load i16, ptr %i.q, align 4, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.r, ptr %i.s, align 4, !tbaa !61
  %i.t = load ptr, ptr %1, align 8, !tbaa !42
  store ptr %i.t, ptr %0, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load <2 x i16>, ptr %i.u, align 8, !tbaa !85
  store <2 x i16> %i.v, ptr %i.b, align 8, !tbaa !85
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 14, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16priv_move_assignEOS8_NS_11move_detail5bool_ILb1EEE.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16priv_move_assignEOS8_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !59   ; 2 uses
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %.not5.i.i = icmp eq i16 %i.c, %i.e
  br i1 %.not5.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5clearEv.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.h = zext i16 %i.c to i64
end_hunk_0
begin_hunk_1_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SF_:bb.a
  %.014.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.014.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.sroa.2.013.i = phi i64 [ %i.an, %.lr.ph.i ], [ %.sroa.2.013.i.unr, %.lr.ph.i.prol.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i) ]
  %i.ab = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.ab, ptr %.014.i, align 4, !tbaa !48
  %i.ac = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i, i64 4
  %i.af = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !48
  %i.ag = add i32 %i.ac, 2
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  %i.ai = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !48
  %i.aj = add i32 %i.ac, 3
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %.014.i, i64 12
  %i.al = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !48
  %i.am = add i32 %i.ac, 4
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.an = add i64 %.sroa.2.013.i, -4              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.014.i, i64 16
  %.not.i.3 = icmp eq i64 %i.an, %5
  br i1 %.not.i.3, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !58

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.e
  %i.ap = trunc i64 %i.a to i16
  %i.aq = add i16 %i.m, %i.ap
  store i16 %i.aq, ptr %i.l, align 2, !tbaa !73
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !47 ; 3 uses
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
  %xtraiter230 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i66.prol.loopexit, label %.lr.ph.i66.prol

.lr.ph.i66.prol:                                  ; preds = %.lr.ph.i66.preheader, %.lr.ph.i66.prol
  %.014.i67.prol = phi ptr [ %i.bc, %.lr.ph.i66.prol ], [ %i.ax, %.lr.ph.i66.preheader ] ; 3 uses
  %.sroa.2.013.i68.prol = phi i64 [ %i.bb, %.lr.ph.i66.prol ], [ %3, %.lr.ph.i66.preheader ]
  %prol.iter232 = phi i64 [ %prol.iter232.next, %.lr.ph.i66.prol ], [ 0, %.lr.ph.i66.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i67.prol) ]
  %i.ay = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.ay, ptr %.014.i67.prol, align 4, !tbaa !48
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.bb = add i64 %.sroa.2.013.i68.prol, -1       ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i67.prol, i64 4 ; 2 uses
  %prol.iter232.next = add i64 %prol.iter232, 1   ; 2 uses
  %prol.iter232.cmp.not = icmp eq i64 %prol.iter232.next, %xtraiter230
  br i1 %prol.iter232.cmp.not, label %.lr.ph.i66.prol.loopexit, label %.lr.ph.i66.prol, !llvm.loop !129

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
  %i.bf = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.bf, ptr %.014.i67, align 4, !tbaa !48
  %i.bg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %.014.i67, i64 4
  %i.bj = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !48
  %i.bk = add i32 %i.bg, 2
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %.014.i67, i64 8
  %i.bm = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !48
  %i.bn = add i32 %i.bg, 3
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i67, i64 12
  %i.bp = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !48
  %i.bq = add i32 %i.bg, 4
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.br = add i64 %.sroa.2.013.i68, -4            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i67, i64 16
  %.not.i69.3 = icmp eq i64 %i.br, %5
  br i1 %.not.i69.3, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, label %.lr.ph.i66, !llvm.loop !58

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71: ; preds = %.lr.ph.i66.prol.loopexit, %.lr.ph.i66, %bb.h
  %i.bt = trunc nuw i64 %i.a to i16
  %i.bu = sub i16 %i.as, %i.bt                    ; 2 uses
  store i16 %i.bu, ptr %i.ar, align 8, !tbaa !125
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
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !61
  %i.cf = zext i16 %i.ce to i64
  %i.cg = sub nsw i64 %i.cf, %i.n
  %.not62 = icmp ult i64 %i.cg, %i.a
  br i1 %.not62, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = ptrtoint ptr %i.o to i64
  %i.ci = sub i64 %i.ch, %i.bx
  %i.cj = ashr exact i64 %i.ci, 2                 ; 8 uses
  %.not.i72 = icmp ult i64 %i.cj, %i.a
  br i1 %.not.i72, label %.lr.ph.i49.preheader.i, label %bb.l

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
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !48
  store i32 %i.cn, ptr %i.o, align 4, !tbaa !48
  store i32 0, ptr %i.cl, align 4, !tbaa !48
  %i.co = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
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
  %i.ct = load i32, ptr %.0819.i.i, align 4, !tbaa !48
  store i32 %i.ct, ptr %.01618.i.i, align 4, !tbaa !48
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !48
  %i.cu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.cy = add i64 %.020.i.i, -2                   ; 2 uses
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !48
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !48
  store i32 0, ptr %i.cw, align 4, !tbaa !48
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i.1 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i, !llvm.loop !130

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.cl
  br i1 %.not8.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.de = add i64 %5, %i.n
  %i.df = shl i64 %i.de, 2
  %i.dg = add i64 %i.df, %i.c
  %i.dh = add i64 %i.dg, -4
  %6 = shl i64 %3, 2
  %i.di = add i64 %6, %i.bx
  %i.dj = sub i64 %i.dh, %i.di                    ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dj, 188
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader219, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.dm = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.dn = add nsw i64 %i.dm, -4
  %i.do = shl i64 %5, 2                           ; 2 uses
  %i.dp = add i64 %i.do, %i.c
  %i.dq = add i64 %i.dp, %i.dm
  %i.dr = add i64 %i.dq, -4
  %i.ds = shl i64 %3, 2                           ; 2 uses
  %i.dt = add i64 %i.ds, %i.bx
  %i.du = sub i64 %i.dr, %i.dt
  %i.dv = and i64 %i.du, -4                       ; 2 uses
  %i.dw = sub i64 %i.dn, %i.dv
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.dw
  %i.dx = add i64 %i.do, %i.dm
  %i.dy = add i64 %i.dx, -4
  %i.dz = add i64 %i.ds, %i.dv
  %i.ea = sub i64 %i.dy, %i.dz
  %scevgep135 = getelementptr i8, ptr %i.b, i64 %i.ea
  %bound0 = icmp ult ptr %scevgep, %i.cl
  %bound1 = icmp ult ptr %scevgep135, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader219, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dl, 9223372036854775800     ; 3 uses
  %i.eb = mul i64 %n.vec, -4                      ; 2 uses
  %i.ec = getelementptr i8, ptr %i.o, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.cl, i64 %i.eb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ee ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.cl, i64 %i.ee ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %next.gep136, i64 -16 ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %next.gep136, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ef, align 4, !tbaa !48, !alias.scope !131
  %wide.load137 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !48, !alias.scope !131
  %i.eh = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ei = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.eh, align 4, !tbaa !48, !alias.scope !134, !noalias !131
  store <4 x i32> %wide.load137, ptr %i.ei, align 4, !tbaa !48, !alias.scope !134, !noalias !131
  store <4 x i32> zeroinitializer, ptr %i.ef, align 4, !tbaa !48, !alias.scope !131
  store <4 x i32> zeroinitializer, ptr %i.eg, align 4, !tbaa !48, !alias.scope !131
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i40.i.preheader219

.lr.ph.i40.i.preheader219:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.ec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i40.i.preheader ], [ %i.ed, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader219, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.el, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader219 ]
  %.079.i.i = phi ptr [ %i.ek, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader219 ]
  %i.ek = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !48
  store i32 %i.em, ptr %i.el, align 4, !tbaa !48
  store i32 0, ptr %i.ek, align 4, !tbaa !48
  %.not.i41.i = icmp eq ptr %1, %i.ek
  br i1 %.not.i41.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i40.i, !llvm.loop !137

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %.pre.i.i.i = load i32, ptr %2, align 4, !tbaa !48 ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph.preheader.i.i.i
  %n.vec142 = and i64 %i.a, -8                    ; 3 uses
  %i.en = and i64 %i.a, 7
  %i.eo = shl i64 %n.vec142, 2
  %i.ep = getelementptr i8, ptr %1, i64 %i.eo
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next146, %vector.body143 ] ; 2 uses
  %i.eq = shl i64 %index144, 2
  %next.gep145 = getelementptr i8, ptr %1, i64 %i.eq ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep145, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep145, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat, ptr %i.er, align 4, !tbaa !48
  %index.next146 = add nuw i64 %index144, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next146, %n.vec142
  br i1 %i.es, label %middle.block147, label %vector.body143, !llvm.loop !138

middle.block147:                                  ; preds = %vector.body143
  %cmp.n148 = icmp eq i64 %i.a, %n.vec142
  br i1 %cmp.n148, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block147
  %.012.i.i.i.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i ], [ %i.en, %middle.block147 ]
  %.0511.i.i.i.ph = phi ptr [ %1, %.lr.ph.preheader.i.i.i ], [ %i.ep, %middle.block147 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.et, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.0511.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i ], [ %.0511.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.et = add i64 %.012.i.i.i, -1                 ; 2 uses
  store i32 %.pre.i.i.i, ptr %.0511.i.i.i, align 4, !tbaa !48
  %i.eu = getelementptr inbounds nuw i8, ptr %.0511.i.i.i, i64 4
  %.not.i.i.i = icmp eq i64 %i.et, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !139

.lr.ph.i49.preheader.i:                           ; preds = %bb.k
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i49.i

.lr.ph.i49.i:                                     ; preds = %.lr.ph.i49.i, %.lr.ph.i49.preheader.i
  %.018.i.i = phi ptr [ %i.ez, %.lr.ph.i49.i ], [ %1, %.lr.ph.i49.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.fa, %.lr.ph.i49.i ], [ %i.ev, %.lr.ph.i49.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.ew = load i32, ptr %.018.i.i, align 4, !tbaa !48
  store i32 %i.ew, ptr %.01517.i.i, align 4, !tbaa !48
  store i32 0, ptr %.018.i.i, align 4, !tbaa !48
  %i.ex = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ez = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i50.i = icmp eq ptr %i.ez, %i.o
  br i1 %.not.i50.i, label %.lr.ph.preheader.i.i55.i, label %.lr.ph.i49.i, !llvm.loop !127

.lr.ph.preheader.i.i55.i:                         ; preds = %.lr.ph.i49.i
  %.pre.i.i56.i = load i32, ptr %2, align 4, !tbaa !48 ; 2 uses
  %min.iters.check152 = icmp ult i64 %i.cj, 8
  br i1 %min.iters.check152, label %.lr.ph.i.i57.i.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %.lr.ph.preheader.i.i55.i
  %n.vec154 = and i64 %i.cj, -8                   ; 3 uses
  %i.fb = and i64 %i.cj, 7
  %i.fc = shl nsw i64 %n.vec154, 2
  %i.fd = getelementptr i8, ptr %1, i64 %i.fc
  %broadcast.splatinsert155 = insertelement <4 x i32> poison, i32 %.pre.i.i56.i, i64 0
  %broadcast.splat156 = shufflevector <4 x i32> %broadcast.splatinsert155, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph153
  %index158 = phi i64 [ 0, %vector.ph153 ], [ %index.next160, %vector.body157 ] ; 2 uses
  %i.fe = shl i64 %index158, 2
  %next.gep159 = getelementptr i8, ptr %1, i64 %i.fe ; 2 uses
  %i.ff = getelementptr i8, ptr %next.gep159, i64 16
  store <4 x i32> %broadcast.splat156, ptr %next.gep159, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat156, ptr %i.ff, align 4, !tbaa !48
  %index.next160 = add nuw i64 %index158, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next160, %n.vec154
  br i1 %i.fg, label %middle.block161, label %vector.body157, !llvm.loop !140

middle.block161:                                  ; preds = %vector.body157
  %cmp.n162 = icmp eq i64 %i.cj, %n.vec154
  br i1 %cmp.n162, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit63.i, label %.lr.ph.i.i57.i.preheader

.lr.ph.i.i57.i.preheader:                         ; preds = %.lr.ph.preheader.i.i55.i, %middle.block161
  %.012.i.i58.i.ph = phi i64 [ %i.cj, %.lr.ph.preheader.i.i55.i ], [ %i.fb, %middle.block161 ]
  %.0511.i.i59.i.ph = phi ptr [ %1, %.lr.ph.preheader.i.i55.i ], [ %i.fd, %middle.block161 ]
  br label %.lr.ph.i.i57.i

.lr.ph.i.i57.i:                                   ; preds = %.lr.ph.i.i57.i.preheader, %.lr.ph.i.i57.i
  %.012.i.i58.i = phi i64 [ %i.fh, %.lr.ph.i.i57.i ], [ %.012.i.i58.i.ph, %.lr.ph.i.i57.i.preheader ]
  %.0511.i.i59.i = phi ptr [ %i.fi, %.lr.ph.i.i57.i ], [ %.0511.i.i59.i.ph, %.lr.ph.i.i57.i.preheader ] ; 2 uses
  %i.fh = add i64 %.012.i.i58.i, -1               ; 2 uses
  store i32 %.pre.i.i56.i, ptr %.0511.i.i59.i, align 4, !tbaa !48
  %i.fi = getelementptr inbounds nuw i8, ptr %.0511.i.i59.i, i64 4
  %.not.i.i60.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i60.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit63.i, label %.lr.ph.i.i57.i, !llvm.loop !141

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit63.i: ; preds = %.lr.ph.i.i57.i, %middle.block161
  %i.fj = sub i64 %i.a, %i.cj                     ; 3 uses
  %xtraiter220 = and i64 %i.fj, 3                 ; 2 uses
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod221.not, label %.lr.ph.i.i67.i.prol.loopexit, label %.lr.ph.i.i67.i.prol

.lr.ph.i.i67.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit63.i, %.lr.ph.i.i67.i.prol
  %.022.i.i.i.prol = phi i64 [ %i.fo, %.lr.ph.i.i67.i.prol ], [ %i.fj, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit63.i ]
  %.01821.i.i.i.prol = phi ptr [ %i.fn, %.lr.ph.i.i67.i.prol ], [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit63.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i67.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit63.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.prol) ]
  %i.fk = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.fk, ptr %.01821.i.i.i.prol, align 4, !tbaa !48
  %i.fl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fn = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.prol, i64 4 ; 2 uses
  %i.fo = add i64 %.022.i.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter220
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i67.i.prol.loopexit, label %.lr.ph.i.i67.i.prol, !llvm.loop !142

.lr.ph.i.i67.i.prol.loopexit:                     ; preds = %.lr.ph.i.i67.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit63.i
  %.022.i.i.i.unr = phi i64 [ %i.fj, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit63.i ], [ %i.fo, %.lr.ph.i.i67.i.prol ]
  %.01821.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit63.i ], [ %i.fn, %.lr.ph.i.i67.i.prol ]
  %i.fp = sub i64 %i.cj, %3
  %i.fq = add i64 %i.fp, %5
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i67.i

.lr.ph.i.i67.i:                                   ; preds = %.lr.ph.i.i67.i.prol.loopexit, %.lr.ph.i.i67.i
  %.022.i.i.i = phi i64 [ %i.gf, %.lr.ph.i.i67.i ], [ %.022.i.i.i.unr, %.lr.ph.i.i67.i.prol.loopexit ]
  %.01821.i.i.i = phi ptr [ %i.ge, %.lr.ph.i.i67.i ], [ %.01821.i.i.i.unr, %.lr.ph.i.i67.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i) ]
  %i.fs = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.fs, ptr %.01821.i.i.i, align 4, !tbaa !48
  %i.ft = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fv = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 4
  %i.fw = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.fw, ptr %i.fv, align 4, !tbaa !48
  %i.fx = add i32 %i.ft, 2
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fy = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 8
  %i.fz = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !48
  %i.ga = add i32 %i.ft, 3
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gb = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 12
  %i.gc = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !48
  %i.gd = add i32 %i.ft, 4
  store i32 %i.gd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 16
  %i.gf = add i64 %.022.i.i.i, -4                 ; 2 uses
  %.not.i.i68.i.3 = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i68.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i67.i, !llvm.loop !143

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i67.i.prol.loopexit, %.lr.ph.i.i67.i, %middle.block147
  %i.gg = trunc i64 %i.a to i16
  %i.gh = add i16 %i.m, %i.gg
  store i16 %i.gh, ptr %i.l, align 2, !tbaa !73
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %.not61 = icmp ugt i64 %i.a, %i.at
  br i1 %.not61, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i74 = icmp samesign ult i64 %i.ca, %i.a
  %i.gi = sub nsw i64 0, %i.a                     ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.gi ; 3 uses
  br i1 %.not.i74, label %.lr.ph.i49.i92, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %bb.n
  %.neg236 = add i64 %5, 1
  %xtraiter222 = and i64 %i.a, 1
  %i.gk = icmp eq i64 %3, %.neg236
  br i1 %i.gk, label %.lr.ph.i.i76.epil.preheader, label %.lr.ph.i.i76.preheader.new

.lr.ph.i.i76.preheader.new:                       ; preds = %.lr.ph.i.i76.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76, %.lr.ph.i.i76.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i76 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.au, %.lr.ph.i.i76.preheader.new ], [ %i.gt, %.lr.ph.i.i76 ] ; 4 uses
  %.01618.i.i78 = phi ptr [ %i.gj, %.lr.ph.i.i76.preheader.new ], [ %i.gu, %.lr.ph.i.i76 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %niter.next.1, %.lr.ph.i.i76 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78) ]
  %i.gl = load i32, ptr %.0919.i.i, align 4, !tbaa !48
  store i32 %i.gl, ptr %.01618.i.i78, align 4, !tbaa !48
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !48
  %i.gm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.go = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 4
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !48
  store i32 %i.gq, ptr %i.gp, align 4, !tbaa !48
  store i32 0, ptr %i.go, align 4, !tbaa !48
  %i.gr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gt = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i76, !llvm.loop !144

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i76
  %indvar.next = or disjoint i64 %indvar, 1
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i76.epil.preheader

.lr.ph.i.i76.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i76.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i76.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.au, %.lr.ph.i.i76.preheader ], [ %i.gt, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i78.epil.init = phi ptr [ %i.gj, %.lr.ph.i.i76.preheader ], [ %i.gu, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod226 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod226)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78.epil.init) ]
  %i.gv = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !48
  store i32 %i.gv, ptr %.01618.i.i78.epil.init, align 4, !tbaa !48
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !48
  %i.gw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gy = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i76.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i76.epil.preheader ]
  %.lcssa217 = phi ptr [ %i.gt, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.gy, %.lr.ph.i.i76.epil.preheader ] ; 6 uses
  %.not8.i.i80 = icmp eq ptr %.lcssa217, %1
  br i1 %.not8.i.i80, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader

.lr.ph.i40.i81.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.gz = shl i64 %5, 2
  %i.ha = add i64 %3, %i.at
  %7 = add i64 %i.gz, %i.bx
  %i.hb = add i64 %7, -4
  %8 = shl i64 %i.ha, 2
  %i.hc = add i64 %8, %i.c
  %i.hd = sub i64 %i.hb, %i.hc                    ; 2 uses
  %i.he = lshr i64 %i.hd, 2
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check172 = icmp ult i64 %i.hd, 172
  br i1 %min.iters.check172, label %.lr.ph.i40.i81.preheader215, label %vector.memcheck165

vector.memcheck165:                               ; preds = %.lr.ph.i40.i81.preheader
  %i.hg = shl i64 %5, 2
  %i.hh = add i64 %i.hg, %i.bx
  %i.hi = add i64 %i.hh, -4
  %i.hj = add i64 %3, %i.at
  %i.hk = shl i64 %i.hj, 2
  %i.hl = add i64 %i.hk, %i.c
  %i.hm = sub i64 %i.hi, %i.hl
  %i.hn = and i64 %i.hm, -4
  %i.ho = shl nuw nsw i64 %i.at, 2
  %i.hp = add i64 %i.hn, %i.ho                    ; 2 uses
  %i.hq = getelementptr i8, ptr %i.b, i64 %i.hp
  %scevgep166 = getelementptr i8, ptr %i.hq, i64 4
  %i.hr = shl i64 %indvar.lcssa, 2
  %i.hs = getelementptr i8, ptr %i.b, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.hp
  %scevgep167 = getelementptr i8, ptr %i.ht, i64 8
  %bound0168 = icmp ult ptr %i.au, %scevgep167
  %bound1169 = icmp ult ptr %.lcssa217, %scevgep166
  %found.conflict170 = and i1 %bound0168, %bound1169
  br i1 %found.conflict170, label %.lr.ph.i40.i81.preheader215, label %vector.ph173

vector.ph173:                                     ; preds = %vector.memcheck165
  %n.vec174 = and i64 %i.hf, 9223372036854775800  ; 3 uses
  %i.hu = shl i64 %n.vec174, 2                    ; 2 uses
  %i.hv = getelementptr i8, ptr %i.au, i64 %i.hu  ; 2 uses
  %i.hw = getelementptr i8, ptr %.lcssa217, i64 %i.hu
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next181, %vector.body175 ] ; 2 uses
  %i.hx = shl i64 %index176, 2                    ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.au, i64 %i.hx ; 2 uses
  %next.gep178 = getelementptr i8, ptr %.lcssa217, i64 %i.hx ; 3 uses
  %i.hy = getelementptr i8, ptr %next.gep178, i64 16 ; 2 uses
  %wide.load179 = load <4 x i32>, ptr %next.gep178, align 4, !tbaa !48, !alias.scope !145
  %wide.load180 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !48, !alias.scope !145
  %i.hz = getelementptr i8, ptr %next.gep177, i64 16
  store <4 x i32> %wide.load179, ptr %next.gep177, align 4, !tbaa !48, !alias.scope !148, !noalias !145
  store <4 x i32> %wide.load180, ptr %i.hz, align 4, !tbaa !48, !alias.scope !148, !noalias !145
  store <4 x i32> zeroinitializer, ptr %next.gep178, align 4, !tbaa !48, !alias.scope !145
  store <4 x i32> zeroinitializer, ptr %i.hy, align 4, !tbaa !48, !alias.scope !145
  %index.next181 = add nuw i64 %index176, 8       ; 2 uses
  %i.ia = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.ia, label %middle.block182, label %vector.body175, !llvm.loop !150

middle.block182:                                  ; preds = %vector.body175
  %cmp.n183 = icmp eq i64 %i.hf, %n.vec174
  br i1 %cmp.n183, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader215

.lr.ph.i40.i81.preheader215:                      ; preds = %vector.memcheck165, %.lr.ph.i40.i81.preheader, %middle.block182
  %.010.i.i82.ph = phi ptr [ %i.au, %vector.memcheck165 ], [ %i.au, %.lr.ph.i40.i81.preheader ], [ %i.hv, %middle.block182 ]
  %.079.i.i83.ph = phi ptr [ %.lcssa217, %vector.memcheck165 ], [ %.lcssa217, %.lr.ph.i40.i81.preheader ], [ %i.hw, %middle.block182 ]
  br label %.lr.ph.i40.i81

.lr.ph.i40.i81:                                   ; preds = %.lr.ph.i40.i81.preheader215, %.lr.ph.i40.i81
  %.010.i.i82 = phi ptr [ %i.id, %.lr.ph.i40.i81 ], [ %.010.i.i82.ph, %.lr.ph.i40.i81.preheader215 ] ; 2 uses
  %.079.i.i83 = phi ptr [ %i.ic, %.lr.ph.i40.i81 ], [ %.079.i.i83.ph, %.lr.ph.i40.i81.preheader215 ] ; 3 uses
  %i.ib = load i32, ptr %.079.i.i83, align 4, !tbaa !48
  store i32 %i.ib, ptr %.010.i.i82, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i83, align 4, !tbaa !48
  %i.ic = getelementptr inbounds nuw i8, ptr %.079.i.i83, i64 4 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.010.i.i82, i64 4 ; 2 uses
  %.not.i41.i84 = icmp eq ptr %i.ic, %1
  br i1 %.not.i41.i84, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81, !llvm.loop !151

.lr.ph.preheader.i.i.i85:                         ; preds = %.lr.ph.i40.i81, %middle.block182, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.au, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.hv, %middle.block182 ], [ %i.id, %.lr.ph.i40.i81 ] ; 3 uses
  %.pre.i.i.i86 = load i32, ptr %2, align 4, !tbaa !48 ; 2 uses
  %min.iters.check187 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check187, label %.lr.ph.i.i.i87.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %.lr.ph.preheader.i.i.i85
  %n.vec189 = and i64 %i.a, -8                    ; 3 uses
  %i.ie = and i64 %i.a, 7
  %i.if = shl i64 %n.vec189, 2
  %i.ig = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.if
  %broadcast.splatinsert190 = insertelement <4 x i32> poison, i32 %.pre.i.i.i86, i64 0
  %broadcast.splat191 = shufflevector <4 x i32> %broadcast.splatinsert190, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph188
  %index193 = phi i64 [ 0, %vector.ph188 ], [ %index.next195, %vector.body192 ] ; 2 uses
  %i.ih = shl i64 %index193, 2
  %next.gep194 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ih ; 2 uses
  %i.ii = getelementptr i8, ptr %next.gep194, i64 16
  store <4 x i32> %broadcast.splat191, ptr %next.gep194, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat191, ptr %i.ii, align 4, !tbaa !48
  %index.next195 = add nuw i64 %index193, 8       ; 2 uses
  %i.ij = icmp eq i64 %index.next195, %n.vec189
  br i1 %i.ij, label %middle.block196, label %vector.body192, !llvm.loop !152

middle.block196:                                  ; preds = %vector.body192
  %cmp.n197 = icmp eq i64 %i.a, %n.vec189
  br i1 %cmp.n197, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i87.preheader

.lr.ph.i.i.i87.preheader:                         ; preds = %.lr.ph.preheader.i.i.i85, %middle.block196
  %.012.i.i.i88.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i85 ], [ %i.ie, %middle.block196 ]
  %.0511.i.i.i89.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph.preheader.i.i.i85 ], [ %i.ig, %middle.block196 ]
  br label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %.lr.ph.i.i.i87.preheader, %.lr.ph.i.i.i87
  %.012.i.i.i88 = phi i64 [ %i.ik, %.lr.ph.i.i.i87 ], [ %.012.i.i.i88.ph, %.lr.ph.i.i.i87.preheader ]
  %.0511.i.i.i89 = phi ptr [ %i.il, %.lr.ph.i.i.i87 ], [ %.0511.i.i.i89.ph, %.lr.ph.i.i.i87.preheader ] ; 2 uses
  %i.ik = add i64 %.012.i.i.i88, -1               ; 2 uses
  store i32 %.pre.i.i.i86, ptr %.0511.i.i.i89, align 4, !tbaa !48
  %i.il = getelementptr inbounds nuw i8, ptr %.0511.i.i.i89, i64 4
  %.not.i.i.i90 = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i.i90, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i87, !llvm.loop !153

.lr.ph.i49.i92:                                   ; preds = %bb.n, %.lr.ph.i49.i92
  %.018.i.i93 = phi ptr [ %i.ip, %.lr.ph.i49.i92 ], [ %i.au, %bb.n ] ; 3 uses
  %.01517.i.i94 = phi ptr [ %i.iq, %.lr.ph.i49.i92 ], [ %i.gj, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i94) ]
  %i.im = load i32, ptr %.018.i.i93, align 4, !tbaa !48
  store i32 %i.im, ptr %.01517.i.i94, align 4, !tbaa !48
  store i32 0, ptr %.018.i.i93, align 4, !tbaa !48
  %i.in = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ip = getelementptr inbounds nuw i8, ptr %.018.i.i93, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.01517.i.i94, i64 4 ; 3 uses
  %.not.i50.i95 = icmp eq ptr %i.ip, %1
  br i1 %.not.i50.i95, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i49.i92, !llvm.loop !127

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i49.i92
  %i.ir = sub i64 %i.a, %i.ca                     ; 3 uses
  %xtraiter227 = and i64 %i.ir, 3                 ; 2 uses
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %.lr.ph.i.i54.i.prol.loopexit, label %.lr.ph.i.i54.i.prol

.lr.ph.i.i54.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, %.lr.ph.i.i54.i.prol
  %.022.i.i.i96.prol = phi i64 [ %i.iw, %.lr.ph.i.i54.i.prol ], [ %i.ir, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %.01821.i.i.i97.prol = phi ptr [ %i.iv, %.lr.ph.i.i54.i.prol ], [ %i.iq, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ] ; 2 uses
  %prol.iter229 = phi i64 [ %prol.iter229.next, %.lr.ph.i.i54.i.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %i.is = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.is, ptr %.01821.i.i.i97.prol, align 4, !tbaa !48
  %i.it = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.iu = add i32 %i.it, 1
  store i32 %i.iu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.iv = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97.prol, i64 4 ; 2 uses
  %i.iw = add i64 %.022.i.i.i96.prol, -1          ; 2 uses
  %prol.iter229.next = add i64 %prol.iter229, 1   ; 2 uses
  %prol.iter229.cmp.not = icmp eq i64 %prol.iter229.next, %xtraiter227
  br i1 %prol.iter229.cmp.not, label %.lr.ph.i.i54.i.prol.loopexit, label %.lr.ph.i.i54.i.prol, !llvm.loop !154

.lr.ph.i.i54.i.prol.loopexit:                     ; preds = %.lr.ph.i.i54.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.022.i.i.i96.unr = phi i64 [ %i.ir, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iw, %.lr.ph.i.i54.i.prol ]
  %.01821.i.i.i97.unr = phi ptr [ %i.iq, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iv, %.lr.ph.i.i54.i.prol ]
  %i.ix = sub i64 %i.ca, %3
  %i.iy = add i64 %i.ix, %5
  %i.iz = icmp ugt i64 %i.iy, -4
  br i1 %i.iz, label %.lr.ph.preheader.i.i62.i, label %.lr.ph.i.i54.i

.lr.ph.i.i54.i:                                   ; preds = %.lr.ph.i.i54.i.prol.loopexit, %.lr.ph.i.i54.i
  %.022.i.i.i96 = phi i64 [ %i.jn, %.lr.ph.i.i54.i ], [ %.022.i.i.i96.unr, %.lr.ph.i.i54.i.prol.loopexit ]
  %.01821.i.i.i97 = phi ptr [ %i.jm, %.lr.ph.i.i54.i ], [ %.01821.i.i.i97.unr, %.lr.ph.i.i54.i.prol.loopexit ] ; 5 uses
  %i.ja = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.ja, ptr %.01821.i.i.i97, align 4, !tbaa !48
  %i.jb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jd = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 4
  %i.je = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.je, ptr %i.jd, align 4, !tbaa !48
  %i.jf = add i32 %i.jb, 2
  store i32 %i.jf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jg = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 8
  %i.jh = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !48
  %i.ji = add i32 %i.jb, 3
  store i32 %i.ji, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jj = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 12
  %i.jk = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.jk, ptr %i.jj, align 4, !tbaa !48
  %i.jl = add i32 %i.jb, 4
  store i32 %i.jl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jm = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 16
  %i.jn = add i64 %.022.i.i.i96, -4               ; 2 uses
  %.not.i.i55.i.3 = icmp eq i64 %i.jn, 0
  br i1 %.not.i.i55.i.3, label %.lr.ph.preheader.i.i62.i, label %.lr.ph.i.i54.i, !llvm.loop !143

.lr.ph.preheader.i.i62.i:                         ; preds = %.lr.ph.i.i54.i, %.lr.ph.i.i54.i.prol.loopexit
  %.pre.i.i63.i = load i32, ptr %2, align 4, !tbaa !48 ; 2 uses
  %min.iters.check201 = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check201, label %.lr.ph.i.i64.i.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph.preheader.i.i62.i
  %n.vec203 = and i64 %i.ca, -8                   ; 3 uses
  %i.jo = and i64 %i.ca, 7
  %i.jp = shl nsw i64 %n.vec203, 2
  %i.jq = getelementptr i8, ptr %i.au, i64 %i.jp
  %broadcast.splatinsert204 = insertelement <4 x i32> poison, i32 %.pre.i.i63.i, i64 0
  %broadcast.splat205 = shufflevector <4 x i32> %broadcast.splatinsert204, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph202
  %index207 = phi i64 [ 0, %vector.ph202 ], [ %index.next209, %vector.body206 ] ; 2 uses
  %i.jr = shl i64 %index207, 2
  %next.gep208 = getelementptr i8, ptr %i.au, i64 %i.jr ; 2 uses
  %i.js = getelementptr i8, ptr %next.gep208, i64 16
  store <4 x i32> %broadcast.splat205, ptr %next.gep208, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat205, ptr %i.js, align 4, !tbaa !48
  %index.next209 = add nuw i64 %index207, 8       ; 2 uses
  %i.jt = icmp eq i64 %index.next209, %n.vec203
  br i1 %i.jt, label %middle.block210, label %vector.body206, !llvm.loop !155

middle.block210:                                  ; preds = %vector.body206
  %cmp.n211 = icmp eq i64 %i.ca, %n.vec203
  br i1 %cmp.n211, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i64.i.preheader

.lr.ph.i.i64.i.preheader:                         ; preds = %.lr.ph.preheader.i.i62.i, %middle.block210
  %.012.i.i65.i.ph = phi i64 [ %i.ca, %.lr.ph.preheader.i.i62.i ], [ %i.jo, %middle.block210 ]
  %.0511.i.i66.i.ph = phi ptr [ %i.au, %.lr.ph.preheader.i.i62.i ], [ %i.jq, %middle.block210 ]
  br label %.lr.ph.i.i64.i

.lr.ph.i.i64.i:                                   ; preds = %.lr.ph.i.i64.i.preheader, %.lr.ph.i.i64.i
  %.012.i.i65.i = phi i64 [ %i.ju, %.lr.ph.i.i64.i ], [ %.012.i.i65.i.ph, %.lr.ph.i.i64.i.preheader ]
  %.0511.i.i66.i = phi ptr [ %i.jv, %.lr.ph.i.i64.i ], [ %.0511.i.i66.i.ph, %.lr.ph.i.i64.i.preheader ] ; 2 uses
  %i.ju = add i64 %.012.i.i65.i, -1               ; 2 uses
  store i32 %.pre.i.i63.i, ptr %.0511.i.i66.i, align 4, !tbaa !48
  %i.jv = getelementptr inbounds nuw i8, ptr %.0511.i.i66.i, i64 4
  %.not.i.i67.i = icmp eq i64 %i.ju, 0
  br i1 %.not.i.i67.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i64.i, !llvm.loop !156

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i87, %.lr.ph.i.i64.i, %middle.block196, %middle.block210
  %i.jw = trunc nuw i64 %i.a to i16
  %i.jx = sub i16 %i.as, %i.jw
  store i16 %i.jx, ptr %i.ar, align 8, !tbaa !125
  %i.jy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gi
  br label %bb.o

.thread:                                          ; preds = %bb.j, %bb.m, %bb.g, %bb.d
  %i.jz = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %i.a, ptr %2, i64 %3)
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, %bb.b
  %.1 = phi ptr [ %i.k, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit ], [ %i.jz, %.thread ], [ %i.bw, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ], [ %i.jy, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ]
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e ; 4 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !59   ; 2 uses
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
  %i.t = load i32, ptr %i.r, align 4, !tbaa !48
  store i32 %i.t, ptr %i.s, align 4, !tbaa !48
  store i32 0, ptr %i.r, align 4, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.f, %i.r
  br i1 %.not.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !157

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.b
  store i32 -2147483648, ptr %i.f, align 4, !tbaa !48
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.w = add i16 %i.d, 1
  store i16 %i.w, ptr %i.c, align 8, !tbaa !125
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5eraseEPKS3_SA_.exit

bb.c:                                             ; preds = %bb.a
  %.not8.i26.i.i = icmp eq ptr %i.a, %i.m
  br i1 %.not8.i26.i.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i, label %.lr.ph.i27.i.i

.lr.ph.i27.i.i:                                   ; preds = %bb.c, %.lr.ph.i27.i.i
  %.010.i28.i.i = phi ptr [ %i.z, %.lr.ph.i27.i.i ], [ %1, %bb.c ] ; 2 uses
  %.079.i29.i.i = phi ptr [ %i.y, %.lr.ph.i27.i.i ], [ %i.a, %bb.c ] ; 3 uses
  %i.x = load i32, ptr %.079.i29.i.i, align 4, !tbaa !48
  store i32 %i.x, ptr %.010.i28.i.i, align 4, !tbaa !48
  store i32 0, ptr %.079.i29.i.i, align 4, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %.079.i29.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i28.i.i, i64 4
  %.not.i30.i.i = icmp eq ptr %i.y, %i.m
  br i1 %.not.i30.i.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i, label %.lr.ph.i27.i.i, !llvm.loop !158

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i: ; preds = %.lr.ph.i27.i.i, %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.m, i64 -4
  store i32 -2147483648, ptr %i.aa, align 4, !tbaa !48
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ac = add i32 %i.ab, -1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e ; 5 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !59   ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.l ; 5 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = sub i64 %i.g, %i.o                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = icmp ult i64 %i.i, %i.p
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq ptr %i.f, %1
  br i1 %.not8.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %3 = add i64 %i.o, -4
  %4 = shl nuw nsw i64 %i.e, 2
  %i.t = add i64 %4, %i.b
  %i.u = sub i64 %3, %i.t                         ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check19 = icmp ult i64 %i.u, 92
  br i1 %min.iters.check19, label %.lr.ph.i.i.preheader33, label %vector.memcheck12

vector.memcheck12:                                ; preds = %.lr.ph.i.i.preheader
  %i.x = shl nuw nsw i64 %i.e, 2
  %i.y = add i64 %i.x, %i.b
  %reass.sub = sub i64 %i.y, %i.o
  %.not = add i64 %reass.sub, 3
  %i.z = and i64 %.not, -4                        ; 2 uses
  %scevgep13 = getelementptr i8, ptr %2, i64 %i.z
  %scevgep14 = getelementptr i8, ptr %1, i64 %i.z
  %bound015 = icmp ult ptr %scevgep13, %1
  %bound116 = icmp ult ptr %scevgep14, %2
  %found.conflict17 = and i1 %bound015, %bound116
  br i1 %found.conflict17, label %.lr.ph.i.i.preheader33, label %vector.ph20

vector.ph20:                                      ; preds = %vector.memcheck12
  %n.vec21 = and i64 %i.w, 9223372036854775800    ; 3 uses
  %i.aa = mul i64 %n.vec21, -4                    ; 2 uses
  %i.ab = getelementptr i8, ptr %2, i64 %i.aa
  %i.ac = getelementptr i8, ptr %1, i64 %i.aa
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next28, %vector.body22 ] ; 2 uses
  %i.ad = mul i64 %index23, -4                    ; 2 uses
  %next.gep24 = getelementptr i8, ptr %2, i64 %i.ad ; 2 uses
  %next.gep25 = getelementptr i8, ptr %1, i64 %i.ad ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %next.gep25, i64 -16 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %next.gep25, i64 -32 ; 2 uses
  %wide.load26 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !48, !alias.scope !159
  %wide.load27 = load <4 x i32>, ptr %i.af, align 4, !tbaa !48, !alias.scope !159
  %i.ag = getelementptr inbounds i8, ptr %next.gep24, i64 -16
  %i.ah = getelementptr inbounds i8, ptr %next.gep24, i64 -32
  store <4 x i32> %wide.load26, ptr %i.ag, align 4, !tbaa !48, !alias.scope !162, !noalias !159
  store <4 x i32> %wide.load27, ptr %i.ah, align 4, !tbaa !48, !alias.scope !162, !noalias !159
  store <4 x i32> zeroinitializer, ptr %i.ae, align 4, !tbaa !48, !alias.scope !159
  store <4 x i32> zeroinitializer, ptr %i.af, align 4, !tbaa !48, !alias.scope !159
  %index.next28 = add nuw i64 %index23, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next28, %n.vec21
  br i1 %i.ai, label %middle.block29, label %vector.body22, !llvm.loop !164

middle.block29:                                   ; preds = %vector.body22
  %cmp.n30 = icmp eq i64 %i.w, %n.vec21
  br i1 %cmp.n30, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i.i.preheader33

.lr.ph.i.i.preheader33:                           ; preds = %vector.memcheck12, %.lr.ph.i.i.preheader, %middle.block29
  %.010.i.i.ph = phi ptr [ %2, %vector.memcheck12 ], [ %2, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block29 ]
  %.079.i.i.ph = phi ptr [ %1, %vector.memcheck12 ], [ %1, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block29 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader33, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader33 ]
  %.079.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader33 ]
  %i.aj = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !48
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !48
  store i32 0, ptr %i.aj, align 4, !tbaa !48
  %.not.i.i = icmp eq ptr %i.f, %i.aj
  br i1 %.not.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !165

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %.lr.ph.i.i, %middle.block29, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  %.not2534.i = icmp eq ptr %2, %1
  br i1 %.not2534.i, label %._crit_edge37.i, label %.lr.ph36.i

._crit_edge37.i:                                  ; preds = %.lr.ph36.i, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %i.an = trunc i64 %i.r to i16
  %i.ao = add i16 %i.d, %i.an
  store i16 %i.ao, ptr %i.c, align 8, !tbaa !125
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5eraseEPS3_S9_.exit

.lr.ph36.i:                                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph36.i
  %.02335.i = phi ptr [ %i.ar, %.lr.ph36.i ], [ %i.f, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  store i32 -2147483648, ptr %.02335.i, align 4, !tbaa !48
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %.02335.i, i64 4 ; 2 uses
  %.not25.i = icmp eq ptr %i.ar, %i.am
  br i1 %.not25.i, label %._crit_edge37.i, label %.lr.ph36.i, !llvm.loop !166

bb.c:                                             ; preds = %bb.a
  %.not8.i26.i = icmp eq ptr %2, %i.m
  br i1 %.not8.i26.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i27.i.preheader

.lr.ph.i27.i.preheader:                           ; preds = %bb.c
  %i.as = shl nuw nsw i64 %i.l, 2
  %i.at = add i64 %i.as, %i.b
  %i.au = add i64 %i.at, -4
  %i.av = sub i64 %i.au, %i.g                     ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 92
  br i1 %min.iters.check, label %.lr.ph.i27.i.preheader34, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i27.i.preheader
  %i.ay = shl nuw nsw i64 %i.l, 2
  %i.az = add i64 %i.ay, %i.b
  %i.ba = add i64 %i.az, -4
  %i.bb = sub i64 %i.ba, %i.g
  %i.bc = and i64 %i.bb, -4
  %i.bd = add i64 %i.bc, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.bd
  %scevgep8 = getelementptr i8, ptr %2, i64 %i.bd
  %bound0 = icmp ult ptr %1, %scevgep8
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i27.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 3 uses
  %i.be = shl i64 %n.vec, 2                       ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %i.bg = getelementptr i8, ptr %2, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.bh ; 2 uses
  %next.gep9 = getelementptr i8, ptr %2, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep9, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep9, align 4, !tbaa !48, !alias.scope !167
  %wide.load10 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !48, !alias.scope !167
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !48, !alias.scope !170, !noalias !167
  store <4 x i32> %wide.load10, ptr %i.bj, align 4, !tbaa !48, !alias.scope !170, !noalias !167
  store <4 x i32> zeroinitializer, ptr %next.gep9, align 4, !tbaa !48, !alias.scope !167
  store <4 x i32> zeroinitializer, ptr %i.bi, align 4, !tbaa !48, !alias.scope !167
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i27.i.preheader34

.lr.ph.i27.i.preheader34:                         ; preds = %vector.memcheck, %.lr.ph.i27.i.preheader, %middle.block
  %.010.i28.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i27.i.preheader ], [ %i.bf, %middle.block ]
  %.079.i29.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i27.i.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i.preheader34, %.lr.ph.i27.i
  %.010.i28.i = phi ptr [ %i.bn, %.lr.ph.i27.i ], [ %.010.i28.i.ph, %.lr.ph.i27.i.preheader34 ] ; 2 uses
  %.079.i29.i = phi ptr [ %i.bm, %.lr.ph.i27.i ], [ %.079.i29.i.ph, %.lr.ph.i27.i.preheader34 ] ; 3 uses
  %i.bl = load i32, ptr %.079.i29.i, align 4, !tbaa !48
  store i32 %i.bl, ptr %.010.i28.i, align 4, !tbaa !48
  store i32 0, ptr %.079.i29.i, align 4, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i29.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i28.i, i64 4
  %.not.i30.i = icmp eq ptr %i.bm, %i.m
  br i1 %.not.i30.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i27.i, !llvm.loop !173

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %.lr.ph.i27.i, %middle.block, %bb.c
  %.not32.i = icmp eq ptr %2, %1
  br i1 %.not32.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.idx.i = sub i64 0, %i.q
  %i.bo = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %i.bp = trunc i64 %i.r to i16
  %i.bq = sub i16 %i.k, %i.bp
  store i16 %i.bq, ptr %i.j, align 2, !tbaa !73
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE5eraseEPS3_S9_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.033.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %i.bo, %.lr.ph.preheader.i ] ; 2 uses
  store i32 -2147483648, ptr %.033.i, align 4, !tbaa !48
  %i.br = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.bs = add i32 %i.br, -1
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bt, %i.m
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !174

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
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e ; 5 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !59   ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.l ; 5 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = sub i64 %i.g, %i.o                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = icmp ult i64 %i.i, %i.p
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not8.i = icmp eq ptr %i.f, %1
  br i1 %.not8.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %3 = add i64 %i.o, -4
  %4 = shl nuw nsw i64 %i.e, 2
  %i.t = add i64 %4, %i.b
  %i.u = sub i64 %3, %i.t                         ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check52 = icmp ult i64 %i.u, 92
  br i1 %min.iters.check52, label %.lr.ph.i.preheader67, label %vector.memcheck45

vector.memcheck45:                                ; preds = %.lr.ph.i.preheader
  %i.x = shl nuw nsw i64 %i.e, 2
  %i.y = add i64 %i.x, %i.b
  %reass.sub = sub i64 %i.y, %i.o
  %.not66 = add i64 %reass.sub, 3
  %i.z = and i64 %.not66, -4                      ; 2 uses
  %scevgep46 = getelementptr i8, ptr %2, i64 %i.z
  %scevgep47 = getelementptr i8, ptr %1, i64 %i.z
  %bound048 = icmp ult ptr %scevgep46, %1
  %bound149 = icmp ult ptr %scevgep47, %2
  %found.conflict50 = and i1 %bound048, %bound149
  br i1 %found.conflict50, label %.lr.ph.i.preheader67, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck45
  %n.vec54 = and i64 %i.w, 9223372036854775800    ; 3 uses
  %i.aa = mul i64 %n.vec54, -4                    ; 2 uses
  %i.ab = getelementptr i8, ptr %2, i64 %i.aa
  %i.ac = getelementptr i8, ptr %1, i64 %i.aa
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next61, %vector.body55 ] ; 2 uses
  %i.ad = mul i64 %index56, -4                    ; 2 uses
  %next.gep57 = getelementptr i8, ptr %2, i64 %i.ad ; 2 uses
  %next.gep58 = getelementptr i8, ptr %1, i64 %i.ad ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %next.gep58, i64 -16 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %next.gep58, i64 -32 ; 2 uses
  %wide.load59 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !48, !alias.scope !175
  %wide.load60 = load <4 x i32>, ptr %i.af, align 4, !tbaa !48, !alias.scope !175
  %i.ag = getelementptr inbounds i8, ptr %next.gep57, i64 -16
  %i.ah = getelementptr inbounds i8, ptr %next.gep57, i64 -32
  store <4 x i32> %wide.load59, ptr %i.ag, align 4, !tbaa !48, !alias.scope !178, !noalias !175
  store <4 x i32> %wide.load60, ptr %i.ah, align 4, !tbaa !48, !alias.scope !178, !noalias !175
  store <4 x i32> zeroinitializer, ptr %i.ae, align 4, !tbaa !48, !alias.scope !175
  store <4 x i32> zeroinitializer, ptr %i.af, align 4, !tbaa !48, !alias.scope !175
  %index.next61 = add nuw i64 %index56, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next61, %n.vec54
  br i1 %i.ai, label %middle.block62, label %vector.body55, !llvm.loop !180

middle.block62:                                   ; preds = %vector.body55
  %cmp.n63 = icmp eq i64 %i.w, %n.vec54
  br i1 %cmp.n63, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i.preheader67

.lr.ph.i.preheader67:                             ; preds = %vector.memcheck45, %.lr.ph.i.preheader, %middle.block62
  %.010.i.ph = phi ptr [ %2, %vector.memcheck45 ], [ %2, %.lr.ph.i.preheader ], [ %i.ab, %middle.block62 ]
  %.079.i.ph = phi ptr [ %1, %vector.memcheck45 ], [ %1, %.lr.ph.i.preheader ], [ %i.ac, %middle.block62 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader67, %.lr.ph.i
  %.010.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader67 ]
  %.079.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader67 ]
  %i.aj = getelementptr inbounds i8, ptr %.079.i, i64 -4 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.010.i, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !48
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !48
  store i32 0, ptr %i.aj, align 4, !tbaa !48
  %.not.i = icmp eq ptr %i.f, %i.aj
  br i1 %.not.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i, !llvm.loop !181

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i, %middle.block62, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  %.not2534 = icmp eq ptr %2, %1
  br i1 %.not2534, label %._crit_edge37, label %.lr.ph36

._crit_edge37:                                    ; preds = %.lr.ph36, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %i.an = trunc i64 %i.r to i16
  %i.ao = add i16 %i.d, %i.an
  store i16 %i.ao, ptr %i.c, align 8, !tbaa !125
  br label %bb.d

.lr.ph36:                                         ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, %.lr.ph36
  %.02335 = phi ptr [ %i.ar, %.lr.ph36 ], [ %i.f, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.02335, align 4, !tbaa !48
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %.02335, i64 4 ; 2 uses
  %.not25 = icmp eq ptr %i.ar, %i.am
  br i1 %.not25, label %._crit_edge37, label %.lr.ph36, !llvm.loop !166

bb.c:                                             ; preds = %bb.a
  %.not8.i26 = icmp eq ptr %2, %i.m
  br i1 %.not8.i26, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i27.preheader

.lr.ph.i27.preheader:                             ; preds = %bb.c
  %i.as = shl nuw nsw i64 %i.l, 2
  %i.at = add i64 %i.as, %i.b
  %i.au = add i64 %i.at, -4
  %i.av = sub i64 %i.au, %i.g                     ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 92
  br i1 %min.iters.check, label %.lr.ph.i27.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i27.preheader
  %i.ay = shl nuw nsw i64 %i.l, 2
  %i.az = add i64 %i.ay, %i.b
  %i.ba = add i64 %i.az, -4
  %i.bb = sub i64 %i.ba, %i.g
  %i.bc = and i64 %i.bb, -4
  %i.bd = add i64 %i.bc, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.bd
  %scevgep41 = getelementptr i8, ptr %2, i64 %i.bd
  %bound0 = icmp ult ptr %1, %scevgep41
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i27.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 3 uses
  %i.be = shl i64 %n.vec, 2                       ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %i.bg = getelementptr i8, ptr %2, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.bh ; 2 uses
  %next.gep42 = getelementptr i8, ptr %2, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !48, !alias.scope !182
  %wide.load43 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !48, !alias.scope !182
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !48, !alias.scope !185, !noalias !182
  store <4 x i32> %wide.load43, ptr %i.bj, align 4, !tbaa !48, !alias.scope !185, !noalias !182
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !48, !alias.scope !182
  store <4 x i32> zeroinitializer, ptr %i.bi, align 4, !tbaa !48, !alias.scope !182
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i27.preheader68

.lr.ph.i27.preheader68:                           ; preds = %vector.memcheck, %.lr.ph.i27.preheader, %middle.block
  %.010.i28.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i27.preheader ], [ %i.bf, %middle.block ]
  %.079.i29.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i27.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.preheader68, %.lr.ph.i27
  %.010.i28 = phi ptr [ %i.bn, %.lr.ph.i27 ], [ %.010.i28.ph, %.lr.ph.i27.preheader68 ] ; 2 uses
  %.079.i29 = phi ptr [ %i.bm, %.lr.ph.i27 ], [ %.079.i29.ph, %.lr.ph.i27.preheader68 ] ; 3 uses
  %i.bl = load i32, ptr %.079.i29, align 4, !tbaa !48
  store i32 %i.bl, ptr %.010.i28, align 4, !tbaa !48
  store i32 0, ptr %.079.i29, align 4, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i29, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i28, i64 4
  %.not.i30 = icmp eq ptr %i.bm, %i.m
  br i1 %.not.i30, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i27, !llvm.loop !188

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i27, %middle.block, %bb.c
  %.not32 = icmp eq ptr %2, %1
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %.idx = sub i64 0, %i.q
  %i.bo = getelementptr inbounds i8, ptr %i.m, i64 %.idx
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %i.bp = trunc i64 %i.r to i16
  %i.bq = sub i16 %i.k, %i.bp
  store i16 %i.bq, ptr %i.j, align 2, !tbaa !73
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.033 = phi ptr [ %i.bt, %.lr.ph ], [ %i.bo, %.lr.ph.preheader ] ; 2 uses
  store i32 -2147483648, ptr %.033, align 4, !tbaa !48
  %i.br = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.bs = add i32 %i.br, -1
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %.033, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !174

bb.d:                                             ; preds = %._crit_edge, %._crit_edge37
  %.024 = phi ptr [ %2, %._crit_edge37 ], [ %1, %._crit_edge ]
  ret ptr %.024
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12pos_to_indexEPKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !47
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  ret i64 %i.i
end_hunk_1
begin_hunk_2_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJRKS3_EEES8_EEvT_mSC_SC_mT0_RT1_:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader513, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = shl i64 %1, 2
  %i.bc = add i64 %i.bb, %i.c
  %i.bd = shl i64 %i.i, 2                         ; 2 uses
  %i.be = add i64 %i.bc, %i.bd
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.g, %i.b
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = and i64 %i.bh, -4                       ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 %i.bi
  %scevgep = getelementptr i8, ptr %i.bj, i64 4
  %i.bk = add i64 %i.g, %i.bi
  %i.bl = add i64 %i.bk, 4
  %i.bm = sub i64 %i.bl, %i.bd
  %scevgep416 = getelementptr i8, ptr %3, i64 %i.bm
  %bound0 = icmp ult ptr %0, %scevgep416
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader513, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 9223372036854775800     ; 3 uses
  %i.bn = shl i64 %n.vec, 2                       ; 2 uses
  %i.bo = getelementptr i8, ptr %0, i64 %i.bn     ; 2 uses
  %i.bp = getelementptr i8, ptr %i.as, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bq ; 2 uses
  %next.gep417 = getelementptr i8, ptr %i.as, i64 %i.bq ; 3 uses
  %i.br = getelementptr i8, ptr %next.gep417, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep417, align 4, !tbaa !48, !alias.scope !208
  %wide.load418 = load <4 x i32>, ptr %i.br, align 4, !tbaa !48, !alias.scope !208
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !48, !alias.scope !211, !noalias !208
  store <4 x i32> %wide.load418, ptr %i.bs, align 4, !tbaa !48, !alias.scope !211, !noalias !208
  store <4 x i32> zeroinitializer, ptr %next.gep417, align 4, !tbaa !48, !alias.scope !208
  store <4 x i32> zeroinitializer, ptr %i.br, align 4, !tbaa !48, !alias.scope !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader513

.lr.ph.i.i.preheader513:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.preheader ], [ %i.bo, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader513, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader513 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader513 ] ; 3 uses
  %i.bu = load i32, ptr %.079.i.i, align 4, !tbaa !48
  store i32 %i.bu, ptr %.010.i.i, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i, align 4, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i, !llvm.loop !214

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %i.bx = phi ptr [ %0, %bb.e ], [ %i.bo, %middle.block ], [ %i.bw, %.lr.ph.i.i ] ; 2 uses
  %.not3.i = icmp eq ptr %i.bx, %i.a
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i211
  %storemerge4.i = phi ptr [ %i.ca, %.lr.ph.i211 ], [ %i.bx, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !48
  %i.by = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i212 = icmp eq ptr %i.ca, %i.a
  br i1 %.not.i212, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %.lr.ph.i211, !llvm.loop !215

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i202, %bb.c
  %.not.i215 = icmp eq i64 %1, 0
  br i1 %.not.i215, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cb = phi i64 [ %i.cc, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i216.prol = phi ptr [ %i.cf, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cc = add i64 %i.cb, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i216.prol, align 4, !tbaa !48
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i216.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !216

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cc, %.preheader.prol ]
  %.0.i216.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cf, %.preheader.prol ]
  %i.cg = icmp ult i64 %1, 4
  br i1 %i.cg, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.ch = phi i64 [ %i.cp, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i216 = phi ptr [ %i.cr, %.preheader ], [ %.0.i216.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i216, align 4, !tbaa !48
  %i.ci = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i216, i64 4
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !48
  %i.cl = add i32 %i.ci, -2
  store i32 %i.cl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i216, i64 8
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !48
  %i.cn = add i32 %i.ci, -3
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i216, i64 12
  %i.cp = add i64 %i.ch, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !48
  %i.cq = add i32 %i.ci, -4
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i216, i64 16
  %.not3.i217.3 = icmp eq i64 %i.cp, 0
  br i1 %.not3.i217.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %.preheader, !llvm.loop !217

bb.f:                                             ; preds = %bb.a
  %i.cs = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not178 = icmp ugt i64 %i.h, %i.e
  br i1 %.not178, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i227 = icmp eq ptr %0, %2
  br i1 %.not17.i227, label %.loopexit352, label %.lr.ph.i228.preheader

.lr.ph.i228.preheader:                            ; preds = %bb.g
  %i.ct = and i64 %i.g, 4
  %lcmp.mod521.not = icmp eq i64 %i.ct, 0
  br i1 %lcmp.mod521.not, label %.lr.ph.i228.prol.loopexit, label %.lr.ph.i228.prol

.lr.ph.i228.prol:                                 ; preds = %.lr.ph.i228.preheader
  %i.cu = add nsw i64 %i.h, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.cv = load i32, ptr %0, align 4, !tbaa !48
  store i32 %i.cv, ptr %2, align 4, !tbaa !48
  store i32 0, ptr %0, align 4, !tbaa !48
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %.lr.ph.i228.prol.loopexit

.lr.ph.i228.prol.loopexit:                        ; preds = %.lr.ph.i228.prol, %.lr.ph.i228.preheader
  %.020.i229.unr = phi i64 [ %i.h, %.lr.ph.i228.preheader ], [ %i.cu, %.lr.ph.i228.prol ]
  %.0819.i230.unr = phi ptr [ %0, %.lr.ph.i228.preheader ], [ %i.cy, %.lr.ph.i228.prol ]
  %.01618.i231.unr = phi ptr [ %2, %.lr.ph.i228.preheader ], [ %i.cz, %.lr.ph.i228.prol ]
  %i.da = icmp eq i64 %i.g, 4
  br i1 %i.da, label %.loopexit352, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %.lr.ph.i228.prol.loopexit, %.lr.ph.i228
  %.020.i229 = phi i64 [ %i.dg, %.lr.ph.i228 ], [ %.020.i229.unr, %.lr.ph.i228.prol.loopexit ]
  %.0819.i230 = phi ptr [ %i.dk, %.lr.ph.i228 ], [ %.0819.i230.unr, %.lr.ph.i228.prol.loopexit ] ; 4 uses
  %.01618.i231 = phi ptr [ %i.dl, %.lr.ph.i228 ], [ %.01618.i231.unr, %.lr.ph.i228.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i231) ]
  %i.db = load i32, ptr %.0819.i230, align 4, !tbaa !48
  store i32 %i.db, ptr %.01618.i231, align 4, !tbaa !48
  store i32 0, ptr %.0819.i230, align 4, !tbaa !48
  %i.dc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 4
  %i.dg = add i64 %.020.i229, -2                  ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !48
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !48
  store i32 0, ptr %i.de, align 4, !tbaa !48
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dk = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 8
  %.not.i232.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.i232.1, label %.loopexit352, label %.lr.ph.i228, !llvm.loop !130

.loopexit352:                                     ; preds = %.lr.ph.i228.prol.loopexit, %.lr.ph.i228, %bb.g
  %i.dm = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %0, i64 %i.g ; 6 uses
  %.not8.i = icmp eq ptr %i.dn, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %.loopexit352
  %7 = add i64 %i.b, %i.f
  %i.do = add i64 %7, -4
  %8 = shl i64 %i.c, 1
  %i.dp = sub i64 %i.do, %8                       ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check427 = icmp ult i64 %i.dp, 124
  br i1 %min.iters.check427, label %.lr.ph.i235.preheader510, label %vector.memcheck420

vector.memcheck420:                               ; preds = %.lr.ph.i235.preheader
  %i.ds = add i64 %i.b, %i.f
  %i.dt = add i64 %i.ds, -4
  %i.du = shl i64 %i.c, 1
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = and i64 %i.dv, -4                       ; 2 uses
  %i.dx = getelementptr i8, ptr %0, i64 %i.dw
  %scevgep421 = getelementptr i8, ptr %i.dx, i64 4
  %i.dy = add i64 %i.dw, %i.c
  %i.dz = add i64 %i.dy, 4
  %i.ea = sub i64 %i.dz, %i.f
  %scevgep422 = getelementptr i8, ptr %0, i64 %i.ea
  %bound0423 = icmp ult ptr %0, %scevgep422
  %bound1424 = icmp ult ptr %i.dn, %scevgep421
  %found.conflict425 = and i1 %bound0423, %bound1424
  br i1 %found.conflict425, label %.lr.ph.i235.preheader510, label %vector.ph428

vector.ph428:                                     ; preds = %vector.memcheck420
  %n.vec429 = and i64 %i.dr, 9223372036854775800  ; 3 uses
  %i.eb = shl i64 %n.vec429, 2                    ; 2 uses
  %i.ec = getelementptr i8, ptr %0, i64 %i.eb     ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dn, i64 %i.eb
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next436, %vector.body430 ] ; 2 uses
  %i.ee = shl i64 %index431, 2                    ; 2 uses
  %next.gep432 = getelementptr i8, ptr %0, i64 %i.ee ; 2 uses
  %next.gep433 = getelementptr i8, ptr %i.dn, i64 %i.ee ; 3 uses
  %i.ef = getelementptr i8, ptr %next.gep433, i64 16 ; 2 uses
  %wide.load434 = load <4 x i32>, ptr %next.gep433, align 4, !tbaa !48, !alias.scope !218
  %wide.load435 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !48, !alias.scope !218
  %i.eg = getelementptr i8, ptr %next.gep432, i64 16
  store <4 x i32> %wide.load434, ptr %next.gep432, align 4, !tbaa !48, !alias.scope !221, !noalias !218
  store <4 x i32> %wide.load435, ptr %i.eg, align 4, !tbaa !48, !alias.scope !221, !noalias !218
  store <4 x i32> zeroinitializer, ptr %next.gep433, align 4, !tbaa !48, !alias.scope !218
  store <4 x i32> zeroinitializer, ptr %i.ef, align 4, !tbaa !48, !alias.scope !218
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.eh = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.eh, label %middle.block437, label %vector.body430, !llvm.loop !223

middle.block437:                                  ; preds = %vector.body430
  %cmp.n438 = icmp eq i64 %i.dr, %n.vec429
  br i1 %cmp.n438, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i235.preheader510

.lr.ph.i235.preheader510:                         ; preds = %vector.memcheck420, %.lr.ph.i235.preheader, %middle.block437
  %.010.i.ph = phi ptr [ %0, %vector.memcheck420 ], [ %0, %.lr.ph.i235.preheader ], [ %i.ec, %middle.block437 ]
  %.079.i.ph = phi ptr [ %i.dn, %vector.memcheck420 ], [ %i.dn, %.lr.ph.i235.preheader ], [ %i.ed, %middle.block437 ]
  br label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235.preheader510, %.lr.ph.i235
  %.010.i = phi ptr [ %i.ek, %.lr.ph.i235 ], [ %.010.i.ph, %.lr.ph.i235.preheader510 ] ; 2 uses
  %.079.i = phi ptr [ %i.ej, %.lr.ph.i235 ], [ %.079.i.ph, %.lr.ph.i235.preheader510 ] ; 3 uses
  %i.ei = load i32, ptr %.079.i, align 4, !tbaa !48
  store i32 %i.ei, ptr %.010.i, align 4, !tbaa !48
  store i32 0, ptr %.079.i, align 4, !tbaa !48
  %i.ej = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i236 = icmp eq ptr %i.ej, %3
  br i1 %.not.i236, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i235, !llvm.loop !224

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i235, %middle.block437, %.loopexit352
  %.0.lcssa.i = phi ptr [ %0, %.loopexit352 ], [ %i.ec, %middle.block437 ], [ %i.ek, %.lr.ph.i235 ] ; 3 uses
  %i.el = load i32, ptr %5, align 4, !tbaa !48    ; 2 uses
  store i32 %i.el, ptr %.0.lcssa.i, align 4, !tbaa !48
  br i1 %i.cs, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %i.em = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %i.dm ; 7 uses
  %.not.i237 = icmp eq ptr %3, %i.em
  br i1 %.not.i237, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i238 = icmp eq ptr %3, %i.a
  br i1 %.not8.i.i238, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit243, label %.lr.ph.i.i239.preheader

.lr.ph.i.i239.preheader:                          ; preds = %bb.i
  %i.en = shl i64 %1, 2
  %i.eo = add i64 %i.en, %i.c
  %i.ep = add i64 %i.eo, -4
  %i.eq = sub i64 %i.ep, %i.b                     ; 2 uses
  %i.er = lshr i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check448 = icmp ult i64 %i.eq, 124
  br i1 %min.iters.check448, label %.lr.ph.i.i239.preheader508, label %vector.memcheck441

vector.memcheck441:                               ; preds = %.lr.ph.i.i239.preheader
  %i.et = shl i64 %i.dm, 2
  %i.eu = shl i64 %1, 2
  %i.ev = add i64 %i.eu, %i.c
  %i.ew = add i64 %i.ev, -4
  %i.ex = sub i64 %i.ew, %i.b
  %i.ey = and i64 %i.ex, -4                       ; 2 uses
  %i.ez = getelementptr i8, ptr %.0.lcssa.i, i64 %i.et
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.ey
  %scevgep442 = getelementptr i8, ptr %i.fa, i64 4
  %i.fb = getelementptr i8, ptr %3, i64 %i.ey
  %scevgep443 = getelementptr i8, ptr %i.fb, i64 4
  %bound0444 = icmp ult ptr %i.em, %scevgep443
  %bound1445 = icmp ult ptr %3, %scevgep442
  %found.conflict446 = and i1 %bound0444, %bound1445
  br i1 %found.conflict446, label %.lr.ph.i.i239.preheader508, label %vector.ph449

vector.ph449:                                     ; preds = %vector.memcheck441
  %n.vec450 = and i64 %i.es, 9223372036854775800  ; 3 uses
  %i.fc = shl i64 %n.vec450, 2                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.em, i64 %i.fc  ; 2 uses
  %i.fe = getelementptr i8, ptr %3, i64 %i.fc
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph449
  %index452 = phi i64 [ 0, %vector.ph449 ], [ %index.next457, %vector.body451 ] ; 2 uses
  %i.ff = shl i64 %index452, 2                    ; 2 uses
  %next.gep453 = getelementptr i8, ptr %i.em, i64 %i.ff ; 2 uses
  %next.gep454 = getelementptr i8, ptr %3, i64 %i.ff ; 3 uses
  %i.fg = getelementptr i8, ptr %next.gep454, i64 16 ; 2 uses
  %wide.load455 = load <4 x i32>, ptr %next.gep454, align 4, !tbaa !48, !alias.scope !225
  %wide.load456 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !48, !alias.scope !225
  %i.fh = getelementptr i8, ptr %next.gep453, i64 16
  store <4 x i32> %wide.load455, ptr %next.gep453, align 4, !tbaa !48, !alias.scope !228, !noalias !225
  store <4 x i32> %wide.load456, ptr %i.fh, align 4, !tbaa !48, !alias.scope !228, !noalias !225
  store <4 x i32> zeroinitializer, ptr %next.gep454, align 4, !tbaa !48, !alias.scope !225
  store <4 x i32> zeroinitializer, ptr %i.fg, align 4, !tbaa !48, !alias.scope !225
  %index.next457 = add nuw i64 %index452, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next457, %n.vec450
  br i1 %i.fi, label %middle.block458, label %vector.body451, !llvm.loop !230

middle.block458:                                  ; preds = %vector.body451
  %cmp.n459 = icmp eq i64 %i.es, %n.vec450
  br i1 %cmp.n459, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit243, label %.lr.ph.i.i239.preheader508

.lr.ph.i.i239.preheader508:                       ; preds = %vector.memcheck441, %.lr.ph.i.i239.preheader, %middle.block458
  %.010.i.i240.ph = phi ptr [ %i.em, %vector.memcheck441 ], [ %i.em, %.lr.ph.i.i239.preheader ], [ %i.fd, %middle.block458 ]
  %.079.i.i241.ph = phi ptr [ %3, %vector.memcheck441 ], [ %3, %.lr.ph.i.i239.preheader ], [ %i.fe, %middle.block458 ]
  br label %.lr.ph.i.i239

.lr.ph.i.i239:                                    ; preds = %.lr.ph.i.i239.preheader508, %.lr.ph.i.i239
  %.010.i.i240 = phi ptr [ %i.fl, %.lr.ph.i.i239 ], [ %.010.i.i240.ph, %.lr.ph.i.i239.preheader508 ] ; 2 uses
  %.079.i.i241 = phi ptr [ %i.fk, %.lr.ph.i.i239 ], [ %.079.i.i241.ph, %.lr.ph.i.i239.preheader508 ] ; 3 uses
  %i.fj = load i32, ptr %.079.i.i241, align 4, !tbaa !48
  store i32 %i.fj, ptr %.010.i.i240, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i241, align 4, !tbaa !48
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i241, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.010.i.i240, i64 4 ; 2 uses
  %.not.i.i242 = icmp eq ptr %i.fk, %i.a
  br i1 %.not.i.i242, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit243, label %.lr.ph.i.i239, !llvm.loop !231

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit243: ; preds = %.lr.ph.i.i239, %middle.block458, %bb.i
  %i.fm = phi ptr [ %i.em, %bb.i ], [ %i.fd, %middle.block458 ], [ %i.fl, %.lr.ph.i.i239 ] ; 2 uses
  %.not3.i244 = icmp eq ptr %i.fm, %i.a
  br i1 %.not3.i244, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %.lr.ph.i245

.lr.ph.i245:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit243, %.lr.ph.i245
  %storemerge4.i246 = phi ptr [ %i.fp, %.lr.ph.i245 ], [ %i.fm, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit243 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i246, align 4, !tbaa !48
  %i.fn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fo = add i32 %i.fn, -1
  store i32 %i.fo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fp = getelementptr inbounds nuw i8, ptr %storemerge4.i246, i64 4 ; 2 uses
  %.not.i247 = icmp eq ptr %i.fp, %i.a
  br i1 %.not.i247, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %.lr.ph.i245, !llvm.loop !215

bb.j:                                             ; preds = %bb.f
  %.not16.i249 = icmp eq ptr %0, %3
  br i1 %.not16.i249, label %.loopexit, label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %bb.j, %.lr.ph.i250
  %.018.i251 = phi ptr [ %i.ft, %.lr.ph.i250 ], [ %0, %bb.j ] ; 3 uses
  %.01517.i252 = phi ptr [ %i.fu, %.lr.ph.i250 ], [ %2, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i252) ]
  %i.fq = load i32, ptr %.018.i251, align 4, !tbaa !48
  store i32 %i.fq, ptr %.01517.i252, align 4, !tbaa !48
  store i32 0, ptr %.018.i251, align 4, !tbaa !48
  %i.fr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ft = getelementptr inbounds nuw i8, ptr %.018.i251, i64 4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.01517.i252, i64 4 ; 2 uses
  %.not.i253 = icmp eq ptr %i.ft, %3
  br i1 %.not.i253, label %.loopexit, label %.lr.ph.i250, !llvm.loop !127

.loopexit:                                        ; preds = %.lr.ph.i250, %bb.j
  %.015.lcssa.i254 = phi ptr [ %2, %bb.j ], [ %i.fu, %.lr.ph.i250 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i254) ]
  %i.fv = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.fv, ptr %.015.lcssa.i254, align 4, !tbaa !48
  %i.fw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  br i1 %i.cs, label %_ZN5boost9container13destroy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_S9_.exit248, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %.neg = sub nsw i64 %i.e, %i.h
  %i.fy = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.fy, ptr %0, align 4, !tbaa !48
  %i.fz = getelementptr [4 x i8], ptr %0, i64 %.neg
  %i.ga = getelementptr [4 x i8], ptr %i.fz, i64 %4 ; 7 uses
  %.not.i256 = icmp eq ptr %3, %i.ga
  br i1 %.not.i256, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not8.i.i257 = icmp eq ptr %3, %i.a
  br i1 %.not8.i.i257, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit262, label %.lr.ph.i.i258.preheader

.lr.ph.i.i258.preheader:                          ; preds = %bb.l
  %i.gb = shl i64 %1, 2
  %i.gc = add i64 %i.gb, %i.c
  %i.gd = add i64 %i.gc, -4
  %i.ge = sub i64 %i.gd, %i.b                     ; 2 uses
  %i.gf = lshr i64 %i.ge, 2
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check469 = icmp ult i64 %i.ge, 140
  br i1 %min.iters.check469, label %.lr.ph.i.i258.preheader505, label %vector.memcheck462

vector.memcheck462:                               ; preds = %.lr.ph.i.i258.preheader
  %i.gh = shl i64 %4, 2
  %i.gi = add i64 %i.d, %i.gh
  %i.gj = shl i64 %1, 2
  %i.gk = add i64 %i.gj, %i.c
  %i.gl = add i64 %i.gk, -4
  %i.gm = sub i64 %i.gl, %i.b
  %i.gn = and i64 %i.gm, -4                       ; 2 uses
  %i.go = add i64 %i.gi, %i.gn
  %i.gp = add i64 %i.go, 4
  %i.gq = sub i64 %i.gp, %i.g
  %scevgep463 = getelementptr i8, ptr %0, i64 %i.gq
  %i.gr = getelementptr i8, ptr %3, i64 %i.gn
  %scevgep464 = getelementptr i8, ptr %i.gr, i64 4
  %bound0465 = icmp ult ptr %i.ga, %scevgep464
  %bound1466 = icmp ult ptr %3, %scevgep463
  %found.conflict467 = and i1 %bound0465, %bound1466
  br i1 %found.conflict467, label %.lr.ph.i.i258.preheader505, label %vector.ph470

vector.ph470:                                     ; preds = %vector.memcheck462
  %n.vec471 = and i64 %i.gg, 9223372036854775800  ; 3 uses
  %i.gs = shl i64 %n.vec471, 2                    ; 2 uses
  %i.gt = getelementptr i8, ptr %i.ga, i64 %i.gs  ; 2 uses
  %i.gu = getelementptr i8, ptr %3, i64 %i.gs
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph470
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next478, %vector.body472 ] ; 2 uses
  %i.gv = shl i64 %index473, 2                    ; 2 uses
  %next.gep474 = getelementptr i8, ptr %i.ga, i64 %i.gv ; 2 uses
  %next.gep475 = getelementptr i8, ptr %3, i64 %i.gv ; 3 uses
  %i.gw = getelementptr i8, ptr %next.gep475, i64 16 ; 2 uses
  %wide.load476 = load <4 x i32>, ptr %next.gep475, align 4, !tbaa !48, !alias.scope !232
  %wide.load477 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !48, !alias.scope !232
  %i.gx = getelementptr i8, ptr %next.gep474, i64 16
  store <4 x i32> %wide.load476, ptr %next.gep474, align 4, !tbaa !48, !alias.scope !235, !noalias !232
  store <4 x i32> %wide.load477, ptr %i.gx, align 4, !tbaa !48, !alias.scope !235, !noalias !232
  store <4 x i32> zeroinitializer, ptr %next.gep475, align 4, !tbaa !48, !alias.scope !232
  store <4 x i32> zeroinitializer, ptr %i.gw, align 4, !tbaa !48, !alias.scope !232
  %index.next478 = add nuw i64 %index473, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.gy, label %middle.block479, label %vector.body472, !llvm.loop !237

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.gg, %n.vec471
  br i1 %cmp.n480, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit262, label %.lr.ph.i.i258.preheader505

.lr.ph.i.i258.preheader505:                       ; preds = %vector.memcheck462, %.lr.ph.i.i258.preheader, %middle.block479
  %.010.i.i259.ph = phi ptr [ %i.ga, %vector.memcheck462 ], [ %i.ga, %.lr.ph.i.i258.preheader ], [ %i.gt, %middle.block479 ]
  %.079.i.i260.ph = phi ptr [ %3, %vector.memcheck462 ], [ %3, %.lr.ph.i.i258.preheader ], [ %i.gu, %middle.block479 ]
  br label %.lr.ph.i.i258

.lr.ph.i.i258:                                    ; preds = %.lr.ph.i.i258.preheader505, %.lr.ph.i.i258
  %.010.i.i259 = phi ptr [ %i.hb, %.lr.ph.i.i258 ], [ %.010.i.i259.ph, %.lr.ph.i.i258.preheader505 ] ; 2 uses
  %.079.i.i260 = phi ptr [ %i.ha, %.lr.ph.i.i258 ], [ %.079.i.i260.ph, %.lr.ph.i.i258.preheader505 ] ; 3 uses
  %i.gz = load i32, ptr %.079.i.i260, align 4, !tbaa !48
  store i32 %i.gz, ptr %.010.i.i259, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i260, align 4, !tbaa !48
  %i.ha = getelementptr inbounds nuw i8, ptr %.079.i.i260, i64 4 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i259, i64 4 ; 2 uses
  %.not.i.i261 = icmp eq ptr %i.ha, %i.a
  br i1 %.not.i.i261, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit262, label %.lr.ph.i.i258, !llvm.loop !238

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit262: ; preds = %.lr.ph.i.i258, %middle.block479, %bb.l
  %i.hc = phi ptr [ %i.ga, %bb.l ], [ %i.gt, %middle.block479 ], [ %i.hb, %.lr.ph.i.i258 ] ; 2 uses
  %.not3.i263 = icmp eq ptr %i.hc, %i.a
  br i1 %.not3.i263, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit262, %.lr.ph.i264
  %storemerge4.i265 = phi ptr [ %i.hf, %.lr.ph.i264 ], [ %i.hc, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit262 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i265, align 4, !tbaa !48
  %i.hd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.he = add i32 %i.hd, -1
  store i32 %i.he, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hf = getelementptr inbounds nuw i8, ptr %storemerge4.i265, i64 4 ; 2 uses
  %.not.i266 = icmp eq ptr %i.hf, %i.a
  br i1 %.not.i266, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218, label %.lr.ph.i264, !llvm.loop !215

_ZN5boost9container13destroy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_S9_.exit248: ; preds = %.loopexit
  %i.hg = load i32, ptr %5, align 4, !tbaa !48    ; 2 uses
  store i32 %i.hg, ptr %0, align 4, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost9container13destroy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_S9_.exit248, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %i.hh = phi i32 [ %i.hg, %_ZN5boost9container13destroy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_S9_.exit248 ], [ %i.el, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit ]
  %i.hi = sub nuw i64 %4, %i.h                    ; 3 uses
  %i.hj = sub i64 %1, %i.e                        ; 2 uses
  %.not185 = icmp ult i64 %i.hj, %i.hi
  br i1 %.not185, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  %.neg350 = mul i64 %i.hi, -4                    ; 2 uses
  %i.hk = getelementptr i8, ptr %i.a, i64 %.neg350 ; 7 uses
  %.not16.i276 = icmp eq i64 %.neg350, 0
  br i1 %.not16.i276, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i277

.lr.ph.i277:                                      ; preds = %bb.m, %.lr.ph.i277
  %.018.i278 = phi ptr [ %i.ho, %.lr.ph.i277 ], [ %i.hk, %bb.m ] ; 3 uses
  %.01517.i279 = phi ptr [ %i.hp, %.lr.ph.i277 ], [ %i.a, %bb.m ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i279) ]
  %i.hl = load i32, ptr %.018.i278, align 4, !tbaa !48
  store i32 %i.hl, ptr %.01517.i279, align 4, !tbaa !48
  store i32 0, ptr %.018.i278, align 4, !tbaa !48
  %i.hm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hn = add i32 %i.hm, 1
  store i32 %i.hn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ho = getelementptr inbounds nuw i8, ptr %.018.i278, i64 4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.01517.i279, i64 4
  %.not.i280 = icmp eq ptr %i.ho, %i.a
  br i1 %.not.i280, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit282, label %.lr.ph.i277, !llvm.loop !127

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit282: ; preds = %.lr.ph.i277
  %.not8.i.i284 = icmp eq ptr %3, %i.hk
  br i1 %.not8.i.i284, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i285.preheader

.lr.ph.i.i285.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit282
  %i.hq = shl i64 %1, 2
  %9 = add i64 %i.g, %i.c
  %i.hr = add i64 %9, %i.hq
  %i.hs = add i64 %i.hr, -4
  %10 = shl i64 %4, 2
  %i.ht = add i64 %10, %i.b
  %i.hu = sub i64 %i.hs, %i.ht                    ; 2 uses
  %i.hv = lshr i64 %i.hu, 2
  %i.hw = add nuw nsw i64 %i.hv, 1                ; 2 uses
  %min.iters.check490 = icmp ult i64 %i.hu, 172
  br i1 %min.iters.check490, label %.lr.ph.i.i285.preheader504, label %vector.memcheck483

vector.memcheck483:                               ; preds = %.lr.ph.i.i285.preheader
  %i.hx = shl i64 %1, 2                           ; 3 uses
  %i.hy = add i64 %i.hx, -4
  %i.hz = add i64 %i.g, %i.c
  %i.ia = add i64 %i.hz, %i.hx
  %i.ib = add i64 %i.ia, -4
  %i.ic = shl i64 %4, 2                           ; 2 uses
  %i.id = add i64 %i.ic, %i.b
  %i.ie = sub i64 %i.ib, %i.id
  %i.if = and i64 %i.ie, -4                       ; 2 uses
  %i.ig = sub i64 %i.hy, %i.if
  %scevgep484 = getelementptr i8, ptr %0, i64 %i.ig
  %i.ih = add i64 %i.g, %i.hx
  %i.ii = add i64 %i.ih, -4
  %i.ij = add i64 %i.ic, %i.if
  %i.ik = sub i64 %i.ii, %i.ij
  %scevgep485 = getelementptr i8, ptr %0, i64 %i.ik
  %bound0486 = icmp ult ptr %scevgep484, %i.hk
  %bound1487 = icmp ult ptr %scevgep485, %i.a
  %found.conflict488 = and i1 %bound0486, %bound1487
  br i1 %found.conflict488, label %.lr.ph.i.i285.preheader504, label %vector.ph491

vector.ph491:                                     ; preds = %vector.memcheck483
  %n.vec492 = and i64 %i.hw, 9223372036854775800  ; 3 uses
  %i.il = mul i64 %n.vec492, -4                   ; 2 uses
  %i.im = getelementptr i8, ptr %i.a, i64 %i.il
  %i.in = getelementptr i8, ptr %i.hk, i64 %i.il
  br label %vector.body493

vector.body493:                                   ; preds = %vector.body493, %vector.ph491
  %index494 = phi i64 [ 0, %vector.ph491 ], [ %index.next499, %vector.body493 ] ; 2 uses
  %i.io = mul i64 %index494, -4                   ; 2 uses
  %next.gep495 = getelementptr i8, ptr %i.a, i64 %i.io ; 2 uses
  %next.gep496 = getelementptr i8, ptr %i.hk, i64 %i.io ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %next.gep496, i64 -16 ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %next.gep496, i64 -32 ; 2 uses
  %wide.load497 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !48, !alias.scope !239
  %wide.load498 = load <4 x i32>, ptr %i.iq, align 4, !tbaa !48, !alias.scope !239
  %i.ir = getelementptr inbounds i8, ptr %next.gep495, i64 -16
  %i.is = getelementptr inbounds i8, ptr %next.gep495, i64 -32
  store <4 x i32> %wide.load497, ptr %i.ir, align 4, !tbaa !48, !alias.scope !242, !noalias !239
  store <4 x i32> %wide.load498, ptr %i.is, align 4, !tbaa !48, !alias.scope !242, !noalias !239
  store <4 x i32> zeroinitializer, ptr %i.ip, align 4, !tbaa !48, !alias.scope !239
  store <4 x i32> zeroinitializer, ptr %i.iq, align 4, !tbaa !48, !alias.scope !239
  %index.next499 = add nuw i64 %index494, 8       ; 2 uses
  %i.it = icmp eq i64 %index.next499, %n.vec492
  br i1 %i.it, label %middle.block500, label %vector.body493, !llvm.loop !244

middle.block500:                                  ; preds = %vector.body493
  %cmp.n501 = icmp eq i64 %i.hw, %n.vec492
  br i1 %cmp.n501, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i285.preheader504

.lr.ph.i.i285.preheader504:                       ; preds = %vector.memcheck483, %.lr.ph.i.i285.preheader, %middle.block500
  %.010.i.i286.ph = phi ptr [ %i.a, %vector.memcheck483 ], [ %i.a, %.lr.ph.i.i285.preheader ], [ %i.im, %middle.block500 ]
  %.079.i.i287.ph = phi ptr [ %i.hk, %vector.memcheck483 ], [ %i.hk, %.lr.ph.i.i285.preheader ], [ %i.in, %middle.block500 ]
  br label %.lr.ph.i.i285

.lr.ph.i.i285:                                    ; preds = %.lr.ph.i.i285.preheader504, %.lr.ph.i.i285
  %.010.i.i286 = phi ptr [ %i.iv, %.lr.ph.i.i285 ], [ %.010.i.i286.ph, %.lr.ph.i.i285.preheader504 ]
  %.079.i.i287 = phi ptr [ %i.iu, %.lr.ph.i.i285 ], [ %.079.i.i287.ph, %.lr.ph.i.i285.preheader504 ]
  %i.iu = getelementptr inbounds i8, ptr %.079.i.i287, i64 -4 ; 4 uses
  %i.iv = getelementptr inbounds i8, ptr %.010.i.i286, i64 -4 ; 2 uses
  %i.iw = load i32, ptr %i.iu, align 4, !tbaa !48
  store i32 %i.iw, ptr %i.iv, align 4, !tbaa !48
  store i32 0, ptr %i.iu, align 4, !tbaa !48
  %.not.i.i288 = icmp eq ptr %3, %i.iu
  br i1 %.not.i.i288, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i285, !llvm.loop !245

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i285, %middle.block500, %bb.m, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit282
  %i.ix = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.ix, ptr %3, align 4, !tbaa !48
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218

bb.n:                                             ; preds = %.critedge
  %.not16.i289 = icmp eq ptr %3, %i.a
  br i1 %.not16.i289, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299, label %.lr.ph.i290.preheader

.lr.ph.i290.preheader:                            ; preds = %bb.n
  %i.iy = sub nuw i64 %i.hi, %i.hj
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.iy
  br label %.lr.ph.i290

.lr.ph.i290:                                      ; preds = %.lr.ph.i290.preheader, %.lr.ph.i290
  %.018.i291 = phi ptr [ %i.jd, %.lr.ph.i290 ], [ %3, %.lr.ph.i290.preheader ] ; 3 uses
  %.01517.i292 = phi ptr [ %i.je, %.lr.ph.i290 ], [ %i.iz, %.lr.ph.i290.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i292) ]
  %i.ja = load i32, ptr %.018.i291, align 4, !tbaa !48
  store i32 %i.ja, ptr %.01517.i292, align 4, !tbaa !48
  store i32 0, ptr %.018.i291, align 4, !tbaa !48
  %i.jb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jd = getelementptr inbounds nuw i8, ptr %.018.i291, i64 4 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.01517.i292, i64 4
  %.not.i293 = icmp eq ptr %i.jd, %i.a
  br i1 %.not.i293, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299.loopexit, label %.lr.ph.i290, !llvm.loop !127

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299.loopexit: ; preds = %.lr.ph.i290
  %.pre = load i32, ptr %5, align 4, !tbaa !48
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299: ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299.loopexit, %bb.n
  %i.jf = phi i32 [ %.pre, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299.loopexit ], [ %i.hh, %bb.n ]
  store i32 %i.jf, ptr %3, align 4, !tbaa !48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.jg = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.jg, ptr %i.a, align 4, !tbaa !48
  %i.jh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ji = add i32 %i.jh, 1
  store i32 %i.ji, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit218: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i211, %.lr.ph.i245, %.lr.ph.i264, %bb.k, %bb.h, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit243, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit262, %.loopexit354, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit299, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvT0_mSC_SC_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 9 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 27 uses
  %i.e = add i64 %4, %1                           ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 4 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %3 to i64                   ; 9 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = sub nsw i64 0, %i.j
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub i64 %i.l, %i.g                       ; 5 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 8 uses
  %i.o = add i64 %i.j, %4                         ; 6 uses
  %.not = icmp ult i64 %i.n, %i.o
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sub i64 0, %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.r = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.r, ptr %i.q, align 4, !tbaa !48
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %.not16.i = icmp eq ptr %3, %i.d
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.y, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 3 uses
  %.01517.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.u, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.v = load i32, ptr %.018.i, align 4, !tbaa !48
  store i32 %i.v, ptr %.01517.i, align 4, !tbaa !48
  store i32 0, ptr %.018.i, align 4, !tbaa !48
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !127

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.not123 = icmp ult i64 %i.n, %i.e
  br i1 %.not123, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i128 = icmp eq ptr %0, %3
  br i1 %.not16.i128, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %bb.c, %.lr.ph.i129
  %.018.i130 = phi ptr [ %i.ad, %.lr.ph.i129 ], [ %0, %bb.c ] ; 3 uses
  %.01517.i131 = phi ptr [ %i.ae, %.lr.ph.i129 ], [ %2, %bb.c ] ; 2 uses
  %i.aa = load i32, ptr %.018.i130, align 4, !tbaa !48
  store i32 %i.aa, ptr %.01517.i131, align 4, !tbaa !48
  store i32 0, ptr %.018.i130, align 4, !tbaa !48
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %.018.i130, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01517.i131, i64 4
  %.not.i132 = icmp eq ptr %i.ad, %3
  br i1 %.not.i132, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i129, !llvm.loop !127

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.af = sub i64 %i.n, %i.o                      ; 5 uses
  %i.ag = sub i64 0, %i.af                        ; 3 uses
  %i.ah = getelementptr [4 x i8], ptr %3, i64 %i.ag ; 11 uses
  %.not17.i = icmp eq i64 %i.af, 0
end_hunk_2
begin_hunk_3_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvT0_mSC_SC_mT1_RT_:bb.a
  %i.cu = add i32 %i.cm, -4
  store i32 %i.cu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i143, i64 16
  %.not3.i144.3 = icmp eq i64 %i.ct, 0
  br i1 %.not3.i144.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.preheader, !llvm.loop !217

bb.e:                                             ; preds = %bb.a
  %i.cw = icmp ugt i64 %i.n, %i.j
  br i1 %i.cw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i154 = icmp eq ptr %3, %i.d
  br i1 %.not16.i154, label %.loopexit, label %.lr.ph.i155.preheader

.lr.ph.i155.preheader:                            ; preds = %bb.f
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155.preheader, %.lr.ph.i155
  %.018.i156 = phi ptr [ %i.db, %.lr.ph.i155 ], [ %3, %.lr.ph.i155.preheader ] ; 3 uses
  %.01517.i157 = phi ptr [ %i.dc, %.lr.ph.i155 ], [ %i.cx, %.lr.ph.i155.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i157) ]
  %i.cy = load i32, ptr %.018.i156, align 4, !tbaa !48
  store i32 %i.cy, ptr %.01517.i157, align 4, !tbaa !48
  store i32 0, ptr %.018.i156, align 4, !tbaa !48
  %i.cz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.db = getelementptr inbounds nuw i8, ptr %.018.i156, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01517.i157, i64 4
  %.not.i158 = icmp eq ptr %i.db, %i.d
  br i1 %.not.i158, label %.loopexit, label %.lr.ph.i155, !llvm.loop !127

.loopexit:                                        ; preds = %.lr.ph.i155, %bb.f
  %.neg244 = sub i64 %i.n, %i.o
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.neg244 ; 8 uses
  %i.de = load i32, ptr %5, align 4, !tbaa !48    ; 2 uses
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.de, ptr %i.d, align 4, !tbaa !48
  %i.df = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %.not.i161 = icmp eq ptr %3, %i.dd
  br i1 %.not.i161, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i162 = icmp eq ptr %0, %3
  br i1 %.not8.i.i162, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.g
  %i.dh = add i64 %i.h, -4
  %i.di = sub i64 %i.dh, %i.b                     ; 2 uses
  %i.dj = lshr i64 %i.di, 2
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check341 = icmp ult i64 %i.di, 140
  br i1 %min.iters.check341, label %.lr.ph.i.i163.preheader355, label %vector.memcheck334

vector.memcheck334:                               ; preds = %.lr.ph.i.i163.preheader
  %i.dl = shl nsw i64 %1, 2
  %i.dm = add i64 %i.m, %i.dl
  %i.dn = add i64 %i.dm, -4
  %i.do = add i64 %i.h, -4
  %i.dp = sub i64 %i.do, %i.b
  %i.dq = and i64 %i.dp, -4                       ; 2 uses
  %i.dr = shl i64 %i.o, 2
  %i.ds = add i64 %i.dq, %i.dr
  %i.dt = sub i64 %i.dn, %i.ds
  %scevgep335 = getelementptr i8, ptr %0, i64 %i.dt
  %i.du = sub nuw nsw i64 -4, %i.dq
  %scevgep336 = getelementptr i8, ptr %3, i64 %i.du
  %bound0337 = icmp ult ptr %scevgep335, %3
  %bound1338 = icmp ult ptr %scevgep336, %i.dd
  %found.conflict339 = and i1 %bound0337, %bound1338
  br i1 %found.conflict339, label %.lr.ph.i.i163.preheader355, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck334
  %n.vec343 = and i64 %i.dk, 9223372036854775800  ; 3 uses
  %i.dv = mul i64 %n.vec343, -4                   ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dd, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %3, i64 %i.dv
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next350, %vector.body344 ] ; 2 uses
  %i.dy = mul i64 %index345, -4                   ; 2 uses
  %next.gep346 = getelementptr i8, ptr %i.dd, i64 %i.dy ; 2 uses
  %next.gep347 = getelementptr i8, ptr %3, i64 %i.dy ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %next.gep347, i64 -16 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %next.gep347, i64 -32 ; 2 uses
  %wide.load348 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !48, !alias.scope !254
  %wide.load349 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !48, !alias.scope !254
  %i.eb = getelementptr inbounds i8, ptr %next.gep346, i64 -16
  %i.ec = getelementptr inbounds i8, ptr %next.gep346, i64 -32
  store <4 x i32> %wide.load348, ptr %i.eb, align 4, !tbaa !48, !alias.scope !257, !noalias !254
  store <4 x i32> %wide.load349, ptr %i.ec, align 4, !tbaa !48, !alias.scope !257, !noalias !254
  store <4 x i32> zeroinitializer, ptr %i.dz, align 4, !tbaa !48, !alias.scope !254
  store <4 x i32> zeroinitializer, ptr %i.ea, align 4, !tbaa !48, !alias.scope !254
  %index.next350 = add nuw i64 %index345, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next350, %n.vec343
  br i1 %i.ed, label %middle.block351, label %vector.body344, !llvm.loop !259

middle.block351:                                  ; preds = %vector.body344
  %cmp.n352 = icmp eq i64 %i.dk, %n.vec343
  br i1 %cmp.n352, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader355

.lr.ph.i.i163.preheader355:                       ; preds = %vector.memcheck334, %.lr.ph.i.i163.preheader, %middle.block351
  %.010.i.i164.ph = phi ptr [ %i.dd, %vector.memcheck334 ], [ %i.dd, %.lr.ph.i.i163.preheader ], [ %i.dw, %middle.block351 ]
  %.079.i.i165.ph = phi ptr [ %3, %vector.memcheck334 ], [ %3, %.lr.ph.i.i163.preheader ], [ %i.dx, %middle.block351 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader355, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.ef, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader355 ]
  %.079.i.i165 = phi ptr [ %i.ee, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader355 ]
  %i.ee = getelementptr inbounds i8, ptr %.079.i.i165, i64 -4 ; 4 uses
  %i.ef = getelementptr inbounds i8, ptr %.010.i.i164, i64 -4 ; 3 uses
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !48
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !48
  store i32 0, ptr %i.ee, align 4, !tbaa !48
  %.not.i.i166 = icmp eq ptr %0, %i.ee
  br i1 %.not.i.i166, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163, !llvm.loop !260

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167: ; preds = %.lr.ph.i.i163, %middle.block351, %bb.g
  %i.eh = phi ptr [ %i.dd, %bb.g ], [ %i.dw, %middle.block351 ], [ %i.ef, %.lr.ph.i.i163 ] ; 2 uses
  %.not3.i168 = icmp eq ptr %0, %i.eh
  br i1 %.not3.i168, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %.lr.ph.i169
  %storemerge4.i170 = phi ptr [ %i.ek, %.lr.ph.i169 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i170, align 4, !tbaa !48
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ek = getelementptr inbounds nuw i8, ptr %storemerge4.i170, i64 4 ; 2 uses
  %.not.i171 = icmp eq ptr %i.ek, %i.eh
  br i1 %.not.i171, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.lr.ph.i169, !llvm.loop !215

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.m
  %i.el = getelementptr i8, ptr %i.d, i64 %.idx   ; 10 uses
  %.not17.i181 = icmp eq ptr %i.f, %i.d
  br i1 %.not17.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %bb.h
  %i.em = and i64 %i.m, 4
  %lcmp.mod368.not = icmp eq i64 %i.em, 0
  br i1 %lcmp.mod368.not, label %.lr.ph.i182.prol.loopexit, label %.lr.ph.i182.prol

.lr.ph.i182.prol:                                 ; preds = %.lr.ph.i182.preheader
  %i.en = add nsw i64 %i.n, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.eo = load i32, ptr %i.el, align 4, !tbaa !48
  store i32 %i.eo, ptr %i.d, align 4, !tbaa !48
  store i32 0, ptr %i.el, align 4, !tbaa !48
  %i.ep = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph.i182.prol.loopexit

.lr.ph.i182.prol.loopexit:                        ; preds = %.lr.ph.i182.prol, %.lr.ph.i182.preheader
  %.020.i183.unr = phi i64 [ %i.n, %.lr.ph.i182.preheader ], [ %i.en, %.lr.ph.i182.prol ]
  %.0819.i184.unr = phi ptr [ %i.el, %.lr.ph.i182.preheader ], [ %i.er, %.lr.ph.i182.prol ]
  %.01618.i185.unr = phi ptr [ %i.d, %.lr.ph.i182.preheader ], [ %i.es, %.lr.ph.i182.prol ]
  %i.et = icmp eq i64 %i.m, 4
  br i1 %i.et, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.prol.loopexit, %.lr.ph.i182
  %.020.i183 = phi i64 [ %i.ez, %.lr.ph.i182 ], [ %.020.i183.unr, %.lr.ph.i182.prol.loopexit ]
  %.0819.i184 = phi ptr [ %i.fd, %.lr.ph.i182 ], [ %.0819.i184.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  %.01618.i185 = phi ptr [ %i.fe, %.lr.ph.i182 ], [ %.01618.i185.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i185) ]
  %i.eu = load i32, ptr %.0819.i184, align 4, !tbaa !48
  store i32 %i.eu, ptr %.01618.i185, align 4, !tbaa !48
  store i32 0, ptr %.0819.i184, align 4, !tbaa !48
  %i.ev = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ex = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 4
  %i.ez = add i64 %.020.i183, -2                  ; 2 uses
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !48
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !48
  store i32 0, ptr %i.ex, align 4, !tbaa !48
  %i.fb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fd = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 8
  %.not.i186.1 = icmp eq i64 %i.ez, 0
  br i1 %.not.i186.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182, !llvm.loop !130

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188: ; preds = %.lr.ph.i182, %.lr.ph.i182.prol.loopexit
  %.not8.i.i190 = icmp eq ptr %3, %i.el
  br i1 %.not8.i.i190, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader

.lr.ph.i.i191.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.ff = shl nsw i64 %1, 2
  %i.fg = shl i64 %i.b, 1
  %7 = add i64 %i.ff, %i.fg
  %i.fh = add i64 %7, -4
  %i.fi = add i64 %i.a, %i.h
  %8 = shl i64 %4, 2
  %i.fj = add i64 %i.fi, %8
  %i.fk = sub i64 %i.fh, %i.fj                    ; 2 uses
  %i.fl = lshr i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check299 = icmp ult i64 %i.fk, 188
  br i1 %min.iters.check299, label %.lr.ph.i.i191.preheader359, label %vector.memcheck292

vector.memcheck292:                               ; preds = %.lr.ph.i.i191.preheader
  %i.fn = shl nsw i64 %1, 2                       ; 3 uses
  %i.fo = add i64 %i.fn, -4
  %i.fp = shl i64 %i.b, 1
  %i.fq = add i64 %i.fn, %i.fp
  %i.fr = add i64 %i.fq, -4
  %i.fs = add i64 %i.a, %i.h
  %i.ft = shl i64 %4, 2                           ; 2 uses
  %i.fu = add i64 %i.fs, %i.ft
  %i.fv = sub i64 %i.fr, %i.fu
  %i.fw = and i64 %i.fv, -4                       ; 2 uses
  %i.fx = sub i64 %i.fo, %i.fw
  %scevgep293 = getelementptr i8, ptr %0, i64 %i.fx
  %i.fy = add i64 %i.fn, %i.b
  %i.fz = add i64 %i.fy, -4
  %i.ga = add i64 %i.ft, %i.a
  %i.gb = add i64 %i.ga, %i.fw
  %i.gc = sub i64 %i.fz, %i.gb
  %scevgep294 = getelementptr i8, ptr %0, i64 %i.gc
  %bound0295 = icmp ult ptr %scevgep293, %i.el
  %bound1296 = icmp ult ptr %scevgep294, %i.d
  %found.conflict297 = and i1 %bound0295, %bound1296
  br i1 %found.conflict297, label %.lr.ph.i.i191.preheader359, label %vector.ph300

vector.ph300:                                     ; preds = %vector.memcheck292
  %n.vec301 = and i64 %i.fm, 9223372036854775800  ; 3 uses
  %i.gd = mul i64 %n.vec301, -4                   ; 2 uses
  %i.ge = getelementptr i8, ptr %i.d, i64 %i.gd   ; 2 uses
  %i.gf = getelementptr i8, ptr %i.el, i64 %i.gd
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph300
  %index303 = phi i64 [ 0, %vector.ph300 ], [ %index.next308, %vector.body302 ] ; 2 uses
  %i.gg = mul i64 %index303, -4                   ; 2 uses
  %next.gep304 = getelementptr i8, ptr %i.d, i64 %i.gg ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.el, i64 %i.gg ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %next.gep305, i64 -16 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %next.gep305, i64 -32 ; 2 uses
  %wide.load306 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !48, !alias.scope !261
  %wide.load307 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !48, !alias.scope !261
  %i.gj = getelementptr inbounds i8, ptr %next.gep304, i64 -16
  %i.gk = getelementptr inbounds i8, ptr %next.gep304, i64 -32
  store <4 x i32> %wide.load306, ptr %i.gj, align 4, !tbaa !48, !alias.scope !264, !noalias !261
  store <4 x i32> %wide.load307, ptr %i.gk, align 4, !tbaa !48, !alias.scope !264, !noalias !261
  store <4 x i32> zeroinitializer, ptr %i.gh, align 4, !tbaa !48, !alias.scope !261
  store <4 x i32> zeroinitializer, ptr %i.gi, align 4, !tbaa !48, !alias.scope !261
  %index.next308 = add nuw i64 %index303, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.gl, label %middle.block309, label %vector.body302, !llvm.loop !266

middle.block309:                                  ; preds = %vector.body302
  %cmp.n310 = icmp eq i64 %i.fm, %n.vec301
  br i1 %cmp.n310, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader359

.lr.ph.i.i191.preheader359:                       ; preds = %vector.memcheck292, %.lr.ph.i.i191.preheader, %middle.block309
  %.010.i.i192.ph = phi ptr [ %i.d, %vector.memcheck292 ], [ %i.d, %.lr.ph.i.i191.preheader ], [ %i.ge, %middle.block309 ]
  %.079.i.i193.ph = phi ptr [ %i.el, %vector.memcheck292 ], [ %i.el, %.lr.ph.i.i191.preheader ], [ %i.gf, %middle.block309 ]
  br label %.lr.ph.i.i191

.lr.ph.i.i191:                                    ; preds = %.lr.ph.i.i191.preheader359, %.lr.ph.i.i191
  %.010.i.i192 = phi ptr [ %i.gn, %.lr.ph.i.i191 ], [ %.010.i.i192.ph, %.lr.ph.i.i191.preheader359 ]
  %.079.i.i193 = phi ptr [ %i.gm, %.lr.ph.i.i191 ], [ %.079.i.i193.ph, %.lr.ph.i.i191.preheader359 ]
  %i.gm = getelementptr inbounds i8, ptr %.079.i.i193, i64 -4 ; 4 uses
  %i.gn = getelementptr inbounds i8, ptr %.010.i.i192, i64 -4 ; 3 uses
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !48
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !48
  store i32 0, ptr %i.gm, align 4, !tbaa !48
  %.not.i.i194 = icmp eq ptr %3, %i.gm
  br i1 %.not.i.i194, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191, !llvm.loop !267

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195: ; preds = %.lr.ph.i.i191, %middle.block309, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.gp = phi ptr [ %3, %bb.h ], [ %i.d, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188 ], [ %i.ge, %middle.block309 ], [ %i.gn, %.lr.ph.i.i191 ] ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.c ; 8 uses
  %i.gr = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !48
  %.not.i196 = icmp eq ptr %3, %i.gq
  br i1 %.not.i196, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195
  %.not8.i.i197 = icmp eq ptr %0, %3
  br i1 %.not8.i.i197, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader

.lr.ph.i.i198.preheader:                          ; preds = %bb.i
  %i.gs = add i64 %i.h, -4
  %i.gt = sub i64 %i.gs, %i.b                     ; 2 uses
  %i.gu = lshr i64 %i.gt, 2
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %min.iters.check320 = icmp ult i64 %i.gt, 108
  br i1 %min.iters.check320, label %.lr.ph.i.i198.preheader357, label %vector.memcheck313

vector.memcheck313:                               ; preds = %.lr.ph.i.i198.preheader
  %i.gw = shl i64 %4, 2
  %i.gx = add i64 %i.h, -4
  %i.gy = sub i64 %i.gx, %i.b
  %i.gz = and i64 %i.gy, -4                       ; 2 uses
  %i.ha = add i64 %i.gw, %i.gz
  %i.hb = sub nuw nsw i64 -4, %i.ha
  %scevgep314 = getelementptr i8, ptr %i.gp, i64 %i.hb
  %i.hc = sub nuw nsw i64 -4, %i.gz
  %scevgep315 = getelementptr i8, ptr %3, i64 %i.hc
  %bound0316 = icmp ult ptr %scevgep314, %3
  %bound1317 = icmp ult ptr %scevgep315, %i.gq
  %found.conflict318 = and i1 %bound0316, %bound1317
  br i1 %found.conflict318, label %.lr.ph.i.i198.preheader357, label %vector.ph321

vector.ph321:                                     ; preds = %vector.memcheck313
  %n.vec322 = and i64 %i.gv, 9223372036854775800  ; 3 uses
  %i.hd = mul i64 %n.vec322, -4                   ; 2 uses
  %i.he = getelementptr i8, ptr %i.gq, i64 %i.hd  ; 2 uses
  %i.hf = getelementptr i8, ptr %3, i64 %i.hd
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next329, %vector.body323 ] ; 2 uses
  %i.hg = mul i64 %index324, -4                   ; 2 uses
  %next.gep325 = getelementptr i8, ptr %i.gq, i64 %i.hg ; 2 uses
  %next.gep326 = getelementptr i8, ptr %3, i64 %i.hg ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %next.gep326, i64 -16 ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %next.gep326, i64 -32 ; 2 uses
  %wide.load327 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !48, !alias.scope !268
  %wide.load328 = load <4 x i32>, ptr %i.hi, align 4, !tbaa !48, !alias.scope !268
  %i.hj = getelementptr inbounds i8, ptr %next.gep325, i64 -16
  %i.hk = getelementptr inbounds i8, ptr %next.gep325, i64 -32
  store <4 x i32> %wide.load327, ptr %i.hj, align 4, !tbaa !48, !alias.scope !271, !noalias !268
  store <4 x i32> %wide.load328, ptr %i.hk, align 4, !tbaa !48, !alias.scope !271, !noalias !268
  store <4 x i32> zeroinitializer, ptr %i.hh, align 4, !tbaa !48, !alias.scope !268
  store <4 x i32> zeroinitializer, ptr %i.hi, align 4, !tbaa !48, !alias.scope !268
  %index.next329 = add nuw i64 %index324, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next329, %n.vec322
  br i1 %i.hl, label %middle.block330, label %vector.body323, !llvm.loop !273

middle.block330:                                  ; preds = %vector.body323
  %cmp.n331 = icmp eq i64 %i.gv, %n.vec322
  br i1 %cmp.n331, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader357

.lr.ph.i.i198.preheader357:                       ; preds = %vector.memcheck313, %.lr.ph.i.i198.preheader, %middle.block330
  %.010.i.i199.ph = phi ptr [ %i.gq, %vector.memcheck313 ], [ %i.gq, %.lr.ph.i.i198.preheader ], [ %i.he, %middle.block330 ]
  %.079.i.i200.ph = phi ptr [ %3, %vector.memcheck313 ], [ %3, %.lr.ph.i.i198.preheader ], [ %i.hf, %middle.block330 ]
  br label %.lr.ph.i.i198

.lr.ph.i.i198:                                    ; preds = %.lr.ph.i.i198.preheader357, %.lr.ph.i.i198
  %.010.i.i199 = phi ptr [ %i.hn, %.lr.ph.i.i198 ], [ %.010.i.i199.ph, %.lr.ph.i.i198.preheader357 ]
  %.079.i.i200 = phi ptr [ %i.hm, %.lr.ph.i.i198 ], [ %.079.i.i200.ph, %.lr.ph.i.i198.preheader357 ]
  %i.hm = getelementptr inbounds i8, ptr %.079.i.i200, i64 -4 ; 4 uses
  %i.hn = getelementptr inbounds i8, ptr %.010.i.i199, i64 -4 ; 3 uses
  %i.ho = load i32, ptr %i.hm, align 4, !tbaa !48
  store i32 %i.ho, ptr %i.hn, align 4, !tbaa !48
  store i32 0, ptr %i.hm, align 4, !tbaa !48
  %.not.i.i201 = icmp eq ptr %0, %i.hm
  br i1 %.not.i.i201, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198, !llvm.loop !274

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202: ; preds = %.lr.ph.i.i198, %middle.block330, %bb.i
  %i.hp = phi ptr [ %i.gq, %bb.i ], [ %i.he, %middle.block330 ], [ %i.hn, %.lr.ph.i.i198 ] ; 2 uses
  %.not3.i203 = icmp eq ptr %0, %i.hp
  br i1 %.not3.i203, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %.lr.ph.i204
  %storemerge4.i205 = phi ptr [ %i.hs, %.lr.ph.i204 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i205, align 4, !tbaa !48
  %i.hq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hr = add i32 %i.hq, -1
  store i32 %i.hr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hs = getelementptr inbounds nuw i8, ptr %storemerge4.i205, i64 4 ; 2 uses
  %.not.i206 = icmp eq ptr %i.hs, %i.hp
  br i1 %.not.i206, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145, label %.lr.ph.i204, !llvm.loop !215

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit145: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i138, %.lr.ph.i204, %.lr.ph.i169, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !61   ; 3 uses
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !59   ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = sub nsw i64 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %i.j = zext i16 %i.i to i64                     ; 5 uses
  %i.k = add nsw i64 %i.g, %i.j                   ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j ; 3 uses
  %.not = icmp ult i64 %i.k, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw i64 %i.k, %2
  %i.o = udiv i16 %i.b, 10
  %.zext = zext nneg i16 %i.o to i64
  %.not51 = icmp ult i64 %i.n, %.zext
  br i1 %.not51, label %bb.f, label %bb.c
end_hunk_3
begin_hunk_4_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEES8_EEvT_mSA_SA_mT0_RT1_:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader519, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = shl i64 %1, 2
  %i.bc = add i64 %i.bb, %i.c
  %i.bd = shl i64 %i.i, 2                         ; 2 uses
  %i.be = add i64 %i.bc, %i.bd
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.g, %i.b
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = and i64 %i.bh, -4                       ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 %i.bi
  %scevgep = getelementptr i8, ptr %i.bj, i64 4
  %i.bk = add i64 %i.g, %i.bi
  %i.bl = add i64 %i.bk, 4
  %i.bm = sub i64 %i.bl, %i.bd
  %scevgep422 = getelementptr i8, ptr %3, i64 %i.bm
  %bound0 = icmp ult ptr %0, %scevgep422
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader519, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 9223372036854775800     ; 3 uses
  %i.bn = shl i64 %n.vec, 2                       ; 2 uses
  %i.bo = getelementptr i8, ptr %0, i64 %i.bn     ; 2 uses
  %i.bp = getelementptr i8, ptr %i.as, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bq ; 2 uses
  %next.gep423 = getelementptr i8, ptr %i.as, i64 %i.bq ; 3 uses
  %i.br = getelementptr i8, ptr %next.gep423, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep423, align 4, !tbaa !48, !alias.scope !275
  %wide.load424 = load <4 x i32>, ptr %i.br, align 4, !tbaa !48, !alias.scope !275
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !48, !alias.scope !278, !noalias !275
  store <4 x i32> %wide.load424, ptr %i.bs, align 4, !tbaa !48, !alias.scope !278, !noalias !275
  store <4 x i32> zeroinitializer, ptr %next.gep423, align 4, !tbaa !48, !alias.scope !275
  store <4 x i32> zeroinitializer, ptr %i.br, align 4, !tbaa !48, !alias.scope !275
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader519

.lr.ph.i.i.preheader519:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.preheader ], [ %i.bo, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader519, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader519 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader519 ] ; 3 uses
  %i.bu = load i32, ptr %.079.i.i, align 4, !tbaa !48
  store i32 %i.bu, ptr %.010.i.i, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i, align 4, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i, !llvm.loop !281

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %i.bx = phi ptr [ %0, %bb.e ], [ %i.bo, %middle.block ], [ %i.bw, %.lr.ph.i.i ] ; 2 uses
  %.not3.i = icmp eq ptr %i.bx, %i.a
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %.lr.ph.i216

.lr.ph.i216:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i216
  %storemerge4.i = phi ptr [ %i.ca, %.lr.ph.i216 ], [ %i.bx, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !48
  %i.by = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i217 = icmp eq ptr %i.ca, %i.a
  br i1 %.not.i217, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %.lr.ph.i216, !llvm.loop !215

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i207, %bb.c
  %.not.i220 = icmp eq i64 %1, 0
  br i1 %.not.i220, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cb = phi i64 [ %i.cc, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i221.prol = phi ptr [ %i.cf, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cc = add i64 %i.cb, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i221.prol, align 4, !tbaa !48
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i221.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !282

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cc, %.preheader.prol ]
  %.0.i221.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cf, %.preheader.prol ]
  %i.cg = icmp ult i64 %1, 4
  br i1 %i.cg, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.ch = phi i64 [ %i.cp, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i221 = phi ptr [ %i.cr, %.preheader ], [ %.0.i221.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i221, align 4, !tbaa !48
  %i.ci = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i221, i64 4
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !48
  %i.cl = add i32 %i.ci, -2
  store i32 %i.cl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i221, i64 8
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !48
  %i.cn = add i32 %i.ci, -3
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i221, i64 12
  %i.cp = add i64 %i.ch, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !48
  %i.cq = add i32 %i.ci, -4
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i221, i64 16
  %.not3.i222.3 = icmp eq i64 %i.cp, 0
  br i1 %.not3.i222.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %.preheader, !llvm.loop !217

bb.f:                                             ; preds = %bb.a
  %i.cs = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not180 = icmp ugt i64 %i.h, %i.e
  br i1 %.not180, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i232 = icmp eq ptr %0, %2
  br i1 %.not17.i232, label %.loopexit358, label %.lr.ph.i233.preheader

.lr.ph.i233.preheader:                            ; preds = %bb.g
  %i.ct = and i64 %i.g, 4
  %lcmp.mod527.not = icmp eq i64 %i.ct, 0
  br i1 %lcmp.mod527.not, label %.lr.ph.i233.prol.loopexit, label %.lr.ph.i233.prol

.lr.ph.i233.prol:                                 ; preds = %.lr.ph.i233.preheader
  %i.cu = add nsw i64 %i.h, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.cv = load i32, ptr %0, align 4, !tbaa !48
  store i32 %i.cv, ptr %2, align 4, !tbaa !48
  store i32 0, ptr %0, align 4, !tbaa !48
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %.lr.ph.i233.prol.loopexit

.lr.ph.i233.prol.loopexit:                        ; preds = %.lr.ph.i233.prol, %.lr.ph.i233.preheader
  %.020.i234.unr = phi i64 [ %i.h, %.lr.ph.i233.preheader ], [ %i.cu, %.lr.ph.i233.prol ]
  %.0819.i235.unr = phi ptr [ %0, %.lr.ph.i233.preheader ], [ %i.cy, %.lr.ph.i233.prol ]
  %.01618.i236.unr = phi ptr [ %2, %.lr.ph.i233.preheader ], [ %i.cz, %.lr.ph.i233.prol ]
  %i.da = icmp eq i64 %i.g, 4
  br i1 %i.da, label %.loopexit358, label %.lr.ph.i233

.lr.ph.i233:                                      ; preds = %.lr.ph.i233.prol.loopexit, %.lr.ph.i233
  %.020.i234 = phi i64 [ %i.dg, %.lr.ph.i233 ], [ %.020.i234.unr, %.lr.ph.i233.prol.loopexit ]
  %.0819.i235 = phi ptr [ %i.dk, %.lr.ph.i233 ], [ %.0819.i235.unr, %.lr.ph.i233.prol.loopexit ] ; 4 uses
  %.01618.i236 = phi ptr [ %i.dl, %.lr.ph.i233 ], [ %.01618.i236.unr, %.lr.ph.i233.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i236) ]
  %i.db = load i32, ptr %.0819.i235, align 4, !tbaa !48
  store i32 %i.db, ptr %.01618.i236, align 4, !tbaa !48
  store i32 0, ptr %.0819.i235, align 4, !tbaa !48
  %i.dc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %.0819.i235, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.01618.i236, i64 4
  %i.dg = add i64 %.020.i234, -2                  ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !48
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !48
  store i32 0, ptr %i.de, align 4, !tbaa !48
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dk = getelementptr inbounds nuw i8, ptr %.0819.i235, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.01618.i236, i64 8
  %.not.i237.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.i237.1, label %.loopexit358, label %.lr.ph.i233, !llvm.loop !130

.loopexit358:                                     ; preds = %.lr.ph.i233.prol.loopexit, %.lr.ph.i233, %bb.g
  %i.dm = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %0, i64 %i.g ; 6 uses
  %.not8.i = icmp eq ptr %i.dn, %3
  br i1 %.not8.i, label %.loopexit357, label %.lr.ph.i240.preheader

.lr.ph.i240.preheader:                            ; preds = %.loopexit358
  %7 = add i64 %i.b, %i.f
  %i.do = add i64 %7, -4
  %8 = shl i64 %i.c, 1
  %i.dp = sub i64 %i.do, %8                       ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check433 = icmp ult i64 %i.dp, 124
  br i1 %min.iters.check433, label %.lr.ph.i240.preheader516, label %vector.memcheck426

vector.memcheck426:                               ; preds = %.lr.ph.i240.preheader
  %i.ds = add i64 %i.b, %i.f
  %i.dt = add i64 %i.ds, -4
  %i.du = shl i64 %i.c, 1
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = and i64 %i.dv, -4                       ; 2 uses
  %i.dx = getelementptr i8, ptr %0, i64 %i.dw
  %scevgep427 = getelementptr i8, ptr %i.dx, i64 4
  %i.dy = add i64 %i.dw, %i.c
  %i.dz = add i64 %i.dy, 4
  %i.ea = sub i64 %i.dz, %i.f
  %scevgep428 = getelementptr i8, ptr %0, i64 %i.ea
  %bound0429 = icmp ult ptr %0, %scevgep428
  %bound1430 = icmp ult ptr %i.dn, %scevgep427
  %found.conflict431 = and i1 %bound0429, %bound1430
  br i1 %found.conflict431, label %.lr.ph.i240.preheader516, label %vector.ph434

vector.ph434:                                     ; preds = %vector.memcheck426
  %n.vec435 = and i64 %i.dr, 9223372036854775800  ; 3 uses
  %i.eb = shl i64 %n.vec435, 2                    ; 2 uses
  %i.ec = getelementptr i8, ptr %0, i64 %i.eb     ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dn, i64 %i.eb
  br label %vector.body436

vector.body436:                                   ; preds = %vector.body436, %vector.ph434
  %index437 = phi i64 [ 0, %vector.ph434 ], [ %index.next442, %vector.body436 ] ; 2 uses
  %i.ee = shl i64 %index437, 2                    ; 2 uses
  %next.gep438 = getelementptr i8, ptr %0, i64 %i.ee ; 2 uses
  %next.gep439 = getelementptr i8, ptr %i.dn, i64 %i.ee ; 3 uses
  %i.ef = getelementptr i8, ptr %next.gep439, i64 16 ; 2 uses
  %wide.load440 = load <4 x i32>, ptr %next.gep439, align 4, !tbaa !48, !alias.scope !283
  %wide.load441 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !48, !alias.scope !283
  %i.eg = getelementptr i8, ptr %next.gep438, i64 16
  store <4 x i32> %wide.load440, ptr %next.gep438, align 4, !tbaa !48, !alias.scope !286, !noalias !283
  store <4 x i32> %wide.load441, ptr %i.eg, align 4, !tbaa !48, !alias.scope !286, !noalias !283
  store <4 x i32> zeroinitializer, ptr %next.gep439, align 4, !tbaa !48, !alias.scope !283
  store <4 x i32> zeroinitializer, ptr %i.ef, align 4, !tbaa !48, !alias.scope !283
  %index.next442 = add nuw i64 %index437, 8       ; 2 uses
  %i.eh = icmp eq i64 %index.next442, %n.vec435
  br i1 %i.eh, label %middle.block443, label %vector.body436, !llvm.loop !288

middle.block443:                                  ; preds = %vector.body436
  %cmp.n444 = icmp eq i64 %i.dr, %n.vec435
  br i1 %cmp.n444, label %.loopexit357, label %.lr.ph.i240.preheader516

.lr.ph.i240.preheader516:                         ; preds = %vector.memcheck426, %.lr.ph.i240.preheader, %middle.block443
  %.010.i.ph = phi ptr [ %0, %vector.memcheck426 ], [ %0, %.lr.ph.i240.preheader ], [ %i.ec, %middle.block443 ]
  %.079.i.ph = phi ptr [ %i.dn, %vector.memcheck426 ], [ %i.dn, %.lr.ph.i240.preheader ], [ %i.ed, %middle.block443 ]
  br label %.lr.ph.i240

.lr.ph.i240:                                      ; preds = %.lr.ph.i240.preheader516, %.lr.ph.i240
  %.010.i = phi ptr [ %i.ek, %.lr.ph.i240 ], [ %.010.i.ph, %.lr.ph.i240.preheader516 ] ; 2 uses
  %.079.i = phi ptr [ %i.ej, %.lr.ph.i240 ], [ %.079.i.ph, %.lr.ph.i240.preheader516 ] ; 3 uses
  %i.ei = load i32, ptr %.079.i, align 4, !tbaa !48
  store i32 %i.ei, ptr %.010.i, align 4, !tbaa !48
  store i32 0, ptr %.079.i, align 4, !tbaa !48
  %i.ej = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i241 = icmp eq ptr %i.ej, %3
  br i1 %.not.i241, label %.loopexit357, label %.lr.ph.i240, !llvm.loop !289

.loopexit357:                                     ; preds = %.lr.ph.i240, %middle.block443, %.loopexit358
  %.0.lcssa.i = phi ptr [ %0, %.loopexit358 ], [ %i.ec, %middle.block443 ], [ %i.ek, %.lr.ph.i240 ] ; 3 uses
  %i.el = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.el, ptr %.0.lcssa.i, align 4, !tbaa !48
  store i32 0, ptr %5, align 4, !tbaa !48
  br i1 %i.cs, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.loopexit357
  %i.em = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %i.dm ; 7 uses
  %.not.i242 = icmp eq ptr %3, %i.em
  br i1 %.not.i242, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i243 = icmp eq ptr %3, %i.a
  br i1 %.not8.i.i243, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit248, label %.lr.ph.i.i244.preheader

.lr.ph.i.i244.preheader:                          ; preds = %bb.i
  %i.en = shl i64 %1, 2
  %i.eo = add i64 %i.en, %i.c
  %i.ep = add i64 %i.eo, -4
  %i.eq = sub i64 %i.ep, %i.b                     ; 2 uses
  %i.er = lshr i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check454 = icmp ult i64 %i.eq, 124
  br i1 %min.iters.check454, label %.lr.ph.i.i244.preheader514, label %vector.memcheck447

vector.memcheck447:                               ; preds = %.lr.ph.i.i244.preheader
  %i.et = shl i64 %i.dm, 2
  %i.eu = shl i64 %1, 2
  %i.ev = add i64 %i.eu, %i.c
  %i.ew = add i64 %i.ev, -4
  %i.ex = sub i64 %i.ew, %i.b
  %i.ey = and i64 %i.ex, -4                       ; 2 uses
  %i.ez = getelementptr i8, ptr %.0.lcssa.i, i64 %i.et
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.ey
  %scevgep448 = getelementptr i8, ptr %i.fa, i64 4
  %i.fb = getelementptr i8, ptr %3, i64 %i.ey
  %scevgep449 = getelementptr i8, ptr %i.fb, i64 4
  %bound0450 = icmp ult ptr %i.em, %scevgep449
  %bound1451 = icmp ult ptr %3, %scevgep448
  %found.conflict452 = and i1 %bound0450, %bound1451
  br i1 %found.conflict452, label %.lr.ph.i.i244.preheader514, label %vector.ph455

vector.ph455:                                     ; preds = %vector.memcheck447
  %n.vec456 = and i64 %i.es, 9223372036854775800  ; 3 uses
  %i.fc = shl i64 %n.vec456, 2                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.em, i64 %i.fc  ; 2 uses
  %i.fe = getelementptr i8, ptr %3, i64 %i.fc
  br label %vector.body457

vector.body457:                                   ; preds = %vector.body457, %vector.ph455
  %index458 = phi i64 [ 0, %vector.ph455 ], [ %index.next463, %vector.body457 ] ; 2 uses
  %i.ff = shl i64 %index458, 2                    ; 2 uses
  %next.gep459 = getelementptr i8, ptr %i.em, i64 %i.ff ; 2 uses
  %next.gep460 = getelementptr i8, ptr %3, i64 %i.ff ; 3 uses
  %i.fg = getelementptr i8, ptr %next.gep460, i64 16 ; 2 uses
  %wide.load461 = load <4 x i32>, ptr %next.gep460, align 4, !tbaa !48, !alias.scope !290
  %wide.load462 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !48, !alias.scope !290
  %i.fh = getelementptr i8, ptr %next.gep459, i64 16
  store <4 x i32> %wide.load461, ptr %next.gep459, align 4, !tbaa !48, !alias.scope !293, !noalias !290
  store <4 x i32> %wide.load462, ptr %i.fh, align 4, !tbaa !48, !alias.scope !293, !noalias !290
  store <4 x i32> zeroinitializer, ptr %next.gep460, align 4, !tbaa !48, !alias.scope !290
  store <4 x i32> zeroinitializer, ptr %i.fg, align 4, !tbaa !48, !alias.scope !290
  %index.next463 = add nuw i64 %index458, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next463, %n.vec456
  br i1 %i.fi, label %middle.block464, label %vector.body457, !llvm.loop !295

middle.block464:                                  ; preds = %vector.body457
  %cmp.n465 = icmp eq i64 %i.es, %n.vec456
  br i1 %cmp.n465, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit248, label %.lr.ph.i.i244.preheader514

.lr.ph.i.i244.preheader514:                       ; preds = %vector.memcheck447, %.lr.ph.i.i244.preheader, %middle.block464
  %.010.i.i245.ph = phi ptr [ %i.em, %vector.memcheck447 ], [ %i.em, %.lr.ph.i.i244.preheader ], [ %i.fd, %middle.block464 ]
  %.079.i.i246.ph = phi ptr [ %3, %vector.memcheck447 ], [ %3, %.lr.ph.i.i244.preheader ], [ %i.fe, %middle.block464 ]
  br label %.lr.ph.i.i244

.lr.ph.i.i244:                                    ; preds = %.lr.ph.i.i244.preheader514, %.lr.ph.i.i244
  %.010.i.i245 = phi ptr [ %i.fl, %.lr.ph.i.i244 ], [ %.010.i.i245.ph, %.lr.ph.i.i244.preheader514 ] ; 2 uses
  %.079.i.i246 = phi ptr [ %i.fk, %.lr.ph.i.i244 ], [ %.079.i.i246.ph, %.lr.ph.i.i244.preheader514 ] ; 3 uses
  %i.fj = load i32, ptr %.079.i.i246, align 4, !tbaa !48
  store i32 %i.fj, ptr %.010.i.i245, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i246, align 4, !tbaa !48
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.010.i.i245, i64 4 ; 2 uses
  %.not.i.i247 = icmp eq ptr %i.fk, %i.a
  br i1 %.not.i.i247, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit248, label %.lr.ph.i.i244, !llvm.loop !296

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit248: ; preds = %.lr.ph.i.i244, %middle.block464, %bb.i
  %i.fm = phi ptr [ %i.em, %bb.i ], [ %i.fd, %middle.block464 ], [ %i.fl, %.lr.ph.i.i244 ] ; 2 uses
  %.not3.i249 = icmp eq ptr %i.fm, %i.a
  br i1 %.not3.i249, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit248, %.lr.ph.i250
  %storemerge4.i251 = phi ptr [ %i.fp, %.lr.ph.i250 ], [ %i.fm, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit248 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i251, align 4, !tbaa !48
  %i.fn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fo = add i32 %i.fn, -1
  store i32 %i.fo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fp = getelementptr inbounds nuw i8, ptr %storemerge4.i251, i64 4 ; 2 uses
  %.not.i252 = icmp eq ptr %i.fp, %i.a
  br i1 %.not.i252, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %.lr.ph.i250, !llvm.loop !215

bb.j:                                             ; preds = %bb.f
  %.not16.i254 = icmp eq ptr %0, %3
  br i1 %.not16.i254, label %.loopexit, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.j, %.lr.ph.i255
  %.018.i256 = phi ptr [ %i.ft, %.lr.ph.i255 ], [ %0, %bb.j ] ; 3 uses
  %.01517.i257 = phi ptr [ %i.fu, %.lr.ph.i255 ], [ %2, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i257) ]
  %i.fq = load i32, ptr %.018.i256, align 4, !tbaa !48
  store i32 %i.fq, ptr %.01517.i257, align 4, !tbaa !48
  store i32 0, ptr %.018.i256, align 4, !tbaa !48
  %i.fr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ft = getelementptr inbounds nuw i8, ptr %.018.i256, i64 4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.01517.i257, i64 4 ; 2 uses
  %.not.i258 = icmp eq ptr %i.ft, %3
  br i1 %.not.i258, label %.loopexit, label %.lr.ph.i255, !llvm.loop !127

.loopexit:                                        ; preds = %.lr.ph.i255, %bb.j
  %.015.lcssa.i259 = phi ptr [ %2, %bb.j ], [ %i.fu, %.lr.ph.i255 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i259) ]
  %i.fv = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.fv, ptr %.015.lcssa.i259, align 4, !tbaa !48
  store i32 0, ptr %5, align 4, !tbaa !48
  %i.fw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  br i1 %i.cs, label %_ZN5boost9container13destroy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_S9_.exit253, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %.neg = sub nsw i64 %i.e, %i.h
  %i.fy = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.fy, ptr %0, align 4, !tbaa !48
  store i32 0, ptr %5, align 4, !tbaa !48
  %i.fz = getelementptr [4 x i8], ptr %0, i64 %.neg
  %i.ga = getelementptr [4 x i8], ptr %i.fz, i64 %4 ; 7 uses
  %.not.i261 = icmp eq ptr %3, %i.ga
  br i1 %.not.i261, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not8.i.i262 = icmp eq ptr %3, %i.a
  br i1 %.not8.i.i262, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit267, label %.lr.ph.i.i263.preheader

.lr.ph.i.i263.preheader:                          ; preds = %bb.l
  %i.gb = shl i64 %1, 2
  %i.gc = add i64 %i.gb, %i.c
  %i.gd = add i64 %i.gc, -4
  %i.ge = sub i64 %i.gd, %i.b                     ; 2 uses
  %i.gf = lshr i64 %i.ge, 2
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check475 = icmp ult i64 %i.ge, 140
  br i1 %min.iters.check475, label %.lr.ph.i.i263.preheader511, label %vector.memcheck468

vector.memcheck468:                               ; preds = %.lr.ph.i.i263.preheader
  %i.gh = shl i64 %4, 2
  %i.gi = add i64 %i.d, %i.gh
  %i.gj = shl i64 %1, 2
  %i.gk = add i64 %i.gj, %i.c
  %i.gl = add i64 %i.gk, -4
  %i.gm = sub i64 %i.gl, %i.b
  %i.gn = and i64 %i.gm, -4                       ; 2 uses
  %i.go = add i64 %i.gi, %i.gn
  %i.gp = add i64 %i.go, 4
  %i.gq = sub i64 %i.gp, %i.g
  %scevgep469 = getelementptr i8, ptr %0, i64 %i.gq
  %i.gr = getelementptr i8, ptr %3, i64 %i.gn
  %scevgep470 = getelementptr i8, ptr %i.gr, i64 4
  %bound0471 = icmp ult ptr %i.ga, %scevgep470
  %bound1472 = icmp ult ptr %3, %scevgep469
  %found.conflict473 = and i1 %bound0471, %bound1472
  br i1 %found.conflict473, label %.lr.ph.i.i263.preheader511, label %vector.ph476

vector.ph476:                                     ; preds = %vector.memcheck468
  %n.vec477 = and i64 %i.gg, 9223372036854775800  ; 3 uses
  %i.gs = shl i64 %n.vec477, 2                    ; 2 uses
  %i.gt = getelementptr i8, ptr %i.ga, i64 %i.gs  ; 2 uses
  %i.gu = getelementptr i8, ptr %3, i64 %i.gs
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph476
  %index479 = phi i64 [ 0, %vector.ph476 ], [ %index.next484, %vector.body478 ] ; 2 uses
  %i.gv = shl i64 %index479, 2                    ; 2 uses
  %next.gep480 = getelementptr i8, ptr %i.ga, i64 %i.gv ; 2 uses
  %next.gep481 = getelementptr i8, ptr %3, i64 %i.gv ; 3 uses
  %i.gw = getelementptr i8, ptr %next.gep481, i64 16 ; 2 uses
  %wide.load482 = load <4 x i32>, ptr %next.gep481, align 4, !tbaa !48, !alias.scope !297
  %wide.load483 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !48, !alias.scope !297
  %i.gx = getelementptr i8, ptr %next.gep480, i64 16
  store <4 x i32> %wide.load482, ptr %next.gep480, align 4, !tbaa !48, !alias.scope !300, !noalias !297
  store <4 x i32> %wide.load483, ptr %i.gx, align 4, !tbaa !48, !alias.scope !300, !noalias !297
  store <4 x i32> zeroinitializer, ptr %next.gep481, align 4, !tbaa !48, !alias.scope !297
  store <4 x i32> zeroinitializer, ptr %i.gw, align 4, !tbaa !48, !alias.scope !297
  %index.next484 = add nuw i64 %index479, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next484, %n.vec477
  br i1 %i.gy, label %middle.block485, label %vector.body478, !llvm.loop !302

middle.block485:                                  ; preds = %vector.body478
  %cmp.n486 = icmp eq i64 %i.gg, %n.vec477
  br i1 %cmp.n486, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit267, label %.lr.ph.i.i263.preheader511

.lr.ph.i.i263.preheader511:                       ; preds = %vector.memcheck468, %.lr.ph.i.i263.preheader, %middle.block485
  %.010.i.i264.ph = phi ptr [ %i.ga, %vector.memcheck468 ], [ %i.ga, %.lr.ph.i.i263.preheader ], [ %i.gt, %middle.block485 ]
  %.079.i.i265.ph = phi ptr [ %3, %vector.memcheck468 ], [ %3, %.lr.ph.i.i263.preheader ], [ %i.gu, %middle.block485 ]
  br label %.lr.ph.i.i263

.lr.ph.i.i263:                                    ; preds = %.lr.ph.i.i263.preheader511, %.lr.ph.i.i263
  %.010.i.i264 = phi ptr [ %i.hb, %.lr.ph.i.i263 ], [ %.010.i.i264.ph, %.lr.ph.i.i263.preheader511 ] ; 2 uses
  %.079.i.i265 = phi ptr [ %i.ha, %.lr.ph.i.i263 ], [ %.079.i.i265.ph, %.lr.ph.i.i263.preheader511 ] ; 3 uses
  %i.gz = load i32, ptr %.079.i.i265, align 4, !tbaa !48
  store i32 %i.gz, ptr %.010.i.i264, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i265, align 4, !tbaa !48
  %i.ha = getelementptr inbounds nuw i8, ptr %.079.i.i265, i64 4 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i264, i64 4 ; 2 uses
  %.not.i.i266 = icmp eq ptr %i.ha, %i.a
  br i1 %.not.i.i266, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit267, label %.lr.ph.i.i263, !llvm.loop !303

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit267: ; preds = %.lr.ph.i.i263, %middle.block485, %bb.l
  %i.hc = phi ptr [ %i.ga, %bb.l ], [ %i.gt, %middle.block485 ], [ %i.hb, %.lr.ph.i.i263 ] ; 2 uses
  %.not3.i268 = icmp eq ptr %i.hc, %i.a
  br i1 %.not3.i268, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %.lr.ph.i269

.lr.ph.i269:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit267, %.lr.ph.i269
  %storemerge4.i270 = phi ptr [ %i.hf, %.lr.ph.i269 ], [ %i.hc, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit267 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i270, align 4, !tbaa !48
  %i.hd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.he = add i32 %i.hd, -1
  store i32 %i.he, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hf = getelementptr inbounds nuw i8, ptr %storemerge4.i270, i64 4 ; 2 uses
  %.not.i271 = icmp eq ptr %i.hf, %i.a
  br i1 %.not.i271, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223, label %.lr.ph.i269, !llvm.loop !215

_ZN5boost9container13destroy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_S9_.exit253: ; preds = %.loopexit
  %i.hg = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.hg, ptr %0, align 4, !tbaa !48
  store i32 0, ptr %5, align 4, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost9container13destroy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_S9_.exit253, %.loopexit357
  %i.hh = sub nuw i64 %4, %i.h                    ; 3 uses
  %i.hi = sub i64 %1, %i.e                        ; 2 uses
  %.not190 = icmp ult i64 %i.hi, %i.hh
  br i1 %.not190, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  %.neg355 = mul i64 %i.hh, -4                    ; 2 uses
  %i.hj = getelementptr i8, ptr %i.a, i64 %.neg355 ; 7 uses
  %.not16.i281 = icmp eq i64 %.neg355, 0
  br i1 %.not16.i281, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i282

.lr.ph.i282:                                      ; preds = %bb.m, %.lr.ph.i282
  %.018.i283 = phi ptr [ %i.hn, %.lr.ph.i282 ], [ %i.hj, %bb.m ] ; 3 uses
  %.01517.i284 = phi ptr [ %i.ho, %.lr.ph.i282 ], [ %i.a, %bb.m ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i284) ]
  %i.hk = load i32, ptr %.018.i283, align 4, !tbaa !48
  store i32 %i.hk, ptr %.01517.i284, align 4, !tbaa !48
  store i32 0, ptr %.018.i283, align 4, !tbaa !48
  %i.hl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hm = add i32 %i.hl, 1
  store i32 %i.hm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %.018.i283, i64 4 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.01517.i284, i64 4
  %.not.i285 = icmp eq ptr %i.hn, %i.a
  br i1 %.not.i285, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit287, label %.lr.ph.i282, !llvm.loop !127

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit287: ; preds = %.lr.ph.i282
  %.not8.i.i289 = icmp eq ptr %3, %i.hj
  br i1 %.not8.i.i289, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i290.preheader

.lr.ph.i.i290.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit287
  %i.hp = shl i64 %1, 2
  %9 = add i64 %i.g, %i.c
  %i.hq = add i64 %9, %i.hp
  %i.hr = add i64 %i.hq, -4
  %10 = shl i64 %4, 2
  %i.hs = add i64 %10, %i.b
  %i.ht = sub i64 %i.hr, %i.hs                    ; 2 uses
  %i.hu = lshr i64 %i.ht, 2
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 2 uses
  %min.iters.check496 = icmp ult i64 %i.ht, 172
  br i1 %min.iters.check496, label %.lr.ph.i.i290.preheader510, label %vector.memcheck489

vector.memcheck489:                               ; preds = %.lr.ph.i.i290.preheader
  %i.hw = shl i64 %1, 2                           ; 3 uses
  %i.hx = add i64 %i.hw, -4
  %i.hy = add i64 %i.g, %i.c
  %i.hz = add i64 %i.hy, %i.hw
  %i.ia = add i64 %i.hz, -4
  %i.ib = shl i64 %4, 2                           ; 2 uses
  %i.ic = add i64 %i.ib, %i.b
  %i.id = sub i64 %i.ia, %i.ic
  %i.ie = and i64 %i.id, -4                       ; 2 uses
  %i.if = sub i64 %i.hx, %i.ie
  %scevgep490 = getelementptr i8, ptr %0, i64 %i.if
  %i.ig = add i64 %i.g, %i.hw
  %i.ih = add i64 %i.ig, -4
  %i.ii = add i64 %i.ib, %i.ie
  %i.ij = sub i64 %i.ih, %i.ii
  %scevgep491 = getelementptr i8, ptr %0, i64 %i.ij
  %bound0492 = icmp ult ptr %scevgep490, %i.hj
  %bound1493 = icmp ult ptr %scevgep491, %i.a
  %found.conflict494 = and i1 %bound0492, %bound1493
  br i1 %found.conflict494, label %.lr.ph.i.i290.preheader510, label %vector.ph497

vector.ph497:                                     ; preds = %vector.memcheck489
  %n.vec498 = and i64 %i.hv, 9223372036854775800  ; 3 uses
  %i.ik = mul i64 %n.vec498, -4                   ; 2 uses
  %i.il = getelementptr i8, ptr %i.a, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.hj, i64 %i.ik
  br label %vector.body499

vector.body499:                                   ; preds = %vector.body499, %vector.ph497
  %index500 = phi i64 [ 0, %vector.ph497 ], [ %index.next505, %vector.body499 ] ; 2 uses
  %i.in = mul i64 %index500, -4                   ; 2 uses
  %next.gep501 = getelementptr i8, ptr %i.a, i64 %i.in ; 2 uses
  %next.gep502 = getelementptr i8, ptr %i.hj, i64 %i.in ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %next.gep502, i64 -16 ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %next.gep502, i64 -32 ; 2 uses
  %wide.load503 = load <4 x i32>, ptr %i.io, align 4, !tbaa !48, !alias.scope !304
  %wide.load504 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !48, !alias.scope !304
  %i.iq = getelementptr inbounds i8, ptr %next.gep501, i64 -16
  %i.ir = getelementptr inbounds i8, ptr %next.gep501, i64 -32
  store <4 x i32> %wide.load503, ptr %i.iq, align 4, !tbaa !48, !alias.scope !307, !noalias !304
  store <4 x i32> %wide.load504, ptr %i.ir, align 4, !tbaa !48, !alias.scope !307, !noalias !304
  store <4 x i32> zeroinitializer, ptr %i.io, align 4, !tbaa !48, !alias.scope !304
  store <4 x i32> zeroinitializer, ptr %i.ip, align 4, !tbaa !48, !alias.scope !304
  %index.next505 = add nuw i64 %index500, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next505, %n.vec498
  br i1 %i.is, label %middle.block506, label %vector.body499, !llvm.loop !309

middle.block506:                                  ; preds = %vector.body499
  %cmp.n507 = icmp eq i64 %i.hv, %n.vec498
  br i1 %cmp.n507, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i290.preheader510

.lr.ph.i.i290.preheader510:                       ; preds = %vector.memcheck489, %.lr.ph.i.i290.preheader, %middle.block506
  %.010.i.i291.ph = phi ptr [ %i.a, %vector.memcheck489 ], [ %i.a, %.lr.ph.i.i290.preheader ], [ %i.il, %middle.block506 ]
  %.079.i.i292.ph = phi ptr [ %i.hj, %vector.memcheck489 ], [ %i.hj, %.lr.ph.i.i290.preheader ], [ %i.im, %middle.block506 ]
  br label %.lr.ph.i.i290

.lr.ph.i.i290:                                    ; preds = %.lr.ph.i.i290.preheader510, %.lr.ph.i.i290
  %.010.i.i291 = phi ptr [ %i.iu, %.lr.ph.i.i290 ], [ %.010.i.i291.ph, %.lr.ph.i.i290.preheader510 ]
  %.079.i.i292 = phi ptr [ %i.it, %.lr.ph.i.i290 ], [ %.079.i.i292.ph, %.lr.ph.i.i290.preheader510 ]
  %i.it = getelementptr inbounds i8, ptr %.079.i.i292, i64 -4 ; 4 uses
  %i.iu = getelementptr inbounds i8, ptr %.010.i.i291, i64 -4 ; 2 uses
  %i.iv = load i32, ptr %i.it, align 4, !tbaa !48
  store i32 %i.iv, ptr %i.iu, align 4, !tbaa !48
  store i32 0, ptr %i.it, align 4, !tbaa !48
  %.not.i.i293 = icmp eq ptr %3, %i.it
  br i1 %.not.i.i293, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i290, !llvm.loop !310

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i290, %middle.block506, %bb.m, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit287
  %i.iw = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.iw, ptr %3, align 4, !tbaa !48
  store i32 0, ptr %5, align 4, !tbaa !48
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223

bb.n:                                             ; preds = %.critedge
  %.not16.i294 = icmp eq ptr %3, %i.a
  br i1 %.not16.i294, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304, label %.lr.ph.i295.preheader

.lr.ph.i295.preheader:                            ; preds = %bb.n
  %i.ix = sub nuw i64 %i.hh, %i.hi
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ix
  br label %.lr.ph.i295

.lr.ph.i295:                                      ; preds = %.lr.ph.i295.preheader, %.lr.ph.i295
  %.018.i296 = phi ptr [ %i.jc, %.lr.ph.i295 ], [ %3, %.lr.ph.i295.preheader ] ; 3 uses
  %.01517.i297 = phi ptr [ %i.jd, %.lr.ph.i295 ], [ %i.iy, %.lr.ph.i295.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i297) ]
  %i.iz = load i32, ptr %.018.i296, align 4, !tbaa !48
  store i32 %i.iz, ptr %.01517.i297, align 4, !tbaa !48
  store i32 0, ptr %.018.i296, align 4, !tbaa !48
  %i.ja = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jb = add i32 %i.ja, 1
  store i32 %i.jb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jc = getelementptr inbounds nuw i8, ptr %.018.i296, i64 4 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.01517.i297, i64 4
  %.not.i298 = icmp eq ptr %i.jc, %i.a
  br i1 %.not.i298, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304.loopexit, label %.lr.ph.i295, !llvm.loop !127

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304.loopexit: ; preds = %.lr.ph.i295
  %.pre = load i32, ptr %5, align 4, !tbaa !48
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304: ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304.loopexit, %bb.n
  %i.je = phi i32 [ %.pre, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304.loopexit ], [ 0, %bb.n ]
  store i32 %i.je, ptr %3, align 4, !tbaa !48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 0, ptr %i.a, align 4, !tbaa !48
  store i32 0, ptr %5, align 4, !tbaa !48
  %i.jf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jg = add i32 %i.jf, 1
  store i32 %i.jg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit223: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i216, %.lr.ph.i250, %.lr.ph.i269, %bb.k, %bb.h, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit248, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit267, %.loopexit360, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit304, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvT0_mSA_SA_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 9 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 27 uses
  %i.e = add i64 %4, %1                           ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 4 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %3 to i64                   ; 9 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = sub nsw i64 0, %i.j
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub i64 %i.l, %i.g                       ; 5 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 8 uses
  %i.o = add i64 %i.j, %4                         ; 6 uses
  %.not = icmp ult i64 %i.n, %i.o
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sub i64 0, %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.r = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.r, ptr %i.q, align 4, !tbaa !48
  store i32 0, ptr %5, align 4, !tbaa !48
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %.not16.i = icmp eq ptr %3, %i.d
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.y, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 3 uses
  %.01517.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.u, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.v = load i32, ptr %.018.i, align 4, !tbaa !48
  store i32 %i.v, ptr %.01517.i, align 4, !tbaa !48
  store i32 0, ptr %.018.i, align 4, !tbaa !48
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !127

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.not125 = icmp ult i64 %i.n, %i.e
  br i1 %.not125, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i130 = icmp eq ptr %0, %3
  br i1 %.not16.i130, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.c, %.lr.ph.i131
  %.018.i132 = phi ptr [ %i.ad, %.lr.ph.i131 ], [ %0, %bb.c ] ; 3 uses
  %.01517.i133 = phi ptr [ %i.ae, %.lr.ph.i131 ], [ %2, %bb.c ] ; 2 uses
  %i.aa = load i32, ptr %.018.i132, align 4, !tbaa !48
  store i32 %i.aa, ptr %.01517.i133, align 4, !tbaa !48
  store i32 0, ptr %.018.i132, align 4, !tbaa !48
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %.018.i132, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01517.i133, i64 4
  %.not.i134 = icmp eq ptr %i.ad, %3
  br i1 %.not.i134, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i131, !llvm.loop !127

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.af = sub i64 %i.n, %i.o                      ; 5 uses
  %i.ag = sub i64 0, %i.af                        ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvT0_mSA_SA_mT1_RT_:bb.a
  store i32 %i.cu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i145, i64 16
  %.not3.i146.3 = icmp eq i64 %i.ct, 0
  br i1 %.not3.i146.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.preheader, !llvm.loop !217

bb.e:                                             ; preds = %bb.a
  %i.cw = icmp ugt i64 %i.n, %i.j
  br i1 %i.cw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i156 = icmp eq ptr %3, %i.d
  br i1 %.not16.i156, label %.loopexit, label %.lr.ph.i157.preheader

.lr.ph.i157.preheader:                            ; preds = %bb.f
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157.preheader, %.lr.ph.i157
  %.018.i158 = phi ptr [ %i.db, %.lr.ph.i157 ], [ %3, %.lr.ph.i157.preheader ] ; 3 uses
  %.01517.i159 = phi ptr [ %i.dc, %.lr.ph.i157 ], [ %i.cx, %.lr.ph.i157.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i159) ]
  %i.cy = load i32, ptr %.018.i158, align 4, !tbaa !48
  store i32 %i.cy, ptr %.01517.i159, align 4, !tbaa !48
  store i32 0, ptr %.018.i158, align 4, !tbaa !48
  %i.cz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.db = getelementptr inbounds nuw i8, ptr %.018.i158, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01517.i159, i64 4
  %.not.i160 = icmp eq ptr %i.db, %i.d
  br i1 %.not.i160, label %.loopexit, label %.lr.ph.i157, !llvm.loop !127

.loopexit:                                        ; preds = %.lr.ph.i157, %bb.f
  %.neg246 = sub i64 %i.n, %i.o
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.neg246 ; 8 uses
  %i.de = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 0, ptr %i.d, align 4, !tbaa !48
  store i32 0, ptr %5, align 4, !tbaa !48
  %i.df = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %.not.i163 = icmp eq ptr %3, %i.dd
  br i1 %.not.i163, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i164 = icmp eq ptr %0, %3
  br i1 %.not8.i.i164, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169, label %.lr.ph.i.i165.preheader

.lr.ph.i.i165.preheader:                          ; preds = %bb.g
  %i.dh = add i64 %i.h, -4
  %i.di = sub i64 %i.dh, %i.b                     ; 2 uses
  %i.dj = lshr i64 %i.di, 2
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check344 = icmp ult i64 %i.di, 140
  br i1 %min.iters.check344, label %.lr.ph.i.i165.preheader358, label %vector.memcheck337

vector.memcheck337:                               ; preds = %.lr.ph.i.i165.preheader
  %i.dl = shl nsw i64 %1, 2
  %i.dm = add i64 %i.m, %i.dl
  %i.dn = add i64 %i.dm, -4
  %i.do = add i64 %i.h, -4
  %i.dp = sub i64 %i.do, %i.b
  %i.dq = and i64 %i.dp, -4                       ; 2 uses
  %i.dr = shl i64 %i.o, 2
  %i.ds = add i64 %i.dq, %i.dr
  %i.dt = sub i64 %i.dn, %i.ds
  %scevgep338 = getelementptr i8, ptr %0, i64 %i.dt
  %i.du = sub nuw nsw i64 -4, %i.dq
  %scevgep339 = getelementptr i8, ptr %3, i64 %i.du
  %bound0340 = icmp ult ptr %scevgep338, %3
  %bound1341 = icmp ult ptr %scevgep339, %i.dd
  %found.conflict342 = and i1 %bound0340, %bound1341
  br i1 %found.conflict342, label %.lr.ph.i.i165.preheader358, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck337
  %n.vec346 = and i64 %i.dk, 9223372036854775800  ; 3 uses
  %i.dv = mul i64 %n.vec346, -4                   ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dd, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %3, i64 %i.dv
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next353, %vector.body347 ] ; 2 uses
  %i.dy = mul i64 %index348, -4                   ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.dd, i64 %i.dy ; 2 uses
  %next.gep350 = getelementptr i8, ptr %3, i64 %i.dy ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %next.gep350, i64 -16 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %next.gep350, i64 -32 ; 2 uses
  %wide.load351 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !48, !alias.scope !319
  %wide.load352 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !48, !alias.scope !319
  %i.eb = getelementptr inbounds i8, ptr %next.gep349, i64 -16
  %i.ec = getelementptr inbounds i8, ptr %next.gep349, i64 -32
  store <4 x i32> %wide.load351, ptr %i.eb, align 4, !tbaa !48, !alias.scope !322, !noalias !319
  store <4 x i32> %wide.load352, ptr %i.ec, align 4, !tbaa !48, !alias.scope !322, !noalias !319
  store <4 x i32> zeroinitializer, ptr %i.dz, align 4, !tbaa !48, !alias.scope !319
  store <4 x i32> zeroinitializer, ptr %i.ea, align 4, !tbaa !48, !alias.scope !319
  %index.next353 = add nuw i64 %index348, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next353, %n.vec346
  br i1 %i.ed, label %middle.block354, label %vector.body347, !llvm.loop !324

middle.block354:                                  ; preds = %vector.body347
  %cmp.n355 = icmp eq i64 %i.dk, %n.vec346
  br i1 %cmp.n355, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169, label %.lr.ph.i.i165.preheader358

.lr.ph.i.i165.preheader358:                       ; preds = %vector.memcheck337, %.lr.ph.i.i165.preheader, %middle.block354
  %.010.i.i166.ph = phi ptr [ %i.dd, %vector.memcheck337 ], [ %i.dd, %.lr.ph.i.i165.preheader ], [ %i.dw, %middle.block354 ]
  %.079.i.i167.ph = phi ptr [ %3, %vector.memcheck337 ], [ %3, %.lr.ph.i.i165.preheader ], [ %i.dx, %middle.block354 ]
  br label %.lr.ph.i.i165

.lr.ph.i.i165:                                    ; preds = %.lr.ph.i.i165.preheader358, %.lr.ph.i.i165
  %.010.i.i166 = phi ptr [ %i.ef, %.lr.ph.i.i165 ], [ %.010.i.i166.ph, %.lr.ph.i.i165.preheader358 ]
  %.079.i.i167 = phi ptr [ %i.ee, %.lr.ph.i.i165 ], [ %.079.i.i167.ph, %.lr.ph.i.i165.preheader358 ]
  %i.ee = getelementptr inbounds i8, ptr %.079.i.i167, i64 -4 ; 4 uses
  %i.ef = getelementptr inbounds i8, ptr %.010.i.i166, i64 -4 ; 3 uses
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !48
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !48
  store i32 0, ptr %i.ee, align 4, !tbaa !48
  %.not.i.i168 = icmp eq ptr %0, %i.ee
  br i1 %.not.i.i168, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169, label %.lr.ph.i.i165, !llvm.loop !325

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169: ; preds = %.lr.ph.i.i165, %middle.block354, %bb.g
  %i.eh = phi ptr [ %i.dd, %bb.g ], [ %i.dw, %middle.block354 ], [ %i.ef, %.lr.ph.i.i165 ] ; 2 uses
  %.not3.i170 = icmp eq ptr %0, %i.eh
  br i1 %.not3.i170, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169, %.lr.ph.i171
  %storemerge4.i172 = phi ptr [ %i.ek, %.lr.ph.i171 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i172, align 4, !tbaa !48
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ek = getelementptr inbounds nuw i8, ptr %storemerge4.i172, i64 4 ; 2 uses
  %.not.i173 = icmp eq ptr %i.ek, %i.eh
  br i1 %.not.i173, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i171, !llvm.loop !215

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.m
  %i.el = getelementptr i8, ptr %i.d, i64 %.idx   ; 10 uses
  %.not17.i183 = icmp eq ptr %i.f, %i.d
  br i1 %.not17.i183, label %.loopexit248, label %.lr.ph.i184.preheader

.lr.ph.i184.preheader:                            ; preds = %bb.h
  %i.em = and i64 %i.m, 4
  %lcmp.mod371.not = icmp eq i64 %i.em, 0
  br i1 %lcmp.mod371.not, label %.lr.ph.i184.prol.loopexit, label %.lr.ph.i184.prol

.lr.ph.i184.prol:                                 ; preds = %.lr.ph.i184.preheader
  %i.en = add nsw i64 %i.n, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.eo = load i32, ptr %i.el, align 4, !tbaa !48
  store i32 %i.eo, ptr %i.d, align 4, !tbaa !48
  store i32 0, ptr %i.el, align 4, !tbaa !48
  %i.ep = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph.i184.prol.loopexit

.lr.ph.i184.prol.loopexit:                        ; preds = %.lr.ph.i184.prol, %.lr.ph.i184.preheader
  %.020.i185.unr = phi i64 [ %i.n, %.lr.ph.i184.preheader ], [ %i.en, %.lr.ph.i184.prol ]
  %.0819.i186.unr = phi ptr [ %i.el, %.lr.ph.i184.preheader ], [ %i.er, %.lr.ph.i184.prol ]
  %.01618.i187.unr = phi ptr [ %i.d, %.lr.ph.i184.preheader ], [ %i.es, %.lr.ph.i184.prol ]
  %i.et = icmp eq i64 %i.m, 4
  br i1 %i.et, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %.lr.ph.i184.prol.loopexit, %.lr.ph.i184
  %.020.i185 = phi i64 [ %i.ez, %.lr.ph.i184 ], [ %.020.i185.unr, %.lr.ph.i184.prol.loopexit ]
  %.0819.i186 = phi ptr [ %i.fd, %.lr.ph.i184 ], [ %.0819.i186.unr, %.lr.ph.i184.prol.loopexit ] ; 4 uses
  %.01618.i187 = phi ptr [ %i.fe, %.lr.ph.i184 ], [ %.01618.i187.unr, %.lr.ph.i184.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i187) ]
  %i.eu = load i32, ptr %.0819.i186, align 4, !tbaa !48
  store i32 %i.eu, ptr %.01618.i187, align 4, !tbaa !48
  store i32 0, ptr %.0819.i186, align 4, !tbaa !48
  %i.ev = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ex = getelementptr inbounds nuw i8, ptr %.0819.i186, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.01618.i187, i64 4
  %i.ez = add i64 %.020.i185, -2                  ; 2 uses
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !48
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !48
  store i32 0, ptr %i.ex, align 4, !tbaa !48
  %i.fb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fd = getelementptr inbounds nuw i8, ptr %.0819.i186, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.01618.i187, i64 8
  %.not.i188.1 = icmp eq i64 %i.ez, 0
  br i1 %.not.i188.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190, label %.lr.ph.i184, !llvm.loop !130

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190: ; preds = %.lr.ph.i184, %.lr.ph.i184.prol.loopexit
  %.not8.i.i192 = icmp eq ptr %3, %i.el
  br i1 %.not8.i.i192, label %.loopexit248, label %.lr.ph.i.i193.preheader

.lr.ph.i.i193.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190
  %i.ff = shl nsw i64 %1, 2
  %i.fg = shl i64 %i.b, 1
  %7 = add i64 %i.ff, %i.fg
  %i.fh = add i64 %7, -4
  %i.fi = add i64 %i.a, %i.h
  %8 = shl i64 %4, 2
  %i.fj = add i64 %i.fi, %8
  %i.fk = sub i64 %i.fh, %i.fj                    ; 2 uses
  %i.fl = lshr i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check302 = icmp ult i64 %i.fk, 188
  br i1 %min.iters.check302, label %.lr.ph.i.i193.preheader362, label %vector.memcheck295

vector.memcheck295:                               ; preds = %.lr.ph.i.i193.preheader
  %i.fn = shl nsw i64 %1, 2                       ; 3 uses
  %i.fo = add i64 %i.fn, -4
  %i.fp = shl i64 %i.b, 1
  %i.fq = add i64 %i.fn, %i.fp
  %i.fr = add i64 %i.fq, -4
  %i.fs = add i64 %i.a, %i.h
  %i.ft = shl i64 %4, 2                           ; 2 uses
  %i.fu = add i64 %i.fs, %i.ft
  %i.fv = sub i64 %i.fr, %i.fu
  %i.fw = and i64 %i.fv, -4                       ; 2 uses
  %i.fx = sub i64 %i.fo, %i.fw
  %scevgep296 = getelementptr i8, ptr %0, i64 %i.fx
  %i.fy = add i64 %i.fn, %i.b
  %i.fz = add i64 %i.fy, -4
  %i.ga = add i64 %i.ft, %i.a
  %i.gb = add i64 %i.ga, %i.fw
  %i.gc = sub i64 %i.fz, %i.gb
  %scevgep297 = getelementptr i8, ptr %0, i64 %i.gc
  %bound0298 = icmp ult ptr %scevgep296, %i.el
  %bound1299 = icmp ult ptr %scevgep297, %i.d
  %found.conflict300 = and i1 %bound0298, %bound1299
  br i1 %found.conflict300, label %.lr.ph.i.i193.preheader362, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck295
  %n.vec304 = and i64 %i.fm, 9223372036854775800  ; 3 uses
  %i.gd = mul i64 %n.vec304, -4                   ; 2 uses
  %i.ge = getelementptr i8, ptr %i.d, i64 %i.gd   ; 2 uses
  %i.gf = getelementptr i8, ptr %i.el, i64 %i.gd
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.gg = mul i64 %index306, -4                   ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.d, i64 %i.gg ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.el, i64 %i.gg ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %next.gep308, i64 -16 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %next.gep308, i64 -32 ; 2 uses
  %wide.load309 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !48, !alias.scope !326
  %wide.load310 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !48, !alias.scope !326
  %i.gj = getelementptr inbounds i8, ptr %next.gep307, i64 -16
  %i.gk = getelementptr inbounds i8, ptr %next.gep307, i64 -32
  store <4 x i32> %wide.load309, ptr %i.gj, align 4, !tbaa !48, !alias.scope !329, !noalias !326
  store <4 x i32> %wide.load310, ptr %i.gk, align 4, !tbaa !48, !alias.scope !329, !noalias !326
  store <4 x i32> zeroinitializer, ptr %i.gh, align 4, !tbaa !48, !alias.scope !326
  store <4 x i32> zeroinitializer, ptr %i.gi, align 4, !tbaa !48, !alias.scope !326
  %index.next311 = add nuw i64 %index306, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.gl, label %middle.block312, label %vector.body305, !llvm.loop !331

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.fm, %n.vec304
  br i1 %cmp.n313, label %.loopexit248, label %.lr.ph.i.i193.preheader362

.lr.ph.i.i193.preheader362:                       ; preds = %vector.memcheck295, %.lr.ph.i.i193.preheader, %middle.block312
  %.010.i.i194.ph = phi ptr [ %i.d, %vector.memcheck295 ], [ %i.d, %.lr.ph.i.i193.preheader ], [ %i.ge, %middle.block312 ]
  %.079.i.i195.ph = phi ptr [ %i.el, %vector.memcheck295 ], [ %i.el, %.lr.ph.i.i193.preheader ], [ %i.gf, %middle.block312 ]
  br label %.lr.ph.i.i193

.lr.ph.i.i193:                                    ; preds = %.lr.ph.i.i193.preheader362, %.lr.ph.i.i193
  %.010.i.i194 = phi ptr [ %i.gn, %.lr.ph.i.i193 ], [ %.010.i.i194.ph, %.lr.ph.i.i193.preheader362 ]
  %.079.i.i195 = phi ptr [ %i.gm, %.lr.ph.i.i193 ], [ %.079.i.i195.ph, %.lr.ph.i.i193.preheader362 ]
  %i.gm = getelementptr inbounds i8, ptr %.079.i.i195, i64 -4 ; 4 uses
  %i.gn = getelementptr inbounds i8, ptr %.010.i.i194, i64 -4 ; 3 uses
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !48
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !48
  store i32 0, ptr %i.gm, align 4, !tbaa !48
  %.not.i.i196 = icmp eq ptr %3, %i.gm
  br i1 %.not.i.i196, label %.loopexit248, label %.lr.ph.i.i193, !llvm.loop !332

.loopexit248:                                     ; preds = %.lr.ph.i.i193, %middle.block312, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190
  %i.gp = phi ptr [ %3, %bb.h ], [ %i.d, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190 ], [ %i.ge, %middle.block312 ], [ %i.gn, %.lr.ph.i.i193 ] ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.c ; 8 uses
  %i.gr = load i32, ptr %5, align 4, !tbaa !48
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !48
  store i32 0, ptr %5, align 4, !tbaa !48
  %.not.i198 = icmp eq ptr %3, %i.gq
  br i1 %.not.i198, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %bb.i

bb.i:                                             ; preds = %.loopexit248
  %.not8.i.i199 = icmp eq ptr %0, %3
  br i1 %.not8.i.i199, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204, label %.lr.ph.i.i200.preheader

.lr.ph.i.i200.preheader:                          ; preds = %bb.i
  %i.gs = add i64 %i.h, -4
  %i.gt = sub i64 %i.gs, %i.b                     ; 2 uses
  %i.gu = lshr i64 %i.gt, 2
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %min.iters.check323 = icmp ult i64 %i.gt, 108
  br i1 %min.iters.check323, label %.lr.ph.i.i200.preheader360, label %vector.memcheck316

vector.memcheck316:                               ; preds = %.lr.ph.i.i200.preheader
  %i.gw = shl i64 %4, 2
  %i.gx = add i64 %i.h, -4
  %i.gy = sub i64 %i.gx, %i.b
  %i.gz = and i64 %i.gy, -4                       ; 2 uses
  %i.ha = add i64 %i.gw, %i.gz
  %i.hb = sub nuw nsw i64 -4, %i.ha
  %scevgep317 = getelementptr i8, ptr %i.gp, i64 %i.hb
  %i.hc = sub nuw nsw i64 -4, %i.gz
  %scevgep318 = getelementptr i8, ptr %3, i64 %i.hc
  %bound0319 = icmp ult ptr %scevgep317, %3
  %bound1320 = icmp ult ptr %scevgep318, %i.gq
  %found.conflict321 = and i1 %bound0319, %bound1320
  br i1 %found.conflict321, label %.lr.ph.i.i200.preheader360, label %vector.ph324

vector.ph324:                                     ; preds = %vector.memcheck316
  %n.vec325 = and i64 %i.gv, 9223372036854775800  ; 3 uses
  %i.hd = mul i64 %n.vec325, -4                   ; 2 uses
  %i.he = getelementptr i8, ptr %i.gq, i64 %i.hd  ; 2 uses
  %i.hf = getelementptr i8, ptr %3, i64 %i.hd
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph324
  %index327 = phi i64 [ 0, %vector.ph324 ], [ %index.next332, %vector.body326 ] ; 2 uses
  %i.hg = mul i64 %index327, -4                   ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.gq, i64 %i.hg ; 2 uses
  %next.gep329 = getelementptr i8, ptr %3, i64 %i.hg ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %next.gep329, i64 -16 ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %next.gep329, i64 -32 ; 2 uses
  %wide.load330 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !48, !alias.scope !333
  %wide.load331 = load <4 x i32>, ptr %i.hi, align 4, !tbaa !48, !alias.scope !333
  %i.hj = getelementptr inbounds i8, ptr %next.gep328, i64 -16
  %i.hk = getelementptr inbounds i8, ptr %next.gep328, i64 -32
  store <4 x i32> %wide.load330, ptr %i.hj, align 4, !tbaa !48, !alias.scope !336, !noalias !333
  store <4 x i32> %wide.load331, ptr %i.hk, align 4, !tbaa !48, !alias.scope !336, !noalias !333
  store <4 x i32> zeroinitializer, ptr %i.hh, align 4, !tbaa !48, !alias.scope !333
  store <4 x i32> zeroinitializer, ptr %i.hi, align 4, !tbaa !48, !alias.scope !333
  %index.next332 = add nuw i64 %index327, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next332, %n.vec325
  br i1 %i.hl, label %middle.block333, label %vector.body326, !llvm.loop !338

middle.block333:                                  ; preds = %vector.body326
  %cmp.n334 = icmp eq i64 %i.gv, %n.vec325
  br i1 %cmp.n334, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204, label %.lr.ph.i.i200.preheader360

.lr.ph.i.i200.preheader360:                       ; preds = %vector.memcheck316, %.lr.ph.i.i200.preheader, %middle.block333
  %.010.i.i201.ph = phi ptr [ %i.gq, %vector.memcheck316 ], [ %i.gq, %.lr.ph.i.i200.preheader ], [ %i.he, %middle.block333 ]
  %.079.i.i202.ph = phi ptr [ %3, %vector.memcheck316 ], [ %3, %.lr.ph.i.i200.preheader ], [ %i.hf, %middle.block333 ]
  br label %.lr.ph.i.i200

.lr.ph.i.i200:                                    ; preds = %.lr.ph.i.i200.preheader360, %.lr.ph.i.i200
  %.010.i.i201 = phi ptr [ %i.hn, %.lr.ph.i.i200 ], [ %.010.i.i201.ph, %.lr.ph.i.i200.preheader360 ]
  %.079.i.i202 = phi ptr [ %i.hm, %.lr.ph.i.i200 ], [ %.079.i.i202.ph, %.lr.ph.i.i200.preheader360 ]
  %i.hm = getelementptr inbounds i8, ptr %.079.i.i202, i64 -4 ; 4 uses
  %i.hn = getelementptr inbounds i8, ptr %.010.i.i201, i64 -4 ; 3 uses
  %i.ho = load i32, ptr %i.hm, align 4, !tbaa !48
  store i32 %i.ho, ptr %i.hn, align 4, !tbaa !48
  store i32 0, ptr %i.hm, align 4, !tbaa !48
  %.not.i.i203 = icmp eq ptr %0, %i.hm
  br i1 %.not.i.i203, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204, label %.lr.ph.i.i200, !llvm.loop !339

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204: ; preds = %.lr.ph.i.i200, %middle.block333, %bb.i
  %i.hp = phi ptr [ %i.gq, %bb.i ], [ %i.he, %middle.block333 ], [ %i.hn, %.lr.ph.i.i200 ] ; 2 uses
  %.not3.i205 = icmp eq ptr %0, %i.hp
  br i1 %.not3.i205, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204, %.lr.ph.i206
  %storemerge4.i207 = phi ptr [ %i.hs, %.lr.ph.i206 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i207, align 4, !tbaa !48
  %i.hq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hr = add i32 %i.hq, -1
  store i32 %i.hr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hs = getelementptr inbounds nuw i8, ptr %storemerge4.i207, i64 4 ; 2 uses
  %.not.i208 = icmp eq ptr %i.hs, %i.hp
  br i1 %.not.i208, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i206, !llvm.loop !215

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit147: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i140, %.lr.ph.i206, %.lr.ph.i171, %.loopexit248, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit204, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit169, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE7emplaceIJRKS3_EEEPS3_PSA_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !59   ; 5 uses
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i16, ptr %i.g, align 4, !tbaa !61
  %.not27 = icmp eq i16 %i.h, %i.c
  br i1 %.not27, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.i = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.i, ptr %i.e, align 4, !tbaa !48
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
end_hunk_5
begin_hunk_6_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.i216.preheader668, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i216.preheader
  %i.bs = shl i64 %1, 2
  %i.bt = add i64 %i.bs, %i.c
  %i.bu = shl i64 %i.i, 2                         ; 2 uses
  %i.bv = add i64 %i.bt, %i.bu
  %i.bw = add i64 %i.bv, -4
  %i.bx = add i64 %i.g, %i.b
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = and i64 %i.by, -4                       ; 2 uses
  %i.ca = getelementptr i8, ptr %0, i64 %i.bz
  %scevgep = getelementptr i8, ptr %i.ca, i64 4
  %i.cb = add i64 %i.g, %i.bz
  %i.cc = add i64 %i.cb, 4
  %i.cd = sub i64 %i.cc, %i.bu
  %scevgep501 = getelementptr i8, ptr %3, i64 %i.cd
  %bound0 = icmp ult ptr %0, %scevgep501
  %bound1 = icmp ult ptr %i.bj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i216.preheader668, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %i.ce = shl i64 %n.vec, 2                       ; 2 uses
  %i.cf = getelementptr i8, ptr %0, i64 %i.ce     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bj, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.ch ; 2 uses
  %next.gep502 = getelementptr i8, ptr %i.bj, i64 %i.ch ; 3 uses
  %i.ci = getelementptr i8, ptr %next.gep502, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep502, align 4, !tbaa !48, !alias.scope !352
  %wide.load503 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !48, !alias.scope !352
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !48, !alias.scope !355, !noalias !352
  store <4 x i32> %wide.load503, ptr %i.cj, align 4, !tbaa !48, !alias.scope !355, !noalias !352
  store <4 x i32> zeroinitializer, ptr %next.gep502, align 4, !tbaa !48, !alias.scope !352
  store <4 x i32> zeroinitializer, ptr %i.ci, align 4, !tbaa !48, !alias.scope !352
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !357

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader668

.lr.ph.i.i216.preheader668:                       ; preds = %vector.memcheck, %.lr.ph.i.i216.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i216.preheader ], [ %i.cf, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.i.i216.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i.i216

.lr.ph.i.i216:                                    ; preds = %.lr.ph.i.i216.preheader668, %.lr.ph.i.i216
  %.010.i.i = phi ptr [ %i.cn, %.lr.ph.i.i216 ], [ %.010.i.i.ph, %.lr.ph.i.i216.preheader668 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cm, %.lr.ph.i.i216 ], [ %.079.i.i.ph, %.lr.ph.i.i216.preheader668 ] ; 3 uses
  %i.cl = load i32, ptr %.079.i.i, align 4, !tbaa !48
  store i32 %i.cl, ptr %.010.i.i, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i, align 4, !tbaa !48
  %i.cm = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.cm, %i.a
  br i1 %.not.i.i217, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216, !llvm.loop !358

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i216, %middle.block, %bb.e
  %i.co = phi ptr [ %0, %bb.e ], [ %i.cf, %middle.block ], [ %i.cn, %.lr.ph.i.i216 ] ; 2 uses
  %.not3.i = icmp eq ptr %i.co, %i.a
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i218
  %storemerge4.i = phi ptr [ %i.cr, %.lr.ph.i218 ], [ %i.co, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !48
  %i.cp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i219 = icmp eq ptr %i.cr, %i.a
  br i1 %.not.i219, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i218, !llvm.loop !215

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i207, %bb.c
  %.not.i222 = icmp eq i64 %1, 0
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  %xtraiter672 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod673.not = icmp eq i64 %xtraiter672, 0
  br i1 %lcmp.mod673.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cs = phi i64 [ %i.ct, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i223.prol = phi ptr [ %i.cw, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter674 = phi i64 [ %prol.iter674.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ct = add i64 %i.cs, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i223.prol, align 4, !tbaa !48
  %i.cu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cv = add i32 %i.cu, -1
  store i32 %i.cv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i223.prol, i64 4 ; 2 uses
  %prol.iter674.next = add i64 %prol.iter674, 1   ; 2 uses
  %prol.iter674.cmp.not = icmp eq i64 %prol.iter674.next, %xtraiter672
  br i1 %prol.iter674.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !359

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.ct, %.preheader.prol ]
  %.0.i223.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cw, %.preheader.prol ]
  %i.cx = icmp ult i64 %1, 4
  br i1 %i.cx, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cy = phi i64 [ %i.dg, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i223 = phi ptr [ %i.di, %.preheader ], [ %.0.i223.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i223, align 4, !tbaa !48
  %i.cz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i223, i64 4
  store i32 -2147483648, ptr %i.db, align 4, !tbaa !48
  %i.dc = add i32 %i.cz, -2
  store i32 %i.dc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i223, i64 8
  store i32 -2147483648, ptr %i.dd, align 4, !tbaa !48
  %i.de = add i32 %i.cz, -3
  store i32 %i.de, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i223, i64 12
  %i.dg = add i64 %i.cy, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.df, align 4, !tbaa !48
  %i.dh = add i32 %i.cz, -4
  store i32 %i.dh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i223, i64 16
  %.not3.i224.3 = icmp eq i64 %i.dg, 0
  br i1 %.not3.i224.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.preheader, !llvm.loop !217

bb.f:                                             ; preds = %bb.a
  %i.dj = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not180 = icmp ugt i64 %i.h, %i.e
  br i1 %.not180, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i234 = icmp eq ptr %0, %2
  br i1 %.not17.i234, label %.loopexit431, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %bb.g
  %i.dk = and i64 %i.g, 4
  %lcmp.mod679.not = icmp eq i64 %i.dk, 0
  br i1 %lcmp.mod679.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol

.lr.ph.i235.prol:                                 ; preds = %.lr.ph.i235.preheader
  %i.dl = add nsw i64 %i.h, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.dm = load i32, ptr %0, align 4, !tbaa !48
  store i32 %i.dm, ptr %2, align 4, !tbaa !48
  store i32 0, ptr %0, align 4, !tbaa !48
  %i.dn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %.lr.ph.i235.prol.loopexit

.lr.ph.i235.prol.loopexit:                        ; preds = %.lr.ph.i235.prol, %.lr.ph.i235.preheader
  %.020.i236.unr = phi i64 [ %i.h, %.lr.ph.i235.preheader ], [ %i.dl, %.lr.ph.i235.prol ]
  %.0819.i237.unr = phi ptr [ %0, %.lr.ph.i235.preheader ], [ %i.dp, %.lr.ph.i235.prol ]
  %.01618.i238.unr = phi ptr [ %2, %.lr.ph.i235.preheader ], [ %i.dq, %.lr.ph.i235.prol ]
  %i.dr = icmp eq i64 %i.g, 4
  br i1 %i.dr, label %.loopexit431, label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235
  %.020.i236 = phi i64 [ %i.dx, %.lr.ph.i235 ], [ %.020.i236.unr, %.lr.ph.i235.prol.loopexit ]
  %.0819.i237 = phi ptr [ %i.eb, %.lr.ph.i235 ], [ %.0819.i237.unr, %.lr.ph.i235.prol.loopexit ] ; 4 uses
  %.01618.i238 = phi ptr [ %i.ec, %.lr.ph.i235 ], [ %.01618.i238.unr, %.lr.ph.i235.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i238) ]
  %i.ds = load i32, ptr %.0819.i237, align 4, !tbaa !48
  store i32 %i.ds, ptr %.01618.i238, align 4, !tbaa !48
  store i32 0, ptr %.0819.i237, align 4, !tbaa !48
  %i.dt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dv = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 4
  %i.dx = add i64 %.020.i236, -2                  ; 2 uses
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !48
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !48
  store i32 0, ptr %i.dv, align 4, !tbaa !48
  %i.dz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.eb = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 8
  %.not.i239.1 = icmp eq i64 %i.dx, 0
  br i1 %.not.i239.1, label %.loopexit431, label %.lr.ph.i235, !llvm.loop !130

.loopexit431:                                     ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235, %bb.g
  %i.ed = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 8 uses
  %i.ee = getelementptr inbounds i8, ptr %0, i64 %i.g ; 6 uses
  %.not8.i = icmp eq ptr %i.ee, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %.loopexit431
  %7 = add i64 %i.b, %i.f
  %i.ef = add i64 %7, -4
  %8 = shl i64 %i.c, 1
  %i.eg = sub i64 %i.ef, %8                       ; 2 uses
  %i.eh = lshr i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check512 = icmp ult i64 %i.eg, 124
  br i1 %min.iters.check512, label %.lr.ph.i242.preheader665, label %vector.memcheck505

vector.memcheck505:                               ; preds = %.lr.ph.i242.preheader
  %i.ej = add i64 %i.b, %i.f
  %i.ek = add i64 %i.ej, -4
  %i.el = shl i64 %i.c, 1
  %i.em = sub i64 %i.ek, %i.el
  %i.en = and i64 %i.em, -4                       ; 2 uses
  %i.eo = getelementptr i8, ptr %0, i64 %i.en
  %scevgep506 = getelementptr i8, ptr %i.eo, i64 4
  %i.ep = add i64 %i.en, %i.c
  %i.eq = add i64 %i.ep, 4
  %i.er = sub i64 %i.eq, %i.f
  %scevgep507 = getelementptr i8, ptr %0, i64 %i.er
  %bound0508 = icmp ult ptr %0, %scevgep507
  %bound1509 = icmp ult ptr %i.ee, %scevgep506
  %found.conflict510 = and i1 %bound0508, %bound1509
  br i1 %found.conflict510, label %.lr.ph.i242.preheader665, label %vector.ph513

vector.ph513:                                     ; preds = %vector.memcheck505
  %n.vec514 = and i64 %i.ei, 9223372036854775800  ; 3 uses
  %i.es = shl i64 %n.vec514, 2                    ; 2 uses
  %i.et = getelementptr i8, ptr %0, i64 %i.es     ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ee, i64 %i.es
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph513
  %index516 = phi i64 [ 0, %vector.ph513 ], [ %index.next521, %vector.body515 ] ; 2 uses
  %i.ev = shl i64 %index516, 2                    ; 2 uses
  %next.gep517 = getelementptr i8, ptr %0, i64 %i.ev ; 2 uses
  %next.gep518 = getelementptr i8, ptr %i.ee, i64 %i.ev ; 3 uses
  %i.ew = getelementptr i8, ptr %next.gep518, i64 16 ; 2 uses
  %wide.load519 = load <4 x i32>, ptr %next.gep518, align 4, !tbaa !48, !alias.scope !360
  %wide.load520 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !48, !alias.scope !360
  %i.ex = getelementptr i8, ptr %next.gep517, i64 16
  store <4 x i32> %wide.load519, ptr %next.gep517, align 4, !tbaa !48, !alias.scope !363, !noalias !360
  store <4 x i32> %wide.load520, ptr %i.ex, align 4, !tbaa !48, !alias.scope !363, !noalias !360
  store <4 x i32> zeroinitializer, ptr %next.gep518, align 4, !tbaa !48, !alias.scope !360
  store <4 x i32> zeroinitializer, ptr %i.ew, align 4, !tbaa !48, !alias.scope !360
  %index.next521 = add nuw i64 %index516, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next521, %n.vec514
  br i1 %i.ey, label %middle.block522, label %vector.body515, !llvm.loop !365

middle.block522:                                  ; preds = %vector.body515
  %cmp.n523 = icmp eq i64 %i.ei, %n.vec514
  br i1 %cmp.n523, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader665

.lr.ph.i242.preheader665:                         ; preds = %vector.memcheck505, %.lr.ph.i242.preheader, %middle.block522
  %.010.i.ph = phi ptr [ %0, %vector.memcheck505 ], [ %0, %.lr.ph.i242.preheader ], [ %i.et, %middle.block522 ]
  %.079.i.ph = phi ptr [ %i.ee, %vector.memcheck505 ], [ %i.ee, %.lr.ph.i242.preheader ], [ %i.eu, %middle.block522 ]
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph.i242.preheader665, %.lr.ph.i242
  %.010.i = phi ptr [ %i.fb, %.lr.ph.i242 ], [ %.010.i.ph, %.lr.ph.i242.preheader665 ] ; 2 uses
  %.079.i = phi ptr [ %i.fa, %.lr.ph.i242 ], [ %.079.i.ph, %.lr.ph.i242.preheader665 ] ; 3 uses
  %i.ez = load i32, ptr %.079.i, align 4, !tbaa !48
  store i32 %i.ez, ptr %.010.i, align 4, !tbaa !48
  store i32 0, ptr %.079.i, align 4, !tbaa !48
  %i.fa = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i243 = icmp eq ptr %i.fa, %3
  br i1 %.not.i243, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242, !llvm.loop !366

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i242, %middle.block522, %.loopexit431
  %.0.lcssa.i = phi ptr [ %0, %.loopexit431 ], [ %i.et, %middle.block522 ], [ %i.fb, %.lr.ph.i242 ] ; 5 uses
  %.not9.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not9.i.i, label %._crit_edge.loopexit.i.i249, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %.sroa.0.0.copyload.i244 = load ptr, ptr %5, align 8
  %.pre.i.i = load i32, ptr %.sroa.0.0.copyload.i244, align 4, !tbaa !48 ; 2 uses
  %min.iters.check527 = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check527, label %.lr.ph.i.i247.preheader, label %vector.ph528

vector.ph528:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec529 = and i64 %i.ed, -8                   ; 3 uses
  %i.fc = and i64 %i.ed, 7
  %i.fd = shl i64 %n.vec529, 2
  %i.fe = getelementptr i8, ptr %.0.lcssa.i, i64 %i.fd
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body530

vector.body530:                                   ; preds = %vector.body530, %vector.ph528
  %index531 = phi i64 [ 0, %vector.ph528 ], [ %index.next533, %vector.body530 ] ; 2 uses
  %i.ff = shl i64 %index531, 2
  %next.gep532 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ff ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep532, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep532, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat, ptr %i.fg, align 4, !tbaa !48
  %index.next533 = add nuw i64 %index531, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next533, %n.vec529
  br i1 %i.fh, label %middle.block534, label %vector.body530, !llvm.loop !367

middle.block534:                                  ; preds = %vector.body530
  %cmp.n535 = icmp eq i64 %i.ed, %n.vec529
  br i1 %cmp.n535, label %._crit_edge.loopexit.i.i249, label %.lr.ph.i.i247.preheader

.lr.ph.i.i247.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block534
  %.012.i.i.ph = phi i64 [ %i.ed, %.lr.ph.preheader.i.i ], [ %i.fc, %middle.block534 ]
  %.0511.i.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.preheader.i.i ], [ %i.fe, %middle.block534 ]
  br label %.lr.ph.i.i247

.lr.ph.i.i247:                                    ; preds = %.lr.ph.i.i247.preheader, %.lr.ph.i.i247
  %.012.i.i = phi i64 [ %i.fi, %.lr.ph.i.i247 ], [ %.012.i.i.ph, %.lr.ph.i.i247.preheader ]
  %.0511.i.i = phi ptr [ %i.fj, %.lr.ph.i.i247 ], [ %.0511.i.i.ph, %.lr.ph.i.i247.preheader ] ; 2 uses
  %i.fi = add i64 %.012.i.i, -1                   ; 2 uses
  store i32 %.pre.i.i, ptr %.0511.i.i, align 4, !tbaa !48
  %i.fj = getelementptr inbounds nuw i8, ptr %.0511.i.i, i64 4
  %.not.i.i248 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i248, label %._crit_edge.loopexit.i.i249, label %.lr.ph.i.i247, !llvm.loop !368

._crit_edge.loopexit.i.i249:                      ; preds = %.lr.ph.i.i247, %middle.block534, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  br i1 %i.dj, label %.critedge, label %bb.h

bb.h:                                             ; preds = %._crit_edge.loopexit.i.i249
  %i.fk = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %i.ed ; 7 uses
  %.not.i251 = icmp eq ptr %3, %i.fk
  br i1 %.not.i251, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i252 = icmp eq ptr %3, %i.a
  br i1 %.not8.i.i252, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit257, label %.lr.ph.i.i253.preheader

.lr.ph.i.i253.preheader:                          ; preds = %bb.i
  %i.fl = shl i64 %1, 2
  %i.fm = add i64 %i.fl, %i.c
  %i.fn = add i64 %i.fm, -4
  %i.fo = sub i64 %i.fn, %i.b                     ; 2 uses
  %i.fp = lshr i64 %i.fo, 2
  %i.fq = add nuw nsw i64 %i.fp, 1                ; 2 uses
  %min.iters.check545 = icmp ult i64 %i.fo, 124
  br i1 %min.iters.check545, label %.lr.ph.i.i253.preheader663, label %vector.memcheck538

vector.memcheck538:                               ; preds = %.lr.ph.i.i253.preheader
  %i.fr = shl i64 %i.ed, 2
  %i.fs = shl i64 %1, 2
  %i.ft = add i64 %i.fs, %i.c
  %i.fu = add i64 %i.ft, -4
  %i.fv = sub i64 %i.fu, %i.b
  %i.fw = and i64 %i.fv, -4                       ; 2 uses
  %i.fx = getelementptr i8, ptr %.0.lcssa.i, i64 %i.fr
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fw
  %scevgep539 = getelementptr i8, ptr %i.fy, i64 4
  %i.fz = getelementptr i8, ptr %3, i64 %i.fw
  %scevgep540 = getelementptr i8, ptr %i.fz, i64 4
  %bound0541 = icmp ult ptr %i.fk, %scevgep540
  %bound1542 = icmp ult ptr %3, %scevgep539
  %found.conflict543 = and i1 %bound0541, %bound1542
  br i1 %found.conflict543, label %.lr.ph.i.i253.preheader663, label %vector.ph546

vector.ph546:                                     ; preds = %vector.memcheck538
  %n.vec547 = and i64 %i.fq, 9223372036854775800  ; 3 uses
  %i.ga = shl i64 %n.vec547, 2                    ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fk, i64 %i.ga  ; 2 uses
  %i.gc = getelementptr i8, ptr %3, i64 %i.ga
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph546
  %index549 = phi i64 [ 0, %vector.ph546 ], [ %index.next554, %vector.body548 ] ; 2 uses
  %i.gd = shl i64 %index549, 2                    ; 2 uses
  %next.gep550 = getelementptr i8, ptr %i.fk, i64 %i.gd ; 2 uses
  %next.gep551 = getelementptr i8, ptr %3, i64 %i.gd ; 3 uses
  %i.ge = getelementptr i8, ptr %next.gep551, i64 16 ; 2 uses
  %wide.load552 = load <4 x i32>, ptr %next.gep551, align 4, !tbaa !48, !alias.scope !369
  %wide.load553 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !48, !alias.scope !369
  %i.gf = getelementptr i8, ptr %next.gep550, i64 16
  store <4 x i32> %wide.load552, ptr %next.gep550, align 4, !tbaa !48, !alias.scope !372, !noalias !369
  store <4 x i32> %wide.load553, ptr %i.gf, align 4, !tbaa !48, !alias.scope !372, !noalias !369
  store <4 x i32> zeroinitializer, ptr %next.gep551, align 4, !tbaa !48, !alias.scope !369
  store <4 x i32> zeroinitializer, ptr %i.ge, align 4, !tbaa !48, !alias.scope !369
  %index.next554 = add nuw i64 %index549, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next554, %n.vec547
  br i1 %i.gg, label %middle.block555, label %vector.body548, !llvm.loop !374

middle.block555:                                  ; preds = %vector.body548
  %cmp.n556 = icmp eq i64 %i.fq, %n.vec547
  br i1 %cmp.n556, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit257, label %.lr.ph.i.i253.preheader663

.lr.ph.i.i253.preheader663:                       ; preds = %vector.memcheck538, %.lr.ph.i.i253.preheader, %middle.block555
  %.010.i.i254.ph = phi ptr [ %i.fk, %vector.memcheck538 ], [ %i.fk, %.lr.ph.i.i253.preheader ], [ %i.gb, %middle.block555 ]
  %.079.i.i255.ph = phi ptr [ %3, %vector.memcheck538 ], [ %3, %.lr.ph.i.i253.preheader ], [ %i.gc, %middle.block555 ]
  br label %.lr.ph.i.i253

.lr.ph.i.i253:                                    ; preds = %.lr.ph.i.i253.preheader663, %.lr.ph.i.i253
  %.010.i.i254 = phi ptr [ %i.gj, %.lr.ph.i.i253 ], [ %.010.i.i254.ph, %.lr.ph.i.i253.preheader663 ] ; 2 uses
  %.079.i.i255 = phi ptr [ %i.gi, %.lr.ph.i.i253 ], [ %.079.i.i255.ph, %.lr.ph.i.i253.preheader663 ] ; 3 uses
  %i.gh = load i32, ptr %.079.i.i255, align 4, !tbaa !48
  store i32 %i.gh, ptr %.010.i.i254, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i255, align 4, !tbaa !48
  %i.gi = getelementptr inbounds nuw i8, ptr %.079.i.i255, i64 4 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.010.i.i254, i64 4 ; 2 uses
  %.not.i.i256 = icmp eq ptr %i.gi, %i.a
  br i1 %.not.i.i256, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit257, label %.lr.ph.i.i253, !llvm.loop !375

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit257: ; preds = %.lr.ph.i.i253, %middle.block555, %bb.i
  %i.gk = phi ptr [ %i.fk, %bb.i ], [ %i.gb, %middle.block555 ], [ %i.gj, %.lr.ph.i.i253 ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_:bb.a
  store <4 x i32> %broadcast.splat599, ptr %next.gep602, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat599, ptr %i.ht, align 4, !tbaa !48
  %index.next603 = add nuw i64 %index601, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next603, %n.vec597
  br i1 %i.hu, label %middle.block604, label %vector.body600, !llvm.loop !377

middle.block604:                                  ; preds = %vector.body600
  %cmp.n605 = icmp eq i64 %i.e, %n.vec597
  br i1 %cmp.n605, label %.critedge, label %.lr.ph.i.i287.preheader

.lr.ph.i.i287.preheader:                          ; preds = %.lr.ph.preheader.i.i285, %middle.block604
  %.012.i.i288.ph = phi i64 [ %i.e, %.lr.ph.preheader.i.i285 ], [ %i.hp, %middle.block604 ]
  %.0511.i.i289.ph = phi ptr [ %0, %.lr.ph.preheader.i.i285 ], [ %i.hr, %middle.block604 ]
  br label %.lr.ph.i.i287

.lr.ph.i.i287:                                    ; preds = %.lr.ph.i.i287.preheader, %.lr.ph.i.i287
  %.012.i.i288 = phi i64 [ %i.hv, %.lr.ph.i.i287 ], [ %.012.i.i288.ph, %.lr.ph.i.i287.preheader ]
  %.0511.i.i289 = phi ptr [ %i.hw, %.lr.ph.i.i287 ], [ %.0511.i.i289.ph, %.lr.ph.i.i287.preheader ] ; 2 uses
  %i.hv = add i64 %.012.i.i288, -1                ; 2 uses
  store i32 %.pre.i.i286, ptr %.0511.i.i289, align 4, !tbaa !48
  %i.hw = getelementptr inbounds nuw i8, ptr %.0511.i.i289, i64 4
  %.not.i.i290 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i290, label %.critedge, label %.lr.ph.i.i287, !llvm.loop !378

bb.l:                                             ; preds = %._crit_edge.loopexit.i.i278
  %i.hx = sub i64 %4, %i.gt                       ; 8 uses
  %.not9.i.i297 = icmp eq i64 %i.hx, 0
  br i1 %.not9.i.i297, label %._crit_edge.loopexit.i.i304, label %.lr.ph.preheader.i.i298

.lr.ph.preheader.i.i298:                          ; preds = %bb.l
  %.pre.i.i299 = load i32, ptr %.sroa.0.0.copyload.i270, align 4, !tbaa !48 ; 2 uses
  %min.iters.check560 = icmp ult i64 %i.hx, 8
  br i1 %min.iters.check560, label %.lr.ph.i.i300.preheader, label %vector.ph561

vector.ph561:                                     ; preds = %.lr.ph.preheader.i.i298
  %n.vec562 = and i64 %i.hx, -8                   ; 3 uses
  %i.hy = and i64 %i.hx, 7
  %i.hz = shl i64 %n.vec562, 2
  %i.ia = getelementptr i8, ptr %0, i64 %i.hz
  %broadcast.splatinsert563 = insertelement <4 x i32> poison, i32 %.pre.i.i299, i64 0
  %broadcast.splat564 = shufflevector <4 x i32> %broadcast.splatinsert563, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body565

vector.body565:                                   ; preds = %vector.body565, %vector.ph561
  %index566 = phi i64 [ 0, %vector.ph561 ], [ %index.next568, %vector.body565 ] ; 2 uses
  %i.ib = shl i64 %index566, 2
  %next.gep567 = getelementptr i8, ptr %0, i64 %i.ib ; 2 uses
  %i.ic = getelementptr i8, ptr %next.gep567, i64 16
  store <4 x i32> %broadcast.splat564, ptr %next.gep567, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat564, ptr %i.ic, align 4, !tbaa !48
  %index.next568 = add nuw i64 %index566, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next568, %n.vec562
  br i1 %i.id, label %middle.block569, label %vector.body565, !llvm.loop !379

middle.block569:                                  ; preds = %vector.body565
  %cmp.n570 = icmp eq i64 %i.hx, %n.vec562
  br i1 %cmp.n570, label %._crit_edge.loopexit.i.i304, label %.lr.ph.i.i300.preheader

.lr.ph.i.i300.preheader:                          ; preds = %.lr.ph.preheader.i.i298, %middle.block569
  %.012.i.i301.ph = phi i64 [ %i.hx, %.lr.ph.preheader.i.i298 ], [ %i.hy, %middle.block569 ]
  %.0511.i.i302.ph = phi ptr [ %0, %.lr.ph.preheader.i.i298 ], [ %i.ia, %middle.block569 ]
  br label %.lr.ph.i.i300

.lr.ph.i.i300:                                    ; preds = %.lr.ph.i.i300.preheader, %.lr.ph.i.i300
  %.012.i.i301 = phi i64 [ %i.ie, %.lr.ph.i.i300 ], [ %.012.i.i301.ph, %.lr.ph.i.i300.preheader ]
  %.0511.i.i302 = phi ptr [ %i.if, %.lr.ph.i.i300 ], [ %.0511.i.i302.ph, %.lr.ph.i.i300.preheader ] ; 2 uses
  %i.ie = add i64 %.012.i.i301, -1                ; 2 uses
  store i32 %.pre.i.i299, ptr %.0511.i.i302, align 4, !tbaa !48
  %i.if = getelementptr inbounds nuw i8, ptr %.0511.i.i302, i64 4
  %.not.i.i303 = icmp eq i64 %i.ie, 0
  br i1 %.not.i.i303, label %._crit_edge.loopexit.i.i304, label %.lr.ph.i.i300, !llvm.loop !380

._crit_edge.loopexit.i.i304:                      ; preds = %.lr.ph.i.i300, %middle.block569, %bb.l
  %i.ig = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hx ; 7 uses
  %.not.i307 = icmp eq ptr %3, %i.ig
  br i1 %.not.i307, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %bb.m

bb.m:                                             ; preds = %._crit_edge.loopexit.i.i304
  %.not8.i.i308 = icmp eq ptr %3, %i.a
  br i1 %.not8.i.i308, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit313, label %.lr.ph.i.i309.preheader

.lr.ph.i.i309.preheader:                          ; preds = %bb.m
  %i.ih = shl i64 %1, 2
  %i.ii = add i64 %i.ih, %i.c
  %i.ij = add i64 %i.ii, -4
  %i.ik = sub i64 %i.ij, %i.b                     ; 2 uses
  %i.il = lshr i64 %i.ik, 2
  %i.im = add nuw nsw i64 %i.il, 1                ; 2 uses
  %min.iters.check580 = icmp ult i64 %i.ik, 124
  br i1 %min.iters.check580, label %.lr.ph.i.i309.preheader660, label %vector.memcheck573

vector.memcheck573:                               ; preds = %.lr.ph.i.i309.preheader
  %i.in = shl i64 %1, 2
  %i.io = add i64 %i.in, %i.c
  %i.ip = add i64 %i.io, -4
  %i.iq = sub i64 %i.ip, %i.b
  %i.ir = and i64 %i.iq, -4                       ; 2 uses
  %i.is = shl i64 %i.hx, 2
  %i.it = getelementptr i8, ptr %0, i64 %i.ir
  %i.iu = getelementptr i8, ptr %i.it, i64 %i.is
  %scevgep574 = getelementptr i8, ptr %i.iu, i64 4
  %i.iv = getelementptr i8, ptr %3, i64 %i.ir
  %scevgep575 = getelementptr i8, ptr %i.iv, i64 4
  %bound0576 = icmp ult ptr %i.ig, %scevgep575
  %bound1577 = icmp ult ptr %3, %scevgep574
  %found.conflict578 = and i1 %bound0576, %bound1577
  br i1 %found.conflict578, label %.lr.ph.i.i309.preheader660, label %vector.ph581

vector.ph581:                                     ; preds = %vector.memcheck573
  %n.vec582 = and i64 %i.im, 9223372036854775800  ; 3 uses
  %i.iw = shl i64 %n.vec582, 2                    ; 2 uses
  %i.ix = getelementptr i8, ptr %i.ig, i64 %i.iw  ; 2 uses
  %i.iy = getelementptr i8, ptr %3, i64 %i.iw
  br label %vector.body583

vector.body583:                                   ; preds = %vector.body583, %vector.ph581
  %index584 = phi i64 [ 0, %vector.ph581 ], [ %index.next589, %vector.body583 ] ; 2 uses
  %i.iz = shl i64 %index584, 2                    ; 2 uses
  %next.gep585 = getelementptr i8, ptr %i.ig, i64 %i.iz ; 2 uses
  %next.gep586 = getelementptr i8, ptr %3, i64 %i.iz ; 3 uses
  %i.ja = getelementptr i8, ptr %next.gep586, i64 16 ; 2 uses
  %wide.load587 = load <4 x i32>, ptr %next.gep586, align 4, !tbaa !48, !alias.scope !381
  %wide.load588 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !48, !alias.scope !381
  %i.jb = getelementptr i8, ptr %next.gep585, i64 16
  store <4 x i32> %wide.load587, ptr %next.gep585, align 4, !tbaa !48, !alias.scope !384, !noalias !381
  store <4 x i32> %wide.load588, ptr %i.jb, align 4, !tbaa !48, !alias.scope !384, !noalias !381
  store <4 x i32> zeroinitializer, ptr %next.gep586, align 4, !tbaa !48, !alias.scope !381
  store <4 x i32> zeroinitializer, ptr %i.ja, align 4, !tbaa !48, !alias.scope !381
  %index.next589 = add nuw i64 %index584, 8       ; 2 uses
  %i.jc = icmp eq i64 %index.next589, %n.vec582
  br i1 %i.jc, label %middle.block590, label %vector.body583, !llvm.loop !386

middle.block590:                                  ; preds = %vector.body583
  %cmp.n591 = icmp eq i64 %i.im, %n.vec582
  br i1 %cmp.n591, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit313, label %.lr.ph.i.i309.preheader660

.lr.ph.i.i309.preheader660:                       ; preds = %vector.memcheck573, %.lr.ph.i.i309.preheader, %middle.block590
  %.010.i.i310.ph = phi ptr [ %i.ig, %vector.memcheck573 ], [ %i.ig, %.lr.ph.i.i309.preheader ], [ %i.ix, %middle.block590 ]
  %.079.i.i311.ph = phi ptr [ %3, %vector.memcheck573 ], [ %3, %.lr.ph.i.i309.preheader ], [ %i.iy, %middle.block590 ]
  br label %.lr.ph.i.i309

.lr.ph.i.i309:                                    ; preds = %.lr.ph.i.i309.preheader660, %.lr.ph.i.i309
  %.010.i.i310 = phi ptr [ %i.jf, %.lr.ph.i.i309 ], [ %.010.i.i310.ph, %.lr.ph.i.i309.preheader660 ] ; 2 uses
  %.079.i.i311 = phi ptr [ %i.je, %.lr.ph.i.i309 ], [ %.079.i.i311.ph, %.lr.ph.i.i309.preheader660 ] ; 3 uses
  %i.jd = load i32, ptr %.079.i.i311, align 4, !tbaa !48
  store i32 %i.jd, ptr %.010.i.i310, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i311, align 4, !tbaa !48
  %i.je = getelementptr inbounds nuw i8, ptr %.079.i.i311, i64 4 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.010.i.i310, i64 4 ; 2 uses
  %.not.i.i312 = icmp eq ptr %i.je, %i.a
  br i1 %.not.i.i312, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit313, label %.lr.ph.i.i309, !llvm.loop !387

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit313: ; preds = %.lr.ph.i.i309, %middle.block590, %bb.m
  %i.jg = phi ptr [ %i.ig, %bb.m ], [ %i.ix, %middle.block590 ], [ %i.jf, %.lr.ph.i.i309 ] ; 2 uses
  %.not3.i314 = icmp eq ptr %i.jg, %i.a
  br i1 %.not3.i314, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i315

.lr.ph.i315:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit313, %.lr.ph.i315
  %storemerge4.i316 = phi ptr [ %i.jj, %.lr.ph.i315 ], [ %i.jg, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit313 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i316, align 4, !tbaa !48
  %i.jh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ji = add i32 %i.jh, -1
  store i32 %i.ji, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jj = getelementptr inbounds nuw i8, ptr %storemerge4.i316, i64 4 ; 2 uses
  %.not.i317 = icmp eq ptr %i.jj, %i.a
  br i1 %.not.i317, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i315, !llvm.loop !215

.critedge:                                        ; preds = %.lr.ph.i.i287, %middle.block604, %bb.k, %._crit_edge.loopexit.i.i249
  %i.jk = sub nuw i64 %4, %i.h                    ; 9 uses
  %i.jl = sub i64 %1, %i.e                        ; 8 uses
  %.not190 = icmp ult i64 %i.jl, %i.jk
  br i1 %.not190, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %.neg = mul i64 %i.jk, -4                       ; 2 uses
  %i.jm = getelementptr i8, ptr %i.a, i64 %.neg   ; 7 uses
  %.not16.i327 = icmp eq i64 %.neg, 0
  br i1 %.not16.i327, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i328

.lr.ph.i328:                                      ; preds = %bb.n, %.lr.ph.i328
  %.018.i329 = phi ptr [ %i.jq, %.lr.ph.i328 ], [ %i.jm, %bb.n ] ; 3 uses
  %.01517.i330 = phi ptr [ %i.jr, %.lr.ph.i328 ], [ %i.a, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i330) ]
  %i.jn = load i32, ptr %.018.i329, align 4, !tbaa !48
  store i32 %i.jn, ptr %.01517.i330, align 4, !tbaa !48
  store i32 0, ptr %.018.i329, align 4, !tbaa !48
  %i.jo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jq = getelementptr inbounds nuw i8, ptr %.018.i329, i64 4 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.01517.i330, i64 4
  %.not.i331 = icmp eq ptr %i.jq, %i.a
  br i1 %.not.i331, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit333, label %.lr.ph.i328, !llvm.loop !127

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit333: ; preds = %.lr.ph.i328
  %.not8.i.i335 = icmp eq ptr %3, %i.jm
  br i1 %.not8.i.i335, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i336.preheader

.lr.ph.i.i336.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit333
  %i.js = shl i64 %1, 2
  %9 = add i64 %i.g, %i.c
  %i.jt = add i64 %9, %i.js
  %i.ju = add i64 %i.jt, -4
  %10 = shl i64 %4, 2
  %i.jv = add i64 %10, %i.b
  %i.jw = sub i64 %i.ju, %i.jv                    ; 2 uses
  %i.jx = lshr i64 %i.jw, 2
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %min.iters.check615 = icmp ult i64 %i.jw, 172
  br i1 %min.iters.check615, label %.lr.ph.i.i336.preheader658, label %vector.memcheck608

vector.memcheck608:                               ; preds = %.lr.ph.i.i336.preheader
  %i.jz = shl i64 %1, 2                           ; 3 uses
  %i.ka = add i64 %i.jz, -4
  %i.kb = add i64 %i.g, %i.c
  %i.kc = add i64 %i.kb, %i.jz
  %i.kd = add i64 %i.kc, -4
  %i.ke = shl i64 %4, 2                           ; 2 uses
  %i.kf = add i64 %i.ke, %i.b
  %i.kg = sub i64 %i.kd, %i.kf
  %i.kh = and i64 %i.kg, -4                       ; 2 uses
  %i.ki = sub i64 %i.ka, %i.kh
  %scevgep609 = getelementptr i8, ptr %0, i64 %i.ki
  %i.kj = add i64 %i.g, %i.jz
  %i.kk = add i64 %i.kj, -4
  %i.kl = add i64 %i.ke, %i.kh
  %i.km = sub i64 %i.kk, %i.kl
  %scevgep610 = getelementptr i8, ptr %0, i64 %i.km
  %bound0611 = icmp ult ptr %scevgep609, %i.jm
  %bound1612 = icmp ult ptr %scevgep610, %i.a
  %found.conflict613 = and i1 %bound0611, %bound1612
  br i1 %found.conflict613, label %.lr.ph.i.i336.preheader658, label %vector.ph616

vector.ph616:                                     ; preds = %vector.memcheck608
  %n.vec617 = and i64 %i.jy, 9223372036854775800  ; 3 uses
  %i.kn = mul i64 %n.vec617, -4                   ; 2 uses
  %i.ko = getelementptr i8, ptr %i.a, i64 %i.kn
  %i.kp = getelementptr i8, ptr %i.jm, i64 %i.kn
  br label %vector.body618

vector.body618:                                   ; preds = %vector.body618, %vector.ph616
  %index619 = phi i64 [ 0, %vector.ph616 ], [ %index.next624, %vector.body618 ] ; 2 uses
  %i.kq = mul i64 %index619, -4                   ; 2 uses
  %next.gep620 = getelementptr i8, ptr %i.a, i64 %i.kq ; 2 uses
  %next.gep621 = getelementptr i8, ptr %i.jm, i64 %i.kq ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %next.gep621, i64 -16 ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %next.gep621, i64 -32 ; 2 uses
  %wide.load622 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !48, !alias.scope !388
  %wide.load623 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !48, !alias.scope !388
  %i.kt = getelementptr inbounds i8, ptr %next.gep620, i64 -16
  %i.ku = getelementptr inbounds i8, ptr %next.gep620, i64 -32
  store <4 x i32> %wide.load622, ptr %i.kt, align 4, !tbaa !48, !alias.scope !391, !noalias !388
  store <4 x i32> %wide.load623, ptr %i.ku, align 4, !tbaa !48, !alias.scope !391, !noalias !388
  store <4 x i32> zeroinitializer, ptr %i.kr, align 4, !tbaa !48, !alias.scope !388
  store <4 x i32> zeroinitializer, ptr %i.ks, align 4, !tbaa !48, !alias.scope !388
  %index.next624 = add nuw i64 %index619, 8       ; 2 uses
  %i.kv = icmp eq i64 %index.next624, %n.vec617
  br i1 %i.kv, label %middle.block625, label %vector.body618, !llvm.loop !393

middle.block625:                                  ; preds = %vector.body618
  %cmp.n626 = icmp eq i64 %i.jy, %n.vec617
  br i1 %cmp.n626, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i336.preheader658

.lr.ph.i.i336.preheader658:                       ; preds = %vector.memcheck608, %.lr.ph.i.i336.preheader, %middle.block625
  %.010.i.i337.ph = phi ptr [ %i.a, %vector.memcheck608 ], [ %i.a, %.lr.ph.i.i336.preheader ], [ %i.ko, %middle.block625 ]
  %.079.i.i338.ph = phi ptr [ %i.jm, %vector.memcheck608 ], [ %i.jm, %.lr.ph.i.i336.preheader ], [ %i.kp, %middle.block625 ]
  br label %.lr.ph.i.i336

.lr.ph.i.i336:                                    ; preds = %.lr.ph.i.i336.preheader658, %.lr.ph.i.i336
  %.010.i.i337 = phi ptr [ %i.kx, %.lr.ph.i.i336 ], [ %.010.i.i337.ph, %.lr.ph.i.i336.preheader658 ]
  %.079.i.i338 = phi ptr [ %i.kw, %.lr.ph.i.i336 ], [ %.079.i.i338.ph, %.lr.ph.i.i336.preheader658 ]
  %i.kw = getelementptr inbounds i8, ptr %.079.i.i338, i64 -4 ; 4 uses
  %i.kx = getelementptr inbounds i8, ptr %.010.i.i337, i64 -4 ; 2 uses
  %i.ky = load i32, ptr %i.kw, align 4, !tbaa !48
  store i32 %i.ky, ptr %i.kx, align 4, !tbaa !48
  store i32 0, ptr %i.kw, align 4, !tbaa !48
  %.not.i.i339 = icmp eq ptr %3, %i.kw
  br i1 %.not.i.i339, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i336, !llvm.loop !394

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i336, %middle.block625, %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit333
  %.not9.i.i343 = icmp eq i64 %i.jk, 0
  br i1 %.not9.i.i343, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.preheader.i.i344

.lr.ph.preheader.i.i344:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit
  %.sroa.0.0.copyload.i340 = load ptr, ptr %5, align 8
  %.pre.i.i345 = load i32, ptr %.sroa.0.0.copyload.i340, align 4, !tbaa !48 ; 2 uses
  %min.iters.check630 = icmp ult i64 %i.jk, 8
  br i1 %min.iters.check630, label %.lr.ph.i.i346.preheader, label %vector.ph631

vector.ph631:                                     ; preds = %.lr.ph.preheader.i.i344
  %n.vec632 = and i64 %i.jk, -8                   ; 3 uses
  %i.kz = and i64 %i.jk, 7
  %i.la = shl i64 %n.vec632, 2
  %i.lb = getelementptr i8, ptr %3, i64 %i.la
  %broadcast.splatinsert633 = insertelement <4 x i32> poison, i32 %.pre.i.i345, i64 0
  %broadcast.splat634 = shufflevector <4 x i32> %broadcast.splatinsert633, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body635

vector.body635:                                   ; preds = %vector.body635, %vector.ph631
  %index636 = phi i64 [ 0, %vector.ph631 ], [ %index.next638, %vector.body635 ] ; 2 uses
  %i.lc = shl i64 %index636, 2
  %next.gep637 = getelementptr i8, ptr %3, i64 %i.lc ; 2 uses
  %i.ld = getelementptr i8, ptr %next.gep637, i64 16
  store <4 x i32> %broadcast.splat634, ptr %next.gep637, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat634, ptr %i.ld, align 4, !tbaa !48
  %index.next638 = add nuw i64 %index636, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next638, %n.vec632
  br i1 %i.le, label %middle.block639, label %vector.body635, !llvm.loop !395

middle.block639:                                  ; preds = %vector.body635
  %cmp.n640 = icmp eq i64 %i.jk, %n.vec632
  br i1 %cmp.n640, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i346.preheader

.lr.ph.i.i346.preheader:                          ; preds = %.lr.ph.preheader.i.i344, %middle.block639
  %.012.i.i347.ph = phi i64 [ %i.jk, %.lr.ph.preheader.i.i344 ], [ %i.kz, %middle.block639 ]
  %.0511.i.i348.ph = phi ptr [ %3, %.lr.ph.preheader.i.i344 ], [ %i.lb, %middle.block639 ]
  br label %.lr.ph.i.i346

.lr.ph.i.i346:                                    ; preds = %.lr.ph.i.i346.preheader, %.lr.ph.i.i346
  %.012.i.i347 = phi i64 [ %i.lf, %.lr.ph.i.i346 ], [ %.012.i.i347.ph, %.lr.ph.i.i346.preheader ]
  %.0511.i.i348 = phi ptr [ %i.lg, %.lr.ph.i.i346 ], [ %.0511.i.i348.ph, %.lr.ph.i.i346.preheader ] ; 2 uses
  %i.lf = add i64 %.012.i.i347, -1                ; 2 uses
  store i32 %.pre.i.i345, ptr %.0511.i.i348, align 4, !tbaa !48
  %i.lg = getelementptr inbounds nuw i8, ptr %.0511.i.i348, i64 4
  %.not.i.i349 = icmp eq i64 %i.lf, 0
  br i1 %.not.i.i349, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i346, !llvm.loop !396

bb.o:                                             ; preds = %.critedge
  %i.lh = sub nuw i64 %i.jk, %i.jl                ; 4 uses
  %.not16.i353 = icmp eq ptr %3, %i.a
  br i1 %.not16.i353, label %.loopexit, label %.lr.ph.i354.preheader

.lr.ph.i354.preheader:                            ; preds = %bb.o
  %i.li = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.lh
  br label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %.lr.ph.i354.preheader, %.lr.ph.i354
  %.018.i355 = phi ptr [ %i.lm, %.lr.ph.i354 ], [ %3, %.lr.ph.i354.preheader ] ; 3 uses
  %.01517.i356 = phi ptr [ %i.ln, %.lr.ph.i354 ], [ %i.li, %.lr.ph.i354.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i356) ]
  %i.lj = load i32, ptr %.018.i355, align 4, !tbaa !48
  store i32 %i.lj, ptr %.01517.i356, align 4, !tbaa !48
  store i32 0, ptr %.018.i355, align 4, !tbaa !48
  %i.lk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ll = add i32 %i.lk, 1
  store i32 %i.ll, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.lm = getelementptr inbounds nuw i8, ptr %.018.i355, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.01517.i356, i64 4
  %.not.i357 = icmp eq ptr %i.lm, %i.a
  br i1 %.not.i357, label %.loopexit, label %.lr.ph.i354, !llvm.loop !127

.loopexit:                                        ; preds = %.lr.ph.i354, %bb.o
  %.sroa.0.0.copyload.i360 = load ptr, ptr %5, align 8 ; 6 uses
  %.not9.i.i363 = icmp eq i64 %i.jl, 0
  br i1 %.not9.i.i363, label %.lr.ph.i.i377.preheader, label %.lr.ph.preheader.i.i364

.lr.ph.preheader.i.i364:                          ; preds = %.loopexit
  %.pre.i.i365 = load i32, ptr %.sroa.0.0.copyload.i360, align 4, !tbaa !48 ; 2 uses
  %min.iters.check644 = icmp ult i64 %i.jl, 8
  br i1 %min.iters.check644, label %.lr.ph.i.i366.preheader, label %vector.ph645

vector.ph645:                                     ; preds = %.lr.ph.preheader.i.i364
  %n.vec646 = and i64 %i.jl, -8                   ; 3 uses
  %i.lo = and i64 %i.jl, 7
  %i.lp = shl i64 %n.vec646, 2
  %i.lq = getelementptr i8, ptr %3, i64 %i.lp
  %broadcast.splatinsert647 = insertelement <4 x i32> poison, i32 %.pre.i.i365, i64 0
  %broadcast.splat648 = shufflevector <4 x i32> %broadcast.splatinsert647, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body649

vector.body649:                                   ; preds = %vector.body649, %vector.ph645
  %index650 = phi i64 [ 0, %vector.ph645 ], [ %index.next652, %vector.body649 ] ; 2 uses
  %i.lr = shl i64 %index650, 2
  %next.gep651 = getelementptr i8, ptr %3, i64 %i.lr ; 2 uses
  %i.ls = getelementptr i8, ptr %next.gep651, i64 16
  store <4 x i32> %broadcast.splat648, ptr %next.gep651, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat648, ptr %i.ls, align 4, !tbaa !48
  %index.next652 = add nuw i64 %index650, 8       ; 2 uses
  %i.lt = icmp eq i64 %index.next652, %n.vec646
  br i1 %i.lt, label %middle.block653, label %vector.body649, !llvm.loop !397

middle.block653:                                  ; preds = %vector.body649
  %cmp.n654 = icmp eq i64 %i.jl, %n.vec646
  br i1 %cmp.n654, label %.lr.ph.i.i377.preheader, label %.lr.ph.i.i366.preheader

.lr.ph.i.i366.preheader:                          ; preds = %.lr.ph.preheader.i.i364, %middle.block653
  %.012.i.i367.ph = phi i64 [ %i.jl, %.lr.ph.preheader.i.i364 ], [ %i.lo, %middle.block653 ]
  %.0511.i.i368.ph = phi ptr [ %3, %.lr.ph.preheader.i.i364 ], [ %i.lq, %middle.block653 ]
  br label %.lr.ph.i.i366

.lr.ph.i.i366:                                    ; preds = %.lr.ph.i.i366.preheader, %.lr.ph.i.i366
  %.012.i.i367 = phi i64 [ %i.lu, %.lr.ph.i.i366 ], [ %.012.i.i367.ph, %.lr.ph.i.i366.preheader ]
  %.0511.i.i368 = phi ptr [ %i.lv, %.lr.ph.i.i366 ], [ %.0511.i.i368.ph, %.lr.ph.i.i366.preheader ] ; 2 uses
  %i.lu = add i64 %.012.i.i367, -1                ; 2 uses
  store i32 %.pre.i.i365, ptr %.0511.i.i368, align 4, !tbaa !48
  %i.lv = getelementptr inbounds nuw i8, ptr %.0511.i.i368, i64 4
  %.not.i.i369 = icmp eq i64 %i.lu, 0
  br i1 %.not.i.i369, label %.lr.ph.i.i377.preheader, label %.lr.ph.i.i366, !llvm.loop !398

.lr.ph.i.i377.preheader:                          ; preds = %.lr.ph.i.i366, %middle.block653, %.loopexit
  %i.lw = add i64 %i.e, %4
  %xtraiter684 = and i64 %i.lh, 3                 ; 2 uses
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.lr.ph.i.i377.prol.loopexit, label %.lr.ph.i.i377.prol

.lr.ph.i.i377.prol:                               ; preds = %.lr.ph.i.i377.preheader, %.lr.ph.i.i377.prol
end_hunk_7
begin_hunk_8_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvT0_mSC_SC_mT1_RT_:bb.a
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ei = getelementptr inbounds nuw i8, ptr %.01821.i.i178.prol, i64 4 ; 2 uses
  %i.ej = add i64 %.022.i.i177.prol, -1           ; 2 uses
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %.lr.ph.i.i176.prol.loopexit, label %.lr.ph.i.i176.prol, !llvm.loop !411

.lr.ph.i.i176.prol.loopexit:                      ; preds = %.lr.ph.i.i176.prol, %.lr.ph.i.i176.preheader
  %.022.i.i177.unr = phi i64 [ %i.dt, %.lr.ph.i.i176.preheader ], [ %i.ej, %.lr.ph.i.i176.prol ]
  %.01821.i.i178.unr = phi ptr [ %i.c, %.lr.ph.i.i176.preheader ], [ %i.ei, %.lr.ph.i.i176.prol ]
  %i.ek = sub nsw i64 %i.i, %i.l
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %._crit_edge.loopexit.i.i180, label %.lr.ph.i.i176

.lr.ph.i.i176:                                    ; preds = %.lr.ph.i.i176.prol.loopexit, %.lr.ph.i.i176
  %.022.i.i177 = phi i64 [ %i.ez, %.lr.ph.i.i176 ], [ %.022.i.i177.unr, %.lr.ph.i.i176.prol.loopexit ]
  %.01821.i.i178 = phi ptr [ %i.ey, %.lr.ph.i.i176 ], [ %.01821.i.i178.unr, %.lr.ph.i.i176.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i178) ]
  %i.em = load i32, ptr %.sroa.0.0.copyload.i165, align 4, !tbaa !48
  store i32 %i.em, ptr %.01821.i.i178, align 4, !tbaa !48
  %i.en = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ep = getelementptr inbounds nuw i8, ptr %.01821.i.i178, i64 4
  %i.eq = load i32, ptr %.sroa.0.0.copyload.i165, align 4, !tbaa !48
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !48
  %i.er = add i32 %i.en, 2
  store i32 %i.er, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.es = getelementptr inbounds nuw i8, ptr %.01821.i.i178, i64 8
  %i.et = load i32, ptr %.sroa.0.0.copyload.i165, align 4, !tbaa !48
  store i32 %i.et, ptr %i.es, align 4, !tbaa !48
  %i.eu = add i32 %i.en, 3
  store i32 %i.eu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ev = getelementptr inbounds nuw i8, ptr %.01821.i.i178, i64 12
  %i.ew = load i32, ptr %.sroa.0.0.copyload.i165, align 4, !tbaa !48
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !48
  %i.ex = add i32 %i.en, 4
  store i32 %i.ex, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ey = getelementptr inbounds nuw i8, ptr %.01821.i.i178, i64 16
  %i.ez = add i64 %.022.i.i177, -4                ; 2 uses
  %.not.i.i179.3 = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i179.3, label %._crit_edge.loopexit.i.i180, label %.lr.ph.i.i176, !llvm.loop !143

._crit_edge.loopexit.i.i180:                      ; preds = %.lr.ph.i.i176, %.lr.ph.i.i176.prol.loopexit
  %.not.i183 = icmp eq ptr %3, %i.dw
  br i1 %.not.i183, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i180
  %.not8.i.i184 = icmp eq ptr %0, %3
  br i1 %.not8.i.i184, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189, label %.lr.ph.i.i185.preheader

.lr.ph.i.i185.preheader:                          ; preds = %bb.g
  %i.fa = add i64 %i.g, -4
  %i.fb = sub i64 %i.fa, %i.b                     ; 2 uses
  %i.fc = lshr i64 %i.fb, 2
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check400 = icmp ult i64 %i.fb, 124
  br i1 %min.iters.check400, label %.lr.ph.i.i185.preheader414, label %vector.memcheck393

vector.memcheck393:                               ; preds = %.lr.ph.i.i185.preheader
  %i.fe = sub i64 %1, %i.du
  %i.ff = shl i64 %i.fe, 2
  %i.fg = add i64 %i.ff, -4
  %i.fh = add i64 %i.g, -4
  %i.fi = sub i64 %i.fh, %i.b
  %i.fj = and i64 %i.fi, -4                       ; 2 uses
  %i.fk = sub i64 %i.fg, %i.fj
  %scevgep394 = getelementptr i8, ptr %0, i64 %i.fk
  %i.fl = sub nuw nsw i64 -4, %i.fj
  %scevgep395 = getelementptr i8, ptr %3, i64 %i.fl
  %bound0396 = icmp ult ptr %scevgep394, %3
  %bound1397 = icmp ult ptr %scevgep395, %i.dw
  %found.conflict398 = and i1 %bound0396, %bound1397
  br i1 %found.conflict398, label %.lr.ph.i.i185.preheader414, label %vector.ph401

vector.ph401:                                     ; preds = %vector.memcheck393
  %n.vec402 = and i64 %i.fd, 9223372036854775800  ; 3 uses
  %i.fm = mul i64 %n.vec402, -4                   ; 2 uses
  %i.fn = getelementptr i8, ptr %i.dw, i64 %i.fm  ; 2 uses
  %i.fo = getelementptr i8, ptr %3, i64 %i.fm
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next409, %vector.body403 ] ; 2 uses
  %i.fp = mul i64 %index404, -4                   ; 2 uses
  %next.gep405 = getelementptr i8, ptr %i.dw, i64 %i.fp ; 2 uses
  %next.gep406 = getelementptr i8, ptr %3, i64 %i.fp ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %next.gep406, i64 -16 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %next.gep406, i64 -32 ; 2 uses
  %wide.load407 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !48, !alias.scope !412
  %wide.load408 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !48, !alias.scope !412
  %i.fs = getelementptr inbounds i8, ptr %next.gep405, i64 -16
  %i.ft = getelementptr inbounds i8, ptr %next.gep405, i64 -32
  store <4 x i32> %wide.load407, ptr %i.fs, align 4, !tbaa !48, !alias.scope !415, !noalias !412
  store <4 x i32> %wide.load408, ptr %i.ft, align 4, !tbaa !48, !alias.scope !415, !noalias !412
  store <4 x i32> zeroinitializer, ptr %i.fq, align 4, !tbaa !48, !alias.scope !412
  store <4 x i32> zeroinitializer, ptr %i.fr, align 4, !tbaa !48, !alias.scope !412
  %index.next409 = add nuw i64 %index404, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next409, %n.vec402
  br i1 %i.fu, label %middle.block410, label %vector.body403, !llvm.loop !417

middle.block410:                                  ; preds = %vector.body403
  %cmp.n411 = icmp eq i64 %i.fd, %n.vec402
  br i1 %cmp.n411, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189, label %.lr.ph.i.i185.preheader414

.lr.ph.i.i185.preheader414:                       ; preds = %vector.memcheck393, %.lr.ph.i.i185.preheader, %middle.block410
  %.010.i.i186.ph = phi ptr [ %i.dw, %vector.memcheck393 ], [ %i.dw, %.lr.ph.i.i185.preheader ], [ %i.fn, %middle.block410 ]
  %.079.i.i187.ph = phi ptr [ %3, %vector.memcheck393 ], [ %3, %.lr.ph.i.i185.preheader ], [ %i.fo, %middle.block410 ]
  br label %.lr.ph.i.i185

.lr.ph.i.i185:                                    ; preds = %.lr.ph.i.i185.preheader414, %.lr.ph.i.i185
  %.010.i.i186 = phi ptr [ %i.fw, %.lr.ph.i.i185 ], [ %.010.i.i186.ph, %.lr.ph.i.i185.preheader414 ]
  %.079.i.i187 = phi ptr [ %i.fv, %.lr.ph.i.i185 ], [ %.079.i.i187.ph, %.lr.ph.i.i185.preheader414 ]
  %i.fv = getelementptr inbounds i8, ptr %.079.i.i187, i64 -4 ; 4 uses
  %i.fw = getelementptr inbounds i8, ptr %.010.i.i186, i64 -4 ; 3 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !48
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !48
  store i32 0, ptr %i.fv, align 4, !tbaa !48
  %.not.i.i188 = icmp eq ptr %0, %i.fv
  br i1 %.not.i.i188, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189, label %.lr.ph.i.i185, !llvm.loop !418

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189: ; preds = %.lr.ph.i.i185, %middle.block410, %bb.g
  %i.fy = phi ptr [ %i.dw, %bb.g ], [ %i.fn, %middle.block410 ], [ %i.fw, %.lr.ph.i.i185 ] ; 2 uses
  %.not3.i190 = icmp eq ptr %0, %i.fy
  br i1 %.not3.i190, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189, %.lr.ph.i191
  %storemerge4.i192 = phi ptr [ %i.gb, %.lr.ph.i191 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i192, align 4, !tbaa !48
  %i.fz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ga = add i32 %i.fz, -1
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i192, i64 4 ; 2 uses
  %.not.i193 = icmp eq ptr %i.gb, %i.fy
  br i1 %.not.i193, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i191, !llvm.loop !215

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.gc = getelementptr i8, ptr %i.c, i64 %.idx   ; 10 uses
  %.not17.i203 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i203, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i204.preheader

.lr.ph.i204.preheader:                            ; preds = %bb.h
  %i.gd = and i64 %i.k, 4
  %lcmp.mod430.not = icmp eq i64 %i.gd, 0
  br i1 %lcmp.mod430.not, label %.lr.ph.i204.prol.loopexit, label %.lr.ph.i204.prol

.lr.ph.i204.prol:                                 ; preds = %.lr.ph.i204.preheader
  %i.ge = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gf = load i32, ptr %i.gc, align 4, !tbaa !48
  store i32 %i.gf, ptr %i.c, align 4, !tbaa !48
  store i32 0, ptr %i.gc, align 4, !tbaa !48
  %i.gg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %.lr.ph.i204.prol.loopexit

.lr.ph.i204.prol.loopexit:                        ; preds = %.lr.ph.i204.prol, %.lr.ph.i204.preheader
  %.020.i205.unr = phi i64 [ %i.l, %.lr.ph.i204.preheader ], [ %i.ge, %.lr.ph.i204.prol ]
  %.0819.i206.unr = phi ptr [ %i.gc, %.lr.ph.i204.preheader ], [ %i.gi, %.lr.ph.i204.prol ]
  %.01618.i207.unr = phi ptr [ %i.c, %.lr.ph.i204.preheader ], [ %i.gj, %.lr.ph.i204.prol ]
  %i.gk = icmp eq i64 %i.k, 4
  br i1 %i.gk, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.lr.ph.i204.prol.loopexit, %.lr.ph.i204
  %.020.i205 = phi i64 [ %i.gq, %.lr.ph.i204 ], [ %.020.i205.unr, %.lr.ph.i204.prol.loopexit ]
  %.0819.i206 = phi ptr [ %i.gu, %.lr.ph.i204 ], [ %.0819.i206.unr, %.lr.ph.i204.prol.loopexit ] ; 4 uses
  %.01618.i207 = phi ptr [ %i.gv, %.lr.ph.i204 ], [ %.01618.i207.unr, %.lr.ph.i204.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i207) ]
  %i.gl = load i32, ptr %.0819.i206, align 4, !tbaa !48
  store i32 %i.gl, ptr %.01618.i207, align 4, !tbaa !48
  store i32 0, ptr %.0819.i206, align 4, !tbaa !48
  %i.gm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.go = getelementptr inbounds nuw i8, ptr %.0819.i206, i64 4 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.01618.i207, i64 4
  %i.gq = add i64 %.020.i205, -2                  ; 2 uses
  %i.gr = load i32, ptr %i.go, align 4, !tbaa !48
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !48
  store i32 0, ptr %i.go, align 4, !tbaa !48
  %i.gs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gu = getelementptr inbounds nuw i8, ptr %.0819.i206, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.01618.i207, i64 8
  %.not.i208.1 = icmp eq i64 %i.gq, 0
  br i1 %.not.i208.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210, label %.lr.ph.i204, !llvm.loop !130

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210: ; preds = %.lr.ph.i204, %.lr.ph.i204.prol.loopexit
  %.not8.i.i212 = icmp eq ptr %3, %i.gc
  br i1 %.not8.i.i212, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213.preheader

.lr.ph.i.i213.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210
  %i.gw = shl nsw i64 %1, 2
  %i.gx = shl i64 %i.b, 1
  %7 = add i64 %i.gw, %i.gx
  %i.gy = add i64 %7, -4
  %i.gz = add i64 %i.a, %i.g
  %8 = shl i64 %4, 2
  %i.ha = add i64 %i.gz, %8
  %i.hb = sub i64 %i.gy, %i.ha                    ; 2 uses
  %i.hc = lshr i64 %i.hb, 2
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %min.iters.check332 = icmp ult i64 %i.hb, 188
  br i1 %min.iters.check332, label %.lr.ph.i.i213.preheader418, label %vector.memcheck325

vector.memcheck325:                               ; preds = %.lr.ph.i.i213.preheader
  %i.he = shl nsw i64 %1, 2                       ; 3 uses
  %i.hf = add i64 %i.he, -4
  %i.hg = shl i64 %i.b, 1
  %i.hh = add i64 %i.he, %i.hg
  %i.hi = add i64 %i.hh, -4
  %i.hj = add i64 %i.a, %i.g
  %i.hk = shl i64 %4, 2                           ; 2 uses
  %i.hl = add i64 %i.hj, %i.hk
  %i.hm = sub i64 %i.hi, %i.hl
  %i.hn = and i64 %i.hm, -4                       ; 2 uses
  %i.ho = sub i64 %i.hf, %i.hn
  %scevgep326 = getelementptr i8, ptr %0, i64 %i.ho
  %i.hp = add i64 %i.he, %i.b
  %i.hq = add i64 %i.hp, -4
  %i.hr = add i64 %i.hk, %i.a
  %i.hs = add i64 %i.hr, %i.hn
  %i.ht = sub i64 %i.hq, %i.hs
  %scevgep327 = getelementptr i8, ptr %0, i64 %i.ht
  %bound0328 = icmp ult ptr %scevgep326, %i.gc
  %bound1329 = icmp ult ptr %scevgep327, %i.c
  %found.conflict330 = and i1 %bound0328, %bound1329
  br i1 %found.conflict330, label %.lr.ph.i.i213.preheader418, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck325
  %n.vec334 = and i64 %i.hd, 9223372036854775800  ; 3 uses
  %i.hu = mul i64 %n.vec334, -4                   ; 2 uses
  %i.hv = getelementptr i8, ptr %i.c, i64 %i.hu   ; 2 uses
  %i.hw = getelementptr i8, ptr %i.gc, i64 %i.hu
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next341, %vector.body335 ] ; 2 uses
  %i.hx = mul i64 %index336, -4                   ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.c, i64 %i.hx ; 2 uses
  %next.gep338 = getelementptr i8, ptr %i.gc, i64 %i.hx ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %next.gep338, i64 -16 ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %next.gep338, i64 -32 ; 2 uses
  %wide.load339 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !48, !alias.scope !419
  %wide.load340 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !48, !alias.scope !419
  %i.ia = getelementptr inbounds i8, ptr %next.gep337, i64 -16
  %i.ib = getelementptr inbounds i8, ptr %next.gep337, i64 -32
  store <4 x i32> %wide.load339, ptr %i.ia, align 4, !tbaa !48, !alias.scope !422, !noalias !419
  store <4 x i32> %wide.load340, ptr %i.ib, align 4, !tbaa !48, !alias.scope !422, !noalias !419
  store <4 x i32> zeroinitializer, ptr %i.hy, align 4, !tbaa !48, !alias.scope !419
  store <4 x i32> zeroinitializer, ptr %i.hz, align 4, !tbaa !48, !alias.scope !419
  %index.next341 = add nuw i64 %index336, 8       ; 2 uses
  %i.ic = icmp eq i64 %index.next341, %n.vec334
  br i1 %i.ic, label %middle.block342, label %vector.body335, !llvm.loop !424

middle.block342:                                  ; preds = %vector.body335
  %cmp.n343 = icmp eq i64 %i.hd, %n.vec334
  br i1 %cmp.n343, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213.preheader418

.lr.ph.i.i213.preheader418:                       ; preds = %vector.memcheck325, %.lr.ph.i.i213.preheader, %middle.block342
  %.010.i.i214.ph = phi ptr [ %i.c, %vector.memcheck325 ], [ %i.c, %.lr.ph.i.i213.preheader ], [ %i.hv, %middle.block342 ]
  %.079.i.i215.ph = phi ptr [ %i.gc, %vector.memcheck325 ], [ %i.gc, %.lr.ph.i.i213.preheader ], [ %i.hw, %middle.block342 ]
  br label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.preheader418, %.lr.ph.i.i213
  %.010.i.i214 = phi ptr [ %i.ie, %.lr.ph.i.i213 ], [ %.010.i.i214.ph, %.lr.ph.i.i213.preheader418 ]
  %.079.i.i215 = phi ptr [ %i.id, %.lr.ph.i.i213 ], [ %.079.i.i215.ph, %.lr.ph.i.i213.preheader418 ]
  %i.id = getelementptr inbounds i8, ptr %.079.i.i215, i64 -4 ; 4 uses
  %i.ie = getelementptr inbounds i8, ptr %.010.i.i214, i64 -4 ; 3 uses
  %i.if = load i32, ptr %i.id, align 4, !tbaa !48
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !48
  store i32 0, ptr %i.id, align 4, !tbaa !48
  %.not.i.i216 = icmp eq ptr %3, %i.id
  br i1 %.not.i.i216, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213, !llvm.loop !425

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217: ; preds = %.lr.ph.i.i213, %middle.block342, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210
  %i.ig = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210 ], [ %i.hv, %middle.block342 ], [ %i.ie, %.lr.ph.i.i213 ] ; 2 uses
  %i.ih = sub i64 0, %4
  %i.ii = getelementptr [4 x i8], ptr %i.ig, i64 %i.ih ; 10 uses
  %.not9.i.i221 = icmp eq i64 %4, 0
  br i1 %.not9.i.i221, label %._crit_edge.loopexit.i.i228, label %.lr.ph.preheader.i.i222

.lr.ph.preheader.i.i222:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217
  %.sroa.0.0.copyload.i218 = load ptr, ptr %5, align 8
  %.pre.i.i223 = load i32, ptr %.sroa.0.0.copyload.i218, align 4, !tbaa !48 ; 2 uses
  %min.iters.check347 = icmp ult i64 %4, 8
  br i1 %min.iters.check347, label %.lr.ph.i.i224.preheader, label %vector.ph348

vector.ph348:                                     ; preds = %.lr.ph.preheader.i.i222
  %n.vec349 = and i64 %4, -8                      ; 3 uses
  %i.ij = and i64 %4, 7
  %i.ik = shl i64 %n.vec349, 2
  %i.il = getelementptr i8, ptr %i.ii, i64 %i.ik
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i223, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body350

vector.body350:                                   ; preds = %vector.body350, %vector.ph348
  %index351 = phi i64 [ 0, %vector.ph348 ], [ %index.next353, %vector.body350 ] ; 2 uses
  %i.im = shl i64 %index351, 2
  %next.gep352 = getelementptr i8, ptr %i.ii, i64 %i.im ; 2 uses
  %i.in = getelementptr i8, ptr %next.gep352, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep352, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat, ptr %i.in, align 4, !tbaa !48
  %index.next353 = add nuw i64 %index351, 8       ; 2 uses
  %i.io = icmp eq i64 %index.next353, %n.vec349
  br i1 %i.io, label %middle.block354, label %vector.body350, !llvm.loop !426

middle.block354:                                  ; preds = %vector.body350
  %cmp.n355 = icmp eq i64 %4, %n.vec349
  br i1 %cmp.n355, label %._crit_edge.loopexit.i.i228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %.lr.ph.preheader.i.i222, %middle.block354
  %.012.i.i225.ph = phi i64 [ %4, %.lr.ph.preheader.i.i222 ], [ %i.ij, %middle.block354 ]
  %.0511.i.i226.ph = phi ptr [ %i.ii, %.lr.ph.preheader.i.i222 ], [ %i.il, %middle.block354 ]
  br label %.lr.ph.i.i224

.lr.ph.i.i224:                                    ; preds = %.lr.ph.i.i224.preheader, %.lr.ph.i.i224
  %.012.i.i225 = phi i64 [ %i.ip, %.lr.ph.i.i224 ], [ %.012.i.i225.ph, %.lr.ph.i.i224.preheader ]
  %.0511.i.i226 = phi ptr [ %i.iq, %.lr.ph.i.i224 ], [ %.0511.i.i226.ph, %.lr.ph.i.i224.preheader ] ; 2 uses
  %i.ip = add i64 %.012.i.i225, -1                ; 2 uses
  store i32 %.pre.i.i223, ptr %.0511.i.i226, align 4, !tbaa !48
  %i.iq = getelementptr inbounds nuw i8, ptr %.0511.i.i226, i64 4
  %.not.i.i227 = icmp eq i64 %i.ip, 0
  br i1 %.not.i.i227, label %._crit_edge.loopexit.i.i228, label %.lr.ph.i.i224, !llvm.loop !427

._crit_edge.loopexit.i.i228:                      ; preds = %.lr.ph.i.i224, %middle.block354, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217
  %.not.i231 = icmp eq ptr %3, %i.ii
  br i1 %.not.i231, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %._crit_edge.loopexit.i.i228
  %.not8.i.i232 = icmp eq ptr %0, %3
  br i1 %.not8.i.i232, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, label %.lr.ph.i.i233.preheader

.lr.ph.i.i233.preheader:                          ; preds = %bb.i
  %i.ir = add i64 %i.g, -4
  %i.is = sub i64 %i.ir, %i.b                     ; 2 uses
  %i.it = lshr i64 %i.is, 2
  %i.iu = add nuw nsw i64 %i.it, 1                ; 2 uses
  %min.iters.check365 = icmp ult i64 %i.is, 108
  br i1 %min.iters.check365, label %.lr.ph.i.i233.preheader416, label %vector.memcheck358

vector.memcheck358:                               ; preds = %.lr.ph.i.i233.preheader
  %i.iv = shl i64 %4, 2
  %i.iw = add i64 %i.g, -4
  %i.ix = sub i64 %i.iw, %i.b
  %i.iy = and i64 %i.ix, -4                       ; 2 uses
  %i.iz = add i64 %i.iv, %i.iy
  %i.ja = sub nuw nsw i64 -4, %i.iz
  %scevgep359 = getelementptr i8, ptr %i.ig, i64 %i.ja
  %i.jb = sub nuw nsw i64 -4, %i.iy
  %scevgep360 = getelementptr i8, ptr %3, i64 %i.jb
  %bound0361 = icmp ult ptr %scevgep359, %3
  %bound1362 = icmp ult ptr %scevgep360, %i.ii
  %found.conflict363 = and i1 %bound0361, %bound1362
  br i1 %found.conflict363, label %.lr.ph.i.i233.preheader416, label %vector.ph366

vector.ph366:                                     ; preds = %vector.memcheck358
  %n.vec367 = and i64 %i.iu, 9223372036854775800  ; 3 uses
  %i.jc = mul i64 %n.vec367, -4                   ; 2 uses
  %i.jd = getelementptr i8, ptr %i.ii, i64 %i.jc  ; 2 uses
  %i.je = getelementptr i8, ptr %3, i64 %i.jc
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph366
  %index369 = phi i64 [ 0, %vector.ph366 ], [ %index.next374, %vector.body368 ] ; 2 uses
  %i.jf = mul i64 %index369, -4                   ; 2 uses
  %next.gep370 = getelementptr i8, ptr %i.ii, i64 %i.jf ; 2 uses
  %next.gep371 = getelementptr i8, ptr %3, i64 %i.jf ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %next.gep371, i64 -16 ; 2 uses
  %i.jh = getelementptr inbounds i8, ptr %next.gep371, i64 -32 ; 2 uses
  %wide.load372 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !48, !alias.scope !428
  %wide.load373 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !48, !alias.scope !428
  %i.ji = getelementptr inbounds i8, ptr %next.gep370, i64 -16
  %i.jj = getelementptr inbounds i8, ptr %next.gep370, i64 -32
  store <4 x i32> %wide.load372, ptr %i.ji, align 4, !tbaa !48, !alias.scope !431, !noalias !428
  store <4 x i32> %wide.load373, ptr %i.jj, align 4, !tbaa !48, !alias.scope !431, !noalias !428
  store <4 x i32> zeroinitializer, ptr %i.jg, align 4, !tbaa !48, !alias.scope !428
  store <4 x i32> zeroinitializer, ptr %i.jh, align 4, !tbaa !48, !alias.scope !428
  %index.next374 = add nuw i64 %index369, 8       ; 2 uses
  %i.jk = icmp eq i64 %index.next374, %n.vec367
  br i1 %i.jk, label %middle.block375, label %vector.body368, !llvm.loop !433

middle.block375:                                  ; preds = %vector.body368
  %cmp.n376 = icmp eq i64 %i.iu, %n.vec367
  br i1 %cmp.n376, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, label %.lr.ph.i.i233.preheader416

.lr.ph.i.i233.preheader416:                       ; preds = %vector.memcheck358, %.lr.ph.i.i233.preheader, %middle.block375
  %.010.i.i234.ph = phi ptr [ %i.ii, %vector.memcheck358 ], [ %i.ii, %.lr.ph.i.i233.preheader ], [ %i.jd, %middle.block375 ]
  %.079.i.i235.ph = phi ptr [ %3, %vector.memcheck358 ], [ %3, %.lr.ph.i.i233.preheader ], [ %i.je, %middle.block375 ]
  br label %.lr.ph.i.i233

.lr.ph.i.i233:                                    ; preds = %.lr.ph.i.i233.preheader416, %.lr.ph.i.i233
  %.010.i.i234 = phi ptr [ %i.jm, %.lr.ph.i.i233 ], [ %.010.i.i234.ph, %.lr.ph.i.i233.preheader416 ]
  %.079.i.i235 = phi ptr [ %i.jl, %.lr.ph.i.i233 ], [ %.079.i.i235.ph, %.lr.ph.i.i233.preheader416 ]
  %i.jl = getelementptr inbounds i8, ptr %.079.i.i235, i64 -4 ; 4 uses
  %i.jm = getelementptr inbounds i8, ptr %.010.i.i234, i64 -4 ; 3 uses
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !48
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !48
  store i32 0, ptr %i.jl, align 4, !tbaa !48
end_hunk_8
begin_hunk_9_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeIPKS3_EEPS3_SB_T_SD_:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %.011.i.i53.i.prol, i64 4 ; 2 uses
  %prol.iter237.next = add i64 %prol.iter237, 1   ; 2 uses
  %prol.iter237.cmp.not = icmp eq i64 %prol.iter237.next, %xtraiter235
  br i1 %prol.iter237.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !446

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader229
  %.lcssa230.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader229 ], [ %i.fm, %.lr.ph.i.i52.i.prol ]
  %.011.i.i53.i.unr = phi ptr [ %.011.i.i53.i.ph, %.lr.ph.i.i52.i.preheader229 ], [ %i.fn, %.lr.ph.i.i52.i.prol ]
  %.0610.i.i54.i.unr = phi i64 [ %.0610.i.i54.i.ph, %.lr.ph.i.i52.i.preheader229 ], [ %i.fk, %.lr.ph.i.i52.i.prol ]
  %.079.i.i55.i.unr = phi ptr [ %.079.i.i55.i.ph, %.lr.ph.i.i52.i.preheader229 ], [ %i.fm, %.lr.ph.i.i52.i.prol ]
  %i.fo = icmp ult i64 %i.fj, 7
  br i1 %i.fo, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.011.i.i53.i = phi ptr [ %i.gn, %.lr.ph.i.i52.i ], [ %.011.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 9 uses
  %.0610.i.i54.i = phi i64 [ %i.gk, %.lr.ph.i.i52.i ], [ %.0610.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.079.i.i55.i = phi ptr [ %i.gm, %.lr.ph.i.i52.i ], [ %.079.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 9 uses
  %i.fp = load i32, ptr %.079.i.i55.i, align 4, !tbaa !48
  store i32 %i.fp, ptr %.011.i.i53.i, align 4, !tbaa !48
  %i.fq = getelementptr inbounds nuw i8, ptr %.079.i.i55.i, i64 4
  %i.fr = getelementptr inbounds nuw i8, ptr %.011.i.i53.i, i64 4
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !48
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !48
  %i.ft = getelementptr inbounds nuw i8, ptr %.079.i.i55.i, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %.011.i.i53.i, i64 8
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !48
  store i32 %i.fv, ptr %i.fu, align 4, !tbaa !48
  %i.fw = getelementptr inbounds nuw i8, ptr %.079.i.i55.i, i64 12
  %i.fx = getelementptr inbounds nuw i8, ptr %.011.i.i53.i, i64 12
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !48
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !48
  %i.fz = getelementptr inbounds nuw i8, ptr %.079.i.i55.i, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %.011.i.i53.i, i64 16
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !48
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !48
  %i.gc = getelementptr inbounds nuw i8, ptr %.079.i.i55.i, i64 20
  %i.gd = getelementptr inbounds nuw i8, ptr %.011.i.i53.i, i64 20
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !48
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !48
  %i.gf = getelementptr inbounds nuw i8, ptr %.079.i.i55.i, i64 24
  %i.gg = getelementptr inbounds nuw i8, ptr %.011.i.i53.i, i64 24
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !48
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !48
  %i.gi = getelementptr inbounds nuw i8, ptr %.079.i.i55.i, i64 28
  %i.gj = getelementptr inbounds nuw i8, ptr %.011.i.i53.i, i64 28
  %i.gk = add i64 %.0610.i.i54.i, -8              ; 2 uses
  %i.gl = load i32, ptr %i.gi, align 4, !tbaa !48
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !48
  %i.gm = getelementptr inbounds nuw i8, ptr %.079.i.i55.i, i64 32 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.011.i.i53.i, i64 32
  %.not.i.i56.i.7 = icmp eq i64 %i.gk, 0
  br i1 %.not.i.i56.i.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !447

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i, %middle.block156
  %.lcssa121 = phi ptr [ %i.fe, %middle.block156 ], [ %.lcssa230.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.gm, %.lr.ph.i.i52.i ] ; 2 uses
  %i.go = sub nsw i64 %i.d, %i.bg                 ; 3 uses
  %xtraiter238 = and i64 %i.go, 3                 ; 2 uses
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %.lr.ph.i.i59.i.prol.loopexit, label %.lr.ph.i.i59.i.prol

.lr.ph.i.i59.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, %.lr.ph.i.i59.i.prol
  %.020.i.i.i.prol = phi i64 [ %i.gu, %.lr.ph.i.i59.i.prol ], [ %i.go, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ]
  %.0919.i.i.i.prol = phi ptr [ %i.gs, %.lr.ph.i.i59.i.prol ], [ %.lcssa121, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ] ; 2 uses
  %.01618.i.i.i.prol = phi ptr [ %i.gt, %.lr.ph.i.i59.i.prol ], [ %i.r, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ] ; 3 uses
  %prol.iter240 = phi i64 [ %prol.iter240.next, %.lr.ph.i.i59.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.prol) ]
  %i.gp = load i32, ptr %.0919.i.i.i.prol, align 4, !tbaa !48
  store i32 %i.gp, ptr %.01618.i.i.i.prol, align 4, !tbaa !48
  %i.gq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.prol, i64 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.prol, i64 4 ; 2 uses
  %i.gu = add i64 %.020.i.i.i.prol, -1            ; 2 uses
  %prol.iter240.next = add i64 %prol.iter240, 1   ; 2 uses
  %prol.iter240.cmp.not = icmp eq i64 %prol.iter240.next, %xtraiter238
  br i1 %prol.iter240.cmp.not, label %.lr.ph.i.i59.i.prol.loopexit, label %.lr.ph.i.i59.i.prol, !llvm.loop !448

.lr.ph.i.i59.i.prol.loopexit:                     ; preds = %.lr.ph.i.i59.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %.020.i.i.i.unr = phi i64 [ %i.go, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.gu, %.lr.ph.i.i59.i.prol ]
  %.0919.i.i.i.unr = phi ptr [ %.lcssa121, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.gs, %.lr.ph.i.i59.i.prol ]
  %.01618.i.i.i.unr = phi ptr [ %i.r, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.gt, %.lr.ph.i.i59.i.prol ]
  %i.gv = sub nsw i64 %i.bg, %i.d
  %i.gw = icmp ugt i64 %i.gv, -4
  br i1 %i.gw, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i59.i

.lr.ph.i.i59.i:                                   ; preds = %.lr.ph.i.i59.i.prol.loopexit, %.lr.ph.i.i59.i
  %.020.i.i.i = phi i64 [ %i.ho, %.lr.ph.i.i59.i ], [ %.020.i.i.i.unr, %.lr.ph.i.i59.i.prol.loopexit ]
  %.0919.i.i.i = phi ptr [ %i.hm, %.lr.ph.i.i59.i ], [ %.0919.i.i.i.unr, %.lr.ph.i.i59.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i59.i ], [ %.01618.i.i.i.unr, %.lr.ph.i.i59.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i) ]
  %i.gx = load i32, ptr %.0919.i.i.i, align 4, !tbaa !48
  store i32 %i.gx, ptr %.01618.i.i.i, align 4, !tbaa !48
  %i.gy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ha = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 4
  %i.hc = load i32, ptr %i.ha, align 4, !tbaa !48
  store i32 %i.hc, ptr %i.hb, align 4, !tbaa !48
  %i.hd = add i32 %i.gy, 2
  store i32 %i.hd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.he = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 8
  %i.hg = load i32, ptr %i.he, align 4, !tbaa !48
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !48
  %i.hh = add i32 %i.gy, 3
  store i32 %i.hh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hi = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 12
  %i.hj = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 12
  %i.hk = load i32, ptr %i.hi, align 4, !tbaa !48
  store i32 %i.hk, ptr %i.hj, align 4, !tbaa !48
  %i.hl = add i32 %i.gy, 4
  store i32 %i.hl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hm = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 16
  %i.ho = add i64 %.020.i.i.i, -4                 ; 2 uses
  %.not.i.i60.i.3 = icmp eq i64 %i.ho, 0
  br i1 %.not.i.i60.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i59.i, !llvm.loop !449

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i59.i.prol.loopexit, %.lr.ph.i.i59.i, %middle.block138
  %i.hp = trunc i64 %i.d to i16
  %i.hq = add i16 %i.p, %i.hp
  store i16 %i.hq, ptr %i.o, align 2, !tbaa !73
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %.not45 = icmp ugt i64 %i.d, %i.ag
  br i1 %.not45, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i57 = icmp samesign ult i64 %i.ax, %i.d
  %i.hr = sub nsw i64 0, %i.d                     ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.hr ; 3 uses
  br i1 %.not.i57, label %.lr.ph.i49.i74, label %.lr.ph.i.i59.preheader

.lr.ph.i.i59.preheader:                           ; preds = %bb.m
  %i.ht = icmp eq i64 %i.c, 4
  br i1 %i.ht, label %.lr.ph.i.i59.epil.preheader, label %.lr.ph.i.i59.preheader.new

.lr.ph.i.i59.preheader.new:                       ; preds = %.lr.ph.i.i59.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %.lr.ph.i.i59, %.lr.ph.i.i59.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i59.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i59 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ah, %.lr.ph.i.i59.preheader.new ], [ %i.ic, %.lr.ph.i.i59 ] ; 4 uses
  %.01618.i.i61 = phi ptr [ %i.hs, %.lr.ph.i.i59.preheader.new ], [ %i.id, %.lr.ph.i.i59 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i59.preheader.new ], [ %niter.next.1, %.lr.ph.i.i59 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i61) ]
  %i.hu = load i32, ptr %.0919.i.i, align 4, !tbaa !48
  store i32 %i.hu, ptr %.01618.i.i61, align 4, !tbaa !48
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !48
  %i.hv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hw = add i32 %i.hv, 1
  store i32 %i.hw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hx = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.01618.i.i61, i64 4
  %i.hz = load i32, ptr %i.hx, align 4, !tbaa !48
  store i32 %i.hz, ptr %i.hy, align 4, !tbaa !48
  store i32 0, ptr %i.hx, align 4, !tbaa !48
  %i.ia = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ic = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.01618.i.i61, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i59, !llvm.loop !144

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i59
  %indvar.next = or disjoint i64 %indvar, 1
  %i.ie = and i64 %i.c, 4
  %lcmp.mod242.not = icmp eq i64 %i.ie, 0
  br i1 %lcmp.mod242.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i59.epil.preheader

.lr.ph.i.i59.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i59.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i59.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ah, %.lr.ph.i.i59.preheader ], [ %i.ic, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i61.epil.init = phi ptr [ %i.hs, %.lr.ph.i.i59.preheader ], [ %i.id, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod245 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod245)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i61.epil.init) ]
  %i.if = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !48
  store i32 %i.if, ptr %.01618.i.i61.epil.init, align 4, !tbaa !48
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !48
  %i.ig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ii = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i59.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i59.epil.preheader ]
  %.lcssa228 = phi ptr [ %i.ic, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.ii, %.lr.ph.i.i59.epil.preheader ] ; 6 uses
  %.not8.i.i63 = icmp eq ptr %.lcssa228, %1
  br i1 %.not8.i.i63, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i64.preheader

.lr.ph.i40.i64.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.ij = add i64 %i.au, -4
  %i.ik = add i64 %i.c, %i.f
  %4 = shl nuw nsw i64 %i.ag, 2
  %i.il = add i64 %i.ik, %4
  %i.im = sub i64 %i.ij, %i.il                    ; 2 uses
  %i.in = lshr i64 %i.im, 2
  %i.io = add nuw nsw i64 %i.in, 1                ; 2 uses
  %min.iters.check168 = icmp ult i64 %i.im, 140
  br i1 %min.iters.check168, label %.lr.ph.i40.i64.preheader226, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph.i40.i64.preheader
  %i.ip = add i64 %i.au, -4
  %i.iq = add i64 %i.c, %i.f
  %i.ir = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.is = add i64 %i.iq, %i.ir
  %i.it = sub i64 %i.ip, %i.is
  %i.iu = and i64 %i.it, -4
  %i.iv = add i64 %i.iu, %i.ir                    ; 2 uses
  %i.iw = getelementptr i8, ptr %i.e, i64 %i.iv
  %scevgep162 = getelementptr i8, ptr %i.iw, i64 4
  %i.ix = shl i64 %indvar.lcssa, 2
  %i.iy = getelementptr i8, ptr %i.e, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 %i.iv
  %scevgep163 = getelementptr i8, ptr %i.iz, i64 8
  %bound0164 = icmp ult ptr %i.ah, %scevgep163
  %bound1165 = icmp ult ptr %.lcssa228, %scevgep162
  %found.conflict166 = and i1 %bound0164, %bound1165
  br i1 %found.conflict166, label %.lr.ph.i40.i64.preheader226, label %vector.ph169

vector.ph169:                                     ; preds = %vector.memcheck161
  %n.vec170 = and i64 %i.io, 9223372036854775800  ; 3 uses
  %i.ja = shl i64 %n.vec170, 2                    ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ah, i64 %i.ja  ; 2 uses
  %i.jc = getelementptr i8, ptr %.lcssa228, i64 %i.ja
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next177, %vector.body171 ] ; 2 uses
  %i.jd = shl i64 %index172, 2                    ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.ah, i64 %i.jd ; 2 uses
  %next.gep174 = getelementptr i8, ptr %.lcssa228, i64 %i.jd ; 3 uses
  %i.je = getelementptr i8, ptr %next.gep174, i64 16 ; 2 uses
  %wide.load175 = load <4 x i32>, ptr %next.gep174, align 4, !tbaa !48, !alias.scope !450
  %wide.load176 = load <4 x i32>, ptr %i.je, align 4, !tbaa !48, !alias.scope !450
  %i.jf = getelementptr i8, ptr %next.gep173, i64 16
  store <4 x i32> %wide.load175, ptr %next.gep173, align 4, !tbaa !48, !alias.scope !453, !noalias !450
  store <4 x i32> %wide.load176, ptr %i.jf, align 4, !tbaa !48, !alias.scope !453, !noalias !450
  store <4 x i32> zeroinitializer, ptr %next.gep174, align 4, !tbaa !48, !alias.scope !450
  store <4 x i32> zeroinitializer, ptr %i.je, align 4, !tbaa !48, !alias.scope !450
  %index.next177 = add nuw i64 %index172, 8       ; 2 uses
  %i.jg = icmp eq i64 %index.next177, %n.vec170
  br i1 %i.jg, label %middle.block178, label %vector.body171, !llvm.loop !455

middle.block178:                                  ; preds = %vector.body171
  %cmp.n179 = icmp eq i64 %i.io, %n.vec170
  br i1 %cmp.n179, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i64.preheader226

.lr.ph.i40.i64.preheader226:                      ; preds = %vector.memcheck161, %.lr.ph.i40.i64.preheader, %middle.block178
  %.010.i.i65.ph = phi ptr [ %i.ah, %vector.memcheck161 ], [ %i.ah, %.lr.ph.i40.i64.preheader ], [ %i.jb, %middle.block178 ]
  %.079.i.i66.ph = phi ptr [ %.lcssa228, %vector.memcheck161 ], [ %.lcssa228, %.lr.ph.i40.i64.preheader ], [ %i.jc, %middle.block178 ]
  br label %.lr.ph.i40.i64

.lr.ph.i40.i64:                                   ; preds = %.lr.ph.i40.i64.preheader226, %.lr.ph.i40.i64
  %.010.i.i65 = phi ptr [ %i.jj, %.lr.ph.i40.i64 ], [ %.010.i.i65.ph, %.lr.ph.i40.i64.preheader226 ] ; 2 uses
  %.079.i.i66 = phi ptr [ %i.ji, %.lr.ph.i40.i64 ], [ %.079.i.i66.ph, %.lr.ph.i40.i64.preheader226 ] ; 3 uses
  %i.jh = load i32, ptr %.079.i.i66, align 4, !tbaa !48
  store i32 %i.jh, ptr %.010.i.i65, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i66, align 4, !tbaa !48
  %i.ji = getelementptr inbounds nuw i8, ptr %.079.i.i66, i64 4 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.010.i.i65, i64 4 ; 2 uses
  %.not.i41.i67 = icmp eq ptr %i.ji, %1
  br i1 %.not.i41.i67, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i64, !llvm.loop !456

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %.lr.ph.i40.i64, %middle.block178, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.ah, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.jb, %middle.block178 ], [ %i.jj, %.lr.ph.i40.i64 ] ; 4 uses
  %min.iters.check186 = icmp ult i64 %i.d, 8
  %.0.lcssa.i.i183 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.jk = sub i64 %i.b, %.0.lcssa.i.i183
  %diff.check184 = icmp ugt i64 %i.jk, -32
  %or.cond222 = select i1 %min.iters.check186, i1 true, i1 %diff.check184
  br i1 %or.cond222, label %.lr.ph.i.i.i68.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %n.vec188 = and i64 %i.d, -8                    ; 3 uses
  %i.jl = shl nsw i64 %n.vec188, 2                ; 2 uses
  %i.jm = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.jl
  %i.jn = and i64 %i.d, 7
  %i.jo = getelementptr i8, ptr %2, i64 %i.jl
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next195, %vector.body189 ] ; 2 uses
  %i.jp = shl i64 %index190, 2                    ; 2 uses
  %next.gep191 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.jp ; 2 uses
  %next.gep192 = getelementptr i8, ptr %2, i64 %i.jp ; 2 uses
  %i.jq = getelementptr i8, ptr %next.gep192, i64 16
  %wide.load193 = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !48
  %wide.load194 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !48
  %i.jr = getelementptr i8, ptr %next.gep191, i64 16
  store <4 x i32> %wide.load193, ptr %next.gep191, align 4, !tbaa !48
  store <4 x i32> %wide.load194, ptr %i.jr, align 4, !tbaa !48
  %index.next195 = add nuw i64 %index190, 8       ; 2 uses
  %i.js = icmp eq i64 %index.next195, %n.vec188
  br i1 %i.js, label %middle.block196, label %vector.body189, !llvm.loop !457

middle.block196:                                  ; preds = %vector.body189
  %cmp.n197 = icmp eq i64 %i.d, %n.vec188
  br i1 %cmp.n197, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i68.preheader

.lr.ph.i.i.i68.preheader:                         ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %middle.block196
  %.011.i.i.i69.ph = phi ptr [ %.0.lcssa.i.i, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.jm, %middle.block196 ] ; 2 uses
  %.0610.i.i.i70.ph = phi i64 [ %i.d, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.jn, %middle.block196 ] ; 4 uses
  %.079.i.i.i71.ph = phi ptr [ %2, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.jo, %middle.block196 ] ; 2 uses
  %i.jt = add nsw i64 %.0610.i.i.i70.ph, -1
  %xtraiter246 = and i64 %.0610.i.i.i70.ph, 7     ; 2 uses
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %.lr.ph.i.i.i68.prol.loopexit, label %.lr.ph.i.i.i68.prol

.lr.ph.i.i.i68.prol:                              ; preds = %.lr.ph.i.i.i68.preheader, %.lr.ph.i.i.i68.prol
  %.011.i.i.i69.prol = phi ptr [ %i.jx, %.lr.ph.i.i.i68.prol ], [ %.011.i.i.i69.ph, %.lr.ph.i.i.i68.preheader ] ; 2 uses
  %.0610.i.i.i70.prol = phi i64 [ %i.ju, %.lr.ph.i.i.i68.prol ], [ %.0610.i.i.i70.ph, %.lr.ph.i.i.i68.preheader ]
  %.079.i.i.i71.prol = phi ptr [ %i.jw, %.lr.ph.i.i.i68.prol ], [ %.079.i.i.i71.ph, %.lr.ph.i.i.i68.preheader ] ; 2 uses
  %prol.iter248 = phi i64 [ %prol.iter248.next, %.lr.ph.i.i.i68.prol ], [ 0, %.lr.ph.i.i.i68.preheader ]
  %i.ju = add i64 %.0610.i.i.i70.prol, -1         ; 2 uses
  %i.jv = load i32, ptr %.079.i.i.i71.prol, align 4, !tbaa !48
  store i32 %i.jv, ptr %.011.i.i.i69.prol, align 4, !tbaa !48
  %i.jw = getelementptr inbounds nuw i8, ptr %.079.i.i.i71.prol, i64 4 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.011.i.i.i69.prol, i64 4 ; 2 uses
  %prol.iter248.next = add i64 %prol.iter248, 1   ; 2 uses
  %prol.iter248.cmp.not = icmp eq i64 %prol.iter248.next, %xtraiter246
  br i1 %prol.iter248.cmp.not, label %.lr.ph.i.i.i68.prol.loopexit, label %.lr.ph.i.i.i68.prol, !llvm.loop !458

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
  %i.jz = load i32, ptr %.079.i.i.i71, align 4, !tbaa !48
  store i32 %i.jz, ptr %.011.i.i.i69, align 4, !tbaa !48
  %i.ka = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 4
  %i.kb = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 4
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !48
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !48
  %i.kd = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 8
  %i.kf = load i32, ptr %i.kd, align 4, !tbaa !48
  store i32 %i.kf, ptr %i.ke, align 4, !tbaa !48
  %i.kg = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 12
  %i.kh = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 12
  %i.ki = load i32, ptr %i.kg, align 4, !tbaa !48
  store i32 %i.ki, ptr %i.kh, align 4, !tbaa !48
  %i.kj = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 16
  %i.kk = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 16
  %i.kl = load i32, ptr %i.kj, align 4, !tbaa !48
  store i32 %i.kl, ptr %i.kk, align 4, !tbaa !48
  %i.km = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 20
  %i.kn = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 20
  %i.ko = load i32, ptr %i.km, align 4, !tbaa !48
  store i32 %i.ko, ptr %i.kn, align 4, !tbaa !48
  %i.kp = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 24
  %i.kq = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 24
  %i.kr = load i32, ptr %i.kp, align 4, !tbaa !48
  store i32 %i.kr, ptr %i.kq, align 4, !tbaa !48
  %i.ks = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 28
  %i.kt = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 28
  %i.ku = add i64 %.0610.i.i.i70, -8              ; 2 uses
  %i.kv = load i32, ptr %i.ks, align 4, !tbaa !48
  store i32 %i.kv, ptr %i.kt, align 4, !tbaa !48
  %i.kw = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 32
  %i.kx = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 32
  %.not.i.i.i72.7 = icmp eq i64 %i.ku, 0
  br i1 %.not.i.i.i72.7, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i68, !llvm.loop !459

.lr.ph.i49.i74:                                   ; preds = %bb.m, %.lr.ph.i49.i74
  %.018.i.i75 = phi ptr [ %i.lb, %.lr.ph.i49.i74 ], [ %i.ah, %bb.m ] ; 3 uses
  %.01517.i.i76 = phi ptr [ %i.lc, %.lr.ph.i49.i74 ], [ %i.hs, %bb.m ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i76) ]
  %i.ky = load i32, ptr %.018.i.i75, align 4, !tbaa !48
  store i32 %i.ky, ptr %.01517.i.i76, align 4, !tbaa !48
  store i32 0, ptr %.018.i.i75, align 4, !tbaa !48
  %i.kz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.la = add i32 %i.kz, 1
  store i32 %i.la, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.lb = getelementptr inbounds nuw i8, ptr %.018.i.i75, i64 4 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.01517.i.i76, i64 4 ; 3 uses
  %.not.i50.i77 = icmp eq ptr %i.lb, %1
  br i1 %.not.i50.i77, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i49.i74, !llvm.loop !127

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i49.i74
  %i.ld = sub nsw i64 %i.d, %i.ax                 ; 3 uses
  %.neg = add nsw i64 %i.ax, 1
  %xtraiter249 = and i64 %i.ld, 1
  %i.le = icmp eq i64 %i.d, %.neg
  br i1 %i.le, label %.lr.ph.i.i51.i.epil.preheader, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %unroll_iter254 = and i64 %i.ld, -2
end_hunk_9
begin_hunk_10_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.i216.preheader705, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i216.preheader
  %i.by = shl i64 %1, 2
  %i.bz = add i64 %i.by, %i.d
  %i.ca = shl i64 %i.j, 2                         ; 2 uses
  %i.cb = add i64 %i.bz, %i.ca
  %i.cc = add i64 %i.cb, -4
  %i.cd = add i64 %i.h, %i.c
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = and i64 %i.ce, -4                       ; 2 uses
  %i.cg = getelementptr i8, ptr %0, i64 %i.cf
  %scevgep = getelementptr i8, ptr %i.cg, i64 4
  %i.ch = add i64 %i.h, %i.cf
  %i.ci = add i64 %i.ch, 4
  %i.cj = sub i64 %i.ci, %i.ca
  %scevgep503 = getelementptr i8, ptr %3, i64 %i.cj
  %bound0 = icmp ult ptr %0, %scevgep503
  %bound1 = icmp ult ptr %i.bp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i216.preheader705, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, 9223372036854775800     ; 3 uses
  %i.ck = shl i64 %n.vec, 2                       ; 2 uses
  %i.cl = getelementptr i8, ptr %0, i64 %i.ck     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bp, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cn ; 2 uses
  %next.gep504 = getelementptr i8, ptr %i.bp, i64 %i.cn ; 3 uses
  %i.co = getelementptr i8, ptr %next.gep504, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep504, align 4, !tbaa !48, !alias.scope !475
  %wide.load505 = load <4 x i32>, ptr %i.co, align 4, !tbaa !48, !alias.scope !475
  %i.cp = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !48, !alias.scope !478, !noalias !475
  store <4 x i32> %wide.load505, ptr %i.cp, align 4, !tbaa !48, !alias.scope !478, !noalias !475
  store <4 x i32> zeroinitializer, ptr %next.gep504, align 4, !tbaa !48, !alias.scope !475
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !48, !alias.scope !475
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !480

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader705

.lr.ph.i.i216.preheader705:                       ; preds = %vector.memcheck, %.lr.ph.i.i216.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i216.preheader ], [ %i.cl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bp, %vector.memcheck ], [ %i.bp, %.lr.ph.i.i216.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i.i216

.lr.ph.i.i216:                                    ; preds = %.lr.ph.i.i216.preheader705, %.lr.ph.i.i216
  %.010.i.i = phi ptr [ %i.ct, %.lr.ph.i.i216 ], [ %.010.i.i.ph, %.lr.ph.i.i216.preheader705 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cs, %.lr.ph.i.i216 ], [ %.079.i.i.ph, %.lr.ph.i.i216.preheader705 ] ; 3 uses
  %i.cr = load i32, ptr %.079.i.i, align 4, !tbaa !48
  store i32 %i.cr, ptr %.010.i.i, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i, align 4, !tbaa !48
  %i.cs = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.cs, %i.b
  br i1 %.not.i.i217, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216, !llvm.loop !481

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i216, %middle.block, %bb.e
  %i.cu = phi ptr [ %0, %bb.e ], [ %i.cl, %middle.block ], [ %i.ct, %.lr.ph.i.i216 ] ; 2 uses
  %.not3.i = icmp eq ptr %i.cu, %i.b
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i218
  %storemerge4.i = phi ptr [ %i.cx, %.lr.ph.i218 ], [ %i.cu, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !48
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i219 = icmp eq ptr %i.cx, %i.b
  br i1 %.not.i219, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i218, !llvm.loop !215

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i207, %bb.c
  %.not.i222 = icmp eq i64 %1, 0
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  %xtraiter709 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod710.not = icmp eq i64 %xtraiter709, 0
  br i1 %lcmp.mod710.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cy = phi i64 [ %i.cz, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i223.prol = phi ptr [ %i.dc, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter711 = phi i64 [ %prol.iter711.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cz = add i64 %i.cy, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i223.prol, align 4, !tbaa !48
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.db = add i32 %i.da, -1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i223.prol, i64 4 ; 2 uses
  %prol.iter711.next = add i64 %prol.iter711, 1   ; 2 uses
  %prol.iter711.cmp.not = icmp eq i64 %prol.iter711.next, %xtraiter709
  br i1 %prol.iter711.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !482

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cz, %.preheader.prol ]
  %.0.i223.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.dc, %.preheader.prol ]
  %i.dd = icmp ult i64 %1, 4
  br i1 %i.dd, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.de = phi i64 [ %i.dm, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i223 = phi ptr [ %i.do, %.preheader ], [ %.0.i223.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i223, align 4, !tbaa !48
  %i.df = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.dg = add i32 %i.df, -1
  store i32 %i.dg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i223, i64 4
  store i32 -2147483648, ptr %i.dh, align 4, !tbaa !48
  %i.di = add i32 %i.df, -2
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i223, i64 8
  store i32 -2147483648, ptr %i.dj, align 4, !tbaa !48
  %i.dk = add i32 %i.df, -3
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i223, i64 12
  %i.dm = add i64 %i.de, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !48
  %i.dn = add i32 %i.df, -4
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i223, i64 16
  %.not3.i224.3 = icmp eq i64 %i.dm, 0
  br i1 %.not3.i224.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.preheader, !llvm.loop !217

bb.f:                                             ; preds = %bb.a
  %i.dp = icmp ugt i64 %4, %i.i                   ; 2 uses
  %.not180 = icmp ugt i64 %i.i, %i.f
  br i1 %.not180, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i234 = icmp eq ptr %0, %2
  br i1 %.not17.i234, label %.loopexit414, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %bb.g
  %i.dq = and i64 %i.h, 4
  %lcmp.mod716.not = icmp eq i64 %i.dq, 0
  br i1 %lcmp.mod716.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol

.lr.ph.i235.prol:                                 ; preds = %.lr.ph.i235.preheader
  %i.dr = add nsw i64 %i.i, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.ds = load i32, ptr %0, align 4, !tbaa !48
  store i32 %i.ds, ptr %2, align 4, !tbaa !48
  store i32 0, ptr %0, align 4, !tbaa !48
  %i.dt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %.lr.ph.i235.prol.loopexit

.lr.ph.i235.prol.loopexit:                        ; preds = %.lr.ph.i235.prol, %.lr.ph.i235.preheader
  %.020.i236.unr = phi i64 [ %i.i, %.lr.ph.i235.preheader ], [ %i.dr, %.lr.ph.i235.prol ]
  %.0819.i237.unr = phi ptr [ %0, %.lr.ph.i235.preheader ], [ %i.dv, %.lr.ph.i235.prol ]
  %.01618.i238.unr = phi ptr [ %2, %.lr.ph.i235.preheader ], [ %i.dw, %.lr.ph.i235.prol ]
  %i.dx = icmp eq i64 %i.h, 4
  br i1 %i.dx, label %.loopexit414, label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235
  %.020.i236 = phi i64 [ %i.ed, %.lr.ph.i235 ], [ %.020.i236.unr, %.lr.ph.i235.prol.loopexit ]
  %.0819.i237 = phi ptr [ %i.eh, %.lr.ph.i235 ], [ %.0819.i237.unr, %.lr.ph.i235.prol.loopexit ] ; 4 uses
  %.01618.i238 = phi ptr [ %i.ei, %.lr.ph.i235 ], [ %.01618.i238.unr, %.lr.ph.i235.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i238) ]
  %i.dy = load i32, ptr %.0819.i237, align 4, !tbaa !48
  store i32 %i.dy, ptr %.01618.i238, align 4, !tbaa !48
  store i32 0, ptr %.0819.i237, align 4, !tbaa !48
  %i.dz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.eb = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 4
  %i.ed = add i64 %.020.i236, -2                  ; 2 uses
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !48
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !48
  store i32 0, ptr %i.eb, align 4, !tbaa !48
  %i.ef = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.eh = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 8
  %.not.i239.1 = icmp eq i64 %i.ed, 0
  br i1 %.not.i239.1, label %.loopexit414, label %.lr.ph.i235, !llvm.loop !130

.loopexit414:                                     ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235, %bb.g
  %i.ej = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.i) ; 8 uses
  %i.ek = getelementptr inbounds i8, ptr %0, i64 %i.h ; 6 uses
  %.not8.i = icmp eq ptr %i.ek, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %.loopexit414
  %7 = add i64 %i.c, %i.g
  %i.el = add i64 %7, -4
  %8 = shl i64 %i.d, 1
  %i.em = sub i64 %i.el, %8                       ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check514 = icmp ult i64 %i.em, 124
  br i1 %min.iters.check514, label %.lr.ph.i242.preheader702, label %vector.memcheck507

vector.memcheck507:                               ; preds = %.lr.ph.i242.preheader
  %i.ep = add i64 %i.c, %i.g
  %i.eq = add i64 %i.ep, -4
  %i.er = shl i64 %i.d, 1
  %i.es = sub i64 %i.eq, %i.er
  %i.et = and i64 %i.es, -4                       ; 2 uses
  %i.eu = getelementptr i8, ptr %0, i64 %i.et
  %scevgep508 = getelementptr i8, ptr %i.eu, i64 4
  %i.ev = add i64 %i.et, %i.d
  %i.ew = add i64 %i.ev, 4
  %i.ex = sub i64 %i.ew, %i.g
  %scevgep509 = getelementptr i8, ptr %0, i64 %i.ex
  %bound0510 = icmp ult ptr %0, %scevgep509
  %bound1511 = icmp ult ptr %i.ek, %scevgep508
  %found.conflict512 = and i1 %bound0510, %bound1511
  br i1 %found.conflict512, label %.lr.ph.i242.preheader702, label %vector.ph515

vector.ph515:                                     ; preds = %vector.memcheck507
  %n.vec516 = and i64 %i.eo, 9223372036854775800  ; 3 uses
  %i.ey = shl i64 %n.vec516, 2                    ; 2 uses
  %i.ez = getelementptr i8, ptr %0, i64 %i.ey     ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ek, i64 %i.ey
  br label %vector.body517

vector.body517:                                   ; preds = %vector.body517, %vector.ph515
  %index518 = phi i64 [ 0, %vector.ph515 ], [ %index.next523, %vector.body517 ] ; 2 uses
  %i.fb = shl i64 %index518, 2                    ; 2 uses
  %next.gep519 = getelementptr i8, ptr %0, i64 %i.fb ; 2 uses
  %next.gep520 = getelementptr i8, ptr %i.ek, i64 %i.fb ; 3 uses
  %i.fc = getelementptr i8, ptr %next.gep520, i64 16 ; 2 uses
  %wide.load521 = load <4 x i32>, ptr %next.gep520, align 4, !tbaa !48, !alias.scope !483
  %wide.load522 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !48, !alias.scope !483
  %i.fd = getelementptr i8, ptr %next.gep519, i64 16
  store <4 x i32> %wide.load521, ptr %next.gep519, align 4, !tbaa !48, !alias.scope !486, !noalias !483
  store <4 x i32> %wide.load522, ptr %i.fd, align 4, !tbaa !48, !alias.scope !486, !noalias !483
  store <4 x i32> zeroinitializer, ptr %next.gep520, align 4, !tbaa !48, !alias.scope !483
  store <4 x i32> zeroinitializer, ptr %i.fc, align 4, !tbaa !48, !alias.scope !483
  %index.next523 = add nuw i64 %index518, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next523, %n.vec516
  br i1 %i.fe, label %middle.block524, label %vector.body517, !llvm.loop !488

middle.block524:                                  ; preds = %vector.body517
  %cmp.n525 = icmp eq i64 %i.eo, %n.vec516
  br i1 %cmp.n525, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader702

.lr.ph.i242.preheader702:                         ; preds = %vector.memcheck507, %.lr.ph.i242.preheader, %middle.block524
  %.010.i.ph = phi ptr [ %0, %vector.memcheck507 ], [ %0, %.lr.ph.i242.preheader ], [ %i.ez, %middle.block524 ]
  %.079.i.ph = phi ptr [ %i.ek, %vector.memcheck507 ], [ %i.ek, %.lr.ph.i242.preheader ], [ %i.fa, %middle.block524 ]
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph.i242.preheader702, %.lr.ph.i242
  %.010.i = phi ptr [ %i.fh, %.lr.ph.i242 ], [ %.010.i.ph, %.lr.ph.i242.preheader702 ] ; 2 uses
  %.079.i = phi ptr [ %i.fg, %.lr.ph.i242 ], [ %.079.i.ph, %.lr.ph.i242.preheader702 ] ; 3 uses
  %i.ff = load i32, ptr %.079.i, align 4, !tbaa !48
  store i32 %i.ff, ptr %.010.i, align 4, !tbaa !48
  store i32 0, ptr %.079.i, align 4, !tbaa !48
  %i.fg = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i243 = icmp eq ptr %i.fg, %3
  br i1 %.not.i243, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242, !llvm.loop !489

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i242, %middle.block524, %.loopexit414
  %.0.lcssa.i = phi ptr [ %0, %.loopexit414 ], [ %i.ez, %middle.block524 ], [ %i.fh, %.lr.ph.i242 ] ; 6 uses
  %.not8.i.i244 = icmp eq i64 %i.ej, 0
  br i1 %.not8.i.i244, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i245.preheader

.lr.ph.i.i245.preheader:                          ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %.0.lcssa.i529 = ptrtoaddr ptr %.0.lcssa.i to i64
  %min.iters.check531 = icmp ult i64 %i.ej, 8
  %i.fi = sub i64 %i.a, %.0.lcssa.i529
  %diff.check = icmp ugt i64 %i.fi, -32
  %or.cond682 = select i1 %min.iters.check531, i1 true, i1 %diff.check
  br i1 %or.cond682, label %.lr.ph.i.i245.preheader700, label %vector.ph532

vector.ph532:                                     ; preds = %.lr.ph.i.i245.preheader
  %n.vec533 = and i64 %i.ej, -8                   ; 3 uses
  %i.fj = shl i64 %n.vec533, 2                    ; 2 uses
  %i.fk = getelementptr i8, ptr %.0.lcssa.i, i64 %i.fj
  %i.fl = and i64 %i.ej, 7
  %i.fm = getelementptr i8, ptr %5, i64 %i.fj     ; 2 uses
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph532
  %index535 = phi i64 [ 0, %vector.ph532 ], [ %index.next540, %vector.body534 ] ; 2 uses
  %i.fn = shl i64 %index535, 2                    ; 2 uses
  %next.gep536 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.fn ; 2 uses
  %next.gep537 = getelementptr i8, ptr %5, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep537, i64 16
  %wide.load538 = load <4 x i32>, ptr %next.gep537, align 4, !tbaa !48
  %wide.load539 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !48
  %i.fp = getelementptr i8, ptr %next.gep536, i64 16
  store <4 x i32> %wide.load538, ptr %next.gep536, align 4, !tbaa !48
  store <4 x i32> %wide.load539, ptr %i.fp, align 4, !tbaa !48
  %index.next540 = add nuw i64 %index535, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next540, %n.vec533
  br i1 %i.fq, label %middle.block541, label %vector.body534, !llvm.loop !490

middle.block541:                                  ; preds = %vector.body534
  %cmp.n542 = icmp eq i64 %i.ej, %n.vec533
  br i1 %cmp.n542, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i245.preheader700

.lr.ph.i.i245.preheader700:                       ; preds = %.lr.ph.i.i245.preheader, %middle.block541
  %.011.i.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i245.preheader ], [ %i.fk, %middle.block541 ] ; 2 uses
  %.0610.i.i.ph = phi i64 [ %i.ej, %.lr.ph.i.i245.preheader ], [ %i.fl, %middle.block541 ] ; 4 uses
  %.079.i.i246.ph = phi ptr [ %5, %.lr.ph.i.i245.preheader ], [ %i.fm, %middle.block541 ] ; 2 uses
  %i.fr = add i64 %.0610.i.i.ph, -1
  %xtraiter718 = and i64 %.0610.i.i.ph, 7         ; 2 uses
  %lcmp.mod719.not = icmp eq i64 %xtraiter718, 0
  br i1 %lcmp.mod719.not, label %.lr.ph.i.i245.prol.loopexit, label %.lr.ph.i.i245.prol

.lr.ph.i.i245.prol:                               ; preds = %.lr.ph.i.i245.preheader700, %.lr.ph.i.i245.prol
  %.011.i.i.prol = phi ptr [ %i.fv, %.lr.ph.i.i245.prol ], [ %.011.i.i.ph, %.lr.ph.i.i245.preheader700 ] ; 2 uses
  %.0610.i.i.prol = phi i64 [ %i.fs, %.lr.ph.i.i245.prol ], [ %.0610.i.i.ph, %.lr.ph.i.i245.preheader700 ]
  %.079.i.i246.prol = phi ptr [ %i.fu, %.lr.ph.i.i245.prol ], [ %.079.i.i246.ph, %.lr.ph.i.i245.preheader700 ] ; 2 uses
  %prol.iter720 = phi i64 [ %prol.iter720.next, %.lr.ph.i.i245.prol ], [ 0, %.lr.ph.i.i245.preheader700 ]
  %i.fs = add i64 %.0610.i.i.prol, -1             ; 2 uses
  %i.ft = load i32, ptr %.079.i.i246.prol, align 4, !tbaa !48
  store i32 %i.ft, ptr %.011.i.i.prol, align 4, !tbaa !48
  %i.fu = getelementptr inbounds nuw i8, ptr %.079.i.i246.prol, i64 4 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.011.i.i.prol, i64 4 ; 2 uses
  %prol.iter720.next = add i64 %prol.iter720, 1   ; 2 uses
  %prol.iter720.cmp.not = icmp eq i64 %prol.iter720.next, %xtraiter718
  br i1 %prol.iter720.cmp.not, label %.lr.ph.i.i245.prol.loopexit, label %.lr.ph.i.i245.prol, !llvm.loop !491

.lr.ph.i.i245.prol.loopexit:                      ; preds = %.lr.ph.i.i245.prol, %.lr.ph.i.i245.preheader700
  %.lcssa701.unr = phi ptr [ poison, %.lr.ph.i.i245.preheader700 ], [ %i.fu, %.lr.ph.i.i245.prol ]
  %.011.i.i.unr = phi ptr [ %.011.i.i.ph, %.lr.ph.i.i245.preheader700 ], [ %i.fv, %.lr.ph.i.i245.prol ]
  %.0610.i.i.unr = phi i64 [ %.0610.i.i.ph, %.lr.ph.i.i245.preheader700 ], [ %i.fs, %.lr.ph.i.i245.prol ]
  %.079.i.i246.unr = phi ptr [ %.079.i.i246.ph, %.lr.ph.i.i245.preheader700 ], [ %i.fu, %.lr.ph.i.i245.prol ]
  %i.fw = icmp ult i64 %i.fr, 7
  br i1 %i.fw, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i245

.lr.ph.i.i245:                                    ; preds = %.lr.ph.i.i245.prol.loopexit, %.lr.ph.i.i245
  %.011.i.i = phi ptr [ %i.gv, %.lr.ph.i.i245 ], [ %.011.i.i.unr, %.lr.ph.i.i245.prol.loopexit ] ; 9 uses
  %.0610.i.i = phi i64 [ %i.gs, %.lr.ph.i.i245 ], [ %.0610.i.i.unr, %.lr.ph.i.i245.prol.loopexit ]
  %.079.i.i246 = phi ptr [ %i.gu, %.lr.ph.i.i245 ], [ %.079.i.i246.unr, %.lr.ph.i.i245.prol.loopexit ] ; 9 uses
  %i.fx = load i32, ptr %.079.i.i246, align 4, !tbaa !48
  store i32 %i.fx, ptr %.011.i.i, align 4, !tbaa !48
  %i.fy = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !48
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !48
  %i.gb = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !48
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !48
  %i.ge = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 12
  %i.gf = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 12
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !48
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !48
  %i.gh = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !48
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !48
  %i.gk = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 20
  %i.gl = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 20
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !48
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !48
  %i.gn = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 24
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !48
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !48
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 28
  %i.gr = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 28
  %i.gs = add i64 %.0610.i.i, -8                  ; 2 uses
  %i.gt = load i32, ptr %i.gq, align 4, !tbaa !48
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !48
  %i.gu = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 32 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32
  %.not.i.i247.7 = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i247.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i245, !llvm.loop !492

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i245.prol.loopexit, %.lr.ph.i.i245, %middle.block541, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %.07.lcssa.i.i = phi ptr [ %5, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit ], [ %i.fm, %middle.block541 ], [ %.lcssa701.unr, %.lr.ph.i.i245.prol.loopexit ], [ %i.gu, %.lr.ph.i.i245 ]
  br i1 %i.dp, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.gw = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %i.ej ; 7 uses
  %.not.i248 = icmp eq ptr %3, %i.gw
  br i1 %.not.i248, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i249 = icmp eq ptr %3, %i.b
  br i1 %.not8.i.i249, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, label %.lr.ph.i.i250.preheader

.lr.ph.i.i250.preheader:                          ; preds = %bb.i
  %i.gx = shl i64 %1, 2
  %i.gy = add i64 %i.gx, %i.d
  %i.gz = add i64 %i.gy, -4
  %i.ha = sub i64 %i.gz, %i.c                     ; 2 uses
  %i.hb = lshr i64 %i.ha, 2
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %min.iters.check553 = icmp ult i64 %i.ha, 124
  br i1 %min.iters.check553, label %.lr.ph.i.i250.preheader698, label %vector.memcheck546

end_hunk_10
begin_hunk_11_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_:bb.a
.lr.ph.i.i284.preheader694:                       ; preds = %vector.memcheck567, %.lr.ph.i.i284.preheader, %middle.block580
  %.011.i.i285.ph = phi ptr [ %0, %vector.memcheck567 ], [ %0, %.lr.ph.i.i284.preheader ], [ %i.kr, %middle.block580 ] ; 2 uses
  %.0610.i.i286.ph = phi i64 [ %i.kl, %vector.memcheck567 ], [ %i.kl, %.lr.ph.i.i284.preheader ], [ %i.ks, %middle.block580 ] ; 4 uses
  %.079.i.i287.ph = phi ptr [ %.lcssa695, %vector.memcheck567 ], [ %.lcssa695, %.lr.ph.i.i284.preheader ], [ %i.kt, %middle.block580 ] ; 2 uses
  %i.ky = add i64 %.0610.i.i286.ph, -1
  %xtraiter726 = and i64 %.0610.i.i286.ph, 7      ; 2 uses
  %lcmp.mod727.not = icmp eq i64 %xtraiter726, 0
  br i1 %lcmp.mod727.not, label %.lr.ph.i.i284.prol.loopexit, label %.lr.ph.i.i284.prol

.lr.ph.i.i284.prol:                               ; preds = %.lr.ph.i.i284.preheader694, %.lr.ph.i.i284.prol
  %.011.i.i285.prol = phi ptr [ %i.lc, %.lr.ph.i.i284.prol ], [ %.011.i.i285.ph, %.lr.ph.i.i284.preheader694 ] ; 2 uses
  %.0610.i.i286.prol = phi i64 [ %i.kz, %.lr.ph.i.i284.prol ], [ %.0610.i.i286.ph, %.lr.ph.i.i284.preheader694 ]
  %.079.i.i287.prol = phi ptr [ %i.lb, %.lr.ph.i.i284.prol ], [ %.079.i.i287.ph, %.lr.ph.i.i284.preheader694 ] ; 2 uses
  %prol.iter728 = phi i64 [ %prol.iter728.next, %.lr.ph.i.i284.prol ], [ 0, %.lr.ph.i.i284.preheader694 ]
  %i.kz = add i64 %.0610.i.i286.prol, -1          ; 2 uses
  %i.la = load i32, ptr %.079.i.i287.prol, align 4, !tbaa !48
  store i32 %i.la, ptr %.011.i.i285.prol, align 4, !tbaa !48
  %i.lb = getelementptr inbounds nuw i8, ptr %.079.i.i287.prol, i64 4 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.011.i.i285.prol, i64 4 ; 2 uses
  %prol.iter728.next = add i64 %prol.iter728, 1   ; 2 uses
  %prol.iter728.cmp.not = icmp eq i64 %prol.iter728.next, %xtraiter726
  br i1 %prol.iter728.cmp.not, label %.lr.ph.i.i284.prol.loopexit, label %.lr.ph.i.i284.prol, !llvm.loop !504

.lr.ph.i.i284.prol.loopexit:                      ; preds = %.lr.ph.i.i284.prol, %.lr.ph.i.i284.preheader694
  %.011.i.i285.unr = phi ptr [ %.011.i.i285.ph, %.lr.ph.i.i284.preheader694 ], [ %i.lc, %.lr.ph.i.i284.prol ]
  %.0610.i.i286.unr = phi i64 [ %.0610.i.i286.ph, %.lr.ph.i.i284.preheader694 ], [ %i.kz, %.lr.ph.i.i284.prol ]
  %.079.i.i287.unr = phi ptr [ %.079.i.i287.ph, %.lr.ph.i.i284.preheader694 ], [ %i.lb, %.lr.ph.i.i284.prol ]
  %i.ld = icmp ult i64 %i.ky, 7
  br i1 %i.ld, label %.loopexit412, label %.lr.ph.i.i284

.lr.ph.i.i284:                                    ; preds = %.lr.ph.i.i284.prol.loopexit, %.lr.ph.i.i284
  %.011.i.i285 = phi ptr [ %i.mc, %.lr.ph.i.i284 ], [ %.011.i.i285.unr, %.lr.ph.i.i284.prol.loopexit ] ; 9 uses
  %.0610.i.i286 = phi i64 [ %i.lz, %.lr.ph.i.i284 ], [ %.0610.i.i286.unr, %.lr.ph.i.i284.prol.loopexit ]
  %.079.i.i287 = phi ptr [ %i.mb, %.lr.ph.i.i284 ], [ %.079.i.i287.unr, %.lr.ph.i.i284.prol.loopexit ] ; 9 uses
  %i.le = load i32, ptr %.079.i.i287, align 4, !tbaa !48
  store i32 %i.le, ptr %.011.i.i285, align 4, !tbaa !48
  %i.lf = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 4
  %i.lg = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 4
  %i.lh = load i32, ptr %i.lf, align 4, !tbaa !48
  store i32 %i.lh, ptr %i.lg, align 4, !tbaa !48
  %i.li = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 8
  %i.lk = load i32, ptr %i.li, align 4, !tbaa !48
  store i32 %i.lk, ptr %i.lj, align 4, !tbaa !48
  %i.ll = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 12
  %i.lm = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 12
  %i.ln = load i32, ptr %i.ll, align 4, !tbaa !48
  store i32 %i.ln, ptr %i.lm, align 4, !tbaa !48
  %i.lo = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 16
  %i.lp = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 16
  %i.lq = load i32, ptr %i.lo, align 4, !tbaa !48
  store i32 %i.lq, ptr %i.lp, align 4, !tbaa !48
  %i.lr = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 20
  %i.ls = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 20
  %i.lt = load i32, ptr %i.lr, align 4, !tbaa !48
  store i32 %i.lt, ptr %i.ls, align 4, !tbaa !48
  %i.lu = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 24
  %i.lv = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 24
  %i.lw = load i32, ptr %i.lu, align 4, !tbaa !48
  store i32 %i.lw, ptr %i.lv, align 4, !tbaa !48
  %i.lx = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 28
  %i.ly = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 28
  %i.lz = add i64 %.0610.i.i286, -8               ; 2 uses
  %i.ma = load i32, ptr %i.lx, align 4, !tbaa !48
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !48
  %i.mb = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 32
  %i.mc = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 32
  %.not.i.i288.7 = icmp eq i64 %i.lz, 0
  br i1 %.not.i.i288.7, label %.loopexit412, label %.lr.ph.i.i284, !llvm.loop !505

.loopexit412:                                     ; preds = %.lr.ph.i.i284.prol.loopexit, %.lr.ph.i.i284, %middle.block580, %bb.l
  %i.md = getelementptr inbounds [4 x i8], ptr %0, i64 %i.kl ; 7 uses
  %.not.i291 = icmp eq ptr %3, %i.md
  br i1 %.not.i291, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %bb.m

bb.m:                                             ; preds = %.loopexit412
  %.not8.i.i292 = icmp eq ptr %3, %i.b
  br i1 %.not8.i.i292, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297, label %.lr.ph.i.i293.preheader

.lr.ph.i.i293.preheader:                          ; preds = %bb.m
  %i.me = shl i64 %1, 2
  %i.mf = add i64 %i.me, %i.d
  %i.mg = add i64 %i.mf, -4
  %i.mh = sub i64 %i.mg, %i.c                     ; 2 uses
  %i.mi = lshr i64 %i.mh, 2
  %i.mj = add nuw nsw i64 %i.mi, 1                ; 2 uses
  %min.iters.check592 = icmp ult i64 %i.mh, 124
  br i1 %min.iters.check592, label %.lr.ph.i.i293.preheader692, label %vector.memcheck585

vector.memcheck585:                               ; preds = %.lr.ph.i.i293.preheader
  %i.mk = shl i64 %1, 2
  %i.ml = add i64 %i.mk, %i.d
  %i.mm = add i64 %i.ml, -4
  %i.mn = sub i64 %i.mm, %i.c
  %i.mo = and i64 %i.mn, -4                       ; 2 uses
  %i.mp = shl i64 %i.kl, 2
  %i.mq = getelementptr i8, ptr %0, i64 %i.mo
  %i.mr = getelementptr i8, ptr %i.mq, i64 %i.mp
  %scevgep586 = getelementptr i8, ptr %i.mr, i64 4
  %i.ms = getelementptr i8, ptr %3, i64 %i.mo
  %scevgep587 = getelementptr i8, ptr %i.ms, i64 4
  %bound0588 = icmp ult ptr %i.md, %scevgep587
  %bound1589 = icmp ult ptr %3, %scevgep586
  %found.conflict590 = and i1 %bound0588, %bound1589
  br i1 %found.conflict590, label %.lr.ph.i.i293.preheader692, label %vector.ph593

vector.ph593:                                     ; preds = %vector.memcheck585
  %n.vec594 = and i64 %i.mj, 9223372036854775800  ; 3 uses
  %i.mt = shl i64 %n.vec594, 2                    ; 2 uses
  %i.mu = getelementptr i8, ptr %i.md, i64 %i.mt  ; 2 uses
  %i.mv = getelementptr i8, ptr %3, i64 %i.mt
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph593
  %index596 = phi i64 [ 0, %vector.ph593 ], [ %index.next601, %vector.body595 ] ; 2 uses
  %i.mw = shl i64 %index596, 2                    ; 2 uses
  %next.gep597 = getelementptr i8, ptr %i.md, i64 %i.mw ; 2 uses
  %next.gep598 = getelementptr i8, ptr %3, i64 %i.mw ; 3 uses
  %i.mx = getelementptr i8, ptr %next.gep598, i64 16 ; 2 uses
  %wide.load599 = load <4 x i32>, ptr %next.gep598, align 4, !tbaa !48, !alias.scope !506
  %wide.load600 = load <4 x i32>, ptr %i.mx, align 4, !tbaa !48, !alias.scope !506
  %i.my = getelementptr i8, ptr %next.gep597, i64 16
  store <4 x i32> %wide.load599, ptr %next.gep597, align 4, !tbaa !48, !alias.scope !509, !noalias !506
  store <4 x i32> %wide.load600, ptr %i.my, align 4, !tbaa !48, !alias.scope !509, !noalias !506
  store <4 x i32> zeroinitializer, ptr %next.gep598, align 4, !tbaa !48, !alias.scope !506
  store <4 x i32> zeroinitializer, ptr %i.mx, align 4, !tbaa !48, !alias.scope !506
  %index.next601 = add nuw i64 %index596, 8       ; 2 uses
  %i.mz = icmp eq i64 %index.next601, %n.vec594
  br i1 %i.mz, label %middle.block602, label %vector.body595, !llvm.loop !511

middle.block602:                                  ; preds = %vector.body595
  %cmp.n603 = icmp eq i64 %i.mj, %n.vec594
  br i1 %cmp.n603, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297, label %.lr.ph.i.i293.preheader692

.lr.ph.i.i293.preheader692:                       ; preds = %vector.memcheck585, %.lr.ph.i.i293.preheader, %middle.block602
  %.010.i.i294.ph = phi ptr [ %i.md, %vector.memcheck585 ], [ %i.md, %.lr.ph.i.i293.preheader ], [ %i.mu, %middle.block602 ]
  %.079.i.i295.ph = phi ptr [ %3, %vector.memcheck585 ], [ %3, %.lr.ph.i.i293.preheader ], [ %i.mv, %middle.block602 ]
  br label %.lr.ph.i.i293

.lr.ph.i.i293:                                    ; preds = %.lr.ph.i.i293.preheader692, %.lr.ph.i.i293
  %.010.i.i294 = phi ptr [ %i.nc, %.lr.ph.i.i293 ], [ %.010.i.i294.ph, %.lr.ph.i.i293.preheader692 ] ; 2 uses
  %.079.i.i295 = phi ptr [ %i.nb, %.lr.ph.i.i293 ], [ %.079.i.i295.ph, %.lr.ph.i.i293.preheader692 ] ; 3 uses
  %i.na = load i32, ptr %.079.i.i295, align 4, !tbaa !48
  store i32 %i.na, ptr %.010.i.i294, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i295, align 4, !tbaa !48
  %i.nb = getelementptr inbounds nuw i8, ptr %.079.i.i295, i64 4 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.010.i.i294, i64 4 ; 2 uses
  %.not.i.i296 = icmp eq ptr %i.nb, %i.b
  br i1 %.not.i.i296, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297, label %.lr.ph.i.i293, !llvm.loop !512

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297: ; preds = %.lr.ph.i.i293, %middle.block602, %bb.m
  %i.nd = phi ptr [ %i.md, %bb.m ], [ %i.mu, %middle.block602 ], [ %i.nc, %.lr.ph.i.i293 ] ; 2 uses
  %.not3.i298 = icmp eq ptr %i.nd, %i.b
  br i1 %.not3.i298, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i299

.lr.ph.i299:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297, %.lr.ph.i299
  %storemerge4.i300 = phi ptr [ %i.ng, %.lr.ph.i299 ], [ %i.nd, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i300, align 4, !tbaa !48
  %i.ne = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.nf = add i32 %i.ne, -1
  store i32 %i.nf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ng = getelementptr inbounds nuw i8, ptr %storemerge4.i300, i64 4 ; 2 uses
  %.not.i301 = icmp eq ptr %i.ng, %i.b
  br i1 %.not.i301, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i299, !llvm.loop !215

.critedge:                                        ; preds = %.lr.ph.i.i276.prol.loopexit, %.lr.ph.i.i276, %middle.block619, %bb.k, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.sroa.0394.2 = phi ptr [ %.07.lcssa.i.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit ], [ %.lcssa695, %bb.k ], [ %i.jb, %middle.block619 ], [ %.lcssa690.unr, %.lr.ph.i.i276.prol.loopexit ], [ %i.kj, %.lr.ph.i.i276 ] ; 8 uses
  %.sroa.0394.2646 = ptrtoaddr ptr %.sroa.0394.2 to i64 ; 2 uses
  %i.nh = sub nuw i64 %4, %i.i                    ; 9 uses
  %i.ni = sub i64 %1, %i.f                        ; 8 uses
  %.not190 = icmp ult i64 %i.ni, %i.nh
  br i1 %.not190, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %.neg = mul i64 %i.nh, -4                       ; 2 uses
  %i.nj = getelementptr i8, ptr %i.b, i64 %.neg   ; 7 uses
  %.not16.i311 = icmp eq i64 %.neg, 0
  br i1 %.not16.i311, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i312

.lr.ph.i312:                                      ; preds = %bb.n, %.lr.ph.i312
  %.018.i313 = phi ptr [ %i.nn, %.lr.ph.i312 ], [ %i.nj, %bb.n ] ; 3 uses
  %.01517.i314 = phi ptr [ %i.no, %.lr.ph.i312 ], [ %i.b, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i314) ]
  %i.nk = load i32, ptr %.018.i313, align 4, !tbaa !48
  store i32 %i.nk, ptr %.01517.i314, align 4, !tbaa !48
  store i32 0, ptr %.018.i313, align 4, !tbaa !48
  %i.nl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.nm = add i32 %i.nl, 1
  store i32 %i.nm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.nn = getelementptr inbounds nuw i8, ptr %.018.i313, i64 4 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.01517.i314, i64 4
  %.not.i315 = icmp eq ptr %i.nn, %i.b
  br i1 %.not.i315, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit317, label %.lr.ph.i312, !llvm.loop !127

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit317: ; preds = %.lr.ph.i312
  %.not8.i.i319 = icmp eq ptr %3, %i.nj
  br i1 %.not8.i.i319, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i320.preheader

.lr.ph.i.i320.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit317
  %i.np = shl i64 %1, 2
  %9 = add i64 %i.h, %i.d
  %i.nq = add i64 %9, %i.np
  %i.nr = add i64 %i.nq, -4
  %10 = shl i64 %4, 2
  %i.ns = add i64 %10, %i.c
  %i.nt = sub i64 %i.nr, %i.ns                    ; 2 uses
  %i.nu = lshr i64 %i.nt, 2
  %i.nv = add nuw nsw i64 %i.nu, 1                ; 2 uses
  %min.iters.check631 = icmp ult i64 %i.nt, 172
  br i1 %min.iters.check631, label %.lr.ph.i.i320.preheader688, label %vector.memcheck624

vector.memcheck624:                               ; preds = %.lr.ph.i.i320.preheader
  %i.nw = shl i64 %1, 2                           ; 3 uses
  %i.nx = add i64 %i.nw, -4
  %i.ny = add i64 %i.h, %i.d
  %i.nz = add i64 %i.ny, %i.nw
  %i.oa = add i64 %i.nz, -4
  %i.ob = shl i64 %4, 2                           ; 2 uses
  %i.oc = add i64 %i.ob, %i.c
  %i.od = sub i64 %i.oa, %i.oc
  %i.oe = and i64 %i.od, -4                       ; 2 uses
  %i.of = sub i64 %i.nx, %i.oe
  %scevgep625 = getelementptr i8, ptr %0, i64 %i.of
  %i.og = add i64 %i.h, %i.nw
  %i.oh = add i64 %i.og, -4
  %i.oi = add i64 %i.ob, %i.oe
  %i.oj = sub i64 %i.oh, %i.oi
  %scevgep626 = getelementptr i8, ptr %0, i64 %i.oj
  %bound0627 = icmp ult ptr %scevgep625, %i.nj
  %bound1628 = icmp ult ptr %scevgep626, %i.b
  %found.conflict629 = and i1 %bound0627, %bound1628
  br i1 %found.conflict629, label %.lr.ph.i.i320.preheader688, label %vector.ph632

vector.ph632:                                     ; preds = %vector.memcheck624
  %n.vec633 = and i64 %i.nv, 9223372036854775800  ; 3 uses
  %i.ok = mul i64 %n.vec633, -4                   ; 2 uses
  %i.ol = getelementptr i8, ptr %i.b, i64 %i.ok
  %i.om = getelementptr i8, ptr %i.nj, i64 %i.ok
  br label %vector.body634

vector.body634:                                   ; preds = %vector.body634, %vector.ph632
  %index635 = phi i64 [ 0, %vector.ph632 ], [ %index.next640, %vector.body634 ] ; 2 uses
  %i.on = mul i64 %index635, -4                   ; 2 uses
  %next.gep636 = getelementptr i8, ptr %i.b, i64 %i.on ; 2 uses
  %next.gep637 = getelementptr i8, ptr %i.nj, i64 %i.on ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %next.gep637, i64 -16 ; 2 uses
  %i.op = getelementptr inbounds i8, ptr %next.gep637, i64 -32 ; 2 uses
  %wide.load638 = load <4 x i32>, ptr %i.oo, align 4, !tbaa !48, !alias.scope !513
  %wide.load639 = load <4 x i32>, ptr %i.op, align 4, !tbaa !48, !alias.scope !513
  %i.oq = getelementptr inbounds i8, ptr %next.gep636, i64 -16
  %i.or = getelementptr inbounds i8, ptr %next.gep636, i64 -32
  store <4 x i32> %wide.load638, ptr %i.oq, align 4, !tbaa !48, !alias.scope !516, !noalias !513
  store <4 x i32> %wide.load639, ptr %i.or, align 4, !tbaa !48, !alias.scope !516, !noalias !513
  store <4 x i32> zeroinitializer, ptr %i.oo, align 4, !tbaa !48, !alias.scope !513
  store <4 x i32> zeroinitializer, ptr %i.op, align 4, !tbaa !48, !alias.scope !513
  %index.next640 = add nuw i64 %index635, 8       ; 2 uses
  %i.os = icmp eq i64 %index.next640, %n.vec633
  br i1 %i.os, label %middle.block641, label %vector.body634, !llvm.loop !518

middle.block641:                                  ; preds = %vector.body634
  %cmp.n642 = icmp eq i64 %i.nv, %n.vec633
  br i1 %cmp.n642, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i320.preheader688

.lr.ph.i.i320.preheader688:                       ; preds = %vector.memcheck624, %.lr.ph.i.i320.preheader, %middle.block641
  %.010.i.i321.ph = phi ptr [ %i.b, %vector.memcheck624 ], [ %i.b, %.lr.ph.i.i320.preheader ], [ %i.ol, %middle.block641 ]
  %.079.i.i322.ph = phi ptr [ %i.nj, %vector.memcheck624 ], [ %i.nj, %.lr.ph.i.i320.preheader ], [ %i.om, %middle.block641 ]
  br label %.lr.ph.i.i320

.lr.ph.i.i320:                                    ; preds = %.lr.ph.i.i320.preheader688, %.lr.ph.i.i320
  %.010.i.i321 = phi ptr [ %i.ou, %.lr.ph.i.i320 ], [ %.010.i.i321.ph, %.lr.ph.i.i320.preheader688 ]
  %.079.i.i322 = phi ptr [ %i.ot, %.lr.ph.i.i320 ], [ %.079.i.i322.ph, %.lr.ph.i.i320.preheader688 ]
  %i.ot = getelementptr inbounds i8, ptr %.079.i.i322, i64 -4 ; 4 uses
  %i.ou = getelementptr inbounds i8, ptr %.010.i.i321, i64 -4 ; 2 uses
  %i.ov = load i32, ptr %i.ot, align 4, !tbaa !48
  store i32 %i.ov, ptr %i.ou, align 4, !tbaa !48
  store i32 0, ptr %i.ot, align 4, !tbaa !48
  %.not.i.i323 = icmp eq ptr %3, %i.ot
  br i1 %.not.i.i323, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i320, !llvm.loop !519

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i320, %middle.block641, %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit317
  %.not8.i.i324 = icmp eq i64 %i.nh, 0
  br i1 %.not8.i.i324, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i325.preheader

.lr.ph.i.i325.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit
  %min.iters.check649 = icmp ult i64 %i.nh, 8
  %i.ow = sub i64 %.sroa.0394.2646, %i.c
  %diff.check647 = icmp ugt i64 %i.ow, -32
  %or.cond683 = select i1 %min.iters.check649, i1 true, i1 %diff.check647
  br i1 %or.cond683, label %.lr.ph.i.i325.preheader686, label %vector.ph650

vector.ph650:                                     ; preds = %.lr.ph.i.i325.preheader
  %n.vec651 = and i64 %i.nh, -8                   ; 3 uses
  %i.ox = shl i64 %n.vec651, 2                    ; 2 uses
  %i.oy = getelementptr i8, ptr %3, i64 %i.ox
  %i.oz = and i64 %i.nh, 7
  %i.pa = getelementptr i8, ptr %.sroa.0394.2, i64 %i.ox
  br label %vector.body652

vector.body652:                                   ; preds = %vector.body652, %vector.ph650
  %index653 = phi i64 [ 0, %vector.ph650 ], [ %index.next658, %vector.body652 ] ; 2 uses
  %i.pb = shl i64 %index653, 2                    ; 2 uses
  %next.gep654 = getelementptr i8, ptr %3, i64 %i.pb ; 2 uses
  %next.gep655 = getelementptr i8, ptr %.sroa.0394.2, i64 %i.pb ; 2 uses
  %i.pc = getelementptr i8, ptr %next.gep655, i64 16
  %wide.load656 = load <4 x i32>, ptr %next.gep655, align 4, !tbaa !48
  %wide.load657 = load <4 x i32>, ptr %i.pc, align 4, !tbaa !48
  %i.pd = getelementptr i8, ptr %next.gep654, i64 16
  store <4 x i32> %wide.load656, ptr %next.gep654, align 4, !tbaa !48
  store <4 x i32> %wide.load657, ptr %i.pd, align 4, !tbaa !48
  %index.next658 = add nuw i64 %index653, 8       ; 2 uses
  %i.pe = icmp eq i64 %index.next658, %n.vec651
  br i1 %i.pe, label %middle.block659, label %vector.body652, !llvm.loop !520

middle.block659:                                  ; preds = %vector.body652
  %cmp.n660 = icmp eq i64 %i.nh, %n.vec651
  br i1 %cmp.n660, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i325.preheader686

.lr.ph.i.i325.preheader686:                       ; preds = %.lr.ph.i.i325.preheader, %middle.block659
  %.011.i.i326.ph = phi ptr [ %3, %.lr.ph.i.i325.preheader ], [ %i.oy, %middle.block659 ] ; 2 uses
  %.0610.i.i327.ph = phi i64 [ %i.nh, %.lr.ph.i.i325.preheader ], [ %i.oz, %middle.block659 ] ; 4 uses
  %.079.i.i328.ph = phi ptr [ %.sroa.0394.2, %.lr.ph.i.i325.preheader ], [ %i.pa, %middle.block659 ] ; 2 uses
  %i.pf = add i64 %.0610.i.i327.ph, -1
  %xtraiter732 = and i64 %.0610.i.i327.ph, 7      ; 2 uses
  %lcmp.mod733.not = icmp eq i64 %xtraiter732, 0
  br i1 %lcmp.mod733.not, label %.lr.ph.i.i325.prol.loopexit, label %.lr.ph.i.i325.prol

.lr.ph.i.i325.prol:                               ; preds = %.lr.ph.i.i325.preheader686, %.lr.ph.i.i325.prol
  %.011.i.i326.prol = phi ptr [ %i.pj, %.lr.ph.i.i325.prol ], [ %.011.i.i326.ph, %.lr.ph.i.i325.preheader686 ] ; 2 uses
  %.0610.i.i327.prol = phi i64 [ %i.pg, %.lr.ph.i.i325.prol ], [ %.0610.i.i327.ph, %.lr.ph.i.i325.preheader686 ]
  %.079.i.i328.prol = phi ptr [ %i.pi, %.lr.ph.i.i325.prol ], [ %.079.i.i328.ph, %.lr.ph.i.i325.preheader686 ] ; 2 uses
  %prol.iter734 = phi i64 [ %prol.iter734.next, %.lr.ph.i.i325.prol ], [ 0, %.lr.ph.i.i325.preheader686 ]
  %i.pg = add i64 %.0610.i.i327.prol, -1          ; 2 uses
  %i.ph = load i32, ptr %.079.i.i328.prol, align 4, !tbaa !48
  store i32 %i.ph, ptr %.011.i.i326.prol, align 4, !tbaa !48
  %i.pi = getelementptr inbounds nuw i8, ptr %.079.i.i328.prol, i64 4 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.011.i.i326.prol, i64 4 ; 2 uses
  %prol.iter734.next = add i64 %prol.iter734, 1   ; 2 uses
  %prol.iter734.cmp.not = icmp eq i64 %prol.iter734.next, %xtraiter732
  br i1 %prol.iter734.cmp.not, label %.lr.ph.i.i325.prol.loopexit, label %.lr.ph.i.i325.prol, !llvm.loop !521

.lr.ph.i.i325.prol.loopexit:                      ; preds = %.lr.ph.i.i325.prol, %.lr.ph.i.i325.preheader686
  %.011.i.i326.unr = phi ptr [ %.011.i.i326.ph, %.lr.ph.i.i325.preheader686 ], [ %i.pj, %.lr.ph.i.i325.prol ]
  %.0610.i.i327.unr = phi i64 [ %.0610.i.i327.ph, %.lr.ph.i.i325.preheader686 ], [ %i.pg, %.lr.ph.i.i325.prol ]
  %.079.i.i328.unr = phi ptr [ %.079.i.i328.ph, %.lr.ph.i.i325.preheader686 ], [ %i.pi, %.lr.ph.i.i325.prol ]
  %i.pk = icmp ult i64 %i.pf, 7
  br i1 %i.pk, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i325

.lr.ph.i.i325:                                    ; preds = %.lr.ph.i.i325.prol.loopexit, %.lr.ph.i.i325
  %.011.i.i326 = phi ptr [ %i.qj, %.lr.ph.i.i325 ], [ %.011.i.i326.unr, %.lr.ph.i.i325.prol.loopexit ] ; 9 uses
  %.0610.i.i327 = phi i64 [ %i.qg, %.lr.ph.i.i325 ], [ %.0610.i.i327.unr, %.lr.ph.i.i325.prol.loopexit ]
  %.079.i.i328 = phi ptr [ %i.qi, %.lr.ph.i.i325 ], [ %.079.i.i328.unr, %.lr.ph.i.i325.prol.loopexit ] ; 9 uses
  %i.pl = load i32, ptr %.079.i.i328, align 4, !tbaa !48
  store i32 %i.pl, ptr %.011.i.i326, align 4, !tbaa !48
  %i.pm = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 4
  %i.pn = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 4
  %i.po = load i32, ptr %i.pm, align 4, !tbaa !48
  store i32 %i.po, ptr %i.pn, align 4, !tbaa !48
  %i.pp = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 8
  %i.pr = load i32, ptr %i.pp, align 4, !tbaa !48
  store i32 %i.pr, ptr %i.pq, align 4, !tbaa !48
  %i.ps = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 12
  %i.pt = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 12
  %i.pu = load i32, ptr %i.ps, align 4, !tbaa !48
  store i32 %i.pu, ptr %i.pt, align 4, !tbaa !48
  %i.pv = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 16
  %i.px = load i32, ptr %i.pv, align 4, !tbaa !48
  store i32 %i.px, ptr %i.pw, align 4, !tbaa !48
  %i.py = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 20
  %i.pz = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 20
  %i.qa = load i32, ptr %i.py, align 4, !tbaa !48
  store i32 %i.qa, ptr %i.pz, align 4, !tbaa !48
  %i.qb = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 24
  %i.qc = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 24
  %i.qd = load i32, ptr %i.qb, align 4, !tbaa !48
  store i32 %i.qd, ptr %i.qc, align 4, !tbaa !48
  %i.qe = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 28
  %i.qf = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 28
  %i.qg = add i64 %.0610.i.i327, -8               ; 2 uses
  %i.qh = load i32, ptr %i.qe, align 4, !tbaa !48
  store i32 %i.qh, ptr %i.qf, align 4, !tbaa !48
  %i.qi = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 32
  %.not.i.i329.7 = icmp eq i64 %i.qg, 0
  br i1 %.not.i.i329.7, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i325, !llvm.loop !522

bb.o:                                             ; preds = %.critedge
  %i.qk = sub nuw i64 %i.nh, %i.ni                ; 4 uses
  %.not16.i332 = icmp eq ptr %3, %i.b
  br i1 %.not16.i332, label %.loopexit, label %.lr.ph.i333.preheader

.lr.ph.i333.preheader:                            ; preds = %bb.o
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.qk
  br label %.lr.ph.i333

.lr.ph.i333:                                      ; preds = %.lr.ph.i333.preheader, %.lr.ph.i333
  %.018.i334 = phi ptr [ %i.qp, %.lr.ph.i333 ], [ %3, %.lr.ph.i333.preheader ] ; 3 uses
  %.01517.i335 = phi ptr [ %i.qq, %.lr.ph.i333 ], [ %i.ql, %.lr.ph.i333.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i335) ]
  %i.qm = load i32, ptr %.018.i334, align 4, !tbaa !48
  store i32 %i.qm, ptr %.01517.i335, align 4, !tbaa !48
  store i32 0, ptr %.018.i334, align 4, !tbaa !48
  %i.qn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.qo = add i32 %i.qn, 1
  store i32 %i.qo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
end_hunk_11
begin_hunk_12_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvT0_mSC_SC_mT1_RT_:bb.a
  br i1 %prol.iter451.cmp.not, label %.lr.ph.i.i170.prol.loopexit, label %.lr.ph.i.i170.prol, !llvm.loop !539

.lr.ph.i.i170.prol.loopexit:                      ; preds = %.lr.ph.i.i170.prol, %.lr.ph.i.i170.preheader
  %.020.i.i171.unr = phi i64 [ %i.dz, %.lr.ph.i.i170.preheader ], [ %i.fz, %.lr.ph.i.i170.prol ]
  %.0919.i.i172.unr = phi ptr [ %.0919.i.i172.ph, %.lr.ph.i.i170.preheader ], [ %i.fx, %.lr.ph.i.i170.prol ]
  %.01618.i.i173.unr = phi ptr [ %i.d, %.lr.ph.i.i170.preheader ], [ %i.fy, %.lr.ph.i.i170.prol ]
  %i.ga = sub nsw i64 %i.j, %i.m
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176, label %.lr.ph.i.i170

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i170.prol.loopexit, %.lr.ph.i.i170
  %.020.i.i171 = phi i64 [ %i.gt, %.lr.ph.i.i170 ], [ %.020.i.i171.unr, %.lr.ph.i.i170.prol.loopexit ]
  %.0919.i.i172 = phi ptr [ %i.gr, %.lr.ph.i.i170 ], [ %.0919.i.i172.unr, %.lr.ph.i.i170.prol.loopexit ] ; 5 uses
  %.01618.i.i173 = phi ptr [ %i.gs, %.lr.ph.i.i170 ], [ %.01618.i.i173.unr, %.lr.ph.i.i170.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i173) ]
  %i.gc = load i32, ptr %.0919.i.i172, align 4, !tbaa !48
  store i32 %i.gc, ptr %.01618.i.i173, align 4, !tbaa !48
  %i.gd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gf = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 4
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !48
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !48
  %i.gi = add i32 %i.gd, 2
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gj = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 8
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !48
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !48
  %i.gm = add i32 %i.gd, 3
  store i32 %i.gm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gn = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 12
  %i.go = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 12
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !48
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !48
  %i.gq = add i32 %i.gd, 4
  store i32 %i.gq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gr = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 16
  %i.gt = add i64 %.020.i.i171, -4                ; 2 uses
  %.not.i.i174.3 = icmp eq i64 %i.gt, 0
  br i1 %.not.i.i174.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176, label %.lr.ph.i.i170, !llvm.loop !449

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176: ; preds = %.lr.ph.i.i170, %.lr.ph.i.i170.prol.loopexit
  %.not.i177 = icmp eq ptr %3, %i.ec
  br i1 %.not.i177, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176
  %.not8.i.i178 = icmp eq ptr %0, %3
  br i1 %.not8.i.i178, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, label %.lr.ph.i.i179.preheader

.lr.ph.i.i179.preheader:                          ; preds = %bb.g
  %i.gu = add i64 %i.h, -4
  %i.gv = sub i64 %i.gu, %i.c                     ; 2 uses
  %i.gw = lshr i64 %i.gv, 2
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %min.iters.check406 = icmp ult i64 %i.gv, 124
  br i1 %min.iters.check406, label %.lr.ph.i.i179.preheader422, label %vector.memcheck399

vector.memcheck399:                               ; preds = %.lr.ph.i.i179.preheader
  %i.gy = sub i64 %1, %i.ea
  %i.gz = shl i64 %i.gy, 2
  %i.ha = add i64 %i.gz, -4
  %i.hb = add i64 %i.h, -4
  %i.hc = sub i64 %i.hb, %i.c
  %i.hd = and i64 %i.hc, -4                       ; 2 uses
  %i.he = sub i64 %i.ha, %i.hd
  %scevgep400 = getelementptr i8, ptr %0, i64 %i.he
  %i.hf = sub nuw nsw i64 -4, %i.hd
  %scevgep401 = getelementptr i8, ptr %3, i64 %i.hf
  %bound0402 = icmp ult ptr %scevgep400, %3
  %bound1403 = icmp ult ptr %scevgep401, %i.ec
  %found.conflict404 = and i1 %bound0402, %bound1403
  br i1 %found.conflict404, label %.lr.ph.i.i179.preheader422, label %vector.ph407

vector.ph407:                                     ; preds = %vector.memcheck399
  %n.vec408 = and i64 %i.gx, 9223372036854775800  ; 3 uses
  %i.hg = mul i64 %n.vec408, -4                   ; 2 uses
  %i.hh = getelementptr i8, ptr %i.ec, i64 %i.hg  ; 2 uses
  %i.hi = getelementptr i8, ptr %3, i64 %i.hg
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body409, %vector.ph407
  %index410 = phi i64 [ 0, %vector.ph407 ], [ %index.next415, %vector.body409 ] ; 2 uses
  %i.hj = mul i64 %index410, -4                   ; 2 uses
  %next.gep411 = getelementptr i8, ptr %i.ec, i64 %i.hj ; 2 uses
  %next.gep412 = getelementptr i8, ptr %3, i64 %i.hj ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %next.gep412, i64 -16 ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %next.gep412, i64 -32 ; 2 uses
  %wide.load413 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !48, !alias.scope !540
  %wide.load414 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !48, !alias.scope !540
  %i.hm = getelementptr inbounds i8, ptr %next.gep411, i64 -16
  %i.hn = getelementptr inbounds i8, ptr %next.gep411, i64 -32
  store <4 x i32> %wide.load413, ptr %i.hm, align 4, !tbaa !48, !alias.scope !543, !noalias !540
  store <4 x i32> %wide.load414, ptr %i.hn, align 4, !tbaa !48, !alias.scope !543, !noalias !540
  store <4 x i32> zeroinitializer, ptr %i.hk, align 4, !tbaa !48, !alias.scope !540
  store <4 x i32> zeroinitializer, ptr %i.hl, align 4, !tbaa !48, !alias.scope !540
  %index.next415 = add nuw i64 %index410, 8       ; 2 uses
  %i.ho = icmp eq i64 %index.next415, %n.vec408
  br i1 %i.ho, label %middle.block416, label %vector.body409, !llvm.loop !545

middle.block416:                                  ; preds = %vector.body409
  %cmp.n417 = icmp eq i64 %i.gx, %n.vec408
  br i1 %cmp.n417, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, label %.lr.ph.i.i179.preheader422

.lr.ph.i.i179.preheader422:                       ; preds = %vector.memcheck399, %.lr.ph.i.i179.preheader, %middle.block416
  %.010.i.i180.ph = phi ptr [ %i.ec, %vector.memcheck399 ], [ %i.ec, %.lr.ph.i.i179.preheader ], [ %i.hh, %middle.block416 ]
  %.079.i.i181.ph = phi ptr [ %3, %vector.memcheck399 ], [ %3, %.lr.ph.i.i179.preheader ], [ %i.hi, %middle.block416 ]
  br label %.lr.ph.i.i179

.lr.ph.i.i179:                                    ; preds = %.lr.ph.i.i179.preheader422, %.lr.ph.i.i179
  %.010.i.i180 = phi ptr [ %i.hq, %.lr.ph.i.i179 ], [ %.010.i.i180.ph, %.lr.ph.i.i179.preheader422 ]
  %.079.i.i181 = phi ptr [ %i.hp, %.lr.ph.i.i179 ], [ %.079.i.i181.ph, %.lr.ph.i.i179.preheader422 ]
  %i.hp = getelementptr inbounds i8, ptr %.079.i.i181, i64 -4 ; 4 uses
  %i.hq = getelementptr inbounds i8, ptr %.010.i.i180, i64 -4 ; 3 uses
  %i.hr = load i32, ptr %i.hp, align 4, !tbaa !48
  store i32 %i.hr, ptr %i.hq, align 4, !tbaa !48
  store i32 0, ptr %i.hp, align 4, !tbaa !48
  %.not.i.i182 = icmp eq ptr %0, %i.hp
  br i1 %.not.i.i182, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, label %.lr.ph.i.i179, !llvm.loop !546

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183: ; preds = %.lr.ph.i.i179, %middle.block416, %bb.g
  %i.hs = phi ptr [ %i.ec, %bb.g ], [ %i.hh, %middle.block416 ], [ %i.hq, %.lr.ph.i.i179 ] ; 2 uses
  %.not3.i184 = icmp eq ptr %0, %i.hs
  br i1 %.not3.i184, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, %.lr.ph.i185
  %storemerge4.i186 = phi ptr [ %i.hv, %.lr.ph.i185 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i186, align 4, !tbaa !48
  %i.ht = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hu = add i32 %i.ht, -1
  store i32 %i.hu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.hv = getelementptr inbounds nuw i8, ptr %storemerge4.i186, i64 4 ; 2 uses
  %.not.i187 = icmp eq ptr %i.hv, %i.hs
  br i1 %.not.i187, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i185, !llvm.loop !215

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.l
  %i.hw = getelementptr i8, ptr %i.d, i64 %.idx   ; 10 uses
  %.not17.i197 = icmp eq ptr %i.f, %i.d
  br i1 %.not17.i197, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i198.preheader

.lr.ph.i198.preheader:                            ; preds = %bb.h
  %i.hx = and i64 %i.l, 4
  %lcmp.mod441.not = icmp eq i64 %i.hx, 0
  br i1 %lcmp.mod441.not, label %.lr.ph.i198.prol.loopexit, label %.lr.ph.i198.prol

.lr.ph.i198.prol:                                 ; preds = %.lr.ph.i198.preheader
  %i.hy = add nsw i64 %i.m, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.hz = load i32, ptr %i.hw, align 4, !tbaa !48
  store i32 %i.hz, ptr %i.d, align 4, !tbaa !48
  store i32 0, ptr %i.hw, align 4, !tbaa !48
  %i.ia = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph.i198.prol.loopexit

.lr.ph.i198.prol.loopexit:                        ; preds = %.lr.ph.i198.prol, %.lr.ph.i198.preheader
  %.020.i199.unr = phi i64 [ %i.m, %.lr.ph.i198.preheader ], [ %i.hy, %.lr.ph.i198.prol ]
  %.0819.i200.unr = phi ptr [ %i.hw, %.lr.ph.i198.preheader ], [ %i.ic, %.lr.ph.i198.prol ]
  %.01618.i201.unr = phi ptr [ %i.d, %.lr.ph.i198.preheader ], [ %i.id, %.lr.ph.i198.prol ]
  %i.ie = icmp eq i64 %i.l, 4
  br i1 %i.ie, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204, label %.lr.ph.i198

.lr.ph.i198:                                      ; preds = %.lr.ph.i198.prol.loopexit, %.lr.ph.i198
  %.020.i199 = phi i64 [ %i.ik, %.lr.ph.i198 ], [ %.020.i199.unr, %.lr.ph.i198.prol.loopexit ]
  %.0819.i200 = phi ptr [ %i.io, %.lr.ph.i198 ], [ %.0819.i200.unr, %.lr.ph.i198.prol.loopexit ] ; 4 uses
  %.01618.i201 = phi ptr [ %i.ip, %.lr.ph.i198 ], [ %.01618.i201.unr, %.lr.ph.i198.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i201) ]
  %i.if = load i32, ptr %.0819.i200, align 4, !tbaa !48
  store i32 %i.if, ptr %.01618.i201, align 4, !tbaa !48
  store i32 0, ptr %.0819.i200, align 4, !tbaa !48
  %i.ig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ii = getelementptr inbounds nuw i8, ptr %.0819.i200, i64 4 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.01618.i201, i64 4
  %i.ik = add i64 %.020.i199, -2                  ; 2 uses
  %i.il = load i32, ptr %i.ii, align 4, !tbaa !48
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !48
  store i32 0, ptr %i.ii, align 4, !tbaa !48
  %i.im = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.io = getelementptr inbounds nuw i8, ptr %.0819.i200, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %.01618.i201, i64 8
  %.not.i202.1 = icmp eq i64 %i.ik, 0
  br i1 %.not.i202.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204, label %.lr.ph.i198, !llvm.loop !130

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204: ; preds = %.lr.ph.i198, %.lr.ph.i198.prol.loopexit
  %.not8.i.i206 = icmp eq ptr %3, %i.hw
  br i1 %.not8.i.i206, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i.i207.preheader

.lr.ph.i.i207.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204
  %i.iq = shl nsw i64 %1, 2
  %i.ir = shl i64 %i.c, 1
  %7 = add i64 %i.iq, %i.ir
  %i.is = add i64 %7, -4
  %i.it = add i64 %i.b, %i.h
  %8 = shl i64 %4, 2
  %i.iu = add i64 %i.it, %8
  %i.iv = sub i64 %i.is, %i.iu                    ; 2 uses
  %i.iw = lshr i64 %i.iv, 2
  %i.ix = add nuw nsw i64 %i.iw, 1                ; 2 uses
  %min.iters.check329 = icmp ult i64 %i.iv, 188
  br i1 %min.iters.check329, label %.lr.ph.i.i207.preheader429, label %vector.memcheck322

vector.memcheck322:                               ; preds = %.lr.ph.i.i207.preheader
  %i.iy = shl nsw i64 %1, 2                       ; 3 uses
  %i.iz = add i64 %i.iy, -4
  %i.ja = shl i64 %i.c, 1
  %i.jb = add i64 %i.iy, %i.ja
  %i.jc = add i64 %i.jb, -4
  %i.jd = add i64 %i.b, %i.h
  %i.je = shl i64 %4, 2                           ; 2 uses
  %i.jf = add i64 %i.jd, %i.je
  %i.jg = sub i64 %i.jc, %i.jf
  %i.jh = and i64 %i.jg, -4                       ; 2 uses
  %i.ji = sub i64 %i.iz, %i.jh
  %scevgep323 = getelementptr i8, ptr %0, i64 %i.ji
  %i.jj = add i64 %i.iy, %i.c
  %i.jk = add i64 %i.jj, -4
  %i.jl = add i64 %i.je, %i.b
  %i.jm = add i64 %i.jl, %i.jh
  %i.jn = sub i64 %i.jk, %i.jm
  %scevgep324 = getelementptr i8, ptr %0, i64 %i.jn
  %bound0325 = icmp ult ptr %scevgep323, %i.hw
  %bound1326 = icmp ult ptr %scevgep324, %i.d
  %found.conflict327 = and i1 %bound0325, %bound1326
  br i1 %found.conflict327, label %.lr.ph.i.i207.preheader429, label %vector.ph330

vector.ph330:                                     ; preds = %vector.memcheck322
  %n.vec331 = and i64 %i.ix, 9223372036854775800  ; 3 uses
  %i.jo = mul i64 %n.vec331, -4                   ; 2 uses
  %i.jp = getelementptr i8, ptr %i.d, i64 %i.jo   ; 2 uses
  %i.jq = getelementptr i8, ptr %i.hw, i64 %i.jo
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph330
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next338, %vector.body332 ] ; 2 uses
  %i.jr = mul i64 %index333, -4                   ; 2 uses
  %next.gep334 = getelementptr i8, ptr %i.d, i64 %i.jr ; 2 uses
  %next.gep335 = getelementptr i8, ptr %i.hw, i64 %i.jr ; 2 uses
  %i.js = getelementptr inbounds i8, ptr %next.gep335, i64 -16 ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %next.gep335, i64 -32 ; 2 uses
  %wide.load336 = load <4 x i32>, ptr %i.js, align 4, !tbaa !48, !alias.scope !547
  %wide.load337 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !48, !alias.scope !547
  %i.ju = getelementptr inbounds i8, ptr %next.gep334, i64 -16
  %i.jv = getelementptr inbounds i8, ptr %next.gep334, i64 -32
  store <4 x i32> %wide.load336, ptr %i.ju, align 4, !tbaa !48, !alias.scope !550, !noalias !547
  store <4 x i32> %wide.load337, ptr %i.jv, align 4, !tbaa !48, !alias.scope !550, !noalias !547
  store <4 x i32> zeroinitializer, ptr %i.js, align 4, !tbaa !48, !alias.scope !547
  store <4 x i32> zeroinitializer, ptr %i.jt, align 4, !tbaa !48, !alias.scope !547
  %index.next338 = add nuw i64 %index333, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next338, %n.vec331
  br i1 %i.jw, label %middle.block339, label %vector.body332, !llvm.loop !552

middle.block339:                                  ; preds = %vector.body332
  %cmp.n340 = icmp eq i64 %i.ix, %n.vec331
  br i1 %cmp.n340, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i.i207.preheader429

.lr.ph.i.i207.preheader429:                       ; preds = %vector.memcheck322, %.lr.ph.i.i207.preheader, %middle.block339
  %.010.i.i208.ph = phi ptr [ %i.d, %vector.memcheck322 ], [ %i.d, %.lr.ph.i.i207.preheader ], [ %i.jp, %middle.block339 ]
  %.079.i.i209.ph = phi ptr [ %i.hw, %vector.memcheck322 ], [ %i.hw, %.lr.ph.i.i207.preheader ], [ %i.jq, %middle.block339 ]
  br label %.lr.ph.i.i207

.lr.ph.i.i207:                                    ; preds = %.lr.ph.i.i207.preheader429, %.lr.ph.i.i207
  %.010.i.i208 = phi ptr [ %i.jy, %.lr.ph.i.i207 ], [ %.010.i.i208.ph, %.lr.ph.i.i207.preheader429 ]
  %.079.i.i209 = phi ptr [ %i.jx, %.lr.ph.i.i207 ], [ %.079.i.i209.ph, %.lr.ph.i.i207.preheader429 ]
  %i.jx = getelementptr inbounds i8, ptr %.079.i.i209, i64 -4 ; 4 uses
  %i.jy = getelementptr inbounds i8, ptr %.010.i.i208, i64 -4 ; 3 uses
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !48
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !48
  store i32 0, ptr %i.jx, align 4, !tbaa !48
  %.not.i.i210 = icmp eq ptr %3, %i.jx
  br i1 %.not.i.i210, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i.i207, !llvm.loop !553

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211: ; preds = %.lr.ph.i.i207, %middle.block339, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204
  %i.ka = phi ptr [ %3, %bb.h ], [ %i.d, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204 ], [ %i.jp, %middle.block339 ], [ %i.jy, %.lr.ph.i.i207 ] ; 3 uses
  %i.kb = ptrtoaddr ptr %i.ka to i64
  %i.kc = sub i64 0, %4
  %i.kd = getelementptr [4 x i8], ptr %i.ka, i64 %i.kc ; 11 uses
  %.not8.i.i212 = icmp eq i64 %4, 0
  br i1 %.not8.i.i212, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader

.lr.ph.i.i213.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211
  %min.iters.check345 = icmp ult i64 %4, 16
  br i1 %min.iters.check345, label %.lr.ph.i.i213.preheader428, label %vector.memcheck343

vector.memcheck343:                               ; preds = %.lr.ph.i.i213.preheader
  %i.ke = shl i64 %4, 2
  %i.kf = add i64 %i.ke, %i.a
  %i.kg = sub i64 %i.kf, %i.kb
  %diff.check = icmp ugt i64 %i.kg, -32
  br i1 %diff.check, label %.lr.ph.i.i213.preheader428, label %vector.ph346

vector.ph346:                                     ; preds = %vector.memcheck343
  %n.vec347 = and i64 %4, -8                      ; 3 uses
  %i.kh = shl i64 %n.vec347, 2                    ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kd, i64 %i.kh
  %i.kj = and i64 %4, 7
  %i.kk = getelementptr i8, ptr %5, i64 %i.kh
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph346
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next354, %vector.body348 ] ; 2 uses
  %i.kl = shl i64 %index349, 2                    ; 2 uses
  %next.gep350 = getelementptr i8, ptr %i.kd, i64 %i.kl ; 2 uses
  %next.gep351 = getelementptr i8, ptr %5, i64 %i.kl ; 2 uses
  %i.km = getelementptr i8, ptr %next.gep351, i64 16
  %wide.load352 = load <4 x i32>, ptr %next.gep351, align 4, !tbaa !48
  %wide.load353 = load <4 x i32>, ptr %i.km, align 4, !tbaa !48
  %i.kn = getelementptr i8, ptr %next.gep350, i64 16
  store <4 x i32> %wide.load352, ptr %next.gep350, align 4, !tbaa !48
  store <4 x i32> %wide.load353, ptr %i.kn, align 4, !tbaa !48
  %index.next354 = add nuw i64 %index349, 8       ; 2 uses
  %i.ko = icmp eq i64 %index.next354, %n.vec347
  br i1 %i.ko, label %middle.block355, label %vector.body348, !llvm.loop !554

middle.block355:                                  ; preds = %vector.body348
  %cmp.n356 = icmp eq i64 %4, %n.vec347
  br i1 %cmp.n356, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader428

.lr.ph.i.i213.preheader428:                       ; preds = %vector.memcheck343, %.lr.ph.i.i213.preheader, %middle.block355
  %.011.i.i214.ph = phi ptr [ %i.kd, %vector.memcheck343 ], [ %i.kd, %.lr.ph.i.i213.preheader ], [ %i.ki, %middle.block355 ] ; 2 uses
  %.0610.i.i215.ph = phi i64 [ %4, %vector.memcheck343 ], [ %4, %.lr.ph.i.i213.preheader ], [ %i.kj, %middle.block355 ] ; 4 uses
  %.079.i.i216.ph = phi ptr [ %5, %vector.memcheck343 ], [ %5, %.lr.ph.i.i213.preheader ], [ %i.kk, %middle.block355 ] ; 2 uses
  %i.kp = add i64 %.0610.i.i215.ph, -1
  %xtraiter443 = and i64 %.0610.i.i215.ph, 7      ; 2 uses
  %lcmp.mod444.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol

.lr.ph.i.i213.prol:                               ; preds = %.lr.ph.i.i213.preheader428, %.lr.ph.i.i213.prol
  %.011.i.i214.prol = phi ptr [ %i.kt, %.lr.ph.i.i213.prol ], [ %.011.i.i214.ph, %.lr.ph.i.i213.preheader428 ] ; 2 uses
  %.0610.i.i215.prol = phi i64 [ %i.kq, %.lr.ph.i.i213.prol ], [ %.0610.i.i215.ph, %.lr.ph.i.i213.preheader428 ]
  %.079.i.i216.prol = phi ptr [ %i.ks, %.lr.ph.i.i213.prol ], [ %.079.i.i216.ph, %.lr.ph.i.i213.preheader428 ] ; 2 uses
  %prol.iter445 = phi i64 [ %prol.iter445.next, %.lr.ph.i.i213.prol ], [ 0, %.lr.ph.i.i213.preheader428 ]
  %i.kq = add i64 %.0610.i.i215.prol, -1          ; 2 uses
  %i.kr = load i32, ptr %.079.i.i216.prol, align 4, !tbaa !48
  store i32 %i.kr, ptr %.011.i.i214.prol, align 4, !tbaa !48
  %i.ks = getelementptr inbounds nuw i8, ptr %.079.i.i216.prol, i64 4 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.011.i.i214.prol, i64 4 ; 2 uses
  %prol.iter445.next = add i64 %prol.iter445, 1   ; 2 uses
  %prol.iter445.cmp.not = icmp eq i64 %prol.iter445.next, %xtraiter443
  br i1 %prol.iter445.cmp.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol, !llvm.loop !555

.lr.ph.i.i213.prol.loopexit:                      ; preds = %.lr.ph.i.i213.prol, %.lr.ph.i.i213.preheader428
  %.011.i.i214.unr = phi ptr [ %.011.i.i214.ph, %.lr.ph.i.i213.preheader428 ], [ %i.kt, %.lr.ph.i.i213.prol ]
  %.0610.i.i215.unr = phi i64 [ %.0610.i.i215.ph, %.lr.ph.i.i213.preheader428 ], [ %i.kq, %.lr.ph.i.i213.prol ]
  %.079.i.i216.unr = phi ptr [ %.079.i.i216.ph, %.lr.ph.i.i213.preheader428 ], [ %i.ks, %.lr.ph.i.i213.prol ]
  %i.ku = icmp ult i64 %i.kp, 7
  br i1 %i.ku, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213
  %.011.i.i214 = phi ptr [ %i.lt, %.lr.ph.i.i213 ], [ %.011.i.i214.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %.0610.i.i215 = phi i64 [ %i.lq, %.lr.ph.i.i213 ], [ %.0610.i.i215.unr, %.lr.ph.i.i213.prol.loopexit ]
  %.079.i.i216 = phi ptr [ %i.ls, %.lr.ph.i.i213 ], [ %.079.i.i216.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %i.kv = load i32, ptr %.079.i.i216, align 4, !tbaa !48
  store i32 %i.kv, ptr %.011.i.i214, align 4, !tbaa !48
  %i.kw = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 4
  %i.kx = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 4
  %i.ky = load i32, ptr %i.kw, align 4, !tbaa !48
  store i32 %i.ky, ptr %i.kx, align 4, !tbaa !48
  %i.kz = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 8
  %i.lb = load i32, ptr %i.kz, align 4, !tbaa !48
  store i32 %i.lb, ptr %i.la, align 4, !tbaa !48
  %i.lc = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 12
  %i.ld = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 12
  %i.le = load i32, ptr %i.lc, align 4, !tbaa !48
  store i32 %i.le, ptr %i.ld, align 4, !tbaa !48
  %i.lf = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 16
  %i.lh = load i32, ptr %i.lf, align 4, !tbaa !48
  store i32 %i.lh, ptr %i.lg, align 4, !tbaa !48
  %i.li = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 20
  %i.lj = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 20
  %i.lk = load i32, ptr %i.li, align 4, !tbaa !48
  store i32 %i.lk, ptr %i.lj, align 4, !tbaa !48
  %i.ll = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 24
  %i.lm = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 24
  %i.ln = load i32, ptr %i.ll, align 4, !tbaa !48
  store i32 %i.ln, ptr %i.lm, align 4, !tbaa !48
  %i.lo = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 28
  %i.lp = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 28
  %i.lq = add i64 %.0610.i.i215, -8               ; 2 uses
  %i.lr = load i32, ptr %i.lo, align 4, !tbaa !48
  store i32 %i.lr, ptr %i.lp, align 4, !tbaa !48
  %i.ls = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 32
  %i.lt = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 32
  %.not.i.i217.7 = icmp eq i64 %i.lq, 0
  br i1 %.not.i.i217.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213, !llvm.loop !556

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219: ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213, %middle.block355, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211
  %.not.i220 = icmp eq ptr %3, %i.kd
  br i1 %.not.i220, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219
  %.not8.i.i221 = icmp eq ptr %0, %3
  br i1 %.not8.i.i221, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222.preheader

.lr.ph.i.i222.preheader:                          ; preds = %bb.i
end_hunk_12
