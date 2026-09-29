Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/convex_manifold?download=true
inline.NumInlined: 436
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3BuildFaceAContact:bb.a
  %i.gj = call float @b3GetLengthUnitsPerMeter() #11
  %i.gk = fmul float %i.gj, 5.000000e-03
  %i.gl = fmul float %i.gk, 4.000000e+00
  %i.gm = fcmp ult float %i.hf, %i.gl             ; 2 uses
  br i1 %i.gm, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.01417 = phi float [ f0x7F7FFFFF, %bb.g ], [ %i.hf, %bb.i ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [20 x i8], ptr %.0139, i64 %indvars.iv ; 4 uses
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, i8 0, i64 24, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 12 ; 3 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !46
  %i.gr = fmul float %i.gq, 5.000000e-01          ; 2 uses
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.gn, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4
  %i.gs = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = fmul <2 x float> %.sroa.0100.0.copyload, %i.gt
  %i.gv = fsub <2 x float> %.sroa.05.0.copyload, %i.gu
  %i.gw = fmul float %.sroa.9.8.vec.extract, %i.gr
  %i.gx = fsub float %.sroa.26.0.copyload, %i.gw
  store <2 x float> %i.gv, ptr %i.go, align 8, !tbaa !9
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store float %i.gx, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !9
  %i.gy = load float, ptr %i.gp, align 4, !tbaa !46
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store float %i.gy, ptr %i.gz, align 4, !tbaa !20
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !21
  store i32 %i.hc, ptr %i.ha, align 8, !tbaa !21
  %i.hd = load float, ptr %i.gp, align 4, !tbaa !46 ; 2 uses
  %i.he = fcmp olt float %.01417, %i.hd
  %i.hf = select i1 %i.he, float %.01417, float %i.hd ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.h, label %bb.i, !llvm.loop !107

bb.j:                                             ; preds = %bb.h
  store i64 0, ptr %4, align 4
  br label %bb.aa

bb.k:                                             ; preds = %bb.h
  %i.hg = icmp samesign ult i32 %i.gf, 5
  br i1 %i.hg, label %.lr.ph459.i, label %bb.m

.lr.ph459.i:                                      ; preds = %bb.k
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hi, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !71
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !17
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i64 24, i1 false), !tbaa.struct !71
  %i.hm = load ptr, ptr %i.hh, align 8, !tbaa !17
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hn, ptr noundef nonnull align 16 dereferenceable(24) %i.ho, i64 24, i1 false), !tbaa.struct !71
  %exitcond484.not.i.2 = icmp eq i32 %i.gf, 3
  br i1 %exitcond484.not.i.2, label %._crit_edge460.i, label %bb.l

._crit_edge460.i:                                 ; preds = %bb.l, %.lr.ph459.i
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.gi, ptr %i.hp, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

bb.l:                                             ; preds = %.lr.ph459.i
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !17
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  %i.hs = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 24, i1 false), !tbaa.struct !71
  br label %._crit_edge460.i

bb.m:                                             ; preds = %bb.k
  %.sroa.0244.0.copyload.i = load <2 x float>, ptr %0, align 8, !tbaa !9 ; 9 uses
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx106, align 8, !tbaa !9 ; 9 uses
  %i.ht = call float @b3GetLengthUnitsPerMeter() #11
  %i.hu = fmul float %i.ht, 5.000000e-03
  %i.hv = fmul float %i.hu, 4.000000e+00          ; 3 uses
  %i.hw = fmul float %i.hv, %i.hv                 ; 3 uses
  %i.hx = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 0 ; 6 uses
  %i.hy = call float @llvm.fabs.f32(float %.sroa.041.0.vec.extract.i.i)
  %or.cond.i.i = fcmp ogt float %i.hy, 5.000000e-01
  br i1 %or.cond.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hz = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1
  %i.ia = fmul float %i.hz, 6.700000e-01
  %i.ib = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.ic = fsub float %i.ia, %i.ib
  %i.id = fmul nnan float %.sroa.041.0.vec.extract.i.i, -6.700000e-01
  %i.ie = fmul nnan float %.sroa.041.0.vec.extract.i.i, 4.200000e-01
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.if = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 3 uses
  %i.ig = call float @llvm.fabs.f32(float %i.if)
  %or.cond5.i.i = fcmp ogt float %i.ig, 5.000000e-01
  br i1 %or.cond5.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ih = fmul nnan float %i.if, 6.700000e-01
  %i.ii = fmul float %.sroa.041.0.vec.extract.i.i, -6.700000e-01
  %i.ij = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.ik = fsub float %i.ii, %i.ij
  %i.il = fmul nnan float %i.if, 4.200000e-01
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.im = fmul float %.sroa.10.0.copyload.i, 6.700000e-01
  %i.in = fmul float %.sroa.10.0.copyload.i, -4.200000e-01
  %i.io = fmul <2 x float> %.sroa.0244.0.copyload.i, <float 6.700000e-01, float 4.200000e-01> ; 2 uses
  %shift22 = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop23 = fsub <2 x float> %shift22, %i.io
  %i.ip = extractelement <2 x float> %foldExtExtBinop23, i64 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.sink67.i.i = phi float [ %i.ih, %bb.p ], [ %i.im, %bb.q ], [ %i.ic, %bb.n ] ; 3 uses
  %.sink.i.i = phi float [ %i.ik, %bb.p ], [ %i.in, %bb.q ], [ %i.id, %bb.n ] ; 3 uses
  %.sroa.9.0.i.i = phi float [ %i.il, %bb.p ], [ %i.ip, %bb.q ], [ %i.ie, %bb.n ] ; 3 uses
  %i.iq = fmul float %.sink67.i.i, %.sink67.i.i
  %i.ir = fmul float %.sink.i.i, %.sink.i.i
  %i.is = fadd float %i.iq, %i.ir
  %i.it = fmul float %.sroa.9.0.i.i, %.sroa.9.0.i.i
  %i.iu = fadd float %i.it, %i.is                 ; 2 uses
  %i.iv = fcmp ogt float %i.iu, f0x057A0000
  br i1 %i.iv, label %bb.s, label %.lr.ph.i

