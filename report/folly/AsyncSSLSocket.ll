Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/AsyncSSLSocket?download=true
inline.NumInlined: 2912
inline.NumDeleted: 1314
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5folly13fbstring_coreIcE9initLargeEPKcm:bb.a
_ZN5folly13fbstring_coreIcE10RefCounted6createEPKcPm.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !11251
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !11251
  %i.f = load i64, ptr %i.a, align 8, !tbaa !266
  %i.g = or i64 %i.f, 4611686018427387904
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.h, align 8, !tbaa !12823
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  store i8 0, ptr %i.i, align 1, !tbaa !11251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: nounwind
declare extern_weak i64 @nallocx(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.anon.553, align 1            ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !263

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #37
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #37
  %i.d = invoke noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !12825
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load i8, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !12825, !range !12, !noundef !493
  %i.g = trunc nuw i8 %i.f to i1
  ret i1 %i.g

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.a, 0
  br i1 %.not.i.i.i, label %_ZN5folly13usingJEMallocEv.exit.i, label %.split.i, !prof !11309

.split.i:                                         ; preds = %bb.a
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

_ZN5folly13usingJEMallocEv.exit.i:                ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() #44
  br i1 %i.c, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly13usingJEMallocEv.exit.i, %.split.i
  %i.d = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i1.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i1.i, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, label %.split, !prof !11309

.split:                                           ; preds = %bb.b
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit: ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() #44
  br i1 %i.f, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread: ; preds = %.split.i, %_ZN5folly13usingJEMallocEv.exit.i, %.split, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit
  br label %bb.c

bb.c:                                             ; preds = %.split, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread
  %i.g = phi i1 [ true, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread ], [ false, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit ], [ false, %.split ]
  %i.h = phi i8 [ 1, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread ], [ -1, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit ], [ -1, %.split ]
  store atomic i8 %i.h, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E release, align 1
  ret i1 %i.g
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingJEMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !263

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #37
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #37
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #37 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !12825
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !12825, !range !12, !noundef !493
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingTCMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !263

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #37
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #37
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #37 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !12825
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !12825, !range !12, !noundef !493
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #27 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #37
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !17
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #27 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #37 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted6createEPm(ptr noundef %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::length_error", align 8 ; 5 uses
  %2 = alloca %"class.std::length_error", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !266    ; 3 uses
  %3 = icmp eq i64 %i.a, -1
  br i1 %3, label %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit, label %bb.d, !prof !11309

_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.12)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #23
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit
  unreachable

bb.c:                                             ; preds = %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %4 = icmp ult i64 %i.a, -9
  %5 = add nuw i64 %i.a, 9                        ; 4 uses
  br i1 %4, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.12)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #23
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.d = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !11309

.split.i:                                         ; preds = %bb.h
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %bb.i, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.h
  %i.f = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #44
  br i1 %i.f, label %bb.i, label %_ZN5folly14goodMallocSizeEm.exit

bb.i:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.g = tail call i64 @nallocx(i64 noundef %5, i32 noundef 0) #37 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not.i, i64 %5, i64 %i.g
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.i
  %.0.i10 = phi i64 [ %5, %.split.i ], [ %i.h, %bb.i ], [ %5, %_ZN5folly10canNallocxEv.exit.i ] ; 2 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %.0.i10) #45 ; 3 uses
  %.not.i11 = icmp eq ptr %i.i, null
  br i1 %.not.i11, label %bb.j, label %_ZN5folly13checkedMallocEm.exit

bb.j:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #23
  unreachable

_ZN5folly13checkedMallocEm.exit:                  ; preds = %_ZN5folly14goodMallocSizeEm.exit
  store atomic i64 1, ptr %i.i release, align 8
  %i.j = add i64 %.0.i10, -9
  store i64 %i.j, ptr %0, align 8, !tbaa !266
  ret ptr %i.i

bb.k:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.c, %bb.g ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #27 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 2 uses
  tail call void @_ZNSt12length_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #37
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #41
  unreachable
}

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12length_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare void @_ZN5folly8demangleEPKc(ptr dead_on_unwind writable sret(%"class.folly::basic_fbstring") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !tbaa !11251
  %i.c = icmp slt i8 %i.b, -64
  %i.d = load ptr, ptr %0, align 8, !tbaa !11251  ; 2 uses
  br i1 %i.c, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.sink) #37
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: nounwind
declare noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_36CertificateIdentityVerifierExceptionEJRS5_EEEDaDpOT0_EUlvE_S5_EEvPvSB_(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12826)
  %i.a = load ptr, ptr %1, align 8, !tbaa !12829, !noalias !12826, !nonnull !493, !align !12832
  tail call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a) #37
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly36CertificateIdentityVerifierExceptionE, i64 16), ptr %0, align 8, !tbaa !17, !alias.scope !12826
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_36CertificateIdentityVerifierExceptionEEEvPv(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37, !call_target !12833
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly36CertificateIdentityVerifierExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #38
  ret void
}

