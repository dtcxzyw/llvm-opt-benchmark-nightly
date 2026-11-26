Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3VoronoiSimplexSolver?download=true
inline.NumInlined: 151
inline.NumDeleted: 18
begin_hunk_0_@_ZN22b3VoronoiSimplexSolver25closestPtPointTetrahedronERK9b3Vector3S2_S2_S2_S2_R25b3SubSimplexClosestResult:bb.a
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
  store <4 x float> %i.ez, ptr %6, align 16, !tbaa !17
  %i.fa = load i8, ptr %i.a, align 16
  %i.fb = and i8 %i.fa, 7
  %i.fc = or disjoint i8 %i.fb, %i.f
  store i8 %i.fc, ptr %i.d, align 16
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.fh = load <2 x float>, ptr %i.fd, align 4, !tbaa !21
  store <2 x float> %i.fh, ptr %i.fg, align 4, !tbaa !21
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.ff, ptr %i.fi, align 4, !tbaa !21
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float 0.000000e+00, ptr %i.fj, align 16, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.1 = phi float [ f0x7F7FFFFF, %bb.d ], [ %i.ex, %bb.f ], [ f0x7F7FFFFF, %bb.e ] ; 3 uses
  %i.fk = extractelement <2 x i1> %i.eq, i64 1
  br i1 %i.fk, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fl = call noundef zeroext i1 @_ZN22b3VoronoiSimplexSolver22closestPtPointTriangleERK9b3Vector3S2_S2_S2_R25b3SubSimplexClosestResult(ptr nonnull align 16 poison, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(37) %7) ; 0 uses
  %.sroa.0207.0.copyload = load float, ptr %7, align 16, !tbaa !17
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.6210.0.copyload = load float, ptr %.sroa.6210.0..sroa_idx, align 4, !tbaa !17
  %.sroa.8214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8214.0.copyload = load float, ptr %.sroa.8214.0..sroa_idx, align 8, !tbaa !17
  %i.fm = load float, ptr %1, align 16, !tbaa !17
  %i.fn = fsub float %.sroa.0207.0.copyload, %i.fm ; 2 uses
  %i.fo = load float, ptr %i.k, align 4, !tbaa !17
  %i.fp = fsub float %.sroa.6210.0.copyload, %i.fo ; 2 uses
  %i.fq = load float, ptr %i.l, align 8, !tbaa !17
  %i.fr = fsub float %.sroa.8214.0.copyload, %i.fq ; 2 uses
  %i.fs = fmul float %i.fp, %i.fp
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.fn, float %i.fs)
  %i.fu = tail call noundef float @llvm.fmuladd.f32(float %i.fr, float %i.fr, float %i.ft) ; 2 uses
  %i.fv = fcmp olt float %i.fu, %.1
  br i1 %i.fv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fw = load <4 x float>, ptr %7, align 16, !tbaa !17
  store <4 x float> %i.fw, ptr %6, align 16, !tbaa !17
  %i.fx = load i8, ptr %i.d, align 16
  %i.fy = and i8 %i.fx, -16
  %i.fz = load i8, ptr %i.a, align 16             ; 2 uses
  %i.ga = and i8 %i.fz, 1
  %i.gb = shl i8 %i.fz, 1
  %i.gc = and i8 %i.gb, 12
  %i.gd = or disjoint i8 %i.ga, %i.gc
  %i.ge = or disjoint i8 %i.gd, %i.fy
  store i8 %i.ge, ptr %i.d, align 16
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !21
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.gg, ptr %i.gi, align 4, !tbaa !21
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float 0.000000e+00, ptr %i.gj, align 8, !tbaa !21
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.gl = load <2 x float>, ptr %i.gh, align 8, !tbaa !21
  store <2 x float> %i.gl, ptr %i.gk, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.3 = phi float [ %.1, %bb.g ], [ %i.fu, %bb.i ], [ %.1, %bb.h ] ; 3 uses
  %i.gm = extractelement <2 x i1> %i.eq, i64 0
  br i1 %i.gm, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gn = call noundef zeroext i1 @_ZN22b3VoronoiSimplexSolver22closestPtPointTriangleERK9b3Vector3S2_S2_S2_R25b3SubSimplexClosestResult(ptr nonnull align 16 poison, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(37) %7) ; 0 uses
  %.sroa.0189.0.copyload = load float, ptr %7, align 16, !tbaa !17
  %.sroa.6192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.6192.0.copyload = load float, ptr %.sroa.6192.0..sroa_idx, align 4, !tbaa !17
  %.sroa.8196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8196.0.copyload = load float, ptr %.sroa.8196.0..sroa_idx, align 8, !tbaa !17
  %i.go = load float, ptr %1, align 16, !tbaa !17
  %i.gp = fsub float %.sroa.0189.0.copyload, %i.go ; 2 uses
  %i.gq = load float, ptr %i.k, align 4, !tbaa !17
  %i.gr = fsub float %.sroa.6192.0.copyload, %i.gq ; 2 uses
  %i.gs = load float, ptr %i.l, align 8, !tbaa !17
  %i.gt = fsub float %.sroa.8196.0.copyload, %i.gs ; 2 uses
  %i.gu = fmul float %i.gr, %i.gr
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.gp, float %i.gu)
  %i.gw = tail call noundef float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %i.gv) ; 2 uses
  %i.gx = fcmp olt float %i.gw, %.3
  br i1 %i.gx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gy = load <4 x float>, ptr %7, align 16, !tbaa !17
  store <4 x float> %i.gy, ptr %6, align 16, !tbaa !17
  %i.gz = load i8, ptr %i.d, align 16
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
  store i8 %i.hj, ptr %i.d, align 16
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !21
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !21
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hp = load float, ptr %i.ho, align 8, !tbaa !21
  %i.hq = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.hl, ptr %i.hq, align 4, !tbaa !21
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.hn, ptr %i.hr, align 8, !tbaa !21
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float 0.000000e+00, ptr %i.hs, align 4, !tbaa !21
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float %i.hp, ptr %i.ht, align 16, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.5 = phi float [ %.3, %bb.j ], [ %i.gw, %bb.l ], [ %.3, %bb.k ]
  br i1 %.not127, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hu = call noundef zeroext i1 @_ZN22b3VoronoiSimplexSolver22closestPtPointTriangleERK9b3Vector3S2_S2_S2_R25b3SubSimplexClosestResult(ptr nonnull align 16 poison, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(37) %7) ; 0 uses
  %.sroa.0174.0.copyload = load float, ptr %7, align 16, !tbaa !17
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !17
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !17
  %i.hv = load float, ptr %1, align 16, !tbaa !17
  %i.hw = fsub float %.sroa.0174.0.copyload, %i.hv ; 2 uses
  %i.hx = load float, ptr %i.k, align 4, !tbaa !17
  %i.hy = fsub float %.sroa.6.0.copyload, %i.hx   ; 2 uses
  %i.hz = load float, ptr %i.l, align 8, !tbaa !17
  %i.ia = fsub float %.sroa.8.0.copyload, %i.hz   ; 2 uses
  %i.ib = fmul float %i.hy, %i.hy
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float %i.ib)
  %i.id = tail call noundef float @llvm.fmuladd.f32(float %i.ia, float %i.ia, float %i.ic)
  %i.ie = fcmp olt float %i.id, %.5
  br i1 %i.ie, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.if = load <4 x float>, ptr %7, align 16, !tbaa !17
  store <4 x float> %i.if, ptr %6, align 16, !tbaa !17
  %i.ig = load i8, ptr %i.d, align 16
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
  store i8 %i.iq, ptr %i.d, align 16
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.is = load float, ptr %i.ir, align 4, !tbaa !21
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float 0.000000e+00, ptr %i.iu, align 4, !tbaa !21
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.is, ptr %i.iv, align 8, !tbaa !21
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
define dso_local noundef zeroext i1 @_ZN22b3VoronoiSimplexSolver7closestER9b3Vector3(ptr noundef nonnull align 16 dereferenceable(385) %0, ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN22b3VoronoiSimplexSolver28updateClosestVectorAndPointsEv(ptr noundef nonnull align 16 dereferenceable(385) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !18
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN22b3VoronoiSimplexSolver9maxVertexEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(385) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !16    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.011 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.e = load float, ptr %i.d, align 16, !tbaa !17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !17 ; 2 uses
  %i.h = fmul float %i.g, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load float, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.l = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.i) ; 2 uses
  %i.m = fcmp olt float %.011, %i.l
  %.1 = select i1 %i.m, float %i.l, float %.011   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1, %bb.b ]
  ret float %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZNK22b3VoronoiSimplexSolver10getSimplexEP9b3Vector3S1_S1_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(385) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !16    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !18
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !18
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 16 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %0, align 16, !tbaa !16    ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.l, %bb.b ]
  ret i32 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN22b3VoronoiSimplexSolver9inSimplexERK9b3Vector3(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(385) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !16    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4
  %i.j = load float, ptr %1, align 16
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK9b3Vector3eqERKS_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK9b3Vector3eqERKS_.exit.thread ] ; 2 uses
  %.0812 = phi i1 [ false, %.lr.ph ], [ %i.w, %_ZNK9b3Vector3eqERKS_.exit.thread ] ; 4 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !17
  %i.n = fcmp oeq float %i.m, %i.e
  br i1 %i.n, label %bb.c, label %_ZNK9b3Vector3eqERKS_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load float, ptr %i.o, align 8, !tbaa !17
  %i.q = fcmp oeq float %i.p, %i.g
  br i1 %i.q, label %bb.d, label %_ZNK9b3Vector3eqERKS_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !17
  %i.t = fcmp oeq float %i.s, %i.i
  br i1 %i.t, label %_ZNK9b3Vector3eqERKS_.exit, label %_ZNK9b3Vector3eqERKS_.exit.thread

