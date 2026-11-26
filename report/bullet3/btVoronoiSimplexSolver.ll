Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btVoronoiSimplexSolver?download=true
inline.NumInlined: 154
inline.NumDeleted: 20
begin_hunk_0_@_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult:bb.a
  %i.es = fsub float %.sroa.0225.0.copyload, %i.aw ; 2 uses
  %i.et = fsub float %.sroa.6228.0.copyload, %i.av ; 2 uses
  %i.eu = fsub float %.sroa.8232.0.copyload, %i.z ; 2 uses
  %i.ev = fmul float %i.et, %i.et
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.es, float %i.es, float %i.ev)
  %i.ex = tail call noundef float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.ew) ; 2 uses
  %i.ey = fcmp olt float %i.ex, f0x7F7FFFFF
  br i1 %i.ey, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ez = load <4 x float>, ptr %7, align 16, !tbaa !17
  store <4 x float> %i.ez, ptr %6, align 4, !tbaa !17
  %i.fa = load i8, ptr %i.a, align 16
  %i.fb = and i8 %i.fa, 7
  %i.fc = or disjoint i8 %i.fb, %i.f
  store i8 %i.fc, ptr %i.d, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.fh = load <2 x float>, ptr %i.fd, align 4, !tbaa !21
  store <2 x float> %i.fh, ptr %i.fg, align 4, !tbaa !21
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.ff, ptr %i.fi, align 4, !tbaa !21
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float 0.000000e+00, ptr %i.fj, align 4, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.1 = phi float [ f0x7F7FFFFF, %bb.d ], [ %i.ex, %bb.f ], [ f0x7F7FFFFF, %bb.e ] ; 3 uses
  %i.fk = extractelement <2 x i1> %i.eq, i64 1
  br i1 %i.fk, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fl = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %.sroa.0207.0.copyload = load float, ptr %7, align 16, !tbaa !17
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.6210.0.copyload = load float, ptr %.sroa.6210.0..sroa_idx, align 4, !tbaa !17
  %.sroa.8214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8214.0.copyload = load float, ptr %.sroa.8214.0..sroa_idx, align 8, !tbaa !17
  %i.fm = load float, ptr %1, align 4, !tbaa !21
  %i.fn = fsub float %.sroa.0207.0.copyload, %i.fm ; 2 uses
  %i.fo = load float, ptr %i.k, align 4, !tbaa !21
  %i.fp = fsub float %.sroa.6210.0.copyload, %i.fo ; 2 uses
  %i.fq = load float, ptr %i.l, align 4, !tbaa !21
  %i.fr = fsub float %.sroa.8214.0.copyload, %i.fq ; 2 uses
  %i.fs = fmul float %i.fp, %i.fp
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.fn, float %i.fs)
  %i.fu = tail call noundef float @llvm.fmuladd.f32(float %i.fr, float %i.fr, float %i.ft) ; 2 uses
  %i.fv = fcmp olt float %i.fu, %.1
  br i1 %i.fv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fw = load <4 x float>, ptr %7, align 16, !tbaa !17
  store <4 x float> %i.fw, ptr %6, align 4, !tbaa !17
  %i.fx = load i8, ptr %i.d, align 4
  %i.fy = and i8 %i.fx, -16
  %i.fz = load i8, ptr %i.a, align 16             ; 2 uses
  %i.ga = and i8 %i.fz, 1
  %i.gb = shl i8 %i.fz, 1
  %i.gc = and i8 %i.gb, 12
  %i.gd = or disjoint i8 %i.ga, %i.gc
  %i.ge = or disjoint i8 %i.gd, %i.fy
  store i8 %i.ge, ptr %i.d, align 4
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !21
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.gg, ptr %i.gi, align 4, !tbaa !21
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float 0.000000e+00, ptr %i.gj, align 4, !tbaa !21
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.gl = load <2 x float>, ptr %i.gh, align 8, !tbaa !21
  store <2 x float> %i.gl, ptr %i.gk, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.3 = phi float [ %.1, %bb.g ], [ %i.fu, %bb.i ], [ %.1, %bb.h ] ; 3 uses
  %i.gm = extractelement <2 x i1> %i.eq, i64 0
  br i1 %i.gm, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gn = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %.sroa.0189.0.copyload = load float, ptr %7, align 16, !tbaa !17
  %.sroa.6192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.6192.0.copyload = load float, ptr %.sroa.6192.0..sroa_idx, align 4, !tbaa !17
  %.sroa.8196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8196.0.copyload = load float, ptr %.sroa.8196.0..sroa_idx, align 8, !tbaa !17
  %i.go = load float, ptr %1, align 4, !tbaa !21
  %i.gp = fsub float %.sroa.0189.0.copyload, %i.go ; 2 uses
  %i.gq = load float, ptr %i.k, align 4, !tbaa !21
  %i.gr = fsub float %.sroa.6192.0.copyload, %i.gq ; 2 uses
  %i.gs = load float, ptr %i.l, align 4, !tbaa !21
  %i.gt = fsub float %.sroa.8196.0.copyload, %i.gs ; 2 uses
  %i.gu = fmul float %i.gr, %i.gr
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.gp, float %i.gu)
  %i.gw = tail call noundef float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %i.gv) ; 2 uses
  %i.gx = fcmp olt float %i.gw, %.3
  br i1 %i.gx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gy = load <4 x float>, ptr %7, align 16, !tbaa !17
  store <4 x float> %i.gy, ptr %6, align 4, !tbaa !17
  %i.gz = load i8, ptr %i.d, align 4
  %i.ha = and i8 %i.gz, -16
  %i.hb = load i8, ptr %i.a, align 16             ; 3 uses
  %i.hc = and i8 %i.hb, 1
  %i.hd = lshr i8 %i.hb, 1
  %i.he = and i8 %i.hd, 2
  %i.hf = shl i8 %i.hb, 2
  %i.hg = and i8 %i.hf, 8
  %i.hh = or disjoint i8 %i.hc, %i.he
  %i.hi = or disjoint i8 %i.hh, %i.hg
  %i.hj = or disjoint i8 %i.hi, %i.ha
  store i8 %i.hj, ptr %i.d, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !21
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !21
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hp = load float, ptr %i.ho, align 8, !tbaa !21
  %i.hq = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.hl, ptr %i.hq, align 4, !tbaa !21
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.hn, ptr %i.hr, align 4, !tbaa !21
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float 0.000000e+00, ptr %i.hs, align 4, !tbaa !21
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float %i.hp, ptr %i.ht, align 4, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.5 = phi float [ %.3, %bb.j ], [ %i.gw, %bb.l ], [ %.3, %bb.k ]
  br i1 %.not127, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hu = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %.sroa.0174.0.copyload = load float, ptr %7, align 16, !tbaa !17
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !17
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !17
  %i.hv = load float, ptr %1, align 4, !tbaa !21
  %i.hw = fsub float %.sroa.0174.0.copyload, %i.hv ; 2 uses
  %i.hx = load float, ptr %i.k, align 4, !tbaa !21
  %i.hy = fsub float %.sroa.6.0.copyload, %i.hx   ; 2 uses
  %i.hz = load float, ptr %i.l, align 4, !tbaa !21
  %i.ia = fsub float %.sroa.8.0.copyload, %i.hz   ; 2 uses
  %i.ib = fmul float %i.hy, %i.hy
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float %i.ib)
  %i.id = tail call noundef float @llvm.fmuladd.f32(float %i.ia, float %i.ia, float %i.ic)
  %i.ie = fcmp olt float %i.id, %.5
  br i1 %i.ie, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.if = load <4 x float>, ptr %7, align 16, !tbaa !17
  store <4 x float> %i.if, ptr %6, align 4, !tbaa !17
  %i.ig = load i8, ptr %i.d, align 4
  %i.ih = and i8 %i.ig, -16
  %i.ii = load i8, ptr %i.a, align 16             ; 3 uses
  %i.ij = shl i8 %i.ii, 1
  %i.ik = and i8 %i.ij, 2
  %i.il = and i8 %i.ii, 4
  %i.im = shl i8 %i.ii, 2
  %i.in = and i8 %i.im, 8
  %i.io = or disjoint i8 %i.il, %i.ik
  %i.ip = or disjoint i8 %i.io, %i.in
  %i.iq = or disjoint i8 %i.ip, %i.ih
  store i8 %i.iq, ptr %i.d, align 4
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.is = load float, ptr %i.ir, align 4, !tbaa !21
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float 0.000000e+00, ptr %i.iu, align 4, !tbaa !21
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.is, ptr %i.iv, align 4, !tbaa !21
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ix = load <2 x float>, ptr %i.it, align 8, !tbaa !21
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.iy, ptr %i.iw, align 4, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.c, %bb.b
  %.1117 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  ret i1 %.1117
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN22btVoronoiSimplexSolver7closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(357) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv(ptr noundef nonnull align 4 dereferenceable(357) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !18
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN22btVoronoiSimplexSolver9maxVertexEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(357) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !16     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %1 = and i64 %wide.trip.count, 7                ; 2 uses
  %2 = icmp eq i64 %1, 0
  %3 = select i1 %2, i64 8, i64 %1
  %n.vec = sub nsw i64 %wide.trip.count, %3       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %93, %vector.body ] ; 3 uses
  %vec.phi13 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %94, %vector.body ] ; 3 uses
  %4 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index ; 3 uses
  %5 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %7 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %9 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %11 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %13 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index ; 3 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 80
  %15 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index ; 3 uses
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %17 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index ; 3 uses
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 112
  %19 = load float, ptr %4, align 4, !tbaa !21
  %20 = load float, ptr %6, align 4, !tbaa !21
  %21 = load float, ptr %8, align 4, !tbaa !21
  %22 = load float, ptr %10, align 4, !tbaa !21
  %23 = insertelement <4 x float> poison, float %19, i64 0
  %24 = insertelement <4 x float> %23, float %20, i64 1
  %25 = insertelement <4 x float> %24, float %21, i64 2
  %26 = insertelement <4 x float> %25, float %22, i64 3 ; 2 uses
  %27 = load float, ptr %12, align 4, !tbaa !21
  %28 = load float, ptr %14, align 4, !tbaa !21
  %29 = load float, ptr %16, align 4, !tbaa !21
  %30 = load float, ptr %18, align 4, !tbaa !21
  %31 = insertelement <4 x float> poison, float %27, i64 0
  %32 = insertelement <4 x float> %31, float %28, i64 1
  %33 = insertelement <4 x float> %32, float %29, i64 2
  %34 = insertelement <4 x float> %33, float %30, i64 3 ; 2 uses
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 20
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 36
  %38 = getelementptr inbounds nuw i8, ptr %9, i64 52
  %39 = getelementptr inbounds nuw i8, ptr %11, i64 68
  %40 = getelementptr inbounds nuw i8, ptr %13, i64 84
  %41 = getelementptr inbounds nuw i8, ptr %15, i64 100
  %42 = getelementptr inbounds nuw i8, ptr %17, i64 116
  %43 = load float, ptr %35, align 4, !tbaa !21
  %44 = load float, ptr %36, align 4, !tbaa !21
  %45 = load float, ptr %37, align 4, !tbaa !21
  %46 = load float, ptr %38, align 4, !tbaa !21
  %47 = insertelement <4 x float> poison, float %43, i64 0
  %48 = insertelement <4 x float> %47, float %44, i64 1
  %49 = insertelement <4 x float> %48, float %45, i64 2
  %50 = insertelement <4 x float> %49, float %46, i64 3 ; 2 uses
  %51 = load float, ptr %39, align 4, !tbaa !21
  %52 = load float, ptr %40, align 4, !tbaa !21
  %53 = load float, ptr %41, align 4, !tbaa !21
  %54 = load float, ptr %42, align 4, !tbaa !21
  %55 = insertelement <4 x float> poison, float %51, i64 0
  %56 = insertelement <4 x float> %55, float %52, i64 1
  %57 = insertelement <4 x float> %56, float %53, i64 2
  %58 = insertelement <4 x float> %57, float %54, i64 3 ; 2 uses
  %59 = fmul <4 x float> %50, %50
  %60 = fmul <4 x float> %58, %58
  %61 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %26, <4 x float> %59)
  %62 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %34, <4 x float> %34, <4 x float> %60)
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %64 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %66 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %67 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %68 = getelementptr inbounds nuw i8, ptr %13, i64 88
  %69 = getelementptr inbounds nuw i8, ptr %15, i64 104
  %70 = getelementptr inbounds nuw i8, ptr %17, i64 120
  %71 = load float, ptr %63, align 4, !tbaa !21
  %72 = load float, ptr %64, align 4, !tbaa !21
  %73 = load float, ptr %65, align 4, !tbaa !21
  %74 = load float, ptr %66, align 4, !tbaa !21
  %75 = insertelement <4 x float> poison, float %71, i64 0
  %76 = insertelement <4 x float> %75, float %72, i64 1
  %77 = insertelement <4 x float> %76, float %73, i64 2
  %78 = insertelement <4 x float> %77, float %74, i64 3 ; 2 uses
  %79 = load float, ptr %67, align 4, !tbaa !21
  %80 = load float, ptr %68, align 4, !tbaa !21
  %81 = load float, ptr %69, align 4, !tbaa !21
  %82 = load float, ptr %70, align 4, !tbaa !21
  %83 = insertelement <4 x float> poison, float %79, i64 0
  %84 = insertelement <4 x float> %83, float %80, i64 1
  %85 = insertelement <4 x float> %84, float %81, i64 2
  %86 = insertelement <4 x float> %85, float %82, i64 3 ; 2 uses
  %87 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %78, <4 x float> %78, <4 x float> %61)
  %88 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %86, <4 x float> %86, <4 x float> %62)
  %89 = freeze <4 x float> %87                    ; 3 uses
  %90 = freeze <4 x float> %88                    ; 3 uses
  %91 = fcmp olt <4 x float> %vec.phi, %89
  %92 = fcmp olt <4 x float> %vec.phi13, %90
  %93 = select <4 x i1> %91, <4 x float> %89, <4 x float> %vec.phi ; 2 uses
  %94 = select <4 x i1> %92, <4 x float> %90, <4 x float> %vec.phi13 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %95 = tail call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %89, /* (nan nzero) */ i32 35)
  %96 = tail call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %90, /* (nan nzero) */ i32 35)
  %97 = or <4 x i1> %95, %96
  %98 = bitcast <4 x i1> %97 to i4
  %99 = icmp ne i4 %98, 0                         ; 4 uses
  %100 = icmp eq i64 %index.next, %n.vec
  %101 = or i1 %99, %100
  br i1 %101, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %102 = select i1 %99, <4 x float> %vec.phi, <4 x float> %93
  %103 = select i1 %99, <4 x float> %vec.phi13, <4 x float> %94
  %104 = select i1 %99, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nnan <4 x float> @llvm.maxnum.v4f32(<4 x float> %102, <4 x float> %103)
  %105 = tail call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %104, %middle.block ]
  %.011.ph = phi float [ 0.000000e+00, %.lr.ph ], [ %105, %middle.block ]
  br label %bb.b

