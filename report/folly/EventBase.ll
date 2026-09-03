Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/EventBase?download=true
inline.NumInlined: 3021
inline.NumDeleted: 1480
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5folly13fbstring_coreIcE12reserveSmallEmb:bb.a

bb.f:                                             ; preds = %bb.b
  %i.s = call noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted6createEPm(ptr noundef nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13921
  %i.v = sext i8 %i.u to i64                      ; 2 uses
  %i.w = sub nsw i64 23, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.y = sub nsw i64 24, %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 8 %0, i64 %i.y, i1 false)
  store ptr %i.x, ptr %0, align 8, !tbaa !13921
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.z, align 8, !tbaa !13921
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !14043
  %i.ab = or i64 %i.aa, 4611686018427387904
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %_ZN5folly13checkedMallocEm.exit
  %.sink = phi i64 [ %i.r, %_ZN5folly13checkedMallocEm.exit ], [ %i.ab, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.ac, align 8, !tbaa !14212
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE13reserveMediumEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #41 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::fbstring_core<char>::MediumLarge", align 8 ; 4 uses
  %3 = alloca %"class.folly::fbstring_core", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14212
  %i.c = and i64 %i.b, 4611686018427387903
  %.not = icmp ugt i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 255
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %1, 1                    ; 4 uses
  %i.f = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !14070

.split.i:                                         ; preds = %bb.c
  %i.g = icmp sgt i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #64
  br i1 %i.h, label %bb.d, label %_ZN5folly14goodMallocSizeEm.exit

bb.d:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.i = tail call i64 @nallocx(i64 noundef %i.e, i32 noundef 0) #32 ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = select i1 %.not.i, i64 %i.e, i64 %i.i
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.d
  %.0.i = phi i64 [ %i.e, %.split.i ], [ %i.j, %bb.d ], [ %i.e, %_ZN5folly10canNallocxEv.exit.i ] ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !13921
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13921
  %i.n = add i64 %i.m, 1
  %i.o = load i64, ptr %i.a, align 8, !tbaa !14212
  %i.p = and i64 %i.o, 4611686018427387903
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = tail call noalias noundef nonnull ptr @_ZN5folly12smartReallocEPvmmm(ptr noundef %i.k, i64 noundef %i.n, i64 noundef %i.q, i64 noundef %.0.i)
  store ptr %i.r, ptr %0, align 8, !tbaa !13921
  %i.s = add i64 %.0.i, 9223372036854775807
  %i.t = or i64 %i.s, -9223372036854775808
  store i64 %i.t, ptr %i.a, align 8, !tbaa !14212
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 23 ; 3 uses
  store i8 23, ptr %i.u, align 1, !tbaa !13921
  store i8 0, ptr %3, align 8, !tbaa !13921
  invoke void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %1, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13921 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !13921
  %i.y = load ptr, ptr %0, align 8, !tbaa !13921
  %i.z = load ptr, ptr %3, align 8, !tbaa !13921
  %i.aa = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i64 %i.aa, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !14534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !14534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !14534
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !13921
  %i.ac = icmp ult i8 %i.ab, 64
  br i1 %i.ac, label %_ZN5folly13fbstring_coreIcED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  br label %_ZN5folly13fbstring_coreIcED2Ev.exit

_ZN5folly13fbstring_coreIcED2Ev.exit:             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load i8, ptr %i.u, align 1, !tbaa !13921
  %i.af = icmp ult i8 %i.ae, 64
  br i1 %i.af, label %_ZN5folly13fbstring_coreIcED2Ev.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  br label %_ZN5folly13fbstring_coreIcED2Ev.exit8

_ZN5folly13fbstring_coreIcED2Ev.exit8:            ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.ad

bb.j:                                             ; preds = %bb.a, %_ZN5folly13fbstring_coreIcED2Ev.exit, %_ZN5folly14goodMallocSizeEm.exit
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE12reserveLargeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #41 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !14043
  %i.b = load ptr, ptr %0, align 8, !tbaa !13921
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = icmp ugt i64 %i.d, 1
  %i.f = load i64, ptr %i.a, align 8, !tbaa !14043 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly13fbstring_coreIcE7unshareEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14212
  %i.i = and i64 %i.h, 4611686018427387903        ; 2 uses
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !13921
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13921
  %i.n = call noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted10reallocateEPcmmPm(ptr noundef %i.k, i64 noundef %i.m, i64 noundef %i.i, ptr noundef nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %0, align 8, !tbaa !13921
  %i.p = load i64, ptr %i.a, align 8, !tbaa !14043
  %i.q = or i64 %i.p, 4611686018427387904
  store i64 %i.q, ptr %i.g, align 8, !tbaa !14212
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted6createEPm(ptr noundef %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::length_error", align 8 ; 5 uses
  %2 = alloca %"class.std::length_error", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !14043
  %i.b = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 1) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit, label %bb.d, !prof !14070

_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.18)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #19
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit
  unreachable

bb.c:                                             ; preds = %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i1 } %i.b, 0
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 8) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 5 uses
  br i1 %i.g, label %bb.e, label %3

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.18)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.k