bb.s:                                             ; preds = %bb.r
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.iu)
  %i.iw = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ix = fmul float %.sink67.i.i, %i.iw
  %.sroa.018.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.iy = fmul float %.sink.i.i, %i.iw
  %.sroa.018.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i.i, float %i.iy, i64 1
  %i.iz = fmul float %.sroa.9.0.i.i, %i.iw
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.r
  %.sroa.018.0.i.i.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i.i, %bb.s ], [ zeroinitializer, %bb.r ]
  %.sroa.5.0.i.i.i = phi float [ %i.iz, %bb.s ], [ 0.000000e+00, %bb.r ]
  br label %bb.t

._crit_edge.i:                                    ; preds = %bb.v
  %i.ja = icmp eq i32 %.2.i, -1
  br i1 %i.ja, label %bb.w, label %.lr.ph438.i

bb.t:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i166 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i169, %bb.v ] ; 3 uses
  %.0301433.i = phi i32 [ -1, %.lr.ph.i ], [ %.2.i, %bb.v ] ; 2 uses
  %.0302432.i = phi float [ f0xFF7FFFFF, %.lr.ph.i ], [ %.2304.i, %bb.v ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv.i166 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !20 ; 2 uses
  %i.je = fcmp ogt float %i.jd, %i.hv
  br i1 %i.je, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0198.0.copyload.i = load <2 x float>, ptr %i.jb, align 8
  %.sroa.2199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %.sroa.2199.0.copyload.i = load float, ptr %.sroa.2199.0..sroa_idx.i, align 8
  %i.jf = fmul <2 x float> %.sroa.018.0.i.i.i, %.sroa.0198.0.copyload.i ; 2 uses
  %shift25 = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop26 = fadd <2 x float> %i.jf, %shift25
  %i.jg = extractelement <2 x float> %foldExtExtBinop26, i64 0
  %i.jh = fmul float %.sroa.5.0.i.i.i, %.sroa.2199.0.copyload.i
  %i.ji = fadd float %i.jh, %i.jg
  %i.jj = fsub float %i.ji, %i.jd                 ; 2 uses
  %i.jk = fmul float %i.jj, f0x3F733333
  %i.jl = fcmp ogt float %i.jk, %.0302432.i       ; 2 uses
  %.1303.i = select i1 %i.jl, float %i.jj, float %.0302432.i
  %i.jm = trunc nuw nsw i64 %indvars.iv.i166 to i32
  %.1.i = select i1 %i.jl, i32 %i.jm, i32 %.0301433.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2304.i = phi float [ %.1303.i, %bb.u ], [ %.0302432.i, %bb.t ]
  %.2.i = phi i32 [ %.1.i, %bb.u ], [ %.0301433.i, %bb.t ] ; 3 uses
  %indvars.iv.next.i169 = add nuw nsw i64 %indvars.iv.i166, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i169, %wide.trip.count
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.t, !llvm.loop !108

bb.w:                                             ; preds = %._crit_edge.i
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.jn, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

.lr.ph438.i:                                      ; preds = %._crit_edge.i
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !17
  %i.jq = sext i32 %.2.i to i64
  %i.jr = getelementptr inbounds [24 x i8], ptr %7, i64 %i.jq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %i.jr, i64 24, i1 false), !tbaa.struct !71
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 1, ptr %i.js, align 8, !tbaa !16
  %i.jt = add nsw i32 %i.gi, -1
  %i.ju = zext nneg i32 %i.jt to i64              ; 2 uses
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull align 8 dereferenceable(24) %i.jv, i64 24, i1 false), !tbaa.struct !71
  %i.jw = load ptr, ptr %i.jo, align 8, !tbaa !17 ; 3 uses
  %.sroa.0193.0.copyload.i = load <2 x float>, ptr %i.jw, align 4, !tbaa !9 ; 10 uses
  %.sroa.8.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i170, align 4, !tbaa !9 ; 5 uses
  %i.jx = shufflevector <2 x float> %.sroa.0193.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jy = insertelement <4 x float> %i.jx, float 0.000000e+00, i64 3
  %i.jz = insertelement <4 x float> %i.jy, float %.sroa.8.0.copyload.i, i64 2
  %i.ka = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kb = insertelement <4 x float> %i.ka, float 0.000000e+00, i64 3
  %i.kc = insertelement <4 x float> %i.kb, float %.sroa.10.0.copyload.i, i64 2
  br label %bb.x

