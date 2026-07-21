inline.NumInlined: 844
inline.NumDeleted: 405
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5folly12smartReallocEPvmmm:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #15
  unreachable

_ZN5folly13checkedMallocEm.exit:                  ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %0, i64 %1, i1 false)
  tail call void @free(ptr noundef %0) #34
  br label %_ZN5folly14checkedReallocEPvm.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43 ; 2 uses
  %.not.i13 = icmp eq ptr %i.e, null
  br i1 %.not.i13, label %bb.e, label %_ZN5folly14checkedReallocEPvm.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #15
  unreachable

_ZN5folly14checkedReallocEPvm.exit:               ; preds = %bb.d, %_ZN5folly13checkedMallocEm.exit
  %.0 = phi ptr [ %i.d, %_ZN5folly13checkedMallocEm.exit ], [ %i.e, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19
  %i.c = icmp slt i8 %i.b, -64
  %i.d = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  br i1 %i.c, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.sink) #34
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE7unshareEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31
  %i.d = and i64 %i.c, 4611686018427387903
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d)
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !11
  %i.e = call noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted6createEPm(ptr noundef nonnull %i.a)
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.f, i64 %i.j, i1 false)
  %i.k = load ptr, ptr %0, align 8, !tbaa !19
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.m = atomicrmw sub ptr %i.l, i64 1 acq_rel, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.b, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef nonnull %i.l) #34
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %bb.a, %bb.b
  store ptr %i.i, ptr %0, align 8, !tbaa !19
  %i.o = load i64, ptr %i.a, align 8, !tbaa !11
  %i.p = or i64 %i.o, 4611686018427387904
  store i64 %i.p, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted10reallocateEPcmmPm(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::length_error", align 8 ; 5 uses
  %5 = alloca %"class.std::length_error", align 8 ; 5 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !11
  %i.b = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 1) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %_ZN5folly11checked_addImvEEbPT_S1_S1_.exit, label %bb.d, !prof !29

_ZN5folly11checked_addImvEEbPT_S1_S1_.exit:       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.5)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5folly11checked_addImvEEbPT_S1_S1_.exit
  unreachable

bb.c:                                             ; preds = %_ZN5folly11checked_addImvEEbPT_S1_S1_.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i1 } %i.b, 0
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 8) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 5 uses
  br i1 %i.g, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.5)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %bb.j, !prof !29

bb.j:                                             ; preds = %bb.i
  %i.l = icmp sgt i8 %i.k, 0
  br i1 %i.l, label %bb.k, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.i
  %i.m = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #41
  br i1 %i.m, label %bb.k, label %_ZN5folly14goodMallocSizeEm.exit