3:                                                ; preds = %bb.d
  %4 = icmp eq i64 %i.h, 0
  br i1 %4, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.h

bb.h:                                             ; preds = %3
  %i.j = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !14070

.split.i:                                         ; preds = %bb.h
  %i.k = icmp sgt i8 %i.j, 0
  br i1 %i.k, label %bb.i, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.h
  %i.l = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #64
  br i1 %i.l, label %bb.i, label %_ZN5folly14goodMallocSizeEm.exit

bb.i:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.m = tail call i64 @nallocx(i64 noundef %i.h, i32 noundef 0) #32 ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  %i.n = select i1 %.not.i, i64 %i.h, i64 %i.m
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %3, %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.i
  %.0.i10 = phi i64 [ 0, %3 ], [ %i.n, %bb.i ], [ %i.h, %_ZN5folly10canNallocxEv.exit.i ], [ %i.h, %.split.i ] ; 2 uses
  %i.o = tail call noalias ptr @malloc(i64 noundef %.0.i10) #65 ; 3 uses
  %.not.i11 = icmp eq ptr %i.o, null
  br i1 %.not.i11, label %bb.j, label %_ZN5folly13checkedMallocEm.exit

bb.j:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZN5folly13checkedMallocEm.exit:                  ; preds = %_ZN5folly14goodMallocSizeEm.exit
  store atomic i64 1, ptr %i.o release, align 8
  %i.p = add i64 %.0.i10, -9
  store i64 %i.p, ptr %0, align 8, !tbaa !14043
  ret ptr %i.o

bb.k:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare extern_weak i64 @nallocx(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() local_unnamed_addr #47 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.anon.259, align 1            ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !14113

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  %i.d = invoke noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !669
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load i8, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !669, !range !670, !noundef !671
  %i.g = trunc nuw i8 %i.f to i1
  ret i1 %i.g

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #56
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.a, 0
  br i1 %.not.i.i.i, label %_ZN5folly13usingJEMallocEv.exit.i, label %.split.i, !prof !14070

.split.i:                                         ; preds = %bb.a
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

_ZN5folly13usingJEMallocEv.exit.i:                ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() #64
  br i1 %i.c, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly13usingJEMallocEv.exit.i, %.split.i
  %i.d = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i1.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i1.i, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, label %.split, !prof !14070

.split:                                           ; preds = %bb.b
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit: ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() #64
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
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() local_unnamed_addr #47 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingJEMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !14113

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !669
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !669, !range !670, !noundef !671
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() local_unnamed_addr #47 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingTCMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !14113

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !669
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !669, !range !670, !noundef !671
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #48

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !676
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #25 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !676
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #60
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #49

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noalias noundef nonnull ptr @_ZN5folly12smartReallocEPvmmm(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #41 comdat {
bb.a:
  %i.a = sub i64 %2, %1
  %i.b = shl i64 %i.a, 1
  %i.c = icmp ugt i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @malloc(i64 noundef %3) #65 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %_ZN5folly13checkedMallocEm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZN5folly13checkedMallocEm.exit:                  ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %0, i64 %1, i1 false)
  tail call void @free(ptr noundef %0) #32
  br label %_ZN5folly14checkedReallocEPvm.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #66 ; 2 uses
  %.not.i13 = icmp eq ptr %i.e, null
  br i1 %.not.i13, label %bb.e, label %_ZN5folly14checkedReallocEPvm.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZN5folly14checkedReallocEPvm.exit:               ; preds = %bb.d, %_ZN5folly13checkedMallocEm.exit
  %.0 = phi ptr [ %i.d, %_ZN5folly13checkedMallocEm.exit ], [ %i.e, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #50

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #51

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13921
  %i.c = icmp slt i8 %i.b, -64
  %i.d = load ptr, ptr %0, align 8, !tbaa !13921  ; 2 uses
  br i1 %i.c, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.sink) #32
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE7unshareEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #41 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14212
  %i.d = and i64 %i.c, 4611686018427387903
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d)
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !14043
  %i.e = call noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted6createEPm(ptr noundef nonnull %i.a)
  %i.f = load ptr, ptr %0, align 8, !tbaa !13921
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13921
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.f, i64 %i.j, i1 false)
  %i.k = load ptr, ptr %0, align 8, !tbaa !13921
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.m = atomicrmw sub ptr %i.l, i64 1 acq_rel, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.b, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef nonnull %i.l) #32
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %bb.a, %bb.b
  store ptr %i.i, ptr %0, align 8, !tbaa !13921
  %i.o = load i64, ptr %i.a, align 8, !tbaa !14043
  %i.p = or i64 %i.o, 4611686018427387904
  store i64 %i.p, ptr %i.b, align 8, !tbaa !14212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted10reallocateEPcmmPm(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::length_error", align 8 ; 5 uses
  %5 = alloca %"class.std::length_error", align 8 ; 5 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !14043
  %i.b = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 1) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit, label %bb.d, !prof !14070

