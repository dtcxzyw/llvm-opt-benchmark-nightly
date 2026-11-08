Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/mesh?download=true
inline.NumInlined: 455
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0_@b3BuildRecursive:bb.a
  store i32 0, ptr %i.eg, align 4, !tbaa !203, !noalias !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !47, !noalias !201
  store i32 0, ptr %i.ei, align 16, !tbaa !203, !noalias !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ej, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !47, !noalias !201
  store i32 0, ptr %i.ek, align 4, !tbaa !203, !noalias !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.el, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !47, !noalias !201
  store i32 0, ptr %i.em, align 8, !tbaa !203, !noalias !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.en, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !47, !noalias !201
  store i32 0, ptr %i.eo, align 4, !tbaa !203, !noalias !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false), !tbaa.struct !47, !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17, !noalias !201
  store float %i.es, ptr %i.h, align 4, !tbaa !16, !noalias !201
  store float %i.et, ptr %i.du, align 4, !tbaa !16, !noalias !201
  store float %i.fq, ptr %i.dv, align 4, !tbaa !16, !noalias !201
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv392.i
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !16, !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17, !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17, !noalias !201
  store float %i.eq, ptr %i.g, align 4, !tbaa !16, !noalias !201
  store float %i.er, ptr %i.dw, align 4, !tbaa !16, !noalias !201
  store float %i.fm, ptr %i.dx, align 4, !tbaa !16, !noalias !201
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv392.i
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !16, !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17, !noalias !201
  %i.gc = fsub float %i.fz, %i.gb
  %i.gd = fdiv float f0x40FFFFFE, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv392.i
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv392.i
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv372.i78 = phi i64 [ 0, %bb.p ], [ %indvars.iv.next373.i85, %bb.q ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv372.i78 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %.sroa.050.0.copyload.i = load <2 x float>, ptr %i.gh, align 4, !tbaa !16, !noalias !201
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %.sroa.451.0.copyload.i = load float, ptr %.sroa.451.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17, !noalias !201
  store <2 x float> %.sroa.050.0.copyload.i, ptr %i.f, align 8, !tbaa !16, !noalias !201
  store float %.sroa.451.0.copyload.i, ptr %i.dy, align 8, !tbaa !16, !noalias !201
  %i.gi = load float, ptr %i.ge, align 4, !tbaa !16, !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17, !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17, !noalias !201
  store float %i.eq, ptr %i.e, align 4, !tbaa !16, !noalias !201
  store float %i.er, ptr %i.dz, align 4, !tbaa !16, !noalias !201
  store float %i.fm, ptr %i.ea, align 4, !tbaa !16, !noalias !201
  %i.gj = load float, ptr %i.gf, align 4, !tbaa !16, !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17, !noalias !201
  %i.gk = fsub float %i.gi, %i.gj
  %i.gl = fmul float %i.gd, %i.gk
  %i.gm = fptosi float %i.gl to i32
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [28 x i8], ptr %6, i64 %i.gn ; 6 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !203, !noalias !201
  %i.gq = add nsw i32 %i.gp, 1
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !203, !noalias !201
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 4 ; 2 uses
  %.sroa.0283.0.copyload.i = load <2 x float>, ptr %i.gr, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.4284.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.go, i64 12 ; 2 uses
  %.sroa.4284.0.copyload.i = load float, ptr %.sroa.4284.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.5285.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %.sroa.5285.0.copyload.i = load <2 x float>, ptr %.sroa.5285.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.6286.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.go, i64 24 ; 2 uses
  %.sroa.6286.0.copyload.i = load float, ptr %.sroa.6286.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.0291.0.copyload.i = load <2 x float>, ptr %i.gg, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.4292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.sroa.4292.0.copyload.i = load float, ptr %.sroa.4292.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.5293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %.sroa.5293.0.copyload.i = load <2 x float>, ptr %.sroa.5293.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.6294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 20
  %.sroa.6294.0.copyload.i = load float, ptr %.sroa.6294.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %i.gs = fcmp olt <2 x float> %.sroa.0283.0.copyload.i, %.sroa.0291.0.copyload.i
  %i.gt = select <2 x i1> %i.gs, <2 x float> %.sroa.0283.0.copyload.i, <2 x float> %.sroa.0291.0.copyload.i
  %i.gu = fcmp olt float %.sroa.4284.0.copyload.i, %.sroa.4292.0.copyload.i
  %i.gv = select i1 %i.gu, float %.sroa.4284.0.copyload.i, float %.sroa.4292.0.copyload.i
  %i.gw = fcmp ogt <2 x float> %.sroa.5285.0.copyload.i, %.sroa.5293.0.copyload.i
  %i.gx = select <2 x i1> %i.gw, <2 x float> %.sroa.5285.0.copyload.i, <2 x float> %.sroa.5293.0.copyload.i
  %i.gy = fcmp ogt float %.sroa.6286.0.copyload.i, %.sroa.6294.0.copyload.i
  %i.gz = select i1 %i.gy, float %.sroa.6286.0.copyload.i, float %.sroa.6294.0.copyload.i
  store <2 x float> %i.gt, ptr %i.gr, align 4, !tbaa !16, !noalias !201
  store float %i.gv, ptr %.sroa.4284.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201
  store <2 x float> %i.gx, ptr %.sroa.5285.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201
  store float %i.gz, ptr %.sroa.6286.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201
  %indvars.iv.next373.i85 = add nuw nsw i64 %indvars.iv372.i78, 1 ; 2 uses
  %exitcond376.not.i = icmp eq i64 %indvars.iv.next373.i85, %wide.trip.count.i
  br i1 %exitcond376.not.i, label %.preheader.preheader.i, label %bb.q, !llvm.loop !187

.preheader.preheader.i:                           ; preds = %bb.q
  %i.ha = trunc nuw nsw i64 %indvars.iv392.i to i32 ; 2 uses
  %i.hb = load i32, ptr %6, align 16, !tbaa !203, !noalias !201 ; 2 uses
  %.sroa.0303.0.copyload.i = load <2 x float>, ptr %i.eu, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.4304.0.copyload.i = load float, ptr %.sroa.4304.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.5305.0.copyload.i = load <2 x float>, ptr %.sroa.5305.0..sroa_idx.i, align 16, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.6306.0.copyload.i = load float, ptr %.sroa.6306.0..sroa_idx.i, align 8, !tbaa !16, !noalias !201 ; 2 uses
  %i.hc = fcmp ogt float %.sroa.4304.0.copyload.i, f0x7F7FFFFF
  %i.hd = select i1 %i.hc, float f0x7F7FFFFF, float %.sroa.4304.0.copyload.i ; 3 uses
  %i.he = fcmp ogt <2 x float> %.sroa.0303.0.copyload.i, splat (float f0x7F7FFFFF)
  %i.hf = select <2 x i1> %i.he, <2 x float> splat (float f0x7F7FFFFF), <2 x float> %.sroa.0303.0.copyload.i ; 3 uses
  %i.hg = fcmp olt <2 x float> %.sroa.5305.0.copyload.i, splat (float f0xFF7FFFFF)
  %i.hh = select <2 x i1> %i.hg, <2 x float> splat (float f0xFF7FFFFF), <2 x float> %.sroa.5305.0.copyload.i ; 3 uses
  %i.hi = fcmp olt float %.sroa.6306.0.copyload.i, f0xFF7FFFFF
  %i.hj = select i1 %i.hi, float f0xFF7FFFFF, float %.sroa.6306.0.copyload.i ; 3 uses
  %i.hk = load i32, ptr %i.ev, align 4
  %i.hl = add nsw i32 %i.hk, %i.hb                ; 2 uses
  %.sroa.0303.0.copyload.i.1 = load <2 x float>, ptr %i.ew, align 16 ; 2 uses
  %.sroa.4304.0.copyload.i.1 = load float, ptr %.sroa.4304.0..sroa_idx.i.1, align 8 ; 2 uses
  %.sroa.5305.0.copyload.i.1 = load <2 x float>, ptr %.sroa.5305.0..sroa_idx.i.1, align 4 ; 2 uses
  %.sroa.6306.0.copyload.i.1 = load float, ptr %.sroa.6306.0..sroa_idx.i.1, align 4 ; 2 uses
  %i.hm = fcmp olt float %i.hd, %.sroa.4304.0.copyload.i.1
  %i.hn = select i1 %i.hm, float %i.hd, float %.sroa.4304.0.copyload.i.1 ; 3 uses
  %i.ho = fcmp olt <2 x float> %i.hf, %.sroa.0303.0.copyload.i.1
  %i.hp = select <2 x i1> %i.ho, <2 x float> %i.hf, <2 x float> %.sroa.0303.0.copyload.i.1 ; 3 uses
  %i.hq = fcmp ogt <2 x float> %i.hh, %.sroa.5305.0.copyload.i.1
  %i.hr = select <2 x i1> %i.hq, <2 x float> %i.hh, <2 x float> %.sroa.5305.0.copyload.i.1 ; 3 uses
  %i.hs = fcmp ogt float %i.hj, %.sroa.6306.0.copyload.i.1
  %i.ht = select i1 %i.hs, float %i.hj, float %.sroa.6306.0.copyload.i.1 ; 3 uses
  %i.hu = load i32, ptr %i.ex, align 8
  %i.hv = add nsw i32 %i.hu, %i.hl                ; 2 uses
  %.sroa.0303.0.copyload.i.2 = load <2 x float>, ptr %i.ey, align 4 ; 2 uses
  %.sroa.4304.0.copyload.i.2 = load float, ptr %.sroa.4304.0..sroa_idx.i.2, align 4 ; 2 uses
  %.sroa.5305.0.copyload.i.2 = load <2 x float>, ptr %.sroa.5305.0..sroa_idx.i.2, align 8 ; 2 uses
  %.sroa.6306.0.copyload.i.2 = load float, ptr %.sroa.6306.0..sroa_idx.i.2, align 16 ; 2 uses
  %i.hw = fcmp olt float %i.hn, %.sroa.4304.0.copyload.i.2
  %i.hx = select i1 %i.hw, float %i.hn, float %.sroa.4304.0.copyload.i.2 ; 3 uses
  %i.hy = fcmp olt <2 x float> %i.hp, %.sroa.0303.0.copyload.i.2
  %i.hz = select <2 x i1> %i.hy, <2 x float> %i.hp, <2 x float> %.sroa.0303.0.copyload.i.2 ; 3 uses
  %i.ia = fcmp ogt <2 x float> %i.hr, %.sroa.5305.0.copyload.i.2
  %i.ib = select <2 x i1> %i.ia, <2 x float> %i.hr, <2 x float> %.sroa.5305.0.copyload.i.2 ; 3 uses
  %i.ic = fcmp ogt float %i.ht, %.sroa.6306.0.copyload.i.2
  %i.id = select i1 %i.ic, float %i.ht, float %.sroa.6306.0.copyload.i.2 ; 3 uses
  %i.ie = load i32, ptr %i.ez, align 4
  %i.if = add nsw i32 %i.ie, %i.hv                ; 2 uses
  %.sroa.0303.0.copyload.i.3 = load <2 x float>, ptr %i.fa, align 8 ; 2 uses
  %.sroa.4304.0.copyload.i.3 = load float, ptr %.sroa.4304.0..sroa_idx.i.3, align 16 ; 2 uses
  %.sroa.5305.0.copyload.i.3 = load <2 x float>, ptr %.sroa.5305.0..sroa_idx.i.3, align 4 ; 2 uses
  %.sroa.6306.0.copyload.i.3 = load float, ptr %.sroa.6306.0..sroa_idx.i.3, align 4 ; 2 uses
  %i.ig = fcmp olt float %i.hx, %.sroa.4304.0.copyload.i.3
  %i.ih = select i1 %i.ig, float %i.hx, float %.sroa.4304.0.copyload.i.3 ; 3 uses
  %i.ii = fcmp olt <2 x float> %i.hz, %.sroa.0303.0.copyload.i.3
  %i.ij = select <2 x i1> %i.ii, <2 x float> %i.hz, <2 x float> %.sroa.0303.0.copyload.i.3 ; 3 uses
  %i.ik = fcmp ogt <2 x float> %i.ib, %.sroa.5305.0.copyload.i.3
  %i.il = select <2 x i1> %i.ik, <2 x float> %i.ib, <2 x float> %.sroa.5305.0.copyload.i.3 ; 3 uses
  %i.im = fcmp ogt float %i.id, %.sroa.6306.0.copyload.i.3
  %i.in = select i1 %i.im, float %i.id, float %.sroa.6306.0.copyload.i.3 ; 3 uses
  %i.io = load i32, ptr %i.fb, align 16
  %i.ip = add nsw i32 %i.io, %i.if                ; 2 uses
  %.sroa.0303.0.copyload.i.4 = load <2 x float>, ptr %i.fc, align 4 ; 2 uses
  %.sroa.4304.0.copyload.i.4 = load float, ptr %.sroa.4304.0..sroa_idx.i.4, align 4 ; 2 uses
  %.sroa.5305.0.copyload.i.4 = load <2 x float>, ptr %.sroa.5305.0..sroa_idx.i.4, align 16 ; 2 uses
  %.sroa.6306.0.copyload.i.4 = load float, ptr %.sroa.6306.0..sroa_idx.i.4, align 8 ; 2 uses
  %i.iq = fcmp olt float %i.ih, %.sroa.4304.0.copyload.i.4
  %i.ir = select i1 %i.iq, float %i.ih, float %.sroa.4304.0.copyload.i.4 ; 3 uses
  %i.is = fcmp olt <2 x float> %i.ij, %.sroa.0303.0.copyload.i.4
  %i.it = select <2 x i1> %i.is, <2 x float> %i.ij, <2 x float> %.sroa.0303.0.copyload.i.4 ; 3 uses
  %i.iu = fcmp ogt <2 x float> %i.il, %.sroa.5305.0.copyload.i.4
  %i.iv = select <2 x i1> %i.iu, <2 x float> %i.il, <2 x float> %.sroa.5305.0.copyload.i.4 ; 3 uses
  %i.iw = fcmp ogt float %i.in, %.sroa.6306.0.copyload.i.4
  %i.ix = select i1 %i.iw, float %i.in, float %.sroa.6306.0.copyload.i.4 ; 3 uses
  %i.iy = load i32, ptr %i.fd, align 4
  %i.iz = add nsw i32 %i.iy, %i.ip                ; 2 uses
  %.sroa.0303.0.copyload.i.5 = load <2 x float>, ptr %i.fe, align 16 ; 2 uses
  %.sroa.4304.0.copyload.i.5 = load float, ptr %.sroa.4304.0..sroa_idx.i.5, align 8 ; 2 uses
  %.sroa.5305.0.copyload.i.5 = load <2 x float>, ptr %.sroa.5305.0..sroa_idx.i.5, align 4 ; 2 uses
  %.sroa.6306.0.copyload.i.5 = load float, ptr %.sroa.6306.0..sroa_idx.i.5, align 4 ; 2 uses
  %i.ja = fcmp olt float %i.ir, %.sroa.4304.0.copyload.i.5
  %i.jb = select i1 %i.ja, float %i.ir, float %.sroa.4304.0.copyload.i.5 ; 3 uses
  %i.jc = fcmp olt <2 x float> %i.it, %.sroa.0303.0.copyload.i.5
  %i.jd = select <2 x i1> %i.jc, <2 x float> %i.it, <2 x float> %.sroa.0303.0.copyload.i.5 ; 3 uses
  %i.je = fcmp ogt <2 x float> %i.iv, %.sroa.5305.0.copyload.i.5
  %i.jf = select <2 x i1> %i.je, <2 x float> %i.iv, <2 x float> %.sroa.5305.0.copyload.i.5 ; 3 uses
  %i.jg = fcmp ogt float %i.ix, %.sroa.6306.0.copyload.i.5
  %i.jh = select i1 %i.jg, float %i.ix, float %.sroa.6306.0.copyload.i.5 ; 3 uses
  %i.ji = load i32, ptr %i.ff, align 8
  %i.jj = add nsw i32 %i.ji, %i.iz
  %.sroa.0303.0.copyload.i.6 = load <2 x float>, ptr %i.fg, align 4 ; 2 uses
  %.sroa.4304.0.copyload.i.6 = load float, ptr %.sroa.4304.0..sroa_idx.i.6, align 4 ; 2 uses
  %.sroa.5305.0.copyload.i.6 = load <2 x float>, ptr %.sroa.5305.0..sroa_idx.i.6, align 8 ; 2 uses
  %.sroa.6306.0.copyload.i.6 = load float, ptr %.sroa.6306.0..sroa_idx.i.6, align 16 ; 2 uses
  %i.jk = fcmp olt float %i.jb, %.sroa.4304.0.copyload.i.6
  %i.jl = select i1 %i.jk, float %i.jb, float %.sroa.4304.0.copyload.i.6
  %i.jm = fcmp olt <2 x float> %i.jd, %.sroa.0303.0.copyload.i.6
  %i.jn = select <2 x i1> %i.jm, <2 x float> %i.jd, <2 x float> %.sroa.0303.0.copyload.i.6
  %i.jo = fcmp ogt <2 x float> %i.jf, %.sroa.5305.0.copyload.i.6
  %i.jp = select <2 x i1> %i.jo, <2 x float> %i.jf, <2 x float> %.sroa.5305.0.copyload.i.6
  %i.jq = fcmp ogt float %i.jh, %.sroa.6306.0.copyload.i.6
  %i.jr = select i1 %i.jq, float %i.jh, float %.sroa.6306.0.copyload.i.6
  br label %.preheader.i86

.preheader.i86:                                   ; preds = %bb.u, %.preheader.preheader.i
  %.sroa.13.1 = phi i32 [ %.sroa.13.0, %.preheader.preheader.i ], [ %.sroa.13.2, %bb.u ] ; 2 uses
  %.sroa.11219.1 = phi i32 [ %.sroa.11219.0, %.preheader.preheader.i ], [ %.sroa.11219.2, %bb.u ] ; 2 uses
  %.sroa.10218.1 = phi float [ %.sroa.10218.0, %.preheader.preheader.i ], [ %.sroa.10218.2, %bb.u ] ; 2 uses
  %.sroa.9217.1 = phi <2 x float> [ %.sroa.9217.0, %.preheader.preheader.i ], [ %.sroa.9217.2, %bb.u ] ; 2 uses
  %.sroa.8216.1 = phi float [ %.sroa.8216.0, %.preheader.preheader.i ], [ %.sroa.8216.2, %bb.u ] ; 2 uses
  %.sroa.7215.1 = phi <2 x float> [ %.sroa.7215.0, %.preheader.preheader.i ], [ %.sroa.7215.2, %bb.u ] ; 2 uses
  %.sroa.6214.1 = phi float [ %.sroa.6214.0, %.preheader.preheader.i ], [ %.sroa.6214.2, %bb.u ] ; 2 uses
  %.sroa.5213.1 = phi <2 x float> [ %.sroa.5213.0, %.preheader.preheader.i ], [ %.sroa.5213.2, %bb.u ] ; 2 uses
  %.sroa.4212.1 = phi float [ %.sroa.4212.0, %.preheader.preheader.i ], [ %.sroa.4212.2, %bb.u ] ; 2 uses
  %.sroa.0211.1 = phi <2 x float> [ %.sroa.0211.0, %.preheader.preheader.i ], [ %.sroa.0211.2, %bb.u ] ; 2 uses
  %i.js = phi i32 [ %i.fs, %.preheader.preheader.i ], [ %i.ny, %bb.u ] ; 2 uses
  %indvars.iv384.i87 = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next385.i92, %bb.u ] ; 9 uses
  %.1346.i = phi i32 [ %.0100349.i, %.preheader.preheader.i ], [ %.3.i, %bb.u ] ; 2 uses
  %.1102345.i = phi float [ %.0101348.i, %.preheader.preheader.i ], [ %.3104.i, %bb.u ] ; 3 uses
  %.0115344.i = phi i32 [ 0, %.preheader.preheader.i ], [ %12, %bb.u ] ; 2 uses
  switch i64 %indvars.iv384.i87, label %11 [
    i64 1, label %.lr.ph.i90
    i64 2, label %.lr.ph.i90.preheader.fold.split
    i64 3, label %.lr.ph.i90.preheader.fold.split644
    i64 4, label %.lr.ph.i90.preheader.fold.split645
    i64 5, label %.lr.ph.i90.preheader.fold.split646
    i64 6, label %.lr.ph.i90.preheader.fold.split647
  ]

