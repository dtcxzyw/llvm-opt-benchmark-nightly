inline.NumInlined: 334
inline.NumDeleted: 72
begin_hunk_0_@_ZN15btCompoundShape20recalculateLocalAabbEv:bb.a
bb.g:                                             ; preds = %bb.f
  store float %i.ac, ptr %i.g, align 4, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = load float, ptr %i.i, align 4, !tbaa !21
  %i.af = load float, ptr %i.j, align 4, !tbaa !21 ; 2 uses
  %i.ag = fcmp olt float %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.af, ptr %i.i, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = load float, ptr %i.k, align 8, !tbaa !21
  %i.ai = load float, ptr %i.l, align 4, !tbaa !21 ; 2 uses
  %i.aj = fcmp ogt float %i.ah, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store float %i.ai, ptr %i.k, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = load float, ptr %i.m, align 8, !tbaa !21
  %i.al = load float, ptr %i.n, align 4, !tbaa !21 ; 2 uses
  %i.am = fcmp olt float %i.ak, %i.al
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %i.al, ptr %i.m, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i32, ptr %i.c, align 4, !tbaa !19
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.b, label %._crit_edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: uwtable
define dso_local void @_ZNK15btCompoundShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load float, ptr %i.c, align 8, !tbaa !21 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load float, ptr %i.e, align 8, !tbaa !21 ; 2 uses
  %i.g = fsub float %i.d, %i.f
  %i.h = fmul float %i.g, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.h, i64 0
  %i.i = fadd float %i.d, %i.f
  %i.j = load <2 x float>, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  %i.k = load <2 x float>, ptr %i.b, align 8, !tbaa !21 ; 2 uses
  %i.l = fsub <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.l, splat (float 5.000000e-01)
  %i.n = fadd <2 x float> %i.j, %i.k
  %i.o = fmul <2 x float> %i.n, splat (float 5.000000e-01)
  %i.p = fmul float %i.i, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i14 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.p, i64 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.063.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.o, %bb.a ] ; 2 uses
  %.sroa.766.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.3.12.vec.insert.i.i14, %bb.a ]
  %.sroa.071.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.m, %bb.a ] ; 2 uses
  %.sroa.1590.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.3.12.vec.insert.i.i, %bb.a ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef float %i.u(ptr noundef nonnull align 8 dereferenceable(120) %0)
  %i.w = load ptr, ptr %0, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef float %i.y(ptr noundef nonnull align 8 dereferenceable(120) %0)
  %i.aa = load ptr, ptr %0, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef float %i.ac(ptr noundef nonnull align 8 dereferenceable(120) %0)
  %.sroa.071.0.vec.extract = extractelement <2 x float> %.sroa.071.0, i64 0
  %i.ae = fadd float %.sroa.071.0.vec.extract, %i.v ; 3 uses
  %.sroa.071.4.vec.extract = extractelement <2 x float> %.sroa.071.0, i64 1
  %i.af = fadd float %.sroa.071.4.vec.extract, %i.z ; 3 uses
  %.sroa.1590.8.vec.extract = extractelement <2 x float> %.sroa.1590.0, i64 0
  %i.ag = fadd float %.sroa.1590.8.vec.extract, %i.ad ; 3 uses
  %i.ah = load float, ptr %1, align 4, !tbaa !21, !noalias !40 ; 2 uses
  %i.ai = tail call noundef float @llvm.fabs.f32(float %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !21, !noalias !40 ; 2 uses
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !21, !noalias !40 ; 2 uses
  %i.ao = tail call noundef float @llvm.fabs.f32(float %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !21, !noalias !40 ; 2 uses
  %i.ar = tail call noundef float @llvm.fabs.f32(float %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !21, !noalias !40 ; 2 uses
  %i.au = tail call noundef float @llvm.fabs.f32(float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !21, !noalias !40 ; 2 uses
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load float, ptr %i.ay, align 4, !tbaa !21, !noalias !40 ; 2 uses
  %i.ba = tail call noundef float @llvm.fabs.f32(float %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !21, !noalias !40 ; 2 uses
  %i.bd = tail call noundef float @llvm.fabs.f32(float %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load float, ptr %i.be, align 4, !tbaa !21, !noalias !40 ; 2 uses
  %i.bg = tail call noundef float @llvm.fabs.f32(float %i.bf)
  %.sroa.063.0.vec.extract = extractelement <2 x float> %.sroa.063.0, i64 0 ; 3 uses
  %.sroa.063.4.vec.extract = extractelement <2 x float> %.sroa.063.0, i64 1 ; 3 uses
  %i.bh = fmul float %.sroa.063.4.vec.extract, %i.ak
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.ah, float %.sroa.063.0.vec.extract, float %i.bh)
  %.sroa.766.8.vec.extract = extractelement <2 x float> %.sroa.766.0, i64 0 ; 3 uses
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %.sroa.766.8.vec.extract, float %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !21
  %i.bm = fadd float %i.bj, %i.bl                 ; 2 uses
  %i.bn = fmul float %.sroa.063.4.vec.extract, %i.at
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.aq, float %.sroa.063.0.vec.extract, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %.sroa.766.8.vec.extract, float %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.br = load float, ptr %i.bq, align 4, !tbaa !21
  %i.bs = fadd float %i.bp, %i.br                 ; 2 uses
  %i.bt = fmul float %.sroa.063.4.vec.extract, %i.bc
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.az, float %.sroa.063.0.vec.extract, float %i.bt)
  %i.bv = tail call noundef float @llvm.fmuladd.f32(float %i.bf, float %.sroa.766.8.vec.extract, float %i.bu)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !21
  %i.by = fadd float %i.bv, %i.bx                 ; 2 uses
  %i.bz = fmul float %i.af, %i.al
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ae, float %i.bz)
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.ag, float %i.ca) ; 2 uses
  %i.cc = fmul float %i.af, %i.au
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ae, float %i.cc)
  %i.ce = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.ag, float %i.cd) ; 2 uses
  %i.cf = fmul float %i.af, %i.bd
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ae, float %i.cf)
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.ag, float %i.cg) ; 2 uses
  %i.ci = fsub float %i.bm, %i.cb
  %i.cj = fsub float %i.bs, %i.ce
  %i.ck = fsub float %i.by, %i.ch
  %.sroa.0.0.vec.insert.i22 = insertelement <2 x float> poison, float %i.ci, i64 0
  %.sroa.0.4.vec.insert.i23 = insertelement <2 x float> %.sroa.0.0.vec.insert.i22, float %i.cj, i64 1
  %.sroa.3.12.vec.insert.i24 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ck, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i23, ptr %2, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i24, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !32
  %i.cl = fadd float %i.cb, %i.bm
  %i.cm = fadd float %i.ce, %i.bs
  %i.cn = fadd float %i.ch, %i.by
  %.sroa.0.0.vec.insert.i27 = insertelement <2 x float> poison, float %i.cl, i64 0
  %.sroa.0.4.vec.insert.i28 = insertelement <2 x float> %.sroa.0.0.vec.insert.i27, float %i.cm, i64 1
  %.sroa.3.12.vec.insert.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cn, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i28, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i29, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !32
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK15btCompoundShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(120) %0, float noundef %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 12)) %2) unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %class.btTransform, align 4         ; 9 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store float 1.000000e+00, ptr %3, align 4, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.f = load ptr, ptr %0, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = fdiv float %1, 1.200000e+01
  %i.l = load <2 x float>, ptr %5, align 8, !tbaa !21
  %i.m = load <2 x float>, ptr %4, align 8, !tbaa !21
  %6 = load <2 x float>, ptr %i.i, align 4, !tbaa !21
  %7 = load <2 x float>, ptr %i.j, align 4, !tbaa !21
  %8 = fsub <2 x float> %i.l, %i.m
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 0>
  %10 = fsub <2 x float> %6, %7
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 0>
  %12 = fmul <3 x float> %9, splat (float 5.000000e-01)
  %13 = fmul <3 x float> %11, splat (float 5.000000e-01)
  %14 = fmul <3 x float> %12, splat (float 2.000000e+00) ; 2 uses
  %15 = fmul <3 x float> %13, splat (float 2.000000e+00) ; 2 uses
  %16 = fmul <3 x float> %15, %15
  %17 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %14, <3 x float> %14, <3 x float> %16)
  %18 = insertelement <3 x float> poison, float %i.k, i64 0
  %19 = shufflevector <3 x float> %18, <3 x float> poison, <3 x i32> zeroinitializer
  %20 = fmul <3 x float> %19, %17
  store <3 x float> %20, ptr %2, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: uwtable
