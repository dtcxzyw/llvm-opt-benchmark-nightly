Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexPolyhedron?download=true
inline.NumInlined: 320
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN18btConvexPolyhedron11initialize2Ev:bb.a
  %i.no = fadd float %i.nn, %i.nl
  %i.np = fcmp ule float %i.no, 0.000000e+00
  br i1 %i.np, label %bb.v, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.v:                                             ; preds = %.lr.ph.i164.us.4
  %indvars.iv.next.i170.us.4 = add nuw nsw i64 %indvars.iv.i169.us.4, 1 ; 2 uses
  %exitcond.not.i171.us.4 = icmp eq i64 %indvars.iv.next.i170.us.4, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.4, label %.lr.ph.i164.us.5, label %.lr.ph.i164.us.4, !llvm.loop !35

.lr.ph.i164.us.5:                                 ; preds = %bb.v, %bb.w
  %indvars.iv.i169.us.5 = phi i64 [ %indvars.iv.next.i170.us.5, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.nq = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv.i169.us.5 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 36
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 40
  %i.nu = load float, ptr %i.nr, align 4, !tbaa !36
  %i.nv = load float, ptr %i.ns, align 4, !tbaa !36
  %i.nw = load float, ptr %i.nt, align 4, !tbaa !36
  %i.nx = fmul float %i.kw, %i.nv
  %i.ny = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.nu, float %i.nx)
  %i.nz = tail call noundef float @llvm.fmuladd.f32(float %i.ku, float %i.nw, float %i.ny)
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nq, i64 44
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !36
  %i.oc = fadd float %i.ob, %i.nz
  %i.od = fcmp ule float %i.oc, 0.000000e+00
  br i1 %i.od, label %bb.w, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.w:                                             ; preds = %.lr.ph.i164.us.5
  %indvars.iv.next.i170.us.5 = add nuw nsw i64 %indvars.iv.i169.us.5, 1 ; 2 uses
  %exitcond.not.i171.us.5 = icmp eq i64 %indvars.iv.next.i170.us.5, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.5, label %.lr.ph.i164.us.6, label %.lr.ph.i164.us.5, !llvm.loop !35

.lr.ph.i164.us.6:                                 ; preds = %bb.w, %bb.x
  %indvars.iv.i169.us.6 = phi i64 [ %indvars.iv.next.i170.us.6, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.oe = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv.i169.us.6 ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  %i.oi = load float, ptr %i.of, align 4, !tbaa !36
  %i.oj = load float, ptr %i.og, align 4, !tbaa !36
  %i.ok = load float, ptr %i.oh, align 4, !tbaa !36
  %i.ol = fmul float %i.kt, %i.oj
  %i.om = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.oi, float %i.ol)
  %i.on = tail call noundef float @llvm.fmuladd.f32(float %i.kv, float %i.ok, float %i.om)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oe, i64 44
  %i.op = load float, ptr %i.oo, align 4, !tbaa !36
  %i.oq = fadd float %i.op, %i.on
  %i.or = fcmp ule float %i.oq, 0.000000e+00
  br i1 %i.or, label %bb.x, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.x:                                             ; preds = %.lr.ph.i164.us.6
  %indvars.iv.next.i170.us.6 = add nuw nsw i64 %indvars.iv.i169.us.6, 1 ; 2 uses
  %exitcond.not.i171.us.6 = icmp eq i64 %indvars.iv.next.i170.us.6, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.6, label %.lr.ph.i164.us.7, label %.lr.ph.i164.us.6, !llvm.loop !35

