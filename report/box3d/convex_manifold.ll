Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/convex_manifold?download=true
inline.NumInlined: 436
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3BuildFaceAContact:bb.a

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
  %i.jt = add nsw i32 %i.gi, -1                   ; 2 uses
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull align 8 dereferenceable(24) %i.jv, i64 24, i1 false), !tbaa.struct !71
  %i.jw = load ptr, ptr %i.jo, align 8, !tbaa !17 ; 3 uses
  %.sroa.0193.0.copyload.i = load <2 x float>, ptr %i.jw, align 4, !tbaa !9 ; 10 uses
  %.sroa.8.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i170, align 4, !tbaa !9 ; 5 uses
  %smax465.i = call i32 @llvm.smax.i32(i32 %i.jt, i32 1)
  %wide.trip.count466.i = zext nneg i32 %smax465.i to i64
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
  %exitcond467.not.i = icmp eq i64 %indvars.iv.next463.i, %wide.trip.count466.i
  br i1 %exitcond467.not.i, label %._crit_edge439.i, label %bb.x, !llvm.loop !109

.lr.ph447.preheader.i:                            ; preds = %._crit_edge439.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.lg = sext i32 %.4.i to i64
  %i.lh = getelementptr inbounds [24 x i8], ptr %7, i64 %i.lg ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.lf, ptr noundef nonnull align 8 dereferenceable(24) %i.lh, i64 24, i1 false), !tbaa.struct !71
  store i32 2, ptr %i.js, align 8, !tbaa !16
  %i.li = add nsw i32 %i.gi, -2                   ; 2 uses
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.lj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lh, ptr noundef nonnull align 8 dereferenceable(24) %i.lk, i64 24, i1 false), !tbaa.struct !71
  %i.ll = load ptr, ptr %i.jo, align 8, !tbaa !17 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %.sroa.0150.0.copyload.i = load <2 x float>, ptr %i.lm, align 4, !tbaa !9 ; 4 uses
  %.sroa.6153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %.sroa.6153.0.copyload.i = load float, ptr %.sroa.6153.0..sroa_idx.i, align 4, !tbaa !9 ; 2 uses
  %foldExtExtBinop40 = fsub <2 x float> %.sroa.0150.0.copyload.i, %.sroa.0193.0.copyload.i
  %8 = extractelement <2 x float> %foldExtExtBinop40, i64 0 ; 4 uses
  %foldExtExtBinop42 = fsub <2 x float> %.sroa.0150.0.copyload.i, %.sroa.0193.0.copyload.i
  %9 = extractelement <2 x float> %foldExtExtBinop42, i64 1 ; 4 uses
  %10 = fsub float %.sroa.6153.0.copyload.i, %.sroa.8.0.copyload.i ; 4 uses
  %smax471.i = call i32 @llvm.smax.i32(i32 %i.li, i32 1)
  %wide.trip.count472.i = zext nneg i32 %smax471.i to i64
  %i.ln = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 2 uses
  br label %.lr.ph447.i

._crit_edge448.i:                                 ; preds = %.lr.ph447.i
  %i.lo = icmp eq i32 %.6.i, -1
  br i1 %i.lo, label %b3ReduceManifoldPoints.exit, label %.lr.ph455.i

.lr.ph447.i:                                      ; preds = %.lr.ph447.i, %.lr.ph447.preheader.i
  %indvars.iv468.i = phi i64 [ 0, %.lr.ph447.preheader.i ], [ %indvars.iv.next469.i, %.lr.ph447.i ] ; 3 uses
  %.5445.i = phi i32 [ -1, %.lr.ph447.preheader.i ], [ %.6.i, %.lr.ph447.i ]
  %.5307444.i = phi float [ %i.hw, %.lr.ph447.preheader.i ], [ %.6308.i, %.lr.ph447.i ] ; 2 uses
  %.0313443.i = phi float [ 0.000000e+00, %.lr.ph447.preheader.i ], [ %.1314.i, %.lr.ph447.i ]
  %i.lp = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv468.i ; 2 uses
  %.sroa.0134.0.copyload.i = load <2 x float>, ptr %i.lp, align 8, !tbaa !9 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !9
  %foldExtExtBinop44 = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i
  %11 = extractelement <2 x float> %foldExtExtBinop44, i64 0 ; 2 uses
  %foldExtExtBinop46 = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i
  %12 = extractelement <2 x float> %foldExtExtBinop46, i64 1 ; 2 uses
  %13 = fsub float %.sroa.4.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.lq = fmul float %9, %13
  %14 = fmul float %10, %12
  %15 = fsub float %i.lq, %14
  %i.lr = fmul float %10, %11
  %16 = fmul float %8, %13
  %17 = fsub float %i.lr, %16
  %18 = fmul float %8, %12
  %19 = fmul float %9, %11
  %20 = fsub float %18, %19
  %i.ls = fmul float %.sroa.041.0.vec.extract.i.i, %15
  %i.lt = fmul float %i.ln, %17
  %i.lu = fadd float %i.ls, %i.lt
  %i.lv = fmul float %.sroa.10.0.copyload.i, %20
  %i.lw = fadd float %i.lv, %i.lu                 ; 4 uses
  %i.lx = fcmp olt float %i.lw, 0.000000e+00
  %i.ly = fneg float %i.lw
  %i.lz = select i1 %i.lx, float %i.ly, float %i.lw ; 2 uses
  %i.ma = fmul float %i.lz, f0x3F733333
  %i.mb = fcmp ult float %i.ma, %.5307444.i       ; 3 uses
  %.1314.i = select i1 %i.mb, float %.0313443.i, float %i.lw ; 2 uses
  %.6308.i = select i1 %i.mb, float %.5307444.i, float %i.lz
  %i.mc = trunc nuw nsw i64 %indvars.iv468.i to i32
  %.6.i = select i1 %i.mb, i32 %.5445.i, i32 %i.mc ; 3 uses
  %indvars.iv.next469.i = add nuw nsw i64 %indvars.iv468.i, 1 ; 2 uses
  %exitcond473.not.i = icmp eq i64 %indvars.iv.next469.i, %wide.trip.count472.i
  br i1 %exitcond473.not.i, label %._crit_edge448.i, label %.lr.ph447.i, !llvm.loop !110

