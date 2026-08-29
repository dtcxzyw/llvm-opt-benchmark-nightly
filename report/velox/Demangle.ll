Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Demangle?download=true
inline.NumInlined: 143
inline.NumDeleted: 65
begin_hunk_0_@_ZN5folly13fbstring_coreIcE9initLargeEPKcm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind
declare extern_weak i64 @nallocx(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.anon, align 1                ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.d = invoke noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !22
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load i8, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !22, !range !24, !noundef !25
  %i.g = trunc nuw i8 %i.f to i1
  ret i1 %i.g

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #19
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.a, 0
  br i1 %.not.i.i.i, label %_ZN5folly13usingJEMallocEv.exit.i, label %.split.i, !prof !20

.split.i:                                         ; preds = %bb.a
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

_ZN5folly13usingJEMallocEv.exit.i:                ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() #21
  br i1 %i.c, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly13usingJEMallocEv.exit.i, %.split.i
  %i.d = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i1.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i1.i, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, label %.split, !prof !20

.split:                                           ; preds = %bb.b
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit: ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() #21
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
declare void @__cxa_guard_release(ptr) local_unnamed_addr #10

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingJEMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !22
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !22, !range !24, !noundef !25
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #8

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingTCMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !22
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !22, !range !24, !noundef !25
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !26
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !26
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted6createEPm(ptr noundef %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::length_error", align 8 ; 5 uses
  %2 = alloca %"class.std::length_error", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %3 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 1) ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 1
  br i1 %4, label %_ZN5folly11checked_addImvEEbPT_S1_S1_.exit, label %bb.d, !prof !20

_ZN5folly11checked_addImvEEbPT_S1_S1_.exit:       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #14
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5folly11checked_addImvEEbPT_S1_S1_.exit
  unreachable

bb.c:                                             ; preds = %_ZN5folly11checked_addImvEEbPT_S1_S1_.exit
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %5 = extractvalue { i64, i1 } %3, 0
  %6 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 8) ; 2 uses
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0             ; 5 uses
  br i1 %7, label %bb.e, label %9

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.k

9:                                                ; preds = %bb.d
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.h

bb.h:                                             ; preds = %9
  %i.d = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !20

.split.i:                                         ; preds = %bb.h
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %bb.i, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.h
  %i.f = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #21
  br i1 %i.f, label %bb.i, label %_ZN5folly14goodMallocSizeEm.exit

bb.i:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.g = tail call i64 @nallocx(i64 noundef %8, i32 noundef 0) #18 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not.i, i64 %8, i64 %i.g
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %9, %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.i
  %.0.i10 = phi i64 [ 0, %9 ], [ %i.h, %bb.i ], [ %8, %_ZN5folly10canNallocxEv.exit.i ], [ %8, %.split.i ] ; 2 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %.0.i10) #22 ; 3 uses
  %.not.i11 = icmp eq ptr %i.i, null
  br i1 %.not.i11, label %bb.j, label %_ZN5folly13checkedMallocEm.exit

bb.j:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #14
  unreachable

_ZN5folly13checkedMallocEm.exit:                  ; preds = %_ZN5folly14goodMallocSizeEm.exit
  store atomic i64 1, ptr %i.i release, align 8
  %i.j = add i64 %.0.i10, -9
  store i64 %i.j, ptr %0, align 8, !tbaa !13
  ret ptr %i.i

bb.k:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.c, %bb.g ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 2 uses
  tail call void @_ZNSt12length_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #23
  unreachable
}

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12length_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  ret i64 %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt11logic_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.4) #14
  unreachable
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt11logic_errorJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  invoke void @_ZN5folly15throw_exceptionISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #14
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 2 uses
  tail call void @_ZNSt11logic_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #23
  unreachable
}

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly8demangleEPKcPcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20 ; 4 uses
  %i.b = icmp ugt i64 %i.a, 1024
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add i64 %2, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.a) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %0, i64 %.sroa.speculated, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.speculated
  store i8 0, ptr %i.d, align 1, !tbaa !12
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN5folly7strlcpyEPcPKcm(ptr noundef %1, ptr noundef nonnull %0, i64 noundef %2)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d
  %.4 = phi i64 [ %i.e, %bb.d ], [ %i.a, %bb.b ], [ %i.a, %bb.c ]
  ret i64 %.4
}

declare noundef i64 @_ZN5folly7strlcpyEPcPKcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !10, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!17, !14, i64 16}
!17 = !{!"_ZTSN5folly13fbstring_coreIcE11MediumLargeE", !18, i64 0, !14, i64 8, !14, i64 16}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !10, i64 0}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!"branch_weights", i32 1, i32 1048575}
!22 = !{!23, !23, i64 0}
!23 = !{!"bool", !10, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !11, i64 0}
end_hunk_0