bb.r:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !201
  br label %bb.v

11:                                               ; preds = %.preheader.i86
  br label %.lr.ph.i90

.lr.ph.i90.preheader.fold.split:                  ; preds = %.preheader.i86
  br label %.lr.ph.i90

.lr.ph.i90.preheader.fold.split644:               ; preds = %.preheader.i86
  br label %.lr.ph.i90

.lr.ph.i90.preheader.fold.split645:               ; preds = %.preheader.i86
  br label %.lr.ph.i90

.lr.ph.i90.preheader.fold.split646:               ; preds = %.preheader.i86
  br label %.lr.ph.i90

.lr.ph.i90.preheader.fold.split647:               ; preds = %.preheader.i86
  br label %.lr.ph.i90

._crit_edge.i:                                    ; preds = %.lr.ph.i90.6, %.lr.ph.i90.5, %.lr.ph.i90.4, %.lr.ph.i90.3, %.lr.ph.i90.2, %.lr.ph.i90.1, %.lr.ph.i90
  %.lcssa596 = phi i32 [ %i.ju, %.lr.ph.i90 ], [ %i.kg, %.lr.ph.i90.1 ], [ %i.ks, %.lr.ph.i90.2 ], [ %i.le, %.lr.ph.i90.3 ], [ %i.lq, %.lr.ph.i90.4 ], [ %i.mc, %.lr.ph.i90.5 ], [ %i.mo, %.lr.ph.i90.6 ] ; 2 uses
  %.lcssa595 = phi float [ %i.jx, %.lr.ph.i90 ], [ %i.kj, %.lr.ph.i90.1 ], [ %i.kv, %.lr.ph.i90.2 ], [ %i.lh, %.lr.ph.i90.3 ], [ %i.lt, %.lr.ph.i90.4 ], [ %i.mf, %.lr.ph.i90.5 ], [ %i.mr, %.lr.ph.i90.6 ] ; 2 uses
  %.lcssa594 = phi <2 x float> [ %i.jz, %.lr.ph.i90 ], [ %i.kl, %.lr.ph.i90.1 ], [ %i.kx, %.lr.ph.i90.2 ], [ %i.lj, %.lr.ph.i90.3 ], [ %i.lv, %.lr.ph.i90.4 ], [ %i.mh, %.lr.ph.i90.5 ], [ %i.mt, %.lr.ph.i90.6 ] ; 2 uses
  %.lcssa593 = phi <2 x float> [ %i.kb, %.lr.ph.i90 ], [ %i.kn, %.lr.ph.i90.1 ], [ %i.kz, %.lr.ph.i90.2 ], [ %i.ll, %.lr.ph.i90.3 ], [ %i.lx, %.lr.ph.i90.4 ], [ %i.mj, %.lr.ph.i90.5 ], [ %i.mv, %.lr.ph.i90.6 ] ; 2 uses
  %.lcssa592 = phi float [ %i.kd, %.lr.ph.i90 ], [ %i.kp, %.lr.ph.i90.1 ], [ %i.lb, %.lr.ph.i90.2 ], [ %i.ln, %.lr.ph.i90.3 ], [ %i.lz, %.lr.ph.i90.4 ], [ %i.ml, %.lr.ph.i90.5 ], [ %i.mx, %.lr.ph.i90.6 ] ; 2 uses
  %12 = add nuw nsw i32 %.0115344.i, 1            ; 2 uses
  %13 = icmp sgt i32 %.lcssa591.a, 0
  %14 = icmp sgt i32 %.lcssa596, 0
  %or.cond.i91 = select i1 %13, i1 %14, i1 false
  br i1 %or.cond.i91, label %bb.s, label %bb.u