bb.k:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %bb.j
  %i.n = tail call i64 @nallocx(i64 noundef %i.h, i32 noundef 0) #34 ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not.i, i64 %i.h, i64 %i.n
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %bb.h, %bb.j, %_ZN5folly10canNallocxEv.exit.i, %bb.k
  %.0.i13 = phi i64 [ 0, %bb.h ], [ %i.o, %bb.k ], [ %i.h, %_ZN5folly10canNallocxEv.exit.i ], [ %i.h, %bb.j ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %0, i64 -8
  %i.q = add i64 %1, 9
  %i.r = add i64 %2, 9
  %i.s = tail call noalias noundef nonnull ptr @_ZN5folly12smartReallocEPvmmm(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef %i.r, i64 noundef %.0.i13)
  %i.t = add i64 %.0.i13, -9
  store i64 %i.t, ptr %3, align 8, !tbaa !11
  ret ptr %i.s

bb.l:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5folly11IPAddressV68validateENS_5RangeIPKcEE(ptr %0, ptr %1) local_unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.folly::Expected", align 4   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @_ZN5folly11IPAddressV613tryFromStringENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 4 %2, ptr %0, ptr %1) #34
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41
  %i.c = icmp eq i8 %i.b, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly11IPAddressV613tryFromStringENS_5RangeIPKcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Expected") align 4 captures(none) %0, ptr %1, ptr %2) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array.11", align 1    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.addrinfo, align 8           ; 7 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 2, ptr %i.f, align 4, !tbaa !41
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %1, align 1, !tbaa !19
  %i.h = icmp eq i8 %i.g, 91
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %2, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19
  %i.k = icmp eq i8 %i.j, 93
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = add i64 %i.d, -2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %5 = add i64 %i.d, -1
  %.sroa.speculated13 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %5)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated13, i64 45)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated.i
  %.pre = ptrtoint ptr %i.m to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.d
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 45)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.speculated
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi = phi i64 [ %i.c, %bb.f ], [ %.pre, %bb.e ]
  %.sroa.016.0 = phi ptr [ %1, %bb.f ], [ %i.m, %bb.e ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.o, %bb.f ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.p = ptrtoint ptr %.sroa.6.0 to i64
  %i.q = sub i64 %i.p, %.pre-phi                  ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.i, !prof !33

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 1 %.sroa.016.0, i64 %i.q, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.g
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.j, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.t = load i8, ptr %.sroa.016.0, align 1, !tbaa !19
  store i8 %i.t, ptr %3, align 1, !tbaa !19
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

_ZSt4copyIPKcPcET0_T_S4_S3_.exit:                 ; preds = %bb.j, %bb.i, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %i.q
  store i8 0, ptr %i.u, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 10, ptr %i.w, align 4, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.x, align 8, !tbaa !48
  store i32 4, ptr %4, align 8, !tbaa !49
  %i.y = invoke i32 @getaddrinfo(ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %"_ZN5folly6detail14ScopeGuardImplIZNS_11IPAddressV613tryFromStringENS_5RangeIPKcEEE3$_0Lb1EED2Ev.exit", label %bb.l

"_ZN5folly6detail14ScopeGuardImplIZNS_11IPAddressV613tryFromStringENS_5RangeIPKcEEE3$_0Lb1EED2Ev.exit": ; preds = %bb.k
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51
  call void @_ZN5folly11IPAddressV6C1ERK12sockaddr_in6(ptr noundef nonnull align 4 dereferenceable(18) %0, ptr noundef nonnull align 4 dereferenceable(28) %i.ac) #34
  %.val.val.i = load ptr, ptr %i.a, align 8, !tbaa !50
  call void @freeaddrinfo(ptr noundef %.val.val.i) #34
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %0, align 4, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %"_ZN5folly6detail14ScopeGuardImplIZNS_11IPAddressV613tryFromStringENS_5RangeIPKcEEE3$_0Lb1EED2Ev.exit"
  %.sink = phi i8 [ 1, %"_ZN5folly6detail14ScopeGuardImplIZNS_11IPAddressV613tryFromStringENS_5RangeIPKcEEE3$_0Lb1EED2Ev.exit" ], [ 2, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sink, ptr %i.ad, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.b
  ret void

bb.o:                                             ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #40
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5folly11IPAddressV6C2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(18) initializes((0, 18)) %0) unnamed_addr #21 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %0, i8 0, i64 18, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11IPAddressV6C2ENS_5RangeIPKcEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(18) initializes((0, 18)) %0, ptr %1, ptr %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Range", align 8      ; 3 uses
  %4 = alloca %"class.folly::Expected", align 4   ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %0, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN5folly11IPAddressV613tryFromStringENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 4 %4, ptr %1, ptr %2) #34
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.c = load i8, ptr %i.b, align 4, !tbaa !41
  switch i8 %i.c, label %bb.h [
    i8 2, label %bb.b
    i8 1, label %_ZNR5folly8ExpectedINS_11IPAddressV6ENS_20IPAddressFormatErrorEE5valueEv.exit
  ], !prof !52

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA23_cNS_5RangeIPKcEEA2_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISE_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSH_EEEE5valueEiE4typeELi0EEESE_DpRKSG_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(23) @.str.6, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(2) @.str.7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.d, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !13     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !19
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %.pn9, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %.pn8

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #15
  unreachable

_ZNR5folly8ExpectedINS_11IPAddressV6ENS_20IPAddressFormatErrorEE5valueEv.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %0, ptr noundef nonnull align 4 dereferenceable(18) %4, i64 18, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA23_cNS_5RangeIPKcEEA2_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISE_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSH_EEEE5valueEiE4typeELi0EEESE_DpRKSG_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(23) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !18
  store i8 0, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %0, ptr %i.a, align 8, !tbaa !55
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !40
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !40
  %i.d = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i to i64
  %i.e = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i to i64
  %reass.sub = sub i64 %i.d, %i.e
  %i.f = add i64 %reass.sub, 25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA23_cNS_5RangeIPKcEEA2_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(23) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
end_hunk_0