define dso_local void @_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %class.btMatrix3x3, align 4         ; 14 uses
  %5 = alloca %class.btVector3, align 16          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.0169173 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.ac, %bb.b ]
  %i.g = phi <4 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.ab, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.h = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !21 ; 2 uses
  %i.l = load <3 x float>, ptr %i.i, align 4, !tbaa !21
  %i.m = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.n = insertelement <4 x float> poison, float %i.k, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = fadd <4 x float> %i.g, %i.p
  %i.r = fadd float %.0169173, %i.k
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.v = load float, ptr %i.u, align 4, !tbaa !21 ; 2 uses
  %i.w = load <3 x float>, ptr %i.t, align 4, !tbaa !21
  %i.x = shufflevector <3 x float> %i.w, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.y = insertelement <4 x float> poison, float %i.v, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = fmul <4 x float> %i.x, %i.z
  %i.ab = fadd <4 x float> %i.q, %i.aa            ; 3 uses
  %i.ac = fadd float %i.r, %i.v                   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0169173.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod201 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod201)
  %i.ad = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ag = load float, ptr %i.af, align 4, !tbaa !21 ; 2 uses
  %i.ah = load <3 x float>, ptr %i.ae, align 4, !tbaa !21
  %i.ai = shufflevector <3 x float> %i.ah, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.aj = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.al = fmul <4 x float> %i.ai, %i.ak
  %i.am = fadd <4 x float> %.epil.init, %i.al
  %i.an = fadd float %.0169173.epil.init, %i.ag
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0169.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.epil.preheader ]
  %i.ao = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ], [ %i.am, %.epil.preheader ]
  %i.ap = fdiv float 1.000000e+00, %.0169.lcssa
  %i.aq = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = fmul <4 x float> %i.ao, %i.ar           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 48
  %6 = shufflevector <4 x float> %i.as, <4 x float> poison, <3 x i32> <i32 0, i32 2, i32 1>
  store <3 x float> %6, ptr %i.at, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float 0.000000e+00, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  br i1 %i.c, label %.lr.ph180, label %._crit_edge181