_ZNK9b3Vector3eqERKS_.exit:                       ; preds = %bb.d
  %i.u = load float, ptr %i.k, align 16, !tbaa !17
  %i.v = fcmp oeq float %i.u, %i.j
  %cond.fr = freeze i1 %i.v
  %spec.select = select i1 %cond.fr, i1 true, i1 %.0812
  br label %_ZNK9b3Vector3eqERKS_.exit.thread

_ZNK9b3Vector3eqERKS_.exit.thread:                ; preds = %_ZNK9b3Vector3eqERKS_.exit, %bb.b, %bb.c, %bb.d
  %i.w = phi i1 [ %.0812, %bb.b ], [ %spec.select, %_ZNK9b3Vector3eqERKS_.exit ], [ %.0812, %bb.d ], [ %.0812, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !29

._crit_edge:                                      ; preds = %_ZNK9b3Vector3eqERKS_.exit.thread, %.._crit_edge_crit_edge
  %i.x = phi float [ %.pre, %.._crit_edge_crit_edge ], [ %i.e, %_ZNK9b3Vector3eqERKS_.exit.thread ]
  %.08.lcssa = phi i1 [ false, %.._crit_edge_crit_edge ], [ %i.w, %_ZNK9b3Vector3eqERKS_.exit.thread ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.aa = load float, ptr %i.z, align 4, !tbaa !17
  %i.ab = fcmp oeq float %i.x, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNK9b3Vector3eqERKS_.exit10

bb.e:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.af = load float, ptr %i.ae, align 8, !tbaa !17
  %i.ag = fcmp oeq float %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNK9b3Vector3eqERKS_.exit10

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !17
  %i.al = fcmp oeq float %i.ai, %i.ak
  br i1 %i.al, label %bb.g, label %_ZNK9b3Vector3eqERKS_.exit10

bb.g:                                             ; preds = %bb.f
  %i.am = load float, ptr %1, align 16, !tbaa !17
  %i.an = load float, ptr %i.y, align 16, !tbaa !17
  %i.ao = fcmp oeq float %i.am, %i.an
  %i.ap = select i1 %i.ao, i1 true, i1 %.08.lcssa
  br label %_ZNK9b3Vector3eqERKS_.exit10

_ZNK9b3Vector3eqERKS_.exit10:                     ; preds = %._crit_edge, %bb.e, %bb.f, %bb.g
  %.09 = phi i1 [ %.08.lcssa, %bb.f ], [ %.08.lcssa, %bb.e ], [ %.08.lcssa, %._crit_edge ], [ %i.ap, %bb.g ]
  ret i1 %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN22b3VoronoiSimplexSolver14backup_closestER9b3Vector3(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(385) %0, ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK22b3VoronoiSimplexSolver12emptySimplexEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(385) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !16
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN22b3VoronoiSimplexSolver14compute_pointsER9b3Vector3S1_(ptr noundef nonnull align 16 dereferenceable(385) %0, ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %1, ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN22b3VoronoiSimplexSolver28updateClosestVectorAndPointsEv(ptr noundef nonnull align 16 dereferenceable(385) %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !18
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZN22b3VoronoiSimplexSolver19pointOutsideOfPlaneERK9b3Vector3S2_S2_S2_S2_(ptr nofree noundef nonnull readnone align 16 captures(none) dereferenceable(385) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load <3 x float>, ptr %1, align 16
  %i.b = shufflevector <3 x float> %i.a, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !17
  %i.e = load <3 x float>, ptr %3, align 16, !tbaa !17
  %i.f = load <3 x float>, ptr %2, align 16, !tbaa !17 ; 5 uses
  %i.g = fsub <3 x float> %i.e, %i.f              ; 2 uses
  %i.h = shufflevector <3 x float> %i.g, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.i = load <3 x float>, ptr %4, align 16, !tbaa !17
  %i.j = fsub <3 x float> %i.i, %i.f              ; 2 uses
  %i.k = fneg <3 x float> %i.j
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.m = fmul <3 x float> %i.g, %i.l
  %i.n = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.h, <3 x float> %i.j, <3 x float> %i.m) ; 3 uses
  %i.o = load <2 x float>, ptr %1, align 16, !tbaa !17 ; 2 uses
  %i.p = load <2 x float>, ptr %5, align 16, !tbaa !17 ; 2 uses
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
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!"_ZTS9b3Vector3", !5, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!"_ZTS15b3UsageBitfield", !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0}
!14 = !{!"_ZTS25b3SubSimplexClosestResult", !9, i64 0, !13, i64 16, !5, i64 20, !11, i64 36}
!15 = !{!"_ZTS22b3VoronoiSimplexSolver", !6, i64 0, !5, i64 16, !5, i64 96, !5, i64 176, !9, i64 256, !9, i64 272, !9, i64 288, !9, i64 304, !10, i64 320, !11, i64 324, !14, i64 336, !11, i64 384}
!16 = !{!15, !6, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{i64 0, i64 16, !17}
!19 = !{!15, !11, i64 324}
!20 = !{!15, !11, i64 384}
!21 = !{!10, !10, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!15, !11, i64 372}
!26 = !{!14, !11, i64 36}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
end_hunk_0
