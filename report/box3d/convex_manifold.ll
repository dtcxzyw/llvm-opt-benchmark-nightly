Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/convex_manifold?download=true
inline.NumInlined: 436
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3BuildFaceAContact:bb.a
  %i.gh = call float @b3GetLengthUnitsPerMeter() #11
  %i.gi = fmul float %i.gh, 5.000000e-03
  %i.gj = fmul float %i.gi, 4.000000e+00
  %i.gk = fcmp ult float %i.hd, %i.gj             ; 2 uses
  br i1 %i.gk, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.01417 = phi float [ f0x7F7FFFFF, %bb.g ], [ %i.hd, %bb.i ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [20 x i8], ptr %.0139, i64 %indvars.iv ; 4 uses
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i8 0, i64 24, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 12 ; 3 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !45
  %i.gp = fmul float %i.go, 5.000000e-01          ; 2 uses
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.gl, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4
  %i.gq = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x float> %.sroa.0100.0.copyload, %i.gr
  %i.gt = fsub <2 x float> %.sroa.05.0.copyload, %i.gs
  %i.gu = fmul float %.sroa.9.8.vec.extract, %i.gp
  %i.gv = fsub float %.sroa.26.0.copyload, %i.gu
  store <2 x float> %i.gt, ptr %i.gm, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store float %i.gv, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !9
  %i.gw = load float, ptr %i.gn, align 4, !tbaa !45
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  store float %i.gw, ptr %i.gx, align 4, !tbaa !20
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.ha = load i32, ptr %i.gz, align 4
  store i32 %i.ha, ptr %i.gy, align 8
  %i.hb = load float, ptr %i.gn, align 4, !tbaa !45 ; 2 uses
  %i.hc = fcmp olt float %.01417, %i.hb
  %i.hd = select i1 %i.hc, float %.01417, float %i.hb ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.h, label %bb.i, !llvm.loop !107

bb.j:                                             ; preds = %bb.h
  store i64 0, ptr %4, align 4
  br label %bb.aa

bb.k:                                             ; preds = %bb.h
  %i.he = icmp samesign ult i32 %i.gd, 5
  br i1 %i.he, label %.lr.ph459.i, label %bb.m

.lr.ph459.i:                                      ; preds = %bb.k
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hg, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !71
  %i.hh = load ptr, ptr %i.hf, align 8, !tbaa !17
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.hj, i64 24, i1 false), !tbaa.struct !71
  %i.hk = load ptr, ptr %i.hf, align 8, !tbaa !17
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hl, ptr noundef nonnull align 16 dereferenceable(24) %i.hm, i64 24, i1 false), !tbaa.struct !71
  %exitcond484.not.i.2 = icmp eq i32 %i.gd, 3
  br i1 %exitcond484.not.i.2, label %._crit_edge460.i, label %bb.l

._crit_edge460.i:                                 ; preds = %bb.l, %.lr.ph459.i
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.gg, ptr %i.hn, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

bb.l:                                             ; preds = %.lr.ph459.i
  %i.ho = load ptr, ptr %i.hf, align 8, !tbaa !17
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %i.hq, i64 24, i1 false), !tbaa.struct !71
  br label %._crit_edge460.i

bb.m:                                             ; preds = %bb.k
  %.sroa.0244.0.copyload.i = load <2 x float>, ptr %0, align 8 ; 9 uses
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx106, align 8, !tbaa !9 ; 9 uses
  %i.hr = call float @b3GetLengthUnitsPerMeter() #11
  %i.hs = fmul float %i.hr, 5.000000e-03
  %i.ht = fmul float %i.hs, 4.000000e+00          ; 3 uses
  %i.hu = fmul float %i.ht, %i.ht                 ; 3 uses
  %i.hv = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 0 ; 6 uses
  %i.hw = call float @llvm.fabs.f32(float %.sroa.041.0.vec.extract.i.i)
  %or.cond.i.i = fcmp ogt float %i.hw, 5.000000e-01
  br i1 %or.cond.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hx = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1
  %i.hy = fmul float %i.hx, 6.700000e-01
  %i.hz = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.ia = fsub float %i.hy, %i.hz
  %i.ib = fmul nnan float %.sroa.041.0.vec.extract.i.i, -6.700000e-01
  %i.ic = fmul nnan float %.sroa.041.0.vec.extract.i.i, 4.200000e-01
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.id = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 3 uses
  %i.ie = call float @llvm.fabs.f32(float %i.id)
  %or.cond5.i.i = fcmp ogt float %i.ie, 5.000000e-01
  br i1 %or.cond5.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.if = fmul nnan float %i.id, 6.700000e-01
  %i.ig = fmul float %.sroa.041.0.vec.extract.i.i, -6.700000e-01
  %i.ih = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.ii = fsub float %i.ig, %i.ih
  %i.ij = fmul nnan float %i.id, 4.200000e-01
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ik = fmul float %.sroa.10.0.copyload.i, 6.700000e-01
  %i.il = fmul float %.sroa.10.0.copyload.i, -4.200000e-01
  %i.im = fmul <2 x float> %.sroa.0244.0.copyload.i, <float 6.700000e-01, float 4.200000e-01> ; 2 uses
  %shift22 = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop23 = fsub <2 x float> %shift22, %i.im
  %i.in = extractelement <2 x float> %foldExtExtBinop23, i64 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.sink67.i.i = phi float [ %i.if, %bb.p ], [ %i.ik, %bb.q ], [ %i.ia, %bb.n ] ; 3 uses
  %.sink.i.i = phi float [ %i.ii, %bb.p ], [ %i.il, %bb.q ], [ %i.ib, %bb.n ] ; 3 uses
  %.sroa.9.0.i.i = phi float [ %i.ij, %bb.p ], [ %i.in, %bb.q ], [ %i.ic, %bb.n ] ; 3 uses
  %i.io = fmul float %.sink67.i.i, %.sink67.i.i
  %i.ip = fmul float %.sink.i.i, %.sink.i.i
  %i.iq = fadd float %i.io, %i.ip
  %i.ir = fmul float %.sroa.9.0.i.i, %.sroa.9.0.i.i
  %i.is = fadd float %i.ir, %i.iq                 ; 2 uses
  %i.it = fcmp ogt float %i.is, f0x057A0000
  br i1 %i.it, label %bb.s, label %.lr.ph.i

bb.s:                                             ; preds = %bb.r
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.is)
  %i.iu = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.iv = fmul float %.sink67.i.i, %i.iu
  %.sroa.018.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.iw = fmul float %.sink.i.i, %i.iu
  %.sroa.018.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i.i, float %i.iw, i64 1
  %i.ix = fmul float %.sroa.9.0.i.i, %i.iu
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.r
  %.sroa.018.0.i.i.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i.i, %bb.s ], [ zeroinitializer, %bb.r ]
  %.sroa.5.0.i.i.i = phi float [ %i.ix, %bb.s ], [ 0.000000e+00, %bb.r ]
  br label %bb.t

