inline.NumInlined: 396
inline.NumDeleted: 210
begin_hunk_0_@_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !79, !range !22, !noundef !23
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !60
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !60
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted6createEPm(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::length_error", align 8 ; 5 uses
  %2 = alloca %"class.std::length_error", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !51
  %i.b = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 1) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %_ZN5folly11checked_addImvEEbPT_S1_S1_.exit, label %bb.d, !prof !24

_ZN5folly11checked_addImvEEbPT_S1_S1_.exit:       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.14)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #9
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5folly11checked_addImvEEbPT_S1_S1_.exit
  unreachable

bb.c:                                             ; preds = %_ZN5folly11checked_addImvEEbPT_S1_S1_.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i1 } %i.b, 0
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 8) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 5 uses
  br i1 %i.g, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.14)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.m

bb.h:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %bb.j, !prof !24

bb.j:                                             ; preds = %bb.i
  %i.l = icmp sgt i8 %i.k, 0
  br i1 %i.l, label %bb.k, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.i
  %i.m = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #34
  br i1 %i.m, label %bb.k, label %_ZN5folly14goodMallocSizeEm.exit

bb.k:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %bb.j
  %i.n = tail call i64 @nallocx(i64 noundef %i.h, i32 noundef 0) #30 ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not.i, i64 %i.h, i64 %i.n
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %bb.h, %bb.j, %_ZN5folly10canNallocxEv.exit.i, %bb.k
  %.0.i10 = phi i64 [ 0, %bb.h ], [ %i.o, %bb.k ], [ %i.h, %_ZN5folly10canNallocxEv.exit.i ], [ %i.h, %bb.j ] ; 2 uses
  %i.p = tail call noalias ptr @malloc(i64 noundef %.0.i10) #35 ; 3 uses
  %.not.i11 = icmp eq ptr %i.p, null
  br i1 %.not.i11, label %bb.l, label %_ZN5folly13checkedMallocEm.exit

bb.l:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #9
  unreachable

_ZN5folly13checkedMallocEm.exit:                  ; preds = %_ZN5folly14goodMallocSizeEm.exit
  store atomic i64 1, ptr %i.p release, align 8
  %i.q = add i64 %.0.i10, -9
  store i64 %i.q, ptr %0, align 8, !tbaa !51
  ret ptr %i.p