._crit_edge439.i:                                 ; preds = %bb.x
  %i.kd = fcmp olt float %.4306.i, %i.hw
  br i1 %i.kd, label %b3ReduceManifoldPoints.exit, label %.lr.ph447.preheader.i

bb.x:                                             ; preds = %bb.x, %.lr.ph438.i
  %indvars.iv462.i = phi i64 [ 0, %.lr.ph438.i ], [ %indvars.iv.next463.i, %bb.x ] ; 3 uses
  %.3436.i = phi i32 [ -1, %.lr.ph438.i ], [ %.4.i, %bb.x ]
  %.3305435.i = phi float [ 0.000000e+00, %.lr.ph438.i ], [ %.4306.i, %bb.x ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv462.i ; 3 uses
  %.sroa.0186.0.copyload.i = load <2 x float>, ptr %i.ke, align 8, !tbaa !9
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %.sroa.4187.0.copyload.i = load float, ptr %.sroa.4187.0..sroa_idx.i, align 8, !tbaa !9
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !20 ; 2 uses
  %i.kh = fneg float %i.kg
  %i.ki = fcmp ogt float %i.kg, 0.000000e+00
  %i.kj = select i1 %i.ki, float 0.000000e+00, float %i.kh ; 2 uses
  %i.kk = shufflevector <2 x float> %.sroa.0186.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kl = insertelement <4 x float> %i.kk, float %.sroa.4187.0.copyload.i, i64 2
  %i.km = insertelement <4 x float> %i.kl, float %i.kj, i64 3
  %i.kn = fsub <4 x float> %i.km, %i.jz           ; 3 uses
  %i.ko = shufflevector <4 x float> %i.kn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.kp = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.ko ; 2 uses
  %shift28 = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop29 = fadd <2 x float> %i.kp, %shift28
  %i.kq = extractelement <2 x float> %foldExtExtBinop29, i64 0
  %i.kr = extractelement <4 x float> %i.kn, i64 2
  %i.ks = fmul float %.sroa.10.0.copyload.i, %i.kr
  %i.kt = fadd float %i.ks, %i.kq
  %i.ku = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.kt, i64 0
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kw = fmul <4 x float> %i.kc, %i.kv
  %i.kx = fsub <4 x float> %i.kn, %i.kw           ; 2 uses
  %i.ky = fmul float %i.kj, 4.000000e+00
  %i.kz = insertelement <4 x float> %i.kx, float %i.ky, i64 3
  %i.la = fmul <4 x float> %i.kx, %i.kz           ; 4 uses
  %shift31 = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop32 = fadd <4 x float> %i.la, %shift31
  %shift34 = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop35 = fadd <4 x float> %shift34, %foldExtExtBinop32
  %shift37 = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop38 = fadd <4 x float> %shift37, %foldExtExtBinop35
  %i.lb = extractelement <4 x float> %foldExtExtBinop38, i64 0 ; 2 uses
  %i.lc = fmul float %i.lb, f0x3F733333
  %i.ld = fcmp ogt float %i.lc, %.3305435.i       ; 2 uses
  %.4306.i = select i1 %i.ld, float %i.lb, float %.3305435.i ; 2 uses
  %i.le = trunc nuw nsw i64 %indvars.iv462.i to i32
  %.4.i = select i1 %i.ld, i32 %i.le, i32 %.3436.i ; 2 uses
  %indvars.iv.next463.i = add nuw nsw i64 %indvars.iv462.i, 1 ; 2 uses
  %exitcond467.not.i = icmp eq i64 %indvars.iv.next463.i, %i.ju
  br i1 %exitcond467.not.i, label %._crit_edge439.i, label %bb.x, !llvm.loop !109

.lr.ph447.preheader.i:                            ; preds = %._crit_edge439.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.lg = sext i32 %.4.i to i64
  %i.lh = getelementptr inbounds [24 x i8], ptr %7, i64 %i.lg ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.lf, ptr noundef nonnull align 8 dereferenceable(24) %i.lh, i64 24, i1 false), !tbaa.struct !71
  store i32 2, ptr %i.js, align 8, !tbaa !16
  %i.li = add nsw i32 %i.gi, -2
  %i.lj = zext nneg i32 %i.li to i64              ; 2 uses
  %i.lk = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.lj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lh, ptr noundef nonnull align 8 dereferenceable(24) %i.lk, i64 24, i1 false), !tbaa.struct !71
  %i.ll = load ptr, ptr %i.jo, align 8, !tbaa !17 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %.sroa.0150.0.copyload.i = load <2 x float>, ptr %i.lm, align 4, !tbaa !9 ; 4 uses
  %.sroa.6153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %.sroa.6153.0.copyload.i = load float, ptr %.sroa.6153.0..sroa_idx.i, align 4, !tbaa !9 ; 2 uses
  %foldExtExtBinop40 = fsub <2 x float> %.sroa.0150.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.ln = extractelement <2 x float> %foldExtExtBinop40, i64 0 ; 4 uses
  %foldExtExtBinop42 = fsub <2 x float> %.sroa.0150.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.lo = extractelement <2 x float> %foldExtExtBinop42, i64 1 ; 4 uses
  %i.lp = fsub float %.sroa.6153.0.copyload.i, %.sroa.8.0.copyload.i ; 4 uses
  %i.lq = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 2 uses
  br label %.lr.ph447.i