.lr.ph.i164.us.7:                                 ; preds = %bb.x, %bb.y
  %indvars.iv.i169.us.7 = phi i64 [ %indvars.iv.next.i170.us.7, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.os = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv.i169.us.7 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 36
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 40
  %i.ow = load float, ptr %i.ot, align 4, !tbaa !36
  %i.ox = load float, ptr %i.ou, align 4, !tbaa !36
  %i.oy = load float, ptr %i.ov, align 4, !tbaa !36
  %i.oz = fmul float %i.kt, %i.ox
  %i.pa = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.ow, float %i.oz)
  %i.pb = tail call noundef float @llvm.fmuladd.f32(float %i.ku, float %i.oy, float %i.pa)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.os, i64 44
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !36
  %i.pe = fadd float %i.pd, %i.pb
  %i.pf = fcmp ule float %i.pe, 0.000000e+00
  br i1 %i.pf, label %bb.y, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.y:                                             ; preds = %.lr.ph.i164.us.7
  %indvars.iv.next.i170.us.7 = add nuw nsw i64 %indvars.iv.i169.us.7, 1 ; 2 uses
  %exitcond.not.i171.us.7 = icmp eq i64 %indvars.iv.next.i170.us.7, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.7, label %.critedge109, label %.lr.ph.i164.us.7, !llvm.loop !35

_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us: ; preds = %.lr.ph.i164.us, %.lr.ph.i164.us.1, %.lr.ph.i164.us.2, %.lr.ph.i164.us.3, %.lr.ph.i164.us.4, %.lr.ph.i164.us.5, %.lr.ph.i164.us.6, %.lr.ph.i164.us.7
  store float %i.kl, ptr %i.ke, align 4, !tbaa !36
  store float %i.kk, ptr %i.kg, align 4, !tbaa !36
  br label %.loopexit

.critedge109:                                     ; preds = %bb.y, %bb.q
  %i.pg = add nuw nsw i32 %.0260, 1               ; 2 uses
  %exitcond320.not = icmp eq i32 %i.pg, 1024
  br i1 %exitcond320.not, label %.loopexit, label %bb.q, !llvm.loop !84

.loopexit:                                        ; preds = %.critedge109, %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us, %.critedge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9btHashMapI20btInternalVertexPair14btInternalEdgeED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i8, ptr %i.c, align 8, !range !27
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayI20btInternalVertexPairED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayI20btInternalVertexPairED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #14
  unreachable

_ZN20btAlignedObjectArrayI20btInternalVertexPairED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i8, ptr %i.j, align 8, !range !27
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.l, i1 false
  br i1 %or.cond.i.i2, label %bb.d, label %_ZN20btAlignedObjectArrayI14btInternalEdgeED2Ev.exit

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayI20btInternalVertexPairED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20btAlignedObjectArrayI14btInternalEdgeED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #14
  unreachable

