inline.NumInlined: 187
inline.NumDeleted: 96
begin_hunk_0_@_ZN20btMultiSapBroadphaseC2EiP22btOverlappingPairCache:bb.a
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.o)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.n, %bb.e ]
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.v, null
  %i.w = load i8, ptr %i.i, align 8, !range !38
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.x, i1 false
  br i1 %or.cond.i.i, label %bb.k, label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.v)
          to label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit unwind label %bb.m

_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit: ; preds = %bb.j, %bb.k
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i11 = icmp ne ptr %i.y, null
  %i.z = load i8, ptr %i.a, align 8, !range !38
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond.i.i12 = select i1 %.not.i.i.i11, i1 %i.aa, i1 false
  br i1 %or.cond.i.i12, label %bb.l, label %_ZN20btAlignedObjectArrayIP21btBroadphaseInterfaceED2Ev.exit

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.y)
          to label %_ZN20btAlignedObjectArrayIP21btBroadphaseInterfaceED2Ev.exit unwind label %bb.m

_ZN20btAlignedObjectArrayIP21btBroadphaseInterfaceED2Ev.exit: ; preds = %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit, %bb.l
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #15
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN28btSortedOverlappingPairCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: uwtable
define dso_local void @_ZN20btMultiSapBroadphaseD2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTV20btMultiSapBroadphase, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !31, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !20
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef %i.h)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i8, ptr %i.l, align 8, !range !38
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.k)
          to label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit unwind label %bb.k

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i7 = icmp ne ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load i8, ptr %i.q, align 8, !range !38
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i8 = select i1 %.not.i.i.i7, i1 %i.s, i1 false
  br i1 %or.cond.i.i8, label %bb.g, label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit10

bb.g:                                             ; preds = %bb.f
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit10 unwind label %bb.i

_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit10: ; preds = %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i11 = icmp ne ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i8, ptr %i.v, align 8, !range !38
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i12 = select i1 %.not.i.i.i11, i1 %i.x, i1 false
  br i1 %or.cond.i.i12, label %bb.h, label %_ZN20btAlignedObjectArrayIP21btBroadphaseInterfaceED2Ev.exit

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit10
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.u)
  br label %_ZN20btAlignedObjectArrayIP21btBroadphaseInterfaceED2Ev.exit

_ZN20btAlignedObjectArrayIP21btBroadphaseInterfaceED2Ev.exit: ; preds = %bb.h, %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit10
  ret void

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit

_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.i
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.i, %bb.e ], [ %i.i, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %.not.i.i.i14 = icmp ne ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !range !38
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i15 = select i1 %.not.i.i.i14, i1 %i.ad, i1 false
  br i1 %or.cond.i.i15, label %bb.j, label %_ZN20btAlignedObjectArrayIP21btBroadphaseInterfaceED2Ev.exit17

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aa)
          to label %_ZN20btAlignedObjectArrayIP21btBroadphaseInterfaceED2Ev.exit17 unwind label %bb.k