._crit_edge.i:                                    ; preds = %bb.v
  %i.iy = icmp eq i32 %.2.i, -1
  br i1 %i.iy, label %bb.w, label %.lr.ph438.i

bb.t:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i166 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i169, %bb.v ] ; 3 uses
  %.0301433.i = phi i32 [ -1, %.lr.ph.i ], [ %.2.i, %bb.v ] ; 2 uses
  %.0302432.i = phi float [ f0xFF7FFFFF, %.lr.ph.i ], [ %.2304.i, %bb.v ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv.i166 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !20 ; 2 uses
  %i.jc = fcmp ogt float %i.jb, %i.ht
  br i1 %i.jc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0198.0.copyload.i = load <2 x float>, ptr %i.iz, align 8
  %.sroa.2199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %.sroa.2199.0.copyload.i = load float, ptr %.sroa.2199.0..sroa_idx.i, align 8
  %i.jd = fmul <2 x float> %.sroa.018.0.i.i.i, %.sroa.0198.0.copyload.i ; 2 uses
  %shift25 = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop26 = fadd <2 x float> %i.jd, %shift25
  %i.je = extractelement <2 x float> %foldExtExtBinop26, i64 0
  %i.jf = fmul float %.sroa.5.0.i.i.i, %.sroa.2199.0.copyload.i
  %i.jg = fadd float %i.jf, %i.je
  %i.jh = fsub float %i.jg, %i.jb                 ; 2 uses
  %i.ji = fmul float %i.jh, f0x3F733333
  %i.jj = fcmp ogt float %i.ji, %.0302432.i       ; 2 uses
  %.1303.i = select i1 %i.jj, float %i.jh, float %.0302432.i
  %i.jk = trunc nuw nsw i64 %indvars.iv.i166 to i32
  %.1.i = select i1 %i.jj, i32 %i.jk, i32 %.0301433.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2304.i = phi float [ %.1303.i, %bb.u ], [ %.0302432.i, %bb.t ]
  %.2.i = phi i32 [ %.1.i, %bb.u ], [ %.0301433.i, %bb.t ] ; 3 uses
  %indvars.iv.next.i169 = add nuw nsw i64 %indvars.iv.i166, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i169, %wide.trip.count
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.t, !llvm.loop !108

bb.w:                                             ; preds = %._crit_edge.i
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.jl, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

.lr.ph438.i:                                      ; preds = %._crit_edge.i
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !17
  %i.jo = sext i32 %.2.i to i64
  %i.jp = getelementptr inbounds [24 x i8], ptr %7, i64 %i.jo ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.jn, ptr noundef nonnull align 8 dereferenceable(24) %i.jp, i64 24, i1 false), !tbaa.struct !71
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 1, ptr %i.jq, align 8, !tbaa !16
  %i.jr = add nsw i32 %i.gg, -1                   ; 2 uses
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.js
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %i.jt, i64 24, i1 false), !tbaa.struct !71
  %i.ju = load ptr, ptr %i.jm, align 8, !tbaa !17 ; 3 uses
  %.sroa.0193.0.copyload.i = load <2 x float>, ptr %i.ju, align 4 ; 10 uses
  %.sroa.8.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i170, align 4, !tbaa !9 ; 5 uses
  %smax465.i = call i32 @llvm.smax.i32(i32 %i.jr, i32 1)
  %wide.trip.count466.i = zext nneg i32 %smax465.i to i64
  %i.jv = shufflevector <2 x float> %.sroa.0193.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jw = insertelement <4 x float> %i.jv, float 0.000000e+00, i64 3
  %i.jx = insertelement <4 x float> %i.jw, float %.sroa.8.0.copyload.i, i64 2
  %i.jy = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jz = insertelement <4 x float> %i.jy, float 0.000000e+00, i64 3
  %i.ka = insertelement <4 x float> %i.jz, float %.sroa.10.0.copyload.i, i64 2
  br label %bb.x

._crit_edge439.i:                                 ; preds = %bb.x
  %i.kb = fcmp olt float %.4306.i, %i.hu
  br i1 %i.kb, label %b3ReduceManifoldPoints.exit, label %.lr.ph447.preheader.i