bb.b:                                             ; preds = %scalar.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.011 = phi float [ %.1, %bb.b ], [ %.011.ph, %scalar.ph.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !21 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !21 ; 2 uses
  %i.h = fmul float %i.g, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !21 ; 2 uses
  %i.l = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.i) ; 2 uses
  %i.m = fcmp olt float %.011, %i.l
  %.1 = select i1 %i.m, float %i.l, float %.011   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1, %bb.b ]
  ret float %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZNK22btVoronoiSimplexSolver10getSimplexEP9btVector3S1_S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(357) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 164
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !18
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !18
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.l, %bb.b ]
  ret i32 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(357) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load float, ptr %1, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.j = load float, ptr %i.i, align 4, !tbaa !33
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !21
  %i.m = fsub float %i.d, %i.l                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !21
  %i.p = fsub float %i.f, %i.o                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !21
  %i.s = fsub float %i.h, %i.r                    ; 2 uses
  %i.t = fmul float %i.p, %i.p
  %i.u = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.t)
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.u)
  %i.w = fcmp ole float %i.v, %i.j                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.w, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.w, %bb.b ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !21
  %i.ac = fcmp oeq float %i.z, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZNK9btVector3eqERKS_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ag = load float, ptr %i.af, align 4, !tbaa !21
  %i.ah = fcmp oeq float %i.ae, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZNK9btVector3eqERKS_.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.al = load float, ptr %i.ak, align 4, !tbaa !21
  %i.am = fcmp oeq float %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %_ZNK9btVector3eqERKS_.exit