.lr.ph.i90:                                       ; preds = %11, %.lr.ph.i90.preheader.fold.split, %.lr.ph.i90.preheader.fold.split644, %.lr.ph.i90.preheader.fold.split645, %.lr.ph.i90.preheader.fold.split646, %.lr.ph.i90.preheader.fold.split647, %.preheader.i86
  %.lcssa591.a = phi i32 [ %i.hb, %.preheader.i86 ], [ %i.jj, %11 ], [ %i.hl, %.lr.ph.i90.preheader.fold.split ], [ %i.hv, %.lr.ph.i90.preheader.fold.split644 ], [ %i.if, %.lr.ph.i90.preheader.fold.split645 ], [ %i.ip, %.lr.ph.i90.preheader.fold.split646 ], [ %i.iz, %.lr.ph.i90.preheader.fold.split647 ] ; 3 uses
  %.lcssa590 = phi float [ %i.hd, %.preheader.i86 ], [ %i.jl, %11 ], [ %i.hn, %.lr.ph.i90.preheader.fold.split ], [ %i.hx, %.lr.ph.i90.preheader.fold.split644 ], [ %i.ih, %.lr.ph.i90.preheader.fold.split645 ], [ %i.ir, %.lr.ph.i90.preheader.fold.split646 ], [ %i.jb, %.lr.ph.i90.preheader.fold.split647 ] ; 2 uses
  %.lcssa589 = phi <2 x float> [ %i.hf, %.preheader.i86 ], [ %i.jn, %11 ], [ %i.hp, %.lr.ph.i90.preheader.fold.split ], [ %i.hz, %.lr.ph.i90.preheader.fold.split644 ], [ %i.ij, %.lr.ph.i90.preheader.fold.split645 ], [ %i.it, %.lr.ph.i90.preheader.fold.split646 ], [ %i.jd, %.lr.ph.i90.preheader.fold.split647 ] ; 2 uses
  %.lcssa588 = phi <2 x float> [ %i.hh, %.preheader.i86 ], [ %i.jp, %11 ], [ %i.hr, %.lr.ph.i90.preheader.fold.split ], [ %i.ib, %.lr.ph.i90.preheader.fold.split644 ], [ %i.il, %.lr.ph.i90.preheader.fold.split645 ], [ %i.iv, %.lr.ph.i90.preheader.fold.split646 ], [ %i.jf, %.lr.ph.i90.preheader.fold.split647 ] ; 2 uses
  %.lcssa587 = phi float [ %i.hj, %.preheader.i86 ], [ %i.jr, %11 ], [ %i.ht, %.lr.ph.i90.preheader.fold.split ], [ %i.id, %.lr.ph.i90.preheader.fold.split644 ], [ %i.in, %.lr.ph.i90.preheader.fold.split645 ], [ %i.ix, %.lr.ph.i90.preheader.fold.split646 ], [ %i.jh, %.lr.ph.i90.preheader.fold.split647 ] ; 2 uses
  %i.jt = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv384.i87 ; 5 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !203, !noalias !201 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %.sroa.0315.0.copyload.i = load <2 x float>, ptr %i.jv, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.4316.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  %.sroa.4316.0.copyload.i = load float, ptr %.sroa.4316.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.5317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %.sroa.5317.0.copyload.i = load <2 x float>, ptr %.sroa.5317.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.6318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %.sroa.6318.0.copyload.i = load float, ptr %.sroa.6318.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %i.jw = fcmp ogt float %.sroa.4316.0.copyload.i, f0x7F7FFFFF
  %i.jx = select i1 %i.jw, float f0x7F7FFFFF, float %.sroa.4316.0.copyload.i ; 3 uses
  %i.jy = fcmp ogt <2 x float> %.sroa.0315.0.copyload.i, splat (float f0x7F7FFFFF)
  %i.jz = select <2 x i1> %i.jy, <2 x float> splat (float f0x7F7FFFFF), <2 x float> %.sroa.0315.0.copyload.i ; 3 uses
  %i.ka = fcmp olt <2 x float> %.sroa.5317.0.copyload.i, splat (float f0xFF7FFFFF)
  %i.kb = select <2 x i1> %i.ka, <2 x float> splat (float f0xFF7FFFFF), <2 x float> %.sroa.5317.0.copyload.i ; 3 uses
  %i.kc = fcmp olt float %.sroa.6318.0.copyload.i, f0xFF7FFFFF
  %i.kd = select i1 %i.kc, float f0xFF7FFFFF, float %.sroa.6318.0.copyload.i ; 3 uses
  %indvars.iv.next387.i = add nuw nsw i64 %indvars.iv384.i87, 1 ; 2 uses
  %exitcond389.not.i = icmp eq i64 %indvars.iv.next387.i, 8
  br i1 %exitcond389.not.i, label %._crit_edge.i, label %.lr.ph.i90.1