bb.x:                                             ; preds = %bb.x, %.lr.ph438.i
  %indvars.iv462.i = phi i64 [ 0, %.lr.ph438.i ], [ %indvars.iv.next463.i, %bb.x ] ; 3 uses
  %.3436.i = phi i32 [ -1, %.lr.ph438.i ], [ %.4.i, %bb.x ]
  %.3305435.i = phi float [ 0.000000e+00, %.lr.ph438.i ], [ %.4306.i, %bb.x ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv462.i ; 3 uses
  %.sroa.0186.0.copyload.i = load <2 x float>, ptr %i.kc, align 8
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.sroa.4187.0.copyload.i = load float, ptr %.sroa.4187.0..sroa_idx.i, align 8, !tbaa !9
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !20 ; 2 uses
  %i.kf = fneg float %i.ke
  %i.kg = fcmp ogt float %i.ke, 0.000000e+00
  %i.kh = select i1 %i.kg, float 0.000000e+00, float %i.kf ; 2 uses
  %i.ki = fmul float %i.kh, 4.000000e+00
  %i.kj = shufflevector <2 x float> %.sroa.0186.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kk = insertelement <4 x float> %i.kj, float %.sroa.4187.0.copyload.i, i64 2
  %i.kl = insertelement <4 x float> %i.kk, float %i.kh, i64 3
  %i.km = fsub <4 x float> %i.kl, %i.jx           ; 3 uses
  %i.kn = shufflevector <4 x float> %i.km, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ko = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.kn ; 2 uses
  %shift28 = shufflevector <2 x float> %i.ko, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop29 = fadd <2 x float> %i.ko, %shift28
  %i.kp = extractelement <2 x float> %foldExtExtBinop29, i64 0
  %i.kq = extractelement <4 x float> %i.km, i64 2
  %i.kr = fmul float %.sroa.10.0.copyload.i, %i.kq
  %i.ks = fadd float %i.kr, %i.kp
  %i.kt = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ks, i64 0
  %i.ku = shufflevector <4 x float> %i.kt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kv = fmul <4 x float> %i.ka, %i.ku
  %i.kw = fsub <4 x float> %i.km, %i.kv           ; 2 uses
  %i.kx = insertelement <4 x float> %i.kw, float %i.ki, i64 3
  %i.ky = fmul <4 x float> %i.kw, %i.kx           ; 4 uses
  %shift31 = shufflevector <4 x float> %i.ky, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop32 = fadd <4 x float> %i.ky, %shift31
  %shift34 = shufflevector <4 x float> %i.ky, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop35 = fadd <4 x float> %shift34, %foldExtExtBinop32
  %shift37 = shufflevector <4 x float> %i.ky, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop38 = fadd <4 x float> %shift37, %foldExtExtBinop35
  %i.kz = extractelement <4 x float> %foldExtExtBinop38, i64 0 ; 2 uses
  %i.la = fmul float %i.kz, f0x3F733333
  %i.lb = fcmp ogt float %i.la, %.3305435.i       ; 2 uses
  %.4306.i = select i1 %i.lb, float %i.kz, float %.3305435.i ; 2 uses
  %i.lc = trunc nuw nsw i64 %indvars.iv462.i to i32
  %.4.i = select i1 %i.lb, i32 %i.lc, i32 %.3436.i ; 2 uses
  %indvars.iv.next463.i = add nuw nsw i64 %indvars.iv462.i, 1 ; 2 uses
  %exitcond467.not.i = icmp eq i64 %indvars.iv.next463.i, %wide.trip.count466.i
  br i1 %exitcond467.not.i, label %._crit_edge439.i, label %bb.x, !llvm.loop !109

.lr.ph447.preheader.i:                            ; preds = %._crit_edge439.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.le = sext i32 %.4.i to i64
  %i.lf = getelementptr inbounds [24 x i8], ptr %7, i64 %i.le ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ld, ptr noundef nonnull align 8 dereferenceable(24) %i.lf, i64 24, i1 false), !tbaa.struct !71
  store i32 2, ptr %i.jq, align 8, !tbaa !16
  %i.lg = add nsw i32 %i.gg, -2                   ; 2 uses
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.lh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noundef nonnull align 8 dereferenceable(24) %i.li, i64 24, i1 false), !tbaa.struct !71
  %i.lj = load ptr, ptr %i.jm, align 8, !tbaa !17 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %.sroa.0150.0.copyload.i = load <2 x float>, ptr %i.lk, align 4 ; 4 uses
  %.sroa.6153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %.sroa.6153.0.copyload.i = load float, ptr %.sroa.6153.0..sroa_idx.i, align 4, !tbaa !9 ; 2 uses
  %foldExtExtBinop40 = fsub <2 x float> %.sroa.0150.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.ll = extractelement <2 x float> %foldExtExtBinop40, i64 0 ; 4 uses
  %foldExtExtBinop42 = fsub <2 x float> %.sroa.0150.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.lm = extractelement <2 x float> %foldExtExtBinop42, i64 1 ; 4 uses
  %i.ln = fsub float %.sroa.6153.0.copyload.i, %.sroa.8.0.copyload.i ; 4 uses
  %smax471.i = call i32 @llvm.smax.i32(i32 %i.lg, i32 1)
  %wide.trip.count472.i = zext nneg i32 %smax471.i to i64
  %i.lo = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 2 uses
  br label %.lr.ph447.i

._crit_edge448.i:                                 ; preds = %.lr.ph447.i
  %i.lp = icmp eq i32 %.6.i, -1
  br i1 %i.lp, label %b3ReduceManifoldPoints.exit, label %.lr.ph455.i

.lr.ph447.i:                                      ; preds = %.lr.ph447.i, %.lr.ph447.preheader.i
  %indvars.iv468.i = phi i64 [ 0, %.lr.ph447.preheader.i ], [ %indvars.iv.next469.i, %.lr.ph447.i ] ; 3 uses
  %.5445.i = phi i32 [ -1, %.lr.ph447.preheader.i ], [ %.6.i, %.lr.ph447.i ]
  %.5307444.i = phi float [ %i.hu, %.lr.ph447.preheader.i ], [ %.6308.i, %.lr.ph447.i ] ; 2 uses
  %.0313443.i = phi float [ 0.000000e+00, %.lr.ph447.preheader.i ], [ %.1314.i, %.lr.ph447.i ]
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv468.i ; 2 uses
  %.sroa.0134.0.copyload.i = load <2 x float>, ptr %i.lq, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !9
  %foldExtExtBinop44 = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.lr = extractelement <2 x float> %foldExtExtBinop44, i64 0 ; 2 uses
  %foldExtExtBinop46 = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.ls = extractelement <2 x float> %foldExtExtBinop46, i64 1 ; 2 uses
  %i.lt = fsub float %.sroa.4.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.lu = fmul float %i.lm, %i.lt
  %i.lv = fmul float %i.ln, %i.ls
  %i.lw = fsub float %i.lu, %i.lv
  %i.lx = fmul float %i.ln, %i.lr
  %i.ly = fmul float %i.ll, %i.lt
  %i.lz = fsub float %i.lx, %i.ly
  %i.ma = fmul float %i.ll, %i.ls
  %i.mb = fmul float %i.lm, %i.lr
  %i.mc = fsub float %i.ma, %i.mb
  %i.md = fmul float %.sroa.041.0.vec.extract.i.i, %i.lw
  %i.me = fmul float %i.lo, %i.lz
  %i.mf = fadd float %i.md, %i.me
  %i.mg = fmul float %.sroa.10.0.copyload.i, %i.mc
  %i.mh = fadd float %i.mg, %i.mf                 ; 4 uses
  %i.mi = fcmp olt float %i.mh, 0.000000e+00
  %i.mj = fneg float %i.mh
  %i.mk = select i1 %i.mi, float %i.mj, float %i.mh ; 2 uses
  %i.ml = fmul float %i.mk, f0x3F733333
  %i.mm = fcmp ult float %i.ml, %.5307444.i       ; 3 uses
  %.1314.i = select i1 %i.mm, float %.0313443.i, float %i.mh ; 2 uses
  %.6308.i = select i1 %i.mm, float %.5307444.i, float %i.mk
  %i.mn = trunc nuw nsw i64 %indvars.iv468.i to i32
  %.6.i = select i1 %i.mm, i32 %.5445.i, i32 %i.mn ; 3 uses
  %indvars.iv.next469.i = add nuw nsw i64 %indvars.iv468.i, 1 ; 2 uses
  %exitcond473.not.i = icmp eq i64 %indvars.iv.next469.i, %wide.trip.count472.i
  br i1 %exitcond473.not.i, label %._crit_edge448.i, label %.lr.ph447.i, !llvm.loop !110