bb.m:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 2 uses
  tail call void @_ZNSt12length_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #30
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #28
  unreachable
}

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12length_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #21 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !tbaa !48
  %i.c = icmp slt i8 %i.b, -64
  %i.d = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  br i1 %i.c, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.sink) #30
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define void @_ZN5folly9FormatArg8initSlowEv(ptr noundef nonnull align 8 dereferenceable(84) initializes((40, 56)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.folly::Range", align 8      ; 7 uses
  %2 = alloca %"class.folly::Range", align 8      ; 5 uses
  %3 = alloca %"class.folly::Expected", align 8   ; 6 uses
  %4 = alloca %class.anon.19, align 8             ; 5 uses
  %5 = alloca %class.anon.21, align 8             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !80     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 16 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = tail call noundef ptr @memchr(ptr noundef %i.c, i32 noundef 58, i64 noundef %i.h) #29 ; 6 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.j, align 8, !tbaa !50
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !50
  br label %.critedge38

bb.c:                                             ; preds = %bb.a
  store ptr %i.i, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !50
  %i.k = load i8, ptr %i.i, align 1, !tbaa !48
  %i.l = icmp eq i8 %i.k, 58
  br i1 %i.l, label %bb.d, label %bb.al

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 6 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !50
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %.critedge38, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 4 uses
  %.not27 = icmp eq ptr %i.o, %i.e
  br i1 %.not27, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.o, align 1, !tbaa !48
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN5folly6detailL16formatAlignTableE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !82    ; 2 uses
  %.not28 = icmp eq i8 %i.s, 5
  %i.t = load i8, ptr %i.m, align 1, !tbaa !48    ; 2 uses
  br i1 %.not28, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.t, ptr %i.u, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.s, ptr %i.v, align 1, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 3 ; 3 uses
  store ptr %i.w, ptr %i.b, align 8, !tbaa !50
  %i.x = icmp eq ptr %i.w, %i.e
  br i1 %i.x, label %.critedge38, label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.m, align 1, !tbaa !48
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN5folly6detailL16formatAlignTableE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !82  ; 2 uses
  %.not29 = icmp eq i8 %i.ab, 5
  br i1 %.not29, label %bb.j, label %bb.i

.thread:                                          ; preds = %bb.f
  %i.ac = zext i8 %i.t to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN5folly6detailL16formatAlignTableE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !82  ; 2 uses
  %.not2993 = icmp eq i8 %i.ae, 5
  br i1 %.not2993, label %bb.j, label %.thread94

.thread94:                                        ; preds = %.thread
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !53
  store ptr %i.o, ptr %i.b, align 8, !tbaa !50
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ab, ptr %i.ag, align 1, !tbaa !53
  br label %.critedge38

bb.j:                                             ; preds = %.thread94, %.thread, %bb.h, %bb.g
  %i.ah = phi ptr [ %i.m, %bb.h ], [ %i.o, %.thread94 ], [ %i.w, %bb.g ], [ %i.m, %.thread ] ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !48  ; 2 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN5folly6detailL15formatSignTableE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !84  ; 2 uses
  %.not30 = icmp eq i8 %i.al, 4
  br i1 %.not30, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.al, ptr %i.am, align 2, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 4 uses
  store ptr %i.an, ptr %i.b, align 8, !tbaa !50
  %i.ao = icmp eq ptr %i.an, %i.e
  br i1 %i.ao, label %.critedge38, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i8, ptr %i.an, align 1, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.ap = phi i8 [ %.pre, %._crit_edge ], [ %i.ai, %bb.j ] ; 2 uses
  %i.aq = phi ptr [ %i.an, %._crit_edge ], [ %i.ah, %bb.j ] ; 2 uses
  %i.ar = icmp eq i8 %i.ap, 35
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 1, ptr %i.as, align 1, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 4 uses
  store ptr %i.at, ptr %i.b, align 8, !tbaa !50
  %i.au = icmp eq ptr %i.at, %i.e
  br i1 %i.au, label %.critedge38, label %._crit_edge63

._crit_edge63:                                    ; preds = %bb.m
  %.pre64 = load i8, ptr %i.at, align 1, !tbaa !48
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge63, %bb.l
  %i.av = phi i8 [ %.pre64, %._crit_edge63 ], [ %i.ap, %bb.l ] ; 2 uses
  %i.aw = phi ptr [ %i.at, %._crit_edge63 ], [ %i.aq, %bb.l ] ; 2 uses
  %i.ax = icmp eq i8 %i.av, 48
  br i1 %i.ax, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !53
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit, label %bb.p, !prof !20

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNK5folly9FormatArg5errorIJRA26_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(26) @.str.15) #28
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 48, ptr %i.bb, align 8, !tbaa !83
  store i8 3, ptr %i.ay, align 1, !tbaa !53
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 4 uses
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !50
  %i.bd = icmp eq ptr %i.bc, %i.e
  br i1 %i.bd, label %.critedge38, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit._crit_edge

_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit._crit_edge: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit
  %.pre65 = load i8, ptr %i.bc, align 1, !tbaa !48
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit._crit_edge, %bb.n
  %i.be = phi i8 [ %.pre65, %_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit._crit_edge ], [ %i.av, %bb.n ] ; 2 uses
  %i.bf = phi ptr [ %i.bc, %_ZNK5folly9FormatArg7enforceIbJRA26_KcEEEvRKT_DpOT0_.exit._crit_edge ], [ %i.aw, %bb.n ] ; 2 uses
  %i.bg = icmp eq i8 %i.be, 42
  br i1 %i.bg, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -2, ptr %i.bh, align 8, !tbaa !85
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 4 uses
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !50
  %i.bj = icmp eq ptr %i.bi, %i.e
  br i1 %i.bj, label %.critedge38, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !48
  %i.bl = add i8 %i.bk, -48
  %or.cond = icmp ult i8 %i.bl, 10
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = call fastcc noundef i32 @"_ZZN5folly9FormatArg8initSlowEvENK3$_0clEv"(ptr nonnull %i.b, ptr nonnull %i.a)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !86
  %.pre66 = load ptr, ptr %i.b, align 8, !tbaa !50
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bo = phi ptr [ %.pre66, %bb.t ], [ %i.bi, %bb.s ] ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.e
  br i1 %i.bp, label %.critedge38, label %bb.x

bb.v:                                             ; preds = %bb.q
  %i.bq = add i8 %i.be, -48
  %or.cond35 = icmp ult i8 %i.bq, 10
  br i1 %or.cond35, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.br = call fastcc noundef i32 @"_ZZN5folly9FormatArg8initSlowEvENK3$_0clEv"(ptr nonnull %i.b, ptr nonnull %i.a)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !85
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.e
  br i1 %i.bu, label %.critedge38, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %i.bv = phi ptr [ %i.bf, %bb.v ], [ %i.bt, %bb.w ], [ %i.bo, %bb.u ] ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !48  ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 44
  br i1 %i.bx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.by, align 4, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 4 uses
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !50
  %i.ca = icmp eq ptr %i.bz, %i.e
  br i1 %i.ca, label %.critedge38, label %._crit_edge67

._crit_edge67:                                    ; preds = %bb.y
end_hunk_0