.lr.ph455.i:                                      ; preds = %._crit_edge448.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.ll, i64 48
  %i.me = sext i32 %.6.i to i64
  %i.mf = getelementptr inbounds [24 x i8], ptr %7, i64 %i.me ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.md, ptr noundef nonnull align 8 dereferenceable(24) %i.mf, i64 24, i1 false), !tbaa.struct !71
  store i32 3, ptr %i.js, align 8, !tbaa !16
  %i.mg = add nsw i32 %i.gi, -3                   ; 2 uses
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.mh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mf, ptr noundef nonnull align 8 dereferenceable(24) %i.mi, i64 24, i1 false), !tbaa.struct !71
  %i.mj = load ptr, ptr %i.jo, align 8, !tbaa !17 ; 3 uses
  %.sroa.6105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 56
  %.sroa.6105.0.copyload.i = load float, ptr %.sroa.6105.0..sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %i.mk = fcmp olt float %.1314.i, 0.000000e+00
  %i.ml = select i1 %i.mk, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 48
  %.sroa.0102.0.copyload.i = load <2 x float>, ptr %i.mm, align 4, !tbaa !9 ; 5 uses
  %21 = shufflevector <2 x float> %.sroa.0102.0.copyload.i, <2 x float> %.sroa.0193.0.copyload.i, <2 x i32> <i32 0, i32 2>
  %22 = shufflevector <2 x float> %.sroa.0150.0.copyload.i, <2 x float> %.sroa.0102.0.copyload.i, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mn = fsub <2 x float> %21, %22               ; 3 uses
  %23 = shufflevector <2 x float> %.sroa.0102.0.copyload.i, <2 x float> %.sroa.0193.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %24 = shufflevector <2 x float> %.sroa.0150.0.copyload.i, <2 x float> %.sroa.0102.0.copyload.i, <2 x i32> <i32 1, i32 3> ; 2 uses
  %25 = insertelement <2 x float> %.sroa.0193.0.copyload.i, float %.sroa.6105.0.copyload.i, i64 0
  %26 = insertelement <2 x float> %.sroa.0102.0.copyload.i, float %.sroa.6153.0.copyload.i, i64 0 ; 2 uses
  %i.mo = fsub <2 x float> %23, %24               ; 2 uses
  %27 = fsub <2 x float> %25, %26                 ; 2 uses
  %i.mp = fsub float %.sroa.8.0.copyload.i, %.sroa.6105.0.copyload.i ; 2 uses
  %smax477.i = call i32 @llvm.smax.i32(i32 %i.mg, i32 1)
  %wide.trip.count478.i = zext nneg i32 %smax477.i to i64
  %i.mq = insertelement <2 x float> poison, float %i.ml, i64 0
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ms = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mu = insertelement <2 x float> %i.mn, float %i.mp, i64 1
  %28 = shufflevector <2 x float> %27, <2 x float> %i.mn, <2 x i32> <i32 0, i32 3>
  %i.mv = insertelement <2 x float> %i.mo, float %i.mp, i64 1
  br label %bb.y