.lr.ph455.i:                                      ; preds = %._crit_edge448.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  %i.mp = sext i32 %.6.i to i64
  %i.mq = getelementptr inbounds [24 x i8], ptr %7, i64 %i.mp ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.mo, ptr noundef nonnull align 8 dereferenceable(24) %i.mq, i64 24, i1 false), !tbaa.struct !71
  store i32 3, ptr %i.jq, align 8, !tbaa !16
  %i.mr = add nsw i32 %i.gg, -3                   ; 2 uses
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.ms
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mq, ptr noundef nonnull align 8 dereferenceable(24) %i.mt, i64 24, i1 false), !tbaa.struct !71
  %i.mu = load ptr, ptr %i.jm, align 8, !tbaa !17 ; 3 uses
  %.sroa.6105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mu, i64 56
  %.sroa.6105.0.copyload.i = load float, ptr %.sroa.6105.0..sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %i.mv = fcmp olt float %.1314.i, 0.000000e+00
  %i.mw = select i1 %i.mv, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 48
  %.sroa.0102.0.copyload.i = load <2 x float>, ptr %i.mx, align 4 ; 5 uses
  %i.my = shufflevector <2 x float> %.sroa.0102.0.copyload.i, <2 x float> %.sroa.0193.0.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.mz = shufflevector <2 x float> %.sroa.0150.0.copyload.i, <2 x float> %.sroa.0102.0.copyload.i, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.na = fsub <2 x float> %i.my, %i.mz           ; 3 uses
  %i.nb = shufflevector <2 x float> %.sroa.0102.0.copyload.i, <2 x float> %.sroa.0193.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.nc = shufflevector <2 x float> %.sroa.0150.0.copyload.i, <2 x float> %.sroa.0102.0.copyload.i, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.nd = insertelement <2 x float> %.sroa.0193.0.copyload.i, float %.sroa.6105.0.copyload.i, i64 0
  %i.ne = insertelement <2 x float> %.sroa.0102.0.copyload.i, float %.sroa.6153.0.copyload.i, i64 0 ; 2 uses
  %i.nf = fsub <2 x float> %i.nb, %i.nc           ; 2 uses
  %i.ng = fsub <2 x float> %i.nd, %i.ne           ; 2 uses
  %i.nh = fsub float %.sroa.8.0.copyload.i, %.sroa.6105.0.copyload.i ; 2 uses
  %smax477.i = call i32 @llvm.smax.i32(i32 %i.mr, i32 1)
  %wide.trip.count478.i = zext nneg i32 %smax477.i to i64
  %i.ni = insertelement <2 x float> poison, float %i.mw, i64 0
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nk = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nm = insertelement <2 x float> %i.na, float %i.nh, i64 1
  %i.nn = shufflevector <2 x float> %i.ng, <2 x float> %i.na, <2 x i32> <i32 0, i32 3>
  %i.no = insertelement <2 x float> %i.nf, float %i.nh, i64 1
  br label %bb.y

._crit_edge456.i:                                 ; preds = %bb.y
  %.not.i = icmp eq i32 %.8.i, -1
  br i1 %.not.i, label %b3ReduceManifoldPoints.exit, label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph455.i
  %indvars.iv474.i = phi i64 [ 0, %.lr.ph455.i ], [ %indvars.iv.next475.i, %bb.y ] ; 3 uses
  %.7453.i = phi i32 [ -1, %.lr.ph455.i ], [ %.8.i, %bb.y ]
  %.7309452.i = phi float [ %i.hu, %.lr.ph455.i ], [ %.8310.i, %bb.y ] ; 2 uses
  %i.np = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv474.i ; 2 uses
  %.sroa.093.0.copyload.i = load <2 x float>, ptr %i.np, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !9 ; 3 uses
  %foldExtExtBinop48 = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.nq = extractelement <2 x float> %foldExtExtBinop48, i64 0 ; 2 uses
  %foldExtExtBinop50 = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.nr = extractelement <2 x float> %foldExtExtBinop50, i64 1 ; 2 uses
  %i.ns = fsub float %.sroa.6.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.nt = fmul float %i.ln, %i.nr
  %i.nu = fmul float %i.lm, %i.ns
  %i.nv = fsub float %i.nt, %i.nu
  %i.nw = fmul float %i.ll, %i.ns
  %i.nx = fmul float %i.ln, %i.nq
  %i.ny = fsub float %i.nw, %i.nx
  %i.nz = fmul float %i.lm, %i.nq
  %i.oa = fmul float %i.ll, %i.nr
  %i.ob = fsub float %i.nz, %i.oa
  %i.oc = fmul float %.sroa.041.0.vec.extract.i.i, %i.nv
  %i.od = fmul float %i.lo, %i.ny
  %i.oe = fadd float %i.oc, %i.od
  %i.of = fmul float %.sroa.10.0.copyload.i, %i.ob
  %i.og = fadd float %i.of, %i.oe
  %i.oh = fmul float %i.mw, %i.og                 ; 2 uses
  %i.oi = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oj = fsub <2 x float> %i.oi, %i.mz           ; 3 uses
  %i.ok = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ol = fsub <2 x float> %i.ok, %i.nc           ; 2 uses
  %i.om = insertelement <2 x float> %.sroa.093.0.copyload.i, float %.sroa.6.0.copyload.i, i64 0
  %i.on = fsub <2 x float> %i.om, %i.ne           ; 2 uses
  %i.oo = fsub float %.sroa.6.0.copyload.i, %.sroa.6105.0.copyload.i ; 2 uses
  %i.op = fmul <2 x float> %i.nm, %i.on
  %i.oq = insertelement <2 x float> %i.oj, float %i.oo, i64 1
  %i.or = fmul <2 x float> %i.ng, %i.oq
  %i.os = fsub <2 x float> %i.op, %i.or
  %i.ot = insertelement <2 x float> %i.ol, float %i.oo, i64 1
  %i.ou = fmul <2 x float> %i.nn, %i.ot
  %i.ov = shufflevector <2 x float> %i.on, <2 x float> %i.oj, <2 x i32> <i32 0, i32 3>
  %i.ow = fmul <2 x float> %i.no, %i.ov
  %i.ox = fsub <2 x float> %i.ou, %i.ow
  %i.oy = fmul <2 x float> %i.nf, %i.oj
  %i.oz = fmul <2 x float> %i.na, %i.ol
  %i.pa = fsub <2 x float> %i.oy, %i.oz
  %i.pb = fmul <2 x float> %i.hv, %i.os
  %i.pc = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.ox
  %i.pd = fadd <2 x float> %i.pb, %i.pc
  %i.pe = fmul <2 x float> %i.nl, %i.pa
  %i.pf = fadd <2 x float> %i.pe, %i.pd
  %i.pg = fmul <2 x float> %i.nj, %i.pf           ; 2 uses
  %i.ph = extractelement <2 x float> %i.pg, i64 0 ; 2 uses
  %i.pi = extractelement <2 x float> %i.pg, i64 1 ; 2 uses
  %i.pj = fcmp ogt float %i.ph, %i.pi
  %i.pk = select i1 %i.pj, float %i.ph, float %i.pi ; 2 uses
  %i.pl = fcmp ogt float %i.oh, %i.pk
  %i.pm = select i1 %i.pl, float %i.oh, float %i.pk ; 2 uses
  %i.pn = fmul float %i.pm, f0x3F733333
  %i.po = fcmp ogt float %i.pn, %.7309452.i       ; 2 uses
  %.8310.i = select i1 %i.po, float %i.pm, float %.7309452.i
  %i.pp = trunc nuw nsw i64 %indvars.iv474.i to i32
  %.8.i = select i1 %i.po, i32 %i.pp, i32 %.7453.i ; 3 uses
  %indvars.iv.next475.i = add nuw nsw i64 %indvars.iv474.i, 1 ; 2 uses
  %exitcond479.not.i = icmp eq i64 %indvars.iv.next475.i, %wide.trip.count478.i
  br i1 %exitcond479.not.i, label %._crit_edge456.i, label %bb.y, !llvm.loop !111

