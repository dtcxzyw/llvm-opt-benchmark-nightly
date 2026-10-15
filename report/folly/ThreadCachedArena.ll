Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ThreadCachedArena?download=true
inline.NumInlined: 844
inline.NumDeleted: 495
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv:bb.a
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !138
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !138, !range !105, !noundef !103
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #8

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() local_unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingTCMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !138
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !138, !range !105, !noundef !103
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #8

; Function Attrs: nounwind
declare extern_weak i64 @nallocx(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #28

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !59
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !59
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() local_unnamed_addr #29

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 2 dereferenceable(4)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 16) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit.i.i, label %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i, !prof !45

_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #9
  unreachable

_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i: ; preds = %bb.a
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = sub i64 0, %i.b
  %i.h = and i64 %i.f, %i.g
  %i.i = load i64, ptr %0, align 8, !tbaa !136
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i
  %i.l = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i.i.i, label %.split.i.i.i, !prof !45

.split.i.i.i:                                     ; preds = %bb.b
  %i.m = icmp sgt i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit

_ZN5folly10canNallocxEv.exit.i.i.i:               ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #39
  br i1 %i.n, label %bb.c, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit

bb.c:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i.i.i, %.split.i.i.i
  %i.o = tail call i64 @nallocx(i64 noundef %i.j, i32 noundef 0) #20 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.o, 0
  %i.p = select i1 %.not.i.i.i, i64 %i.j, i64 %i.o
  br label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit

_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit: ; preds = %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i, %.split.i.i.i, %_ZN5folly10canNallocxEv.exit.i.i.i, %bb.c
  %.0.i.i.i = phi i64 [ 0, %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i ], [ %i.p, %bb.c ], [ %i.j, %_ZN5folly10canNallocxEv.exit.i.i.i ], [ %i.j, %.split.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48   ; 2 uses
  %i.s = add i64 %i.r, -1
  %i.t = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.s, i64 16) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit.i.i18, label %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i12, !prof !45

_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit.i.i18: ; preds = %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #9
  unreachable

_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i12: ; preds = %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %i.w = sub i64 0, %i.r
  %i.x = and i64 %i.v, %i.w
  %i.y = load i64, ptr %1, align 8, !tbaa !136
  %i.z = add i64 %i.y, %i.x                       ; 5 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19, label %bb.d

bb.d:                                             ; preds = %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i12
  %i.ab = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i.i13 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i13, label %_ZN5folly10canNallocxEv.exit.i.i.i17, label %.split.i.i.i14, !prof !45

.split.i.i.i14:                                   ; preds = %bb.d
  %i.ac = icmp sgt i8 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19

_ZN5folly10canNallocxEv.exit.i.i.i17:             ; preds = %bb.d
  %i.ad = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #39
  br i1 %i.ad, label %bb.e, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19

bb.e:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i.i.i17, %.split.i.i.i14
  %i.ae = tail call i64 @nallocx(i64 noundef %i.z, i32 noundef 0) #20 ; 2 uses
  %.not.i.i.i16 = icmp eq i64 %i.ae, 0
  %i.af = select i1 %.not.i.i.i16, i64 %i.z, i64 %i.ae
  br label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19

_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19: ; preds = %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i12, %.split.i.i.i14, %_ZN5folly10canNallocxEv.exit.i.i.i17, %bb.e
  %.0.i.i.i15 = phi i64 [ 0, %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i12 ], [ %i.af, %bb.e ], [ %i.z, %_ZN5folly10canNallocxEv.exit.i.i.i17 ], [ %i.z, %.split.i.i.i14 ]
  %i.ag = icmp eq i64 %.0.i.i.i, %.0.i.i.i15
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_E30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.21) #40
  unreachable