._crit_edge448.i:                                 ; preds = %.lr.ph447.i
  %i.lr = icmp eq i32 %.6.i, -1
  br i1 %i.lr, label %b3ReduceManifoldPoints.exit, label %.lr.ph455.i

.lr.ph447.i:                                      ; preds = %.lr.ph447.i, %.lr.ph447.preheader.i
  %indvars.iv468.i = phi i64 [ 0, %.lr.ph447.preheader.i ], [ %indvars.iv.next469.i, %.lr.ph447.i ] ; 3 uses
  %.5445.i = phi i32 [ -1, %.lr.ph447.preheader.i ], [ %.6.i, %.lr.ph447.i ]
  %.5307444.i = phi float [ %i.hw, %.lr.ph447.preheader.i ], [ %.6308.i, %.lr.ph447.i ] ; 2 uses
  %.0313443.i = phi float [ 0.000000e+00, %.lr.ph447.preheader.i ], [ %.1314.i, %.lr.ph447.i ]
  %i.ls = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv468.i ; 2 uses
  %.sroa.0134.0.copyload.i = load <2 x float>, ptr %i.ls, align 8, !tbaa !9 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !9
  %foldExtExtBinop44 = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.lt = extractelement <2 x float> %foldExtExtBinop44, i64 0 ; 2 uses
  %foldExtExtBinop46 = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.lu = extractelement <2 x float> %foldExtExtBinop46, i64 1 ; 2 uses
  %i.lv = fsub float %.sroa.4.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.lw = fmul float %i.lo, %i.lv
  %i.lx = fmul float %i.lp, %i.lu
  %i.ly = fsub float %i.lw, %i.lx
  %i.lz = fmul float %i.lp, %i.lt
  %i.ma = fmul float %i.ln, %i.lv
  %i.mb = fsub float %i.lz, %i.ma
  %i.mc = fmul float %i.ln, %i.lu
  %i.md = fmul float %i.lo, %i.lt
  %i.me = fsub float %i.mc, %i.md
  %i.mf = fmul float %.sroa.041.0.vec.extract.i.i, %i.ly
  %i.mg = fmul float %i.lq, %i.mb
  %i.mh = fadd float %i.mf, %i.mg
  %i.mi = fmul float %.sroa.10.0.copyload.i, %i.me
  %i.mj = fadd float %i.mi, %i.mh                 ; 4 uses
  %i.mk = fcmp olt float %i.mj, 0.000000e+00
  %i.ml = fneg float %i.mj
  %i.mm = select i1 %i.mk, float %i.ml, float %i.mj ; 2 uses
  %i.mn = fmul float %i.mm, f0x3F733333
  %i.mo = fcmp ult float %i.mn, %.5307444.i       ; 3 uses
  %.1314.i = select i1 %i.mo, float %.0313443.i, float %i.mj ; 2 uses
  %.6308.i = select i1 %i.mo, float %.5307444.i, float %i.mm
  %i.mp = trunc nuw nsw i64 %indvars.iv468.i to i32
  %.6.i = select i1 %i.mo, i32 %.5445.i, i32 %i.mp ; 3 uses
  %indvars.iv.next469.i = add nuw nsw i64 %indvars.iv468.i, 1 ; 2 uses
  %exitcond473.not.i = icmp eq i64 %indvars.iv.next469.i, %i.lj
  br i1 %exitcond473.not.i, label %._crit_edge448.i, label %.lr.ph447.i, !llvm.loop !110