_ZN20btAlignedObjectArrayIP21btBroadphaseInterfaceED2Ev.exit17: ; preds = %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEED2Ev.exit, %bb.j
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.j, %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #15
  unreachable
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN20btMultiSapBroadphaseD0Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN20btMultiSapBroadphaseD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  resume { ptr, i32 } %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZN20btMultiSapBroadphase9buildTreeERK9btVector3S2_(ptr noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btVector3, align 16          ; 5 uses
  %4 = alloca %class.btVector3, align 4           ; 5 uses
  %i.a = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 248, i32 noundef 16) ; 4 uses
  invoke void @_ZN14btQuantizedBvhC1Ev(ptr noundef nonnull align 8 dereferenceable(244) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !30
  tail call void @_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(244) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef 1.000000e+00)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !30   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 140 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit, %bb.b
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !30
  call void @_ZN14btQuantizedBvh13buildInternalEv(ptr noundef nonnull align 8 dereferenceable(244) %i.l)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.a)
          to label %_ZN14btQuantizedBvhdlEPv.exit unwind label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !30   ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %9 = load float, ptr %4, align 4, !tbaa !42
  %10 = load float, ptr %7, align 4, !tbaa !42    ; 2 uses
  %11 = load float, ptr %i.u, align 4, !tbaa !42  ; 2 uses
  %12 = load <2 x float>, ptr %6, align 4, !tbaa !42
  %13 = load <2 x float>, ptr %8, align 4, !tbaa !42 ; 2 uses
  %14 = load <2 x float>, ptr %i.v, align 4, !tbaa !42 ; 2 uses
  %15 = load <4 x float>, ptr %3, align 16
  %16 = load <2 x float>, ptr %5, align 4, !tbaa !42
  %17 = fsub float %9, %10
  %18 = fmul float %11, %17
  %19 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x float> %15, <4 x float> %19, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %21 = insertelement <4 x float> %20, float %18, i64 3 ; 2 uses
  %22 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %23 = insertelement <4 x float> %22, float 1.000000e+00, i64 3
  %24 = insertelement <4 x float> %23, float %10, i64 0 ; 2 uses
  %25 = fsub <4 x float> %21, %24
  %26 = fadd <4 x float> %21, %24
  %27 = shufflevector <4 x float> %25, <4 x float> %26, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %28 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %29 = insertelement <4 x float> %28, float 1.000000e+00, i64 3
  %30 = insertelement <4 x float> %29, float %11, i64 0
  %31 = fmul <4 x float> %27, %30
  %32 = fptoui <4 x float> %31 to <4 x i16>       ; 2 uses
  %33 = fsub <2 x float> %12, %13
  %34 = fmul <2 x float> %14, %33
  %35 = and <4 x i16> %32, <i16 -2, i16 -2, i16 -2, i16 poison>
  %36 = or <4 x i16> %32, <i16 poison, i16 poison, i16 poison, i16 1>
  %37 = shufflevector <4 x i16> %35, <4 x i16> %36, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %38 = fadd <2 x float> %34, splat (float 1.000000e+00)
  %39 = fptoui <2 x float> %38 to <2 x i16>
  %40 = or <2 x i16> %39, splat (i16 1)
  %i.w = load i32, ptr %i.h, align 4, !tbaa !44   ; 7 uses
  %i.x = load i32, ptr %i.i, align 8, !tbaa !48
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %i.w, 0
  %i.z = shl nsw i32 %i.w, 1
  %i.aa = select i1 %.not.i.i, i32 1, i32 %i.z    ; 4 uses
  %i.ab = icmp slt i32 %i.w, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = sext i32 %i.aa to i64
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ad, i32 noundef 16)
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !44
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i: ; preds = %bb.g, %bb.f
  %i.af = phi i32 [ %.pre.i, %bb.g ], [ %i.w, %bb.f ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ae, %bb.g ], [ null, %bb.f ] ; 4 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.af to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ah = icmp eq i32 %i.af, 1
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.h

_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod15 = trunc i32 %i.af to i1
  call void @llvm.assume(i1 %lcmp.mod15)
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !50
  br label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %.not.i5.i.i = icmp ne ptr %i.ar, null
  %i.as = load i8, ptr %i.k, align 8, !range !38
  %i.at = trunc nuw i8 %i.as to i1
  %or.cond.i.i = select i1 %.not.i5.i.i, i1 %i.at, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ar)
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i: ; preds = %bb.i, %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.k, align 8, !tbaa !52
  store ptr %.0.i.i.i, ptr %i.j, align 8, !tbaa !49
  store i32 %i.aa, ptr %i.i, align 8, !tbaa !48
  %.pre2.i = load i32, ptr %i.h, align 4, !tbaa !44
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit: ; preds = %bb.d, %bb.e, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i
  %i.au = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i ], [ %i.w, %bb.e ], [ %i.w, %bb.d ]
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.aw ; 3 uses
  store <4 x i16> %37, ptr %i.ax, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store <2 x i16> %40, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ay, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !4
  %i.az = load i32, ptr %i.h, align 4, !tbaa !44
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.h, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load i32, ptr %i.c, align 4, !tbaa !18
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %bb.d, label %._crit_edge