.lr.ph.i90.1:                                     ; preds = %.lr.ph.i90
  %i.ke = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv.next387.i ; 5 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !203, !noalias !201
  %i.kg = add nsw i32 %i.kf, %i.ju                ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %.sroa.0315.0.copyload.i.1 = load <2 x float>, ptr %i.kh, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.4316.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %.sroa.4316.0.copyload.i.1 = load float, ptr %.sroa.4316.0..sroa_idx.i.1, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.5317.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %.sroa.5317.0.copyload.i.1 = load <2 x float>, ptr %.sroa.5317.0..sroa_idx.i.1, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.6318.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %.sroa.6318.0.copyload.i.1 = load float, ptr %.sroa.6318.0..sroa_idx.i.1, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %i.ki = fcmp olt float %i.jx, %.sroa.4316.0.copyload.i.1
  %i.kj = select i1 %i.ki, float %i.jx, float %.sroa.4316.0.copyload.i.1 ; 3 uses
  %i.kk = fcmp olt <2 x float> %i.jz, %.sroa.0315.0.copyload.i.1
  %i.kl = select <2 x i1> %i.kk, <2 x float> %i.jz, <2 x float> %.sroa.0315.0.copyload.i.1 ; 3 uses
  %i.km = fcmp ogt <2 x float> %i.kb, %.sroa.5317.0.copyload.i.1
  %i.kn = select <2 x i1> %i.km, <2 x float> %i.kb, <2 x float> %.sroa.5317.0.copyload.i.1 ; 3 uses
  %i.ko = fcmp ogt float %i.kd, %.sroa.6318.0.copyload.i.1
  %i.kp = select i1 %i.ko, float %i.kd, float %.sroa.6318.0.copyload.i.1 ; 3 uses
  %indvars.iv.next387.i.1 = add nuw nsw i64 %indvars.iv384.i87, 2 ; 2 uses
  %exitcond389.not.i.1 = icmp eq i64 %indvars.iv.next387.i.1, 8
  br i1 %exitcond389.not.i.1, label %._crit_edge.i, label %.lr.ph.i90.2