.lr.ph180:                                        ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %wide.trip.count189 = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph180, %bb.c
  %i.bd = phi float [ 0.000000e+00, %.lr.ph180 ], [ %i.fp, %bb.c ]
  %i.be = phi float [ 0.000000e+00, %.lr.ph180 ], [ %i.fn, %bb.c ]
  %i.bf = phi float [ 0.000000e+00, %.lr.ph180 ], [ %i.fi, %bb.c ]
  %indvars.iv186 = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next187, %bb.c ] ; 4 uses
  %i.bg = phi <4 x float> [ zeroinitializer, %.lr.ph180 ], [ %i.fq, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw [88 x i8], ptr %i.bh, i64 %indvars.iv186
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !33 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv186 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !21
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, float noundef %i.bm, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.bq = load ptr, ptr %i.bc, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw [88 x i8], ptr %i.bq, i64 %indvars.iv186 ; 9 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 36
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.ca = load float, ptr %i.bx, align 4, !tbaa !21, !noalias !43 ; 4 uses
  %i.cb = load float, ptr %i.by, align 4, !tbaa !21, !noalias !43 ; 2 uses
  %i.cc = load float, ptr %i.bz, align 4, !tbaa !21, !noalias !43 ; 4 uses
  %i.cd = load <4 x float>, ptr %5, align 16      ; 3 uses
  %i.ce = load float, ptr %i.ba, align 4, !tbaa !21
  %i.cf = load float, ptr %i.bb, align 4, !tbaa !21
  %i.cg = load float, ptr %i.bl, align 4, !tbaa !21 ; 3 uses
  %i.ch = load <3 x float>, ptr %i.bs, align 4, !tbaa !21
  %i.ci = shufflevector <3 x float> %i.ch, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.cj = fsub <4 x float> %i.ci, %i.as           ; 6 uses
  %i.ck = load <2 x float>, ptr %i.br, align 4, !tbaa !21, !noalias !43 ; 3 uses
  %i.cl = load float, ptr %i.bv, align 4, !tbaa !21, !noalias !43 ; 3 uses
  %i.cm = load <2 x float>, ptr %i.bt, align 4, !tbaa !21, !noalias !43
  %i.cn = load <2 x float>, ptr %i.bu, align 4, !tbaa !21, !noalias !43 ; 3 uses
  %i.co = load float, ptr %i.bw, align 4, !tbaa !21, !noalias !43 ; 2 uses
  %i.cp = shufflevector <2 x float> %i.ck, <2 x float> %i.cn, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cq = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 4, i32 poison> ; 2 uses
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ct = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cu = fmul <4 x float> %i.cs, %i.ct           ; 4 uses
  %i.cv = shufflevector <2 x float> %i.ck, <2 x float> %i.cn, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 5, i32 poison> ; 2 uses
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cy = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cz = fmul <4 x float> %i.cx, %i.cy           ; 4 uses
  %i.da = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.db = insertelement <4 x float> %i.da, float %i.cc, i64 1
  %i.dc = insertelement <4 x float> %i.db, float %i.cb, i64 2
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.de = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.df = fmul <4 x float> %i.dd, %i.de           ; 4 uses
  %i.dg = extractelement <4 x float> %i.cz, i64 0
  %i.dh = fmul float %i.cl, %i.dg
  %i.di = extractelement <4 x float> %i.cu, i64 0
  %i.dj = extractelement <2 x float> %i.ck, i64 0 ; 3 uses
  %i.dk = call float @llvm.fmuladd.f32(float %i.di, float %i.dj, float %i.dh)
  %i.dl = extractelement <4 x float> %i.df, i64 0
  %i.dm = call noundef float @llvm.fmuladd.f32(float %i.dl, float %i.ca, float %i.dk)
  %i.dn = extractelement <4 x float> %i.cz, i64 2 ; 2 uses
  %i.do = fmul float %i.cl, %i.dn
  %i.dp = extractelement <4 x float> %i.cu, i64 2 ; 2 uses
  %i.dq = call float @llvm.fmuladd.f32(float %i.dp, float %i.dj, float %i.do)
  %i.dr = extractelement <4 x float> %i.df, i64 2 ; 2 uses
  %i.ds = call noundef float @llvm.fmuladd.f32(float %i.dr, float %i.ca, float %i.dq)
  %i.dt = extractelement <4 x float> %i.cz, i64 1 ; 2 uses
  %i.du = fmul float %i.cl, %i.dt
  %i.dv = extractelement <4 x float> %i.cu, i64 1 ; 2 uses
  %i.dw = call float @llvm.fmuladd.f32(float %i.dv, float %i.dj, float %i.du)
  %i.dx = extractelement <4 x float> %i.df, i64 1 ; 2 uses
  %i.dy = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.ca, float %i.dw)
  %i.dz = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.ea = fmul <4 x float> %i.dz, %i.cz
  %i.eb = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.ec = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.eb, <4 x float> %i.ea)
  %i.ed = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.ee = insertelement <4 x float> %i.ed, float %i.cb, i64 1
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.eg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.ef, <4 x float> %i.ec)
  %i.eh = fmul float %i.co, %i.dn
  %i.ei = extractelement <2 x float> %i.cn, i64 0 ; 2 uses
  %i.ej = call float @llvm.fmuladd.f32(float %i.dp, float %i.ei, float %i.eh)
  %i.ek = call noundef float @llvm.fmuladd.f32(float %i.dr, float %i.cc, float %i.ej)
  %i.el = fmul float %i.co, %i.dt
  %i.em = call float @llvm.fmuladd.f32(float %i.dv, float %i.ei, float %i.el)
  %i.en = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.cc, float %i.em)
  %i.eo = fadd float %i.bf, %i.dm
  %i.ep = fadd float %i.ds, %i.be
  %i.eq = fadd float %i.dy, %i.bd
  %i.er = fadd <4 x float> %i.eg, %i.bg
  %i.es = fadd float %i.ek, %i.ce
  %i.et = fadd float %i.en, %i.cf
  %i.eu = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.ev = fmul <4 x float> %i.cj, %i.eu           ; 2 uses
  %i.ew = extractelement <4 x float> %i.ev, i64 2
  %i.ex = extractelement <4 x float> %i.cj, i64 0 ; 2 uses
  %i.ey = call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.ew)
  %i.ez = extractelement <4 x float> %i.cj, i64 1 ; 4 uses
  %i.fa = call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.ey) ; 3 uses
  %foldExtExtBinop = fmul <4 x float> %i.cj, %i.cj
  %i.fb = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.fc = fsub float %i.fa, %i.fb
  %i.fd = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.fa, i64 2
  %i.fe = fsub <4 x float> %i.fd, %i.ev
  %i.ff = fmul float %i.ez, %i.ez
  %i.fg = fsub float %i.fa, %i.ff
  %i.fh = fmul float %i.fc, %i.cg
  %i.fi = fadd float %i.eo, %i.fh                 ; 2 uses
  store float %i.fi, ptr %4, align 4, !tbaa !21
  %i.fj = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = fmul <4 x float> %i.fe, %i.fk           ; 4 uses
  %i.fm = extractelement <4 x float> %i.fl, i64 3
  %i.fn = fadd float %i.ep, %i.fm                 ; 2 uses
  store float %i.fn, ptr %i.au, align 4, !tbaa !21
  %i.fo = extractelement <4 x float> %i.fl, i64 0
  %i.fp = fadd float %i.eq, %i.fo                 ; 2 uses
  store float %i.fp, ptr %i.av, align 4, !tbaa !21
  %i.fq = fadd <4 x float> %i.er, %i.fl           ; 5 uses
  %i.fr = extractelement <4 x float> %i.fq, i64 3
  store float %i.fr, ptr %i.aw, align 4, !tbaa !21
  %i.fs = extractelement <4 x float> %i.fq, i64 2
  store float %i.fs, ptr %i.ax, align 4, !tbaa !21
  %i.ft = extractelement <4 x float> %i.fq, i64 1
  store float %i.ft, ptr %i.ay, align 4, !tbaa !21
  %i.fu = fmul float %i.fg, %i.cg
  %i.fv = extractelement <4 x float> %i.fq, i64 0
  store float %i.fv, ptr %i.az, align 4, !tbaa !21
  %i.fw = extractelement <4 x float> %i.fl, i64 1
  %i.fx = fadd float %i.es, %i.fw
  store float %i.fx, ptr %i.ba, align 4, !tbaa !21
  %i.fy = fadd float %i.et, %i.fu
  store float %i.fy, ptr %i.bb, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %._crit_edge181, label %bb.c