bb.z:                                             ; preds = %._crit_edge456.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.mu, i64 72
  %i.pr = sext i32 %.8.i to i64
  %i.ps = getelementptr inbounds [24 x i8], ptr %7, i64 %i.pr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.pq, ptr noundef nonnull align 8 dereferenceable(24) %i.ps, i64 24, i1 false), !tbaa.struct !71
  %i.pt = load i32, ptr %i.jq, align 8, !tbaa !16
  %i.pu = add nsw i32 %i.pt, 1
  store i32 %i.pu, ptr %i.jq, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

b3ReduceManifoldPoints.exit:                      ; preds = %._crit_edge460.i, %bb.w, %._crit_edge439.i, %._crit_edge448.i, %._crit_edge456.i, %bb.z
  store float %i.hd, ptr %4, align 4, !tbaa !69
  %i.pv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 2, ptr %i.pv, align 4, !tbaa !67
  %i.pw = trunc i32 %.16.val to i8
  %i.px = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !68
  %i.py = trunc i32 %.20.val to i8
  %i.pz = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %i.py, ptr %i.pz, align 2, !tbaa !70
  br label %bb.aa

bb.aa:                                            ; preds = %b3ReduceManifoldPoints.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.e, %bb.aa
  %.3 = phi i1 [ %i.gk, %bb.aa ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildFaceBContact(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.b3Transform, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %.sroa.093.0.copyload = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.494.0.copyload = load float, ptr %.sroa.494.0..sroa_idx, align 8 ; 5 uses
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.595.0.copyload = load <2 x float>, ptr %.sroa.595.0..sroa_idx, align 4 ; 11 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 10 uses
  %.sroa.3.8.vec.extract.i.i = extractelement <2 x float> %.sroa.6.0.copyload, i64 0 ; 3 uses
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.595.0.copyload, i64 0 ; 3 uses
  %i.a = fmul float %.sroa.494.0.copyload, %.sroa.011.0.vec.extract.i.i.i
  %foldExtExtBinop = fmul <2 x float> %.sroa.093.0.copyload, %.sroa.6.0.copyload
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = shufflevector <2 x float> %.sroa.595.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.d = fmul <2 x float> %.sroa.093.0.copyload, %i.c
  %i.e = shufflevector <2 x float> %.sroa.093.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.f = insertelement <2 x float> %i.e, float %.sroa.494.0.copyload, i64 1 ; 2 uses
  %i.g = fmul <2 x float> %i.f, %.sroa.595.0.copyload
  %i.h = fsub <2 x float> %i.d, %i.g              ; 2 uses
  %i.i = fsub float %i.a, %i.b
  %i.j = insertelement <2 x float> %i.e, float %.sroa.494.0.copyload, i64 0
  %i.k = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.l = fmul <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.f, %i.k
  %i.n = fadd <2 x float> %i.h, %i.l              ; 2 uses
  %i.o = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.i, i64 0
  %i.q = fadd <2 x float> %i.m, %i.p              ; 2 uses
  %i.r = fmul <2 x float> %i.c, %i.n
  %i.s = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.595.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.t = fmul <2 x float> %i.s, %i.q
  %i.u = fsub <2 x float> %i.r, %i.t
  %foldExtExtBinop2 = fmul <2 x float> %.sroa.595.0.copyload, %i.q
  %foldExtExtBinop4 = fmul <2 x float> %.sroa.595.0.copyload, %i.n
  %shift = shufflevector <2 x float> %foldExtExtBinop4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop6 = fsub <2 x float> %foldExtExtBinop2, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop6, i64 0
  %i.w = fmul <2 x float> %i.u, splat (float 2.000000e+00)
  %i.x = fsub <2 x float> %i.w, %.sroa.093.0.copyload
  %i.y = fmul float %i.v, 2.000000e+00
  %i.z = fsub float %i.y, %.sroa.494.0.copyload
  store <2 x float> %i.x, ptr %6, align 8, !alias.scope !115
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.z, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !9, !alias.scope !115
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ab = fneg <2 x float> %.sroa.595.0.copyload
  %i.ac = fneg float %.sroa.3.8.vec.extract.i.i
  %.sroa.33.12.vec.insert.i.i = insertelement <2 x float> %.sroa.6.0.copyload, float %i.ac, i64 0
  store <2 x float> %i.ab, ptr %i.aa, align 4, !alias.scope !115
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <2 x float> %.sroa.33.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !115
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !54 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !53 ; 2 uses
  %i.ah = tail call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i32 %i.ae, i32 %i.ag, ptr noundef %5) ; 2 uses
  br i1 %i.ah, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %5, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.sroa.3.12.vec.extract.i.i = extractelement <2 x float> %.sroa.6.0.copyload, i64 1 ; 3 uses
  %.sroa.011.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.595.0.copyload, i64 1 ; 3 uses
  %i.ai = fmul <2 x float> %.sroa.595.0.copyload, %.sroa.595.0.copyload ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop8 = fmul <2 x float> %.sroa.6.0.copyload, %.sroa.6.0.copyload
  %i.ak = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.011.4.vec.extract.i.i.i ; 2 uses
  %foldExtExtBinop10 = fmul <2 x float> %.sroa.595.0.copyload, %.sroa.6.0.copyload
  %i.al = extractelement <2 x float> %foldExtExtBinop10, i64 0 ; 2 uses
  %i.am = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.3.12.vec.extract.i.i ; 2 uses
  %i.an = fmul float %.sroa.011.4.vec.extract.i.i.i, %.sroa.3.8.vec.extract.i.i ; 2 uses
  %i.ao = fmul float %.sroa.011.4.vec.extract.i.i.i, %.sroa.3.12.vec.extract.i.i ; 2 uses
  %i.ap = fmul float %.sroa.3.8.vec.extract.i.i, %.sroa.3.12.vec.extract.i.i ; 2 uses
  %i.aq = fsub float %i.al, %i.ao
  %i.ar = fmul float %i.aq, 2.000000e+00          ; 2 uses
  %i.as = fadd float %i.an, %i.am
  %i.at = fmul float %i.as, 2.000000e+00          ; 2 uses
  %i.au = fadd float %i.ak, %i.ap
  %i.av = fsub float %i.ak, %i.ap
  %i.aw = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.au, i64 1
  %i.ay = fmul <2 x float> %i.ax, splat (float 2.000000e+00) ; 2 uses
  %i.az = shufflevector <2 x float> %foldExtExtBinop8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fadd <2 x float> %i.aj, %i.az
  %i.bb = fmul <2 x float> %i.ba, splat (float 2.000000e+00)
  %i.bc = fsub <2 x float> splat (float 1.000000e+00), %i.bb ; 2 uses
  %i.bd = fsub float %i.an, %i.am
  %i.be = fadd float %i.al, %i.ao
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.bd, i64 1
  %i.bh = fmul <2 x float> %i.bg, splat (float 2.000000e+00) ; 2 uses
  %i.bi = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ai)
  %i.bj = fmul float %i.bi, 2.000000e+00
  %i.bk = fsub float 1.000000e+00, %i.bj          ; 2 uses
  %.sroa.030.0.copyload = load <2 x float>, ptr %0, align 8 ; 4 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 8 ; 2 uses
  %i.bl = shufflevector <2 x float> %.sroa.030.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i62 = extractelement <2 x float> %.sroa.030.0.copyload, i64 0
  %i.bm = fmul float %i.ar, %.sroa.03.0.vec.extract.i62
  %i.bn = extractelement <2 x float> %.sroa.030.0.copyload, i64 1
  %i.bo = fmul float %i.at, %i.bn
  %i.bp = fadd float %i.bm, %i.bo
  %i.bq = fmul float %i.bk, %.sroa.231.0.copyload
  %i.br = fadd float %i.bq, %i.bp
  %i.bs = fmul <2 x float> %i.ay, %i.bl
  %i.bt = fmul <2 x float> %i.bc, %.sroa.030.0.copyload
  %i.bu = fadd <2 x float> %i.bs, %i.bt
  %i.bv = insertelement <2 x float> poison, float %.sroa.231.0.copyload, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bh, %i.bw
  %i.by = fadd <2 x float> %i.bx, %i.bu
  %i.bz = fneg <2 x float> %i.by
  %i.ca = fneg float %i.br
  store <2 x float> %i.bz, ptr %0, align 8
  store float %i.ca, ptr %.sroa.231.0..sroa_idx, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !16
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 3, ptr %i.cf, align 4, !tbaa !67
  %i.cg = trunc i32 %i.ag to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 5
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !68
  %i.ci = trunc i32 %i.ae to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i8 %i.ci, ptr %i.cj, align 2, !tbaa !70
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv ; 4 uses
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.cl, align 4 ; 4 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %.sroa.211.0.copyload = load float, ptr %.sroa.211.0..sroa_idx, align 4 ; 2 uses
  %i.cm = shufflevector <2 x float> %.sroa.010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i72 = extractelement <2 x float> %.sroa.010.0.copyload, i64 0
  %i.cn = fmul float %i.ar, %.sroa.03.0.vec.extract.i72
  %i.co = extractelement <2 x float> %.sroa.010.0.copyload, i64 1
  %i.cp = fmul float %i.at, %i.co
  %i.cq = fadd float %i.cn, %i.cp
  %i.cr = fmul float %i.bk, %.sroa.211.0.copyload
  %i.cs = fadd float %i.cr, %i.cq
  %i.ct = fmul <2 x float> %i.ay, %i.cm
  %i.cu = fmul <2 x float> %i.bc, %.sroa.010.0.copyload
  %i.cv = fadd <2 x float> %i.ct, %i.cu
  %i.cw = insertelement <2 x float> poison, float %.sroa.211.0.copyload, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.bh, %i.cx
  %i.cz = fadd <2 x float> %i.cy, %i.cv
  %i.da = fadd <2 x float> %.sroa.093.0.copyload, %i.cz