declare void @_ZN5folly11AsyncSocket14failByteEventsERKNS_20AsyncSocketExceptionE(ptr noundef nonnull align 8 dereferenceable(1193), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN5folly11AsyncSocket16enableByteEventsEv(ptr noundef nonnull align 8 dereferenceable(1193)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncSSLSocket24enableClientHelloParsingEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1960) initializes((1780, 1781)) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.folly::IOBufQueue::Options", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1780
  store i8 1, ptr %i.a, align 4, !tbaa !12506
  %i.b = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #40, !noalias !12840 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false), !noalias !12840
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37, !noalias !12840
  store i8 0, ptr %1, align 1, !tbaa !11709, !noalias !12840
  invoke void @_ZN5folly10IOBufQueueC1ERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(256) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZSt11make_uniqueIN5folly3ssl15ClientHelloInfoEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !12840

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 256) #38, !noalias !12840
  resume { ptr, i32 } %i.c

_ZSt11make_uniqueIN5folly3ssl15ClientHelloInfoEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37, !noalias !12840
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.d, i8 0, i64 120, i1 false), !noalias !12840
  store ptr %i.f, ptr %i.e, align 8, !tbaa !11252, !noalias !12840
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i64 0, ptr %i.g, align 16, !tbaa !11250, !noalias !12840
  store i8 0, ptr %i.f, align 8, !tbaa !11251, !noalias !12840
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false), !noalias !12840
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11662 ; 3 uses
  store ptr %i.b, ptr %i.i, align 8, !tbaa !11662
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5folly3ssl15ClientHelloInfoESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly3ssl15ClientHelloInfoEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5folly3ssl15ClientHelloInfoEEclEPS2_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN5folly3ssl15ClientHelloInfoEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN5folly3ssl15ClientHelloInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %i.j) #37
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 256) #38
  br label %_ZNSt10unique_ptrIN5folly3ssl15ClientHelloInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5folly3ssl15ClientHelloInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5folly3ssl15ClientHelloInfoEEclEPS2_.exit.i.i.i.i, %_ZSt11make_uniqueIN5folly3ssl15ClientHelloInfoEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncSSLSocket23resetClientHelloParsingEP6ssl_st(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1960) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @SSL_set_msg_callback(ptr noundef %1, ptr noundef null)
  %i.a = tail call i64 @SSL_ctrl(ptr noundef %1, i32 noundef 16, i64 noundef 0, ptr noundef null) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11662 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11711, !noalias !12843 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11722, !noalias !12843 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11723, !noalias !12843 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.h
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  br i1 %.not.i.i.i.i, label %_ZN5folly10IOBufQueue4moveEv.exit.i, label %_ZN5folly10IOBufQueue4moveEv.exit.thread.i

_ZN5folly10IOBufQueue4moveEv.exit.thread.i:       ; preds = %bb.a
  %i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !12843 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11267, !noalias !12843 ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = load i64, ptr %i.k, align 8, !tbaa !11269, !noalias !12843
  %i.p = add i64 %i.n, %i.o
  store i64 %i.p, ptr %i.k, align 8, !tbaa !11269, !noalias !12843
  store ptr null, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11261, !noalias !12848
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.q, align 8, !tbaa !11725, !noalias !12848
  store ptr null, ptr %i.d, align 8, !tbaa !11711, !noalias !12848
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !12848
  br label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i

_ZN5folly10IOBufQueue4moveEv.exit.i:              ; preds = %bb.a
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11261, !noalias !12848 ; 2 uses
  %i.r = inttoptr i64 %.pre.i.i to ptr
  store ptr null, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11261, !noalias !12848
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.s, align 8, !tbaa !11725, !noalias !12848
  store ptr null, ptr %i.d, align 8, !tbaa !11711, !noalias !12848
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !12848
  %.not.i.i = icmp eq i64 %.pre.i.i, 0
  br i1 %.not.i.i, label %_ZN5folly10IOBufQueue5resetEv.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i: ; preds = %_ZN5folly10IOBufQueue4moveEv.exit.i, %_ZN5folly10IOBufQueue4moveEv.exit.thread.i
  %i.t = phi ptr [ %i.i, %_ZN5folly10IOBufQueue4moveEv.exit.thread.i ], [ %i.r, %_ZN5folly10IOBufQueue4moveEv.exit.i ] ; 2 uses
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.t) #37
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.t) #37
  br label %_ZN5folly10IOBufQueue5resetEv.exit