._crit_edge456.i:                                 ; preds = %bb.y
  %.not.i = icmp eq i32 %.8.i, -1
  br i1 %.not.i, label %b3ReduceManifoldPoints.exit, label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph455.i
  %indvars.iv474.i = phi i64 [ 0, %.lr.ph455.i ], [ %indvars.iv.next475.i, %bb.y ] ; 3 uses
  %.7453.i = phi i32 [ -1, %.lr.ph455.i ], [ %.8.i, %bb.y ]
  %.7309452.i = phi float [ %i.hw, %.lr.ph455.i ], [ %.8310.i, %bb.y ] ; 2 uses
  %i.mw = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv474.i ; 2 uses
  %.sroa.093.0.copyload.i = load <2 x float>, ptr %i.mw, align 8, !tbaa !9 ; 5 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !9 ; 3 uses
  %foldExtExtBinop48 = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0193.0.copyload.i
  %29 = extractelement <2 x float> %foldExtExtBinop48, i64 0 ; 2 uses
  %foldExtExtBinop50 = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0193.0.copyload.i
  %30 = extractelement <2 x float> %foldExtExtBinop50, i64 1 ; 2 uses
  %31 = fsub float %.sroa.6.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.mx = fmul float %10, %30
  %32 = fmul float %9, %31
  %33 = fsub float %i.mx, %32
  %i.my = fmul float %8, %31
  %34 = fmul float %10, %29
  %35 = fsub float %i.my, %34
  %36 = fmul float %9, %29
  %37 = fmul float %8, %30
  %38 = fsub float %36, %37
  %i.mz = fmul float %.sroa.041.0.vec.extract.i.i, %33
  %i.na = fmul float %i.ln, %35
  %i.nb = fadd float %i.mz, %i.na
  %i.nc = fmul float %.sroa.10.0.copyload.i, %38
  %i.nd = fadd float %i.nc, %i.nb
  %i.ne = fmul float %i.ml, %i.nd                 ; 2 uses
  %39 = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nf = fsub <2 x float> %39, %24               ; 2 uses
  %40 = insertelement <2 x float> %.sroa.093.0.copyload.i, float %.sroa.6.0.copyload.i, i64 0
  %i.ng = fsub <2 x float> %40, %26               ; 2 uses
  %41 = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = fsub <2 x float> %41, %22                 ; 3 uses
  %43 = fsub float %.sroa.6.0.copyload.i, %.sroa.6105.0.copyload.i ; 2 uses
  %i.nh = fmul <2 x float> %i.mu, %i.ng
  %44 = insertelement <2 x float> %42, float %43, i64 1
  %i.ni = fmul <2 x float> %27, %44
  %45 = fsub <2 x float> %i.nh, %i.ni
  %i.nj = insertelement <2 x float> %i.nf, float %43, i64 1
  %i.nk = fmul <2 x float> %28, %i.nj
  %46 = shufflevector <2 x float> %i.ng, <2 x float> %42, <2 x i32> <i32 0, i32 3>
  %i.nl = fmul <2 x float> %i.mv, %46
  %i.nm = fsub <2 x float> %i.nk, %i.nl
  %47 = fmul <2 x float> %i.mo, %42
  %48 = fmul <2 x float> %i.mn, %i.nf
  %i.nn = fsub <2 x float> %47, %48
  %i.no = fmul <2 x float> %i.hx, %45
  %i.np = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.nm
  %i.nq = fadd <2 x float> %i.no, %i.np
  %i.nr = fmul <2 x float> %i.mt, %i.nn
  %i.ns = fadd <2 x float> %i.nr, %i.nq
  %i.nt = fmul <2 x float> %i.mr, %i.ns           ; 2 uses
  %i.nu = extractelement <2 x float> %i.nt, i64 0 ; 2 uses
  %i.nv = extractelement <2 x float> %i.nt, i64 1 ; 2 uses
  %i.nw = fcmp ogt float %i.nu, %i.nv
  %i.nx = select i1 %i.nw, float %i.nu, float %i.nv ; 2 uses
  %i.ny = fcmp ogt float %i.ne, %i.nx
  %i.nz = select i1 %i.ny, float %i.ne, float %i.nx ; 2 uses
  %i.oa = fmul float %i.nz, f0x3F733333
  %i.ob = fcmp ogt float %i.oa, %.7309452.i       ; 2 uses
  %.8310.i = select i1 %i.ob, float %i.nz, float %.7309452.i
  %i.oc = trunc nuw nsw i64 %indvars.iv474.i to i32
  %.8.i = select i1 %i.ob, i32 %i.oc, i32 %.7453.i ; 3 uses
  %indvars.iv.next475.i = add nuw nsw i64 %indvars.iv474.i, 1 ; 2 uses
  %exitcond479.not.i = icmp eq i64 %indvars.iv.next475.i, %wide.trip.count478.i
  br i1 %exitcond479.not.i, label %._crit_edge456.i, label %bb.y, !llvm.loop !111

bb.z:                                             ; preds = %._crit_edge456.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.mj, i64 72
  %i.oe = sext i32 %.8.i to i64
  %i.of = getelementptr inbounds [24 x i8], ptr %7, i64 %i.oe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.od, ptr noundef nonnull align 8 dereferenceable(24) %i.of, i64 24, i1 false), !tbaa.struct !71
  %i.og = load i32, ptr %i.js, align 8, !tbaa !16
  %i.oh = add nsw i32 %i.og, 1
  store i32 %i.oh, ptr %i.js, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

b3ReduceManifoldPoints.exit:                      ; preds = %._crit_edge460.i, %bb.w, %._crit_edge439.i, %._crit_edge448.i, %._crit_edge456.i, %bb.z
  store float %i.hf, ptr %4, align 4, !tbaa !69
  %i.oi = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 2, ptr %i.oi, align 4, !tbaa !67
  %i.oj = trunc i32 %.16.val to i8
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !68
  %i.ol = trunc i32 %.20.val to i8
  %i.om = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %i.ol, ptr %i.om, align 2, !tbaa !70
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
end_hunk_0
