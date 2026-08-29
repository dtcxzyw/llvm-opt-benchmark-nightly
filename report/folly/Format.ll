Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Format?download=true
inline.NumInlined: 2530
inline.NumDeleted: 819
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5folly13fbstring_coreIcE9initLargeEPKcm:bb.a
  %i.g = or i64 %i.f, 4611686018427387904
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.h, align 8, !tbaa !772
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  store i8 0, ptr %i.i, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nounwind
declare extern_weak i64 @nallocx(i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.anon.111, align 1            ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !774

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #33
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  %i.d = invoke noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !198
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load i8, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !198, !range !23, !noundef !24
  %i.g = trunc nuw i8 %i.f to i1
  ret i1 %i.g

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #36
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.a, 0
  br i1 %.not.i.i.i, label %_ZN5folly13usingJEMallocEv.exit.i, label %.split.i, !prof !25

.split.i:                                         ; preds = %bb.a
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

_ZN5folly13usingJEMallocEv.exit.i:                ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() #38
  br i1 %i.c, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly13usingJEMallocEv.exit.i, %.split.i
  %i.d = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i1.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i1.i, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, label %.split, !prof !25

.split:                                           ; preds = %bb.b
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit: ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() #38
  br i1 %i.f, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread: ; preds = %.split.i, %_ZN5folly13usingJEMallocEv.exit.i, %.split, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit
  br label %bb.c

bb.c:                                             ; preds = %.split, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread
  %i.g = phi i1 [ true, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread ], [ false, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit ], [ false, %.split ]
  %i.h = phi i8 [ 1, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread ], [ -1, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit ], [ -1, %.split ]
  store atomic i8 %i.h, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E release, align 1
  ret i1 %i.g
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #21

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingJEMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !774

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #33
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #33 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !198
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !198, !range !23, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #7

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingTCMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !774

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #33
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #33 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !198
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !198, !range !23, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #22

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !41
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted6createEPm(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::length_error", align 8 ; 5 uses
  %2 = alloca %"class.std::length_error", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !68
  %3 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 1) ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 1
  br i1 %4, label %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit, label %bb.d, !prof !25

_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.33)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #9
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit
  unreachable

bb.c:                                             ; preds = %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %5 = extractvalue { i64, i1 } %3, 0
  %6 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 8) ; 2 uses
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0             ; 5 uses
  br i1 %7, label %bb.e, label %9

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.33)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.k

9:                                                ; preds = %bb.d
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.h

bb.h:                                             ; preds = %9
  %i.d = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !25

.split.i:                                         ; preds = %bb.h
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %bb.i, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.h
  %i.f = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #38
  br i1 %i.f, label %bb.i, label %_ZN5folly14goodMallocSizeEm.exit

bb.i:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.g = tail call i64 @nallocx(i64 noundef %8, i32 noundef 0) #33 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not.i, i64 %8, i64 %i.g
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %9, %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.i
  %.0.i10 = phi i64 [ 0, %9 ], [ %i.h, %bb.i ], [ %8, %_ZN5folly10canNallocxEv.exit.i ], [ %8, %.split.i ] ; 2 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %.0.i10) #39 ; 3 uses
  %.not.i11 = icmp eq ptr %i.i, null
  br i1 %.not.i11, label %bb.j, label %_ZN5folly13checkedMallocEm.exit

bb.j:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #9
  unreachable

_ZN5folly13checkedMallocEm.exit:                  ; preds = %_ZN5folly14goodMallocSizeEm.exit
  store atomic i64 1, ptr %i.i release, align 8
  %i.j = add i64 %.0.i10, -9
  store i64 %i.j, ptr %0, align 8, !tbaa !68
  ret ptr %i.i