_ZN20btAlignedObjectArrayI14btInternalEdgeED2Ev.exit: ; preds = %_ZN20btAlignedObjectArrayI20btInternalVertexPairED2Ev.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i3 = icmp ne ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i8, ptr %i.q, align 8, !range !27
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i4 = select i1 %.not.i.i.i3, i1 %i.s, i1 false
  br i1 %or.cond.i.i4, label %bb.f, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayI14btInternalEdgeED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #14
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayI14btInternalEdgeED2Ev.exit, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i5 = icmp ne ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i8, ptr %i.x, align 8, !range !27
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond.i.i6 = select i1 %.not.i.i.i5, i1 %i.z, i1 false
  br i1 %or.cond.i.i6, label %bb.h, label %_ZN20btAlignedObjectArrayIiED2Ev.exit7

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit7 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #14
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit7:           ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(172) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %6) local_unnamed_addr #6 align 2 {
bb.a:
  %.sroa.0.i = alloca [4 x float], align 4        ; 4 uses
  store float f0x7F7FFFFF, ptr %3, align 4, !tbaa !36
  store float f0xFF7FFFFF, ptr %4, align 4, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.7.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load float, ptr %4, align 4, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.o = phi float [ %.pre, %._crit_edge.loopexit ], [ f0xFF7FFFFF, %bb.a ] ; 2 uses
  %i.p = load float, ptr %3, align 4, !tbaa !36   ; 2 uses
  %i.q = fcmp ogt float %i.p, %i.o
  br i1 %i.q, label %bb.g, label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv ; 3 uses
  %7 = load float, ptr %i.s, align 4, !tbaa !36   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %8 = load float, ptr %i.t, align 4, !tbaa !36   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %9 = load float, ptr %i.u, align 4, !tbaa !36   ; 2 uses
  %i.v = load <4 x float>, ptr %i.g, align 4
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.x = load float, ptr %i.h, align 4, !tbaa !36
  %i.y = load float, ptr %i.f, align 4, !tbaa !36
  %i.z = load float, ptr %i.i, align 4, !tbaa !36
  %10 = fmul float %8, %i.z
  %11 = tail call float @llvm.fmuladd.f32(float %7, float %i.y, float %10)
  %i.aa = load float, ptr %i.j, align 4, !tbaa !36
  %12 = tail call noundef float @llvm.fmuladd.f32(float %9, float %i.aa, float %11)
  %13 = load <2 x float>, ptr %1, align 4, !tbaa !36 ; 2 uses
  %14 = load <2 x float>, ptr %i.e, align 4, !tbaa !36 ; 2 uses
  %15 = insertelement <2 x float> poison, float %8, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = shufflevector <2 x float> %13, <2 x float> %14, <2 x i32> <i32 1, i32 3>
  %18 = fmul <2 x float> %16, %17
  %i.ab = insertelement <2 x float> poison, float %7, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = shufflevector <2 x float> %13, <2 x float> %14, <2 x i32> <i32 0, i32 2>
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ad, <2 x float> %18)
  %i.af = insertelement <2 x float> poison, float %9, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x float> %i.w, float %i.x, i64 1
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ah, <2 x float> %i.ae)
  %i.aj = load <2 x float>, ptr %i.k, align 4, !tbaa !36
  %i.ak = fadd <2 x float> %i.ai, %i.aj           ; 4 uses
  %i.al = load float, ptr %i.l, align 4, !tbaa !36
  %i.am = fadd float %12, %i.al                   ; 2 uses
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.am, i64 0 ; 2 uses
  %i.an = load float, ptr %2, align 4, !tbaa !36
  %i.ao = load float, ptr %i.m, align 4, !tbaa !36
  %i.ap = extractelement <2 x float> %i.ak, i64 1
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ak, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.an, float %i.aq)
  %i.at = load float, ptr %i.n, align 4, !tbaa !36
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.at, float %i.as) ; 4 uses
  %i.av = load float, ptr %3, align 4, !tbaa !36
  %i.aw = fcmp olt float %i.au, %i.av
  br i1 %i.aw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.au, ptr %3, align 4, !tbaa !36
  store <2 x float> %i.ak, ptr %5, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ax = load float, ptr %4, align 4, !tbaa !36
  %i.ay = fcmp ogt float %i.au, %i.ax
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.au, ptr %4, align 4, !tbaa !36
  store <2 x float> %i.ak, ptr %6, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.7.0..sroa_idx26, align 4, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !85

bb.g:                                             ; preds = %._crit_edge
  store float %i.o, ptr %3, align 4, !tbaa !36
  store float %i.p, ptr %4, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9btHashMapI20btInternalVertexPair14btInternalEdgeE10growTablesERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 2 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 5 uses
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !39
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 9 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %.0.i.i.i57 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.p, %.0.i.i.i57
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !56
  %wide.load58 = load <4 x i32>, ptr %i.t, align 4, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !tbaa !56
  store <4 x i32> %wide.load58, ptr %i.u, align 4, !tbaa !56
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.prol
  %i.y = load i32, ptr %i.x, align 4, !tbaa !56
  store i32 %i.y, ptr %i.w, align 4, !tbaa !56
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !89

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !56
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !56
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !56
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !56
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !56
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !56
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.2
  %i.am = load i32, ptr %i.al, align 4, !tbaa !56
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !56
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph, !llvm.loop !90

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !38, !range !27, !noundef !34
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

end_hunk_0