bb.e:                                             ; preds = %bb.d
  %i.an = load float, ptr %1, align 4, !tbaa !21
  %i.ao = load float, ptr %i.x, align 4, !tbaa !21
  %i.ap = fcmp oeq float %i.an, %i.ao
  %i.aq = or i1 %.lcssa, %i.ap
  br label %_ZNK9btVector3eqERKS_.exit

_ZNK9btVector3eqERKS_.exit:                       ; preds = %._crit_edge, %bb.c, %bb.d, %bb.e
  %. = phi i1 [ %.lcssa, %bb.d ], [ %.lcssa, %bb.c ], [ %.lcssa, %._crit_edge ], [ %i.aq, %bb.e ]
  ret i1 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(357) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK22btVoronoiSimplexSolver12emptySimplexEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(357) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !16
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(357) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv(ptr noundef nonnull align 4 dereferenceable(357) %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !18
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZN22btVoronoiSimplexSolver19pointOutsideOfPlaneERK9btVector3S2_S2_S2_S2_(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(357) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %1, align 4
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !21
  %i.e = load <3 x float>, ptr %3, align 4, !tbaa !21
  %i.f = load <3 x float>, ptr %2, align 4, !tbaa !21 ; 5 uses
  %i.g = fsub <3 x float> %i.e, %i.f              ; 2 uses
  %i.h = shufflevector <3 x float> %i.g, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.i = load <3 x float>, ptr %4, align 4, !tbaa !21
  %i.j = fsub <3 x float> %i.i, %i.f              ; 2 uses
  %i.k = fneg <3 x float> %i.j
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.m = fmul <3 x float> %i.g, %i.l
  %i.n = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.h, <3 x float> %i.j, <3 x float> %i.m) ; 3 uses
  %i.o = load <2 x float>, ptr %1, align 4, !tbaa !21 ; 2 uses
  %i.p = load <2 x float>, ptr %5, align 4, !tbaa !21 ; 2 uses
  %i.q = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <3 x float> %i.f, <3 x float> poison, <2 x i32> zeroinitializer
  %i.s = fsub <2 x float> %i.q, %i.r
  %i.t = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 1, i32 3>
  %i.u = shufflevector <3 x float> %i.f, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fsub <2 x float> %i.t, %i.u
  %i.w = insertelement <2 x float> %i.b, float %i.d, i64 1
  %i.x = shufflevector <3 x float> %i.f, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.y = fsub <2 x float> %i.w, %i.x
  %i.z = shufflevector <3 x float> %i.n, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.v, %i.z
  %i.ab = shufflevector <3 x float> %i.n, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.ab, <2 x float> %i.aa)
  %i.ad = shufflevector <3 x float> %i.n, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.ad, <2 x float> %i.ac) ; 2 uses
  %i.af = extractelement <2 x float> %i.ae, i64 1 ; 3 uses
  %i.ag = fmul float %i.af, %i.af
  %i.ah = fcmp olt float %i.ag, f0x322BCC76
  %i.ai = extractelement <2 x float> %i.ae, i64 0
  %i.aj = fmul float %i.ai, %i.af
  %i.ak = fcmp olt float %i.aj, 0.000000e+00
  %i.al = zext i1 %i.ak to i32
  %.0 = select i1 %i.ah, i32 -1, i32 %i.al
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f32(<4 x float>, i32 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTS9btVector3", !5, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!"_ZTS15btUsageBitfield", !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0}
!14 = !{!"_ZTS25btSubSimplexClosestResult", !9, i64 0, !13, i64 16, !5, i64 20, !11, i64 36}
!15 = !{!"_ZTS22btVoronoiSimplexSolver", !6, i64 0, !5, i64 4, !5, i64 84, !5, i64 164, !9, i64 244, !9, i64 260, !9, i64 276, !9, i64 292, !10, i64 308, !11, i64 312, !14, i64 316, !11, i64 356}
!16 = !{!15, !6, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{i64 0, i64 16, !17}
!19 = !{!15, !11, i64 312}
!20 = !{!15, !11, i64 356}
!21 = !{!10, !10, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!15, !11, i64 352}
!26 = !{!14, !11, i64 36}
!27 = distinct !{!27, !22, !29, !30}
!28 = distinct !{!28, !22, !30, !29}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = !{!15, !10, i64 308}
end_hunk_0