.lr.ph455.i:                                      ; preds = %._crit_edge448.i
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ll, i64 48
  %i.mr = sext i32 %.6.i to i64
  %i.ms = getelementptr inbounds [24 x i8], ptr %7, i64 %i.mr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.mq, ptr noundef nonnull align 8 dereferenceable(24) %i.ms, i64 24, i1 false), !tbaa.struct !71
  store i32 3, ptr %i.js, align 8, !tbaa !16
  %i.mt = add nsw i32 %i.gi, -3
  %i.mu = zext nneg i32 %i.mt to i64              ; 2 uses
  %i.mv = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.mu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ms, ptr noundef nonnull align 8 dereferenceable(24) %i.mv, i64 24, i1 false), !tbaa.struct !71
  %i.mw = load ptr, ptr %i.jo, align 8, !tbaa !17 ; 3 uses
  %.sroa.6105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 56
  %.sroa.6105.0.copyload.i = load float, ptr %.sroa.6105.0..sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %i.mx = fcmp olt float %.1314.i, 0.000000e+00
  %i.my = select i1 %i.mx, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  %.sroa.0102.0.copyload.i = load <2 x float>, ptr %i.mz, align 4, !tbaa !9 ; 5 uses
  %i.na = shufflevector <2 x float> %.sroa.0102.0.copyload.i, <2 x float> %.sroa.0193.0.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.nb = shufflevector <2 x float> %.sroa.0150.0.copyload.i, <2 x float> %.sroa.0102.0.copyload.i, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.nc = fsub <2 x float> %i.na, %i.nb           ; 3 uses
  %i.nd = shufflevector <2 x float> %.sroa.0102.0.copyload.i, <2 x float> %.sroa.0193.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.ne = shufflevector <2 x float> %.sroa.0150.0.copyload.i, <2 x float> %.sroa.0102.0.copyload.i, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.nf = insertelement <2 x float> %.sroa.0193.0.copyload.i, float %.sroa.6105.0.copyload.i, i64 0
  %i.ng = insertelement <2 x float> %.sroa.0102.0.copyload.i, float %.sroa.6153.0.copyload.i, i64 0 ; 2 uses
  %i.nh = fsub <2 x float> %i.nd, %i.ne           ; 2 uses
  %i.ni = fsub <2 x float> %i.nf, %i.ng           ; 2 uses
  %i.nj = fsub float %.sroa.8.0.copyload.i, %.sroa.6105.0.copyload.i ; 2 uses
  %i.nk = insertelement <2 x float> poison, float %i.my, i64 0
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nm = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.nn = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.no = insertelement <2 x float> %i.nc, float %i.nj, i64 1
  %i.np = shufflevector <2 x float> %i.ni, <2 x float> %i.nc, <2 x i32> <i32 0, i32 3>
  %i.nq = insertelement <2 x float> %i.nh, float %i.nj, i64 1
  br label %bb.y

._crit_edge456.i:                                 ; preds = %bb.y
  %.not.i = icmp eq i32 %.8.i, -1
  br i1 %.not.i, label %b3ReduceManifoldPoints.exit, label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph455.i
  %indvars.iv474.i = phi i64 [ 0, %.lr.ph455.i ], [ %indvars.iv.next475.i, %bb.y ] ; 3 uses
  %.7453.i = phi i32 [ -1, %.lr.ph455.i ], [ %.8.i, %bb.y ]
  %.7309452.i = phi float [ %i.hw, %.lr.ph455.i ], [ %.8310.i, %bb.y ] ; 2 uses
  %i.nr = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv474.i ; 2 uses
  %.sroa.093.0.copyload.i = load <2 x float>, ptr %i.nr, align 8, !tbaa !9 ; 5 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !9 ; 3 uses
  %foldExtExtBinop48 = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.ns = extractelement <2 x float> %foldExtExtBinop48, i64 0 ; 2 uses
  %foldExtExtBinop50 = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.nt = extractelement <2 x float> %foldExtExtBinop50, i64 1 ; 2 uses
  %i.nu = fsub float %.sroa.6.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.nv = fmul float %i.lp, %i.nt
  %i.nw = fmul float %i.lo, %i.nu
  %i.nx = fsub float %i.nv, %i.nw
  %i.ny = fmul float %i.ln, %i.nu
  %i.nz = fmul float %i.lp, %i.ns
  %i.oa = fsub float %i.ny, %i.nz
  %i.ob = fmul float %i.lo, %i.ns
  %i.oc = fmul float %i.ln, %i.nt
  %i.od = fsub float %i.ob, %i.oc
  %i.oe = fmul float %.sroa.041.0.vec.extract.i.i, %i.nx
  %i.of = fmul float %i.lq, %i.oa
  %i.og = fadd float %i.oe, %i.of
  %i.oh = fmul float %.sroa.10.0.copyload.i, %i.od
  %i.oi = fadd float %i.oh, %i.og
  %i.oj = fmul float %i.my, %i.oi                 ; 2 uses
  %i.ok = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ol = fsub <2 x float> %i.ok, %i.ne           ; 2 uses
  %i.om = insertelement <2 x float> %.sroa.093.0.copyload.i, float %.sroa.6.0.copyload.i, i64 0
  %i.on = fsub <2 x float> %i.om, %i.ng           ; 2 uses
  %i.oo = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.op = fsub <2 x float> %i.oo, %i.nb           ; 3 uses
  %i.oq = fsub float %.sroa.6.0.copyload.i, %.sroa.6105.0.copyload.i ; 2 uses
  %i.or = fmul <2 x float> %i.no, %i.on
  %i.os = insertelement <2 x float> %i.op, float %i.oq, i64 1
  %i.ot = fmul <2 x float> %i.ni, %i.os
  %i.ou = fsub <2 x float> %i.or, %i.ot
  %i.ov = insertelement <2 x float> %i.ol, float %i.oq, i64 1
  %i.ow = fmul <2 x float> %i.np, %i.ov
  %i.ox = shufflevector <2 x float> %i.on, <2 x float> %i.op, <2 x i32> <i32 0, i32 3>
  %i.oy = fmul <2 x float> %i.nq, %i.ox
  %i.oz = fsub <2 x float> %i.ow, %i.oy
  %i.pa = fmul <2 x float> %i.nh, %i.op
  %i.pb = fmul <2 x float> %i.nc, %i.ol
  %i.pc = fsub <2 x float> %i.pa, %i.pb
  %i.pd = fmul <2 x float> %i.hx, %i.ou
  %i.pe = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.oz
  %i.pf = fadd <2 x float> %i.pd, %i.pe
  %i.pg = fmul <2 x float> %i.nn, %i.pc
  %i.ph = fadd <2 x float> %i.pg, %i.pf
  %i.pi = fmul <2 x float> %i.nl, %i.ph           ; 2 uses
  %i.pj = extractelement <2 x float> %i.pi, i64 0 ; 2 uses
  %i.pk = extractelement <2 x float> %i.pi, i64 1 ; 2 uses
  %i.pl = fcmp ogt float %i.pj, %i.pk
  %i.pm = select i1 %i.pl, float %i.pj, float %i.pk ; 2 uses
  %i.pn = fcmp ogt float %i.oj, %i.pm
  %i.po = select i1 %i.pn, float %i.oj, float %i.pm ; 2 uses
  %i.pp = fmul float %i.po, f0x3F733333
  %i.pq = fcmp ogt float %i.pp, %.7309452.i       ; 2 uses
  %.8310.i = select i1 %i.pq, float %i.po, float %.7309452.i
  %i.pr = trunc nuw nsw i64 %indvars.iv474.i to i32
  %.8.i = select i1 %i.pq, i32 %i.pr, i32 %.7453.i ; 3 uses
  %indvars.iv.next475.i = add nuw nsw i64 %indvars.iv474.i, 1 ; 2 uses
  %exitcond479.not.i = icmp eq i64 %indvars.iv.next475.i, %i.mu
  br i1 %exitcond479.not.i, label %._crit_edge456.i, label %bb.y, !llvm.loop !111