bb.g:                                             ; preds = %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %i.ai
  br i1 %i.ak, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47, !noalias !1139 ; 5 uses
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !47
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !46 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ah
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !47
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i = icmp eq ptr %0, %1
  %.not17.i.i = icmp eq ptr %i.ah, %i.am
  %or.cond.i.i = or i1 %.not.i.i, %.not17.i.i
  %.not18.i.i = icmp eq ptr %i.ai, %i.am
  %or.cond19.i.i = or i1 %.not18.i.i, %or.cond.i.i
  br i1 %or.cond19.i.i, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !46
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !46
  store ptr %i.an, ptr %i.am, align 8, !tbaa !46
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !46
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !46
  br label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit: ; preds = %bb.j, %bb.k
  %2 = phi ptr [ %i.aj, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %.not11.i.i.i = icmp eq ptr %2, %i.ai
  br i1 %.not11.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %2, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit ] ; 2 uses
  %i.ar = load ptr, ptr %.013.i.i.i, align 8, !tbaa !46 ; 2 uses
  store ptr null, ptr %.013.i.i.i, align 8, !tbaa !46
  %.not.i.i.i20 = icmp eq ptr %i.ar, %i.ai
  br i1 %.not.i.i.i20, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit: ; preds = %.lr.ph.i.i.i, %bb.g, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit
  store ptr %i.ai, ptr %i.ai, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ai, ptr %i.as, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46 ; 3 uses
  %i.aw = icmp eq ptr %i.av, %i.au
  br i1 %i.aw, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE5clearEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47, !noalias !1140 ; 5 uses
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !47
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.at
  br i1 %i.ba, label %bb.m, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !47
  br label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i: ; preds = %bb.m, %bb.l
  %.not.i.i21 = icmp eq ptr %0, %1
  %.not17.i.i22 = icmp eq ptr %i.at, %i.ay
  %or.cond.i.i23 = or i1 %.not.i.i21, %.not17.i.i22
  %.not18.i.i24 = icmp eq ptr %i.au, %i.ay
  %or.cond19.i.i25 = or i1 %.not18.i.i24, %or.cond.i.i23
  br i1 %or.cond19.i.i25, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !46
  store ptr %i.bc, ptr %i.au, align 8, !tbaa !46
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !46
  store ptr %i.av, ptr %i.at, align 8, !tbaa !46
  %.pre38 = load ptr, ptr %i.au, align 8, !tbaa !46
  br label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit: ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i, %bb.n
  %3 = phi ptr [ %i.av, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i ], [ %.pre38, %bb.n ] ; 2 uses
  %.not11.i.i.i27 = icmp eq ptr %3, %i.au
  br i1 %.not11.i.i.i27, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE5clearEv.exit, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, %.lr.ph.i.i.i28
  %.013.i.i.i29 = phi ptr [ %i.bd, %.lr.ph.i.i.i28 ], [ %3, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit ] ; 2 uses
  %i.bd = load ptr, ptr %.013.i.i.i29, align 8, !tbaa !46 ; 2 uses
  store ptr null, ptr %.013.i.i.i29, align 8, !tbaa !46
  %.not.i.i.i30 = icmp eq ptr %i.bd, %i.au
  br i1 %.not.i.i.i30, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE5clearEv.exit, label %.lr.ph.i.i.i28, !llvm.loop !1

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE5clearEv.exit: ; preds = %.lr.ph.i.i.i28, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit
  store ptr %i.au, ptr %i.au, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.au, ptr %i.be, align 8, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bj = load <2 x i64>, ptr %i.bg, align 8, !tbaa !60
  %i.bk = load <2 x i64>, ptr %i.bh, align 8, !tbaa !60
  %i.bl = add <2 x i64> %i.bk, %i.bj
  store <2 x i64> %i.bl, ptr %i.bh, align 8, !tbaa !60
  store i64 0, ptr %i.bg, align 8, !tbaa !135
  store i64 0, ptr %i.bi, align 8, !tbaa !1141
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !95, !range !105, !noundef !103
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !94     ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !87
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.d, !prof !86

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #33
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #30

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5folly17ThreadCachedArena9totalSizeEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 4 uses
  %2 = alloca %"class.folly::ThreadLocalPtr<folly::SysArena, folly::ThreadCachedArena::ThreadLocalPtrTag>::Accessor", align 8 ; 5 uses
  %3 = alloca %"class.folly::LockedPtr.77", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8, !noalias !1149 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE8instanceEv.exit.i, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg), !noalias !1149, !inline_history !0
  br label %_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE8instanceEv.exit.i

_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE8instanceEv.exit.i: ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = load atomic i32, ptr %i.d acquire, align 8, !noalias !1149 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %bb.c, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv.exit