_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.18)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit
  unreachable

bb.c:                                             ; preds = %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i1 } %i.b, 0
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 8) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 5 uses
  br i1 %i.g, label %bb.e, label %6

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.18)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.j

6:                                                ; preds = %bb.d
  %7 = icmp eq i64 %i.h, 0
  br i1 %7, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.h

bb.h:                                             ; preds = %6
  %i.j = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !14070

.split.i:                                         ; preds = %bb.h
  %i.k = icmp sgt i8 %i.j, 0
  br i1 %i.k, label %bb.i, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.h
  %i.l = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #64
  br i1 %i.l, label %bb.i, label %_ZN5folly14goodMallocSizeEm.exit

bb.i:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.m = tail call i64 @nallocx(i64 noundef %i.h, i32 noundef 0) #32 ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  %i.n = select i1 %.not.i, i64 %i.h, i64 %i.m
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %6, %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.i
  %.0.i13 = phi i64 [ 0, %6 ], [ %i.n, %bb.i ], [ %i.h, %_ZN5folly10canNallocxEv.exit.i ], [ %i.h, %.split.i ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %0, i64 -8
  %i.p = add i64 %1, 9
  %i.q = add i64 %2, 9
  %i.r = tail call noalias noundef nonnull ptr @_ZN5folly12smartReallocEPvmmm(ptr noundef nonnull %i.o, i64 noundef %i.p, i64 noundef %i.q, i64 noundef %.0.i13)
  %i.s = add i64 %.0.i13, -9
  store i64 %i.s, ptr %3, align 8, !tbaa !14043
  ret ptr %i.r

bb.j:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA53_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(53) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !14205  ; 3 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !666    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  tail call void @_ZN5folly13fbstring_coreIcE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 noundef signext 45)
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, !prof !14203

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.b
  %i.e = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !13913
  br label %bb.d

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i: ; preds = %bb.b, %.thread.i
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = mul nuw nsw i64 %i.i, 39
  %i.k = lshr i64 %i.j, 7                         ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14043
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.k, %i.o               ; 5 uses
  %i.q = icmp samesign ugt i64 %i.p, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i2.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ] ; 2 uses
  %.014.i1.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ]
  %i.r = add i64 %.014.i1.i.i.i.i, -2             ; 4 uses
  %i.s = udiv i64 %.0.i2.i.i.i.i, 100             ; 2 uses
  %i.t = urem i64 %.0.i2.i.i.i.i, 100
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !13913
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  store i16 %i.v, ptr %i.w, align 1
  %i.x = icmp ugt i64 %i.r, 2
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !635

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i
  %.014.i.lcssa.i.i.i.i = phi i64 [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i ]
  %.0.i.lcssa.i.i.i.i = phi i64 [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !13913 ; 2 uses
  %i.aa = icmp eq i64 %.014.i.lcssa.i.i.i.i, 2
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  store i16 %i.z, ptr %i.a, align 16
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.ab = phi i16 [ %i.e, %._crit_edge.thread.i.i.i.i ], [ %i.z, %._crit_edge.i.i.i.i ]
  %.0.i.i712.i.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i.i ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ac = lshr i16 %i.ab, 8
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %i.a, align 16, !tbaa !13921
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i711.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.0.i.i712.i.i.i.i, %bb.d ]
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.af = call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef nonnull align 1 dereferenceable(53) %1)
  %i.ag = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 1 dereferenceable(53) %1, i64 noundef %i.af) ; 0 uses
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #41 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.o, label %bb.b, !prof !14070

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13921 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13921 ; 4 uses
  %i.e = zext i8 %i.d to i64
  %i.f = sub nsw i64 23, %i.e                     ; 4 uses
  %i.g = icmp ult i8 %i.d, 24
  %i.h = select i1 %i.g, i64 %i.f, i64 %i.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !13921  ; 2 uses
  %i.j = icmp ult i8 %i.d, 64
  %i.k = select i1 %i.j, ptr %0, ptr %i.i         ; 3 uses
  %i.l = and i8 %i.d, -64                         ; 2 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %i.f, %2                         ; 5 uses
  %i.o = icmp ugt i64 %i.n, 23
  br i1 %i.o, label %bb.e, label %bb.d, !prof !14214

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %i.n to i8
  %i.q = sub nuw nsw i8 23, %i.p
  store i8 %i.q, ptr %i.c, align 1, !tbaa !13921
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  store i8 0, ptr %i.r, align 1, !tbaa !13921
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  br label %_ZN5folly13fbstring_coreIcE12expandNoinitEmbb.exit