.lr.ph.i90.2:                                     ; preds = %.lr.ph.i90.1
  %i.kq = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv.next387.i.1 ; 5 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !203, !noalias !201
  %i.ks = add nsw i32 %i.kr, %i.kg                ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %.sroa.0315.0.copyload.i.2 = load <2 x float>, ptr %i.kt, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.4316.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  %.sroa.4316.0.copyload.i.2 = load float, ptr %.sroa.4316.0..sroa_idx.i.2, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.5317.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %.sroa.5317.0.copyload.i.2 = load <2 x float>, ptr %.sroa.5317.0..sroa_idx.i.2, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.6318.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %.sroa.6318.0.copyload.i.2 = load float, ptr %.sroa.6318.0..sroa_idx.i.2, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %i.ku = fcmp olt float %i.kj, %.sroa.4316.0.copyload.i.2
  %i.kv = select i1 %i.ku, float %i.kj, float %.sroa.4316.0.copyload.i.2 ; 3 uses
  %i.kw = fcmp olt <2 x float> %i.kl, %.sroa.0315.0.copyload.i.2
  %i.kx = select <2 x i1> %i.kw, <2 x float> %i.kl, <2 x float> %.sroa.0315.0.copyload.i.2 ; 3 uses
  %i.ky = fcmp ogt <2 x float> %i.kn, %.sroa.5317.0.copyload.i.2
  %i.kz = select <2 x i1> %i.ky, <2 x float> %i.kn, <2 x float> %.sroa.5317.0.copyload.i.2 ; 3 uses
  %i.la = fcmp ogt float %i.kp, %.sroa.6318.0.copyload.i.2
  %i.lb = select i1 %i.la, float %i.kp, float %.sroa.6318.0.copyload.i.2 ; 3 uses
  %indvars.iv.next387.i.2 = add nuw nsw i64 %indvars.iv384.i87, 3 ; 2 uses
  %exitcond389.not.i.2 = icmp eq i64 %indvars.iv.next387.i.2, 8
  br i1 %exitcond389.not.i.2, label %._crit_edge.i, label %.lr.ph.i90.3

.lr.ph.i90.3:                                     ; preds = %.lr.ph.i90.2
  %i.lc = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv.next387.i.2 ; 5 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !203, !noalias !201
  %i.le = add nsw i32 %i.ld, %i.ks                ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %.sroa.0315.0.copyload.i.3 = load <2 x float>, ptr %i.lf, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.4316.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  %.sroa.4316.0.copyload.i.3 = load float, ptr %.sroa.4316.0..sroa_idx.i.3, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.5317.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %.sroa.5317.0.copyload.i.3 = load <2 x float>, ptr %.sroa.5317.0..sroa_idx.i.3, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.6318.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %.sroa.6318.0.copyload.i.3 = load float, ptr %.sroa.6318.0..sroa_idx.i.3, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %i.lg = fcmp olt float %i.kv, %.sroa.4316.0.copyload.i.3
  %i.lh = select i1 %i.lg, float %i.kv, float %.sroa.4316.0.copyload.i.3 ; 3 uses
  %i.li = fcmp olt <2 x float> %i.kx, %.sroa.0315.0.copyload.i.3
  %i.lj = select <2 x i1> %i.li, <2 x float> %i.kx, <2 x float> %.sroa.0315.0.copyload.i.3 ; 3 uses
  %i.lk = fcmp ogt <2 x float> %i.kz, %.sroa.5317.0.copyload.i.3
  %i.ll = select <2 x i1> %i.lk, <2 x float> %i.kz, <2 x float> %.sroa.5317.0.copyload.i.3 ; 3 uses
  %i.lm = fcmp ogt float %i.lb, %.sroa.6318.0.copyload.i.3
  %i.ln = select i1 %i.lm, float %i.lb, float %.sroa.6318.0.copyload.i.3 ; 3 uses
  %indvars.iv.next387.i.3 = add nuw nsw i64 %indvars.iv384.i87, 4 ; 2 uses
  %exitcond389.not.i.3 = icmp eq i64 %indvars.iv.next387.i.3, 8
  br i1 %exitcond389.not.i.3, label %._crit_edge.i, label %.lr.ph.i90.4

.lr.ph.i90.4:                                     ; preds = %.lr.ph.i90.3
  %i.lo = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv.next387.i.3 ; 5 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !203, !noalias !201
  %i.lq = add nsw i32 %i.lp, %i.le                ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %.sroa.0315.0.copyload.i.4 = load <2 x float>, ptr %i.lr, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.4316.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  %.sroa.4316.0.copyload.i.4 = load float, ptr %.sroa.4316.0..sroa_idx.i.4, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.5317.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %.sroa.5317.0.copyload.i.4 = load <2 x float>, ptr %.sroa.5317.0..sroa_idx.i.4, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.6318.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %.sroa.6318.0.copyload.i.4 = load float, ptr %.sroa.6318.0..sroa_idx.i.4, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %i.ls = fcmp olt float %i.lh, %.sroa.4316.0.copyload.i.4
  %i.lt = select i1 %i.ls, float %i.lh, float %.sroa.4316.0.copyload.i.4 ; 3 uses
  %i.lu = fcmp olt <2 x float> %i.lj, %.sroa.0315.0.copyload.i.4
  %i.lv = select <2 x i1> %i.lu, <2 x float> %i.lj, <2 x float> %.sroa.0315.0.copyload.i.4 ; 3 uses
  %i.lw = fcmp ogt <2 x float> %i.ll, %.sroa.5317.0.copyload.i.4
  %i.lx = select <2 x i1> %i.lw, <2 x float> %i.ll, <2 x float> %.sroa.5317.0.copyload.i.4 ; 3 uses
  %i.ly = fcmp ogt float %i.ln, %.sroa.6318.0.copyload.i.4
  %i.lz = select i1 %i.ly, float %i.ln, float %.sroa.6318.0.copyload.i.4 ; 3 uses
  %indvars.iv.next387.i.4 = add nuw nsw i64 %indvars.iv384.i87, 5 ; 2 uses
  %exitcond389.not.i.4 = icmp eq i64 %indvars.iv.next387.i.4, 8
  br i1 %exitcond389.not.i.4, label %._crit_edge.i, label %.lr.ph.i90.5

.lr.ph.i90.5:                                     ; preds = %.lr.ph.i90.4
  %i.ma = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv.next387.i.4 ; 5 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !203, !noalias !201
  %i.mc = add nsw i32 %i.mb, %i.lq                ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %.sroa.0315.0.copyload.i.5 = load <2 x float>, ptr %i.md, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.4316.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %i.ma, i64 12
  %.sroa.4316.0.copyload.i.5 = load float, ptr %.sroa.4316.0..sroa_idx.i.5, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.5317.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %.sroa.5317.0.copyload.i.5 = load <2 x float>, ptr %.sroa.5317.0..sroa_idx.i.5, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.6318.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %.sroa.6318.0.copyload.i.5 = load float, ptr %.sroa.6318.0..sroa_idx.i.5, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %i.me = fcmp olt float %i.lt, %.sroa.4316.0.copyload.i.5
  %i.mf = select i1 %i.me, float %i.lt, float %.sroa.4316.0.copyload.i.5 ; 3 uses
  %i.mg = fcmp olt <2 x float> %i.lv, %.sroa.0315.0.copyload.i.5
  %i.mh = select <2 x i1> %i.mg, <2 x float> %i.lv, <2 x float> %.sroa.0315.0.copyload.i.5 ; 3 uses
  %i.mi = fcmp ogt <2 x float> %i.lx, %.sroa.5317.0.copyload.i.5
  %i.mj = select <2 x i1> %i.mi, <2 x float> %i.lx, <2 x float> %.sroa.5317.0.copyload.i.5 ; 3 uses
  %i.mk = fcmp ogt float %i.lz, %.sroa.6318.0.copyload.i.5
  %i.ml = select i1 %i.mk, float %i.lz, float %.sroa.6318.0.copyload.i.5 ; 3 uses
  %indvars.iv.next387.i.5 = add nuw nsw i64 %indvars.iv384.i87, 6 ; 2 uses
  %exitcond389.not.i.5 = icmp eq i64 %indvars.iv.next387.i.5, 8
  br i1 %exitcond389.not.i.5, label %._crit_edge.i, label %.lr.ph.i90.6