end_hunk_0
begin_hunk_1_@b3BuildEdgeContact:bb.a
  %i.at = load i32, ptr %i.as, align 4, !tbaa !54 ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.0.i125, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !60
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !49
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %.0.i126, i64 %i.bc ; 2 uses
  %.sroa.071.0.copyload = load <2 x float>, ptr %i.bd, align 4 ; 4 uses
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.272.0.copyload = load float, ptr %.sroa.272.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0181.0.copyload = load <2 x float>, ptr %3, align 8 ; 2 uses
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load <4 x float>, ptr %.sroa.4182.0..sroa_idx, align 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.5183.0.copyload = load <2 x float>, ptr %.sroa.5183.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6184.0.copyload = load <2 x float>, ptr %.sroa.6184.0..sroa_idx, align 4 ; 5 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5183.0.copyload, i64 0 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !49
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %.0.i126, i64 %i.bh ; 2 uses
  %.sroa.063.0.copyload = load <2 x float>, ptr %i.bi, align 4 ; 4 uses
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.264.0.copyload = load float, ptr %.sroa.264.0..sroa_idx, align 4 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.071.0.copyload, %.sroa.6184.0.copyload
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = fmul float %.sroa.272.0.copyload, %.sroa.011.0.vec.extract.i.i
  %i.bl = shufflevector <2 x float> %.sroa.071.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bm = insertelement <2 x float> %i.bl, float %.sroa.272.0.copyload, i64 1 ; 2 uses
  %i.bn = fmul <2 x float> %i.bm, %.sroa.5183.0.copyload
  %i.bo = shufflevector <2 x float> %.sroa.5183.0.copyload, <2 x float> %.sroa.6184.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bp = fmul <2 x float> %.sroa.071.0.copyload, %i.bo
  %i.bq = fsub <2 x float> %i.bn, %i.bp           ; 2 uses
  %i.br = fsub float %i.bj, %i.bk
  %i.bs = insertelement <2 x float> %i.bl, float %.sroa.272.0.copyload, i64 0
  %i.bt = shufflevector <2 x float> %.sroa.6184.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bu = fmul <2 x float> %i.bs, %i.bt
  %i.bv = fmul <2 x float> %i.bm, %i.bt
  %i.bw = fadd <2 x float> %i.bu, %i.bq           ; 2 uses
  %i.bx = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.by = insertelement <2 x float> %i.bx, float %i.br, i64 0
  %i.bz = fadd <2 x float> %i.bv, %i.by           ; 2 uses
  %i.ca = fmul <2 x float> %i.bo, %i.bw
  %i.cb = shufflevector <2 x float> %.sroa.6184.0.copyload, <2 x float> %.sroa.5183.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cc = fmul <2 x float> %i.cb, %i.bz
  %i.cd = fsub <2 x float> %i.ca, %i.cc
  %i.ce = fmul <2 x float> %i.cd, splat (float 2.000000e+00)
  %i.cf = fadd <2 x float> %.sroa.071.0.copyload, %i.ce
  %i.cg = fadd <2 x float> %.sroa.0181.0.copyload, %i.cf ; 2 uses
  %foldExtExtBinop189 = fmul <2 x float> %.sroa.6184.0.copyload, %.sroa.063.0.copyload
  %i.ch = extractelement <2 x float> %foldExtExtBinop189, i64 0
  %i.ci = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.264.0.copyload
  %i.cj = shufflevector <2 x float> %.sroa.063.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ck = insertelement <2 x float> %i.cj, float %.sroa.264.0.copyload, i64 1 ; 2 uses
  %i.cl = fmul <2 x float> %.sroa.5183.0.copyload, %i.ck
  %i.cm = fmul <2 x float> %i.bo, %.sroa.063.0.copyload
  %i.cn = fsub <2 x float> %i.cl, %i.cm           ; 2 uses
  %i.co = fsub float %i.ch, %i.ci
  %i.cp = insertelement <2 x float> %i.cj, float %.sroa.264.0.copyload, i64 0
  %i.cq = fmul <2 x float> %i.bt, %i.cp
  %i.cr = fmul <2 x float> %i.bt, %i.ck
  %i.cs = fadd <2 x float> %i.cq, %i.cn           ; 2 uses
  %i.ct = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cu = insertelement <2 x float> %i.ct, float %i.co, i64 0
  %i.cv = fadd <2 x float> %i.cr, %i.cu           ; 2 uses
  %i.cw = fmul <2 x float> %i.bo, %i.cs
  %i.cx = fmul <2 x float> %i.cb, %i.cv
  %i.cy = fsub <2 x float> %i.cw, %i.cx
  %i.cz = fmul <2 x float> %i.cy, splat (float 2.000000e+00)
  %i.da = fadd <2 x float> %.sroa.063.0.copyload, %i.cz
  %i.db = fadd <2 x float> %.sroa.0181.0.copyload, %i.da
  %i.dc = shufflevector <2 x float> %.sroa.5183.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = shufflevector <2 x float> %i.cv, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.de = fmul <2 x float> %i.dc, %i.dd
  %i.df = shufflevector <2 x float> %.sroa.5183.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dg = shufflevector <2 x float> %i.cs, <2 x float> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.dh = fmul <2 x float> %i.df, %i.dg
  %i.di = fsub <2 x float> %i.de, %i.dh
  %i.dj = fmul <2 x float> %i.di, splat (float 2.000000e+00)
  %i.dk = insertelement <2 x float> poison, float %.sroa.264.0.copyload, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %.sroa.272.0.copyload, i64 1
  %i.dm = fadd <2 x float> %i.dl, %i.dj
  %i.dn = shufflevector <4 x float> %i.be, <4 x float> poison, <2 x i32> zeroinitializer
  %i.do = fadd <2 x float> %i.dn, %i.dm           ; 2 uses
  %i.dp = fsub <2 x float> %i.db, %i.cg
  %i.dq = extractelement <2 x float> %i.do, i64 0
  %i.dr = extractelement <2 x float> %i.do, i64 1 ; 2 uses
  %i.ds = fsub float %i.dq, %i.dr
  %.sroa.044.0.copyload = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.546.0.copyload = load float, ptr %.sroa.546.0..sroa_idx, align 8, !tbaa !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @b3LineDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3SegmentDistanceResult) align 4 %6, <2 x float> %.sroa.091.0.copyload, float %.sroa.593.0.copyload, <2 x float> %i.aq, float %i.ar, <2 x float> %i.cg, float %i.dr, <2 x float> %i.dp, float %i.ds) #11
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.val = load float, ptr %i.dt, align 4, !tbaa !62 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.val123 = load float, ptr %i.du, align 4       ; 2 uses
  %i.dv = fcmp oge float %.val, 0.000000e+00
  %i.dw = fcmp ole float %.val, 1.000000e+00
  %or.cond.not.i = and i1 %i.dv, %i.dw
  %i.dx = fcmp oge float %.val123, 0.000000e+00
  %i.dy = fcmp ole float %.val123, 1.000000e+00
  %spec.select.i = and i1 %i.dx, %i.dy
  %i.dz = select i1 %or.cond.not.i, i1 %spec.select.i, i1 false ; 2 uses
  br i1 %i.dz, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 7
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !63
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.ea, align 8 ; 2 uses
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.228.0.copyload = load float, ptr %.sroa.228.0..sroa_idx, align 8 ; 2 uses
  %.sroa.025.0.copyload = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 8 ; 2 uses
  %i.eb = fsub float %.sroa.228.0.copyload, %.sroa.226.0.copyload
  %i.ec = fsub <2 x float> %.sroa.027.0.copyload, %.sroa.025.0.copyload
  %i.ed = fmul <2 x float> %.sroa.044.0.copyload, %i.ec ; 2 uses
  %shift = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop191 = fadd <2 x float> %i.ed, %shift
  %i.ee = extractelement <2 x float> %foldExtExtBinop191, i64 0
  %i.ef = fmul float %.sroa.546.0.copyload, %i.eb
  %i.eg = fadd float %i.ef, %i.ee                 ; 2 uses
  %i.eh = fadd float %.sroa.228.0.copyload, %.sroa.226.0.copyload
  %i.ei = fadd <2 x float> %.sroa.027.0.copyload, %.sroa.025.0.copyload
  %i.ej = fmul <2 x float> %i.ei, splat (float 5.000000e-01)
  %i.ek = fmul float %i.eh, 5.000000e-01
  store <2 x float> %.sroa.044.0.copyload, ptr %0, align 8
  %.sroa.546.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.546.0.copyload, ptr %.sroa.546.0..sroa_idx47, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.el, align 8, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !17 ; 4 uses
  store <2 x float> %i.ej, ptr %i.en, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %i.ek, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store float %i.eg, ptr %i.eo, align 4, !tbaa !20
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eq = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef %i.ab, i32 noundef 1, i32 noundef %i.at) #11
  store i32 %i.eq, ptr %i.ep, align 4
  %i.er = trunc i32 %i.ab to i8
  %i.es = trunc i32 %i.at to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink187 = phi float [ %i.eg, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sink186 = phi i8 [ 4, %bb.c ], [ 0, %bb.b ]
  %.sink185 = phi i8 [ %i.er, %bb.c ], [ 0, %bb.b ]
  %.sink = phi i8 [ %i.es, %bb.c ], [ 0, %bb.b ]
  store float %.sink187, ptr %5, align 4, !tbaa !9
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 %.sink186, ptr %i.et, align 4, !tbaa !63
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 5
  store i8 %.sink185, ptr %i.eu, align 1, !tbaa !63
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i8 %.sink, ptr %i.ev, align 2, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i1 %i.dz
}