._crit_edge181:                                   ; preds = %bb.c, %._crit_edge
  call void @_ZN11btMatrix3x311diagonalizeERS_fi(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef f0x3727C5AC, i32 noundef 20)
  %i.fz = load float, ptr %4, align 4, !tbaa !21
  store float %i.fz, ptr %3, align 4, !tbaa !21
  %i.ga = load float, ptr %i.ax, align 4, !tbaa !21
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.ga, ptr %i.gb, align 4, !tbaa !21
  %i.gc = load float, ptr %i.bb, align 4, !tbaa !21
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ge = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gc, i64 0
  store <2 x float> %i.ge, ptr %i.gd, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN11btMatrix3x311diagonalizeERS_fi(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store float 1.000000e+00, ptr %1, align 4, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 4, !tbaa !21
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11btMatrix3x311diagonalizeERS_fi:bb.a
  %i.p = fcmp ogt float %i.o, %i.n                ; 3 uses
  %.0104 = select i1 %i.p, i64 1, i64 2
  %.0102 = select i1 %i.p, float %i.o, float %i.n ; 2 uses
  %.099 = select i1 %i.p, i64 2, i64 1
  %i.q = load float, ptr %i.g, align 4, !tbaa !21
  %i.r = tail call noundef float @llvm.fabs.f32(float %i.q) ; 2 uses
  %i.s = fcmp ogt float %i.r, %.0102
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1105 = phi i64 [ 0, %bb.c ], [ %.0104, %bb.b ] ; 3 uses
  %.1103 = phi float [ %i.r, %bb.c ], [ %.0102, %bb.b ] ; 2 uses
  %.1100 = phi i64 [ 2, %bb.c ], [ %.099, %bb.b ] ; 7 uses
  %.098 = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]      ; 7 uses
  %i.t = load float, ptr %0, align 4, !tbaa !21
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.t)
  %i.v = load float, ptr %i.h, align 4, !tbaa !21
  %i.w = tail call noundef float @llvm.fabs.f32(float %i.v)
  %i.x = fadd float %i.u, %i.w
  %i.y = load float, ptr %i.i, align 4, !tbaa !21
  %i.z = tail call noundef float @llvm.fabs.f32(float %i.y)
  %i.aa = fadd float %i.x, %i.z
  %i.ab = fmul float %2, %i.aa                    ; 2 uses
  %i.ac = fcmp ugt float %.1103, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = fmul float %i.ab, f0x34000000
  %i.ae = fcmp ugt float %.1103, %i.ad
  br i1 %i.ae, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %.0118, %bb.d ], [ 1, %bb.e ]   ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.1100 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !21 ; 3 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.1100 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.1100 ; 3 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.098 ; 3 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !21
  %i.an = fsub float %i.ak, %i.am
  %i.ao = fmul float %i.ah, 2.000000e+00
  %i.ap = fdiv float %i.an, %i.ao                 ; 5 uses
  %i.aq = fmul float %i.ap, %i.ap                 ; 4 uses
  %i.ar = fmul float %i.aq, %i.aq
  %i.as = fcmp olt float %i.ar, f0x4CA00000
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = fcmp ult float %i.ap, 0.000000e+00
  %i.au = fadd float %i.aq, 1.000000e+00
  %sqrt115 = tail call float @llvm.sqrt.f32(float %i.au) ; 2 uses
  %i.av = fneg float %sqrt115
  %.pn.p = select i1 %i.at, float %i.av, float %sqrt115
  %.pn = fadd float %i.ap, %.pn.p
  %i.aw = fdiv float 1.000000e+00, %.pn           ; 4 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float 1.000000e+00)
  %sqrt116 = tail call float @llvm.sqrt.f32(float %i.ax)
  %i.ay = fdiv float 1.000000e+00, %sqrt116       ; 2 uses
  %i.az = fmul float %i.aw, %i.ay
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ba = fdiv float 5.000000e-01, %i.aq
  %i.bb = fadd float %i.ba, 2.000000e+00
  %i.bc = fmul float %i.ap, %i.bb
  %i.bd = fdiv float 1.000000e+00, %i.bc          ; 4 uses
  %i.be = fmul float %i.bd, -5.000000e-01
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bd, float 1.000000e+00) ; 2 uses
  %i.bg = fmul float %i.bd, %i.bf
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0101 = phi float [ %i.aw, %bb.g ], [ %i.bd, %bb.h ] ; 2 uses
  %.096 = phi float [ %i.ay, %bb.g ], [ %i.bf, %bb.h ] ; 8 uses
  %.095 = phi float [ %i.az, %bb.g ], [ %i.bg, %bb.h ] ; 8 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.098
  store float 0.000000e+00, ptr %i.bh, align 4, !tbaa !21
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !21
  %i.bi = load float, ptr %i.al, align 4, !tbaa !21
  %i.bj = fneg float %.0101
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.ah, float %i.bi)
  store float %i.bk, ptr %i.al, align 4, !tbaa !21
  %i.bl = load float, ptr %i.aj, align 4, !tbaa !21
  %i.bm = tail call float @llvm.fmuladd.f32(float %.0101, float %i.ah, float %i.bl)
  store float %i.bm, ptr %i.aj, align 4, !tbaa !21
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.1105 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.098 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !21 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.1100 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !21 ; 2 uses
  %i.bs = fneg float %i.br
  %i.bt = fmul float %.095, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %.096, float %i.bp, float %i.bt) ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.1105
  store float %i.bu, ptr %i.bv, align 4, !tbaa !21
  store float %i.bu, ptr %i.bo, align 4, !tbaa !21
  %i.bw = fmul float %.095, %i.bp
  %i.bx = tail call float @llvm.fmuladd.f32(float %.096, float %i.br, float %i.bw) ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.1105
  store float %i.bx, ptr %i.by, align 4, !tbaa !21
  store float %i.bx, ptr %i.bq, align 4, !tbaa !21
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.098 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !21 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1100 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !21 ; 2 uses
  %i.cd = fneg float %i.cc
  %i.ce = fmul float %.095, %i.cd
  %i.cf = tail call float @llvm.fmuladd.f32(float %.096, float %i.ca, float %i.ce)
  store float %i.cf, ptr %i.bz, align 4, !tbaa !21
  %i.cg = fmul float %.095, %i.ca
  %i.ch = tail call float @llvm.fmuladd.f32(float %.096, float %i.cc, float %i.cg)
  store float %i.ch, ptr %i.cb, align 4, !tbaa !21
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.098 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !21 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.1100 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !21 ; 2 uses
  %i.cm = fneg float %i.cl
  %i.cn = fmul float %.095, %i.cm
  %i.co = tail call float @llvm.fmuladd.f32(float %.096, float %i.cj, float %i.cn)
  store float %i.co, ptr %i.ci, align 4, !tbaa !21
  %i.cp = fmul float %.095, %i.cj
  %i.cq = tail call float @llvm.fmuladd.f32(float %.096, float %i.cl, float %i.cp)
  store float %i.cq, ptr %i.ck, align 4, !tbaa !21
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.098 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !21 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.1100 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !21 ; 2 uses
  %i.cv = fneg float %i.cu
  %i.cw = fmul float %.095, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %.096, float %i.cs, float %i.cw)
  store float %i.cx, ptr %i.cr, align 4, !tbaa !21
  %i.cy = fmul float %.095, %i.cs
  %i.cz = tail call float @llvm.fmuladd.f32(float %.096, float %i.cu, float %i.cy)
  store float %i.cz, ptr %i.ct, align 4, !tbaa !21
  %i.da = add nsw i32 %.1, -1
  %i.db = icmp sgt i32 %.1, 1
  br i1 %i.db, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.e, %bb.a
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN15btCompoundShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !31
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK15btCompoundShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15btCompoundShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN15btCompoundShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(120) %0, float noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %1, ptr %i.a, align 4, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK15btCompoundShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load float, ptr %i.a, align 4, !tbaa !46
  ret float %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #6

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 16}
!9 = !{!"_ZTS16btCollisionShape", !5, i64 8, !10, i64 16}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!14, !17, i64 24}
!14 = !{!"_ZTS20btAlignedObjectArrayI20btCompoundShapeChildE", !15, i64 0, !5, i64 4, !5, i64 8, !16, i64 16, !17, i64 24}
!15 = !{!"_ZTS18btAlignedAllocatorI20btCompoundShapeChildLj16EE"}
!16 = !{!"p1 _ZTS20btCompoundShapeChild", !10, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{!14, !16, i64 16}
!19 = !{!14, !5, i64 4}
!20 = !{!14, !5, i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !6, i64 0}
!23 = !{!24, !26, i64 88}
!24 = !{!"_ZTS15btCompoundShape", !9, i64 0, !14, i64 24, !25, i64 56, !25, i64 72, !26, i64 88, !5, i64 96, !22, i64 100, !25, i64 104}
!25 = !{!"_ZTS9btVector3", !6, i64 0}
!26 = !{!"p1 _ZTS6btDbvt", !10, i64 0}
!27 = !{!24, !5, i64 96}
!28 = !{!9, !5, i64 8}
!29 = !{i8 0, i8 2}
!30 = !{ptr @_ZN15btCompoundShapeD2Ev}
!31 = !{i64 0, i64 16, !32}
!32 = !{!6, !6, i64 0}
!33 = !{!34, !37, i64 64}
!34 = !{!"_ZTS20btCompoundShapeChild", !35, i64 0, !37, i64 64, !5, i64 72, !22, i64 76, !38, i64 80}
!35 = !{!"_ZTS11btTransform", !36, i64 0, !25, i64 48}
!36 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!37 = !{!"p1 _ZTS16btCollisionShape", !10, i64 0}
!38 = !{!"p1 _ZTS10btDbvtNode", !10, i64 0}
!39 = !{!34, !38, i64 80}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK11btMatrix3x38absoluteEv: argument 0"}
!42 = distinct !{!42, !"_ZNK11btMatrix3x38absoluteEv"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!45 = distinct !{!45, !"_ZNK11btMatrix3x39transposeEv"}
!46 = !{!24, !22, i64 100}
end_hunk_1