bb.c:                                             ; preds = %_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE8instanceEv.exit.i
  %i.i = tail call noundef i32 @_ZN5folly18threadlocal_detail14StaticMetaBase8allocateEPNS1_7EntryIDE(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !noalias !1149
  br label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv.exit

_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv.exit: ; preds = %_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE8instanceEv.exit.i, %bb.c
  %.0.i.i = phi i32 [ %i.i, %bb.c ], [ %i.h, %_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE8instanceEv.exit.i ]
  call void @_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8AccessorC2Ej(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94, !noalias !1150 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  %.neg.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 -48
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %.neg.i.i.i.i ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1151, !noalias !1150 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1151, !noalias !1150 ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %._crit_edge, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.preheader.i

_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.preheader.i: ; preds = %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv.exit
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !1153, !noalias !1150
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %.lr.ph.i, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit

_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.r = load ptr, ptr %i.t, align 8, !tbaa !1153, !noalias !1150
  %.not.i.i.i15 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i15, label %.lr.ph.i, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit, !llvm.loop !1146

.lr.ph.i:                                         ; preds = %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.preheader.i, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i
  %i.s = phi ptr [ %i.t, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i ], [ %i.m, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.preheader.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 5 uses
  %i.u = icmp eq ptr %i.t, %i.o
  br i1 %i.u, label %._ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorC2EPKS5_b.exit.loopexit_crit_edge.i, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i, !llvm.loop !1146

._ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorC2EPKS5_b.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit, !llvm.loop !1146

_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit: ; preds = %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i, %._ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorC2EPKS5_b.exit.loopexit_crit_edge.i, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.preheader.i
  %.sroa.7.1 = phi ptr [ %i.m, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.preheader.i ], [ %i.t, %._ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorC2EPKS5_b.exit.loopexit_crit_edge.i ], [ %i.t, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i ] ; 2 uses
  %.not31 = icmp eq ptr %.sroa.7.1, %i.o
  br i1 %.not31, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv.exit, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit
  %.011.lcssa = phi i64 [ 128, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit ], [ 128, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv.exit ], [ %i.an, %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit ], [ %i.an, %.lr.ph ]
  call void @_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8AccessorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !124, !alias.scope !1154
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i16 0, ptr %i.w, align 8, !tbaa !125, !alias.scope !1154
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i16 0, ptr %i.x, align 2, !tbaa !126, !alias.scope !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20, !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20, !noalias !1154
  %i.y = load atomic i32, ptr %i.v monotonic, align 8, !noalias !1154 ; 4 uses
  store i32 %i.y, ptr %i.c, align 4, !tbaa !87, !noalias !1154
  %i.z = and i32 %i.y, -1408
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ab = or disjoint i32 %i.y, 2048
  %i.ac = cmpxchg ptr %i.v, i32 %i.y, i32 %i.ab seq_cst seq_cst, align 4, !noalias !1154 ; 2 uses
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.ae = extractvalue { i32, i1 } %i.ac, 0
  store i32 %i.ae, ptr %i.c, align 4, !noalias !1154
  br label %bb.f

.thread:                                          ; preds = %bb.d
  store i16 2, ptr %i.w, align 8, !tbaa !125, !alias.scope !1154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !1154
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !1154
  %i.af = load ptr, ptr %3, align 8, !tbaa !124   ; 3 uses
  %.not.i.i1845 = icmp eq ptr %i.af, null
  %i.ag = select i1 %.not.i.i1845, i64 64, i64 -32
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !135
  br label %bb.l

.lr.ph:                                           ; preds = %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit, %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit
  %.01133 = phi i64 [ %i.an, %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit ], [ 128, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit ]
  %.sroa.7.032 = phi ptr [ %.sroa.7.3, %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit ], [ %.sroa.7.1, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.7.032, align 8, !tbaa !1153
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !135
  %i.am = add i64 %.01133, 96
  %i.an = add i64 %i.am, %i.al                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.7.032, i64 24 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.o
  br i1 %i.ap, label %._crit_edge, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i19

_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i19: ; preds = %.lr.ph, %bb.e
  %.sroa.7.2 = phi ptr [ %i.ar, %bb.e ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.7.2, align 8, !tbaa !1153
  %.not.i.i.i20 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i20, label %bb.e, label %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit

bb.e:                                             ; preds = %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i19
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.7.2, i64 24 ; 3 uses
  %i.as = icmp eq ptr %i.ar, %i.o
  br i1 %i.as, label %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i19, !llvm.loop !1146

_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit: ; preds = %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i19, %bb.e
  %.sroa.7.3 = phi ptr [ %i.ar, %bb.e ], [ %.sroa.7.2, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i19 ] ; 2 uses
  %.not = icmp eq ptr %.sroa.7.3, %i.o
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i
  %i.at = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %1) ; 0 uses
  %.pre = load i16, ptr %i.w, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !1154
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !1154
  %i.au = load ptr, ptr %3, align 8, !tbaa !124   ; 9 uses
  %.not.i.i18 = icmp eq ptr %i.au, null
  %i.av = select i1 %.not.i.i18, i64 64, i64 -32
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135 ; 6 uses
  switch i16 %.pre, label %bb.l [
    i16 0, label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE2ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.g
    i16 3, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.ay = load atomic i32, ptr %i.au acquire, align 4
  %i.az = and i32 %i.ay, 768
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.au)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  br i1 %i.bb, label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE2ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.bc = atomicrmw sub ptr %i.au, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bd = add i32 %i.bc, -2048                    ; 2 uses
  store i32 %i.bd, ptr %i.b, align 4, !tbaa !87
  %i.be = icmp ugt i32 %i.bd, 2047
  %i.bf = and i32 %i.bc, 16
  %.not.i.i.i.i23 = icmp eq i32 %i.bf, 0
  %or.cond.i.i.i = or i1 %i.be, %.not.i.i.i.i23
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.j, !prof !132

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.n

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE2ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.k:                                             ; preds = %bb.f
  %i.bg = load i16, ptr %i.x, align 2, !tbaa !126
  %i.bh = zext i16 %i.bg to i64
  %i.bi = ptrtoint ptr %i.au to i64
  %.idx.i = shl nuw nsw i64 %i.bh, 5
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.bk = cmpxchg ptr %i.bj, i64 %i.bi, i64 0 seq_cst seq_cst, align 8
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  br i1 %i.bl, label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE2ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.f, %bb.k
  %i.bm = phi i64 [ %i.ai, %.thread ], [ %i.ax, %bb.f ], [ %i.ax, %bb.k ]
  %i.bn = phi ptr [ %i.af, %.thread ], [ %i.au, %bb.f ], [ %i.au, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bo = atomicrmw sub ptr %i.bn, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bp = add i32 %i.bo, -2048                    ; 2 uses
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !87
  %i.bq = icmp ugt i32 %i.bp, 2047
  %i.br = and i32 %i.bo, 16
  %.not.i.i.i22 = icmp eq i32 %i.br, 0
  %or.cond.i.i = or i1 %i.bq, %.not.i.i.i22
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.m, !prof !132

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.n

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE2ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.h
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #33
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE2ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.f, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.k, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc
  %i.bu = phi i64 [ %i.ax, %bb.f ], [ %i.bm, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i ], [ %i.ax, %bb.k ], [ %i.ax, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i ], [ %i.ax, %.noexc ]
  %i.bv = add i64 %i.bu, %.011.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i64 %i.bv
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8AccessorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  invoke void @_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i8, ptr %i.c, align 8, !tbaa !95, !range !105, !noundef !103
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.h = atomicrmw and ptr %i.g, i32 -401 seq_cst, align 4 ; 2 uses
  %i.i = and i32 %i.h, -401
  store i32 %i.i, ptr %i.b, align 4, !tbaa !87
  %i.j = and i32 %i.h, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.e, !prof !86

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.f

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #33
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.b, %bb.c, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !125
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !124
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 2 dereferenceable(4) %i.m)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #33
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !95, !range !105, !noundef !103
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !94   ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.x = atomicrmw and ptr %i.w, i32 -401 seq_cst, align 4 ; 2 uses
  %i.y = and i32 %i.x, -401
  store i32 %i.y, ptr %i.a, align 4, !tbaa !87
  %i.z = and i32 %i.x, 15
  %.not.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.k, !prof !86

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.l

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #33
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, %bb.i, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void

bb.m:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
end_hunk_0