_ZN14btQuantizedBvhdlEPv.exit:                    ; preds = %bb.c
  resume { ptr, i32 } %i.m

bb.j:                                             ; preds = %bb.c
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #15
  unreachable
}

declare void @_ZN14btQuantizedBvhC1Ev(ptr noundef nonnull align 8 dereferenceable(244)) unnamed_addr #2

declare void @_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(244), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef) local_unnamed_addr #2

declare void @_ZN14btQuantizedBvh13buildInternalEv(ptr noundef nonnull align 8 dereferenceable(244)) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN20btMultiSapBroadphase11createProxyERK9btVector3S2_iPvssP12btDispatcherS3_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, i16 noundef signext %5, i16 noundef signext %6, ptr noundef %7, ptr readnone captures(none) %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 136, i32 noundef 16) ; 17 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %5, ptr %i.b, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %6, ptr %i.c, align 2, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !59
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 1, ptr %i.g, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.h, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 0, ptr %i.i, align 4, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.j, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !59
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !59
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 %3, ptr %i.m, align 8, !tbaa !68
  store ptr %i.a, ptr %i.f, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !36
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE9push_backERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.o, 0
  %i.s = shl nsw i32 %i.o, 1
  %i.t = select i1 %.not.i.i, i32 1, i32 %i.s     ; 4 uses
  %i.u = icmp slt i32 %i.o, %i.t
  br i1 %i.u, label %bb.c, label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = sext i32 %i.t to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.w, i32 noundef 16)
  %.pre.i = load i32, ptr %i.n, align 4, !tbaa !35
  br label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.y = phi i32 [ %.pre.i, %bb.d ], [ %i.o, %bb.c ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.x, %bb.d ], [ null, %bb.c ] ; 8 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 9 uses
  br i1 %i.z, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE8allocateEi.exit.i.i
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %.0.i.i.i17 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.y to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.y, 6
  %i.ad = sub i64 %.0.i.i.i17, %i.ac
  %diff.check = icmp ult i64 %i.ad, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x ptr>, ptr %i.af, align 8, !tbaa !70
  %wide.load18 = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x ptr> %wide.load, ptr %i.ae, align 8, !tbaa !70
  store <2 x ptr> %wide.load18, ptr %i.ah, align 8, !tbaa !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.prol
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !70
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !70
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !75

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZNK20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !70
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !70
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !70
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !70
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.1
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !70
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !70
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.2
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !70
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !70
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph, !llvm.loop !77

_ZNK20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp ne ptr %i.ab, null
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load i8, ptr %i.ba, align 8, !range !38
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond.i = select i1 %.not.i5.i.i, i1 %i.bc, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE10deallocateEv.exit.i.i

_ZNK20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.old8.i = load i8, ptr %.old.i, align 8, !tbaa !33, !range !38, !noundef !39
  %.old9.i = trunc nuw i8 %.old8.i to i1
  br i1 %.old9.i, label %bb.e, label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE4copyEiiPS2_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ab)
  %.pre2.pre.pre.i = load i32, ptr %i.n, align 4, !tbaa !35
  br label %_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE4copyEiiPS2_.exit.i.i
  %.pre2.i = phi i32 [ %i.y, %_ZNK20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE4copyEiiPS2_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.e ], [ %i.y, %_ZNK20btAlignedObjectArrayIPN20btMultiSapBroadphase15btMultiSapProxyEE4copyEiiPS2_.exit.thread.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.bd, align 8, !tbaa !33
  store ptr %.0.i.i.i, ptr %i.aa, align 8, !tbaa !34
  store i32 %i.t, ptr %i.p, align 8, !tbaa !36
end_hunk_0