.lr.ph.i90.6:                                     ; preds = %.lr.ph.i90.5
  %i.mm = getelementptr inbounds nuw [28 x i8], ptr %6, i64 %indvars.iv.next387.i.5 ; 5 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !203, !noalias !201
  %i.mo = add nsw i32 %i.mn, %i.mc
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %.sroa.0315.0.copyload.i.6 = load <2 x float>, ptr %i.mp, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.4316.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  %.sroa.4316.0.copyload.i.6 = load float, ptr %.sroa.4316.0..sroa_idx.i.6, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.5317.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %.sroa.5317.0.copyload.i.6 = load <2 x float>, ptr %.sroa.5317.0..sroa_idx.i.6, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %.sroa.6318.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %.sroa.6318.0.copyload.i.6 = load float, ptr %.sroa.6318.0..sroa_idx.i.6, align 4, !tbaa !16, !noalias !201 ; 2 uses
  %i.mq = fcmp olt float %i.mf, %.sroa.4316.0.copyload.i.6
  %i.mr = select i1 %i.mq, float %i.mf, float %.sroa.4316.0.copyload.i.6
  %i.ms = fcmp olt <2 x float> %i.mh, %.sroa.0315.0.copyload.i.6
  %i.mt = select <2 x i1> %i.ms, <2 x float> %i.mh, <2 x float> %.sroa.0315.0.copyload.i.6
  %i.mu = fcmp ogt <2 x float> %i.mj, %.sroa.5317.0.copyload.i.6
  %i.mv = select <2 x i1> %i.mu, <2 x float> %i.mj, <2 x float> %.sroa.5317.0.copyload.i.6
  %i.mw = fcmp ogt float %i.ml, %.sroa.6318.0.copyload.i.6
  %i.mx = select i1 %i.mw, float %i.ml, float %.sroa.6318.0.copyload.i.6
  br label %._crit_edge.i

bb.s:                                             ; preds = %._crit_edge.i
  %i.my = uitofp nneg i32 %.lcssa591.a to float
  %i.mz = fsub <2 x float> %.lcssa588, %.lcssa589 ; 2 uses
  %i.na = fsub float %.lcssa587, %.lcssa590       ; 2 uses
  %i.nb = extractelement <2 x float> %i.mz, i64 0 ; 2 uses
  %i.nc = extractelement <2 x float> %i.mz, i64 1 ; 2 uses
  %i.nd = fmul float %i.nb, %i.nc
  %i.ne = fmul float %i.nc, %i.na
  %i.nf = fadd float %i.nd, %i.ne
  %i.ng = fmul float %i.na, %i.nb
  %i.nh = fadd float %i.ng, %i.nf
  %i.ni = fmul float %i.nh, 2.000000e+00
  %i.nj = fmul float %i.ni, %i.my
  %i.nk = uitofp nneg i32 %.lcssa596 to float
  %i.nl = fsub <2 x float> %.lcssa593, %.lcssa594 ; 2 uses
  %i.nm = fsub float %.lcssa592, %.lcssa595       ; 2 uses
  %i.nn = extractelement <2 x float> %i.nl, i64 0 ; 2 uses
  %i.no = extractelement <2 x float> %i.nl, i64 1 ; 2 uses
  %i.np = fmul float %i.nn, %i.no
  %i.nq = fmul float %i.nm, %i.no
  %i.nr = fadd float %i.np, %i.nq
  %i.ns = fmul float %i.nm, %i.nn
  %i.nt = fadd float %i.ns, %i.nr
  %i.nu = fmul float %i.nt, 2.000000e+00
  %i.nv = fmul float %i.nu, %i.nk
  %i.nw = fadd float %i.nj, %i.nv                 ; 2 uses
  %i.nx = fcmp olt float %i.nw, %.1102345.i
  br i1 %i.nx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i
  %.sroa.13.2 = phi i32 [ %.lcssa591.a, %bb.t ], [ %.sroa.13.1, %bb.s ], [ %.sroa.13.1, %._crit_edge.i ] ; 2 uses
  %.sroa.11219.2 = phi i32 [ %i.ha, %bb.t ], [ %.sroa.11219.1, %bb.s ], [ %.sroa.11219.1, %._crit_edge.i ] ; 2 uses
  %.sroa.10218.2 = phi float [ %.lcssa592, %bb.t ], [ %.sroa.10218.1, %bb.s ], [ %.sroa.10218.1, %._crit_edge.i ] ; 2 uses
  %.sroa.9217.2 = phi <2 x float> [ %.lcssa593, %bb.t ], [ %.sroa.9217.1, %bb.s ], [ %.sroa.9217.1, %._crit_edge.i ] ; 2 uses
  %.sroa.8216.2 = phi float [ %.lcssa595, %bb.t ], [ %.sroa.8216.1, %bb.s ], [ %.sroa.8216.1, %._crit_edge.i ] ; 2 uses
  %.sroa.7215.2 = phi <2 x float> [ %.lcssa594, %bb.t ], [ %.sroa.7215.1, %bb.s ], [ %.sroa.7215.1, %._crit_edge.i ] ; 2 uses
  %.sroa.6214.2 = phi float [ %.lcssa587, %bb.t ], [ %.sroa.6214.1, %bb.s ], [ %.sroa.6214.1, %._crit_edge.i ] ; 2 uses
  %.sroa.5213.2 = phi <2 x float> [ %.lcssa588, %bb.t ], [ %.sroa.5213.1, %bb.s ], [ %.sroa.5213.1, %._crit_edge.i ] ; 2 uses
  %.sroa.4212.2 = phi float [ %.lcssa590, %bb.t ], [ %.sroa.4212.1, %bb.s ], [ %.sroa.4212.1, %._crit_edge.i ] ; 2 uses
  %.sroa.0211.2 = phi <2 x float> [ %.lcssa589, %bb.t ], [ %.sroa.0211.1, %bb.s ], [ %.sroa.0211.1, %._crit_edge.i ] ; 2 uses
  %i.ny = phi i32 [ %i.ha, %bb.t ], [ %i.js, %bb.s ], [ %i.js, %._crit_edge.i ] ; 2 uses
  %.3104.i = phi float [ %i.nw, %bb.t ], [ %.1102345.i, %bb.s ], [ %.1102345.i, %._crit_edge.i ] ; 2 uses
  %.3.i = phi i32 [ %.0115344.i, %bb.t ], [ %.1346.i, %bb.s ], [ %.1346.i, %._crit_edge.i ] ; 2 uses
  %indvars.iv.next385.i92 = add nuw nsw i64 %indvars.iv384.i87, 1
  %exitcond391.not.i = icmp eq i32 %12, 7
  br i1 %exitcond391.not.i, label %bb.r, label %.preheader.i86, !llvm.loop !188