_ZN5folly10IOBufQueue5resetEv.exit:               ; preds = %_ZN5folly10IOBufQueue4moveEv.exit.i, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncSSLSocket16parseClientAlpnsEPS0_RNS_2io6CursorERt(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11707 ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11708
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c, !prof !11740

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.i, ptr %i.a, align 8, !tbaa !11707
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8skipSlowEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef 2)
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit: ; preds = %bb.b, %bb.c
  %i.j = load i16, ptr %2, align 2, !tbaa !12762
  %i.k = add i16 %i.j, -2                         ; 3 uses
  store i16 %i.k, ptr %2, align 2, !tbaa !12762
  %.not17 = icmp eq i16 %i.k, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = phi i16 [ %i.k, %.lr.ph ], [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !11707 ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 1
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !11708
  %i.t = ptrtoint ptr %i.s to i64
  %.not.i.i = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !11309

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i = load i8, ptr %i.p, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.u, ptr %i.a, align 8, !tbaa !11707
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE6readBEIhEET_v.exit

bb.f:                                             ; preds = %bb.d
  %i.v = call noundef zeroext i8 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8readSlowIhEET_v(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %.pre = load i16, ptr %2, align 2, !tbaa !12762
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE6readBEIhEET_v.exit
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #41
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.x = add nuw i64 %i.u, 1                      ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !11309

.noexc6.i.i:                                      ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #41
          to label %.noexc26 unwind label %bb.l

.noexc26:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #40
          to label %.noexc27 unwind label %bb.l   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.z, ptr %i.q, align 8, !tbaa !11246
  store i64 %i.u, ptr %i.r, align 8, !tbaa !11251
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc27, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.aa = phi ptr [ %i.z, %.noexc27 ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  switch i64 %i.u, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.s, align 1, !tbaa !11251
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !11251
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.u, ptr %i.ac, align 8, !tbaa !11250
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  store i8 0, ptr %i.ad, align 1, !tbaa !11251
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.g ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.g ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12858)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !11252, !alias.scope !12855, !noalias !12858
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !11246, !alias.scope !12858, !noalias !12855 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11250, !alias.scope !12858, !noalias !12855 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !12860
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !11246, !alias.scope !12855, !noalias !12858
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !11251, !alias.scope !12858, !noalias !12855
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !11251, !alias.scope !12855, !noalias !12858
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !11250, !alias.scope !12858, !noalias !12855
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.h
  %i.an = phi i64 [ %i.aj, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !11250, !alias.scope !12855, !noalias !12858
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !11246, !alias.scope !12858, !noalias !12855
  store i64 0, ptr %i.ao, align 8, !tbaa !11250, !alias.scope !12858, !noalias !12855
  store i8 0, ptr %i.ag, align 8, !tbaa !11251, !alias.scope !12858, !noalias !12855
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !12861

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i31 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12865)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i30, align 8, !tbaa !11252, !alias.scope !12862, !noalias !12865
  %i.au = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !11246, !alias.scope !12865, !noalias !12862 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32

bb.i:                                             ; preds = %.lr.ph.i.i.i29
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11250, !alias.scope !12865, !noalias !12862 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !12867
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.au, ptr %.012.i.i.i30, align 8, !tbaa !11246, !alias.scope !12862, !noalias !12865
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !11251, !alias.scope !12865, !noalias !12862
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !11251, !alias.scope !12862, !noalias !12865
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !11250, !alias.scope !12865, !noalias !12862
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32, %bb.i
  %i.bc = phi i64 [ %i.ay, %bb.i ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !11250, !alias.scope !12862, !noalias !12865
  store ptr %i.av, ptr %.0911.i.i.i31, align 8, !tbaa !11246, !alias.scope !12865, !noalias !12862
  store i64 0, ptr %i.bd, align 8, !tbaa !11250, !alias.scope !12865, !noalias !12862
  store i8 0, ptr %i.av, align 8, !tbaa !11251, !alias.scope !12865, !noalias !12862
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !12861

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11675
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bk) #38
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, %bb.j
  store ptr %i.p, ptr %0, align 8, !tbaa !11671
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !11673
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !11675
  ret void

bb.k:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = tail call ptr @__cxa_begin_catch(ptr %i.bo) #37 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #38
  invoke void @__cxa_rethrow() #41
          to label %bb.o unwind label %bb.k

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.bm

bb.n:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #39
  unreachable

bb.o:                                             ; preds = %bb.l
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @_ZN5folly5IOBuf10wrapBufferEPKvm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZN5folly10IOBufQueue7trimEndEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #31

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef zeroext i16 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8readSlowItEET_v(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8pullSlowEPvm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.b = load i16, ptr %i.a, align 2, !tbaa !12762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret i16 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly14AsyncSSLSocket19getSSLClientCiphersERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1960) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 19 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !11252
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  store i64 0, ptr %i.b, align 8, !tbaa !11250
  store i8 0, ptr %i.a, align 8, !tbaa !11251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1780
  %i.d = load i8, ptr %i.c, align 4, !tbaa !12506, !range !12, !noundef !493
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11662 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12868 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12868 ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11250
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull @.str.12, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.e:                                             ; preds = %bb.ai
  %i.q = load ptr, ptr %1, align 8, !tbaa !11246  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  %i.t = load ptr, ptr %3, align 8, !tbaa !11246  ; 5 uses
  %i.u = icmp eq ptr %i.t, %i.a                   ; 2 uses
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.u, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = load i64, ptr %i.b, align 8, !tbaa !11250 ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  switch i64 %i.v, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.t, align 1, !tbaa !11251
  store i8 %i.x, ptr %i.q, align 1, !tbaa !11251
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.y = load i64, ptr %i.b, align 8, !tbaa !11250 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !11250
  %i.aa = load ptr, ptr %1, align 8, !tbaa !11246
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !11251
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !11246
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.t, ptr %1, align 8, !tbaa !11246
  %i.ad = load <2 x i64>, ptr %i.b, align 8, !tbaa !11251
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !tbaa !11251
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !11251
  store ptr %i.t, ptr %1, align 8, !tbaa !11246
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load <2 x i64>, ptr %i.b, align 8, !tbaa !11251
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !11251
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.q, ptr %3, align 8, !tbaa !11246
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !11251
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.a, ptr %3, align 8, !tbaa !11246
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.ah = phi ptr [ %i.q, %bb.i ], [ %i.a, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.b, align 8, !tbaa !11250
  store i8 0, ptr %i.ah, align 1, !tbaa !11251
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

.preheader:                                       ; preds = %bb.b, %bb.ai
  %.01560 = phi i1 [ false, %bb.ai ], [ true, %bb.b ]
  %.sroa.045.059 = phi ptr [ %i.dp, %bb.ai ], [ %i.i, %bb.b ] ; 2 uses
  %i.ai = load i16, ptr %.sroa.045.059, align 2, !tbaa !12762 ; 3 uses
  br i1 %.01560, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !11250 ; 5 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.141) #41
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.k
  %i.al = add nsw i64 %i.aj, 1                    ; 3 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !11246 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ao = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !11251
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aq = phi i64 [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.al, %i.aq
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  store i8 58, ptr %i.ar, align 1, !tbaa !11251
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aj, i64 noundef 0, ptr noundef nonnull @.str.146, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.n, %bb.m
  store i64 %i.al, ptr %i.b, align 8, !tbaa !11250
  %i.as = load ptr, ptr %3, align 8, !tbaa !11246
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.al
  store i8 0, ptr %i.at, align 1, !tbaa !11251
  br label %bb.o

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %.preheader
  br i1 %2, label %bb.p, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.o
  %.pre = load i64, ptr %i.b, align 8, !tbaa !11250
  br label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5folly3ssl12OpenSSLUtils13getCipherNameB5cxx11Et(i16 noundef zeroext %i.ai)
          to label %bb.q unwind label %.loopexit49 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11250 ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 0
end_hunk_1
begin_hunk_2_@_ZN5folly14IndestructibleINS_20AsyncSocketExceptionEE7StorageC2IJNS1_24AsyncSocketExceptionTypeERA44_KcES1_EESt10in_place_tDpOT_:bb.a

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !11250
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !11251
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  invoke void @_ZN5folly20AsyncSocketException10getMessageENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0)
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.f
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc8
  %i.m = load ptr, ptr %3, align 8, !tbaa !11246  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !11251
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc8
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !11246  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.h
  %i.v = load i64, ptr %i.t, align 8, !tbaa !11251
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %0, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.a, ptr %i.x, align 8, !tbaa !11560
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !11565
  %i.z = load ptr, ptr %4, align 8, !tbaa !11246  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !11251
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ]
  %i.ae = load ptr, ptr %4, align 8, !tbaa !11246 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %.body
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !11251
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncSSLSocket9ensureSSLEv(ptr noundef nonnull align 8 dereferenceable(1960) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly14AsyncSSLSocket9createSSLEv(ptr noundef nonnull align 8 dereferenceable(1960) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN5folly11AsyncSocket15attachEventBaseEPNS_9EventBaseE(ptr noundef nonnull align 8 dereferenceable(1193), ptr noundef) unnamed_addr #0

declare void @_ZN5folly12AsyncTimeout15attachEventBaseEPNS_9EventBaseENS_14TimeoutManager12InternalEnumE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN5folly11AsyncSocket15detachEventBaseEv(ptr noundef nonnull align 8 dereferenceable(1193)) unnamed_addr #0

declare void @_ZN5folly12AsyncTimeout15detachEventBaseEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK5folly11AsyncSocket12isDetachableEv(ptr noundef nonnull align 8 dereferenceable(1193)) unnamed_addr #0

declare noundef ptr @_ZN5folly6netops10Dispatcher18getDefaultInstanceEv() local_unnamed_addr #0

declare void @_ZN5folly5IOBuf13appendToChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN5folly11AsyncSocket11setZeroCopyEb(ptr noundef nonnull align 8 dereferenceable(1193), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11299 ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !11300
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !11302
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !call_target !11303, !inline_history !11663
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !call_target !11308, !inline_history !11663
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11251
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !11259
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !11309

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5folly12AsyncTimeout20attachTimeoutManagerEPNS_14TimeoutManagerENS1_12InternalEnumE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN5folly12AsyncTimeout20detachTimeoutManagerEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #0

declare i32 @SSL_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @SSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #2 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #2 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #36

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold noreturn }
attributes #24 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind memory(none) }
attributes #27 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { cold mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #37 = { nounwind }
attributes #38 = { builtin nounwind }
attributes #39 = { noreturn nounwind }
attributes #40 = { builtin allocsize(0) }
attributes #41 = { noreturn }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { cold nounwind }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{i8 0, i8 2}
!13 = !{!14, !16, i64 12}
!14 = !{!"_ZTSN5folly18DelayedDestructionE", !15, i64 0, !16, i64 12}
!15 = !{!"_ZTSN5folly22DelayedDestructionBaseE", !9, i64 8}
!16 = !{!"bool", !10, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !11, i64 0}
!19 = !DISubprogram(name: "~DelayedDestruction", linkageName: "_ZN5folly18DelayedDestructionD4Ev", scope: !21, file: !20, line: 93, type: !23, scopeLine: 93, containingType: !21, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!20 = !DIFile(filename: "folly/io/async/DelayedDestruction.h", directory: "/opt-bench/work/folly/folly", checksumkind: CSK_MD5, checksum: "a932725a90eeb0896f26f3a50f65dadf")
!21 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "DelayedDestruction", scope: !22, file: !20, line: 42, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly18DelayedDestructionE")
!22 = !DINamespace(name: "folly", scope: null)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS6ssl_st", !28, i64 0}
!28 = !{!"any pointer", !10, i64 0}
!29 = !{!30, !207, i64 1212}
!30 = !{!"_ZTSN5folly14AsyncSSLSocketE", !31, i64 0, !206, i64 1200, !16, i64 1208, !16, i64 1209, !16, i64 1210, !16, i64 1211, !207, i64 1212, !208, i64 1216, !211, i64 1232, !212, i64 1240, !215, i64 1256, !221, i64 1264, !221, i64 1464, !223, i64 1664, !224, i64 1672, !57, i64 1688, !208, i64 1696, !229, i64 1712, !229, i64 1744, !232, i64 1776, !16, i64 1780, !16, i64 1781, !16, i64 1782, !233, i64 1784, !240, i64 1792, !133, i64 1816, !133, i64 1824, !56, i64 1832, !56, i64 1840, !229, i64 1848, !229, i64 1880, !16, i64 1912, !16, i64 1913, !245, i64 1920, !16, i64 1928, !251, i64 1936}
!31 = !{!"_ZTSN5folly11AsyncSocketE", !32, i64 0, !45, i64 64, !46, i64 72, !47, i64 80, !48, i64 88, !9, i64 128, !55, i64 136, !62, i64 152, !70, i64 208, !72, i64 264, !10, i64 265, !73, i64 266, !74, i64 268, !75, i64 272, !75, i64 312, !9, i64 352, !73, i64 356, !10, i64 358, !83, i64 360, !84, i64 368, !101, i64 560, !103, i64 736, !110, i64 784, !111, i64 792, !112, i64 800, !113, i64 808, !114, i64 816, !115, i64 824, !115, i64 832, !116, i64 840, !57, i64 856, !57, i64 864, !57, i64 872, !57, i64 880, !57, i64 888, !120, i64 896, !126, i64 920, !133, i64 928, !133, i64 936, !135, i64 944, !56, i64 960, !140, i64 968, !147, i64 976, !148, i64 984, !16, i64 987, !16, i64 988, !16, i64 989, !16, i64 990, !149, i64 992, !154, i64 1000, !16, i64 1008, !16, i64 1009, !57, i64 1016, !57, i64 1024, !16, i64 1032, !9, i64 1036, !16, i64 1040, !16, i64 1041, !16, i64 1042, !161, i64 1048, !168, i64 1056, !175, i64 1064, !182, i64 1072, !186, i64 1088, !190, i64 1104, !205, i64 1192}
!32 = !{!"_ZTSN5folly20AsyncSocketTransportE", !33, i64 0, !38, i64 48, !38, i64 56}
!33 = !{!"_ZTSN5folly14AsyncTransportE", !14, i64 0, !34, i64 16, !35, i64 24, !36, i64 32, !37, i64 40}
!34 = !{!"_ZTSN5folly15AsyncSocketBaseE"}
!35 = !{!"_ZTSN5folly11AsyncReaderE"}
!36 = !{!"_ZTSN5folly11AsyncWriterE"}
!37 = !{!"p1 _ZTSN5folly14AsyncTransportE", !28, i64 0}
!38 = !{!"_ZTSSt10unique_ptrIKN5folly25AsyncTransportCertificateESt14default_deleteIS2_EE", !39, i64 0}
!39 = !{!"_ZTSSt15__uniq_ptr_dataIKN5folly25AsyncTransportCertificateESt14default_deleteIS2_ELb1ELb1EE", !40, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_implIKN5folly25AsyncTransportCertificateESt14default_deleteIS2_EE", !41, i64 0}
!41 = !{!"_ZTSSt5tupleIJPKN5folly25AsyncTransportCertificateESt14default_deleteIS2_EEE", !42, i64 0}
!42 = !{!"_ZTSSt11_Tuple_implILm0EJPKN5folly25AsyncTransportCertificateESt14default_deleteIS2_EEE", !43, i64 0}
!43 = !{!"_ZTSSt10_Head_baseILm0EPKN5folly25AsyncTransportCertificateELb0EE", !44, i64 0}
!44 = !{!"p1 _ZTSN5folly25AsyncTransportCertificateE", !28, i64 0}
!45 = !{!"_ZTSN5folly19IoUringSendCallbackE"}
!46 = !{!"_ZTSN5folly19IoUringRecvCallbackE"}
!47 = !{!"_ZTSN5folly22IoUringConnectCallbackE"}
!48 = !{!"_ZTSSt7variantIJSt9monostateSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS4_EEEEmEE", !49, i64 0}
!49 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJSt9monostateSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS6_EEEEmEEE", !50, i64 0}
!50 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostateSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS6_EEEEmEEE", !51, i64 0}
!51 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJSt9monostateSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS6_EEEEmEEE", !52, i64 0}
!52 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJSt9monostateSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS6_EEEEmEEE", !53, i64 0}
!53 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt9monostateSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS6_EEEEmEEE", !54, i64 0}
!54 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS6_EEEEmEEE", !10, i64 0, !10, i64 32}
!55 = !{!"_ZTSN5folly11AsyncSocket19ZeroCopyDrainConfigE", !56, i64 0, !58, i64 8}
!56 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE", !57, i64 0}
!57 = !{!"long", !10, i64 0}
!58 = !{!"_ZTSSt8optionalItE", !59, i64 0}
!59 = !{!"_ZTSSt14_Optional_baseItLb1ELb1EE", !60, i64 0}
!60 = !{!"_ZTSSt17_Optional_payloadItLb1ELb1ELb1EE", !61, i64 0}
!61 = !{!"_ZTSSt22_Optional_payload_baseItE", !10, i64 0, !16, i64 2}
!62 = !{!"_ZTSSt13unordered_mapIjPN5folly5IOBufESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE", !63, i64 0}
!63 = !{!"_ZTSSt10_HashtableIjSt4pairIKjPN5folly5IOBufEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !64, i64 0, !57, i64 8, !66, i64 16, !57, i64 24, !68, i64 32, !67, i64 48}
!64 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !65, i64 0}
!65 = !{!"any p2 pointer", !28, i64 0}
!66 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !67, i64 0}
!67 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !28, i64 0}
!68 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !69, i64 0, !57, i64 8}
!69 = !{!"float", !10, i64 0}
!70 = !{!"_ZTSSt13unordered_mapIPN5folly5IOBufENS0_11AsyncSocket9IOBufInfoESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE", !71, i64 0}
!71 = !{!"_ZTSSt10_HashtableIPN5folly5IOBufESt4pairIKS2_NS0_11AsyncSocket9IOBufInfoEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE", !64, i64 0, !57, i64 8, !66, i64 16, !57, i64 24, !68, i64 32, !67, i64 48}
!72 = !{!"_ZTSN5folly11AsyncSocket9StateEnumE", !10, i64 0}
!73 = !{!"short", !10, i64 0}
!74 = !{!"_ZTSN5folly13NetworkSocketE", !9, i64 0}
!75 = !{!"_ZTSN5folly13SocketAddressE", !76, i64 0}
!76 = !{!"_ZTSSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE", !77, i64 0}
!77 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE", !78, i64 0}
!78 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE", !79, i64 0}
!79 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE", !80, i64 0}
!80 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE", !81, i64 0}
!81 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE", !82, i64 0}
!82 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE", !10, i64 0, !10, i64 32}
!83 = !{!"p1 _ZTSN5folly9EventBaseE", !28, i64 0}
!84 = !{!"_ZTSN5folly11AsyncSocket12WriteTimeoutE", !85, i64 0, !100, i64 184}
!85 = !{!"_ZTSN5folly12AsyncTimeoutE", !86, i64 8, !94, i64 160, !95, i64 168}
!86 = !{!"_ZTSN5folly14EventBaseEventE", !87, i64 0, !83, i64 128, !28, i64 136, !28, i64 144}
!87 = !{!"_ZTS5event", !88, i64 0, !10, i64 40, !9, i64 56, !92, i64 64, !10, i64 72, !73, i64 104, !73, i64 106, !93, i64 112}
!88 = !{!"_ZTS14event_callback", !89, i64 0, !73, i64 16, !10, i64 18, !10, i64 19, !10, i64 24, !28, i64 32}
!89 = !{!"_ZTSN14event_callbackUt_E", !90, i64 0, !91, i64 8}
!90 = !{!"p1 _ZTS14event_callback", !28, i64 0}
!91 = !{!"p2 _ZTS14event_callback", !65, i64 0}
!92 = !{!"p1 _ZTS10event_base", !28, i64 0}
!93 = !{!"_ZTS7timeval", !57, i64 0, !57, i64 8}
!94 = !{!"p1 _ZTSN5folly14TimeoutManagerE", !28, i64 0}
!95 = !{!"_ZTSSt10shared_ptrIN5folly14RequestContextEE", !96, i64 0}
!96 = !{!"_ZTSSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE", !97, i64 0, !98, i64 8}
!97 = !{!"p1 _ZTSN5folly14RequestContextE", !28, i64 0}
!98 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !99, i64 0}
!99 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0}
!100 = !{!"p1 _ZTSN5folly11AsyncSocketE", !28, i64 0}
!101 = !{!"_ZTSN5folly11AsyncSocket9IoHandlerE", !102, i64 0, !100, i64 168}
!102 = !{!"_ZTSN5folly12EventHandlerE", !86, i64 8, !83, i64 160}
!103 = !{!"_ZTSN5folly11AsyncSocket15ImmediateReadCBE", !104, i64 0, !100, i64 40}
!104 = !{!"_ZTSN5folly9EventBase12LoopCallbackE", !105, i64 8, !95, i64 24}
!105 = !{!"_ZTSN5boost9intrusive14list_base_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEE", !106, i64 0}
!106 = !{!"_ZTSN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEE", !107, i64 0}
!107 = !{!"_ZTSN5boost9intrusive11node_holderINS0_9list_nodeIPvEENS0_7dft_tagELj1EEE", !108, i64 0}
!108 = !{!"_ZTSN5boost9intrusive9list_nodeIPvEE", !109, i64 0, !109, i64 8}
!109 = !{!"p1 _ZTSN5boost9intrusive9list_nodeIPvEE", !28, i64 0}
!110 = !{!"p1 _ZTSN5folly20AsyncSocketTransport15ConnectCallbackE", !28, i64 0}
!111 = !{!"p1 _ZTSN5folly11AsyncSocket18ErrMessageCallbackE", !28, i64 0}
!112 = !{!"p1 _ZTSN5folly11AsyncSocket25ReadAncillaryDataCallbackE", !28, i64 0}
!113 = !{!"p1 _ZTSN5folly11AsyncSocket21SendMsgParamsCallbackE", !28, i64 0}
!114 = !{!"p1 _ZTSN5folly11AsyncReader12ReadCallbackE", !28, i64 0}
!115 = !{!"p1 _ZTSN5folly11AsyncSocket12WriteRequestE", !28, i64 0}
!116 = !{!"_ZTSSt8weak_ptrIN5folly17ShutdownSocketSetEE", !117, i64 0}
!117 = !{!"_ZTSSt10__weak_ptrIN5folly17ShutdownSocketSetELN9__gnu_cxx12_Lock_policyE2EE", !118, i64 0, !119, i64 8}
!118 = !{!"p1 _ZTSN5folly17ShutdownSocketSetE", !28, i64 0}
!119 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !99, i64 0}
!120 = !{!"_ZTSN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvEE", !121, i64 0, !10, i64 8}
!121 = !{!"_ZTSN5boost14operators_impl16totally_ordered1IN5folly12small_vectorIPNS2_11AsyncSocket23LegacyLifecycleObserverELm2EvEENS2_6detail18IntegralSizePolicyImLb1ELb0EEEEE", !122, i64 0}
!122 = !{!"_ZTSN5boost14operators_impl21less_than_comparable1IN5folly12small_vectorIPNS2_11AsyncSocket23LegacyLifecycleObserverELm2EvEENS0_20equality_comparable1IS7_NS2_6detail18IntegralSizePolicyImLb1ELb0EEEEEEE", !123, i64 0}
!123 = !{!"_ZTSN5boost14operators_impl20equality_comparable1IN5folly12small_vectorIPNS2_11AsyncSocket23LegacyLifecycleObserverELm2EvEENS2_6detail18IntegralSizePolicyImLb1ELb0EEEEE", !124, i64 0}
!124 = !{!"_ZTSN5folly6detail18IntegralSizePolicyImLb1ELb0EEE", !125, i64 0}
!125 = !{!"_ZTSN5folly6detail22IntegralSizePolicyBaseImLb1ELb0EEE", !57, i64 0}
!126 = !{!"_ZTSSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EE", !127, i64 0}
!127 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly5IOBufESt14default_deleteIS1_ELb1ELb1EE", !128, i64 0}
!128 = !{!"_ZTSSt15__uniq_ptr_implIN5folly5IOBufESt14default_deleteIS1_EE", !129, i64 0}
!129 = !{!"_ZTSSt5tupleIJPN5folly5IOBufESt14default_deleteIS1_EEE", !130, i64 0}
!130 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly5IOBufESt14default_deleteIS1_EEE", !131, i64 0}
!131 = !{!"_ZTSSt10_Head_baseILm0EPN5folly5IOBufELb0EE", !132, i64 0}
!132 = !{!"p1 _ZTSN5folly5IOBufE", !28, i64 0}
!133 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !134, i64 0}
!134 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !57, i64 0}
!135 = !{!"_ZTSN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEE", !136, i64 0}
!136 = !{!"_ZTSN5folly6detail22OptionalCopyAssignBaseINSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEELb1EEE", !137, i64 0}
!137 = !{!"_ZTSN5folly6detail16OptionalCopyBaseINSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEELb1EEE", !138, i64 0}
!138 = !{!"_ZTSN5folly6detail15OptionalStorageINSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEE", !139, i64 0}
!139 = !{!"_ZTSN5folly6detail36OptionalStorageTriviallyDestructibleINSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEE", !10, i64 0, !16, i64 8}
!140 = !{!"_ZTSSt10unique_ptrIN5folly11AsyncSocket17EvbChangeCallbackESt14default_deleteIS2_EE", !141, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly11AsyncSocket17EvbChangeCallbackESt14default_deleteIS2_ELb1ELb1EE", !142, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_implIN5folly11AsyncSocket17EvbChangeCallbackESt14default_deleteIS2_EE", !143, i64 0}
!143 = !{!"_ZTSSt5tupleIJPN5folly11AsyncSocket17EvbChangeCallbackESt14default_deleteIS2_EEE", !144, i64 0}
!144 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly11AsyncSocket17EvbChangeCallbackESt14default_deleteIS2_EEE", !145, i64 0}
!145 = !{!"_ZTSSt10_Head_baseILm0EPN5folly11AsyncSocket17EvbChangeCallbackELb0EE", !146, i64 0}
!146 = !{!"p1 _ZTSN5folly11AsyncSocket17EvbChangeCallbackE", !28, i64 0}
!147 = !{!"p1 _ZTSN5folly14AsyncTransport14BufferCallbackE", !28, i64 0}
!148 = !{!"_ZTSN5folly11AsyncSocket15TCPFastOpenInfoE", !16, i64 0, !16, i64 1, !16, i64 2}
!149 = !{!"_ZTSN5folly8OptionalIiEE", !150, i64 0}
!150 = !{!"_ZTSN5folly6detail22OptionalCopyAssignBaseIiLb1EEE", !151, i64 0}
!151 = !{!"_ZTSN5folly6detail16OptionalCopyBaseIiLb1EEE", !152, i64 0}
!152 = !{!"_ZTSN5folly6detail15OptionalStorageIiEE", !153, i64 0}
!153 = !{!"_ZTSN5folly6detail36OptionalStorageTriviallyDestructibleIiEE", !10, i64 0, !16, i64 4}
!154 = !{!"_ZTSSt10unique_ptrIN5folly11AsyncSocket15ByteEventHelperESt14default_deleteIS2_EE", !155, i64 0}
!155 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly11AsyncSocket15ByteEventHelperESt14default_deleteIS2_ELb1ELb1EE", !156, i64 0}
!156 = !{!"_ZTSSt15__uniq_ptr_implIN5folly11AsyncSocket15ByteEventHelperESt14default_deleteIS2_EE", !157, i64 0}
!157 = !{!"_ZTSSt5tupleIJPN5folly11AsyncSocket15ByteEventHelperESt14default_deleteIS2_EEE", !158, i64 0}
!158 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly11AsyncSocket15ByteEventHelperESt14default_deleteIS2_EEE", !159, i64 0}
!159 = !{!"_ZTSSt10_Head_baseILm0EPN5folly11AsyncSocket15ByteEventHelperELb0EE", !160, i64 0}
!160 = !{!"p1 _ZTSN5folly11AsyncSocket15ByteEventHelperE", !28, i64 0}
!161 = !{!"_ZTSSt10unique_ptrIN5folly20IoUringConnectHandleESt14default_deleteIS1_EE", !162, i64 0}
!162 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly20IoUringConnectHandleESt14default_deleteIS1_ELb1ELb1EE", !163, i64 0}
!163 = !{!"_ZTSSt15__uniq_ptr_implIN5folly20IoUringConnectHandleESt14default_deleteIS1_EE", !164, i64 0}
!164 = !{!"_ZTSSt5tupleIJPN5folly20IoUringConnectHandleESt14default_deleteIS1_EEE", !165, i64 0}
!165 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly20IoUringConnectHandleESt14default_deleteIS1_EEE", !166, i64 0}
!166 = !{!"_ZTSSt10_Head_baseILm0EPN5folly20IoUringConnectHandleELb0EE", !167, i64 0}
!167 = !{!"p1 _ZTSN5folly20IoUringConnectHandleE", !28, i64 0}
!168 = !{!"_ZTSSt10unique_ptrIN5folly17IoUringSendHandleENS0_18DelayedDestruction10DestructorEE", !169, i64 0}
!169 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly17IoUringSendHandleENS0_18DelayedDestruction10DestructorELb1ELb1EE", !170, i64 0}
!170 = !{!"_ZTSSt15__uniq_ptr_implIN5folly17IoUringSendHandleENS0_18DelayedDestruction10DestructorEE", !171, i64 0}
!171 = !{!"_ZTSSt5tupleIJPN5folly17IoUringSendHandleENS0_18DelayedDestruction10DestructorEEE", !172, i64 0}
!172 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly17IoUringSendHandleENS0_18DelayedDestruction10DestructorEEE", !173, i64 0}
!173 = !{!"_ZTSSt10_Head_baseILm0EPN5folly17IoUringSendHandleELb0EE", !174, i64 0}
!174 = !{!"p1 _ZTSN5folly17IoUringSendHandleE", !28, i64 0}
!175 = !{!"_ZTSSt10unique_ptrIN5folly17IoUringRecvHandleENS0_18DelayedDestruction10DestructorEE", !176, i64 0}
!176 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly17IoUringRecvHandleENS0_18DelayedDestruction10DestructorELb1ELb1EE", !177, i64 0}
!177 = !{!"_ZTSSt15__uniq_ptr_implIN5folly17IoUringRecvHandleENS0_18DelayedDestruction10DestructorEE", !178, i64 0}
!178 = !{!"_ZTSSt5tupleIJPN5folly17IoUringRecvHandleENS0_18DelayedDestruction10DestructorEEE", !179, i64 0}
!179 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly17IoUringRecvHandleENS0_18DelayedDestruction10DestructorEEE", !180, i64 0}
end_hunk_2
