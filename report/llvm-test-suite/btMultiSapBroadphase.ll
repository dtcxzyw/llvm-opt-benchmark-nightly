inline.NumInlined: 187
inline.NumDeleted: 96
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z22btAlignedAllocInternalmi

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
define dso_local void @_ZN20btMultiSapBroadphaseD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
define dso_local void @_ZN20btMultiSapBroadphase9buildTreeERK9btVector3S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 140 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit, %bb.b
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !30
  call void @_ZN14btQuantizedBvh13buildInternalEv(ptr noundef nonnull align 8 dereferenceable(244) %i.n)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.a)
          to label %_ZN14btQuantizedBvhdlEPv.exit unwind label %bb.k

bb.d:                                             ; preds = %.lr.ph, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !30   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.aa = load float, ptr %4, align 4, !tbaa !42
  %5 = load <4 x float>, ptr %3, align 16
  %i.ab = load <2 x float>, ptr %i.w, align 4, !tbaa !42 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.h, align 4, !tbaa !42
  %i.ad = load <2 x float>, ptr %i.y, align 4, !tbaa !42 ; 2 uses
  %6 = extractelement <2 x float> %i.ab, i64 0
  %7 = fsub float %i.aa, %6
  %8 = extractelement <2 x float> %i.ad, i64 0
  %i.ae = fmul float %8, %7
  %i.af = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ag = shufflevector <4 x float> %5, <4 x float> %i.af, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ah = insertelement <4 x float> %i.ag, float %i.ae, i64 3
  %9 = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = insertelement <4 x float> %9, float -1.000000e+00, i64 3
  %10 = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aj = insertelement <4 x float> %10, float 1.000000e+00, i64 3
  %11 = load <2 x float>, ptr %i.i, align 4, !tbaa !42
  %12 = load <2 x float>, ptr %i.x, align 4, !tbaa !42 ; 2 uses
  %13 = load <2 x float>, ptr %i.z, align 4, !tbaa !42 ; 2 uses
  %14 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> %i.ai, <4 x float> %14, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %16 = fsub <4 x float> %i.ah, %15
  %17 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %18 = shufflevector <4 x float> %i.aj, <4 x float> %17, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ak = fmul <4 x float> %16, %18
  %i.al = fptoui <4 x float> %i.ak to <4 x i16>   ; 2 uses
  %i.am = fsub <2 x float> %11, %12
  %i.an = fmul <2 x float> %13, %i.am
  %i.ao = and <4 x i16> %i.al, <i16 -2, i16 -2, i16 -2, i16 poison>
  %i.ap = or <4 x i16> %i.al, <i16 poison, i16 poison, i16 poison, i16 1>
  %i.aq = shufflevector <4 x i16> %i.ao, <4 x i16> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ar = fadd <2 x float> %i.an, splat (float 1.000000e+00)
  %i.as = fptoui <2 x float> %i.ar to <2 x i16>
  %i.at = or <2 x i16> %i.as, splat (i16 1)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !44  ; 7 uses
  %i.av = load i32, ptr %i.k, align 8, !tbaa !48
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.e, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %i.au, 0
  %i.ax = shl nsw i32 %i.au, 1
  %i.ay = select i1 %.not.i.i, i32 1, i32 %i.ax   ; 4 uses
  %i.az = icmp slt i32 %i.au, %i.ay
  br i1 %i.az, label %bb.f, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = sext i32 %i.ay to i64
  %i.bb = shl nsw i64 %i.ba, 4
  %i.bc = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bb, i32 noundef 16)
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !44
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i: ; preds = %bb.g, %bb.f
  %i.bd = phi i32 [ %.pre.i, %bb.g ], [ %i.au, %bb.f ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.bc, %bb.g ], [ null, %bb.f ] ; 4 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.bd to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.bf = icmp eq i32 %i.bd, 1
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bg, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bj, ptr noundef nonnull align 4 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.h

_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod15 = trunc i32 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod15)
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bm, ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !50
  br label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i
  %i.bp = load ptr, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
  %i.bq = load i8, ptr %i.m, align 8, !tbaa !52, !range !38, !noundef !39
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.j, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bp)
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.m, align 8, !tbaa !52
  store ptr %.0.i.i.i, ptr %i.l, align 8, !tbaa !49
  store i32 %i.ay, ptr %i.k, align 8, !tbaa !48
  %.pre2.i = load i32, ptr %i.j, align 4, !tbaa !44
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit: ; preds = %bb.d, %bb.e, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i
  %i.bs = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i ], [ %i.au, %bb.e ], [ %i.au, %bb.d ]
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bu ; 3 uses
  store <4 x i16> %i.aq, ptr %i.bv, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store <2 x i16> %i.at, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bw, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !4
  %i.bx = load i32, ptr %i.j, align 4, !tbaa !44
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.j, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i32, ptr %i.c, align 4, !tbaa !18
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %bb.d, label %._crit_edge

_ZN14btQuantizedBvhdlEPv.exit:                    ; preds = %bb.c
  resume { ptr, i32 } %i.o

bb.k:                                             ; preds = %bb.c
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #15
  unreachable
}

declare void @_ZN14btQuantizedBvhC1Ev(ptr noundef nonnull align 8 dereferenceable(244)) unnamed_addr #2

declare void @_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(244), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef) local_unnamed_addr #2

declare void @_ZN14btQuantizedBvh13buildInternalEv(ptr noundef nonnull align 8 dereferenceable(244)) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN20btMultiSapBroadphase11createProxyERK9btVector3S2_iPvssP12btDispatcherS3_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, i16 noundef signext %5, i16 noundef signext %6, ptr noundef %7, ptr nofree readnone captures(none) %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
end_hunk_0