bb.v:                                             ; preds = %bb.r, %bb.o
  %.sroa.13.3 = phi i32 [ %.sroa.13.0, %bb.o ], [ %.sroa.13.2, %bb.r ] ; 2 uses
  %.sroa.11219.3 = phi i32 [ %.sroa.11219.0, %bb.o ], [ %.sroa.11219.2, %bb.r ] ; 3 uses
  %.sroa.10218.3 = phi float [ %.sroa.10218.0, %bb.o ], [ %.sroa.10218.2, %bb.r ] ; 2 uses
  %.sroa.9217.3 = phi <2 x float> [ %.sroa.9217.0, %bb.o ], [ %.sroa.9217.2, %bb.r ] ; 2 uses
  %.sroa.8216.3 = phi float [ %.sroa.8216.0, %bb.o ], [ %.sroa.8216.2, %bb.r ] ; 2 uses
  %.sroa.7215.3 = phi <2 x float> [ %.sroa.7215.0, %bb.o ], [ %.sroa.7215.2, %bb.r ] ; 2 uses
  %.sroa.6214.3 = phi float [ %.sroa.6214.0, %bb.o ], [ %.sroa.6214.2, %bb.r ] ; 2 uses
  %.sroa.5213.3 = phi <2 x float> [ %.sroa.5213.0, %bb.o ], [ %.sroa.5213.2, %bb.r ] ; 2 uses
  %.sroa.4212.3 = phi float [ %.sroa.4212.0, %bb.o ], [ %.sroa.4212.2, %bb.r ] ; 2 uses
  %.sroa.0211.3 = phi <2 x float> [ %.sroa.0211.0, %bb.o ], [ %.sroa.0211.2, %bb.r ] ; 2 uses
  %i.nz = phi i32 [ %i.fs, %bb.o ], [ %i.ny, %bb.r ] ; 2 uses
  %.4105.i = phi float [ %.0101348.i, %bb.o ], [ %.3104.i, %bb.r ]
  %.4.i = phi i32 [ %.0100349.i, %bb.o ], [ %.3.i, %bb.r ] ; 3 uses
  %indvars.iv.next393.i = add nuw nsw i64 %indvars.iv392.i, 1 ; 2 uses
  %exitcond395.not.i = icmp eq i64 %indvars.iv.next393.i, 3
  br i1 %exitcond395.not.i, label %bb.n, label %bb.o, !llvm.loop !189

bb.w:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17, !noalias !201
  store float %i.es, ptr %i.d, align 4, !tbaa !16, !noalias !201
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store float %i.et, ptr %i.oa, align 4, !tbaa !16, !noalias !201
  %i.ob = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float %i.fq, ptr %i.ob, align 4, !tbaa !16, !noalias !201
  %i.oc = sext i32 %i.nz to i64                   ; 4 uses
  %i.od = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.oc
  %i.oe = load float, ptr %i.od, align 4, !tbaa !16, !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17, !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17, !noalias !201
  store float %i.eq, ptr %i.c, align 4, !tbaa !16, !noalias !201
  %i.of = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float %i.er, ptr %i.of, align 4, !tbaa !16, !noalias !201
  %i.og = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.fm, ptr %i.og, align 4, !tbaa !16, !noalias !201
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.oc
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !16, !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17, !noalias !201
  %i.oj = fsub float %i.oe, %i.oi
  %i.ok = fdiv float f0x40FFFFFE, %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.om = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.oc
  %i.on = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.op = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.oc
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %indvars.iv396.i = phi i64 [ 0, %bb.w ], [ %indvars.iv.next397.i, %bb.z ] ; 2 uses
  %.0108350.i = phi i32 [ 0, %bb.w ], [ %.1109.i, %bb.z ] ; 3 uses
  %i.oq = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv396.i ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %.sroa.04.0.copyload.i = load <2 x float>, ptr %i.or, align 4, !tbaa !16, !noalias !201
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !16, !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !201
  store <2 x float> %.sroa.04.0.copyload.i, ptr %i.b, align 8, !tbaa !16, !noalias !201
  store float %.sroa.4.0.copyload.i, ptr %i.ol, align 8, !tbaa !16, !noalias !201
  %i.os = load float, ptr %i.om, align 4, !tbaa !16, !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !201
  store float %i.eq, ptr %i.a, align 4, !tbaa !16, !noalias !201
  store float %i.er, ptr %i.on, align 4, !tbaa !16, !noalias !201
  store float %i.fm, ptr %i.oo, align 4, !tbaa !16, !noalias !201
  %i.ot = load float, ptr %i.op, align 4, !tbaa !16, !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !201
  %i.ou = fsub float %i.os, %i.ot
  %i.ov = fmul float %i.ok, %i.ou
  %i.ow = fptosi float %i.ov to i32
  %.not.i = icmp slt i32 %.4.i, %i.ow
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %7, ptr noundef nonnull align 4 dereferenceable(40) %i.oq, i64 40, i1 false), !tbaa.struct !198, !noalias !201
  %i.ox = sext i32 %.0108350.i to i64
  %i.oy = getelementptr inbounds [40 x i8], ptr %2, i64 %i.ox ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.oq, ptr noundef nonnull align 4 dereferenceable(40) %i.oy, i64 40, i1 false), !tbaa.struct !198, !noalias !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.oy, ptr noundef nonnull align 4 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !198, !noalias !201
  %i.oz = add nsw i32 %.0108350.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1109.i = phi i32 [ %i.oz, %bb.y ], [ %.0108350.i, %bb.x ]
  %indvars.iv.next397.i = add nuw nsw i64 %indvars.iv396.i, 1 ; 2 uses
  %exitcond400.not.i = icmp eq i64 %indvars.iv.next397.i, %wide.trip.count.i
  br i1 %exitcond400.not.i, label %b3SplitMedian.exit, label %bb.x, !llvm.loop !190

b3SplitMedian.exit:                               ; preds = %bb.z, %bb.n
  %i.pa = icmp slt i32 %.sroa.11219.3, 0
  br i1 %i.pa, label %bb.aa, label %b3SplitMedian.exit.thread

bb.aa:                                            ; preds = %b3SplitMedian.exit
  %i.pb = icmp sgt i32 %1, 8
  br i1 %i.pb, label %bb.ab, label %.lr.ph344.4

bb.ab:                                            ; preds = %bb.aa
  %i.pc = lshr i32 %1, 1                          ; 2 uses
  %wide.trip.count.i95 = zext nneg i32 %i.pc to i64
  br label %.lr.ph.i96

.preheader.i112:                                  ; preds = %.lr.ph.i96
  %i.pd = lshr i64 %wide.trip.count.i, 1
  br label %bb.ac

.lr.ph.i96:                                       ; preds = %.lr.ph.i96, %bb.ab
  %indvars.iv.i97 = phi i64 [ 0, %bb.ab ], [ %indvars.iv.next.i110, %.lr.ph.i96 ] ; 2 uses
  %.sroa.9118.0159.i = phi float [ f0xFF7FFFFF, %bb.ab ], [ %i.pm, %.lr.ph.i96 ] ; 2 uses
  %.sroa.8112.0158.i = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.ab ], [ %i.pk, %.lr.ph.i96 ] ; 2 uses
  %.sroa.7106.0157.i = phi float [ f0x7F7FFFFF, %bb.ab ], [ %i.pg, %.lr.ph.i96 ] ; 2 uses
  %.sroa.0102.0156.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.ab ], [ %i.pi, %.lr.ph.i96 ] ; 2 uses
  %i.pe = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv.i97 ; 4 uses
  %.sroa.0132.0.copyload.i = load <2 x float>, ptr %i.pe, align 4, !tbaa !16, !noalias !204 ; 2 uses
  %.sroa.4133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %.sroa.4133.0.copyload.i = load float, ptr %.sroa.4133.0..sroa_idx.i, align 4, !tbaa !16, !noalias !204 ; 2 uses
  %.sroa.5134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pe, i64 12
  %.sroa.5134.0.copyload.i = load <2 x float>, ptr %.sroa.5134.0..sroa_idx.i, align 4, !tbaa !16, !noalias !204 ; 2 uses
  %.sroa.6135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pe, i64 20
  %.sroa.6135.0.copyload.i = load float, ptr %.sroa.6135.0..sroa_idx.i, align 4, !tbaa !16, !noalias !204 ; 2 uses
  %i.pf = fcmp olt float %.sroa.7106.0157.i, %.sroa.4133.0.copyload.i
  %i.pg = select i1 %i.pf, float %.sroa.7106.0157.i, float %.sroa.4133.0.copyload.i ; 4 uses
  %i.ph = fcmp olt <2 x float> %.sroa.0102.0156.i, %.sroa.0132.0.copyload.i
  %i.pi = select <2 x i1> %i.ph, <2 x float> %.sroa.0102.0156.i, <2 x float> %.sroa.0132.0.copyload.i ; 4 uses
  %i.pj = fcmp ogt <2 x float> %.sroa.8112.0158.i, %.sroa.5134.0.copyload.i
  %i.pk = select <2 x i1> %i.pj, <2 x float> %.sroa.8112.0158.i, <2 x float> %.sroa.5134.0.copyload.i ; 4 uses
  %i.pl = fcmp ogt float %.sroa.9118.0159.i, %.sroa.6135.0.copyload.i
  %i.pm = select i1 %i.pl, float %.sroa.9118.0159.i, float %.sroa.6135.0.copyload.i ; 4 uses
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %exitcond.not.i111 = icmp eq i64 %indvars.iv.next.i110, %wide.trip.count.i95
  br i1 %exitcond.not.i111, label %.preheader.i112, label %.lr.ph.i96, !llvm.loop !193