bb.e:                                             ; preds = %bb.c
  %i.t = tail call i64 @llvm.umax.i64(i64 %i.n, i64 46)
  tail call void @_ZN5folly13fbstring_coreIcE12reserveSmallEmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.t, i1 noundef zeroext false)
  br label %.noexc

bb.f:                                             ; preds = %bb.b
  %i.u = add i64 %i.b, %2                         ; 4 uses
  %cond.i = icmp eq i8 %i.l, 64
  br i1 %cond.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.w = load atomic i64, ptr %i.v acquire, align 8
  %i.x = icmp ugt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.a, align 8, !tbaa !13921
  br label %_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !14212
  %i.ab = and i64 %i.aa, 4611686018427387903
  br label %_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i

_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i:   ; preds = %bb.i, %bb.h
  %.0.i.i = phi i64 [ %i.ab, %bb.i ], [ %i.y, %bb.h ]
  %i.ac = icmp ugt i64 %i.u, %.0.i.i
  br i1 %i.ac, label %bb.j, label %.noexc, !prof !14070

bb.j:                                             ; preds = %_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !13921
  %i.ae = and i8 %i.ad, -64
  switch i8 %i.ae, label %bb.m [
    i8 0, label %_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i
    i8 64, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %0, align 8, !tbaa !13921
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8
  %i.ai = icmp ugt i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !13921
  br label %_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14212
  %i.am = and i64 %i.al, 4611686018427387903
  br label %_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i

_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i14.i = phi i64 [ %i.am, %bb.m ], [ %i.aj, %bb.l ], [ 23, %bb.j ]
  %i.an = mul i64 %.0.i14.i, 3
  %i.ao = lshr i64 %i.an, 1
  %i.ap = add nuw i64 %i.ao, 1
  %i.aq = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ap)
  tail call void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aq, i1 noundef zeroext false)
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i, %_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i
  %.0..0.18.i = phi i64 [ %i.n, %bb.e ], [ %i.u, %_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i ], [ %i.u, %_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i ] ; 2 uses
  %.0.i = phi i64 [ %i.f, %bb.e ], [ %i.b, %_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i ], [ %i.b, %_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i ]
  store i64 %.0..0.18.i, ptr %i.a, align 8, !tbaa !13921
  %i.ar = load ptr, ptr %0, align 8, !tbaa !13921
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0..0.18.i
  store i8 0, ptr %i.as, align 1, !tbaa !13921
end_hunk_0