declare i32 @b3GetPointSupport(ptr noundef, i32 noundef, <2 x float>, float) local_unnamed_addr #3

declare void @b3LineDistance(ptr dead_on_unwind writable sret(%struct.b3SegmentDistanceResult) align 4, <2 x float>, float, <2 x float>, float, <2 x float>, float, <2 x float>, float) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #9

declare i32 @b3FindIncidentFace(ptr noundef, <2 x float>, float, i32 noundef) local_unnamed_addr #3

declare i32 @b3ClipPolygon(ptr noundef, ptr noundef, i32 noundef, <2 x float>, <2 x float>, i32 noundef, <2 x float>, <2 x float>) local_unnamed_addr #3

declare i32 @b3FlipPair(i32) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"b3Vec3", !8, i64 0, !8, i64 4, !8, i64 8}
!11 = !{!"b3Sphere", !10, i64 0, !8, i64 12}
!12 = !{!11, !8, i64 12}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS20b3LocalManifoldPoint", !13, i64 0}
!15 = !{!"b3LocalManifold", !10, i64 0, !10, i64 12, !14, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !8, i64 52, !5, i64 56, !5, i64 60}
!16 = !{!15, !5, i64 32}
!17 = !{!15, !14, i64 24}
!18 = !{!"b3FeaturePair", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!19 = !{!"b3LocalManifoldPoint", !10, i64 0, !8, i64 12, !18, i64 16, !5, i64 20}
!20 = !{!19, !8, i64 12}
!21 = !{!"b3Capsule", !10, i64 0, !10, i64 12, !8, i64 24}
!22 = !{!21, !8, i64 24}
!23 = !{!"long", !4, i64 0}
!24 = !{!"b3AABB", !10, i64 0, !10, i64 12}
!25 = !{!"b3Matrix3", !10, i64 0, !10, i64 12, !10, i64 24}
!26 = !{!"b3HullData", !23, i64 0, !23, i64 8, !24, i64 16, !8, i64 40, !8, i64 44, !8, i64 48, !10, i64 52, !25, i64 64, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140}
!27 = !{!26, !5, i64 108}
!28 = !{!26, !5, i64 100}
!29 = !{!"p1 _ZTS6b3Vec3", !13, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9, i64 20, i64 4, !9, i64 24, i64 4, !9}
!33 = !{!"b3ShapeProxy", !29, i64 0, !5, i64 8, !8, i64 12}
!34 = !{!"b3Quat", !10, i64 0, !8, i64 12}
!35 = !{!"b3Transform", !10, i64 0, !34, i64 12}
!36 = !{!"_Bool", !4, i64 0}
!37 = !{!"b3DistanceInput", !33, i64 0, !33, i64 16, !35, i64 32, !36, i64 60}
!38 = !{!37, !36, i64 60}
!39 = !{!"b3DistanceOutput", !10, i64 0, !10, i64 12, !10, i64 24, !8, i64 36, !5, i64 40, !5, i64 44}
!40 = !{!39, !8, i64 36}
!41 = !{!26, !5, i64 124}
!42 = !{!26, !5, i64 120}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"b3ClipVertex", !10, i64 0, !8, i64 12, !18, i64 16}
!45 = !{!44, !8, i64 12}
!46 = !{!26, !5, i64 116}
!47 = !{!26, !5, i64 112}
!48 = !{!"b3HullHalfEdge", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!49 = !{!48, !4, i64 2}
!50 = !{!48, !4, i64 3}
!51 = !{!"b3SeparatingAxis", !10, i64 0, !8, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!52 = !{!51, !8, i64 12}
!53 = !{!51, !5, i64 16}
!54 = !{!51, !5, i64 20}
!55 = !{!51, !5, i64 24}
!56 = !{!26, !5, i64 128}
!57 = !{!"b3HullFace", !4, i64 0}
!58 = !{!57, !4, i64 0}
!59 = !{!48, !4, i64 0}
!60 = !{!48, !4, i64 1}
!61 = !{!"b3SegmentDistanceResult", !10, i64 0, !8, i64 12, !10, i64 16, !8, i64 28}
!62 = !{!61, !8, i64 12}
!63 = !{!4, !4, i64 0}
!64 = !{!"b3AxisQuery", !51, i64 0, !51, i64 28, !51, i64 56, !5, i64 84}
!65 = !{!64, !5, i64 84}
!66 = !{!"", !8, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!67 = !{!66, !4, i64 4}
!68 = !{!66, !4, i64 5}
!69 = !{!66, !8, i64 0}
!70 = !{!66, !4, i64 6}
!71 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 1, !63, i64 17, i64 1, !63, i64 18, i64 1, !63, i64 19, i64 1, !63, i64 20, i64 4, !31}
!72 = distinct !{!72, !43}
!73 = distinct !{!73, !"b3QueryFaceDirectionHullAndCapsule"}
!74 = distinct !{!74, !73, !"b3QueryFaceDirectionHullAndCapsule: argument 0"}
!75 = distinct !{!75, !43}
!76 = distinct !{!76, !"b3QueryEdgeDirectionHullAndCapsule"}
!77 = distinct !{!77, !76, !"b3QueryEdgeDirectionHullAndCapsule: argument 0"}
!78 = distinct !{!78, !43}
!79 = !{!74}
!80 = !{!77}
!81 = distinct !{!81, !43}
!82 = distinct !{!82, !43}
!83 = distinct !{!83, !43}
!84 = distinct !{!84, !43}
!85 = distinct !{!85, !43}
!86 = distinct !{!86, !43}
!87 = distinct !{!87, !43}
!88 = distinct !{!88, !43}
!89 = distinct !{!89, !43}
!90 = !{!26, !5, i64 132}
!91 = !{!26, !5, i64 136}
!92 = !{!66, !4, i64 7}
!93 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !31, i64 20, i64 4, !31, i64 24, i64 4, !31}
!94 = !{!64, !8, i64 12}
!95 = !{!64, !5, i64 16}
!96 = !{!64, !5, i64 20}
!97 = !{!64, !8, i64 40}
!98 = !{!64, !5, i64 44}
!99 = !{!64, !5, i64 48}
!100 = !{!64, !8, i64 68}
!101 = !{!64, !5, i64 72}
!102 = !{!64, !5, i64 76}
!103 = !{!14, !14, i64 0}
!104 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9, i64 20, i64 4, !9, i64 24, i64 8, !103, i64 32, i64 4, !31, i64 36, i64 4, !31, i64 40, i64 4, !31, i64 44, i64 4, !31, i64 48, i64 4, !31, i64 52, i64 4, !9, i64 56, i64 4, !31, i64 60, i64 4, !31}
!105 = distinct !{!105, !43}
!106 = distinct !{!106, !43}
!107 = distinct !{!107, !43}
!108 = distinct !{!108, !43}
!109 = distinct !{!109, !43}
!110 = distinct !{!110, !43}
!111 = distinct !{!111, !43}
!112 = distinct !{!112, !"b3InvertTransform"}
!113 = distinct !{!113, !112, !"b3InvertTransform: argument 0"}
!114 = distinct !{!114, !43}
!115 = !{!113}
end_hunk_1