bb.ac:                                            ; preds = %bb.ac, %.preheader.i112
  %indvars.iv177.i = phi i64 [ %i.pd, %.preheader.i112 ], [ %indvars.iv.next178.i, %bb.ac ] ; 2 uses
  %.sroa.9.0167.i = phi float [ f0xFF7FFFFF, %.preheader.i112 ], [ %i.pv, %bb.ac ] ; 2 uses
  %.sroa.887.0166.i = phi <2 x float> [ splat (float f0xFF7FFFFF), %.preheader.i112 ], [ %i.pt, %bb.ac ] ; 2 uses
  %.sroa.7.0165.i = phi float [ f0x7F7FFFFF, %.preheader.i112 ], [ %i.pr, %bb.ac ] ; 2 uses
  %.sroa.078.0164.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %.preheader.i112 ], [ %i.pp, %bb.ac ] ; 2 uses
  %i.pn = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv177.i ; 4 uses
  %.sroa.0152.0.copyload.i = load <2 x float>, ptr %i.pn, align 4, !tbaa !16, !noalias !204 ; 2 uses
  %.sroa.4153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %.sroa.4153.0.copyload.i = load float, ptr %.sroa.4153.0..sroa_idx.i, align 4, !tbaa !16, !noalias !204 ; 2 uses
  %.sroa.5154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  %.sroa.5154.0.copyload.i = load <2 x float>, ptr %.sroa.5154.0..sroa_idx.i, align 4, !tbaa !16, !noalias !204 ; 2 uses
  %.sroa.6155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pn, i64 20
  %.sroa.6155.0.copyload.i = load float, ptr %.sroa.6155.0..sroa_idx.i, align 4, !tbaa !16, !noalias !204 ; 2 uses
  %i.po = fcmp olt <2 x float> %.sroa.078.0164.i, %.sroa.0152.0.copyload.i
  %i.pp = select <2 x i1> %i.po, <2 x float> %.sroa.078.0164.i, <2 x float> %.sroa.0152.0.copyload.i ; 4 uses
  %i.pq = fcmp olt float %.sroa.7.0165.i, %.sroa.4153.0.copyload.i
  %i.pr = select i1 %i.pq, float %.sroa.7.0165.i, float %.sroa.4153.0.copyload.i ; 4 uses
  %i.ps = fcmp ogt <2 x float> %.sroa.887.0166.i, %.sroa.5154.0.copyload.i
  %i.pt = select <2 x i1> %i.ps, <2 x float> %.sroa.887.0166.i, <2 x float> %.sroa.5154.0.copyload.i ; 4 uses
  %i.pu = fcmp ogt float %.sroa.9.0167.i, %.sroa.6155.0.copyload.i
  %i.pv = select i1 %i.pu, float %.sroa.9.0167.i, float %.sroa.6155.0.copyload.i ; 4 uses
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %i.pw = icmp samesign ult i64 %indvars.iv.next178.i, %wide.trip.count.i
  br i1 %i.pw, label %bb.ac, label %b3SplitHalf.exit, !llvm.loop !194

b3SplitHalf.exit:                                 ; preds = %bb.ac
  %i.px = fcmp olt <2 x float> %i.pi, %i.pp
  %i.py = fcmp olt float %i.pg, %i.pr
  %i.pz = select i1 %i.py, float %i.pg, float %i.pr
  %i.qa = fcmp ogt <2 x float> %i.pk, %i.pt
  %i.qb = fcmp ogt float %i.pm, %i.pv
  %i.qc = select i1 %i.qb, float %i.pm, float %i.pv
  %i.qd = fsub float %i.qc, %i.pz
  %i.qe = select <2 x i1> %i.px, <2 x float> %i.pi, <2 x float> %i.pp
  %i.qf = select <2 x i1> %i.qa, <2 x float> %i.pk, <2 x float> %i.pt
  %i.qg = fsub <2 x float> %i.qf, %i.qe
  %i.qh = fmul <2 x float> %i.qg, splat (float 5.000000e-01) ; 2 uses
  %i.qi = fmul float %i.qd, 5.000000e-01          ; 2 uses
  %i.qj = extractelement <2 x float> %i.qh, i64 0 ; 2 uses
  %i.qk = extractelement <2 x float> %i.qh, i64 1 ; 2 uses
  %i.ql = fcmp olt float %i.qj, %i.qk
  %i.qm = fcmp olt float %i.qk, %i.qi
  %i.qn = select i1 %i.qm, i32 2, i32 1
  %i.qo = fcmp olt float %i.qj, %i.qi
  %i.qp = select i1 %i.qo, i32 2, i32 0
  %i.qq = select i1 %i.ql, i32 %i.qn, i32 %i.qp
  br label %b3SplitMedian.exit.thread

._crit_edge345:                                   ; preds = %.lr.ph344.7, %.lr.ph344.6, %.lr.ph344.5, %.lr.ph344.4
  %.lcssa586 = phi <2 x float> [ %i.uc, %.lr.ph344.7 ], [ %i.tt, %.lr.ph344.6 ], [ %i.tk, %.lr.ph344.5 ], [ %i.tb, %.lr.ph344.4 ]
  %.lcssa585 = phi float [ %i.ue, %.lr.ph344.7 ], [ %i.tv, %.lr.ph344.6 ], [ %i.tm, %.lr.ph344.5 ], [ %i.td, %.lr.ph344.4 ]
  %.lcssa584 = phi <2 x float> [ %i.ug, %.lr.ph344.7 ], [ %i.tx, %.lr.ph344.6 ], [ %i.to, %.lr.ph344.5 ], [ %i.tf, %.lr.ph344.4 ]
  %.lcssa583 = phi float [ %i.ui, %.lr.ph344.7 ], [ %i.tz, %.lr.ph344.6 ], [ %i.tq, %.lr.ph344.5 ], [ %i.th, %.lr.ph344.4 ]
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.qt = load i32, ptr %i.qr, align 4, !tbaa !18 ; 2 uses
  %i.qu = load i32, ptr %i.qs, align 4, !tbaa !18 ; 4 uses
  %.not.i115 = icmp slt i32 %i.qt, %i.qu
  %.pre416 = load ptr, ptr %0, align 8, !tbaa !74 ; 2 uses
  br i1 %.not.i115, label %b3EmplaceHelper.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge345
  %i.qv = shl nsw i32 %i.qu, 5
  %i.qw = icmp eq i32 %i.qu, 0
  %i.qx = shl nsw i32 %i.qu, 1
end_hunk_0