bb.k:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.c, %bb.g ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 2 uses
  tail call void @_ZNSt12length_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #33
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #32
  unreachable
}

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12length_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #23 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !tbaa !45
  %i.c = icmp slt i8 %i.b, -64
  %i.d = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  br i1 %i.c, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.sink) #33
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define void @_ZN5folly9FormatArg8initSlowEv(ptr noundef nonnull align 8 dereferenceable(84) initializes((40, 56)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.folly::Range", align 8      ; 7 uses
  %2 = alloca %"class.folly::Range", align 8      ; 5 uses
  %3 = alloca %"class.folly::Expected", align 8   ; 6 uses
  %4 = alloca %class.anon.125, align 8            ; 5 uses
  %5 = alloca %class.anon.128, align 8            ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !775    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !776  ; 16 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = tail call noundef ptr @memchr(ptr noundef %i.c, i32 noundef 58, i64 noundef %i.h) #34 ; 6 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.j, align 8, !tbaa !67
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !67
  br label %.critedge38

bb.c:                                             ; preds = %bb.a
  store ptr %i.i, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !67
  %i.k = load i8, ptr %i.i, align 1, !tbaa !45
  %i.l = icmp eq i8 %i.k, 58
  br i1 %i.l, label %bb.d, label %bb.al

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 6 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !67
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %.critedge38, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 4 uses
  %.not27 = icmp eq ptr %i.o, %i.e
  br i1 %.not27, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.o, align 1, !tbaa !45
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN5folly6detailL16formatAlignTableE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !777   ; 2 uses
  %.not28 = icmp eq i8 %i.s, 5
  %i.t = load i8, ptr %i.m, align 1, !tbaa !45    ; 2 uses
  br i1 %.not28, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.t, ptr %i.u, align 8, !tbaa !778
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.s, ptr %i.v, align 1, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 3 ; 3 uses
  store ptr %i.w, ptr %i.b, align 8, !tbaa !67
  %i.x = icmp eq ptr %i.w, %i.e
  br i1 %i.x, label %.critedge38, label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.m, align 1, !tbaa !45
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN5folly6detailL16formatAlignTableE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !777 ; 2 uses
  %.not29 = icmp eq i8 %i.ab, 5
  br i1 %.not29, label %bb.j, label %bb.i

.thread:                                          ; preds = %bb.f
  %i.ac = zext i8 %i.t to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN5folly6detailL16formatAlignTableE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !777 ; 2 uses
  %.not2993 = icmp eq i8 %i.ae, 5
  br i1 %.not2993, label %bb.j, label %.thread94

.thread94:                                        ; preds = %.thread
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !69
  store ptr %i.o, ptr %i.b, align 8, !tbaa !67
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ab, ptr %i.ag, align 1, !tbaa !69
  br label %.critedge38

bb.j:                                             ; preds = %.thread94, %.thread, %bb.h, %bb.g
  %i.ah = phi ptr [ %i.m, %bb.h ], [ %i.o, %.thread94 ], [ %i.w, %bb.g ], [ %i.m, %.thread ] ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !45  ; 2 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN5folly6detailL15formatSignTableE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !779 ; 2 uses
  %.not30 = icmp eq i8 %i.al, 4
  br i1 %.not30, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.al, ptr %i.am, align 2, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 4 uses
  store ptr %i.an, ptr %i.b, align 8, !tbaa !67
  %i.ao = icmp eq ptr %i.an, %i.e
  br i1 %i.ao, label %.critedge38, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i8, ptr %i.an, align 1, !tbaa !45
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.ap = phi i8 [ %.pre, %._crit_edge ], [ %i.ai, %bb.j ] ; 2 uses
  %i.aq = phi ptr [ %i.an, %._crit_edge ], [ %i.ah, %bb.j ] ; 2 uses
  %i.ar = icmp eq i8 %i.ap, 35
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 1, ptr %i.as, align 1, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 4 uses
  store ptr %i.at, ptr %i.b, align 8, !tbaa !67
  %i.au = icmp eq ptr %i.at, %i.e
  br i1 %i.au, label %.critedge38, label %._crit_edge63

._crit_edge63:                                    ; preds = %bb.m
  %.pre64 = load i8, ptr %i.at, align 1, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge63, %bb.l
  %i.av = phi i8 [ %.pre64, %._crit_edge63 ], [ %i.ap, %bb.l ] ; 2 uses
  %i.aw = phi ptr [ %i.at, %._crit_edge63 ], [ %i.aq, %bb.l ] ; 2 uses
  %i.ax = icmp eq i8 %i.av, 48
  br i1 %i.ax, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !69
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNK5folly9FormatArg5errorIJRA26_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(26) @.str.59) #32
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 48, ptr %i.bb, align 8, !tbaa !778
  store i8 3, ptr %i.ay, align 1, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 4 uses
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !67
  %i.bd = icmp eq ptr %i.bc, %i.e
  br i1 %i.bd, label %.critedge38, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit._crit_edge

_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit._crit_edge: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit
  %.pre65 = load i8, ptr %i.bc, align 1, !tbaa !45
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit._crit_edge, %bb.n
  %i.be = phi i8 [ %.pre65, %_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit._crit_edge ], [ %i.av, %bb.n ] ; 2 uses
  %i.bf = phi ptr [ %i.bc, %_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit._crit_edge ], [ %i.aw, %bb.n ] ; 2 uses
  %i.bg = icmp eq i8 %i.be, 42
  br i1 %i.bg, label %bb.r, label %bb.v
end_hunk_0