bb.z:                                             ; preds = %._crit_edge456.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.mw, i64 72
  %i.pt = sext i32 %.8.i to i64
  %i.pu = getelementptr inbounds [24 x i8], ptr %7, i64 %i.pt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ps, ptr noundef nonnull align 8 dereferenceable(24) %i.pu, i64 24, i1 false), !tbaa.struct !71
  %i.pv = load i32, ptr %i.js, align 8, !tbaa !16
  %i.pw = add nsw i32 %i.pv, 1
  store i32 %i.pw, ptr %i.js, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

b3ReduceManifoldPoints.exit:                      ; preds = %._crit_edge460.i, %bb.w, %._crit_edge439.i, %._crit_edge448.i, %._crit_edge456.i, %bb.z
  store float %i.hf, ptr %4, align 4, !tbaa !69
  %i.px = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 2, ptr %i.px, align 4, !tbaa !67
  %i.py = trunc i32 %.16.val to i8
  %i.pz = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !68
  %i.qa = trunc i32 %.20.val to i8
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %i.qa, ptr %i.qb, align 2, !tbaa !70
  br label %bb.aa

bb.aa:                                            ; preds = %b3ReduceManifoldPoints.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.e, %bb.aa
  %.3 = phi i1 [ %i.gm, %bb.aa ], [ false, %bb.e ]
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
  %i.c = fsub float %i.a, %i.b
  %i.d = shufflevector <2 x float> %.sroa.595.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.e = fmul <2 x float> %.sroa.093.0.copyload, %i.d
  %i.f = shufflevector <2 x float> %.sroa.093.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.g = insertelement <2 x float> %i.f, float %.sroa.494.0.copyload, i64 1 ; 2 uses
  %i.h = fmul <2 x float> %i.g, %.sroa.595.0.copyload
  %i.i = fsub <2 x float> %i.e, %i.h              ; 2 uses
  %i.j = insertelement <2 x float> %i.f, float %.sroa.494.0.copyload, i64 0
  %i.k = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.l = fmul <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.g, %i.k
  %i.n = fadd <2 x float> %i.i, %i.l              ; 2 uses
  %i.o = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.c, i64 0
  %i.q = fadd <2 x float> %i.m, %i.p              ; 2 uses
  %i.r = fmul <2 x float> %i.d, %i.n
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
  store <2 x float> %i.x, ptr %6, align 8, !tbaa !9, !alias.scope !115
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.z, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !9, !alias.scope !115
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ab = fneg <2 x float> %.sroa.595.0.copyload
  %i.ac = fneg float %.sroa.3.8.vec.extract.i.i
  %.sroa.33.12.vec.insert.i.i = insertelement <2 x float> %.sroa.6.0.copyload, float %i.ac, i64 0
  store <2 x float> %i.ab, ptr %i.aa, align 4, !tbaa !9, !alias.scope !115
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <2 x float> %.sroa.33.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !9, !alias.scope !115
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !55 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !54 ; 2 uses
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
  %i.bd = fadd float %i.al, %i.ao
  %i.be = fsub float %i.an, %i.am
  %i.bf = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.be, i64 1
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
  store <2 x float> %i.bz, ptr %0, align 8, !tbaa !9
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55 ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.0.i125, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !61
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !50
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
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !50
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %.0.i126, i64 %i.bh ; 2 uses
  %.sroa.063.0.copyload = load <2 x float>, ptr %i.bi, align 4 ; 4 uses
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.264.0.copyload = load float, ptr %.sroa.264.0..sroa_idx, align 4 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.071.0.copyload, %.sroa.6184.0.copyload
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = fmul float %.sroa.272.0.copyload, %.sroa.011.0.vec.extract.i.i
  %i.bl = fsub float %i.bj, %i.bk
  %i.bm = shufflevector <2 x float> %.sroa.071.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bn = insertelement <2 x float> %i.bm, float %.sroa.272.0.copyload, i64 1 ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %.sroa.5183.0.copyload
  %i.bp = shufflevector <2 x float> %.sroa.5183.0.copyload, <2 x float> %.sroa.6184.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bq = fmul <2 x float> %.sroa.071.0.copyload, %i.bp
  %i.br = fsub <2 x float> %i.bo, %i.bq           ; 2 uses
  %i.bs = insertelement <2 x float> %i.bm, float %.sroa.272.0.copyload, i64 0
  %i.bt = shufflevector <2 x float> %.sroa.6184.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bu = fmul <2 x float> %i.bs, %i.bt
  %i.bv = fmul <2 x float> %i.bn, %i.bt
  %i.bw = fadd <2 x float> %i.bu, %i.br           ; 2 uses
  %i.bx = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.by = insertelement <2 x float> %i.bx, float %i.bl, i64 0
  %i.bz = fadd <2 x float> %i.bv, %i.by           ; 2 uses
  %i.ca = fmul <2 x float> %i.bp, %i.bw
  %i.cb = shufflevector <2 x float> %.sroa.6184.0.copyload, <2 x float> %.sroa.5183.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cc = fmul <2 x float> %i.cb, %i.bz
  %i.cd = fsub <2 x float> %i.ca, %i.cc
  %i.ce = fmul <2 x float> %i.cd, splat (float 2.000000e+00)
  %i.cf = fadd <2 x float> %.sroa.071.0.copyload, %i.ce
  %i.cg = fadd <2 x float> %.sroa.0181.0.copyload, %i.cf ; 2 uses
  %foldExtExtBinop189 = fmul <2 x float> %.sroa.6184.0.copyload, %.sroa.063.0.copyload
  %i.ch = extractelement <2 x float> %foldExtExtBinop189, i64 0
  %i.ci = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.264.0.copyload
  %i.cj = fsub float %i.ch, %i.ci
  %i.ck = shufflevector <2 x float> %.sroa.063.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cl = insertelement <2 x float> %i.ck, float %.sroa.264.0.copyload, i64 1 ; 2 uses
  %i.cm = fmul <2 x float> %.sroa.5183.0.copyload, %i.cl
  %i.cn = fmul <2 x float> %i.bp, %.sroa.063.0.copyload
  %i.co = fsub <2 x float> %i.cm, %i.cn           ; 2 uses
  %i.cp = insertelement <2 x float> %i.ck, float %.sroa.264.0.copyload, i64 0
  %i.cq = fmul <2 x float> %i.bt, %i.cp
  %i.cr = fmul <2 x float> %i.bt, %i.cl
  %i.cs = fadd <2 x float> %i.cq, %i.co           ; 2 uses
  %i.ct = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cu = insertelement <2 x float> %i.ct, float %i.cj, i64 0
  %i.cv = fadd <2 x float> %i.cr, %i.cu           ; 2 uses
  %i.cw = fmul <2 x float> %i.bp, %i.cs
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
  %.sroa.044.0.copyload = load <2 x float>, ptr %4, align 8, !tbaa !9 ; 2 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.546.0.copyload = load float, ptr %.sroa.546.0..sroa_idx, align 8, !tbaa !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @b3LineDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3SegmentDistanceResult) align 4 %6, <2 x float> %.sroa.091.0.copyload, float %.sroa.593.0.copyload, <2 x float> %i.aq, float %i.ar, <2 x float> %i.cg, float %i.dr, <2 x float> %i.dp, float %i.ds) #11
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.val = load float, ptr %i.dt, align 4, !tbaa !63 ; 2 uses
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
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !21
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
  store <2 x float> %.sroa.044.0.copyload, ptr %0, align 8, !tbaa !9
  %.sroa.546.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.546.0.copyload, ptr %.sroa.546.0..sroa_idx47, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.el, align 8, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !17 ; 4 uses
  store <2 x float> %i.ej, ptr %i.en, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %i.ek, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store float %i.eg, ptr %i.eo, align 4, !tbaa !20
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eq = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef %i.ab, i32 noundef 1, i32 noundef %i.at) #11
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !21
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
  store i8 %.sink186, ptr %i.et, align 4, !tbaa !21
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 5
  store i8 %.sink185, ptr %i.eu, align 1, !tbaa !21
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i8 %.sink, ptr %i.ev, align 2, !tbaa !21
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
!21 = !{!4, !4, i64 0}
!22 = !{!"b3Capsule", !10, i64 0, !10, i64 12, !8, i64 24}
!23 = !{!22, !8, i64 24}
!24 = !{!"long", !4, i64 0}
!25 = !{!"b3AABB", !10, i64 0, !10, i64 12}
!26 = !{!"b3Matrix3", !10, i64 0, !10, i64 12, !10, i64 24}
!27 = !{!"b3HullData", !24, i64 0, !24, i64 8, !25, i64 16, !8, i64 40, !8, i64 44, !8, i64 48, !10, i64 52, !26, i64 64, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140}
!28 = !{!27, !5, i64 108}
!29 = !{!27, !5, i64 100}
!30 = !{!"p1 _ZTS6b3Vec3", !13, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9, i64 20, i64 4, !9, i64 24, i64 4, !9}
!34 = !{!"b3ShapeProxy", !30, i64 0, !5, i64 8, !8, i64 12}
!35 = !{!"b3Quat", !10, i64 0, !8, i64 12}
!36 = !{!"b3Transform", !10, i64 0, !35, i64 12}
!37 = !{!"_Bool", !4, i64 0}
!38 = !{!"b3DistanceInput", !34, i64 0, !34, i64 16, !36, i64 32, !37, i64 60}
!39 = !{!38, !37, i64 60}
!40 = !{!"b3DistanceOutput", !10, i64 0, !10, i64 12, !10, i64 24, !8, i64 36, !5, i64 40, !5, i64 44}
!41 = !{!40, !8, i64 36}
!42 = !{!27, !5, i64 124}
!43 = !{!27, !5, i64 120}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"b3ClipVertex", !10, i64 0, !8, i64 12, !18, i64 16}
!46 = !{!45, !8, i64 12}
!47 = !{!27, !5, i64 116}
!48 = !{!27, !5, i64 112}
!49 = !{!"b3HullHalfEdge", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!50 = !{!49, !4, i64 2}
!51 = !{!49, !4, i64 3}
!52 = !{!"b3SeparatingAxis", !10, i64 0, !8, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!53 = !{!52, !8, i64 12}
!54 = !{!52, !5, i64 16}
!55 = !{!52, !5, i64 20}
!56 = !{!52, !5, i64 24}
!57 = !{!27, !5, i64 128}
!58 = !{!"b3HullFace", !4, i64 0}
!59 = !{!58, !4, i64 0}
!60 = !{!49, !4, i64 0}
!61 = !{!49, !4, i64 1}
!62 = !{!"b3SegmentDistanceResult", !10, i64 0, !8, i64 12, !10, i64 16, !8, i64 28}
!63 = !{!62, !8, i64 12}
!64 = !{!"b3AxisQuery", !52, i64 0, !52, i64 28, !52, i64 56, !5, i64 84}
!65 = !{!64, !5, i64 84}
!66 = !{!"", !8, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!67 = !{!66, !4, i64 4}
!68 = !{!66, !4, i64 5}
!69 = !{!66, !8, i64 0}
!70 = !{!66, !4, i64 6}
!71 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 1, !21, i64 17, i64 1, !21, i64 18, i64 1, !21, i64 19, i64 1, !21, i64 20, i64 4, !32}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !"b3QueryFaceDirectionHullAndCapsule"}
!74 = distinct !{!74, !73, !"b3QueryFaceDirectionHullAndCapsule: argument 0"}
!75 = distinct !{!75, !44}
!76 = distinct !{!76, !"b3QueryEdgeDirectionHullAndCapsule"}
!77 = distinct !{!77, !76, !"b3QueryEdgeDirectionHullAndCapsule: argument 0"}
!78 = distinct !{!78, !44}
!79 = !{!74}
!80 = !{!77}
!81 = distinct !{!81, !44}
!82 = distinct !{!82, !44}
!83 = distinct !{!83, !44}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !44}
!86 = distinct !{!86, !44}
!87 = distinct !{!87, !44}
!88 = distinct !{!88, !44}
!89 = distinct !{!89, !44}
!90 = !{!27, !5, i64 132}
!91 = !{!27, !5, i64 136}
!92 = !{!66, !4, i64 7}
!93 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !32, i64 20, i64 4, !32, i64 24, i64 4, !32}
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
!104 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9, i64 20, i64 4, !9, i64 24, i64 8, !103, i64 32, i64 4, !32, i64 36, i64 4, !32, i64 40, i64 4, !32, i64 44, i64 4, !32, i64 48, i64 4, !32, i64 52, i64 4, !9, i64 56, i64 4, !32, i64 60, i64 4, !32}
!105 = distinct !{!105, !44}
!106 = distinct !{!106, !44}
!107 = distinct !{!107, !44}
!108 = distinct !{!108, !44}
!109 = distinct !{!109, !44}
!110 = distinct !{!110, !44}
!111 = distinct !{!111, !44}
!112 = distinct !{!112, !"b3InvertTransform"}
!113 = distinct !{!113, !112, !"b3InvertTransform: argument 0"}
!114 = distinct !{!114, !44}
!115 = !{!113}
end_hunk_1
