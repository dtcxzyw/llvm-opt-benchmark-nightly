Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 272
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 328
begin_hunk_0_@quantize_iq1_m:bb.a
  %i.gj = load float, ptr %i.fz, align 4, !tbaa !36, !alias.scope !692
  %i.gk = fmul <12 x float> %i.ga, %i.ga          ; 4 uses
  %i.gl = shufflevector <12 x float> %i.gk, <12 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.gl, ptr %i.l, align 16, !tbaa !36, !noalias !695
  %i.gm = shufflevector <12 x float> %i.gk, <12 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.gm, ptr %i.m, align 16, !tbaa !36, !noalias !695
  %i.gn = shufflevector <12 x float> %i.gk, <12 x float> poison, <2 x i32> <i32 8, i32 9>
  store <2 x float> %i.gn, ptr %i.n, align 16, !tbaa !36, !noalias !695
  %i.go = extractelement <12 x float> %i.ga, i64 0
  %i.gp = extractelement <12 x float> %i.ga, i64 4
  %i.gq = extractelement <12 x float> %i.ga, i64 8
  %i.gr = extractelement <4 x float> %i.fl, i64 0
  br label %.loopexit588.i.us

.loopexit588.i.us:                                ; preds = %.preheader587.preheader.i.us, %.loopexit588.loopexit709.i.us
  %i.gs = phi float [ %i.gj, %.preheader587.preheader.i.us ], [ %i.eo, %.loopexit588.loopexit709.i.us ] ; 2 uses
  %i.gt = phi float [ %i.gi, %.preheader587.preheader.i.us ], [ %i.ek, %.loopexit588.loopexit709.i.us ] ; 2 uses
  %i.gu = phi float [ %i.gh, %.preheader587.preheader.i.us ], [ %i.eg, %.loopexit588.loopexit709.i.us ] ; 2 uses
  %i.gv = phi float [ %i.gq, %.preheader587.preheader.i.us ], [ %i.ec, %.loopexit588.loopexit709.i.us ] ; 2 uses
  %i.gw = phi float [ %i.gg, %.preheader587.preheader.i.us ], [ %i.dy, %.loopexit588.loopexit709.i.us ] ; 2 uses
  %i.gx = phi float [ %i.gf, %.preheader587.preheader.i.us ], [ %i.du, %.loopexit588.loopexit709.i.us ] ; 2 uses
  %i.gy = phi float [ %i.ge, %.preheader587.preheader.i.us ], [ %i.dq, %.loopexit588.loopexit709.i.us ] ; 2 uses
  %i.gz = phi float [ %i.gp, %.preheader587.preheader.i.us ], [ %i.dm, %.loopexit588.loopexit709.i.us ] ; 2 uses
  %i.ha = phi float [ %i.gd, %.preheader587.preheader.i.us ], [ %i.di, %.loopexit588.loopexit709.i.us ] ; 3 uses
  %i.hb = phi float [ %i.gc, %.preheader587.preheader.i.us ], [ %i.de, %.loopexit588.loopexit709.i.us ] ; 3 uses
  %i.hc = phi float [ %i.gb, %.preheader587.preheader.i.us ], [ %i.da, %.loopexit588.loopexit709.i.us ] ; 3 uses
  %i.hd = phi float [ %i.go, %.preheader587.preheader.i.us ], [ %i.cw, %.loopexit588.loopexit709.i.us ] ; 3 uses
  %i.he = phi float [ %i.fo, %.preheader587.preheader.i.us ], [ %i.cl, %.loopexit588.loopexit709.i.us ] ; 3 uses
  %i.hf = phi float [ %i.fn, %.preheader587.preheader.i.us ], [ %i.ch, %.loopexit588.loopexit709.i.us ] ; 3 uses
  %i.hg = phi float [ %i.fm, %.preheader587.preheader.i.us ], [ %i.cd, %.loopexit588.loopexit709.i.us ] ; 3 uses
  %i.hh = phi float [ %i.gr, %.preheader587.preheader.i.us ], [ %i.bz, %.loopexit588.loopexit709.i.us ] ; 3 uses
  %i.hi = phi <12 x float> [ %i.gk, %.preheader587.preheader.i.us ], [ %i.fe, %.loopexit588.loopexit709.i.us ] ; 2 uses
  %i.hj = phi <4 x float> [ %i.fp, %.preheader587.preheader.i.us ], [ %i.ct, %.loopexit588.loopexit709.i.us ]
  %i.hk = shufflevector <12 x float> %i.hi, <12 x float> poison, <12 x i32> <i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.hl = shufflevector <12 x float> %i.hi, <12 x float> poison, <2 x i32> <i32 10, i32 11>
  store <2 x float> %i.hl, ptr %i.o, align 8, !tbaa !36, !noalias !695
  %i.hm = call float @llvm.fabs.f32(float %i.hh)  ; 2 uses
  %i.hn = call float @llvm.fabs.f32(float %i.hg)  ; 2 uses
  %i.ho = fcmp ogt float %i.hm, %i.hn
  %.0540..i.us = select i1 %i.ho, float %i.hm, float %i.hn ; 2 uses
  %i.hp = call float @llvm.fabs.f32(float %i.hf)  ; 2 uses
  %i.hq = fcmp ogt float %.0540..i.us, %i.hp
  %.0540..1.i.us = select i1 %i.hq, float %.0540..i.us, float %i.hp ; 2 uses
  %i.hr = call float @llvm.fabs.f32(float %i.he)  ; 2 uses
  %i.hs = fcmp ogt float %.0540..1.i.us, %i.hr
  %.0540..2.i.us = select i1 %i.hs, float %.0540..1.i.us, float %i.hr ; 2 uses
  %i.ht = call float @llvm.fabs.f32(float %i.hd)  ; 2 uses
  %i.hu = fcmp ogt float %.0540..2.i.us, %i.ht
  %.0540..3.i.us = select i1 %i.hu, float %.0540..2.i.us, float %i.ht ; 2 uses
  %i.hv = call float @llvm.fabs.f32(float %i.hc)  ; 2 uses
  %i.hw = fcmp ogt float %.0540..3.i.us, %i.hv
  %.0540..4.i.us = select i1 %i.hw, float %.0540..3.i.us, float %i.hv ; 2 uses
  %i.hx = call float @llvm.fabs.f32(float %i.hb)  ; 2 uses
  %i.hy = fcmp ogt float %.0540..4.i.us, %i.hx
  %.0540..5.i.us = select i1 %i.hy, float %.0540..4.i.us, float %i.hx ; 2 uses
  %i.hz = call float @llvm.fabs.f32(float %i.ha)  ; 2 uses
  %i.ia = fcmp ogt float %.0540..5.i.us, %i.hz
  %.0540..6.i.us = select i1 %i.ia, float %.0540..5.i.us, float %i.hz ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.ic = call float @llvm.fabs.f32(float %i.gz)  ; 2 uses
  %i.id = fcmp ogt float %.0540..6.i.us, %i.ic
  %.0540..7.i.us = select i1 %i.id, float %.0540..6.i.us, float %i.ic ; 2 uses
  %i.ie = call float @llvm.fabs.f32(float %i.gy)  ; 2 uses
  %i.if = fcmp ogt float %.0540..7.i.us, %i.ie
  %.0540..8.i.us = select i1 %i.if, float %.0540..7.i.us, float %i.ie ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.ih = call float @llvm.fabs.f32(float %i.gx)  ; 2 uses
  %i.ii = fcmp ogt float %.0540..8.i.us, %i.ih
  %.0540..9.i.us = select i1 %i.ii, float %.0540..8.i.us, float %i.ih ; 2 uses
  %i.ij = call float @llvm.fabs.f32(float %i.gw)  ; 2 uses
  %i.ik = fcmp ogt float %.0540..9.i.us, %i.ij
  %.0540..10.i.us = select i1 %i.ik, float %.0540..9.i.us, float %i.ij ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.im = call float @llvm.fabs.f32(float %i.gv)  ; 2 uses
  %i.in = fcmp ogt float %.0540..10.i.us, %i.im
  %.0540..11.i.us = select i1 %i.in, float %.0540..10.i.us, float %i.im ; 2 uses
  %i.io = call float @llvm.fabs.f32(float %i.gu)  ; 2 uses
  %i.ip = fcmp ogt float %.0540..11.i.us, %i.io
  %.0540..12.i.us = select i1 %i.ip, float %.0540..11.i.us, float %i.io ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.ir = call float @llvm.fabs.f32(float %i.gt)  ; 2 uses
  %i.is = fcmp ogt float %.0540..12.i.us, %i.ir
  %.0540..13.i.us = select i1 %i.is, float %.0540..12.i.us, float %i.ir ; 2 uses
  %i.it = call float @llvm.fabs.f32(float %i.gs)  ; 2 uses
  %i.iu = fcmp ogt float %.0540..13.i.us, %i.it
  %.0540..14.i.us = select i1 %i.iu, float %.0540..13.i.us, float %i.it ; 2 uses
  %i.iv = fcmp olt float %.0540..14.i.us, 1.000000e-07
  br i1 %i.iv, label %bb.an, label %.preheader586.preheader.i.us

.preheader586.preheader.i.us:                     ; preds = %.loopexit588.i.us
  store float %i.hh, ptr %i.d, align 16, !tbaa !36, !noalias !695
  store i32 0, ptr %i.j, align 4, !tbaa !47, !noalias !695
  store float %i.hg, ptr %i.p, align 8, !tbaa !36, !noalias !695
  store i32 1, ptr %i.q, align 4, !tbaa !47, !noalias !695
  store float %i.hf, ptr %i.r, align 16, !tbaa !36, !noalias !695
  store i32 2, ptr %i.s, align 4, !tbaa !47, !noalias !695
  store float %i.he, ptr %i.t, align 8, !tbaa !36, !noalias !695
  store i32 3, ptr %i.u, align 4, !tbaa !47, !noalias !695
  store float %i.hd, ptr %i.v, align 16, !tbaa !36, !noalias !695
  store i32 4, ptr %i.w, align 4, !tbaa !47, !noalias !695
  store float %i.hc, ptr %i.x, align 8, !tbaa !36, !noalias !695
  store i32 5, ptr %i.y, align 4, !tbaa !47, !noalias !695
  store float %i.hb, ptr %i.z, align 16, !tbaa !36, !noalias !695
  store i32 6, ptr %i.aa, align 4, !tbaa !47, !noalias !695
  store float %i.ha, ptr %i.ab, align 8, !tbaa !36, !noalias !695
  store i32 7, ptr %i.ac, align 4, !tbaa !47, !noalias !695
  store float %i.gz, ptr %i.ad, align 16, !tbaa !36, !noalias !695
  store i32 8, ptr %i.ae, align 4, !tbaa !47, !noalias !695
  store float %i.gy, ptr %i.af, align 8, !tbaa !36, !noalias !695
  store i32 9, ptr %i.ag, align 4, !tbaa !47, !noalias !695
  store float %i.gx, ptr %i.ah, align 16, !tbaa !36, !noalias !695
  store i32 10, ptr %i.ai, align 4, !tbaa !47, !noalias !695
  store float %i.gw, ptr %i.aj, align 8, !tbaa !36, !noalias !695
  store i32 11, ptr %i.ak, align 4, !tbaa !47, !noalias !695
  store float %i.gv, ptr %i.al, align 16, !tbaa !36, !noalias !695
  store i32 12, ptr %i.am, align 4, !tbaa !47, !noalias !695
  store float %i.gu, ptr %i.an, align 8, !tbaa !36, !noalias !695
  store i32 13, ptr %i.ao, align 4, !tbaa !47, !noalias !695
  store float %i.gt, ptr %i.ap, align 16, !tbaa !36, !noalias !695
  store i32 14, ptr %i.aq, align 4, !tbaa !47, !noalias !695
  store float %i.gs, ptr %i.ar, align 8, !tbaa !36, !noalias !695
  store i32 15, ptr %i.as, align 4, !tbaa !47, !noalias !695
  call void @qsort(ptr noundef nonnull %i.d, i64 noundef 16, i64 noundef 8, ptr noundef nonnull @iq1_sort_helper) #14, !noalias !696
  br label %.preheader578.i.us

.preheader578.i.us:                               ; preds = %bb.ae, %.preheader586.preheader.i.us
  %indvars.iv761.i.us = phi i64 [ 0, %.preheader586.preheader.i.us ], [ %indvars.iv.next762.i.us, %bb.ae ] ; 7 uses
  %.0518670.i.us = phi i32 [ -1, %.preheader586.preheader.i.us ], [ %.3.3.i.us, %bb.ae ]
  %.0521669.i.us = phi i32 [ -1, %.preheader586.preheader.i.us ], [ %.3524.3.i.us, %bb.ae ]
  %.0525668.i.us = phi i32 [ -1, %.preheader586.preheader.i.us ], [ %.3528.3.i.us, %bb.ae ]
  %.0529667.i.us = phi float [ %.0540..14.i.us, %.preheader586.preheader.i.us ], [ %.3532.3.i.us, %bb.ae ]
  %.0534666.i.us = phi float [ f0xFF7FFFFF, %.preheader586.preheader.i.us ], [ %.3537.3.i.us, %bb.ae ]
  %.not707.i.us = icmp eq i64 %indvars.iv761.i.us, 0
  %i.iw = trunc nuw nsw i64 %indvars.iv761.i.us to i32 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.ad, %.preheader578.i.us
  %indvars.iv768.i.us = phi i64 [ %indvars.iv761.i.us, %.preheader578.i.us ], [ %indvars.iv.next769.i.us, %bb.ad ] ; 9 uses
  %.1519664.i.us = phi i32 [ %.0518670.i.us, %.preheader578.i.us ], [ %.3.3.i.us, %bb.ad ] ; 2 uses
  %.1522663.i.us = phi i32 [ %.0521669.i.us, %.preheader578.i.us ], [ %.3524.3.i.us, %bb.ad ] ; 2 uses
  %.1526662.i.us = phi i32 [ %.0525668.i.us, %.preheader578.i.us ], [ %.3528.3.i.us, %bb.ad ] ; 2 uses
  %.1530661.i.us = phi float [ %.0529667.i.us, %.preheader578.i.us ], [ %.3532.3.i.us, %bb.ad ] ; 2 uses
  %.1535660.i.us = phi float [ %.0534666.i.us, %.preheader578.i.us ], [ %.3537.3.i.us, %bb.ad ] ; 3 uses
  br i1 %.not707.i.us, label %.preheader577.i.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.i, %bb.l
  %indvars.iv757.i.us = phi i64 [ %indvars.iv.next758.i.us, %bb.l ], [ 0, %bb.i ] ; 2 uses
  %i.ix = phi float [ %i.ko, %bb.l ], [ 0.000000e+00, %bb.i ]
  %i.iy = phi float [ %i.kl, %bb.l ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.iz = phi <4 x float> [ %i.km, %bb.l ], [ zeroinitializer, %bb.i ] ; 2 uses
  %i.ja = phi <2 x float> [ %i.kn, %bb.l ], [ zeroinitializer, %bb.i ] ; 2 uses
  %.idx.i.us = shl nuw nsw i64 %indvars.iv757.i.us, 3
  %i.jb = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.us
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !47, !noalias !695 ; 3 uses
  %i.jd = icmp slt i32 %i.jc, 8
  br i1 %i.jd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.us
  %i.je = zext nneg i32 %i.jc to i64              ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !36, !noalias !695
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.je
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !36, !alias.scope !692 ; 2 uses
  %i.jj = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jl = fmul <4 x float> %i.jk, <float -1.125000e+00, float -1.125000e+00, float -8.750000e-01, float -1.125000e+00> ; 4 uses
  %i.jm = extractelement <4 x float> %i.jl, i64 2
  %i.jn = shufflevector <4 x float> %i.jl, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jo = insertelement <2 x float> <float -8.750000e-01, float poison>, float %i.ji, i64 1
  %i.jp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jn, <2 x float> %i.jo, <2 x float> %i.ja)
  %i.jq = call float @llvm.fmuladd.f32(float %i.jm, float -8.750000e-01, float %i.iy)
  %i.jr = insertelement <4 x float> <float poison, float -1.125000e+00, float poison, float poison>, float %i.ji, i64 0
  %i.js = shufflevector <4 x float> %i.jr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.jt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jl, <4 x float> %i.js, <4 x float> %i.iz)
  %i.ju = extractelement <4 x float> %i.jl, i64 0
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.us
  %i.jv = sext i32 %i.jc to i64                   ; 2 uses
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.jv
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !36, !noalias !695
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.jv
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !36, !alias.scope !692 ; 2 uses
  %i.ka = insertelement <4 x float> poison, float %i.jx, i64 0
  %i.kb = shufflevector <4 x float> %i.ka, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kc = fmul <4 x float> %i.kb, <float -8.750000e-01, float -8.750000e-01, float -1.125000e+00, float -1.125000e+00> ; 3 uses
  %i.kd = shufflevector <4 x float> %i.kc, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ke = insertelement <2 x float> <float -8.750000e-01, float poison>, float %i.jz, i64 1
  %i.kf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.ke, <2 x float> %i.ja)
  %i.kg = insertelement <4 x float> <float poison, float -8.750000e-01, float poison, float poison>, float %i.jz, i64 0
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.ki = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kc, <4 x float> %i.kh, <4 x float> %i.iz)
  %i.kj = extractelement <4 x float> %i.kc, i64 2 ; 2 uses
  %i.kk = call float @llvm.fmuladd.f32(float %i.kj, float -1.125000e+00, float %i.iy)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i.us = phi float [ %i.ju, %bb.j ], [ %i.kj, %bb.k ]
  %i.kl = phi float [ %i.jq, %bb.j ], [ %i.kk, %bb.k ] ; 2 uses
  %i.km = phi <4 x float> [ %i.jt, %bb.j ], [ %i.ki, %bb.k ] ; 2 uses
  %i.kn = phi <2 x float> [ %i.jp, %bb.j ], [ %i.kf, %bb.k ] ; 2 uses
  %i.ko = call float @llvm.fmuladd.f32(float %.sink.i.us, float -1.125000e+00, float %i.ix) ; 2 uses
  %indvars.iv.next758.i.us = add nuw nsw i64 %indvars.iv757.i.us, 1 ; 2 uses
  %exitcond760.not.i.us = icmp eq i64 %indvars.iv.next758.i.us, %indvars.iv761.i.us
  br i1 %exitcond760.not.i.us, label %.preheader577.i.us, label %.lr.ph.i.us, !llvm.loop !677

.preheader577.i.us:                               ; preds = %bb.l, %bb.i
  %.sroa.14.0.i.us = phi float [ 0.000000e+00, %bb.i ], [ %i.kl, %bb.l ] ; 2 uses
  %.sroa.21.0.i.us = phi float [ 0.000000e+00, %bb.i ], [ %i.ko, %bb.l ] ; 2 uses
  %i.kp = phi <4 x float> [ zeroinitializer, %bb.i ], [ %i.km, %bb.l ] ; 2 uses
  %5 = phi <2 x float> [ zeroinitializer, %bb.i ], [ %i.kn, %bb.l ] ; 3 uses
  %6 = icmp samesign ult i64 %indvars.iv761.i.us, %indvars.iv768.i.us
  %7 = extractelement <2 x float> %5, i64 0
  %8 = extractelement <2 x float> %5, i64 1
  br i1 %6, label %.lr.ph619.i.us, label %.preheader576.i.us

.lr.ph619.i.us:                                   ; preds = %.preheader577.i.us, %bb.o
  %indvars.iv763.i.us = phi i64 [ %indvars.iv.next764.i.us, %bb.o ], [ %indvars.iv761.i.us, %.preheader577.i.us ] ; 2 uses
  %i.kq = phi float [ %i.lj, %bb.o ], [ %.sroa.21.0.i.us, %.preheader577.i.us ]
  %i.kr = phi float [ %i.li, %bb.o ], [ %.sroa.14.0.i.us, %.preheader577.i.us ] ; 2 uses
  %9 = phi <4 x float> [ %31, %bb.o ], [ %i.kp, %.preheader577.i.us ] ; 2 uses
  %10 = phi <2 x float> [ %32, %bb.o ], [ %5, %.preheader577.i.us ] ; 2 uses
  %.idx882.i.us = shl nuw nsw i64 %indvars.iv763.i.us, 3
  %i.ks = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx882.i.us
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !47, !noalias !695 ; 3 uses
  %i.ku = icmp slt i32 %i.kt, 8
  br i1 %i.ku, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph619.i.us
  %i.kv = zext nneg i32 %i.kt to i64              ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kv
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !36, !noalias !695
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.kv
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !36, !alias.scope !692 ; 2 uses
  %i.la = insertelement <4 x float> poison, float %i.kx, i64 0
  %11 = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> zeroinitializer
  %12 = fmul <4 x float> %11, <float -1.250000e-01, float -1.250000e-01, float 1.250000e-01, float -1.250000e-01> ; 4 uses
  %13 = extractelement <4 x float> %12, i64 2
  %14 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %15 = insertelement <2 x float> <float 1.250000e-01, float poison>, float %i.kz, i64 1
  %16 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %15, <2 x float> %10)
  %17 = call float @llvm.fmuladd.f32(float %13, float 1.250000e-01, float %i.kr)
  %18 = insertelement <4 x float> <float -1.250000e-01, float poison, float poison, float poison>, float %i.kz, i64 1
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.lb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> %19, <4 x float> %9)
  %i.lc = extractelement <4 x float> %12, i64 0
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph619.i.us
  %i.ld = sext i32 %i.kt to i64                   ; 2 uses
  %i.le = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !36, !noalias !695
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ld
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !36, !alias.scope !692 ; 2 uses
  %20 = insertelement <4 x float> poison, float %i.lf, i64 0
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %22 = fmul <4 x float> %21, <float 1.250000e-01, float 1.250000e-01, float -1.250000e-01, float -1.250000e-01> ; 3 uses
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> zeroinitializer
  %24 = insertelement <2 x float> <float 1.250000e-01, float poison>, float %i.lh, i64 1
  %25 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %24, <2 x float> %10)
  %26 = insertelement <4 x float> <float 1.250000e-01, float poison, float poison, float poison>, float %i.lh, i64 1
  %27 = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %28 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> %27, <4 x float> %9)
  %29 = extractelement <4 x float> %22, i64 2     ; 2 uses
  %30 = call float @llvm.fmuladd.f32(float %29, float -1.250000e-01, float %i.kr)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink918.i.us = phi float [ %i.lc, %bb.m ], [ %29, %bb.n ]
  %i.li = phi float [ %17, %bb.m ], [ %30, %bb.n ] ; 2 uses
  %31 = phi <4 x float> [ %i.lb, %bb.m ], [ %28, %bb.n ] ; 2 uses
  %32 = phi <2 x float> [ %16, %bb.m ], [ %25, %bb.n ] ; 3 uses
  %i.lj = call float @llvm.fmuladd.f32(float %.sink918.i.us, float -1.250000e-01, float %i.kq) ; 2 uses
  %indvars.iv.next764.i.us = add nuw nsw i64 %indvars.iv763.i.us, 1 ; 2 uses
  %exitcond767.not.i.us = icmp eq i64 %indvars.iv.next764.i.us, %indvars.iv768.i.us
  br i1 %exitcond767.not.i.us, label %.preheader576.i.us.loopexit, label %.lr.ph619.i.us, !llvm.loop !678

.preheader576.i.us.loopexit:                      ; preds = %bb.o
  %i.lk = extractelement <2 x float> %32, i64 1
  %33 = extractelement <2 x float> %32, i64 0
  br label %.preheader576.i.us

.preheader576.i.us:                               ; preds = %.preheader576.i.us.loopexit, %.preheader577.i.us
  %.sroa.14.1.i.us = phi float [ %.sroa.14.0.i.us, %.preheader577.i.us ], [ %i.li, %.preheader576.i.us.loopexit ] ; 2 uses
  %.sroa.21.1.i.us = phi float [ %.sroa.21.0.i.us, %.preheader577.i.us ], [ %i.lj, %.preheader576.i.us.loopexit ] ; 2 uses
  %.lcssa615.i.us.a = phi float [ %7, %.preheader577.i.us ], [ %33, %.preheader576.i.us.loopexit ] ; 2 uses
  %.lcssa615.i.us = phi float [ %8, %.preheader577.i.us ], [ %i.lk, %.preheader576.i.us.loopexit ] ; 2 uses
  %i.ll = phi <4 x float> [ %i.kp, %.preheader577.i.us ], [ %31, %.preheader576.i.us.loopexit ] ; 3 uses
  %i.lm = icmp samesign ult i64 %indvars.iv768.i.us, 16
  br i1 %i.lm, label %.lr.ph639.i.us.preheader, label %.preheader.i.us

.lr.ph639.i.us.preheader:                         ; preds = %.preheader576.i.us
  %34 = shufflevector <4 x float> %i.ll, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %35 = insertelement <2 x float> %34, float %.lcssa615.i.us.a, i64 1
  %36 = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %37 = insertelement <4 x float> %36, float %.sroa.14.1.i.us, i64 3
  br label %.lr.ph639.i.us

.lr.ph639.i.us:                                   ; preds = %.lr.ph639.i.us.preheader, %bb.r
  %indvars.iv770.i.us = phi i64 [ %indvars.iv.next771.i.us, %bb.r ], [ %indvars.iv768.i.us, %.lr.ph639.i.us.preheader ] ; 2 uses
  %i.ln = phi float [ %i.mt, %bb.r ], [ %.sroa.21.1.i.us, %.lr.ph639.i.us.preheader ]
  %i.lo = phi float [ %i.mq, %bb.r ], [ %.lcssa615.i.us, %.lr.ph639.i.us.preheader ] ; 2 uses
  %i.lp = phi <4 x float> [ %i.mr, %bb.r ], [ %37, %.lr.ph639.i.us.preheader ] ; 2 uses
  %i.lq = phi <2 x float> [ %i.ms, %bb.r ], [ %35, %.lr.ph639.i.us.preheader ] ; 2 uses
  %.idx883.i.us = shl nuw nsw i64 %indvars.iv770.i.us, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx883.i.us
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !47, !noalias !695 ; 3 uses
  %i.lt = icmp slt i32 %i.ls, 8
  br i1 %i.lt, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph639.i.us
  %i.lu = zext nneg i32 %i.ls to i64              ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lu
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !36, !noalias !695 ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.lu
  %38 = fmul float %i.lw, 1.125000e+00            ; 3 uses
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !36, !alias.scope !692 ; 3 uses
  %39 = call float @llvm.fmuladd.f32(float %38, float %i.ly, float %i.lo)
  %40 = fmul float %i.lw, 8.750000e-01            ; 3 uses
  %41 = insertelement <2 x float> poison, float %38, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = insertelement <2 x float> <float poison, float 1.125000e+00>, float %i.ly, i64 0
  %44 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> %43, <2 x float> %i.lq)
  %45 = insertelement <4 x float> <float 8.750000e-01, float poison, float poison, float 1.125000e+00>, float %40, i64 1
  %46 = shufflevector <4 x float> %45, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %47 = insertelement <4 x float> poison, float %40, i64 0
  %48 = insertelement <4 x float> %47, float %i.ly, i64 1
  %49 = insertelement <4 x float> %48, float %38, i64 3
  %50 = shufflevector <4 x float> %49, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %51 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %46, <4 x float> %50, <4 x float> %i.lp)
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph639.i.us
  %i.lz = sext i32 %i.ls to i64                   ; 2 uses
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.lz
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !36, !noalias !695
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.lz
  %i.md = load float, ptr %i.mc, align 4, !tbaa !36, !alias.scope !692 ; 3 uses
  %i.me = insertelement <4 x float> poison, float %i.mb, i64 0
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mg = fmul <4 x float> %i.mf, <float 1.125000e+00, float 1.125000e+00, float 8.750000e-01, float 8.750000e-01> ; 4 uses
  %i.mh = extractelement <4 x float> %i.mg, i64 0
  %i.mi = call float @llvm.fmuladd.f32(float %i.mh, float %i.md, float %i.lo)
  %i.mj = extractelement <4 x float> %i.mg, i64 2
  %i.mk = shufflevector <4 x float> %i.mg, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ml = insertelement <2 x float> <float poison, float 1.125000e+00>, float %i.md, i64 0
  %i.mm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> %i.ml, <2 x float> %i.lq)
  %i.mn = insertelement <4 x float> <float 1.125000e+00, float poison, float poison, float 8.750000e-01>, float %i.md, i64 1
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.mp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mg, <4 x float> %i.mo, <4 x float> %i.lp)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink919.i.us = phi float [ %40, %bb.p ], [ %i.mj, %bb.q ]
  %i.mq = phi float [ %39, %bb.p ], [ %i.mi, %bb.q ] ; 2 uses
  %i.mr = phi <4 x float> [ %51, %bb.p ], [ %i.mp, %bb.q ] ; 3 uses
  %i.ms = phi <2 x float> [ %44, %bb.p ], [ %i.mm, %bb.q ] ; 3 uses
  %i.mt = call float @llvm.fmuladd.f32(float %.sink919.i.us, float 8.750000e-01, float %i.ln) ; 2 uses
  %indvars.iv.next771.i.us = add nuw nsw i64 %indvars.iv770.i.us, 1 ; 2 uses
  %exitcond773.not.i.us = icmp eq i64 %indvars.iv.next771.i.us, 16
  br i1 %exitcond773.not.i.us, label %.preheader.i.us.loopexit, label %.lr.ph639.i.us, !llvm.loop !679

.preheader.i.us.loopexit:                         ; preds = %bb.r
  %i.mu = extractelement <2 x float> %i.ms, i64 1
  %i.mv = extractelement <4 x float> %i.mr, i64 3
  %i.mw = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.mx = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.my = shufflevector <4 x float> %i.mw, <4 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.loopexit, %.preheader576.i.us
  %.sroa.14.2.i.us = phi float [ %.sroa.14.1.i.us, %.preheader576.i.us ], [ %i.mv, %.preheader.i.us.loopexit ] ; 3 uses
  %.sroa.21.2.i.us = phi float [ %.sroa.21.1.i.us, %.preheader576.i.us ], [ %i.mt, %.preheader.i.us.loopexit ] ; 3 uses
  %.lcssa637.i.us = phi float [ %.lcssa615.i.us.a, %.preheader576.i.us ], [ %i.mu, %.preheader.i.us.loopexit ] ; 3 uses
  %.lcssa635.i.us = phi float [ %.lcssa615.i.us, %.preheader576.i.us ], [ %i.mq, %.preheader.i.us.loopexit ] ; 4 uses
  %i.mz = phi <4 x float> [ %i.ll, %.preheader576.i.us ], [ %i.my, %.preheader.i.us.loopexit ] ; 4 uses
  %i.na = fcmp ogt float %.lcssa637.i.us, 0.000000e+00
  br i1 %i.na, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.preheader.i.us
  %i.nb = fmul float %.lcssa635.i.us, %.lcssa635.i.us
  %i.nc = fmul float %.1535660.i.us, %.lcssa637.i.us
  %i.nd = fcmp ogt float %i.nb, %i.nc
  br i1 %i.nd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ne = fdiv float %.lcssa635.i.us, %.lcssa637.i.us ; 2 uses
  %i.nf = fmul float %.lcssa635.i.us, %i.ne
  %i.ng = trunc nuw nsw i64 %indvars.iv768.i.us to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.preheader.i.us
  %.3537.i.us = phi float [ %i.nf, %bb.t ], [ %.1535660.i.us, %bb.s ], [ %.1535660.i.us, %.preheader.i.us ] ; 3 uses
  %.3532.i.us = phi float [ %i.ne, %bb.t ], [ %.1530661.i.us, %bb.s ], [ %.1530661.i.us, %.preheader.i.us ] ; 2 uses
  %.3528.i.us = phi i32 [ %i.iw, %bb.t ], [ %.1526662.i.us, %bb.s ], [ %.1526662.i.us, %.preheader.i.us ] ; 2 uses
  %.3524.i.us = phi i32 [ %i.ng, %bb.t ], [ %.1522663.i.us, %bb.s ], [ %.1522663.i.us, %.preheader.i.us ] ; 2 uses
  %.3.i.us = phi i32 [ 0, %bb.t ], [ %.1519664.i.us, %bb.s ], [ %.1519664.i.us, %.preheader.i.us ] ; 2 uses
  %i.nh = extractelement <4 x float> %i.mz, i64 0 ; 3 uses
  %i.ni = fcmp ogt float %i.nh, 0.000000e+00
  br i1 %i.ni, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.nj = extractelement <4 x float> %i.mz, i64 1 ; 4 uses
  %i.nk = fmul float %i.nj, %i.nj
  %i.nl = fmul float %i.nh, %.3537.i.us
  %i.nm = fcmp ogt float %i.nk, %i.nl
  br i1 %i.nm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.nn = fdiv float %i.nj, %i.nh                 ; 2 uses
  %i.no = fmul float %i.nj, %i.nn
  %i.np = trunc nuw nsw i64 %indvars.iv768.i.us to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.3537.1.i.us = phi float [ %i.no, %bb.w ], [ %.3537.i.us, %bb.v ], [ %.3537.i.us, %bb.u ] ; 3 uses
  %.3532.1.i.us = phi float [ %i.nn, %bb.w ], [ %.3532.i.us, %bb.v ], [ %.3532.i.us, %bb.u ] ; 2 uses
  %.3528.1.i.us = phi i32 [ %i.iw, %bb.w ], [ %.3528.i.us, %bb.v ], [ %.3528.i.us, %bb.u ] ; 2 uses
  %.3524.1.i.us = phi i32 [ %i.np, %bb.w ], [ %.3524.i.us, %bb.v ], [ %.3524.i.us, %bb.u ] ; 2 uses
  %.3.1.i.us = phi i32 [ 1, %bb.w ], [ %.3.i.us, %bb.v ], [ %.3.i.us, %bb.u ] ; 2 uses
  %i.nq = fcmp ogt float %.sroa.14.2.i.us, 0.000000e+00
  br i1 %i.nq, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.nr = extractelement <4 x float> %i.mz, i64 2 ; 4 uses
  %i.ns = fmul float %i.nr, %i.nr
  %i.nt = fmul float %.sroa.14.2.i.us, %.3537.1.i.us
  %i.nu = fcmp ogt float %i.ns, %i.nt
  br i1 %i.nu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.nv = fdiv float %i.nr, %.sroa.14.2.i.us      ; 2 uses
  %i.nw = fmul float %i.nr, %i.nv
  %i.nx = trunc nuw nsw i64 %indvars.iv768.i.us to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.3537.2.i.us = phi float [ %i.nw, %bb.z ], [ %.3537.1.i.us, %bb.y ], [ %.3537.1.i.us, %bb.x ] ; 3 uses
  %.3532.2.i.us = phi float [ %i.nv, %bb.z ], [ %.3532.1.i.us, %bb.y ], [ %.3532.1.i.us, %bb.x ] ; 2 uses
  %.3528.2.i.us = phi i32 [ %i.iw, %bb.z ], [ %.3528.1.i.us, %bb.y ], [ %.3528.1.i.us, %bb.x ] ; 2 uses
  %.3524.2.i.us = phi i32 [ %i.nx, %bb.z ], [ %.3524.1.i.us, %bb.y ], [ %.3524.1.i.us, %bb.x ] ; 2 uses
  %.3.2.i.us = phi i32 [ 2, %bb.z ], [ %.3.1.i.us, %bb.y ], [ %.3.1.i.us, %bb.x ] ; 2 uses
  %i.ny = fcmp ogt float %.sroa.21.2.i.us, 0.000000e+00
  br i1 %i.ny, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.nz = extractelement <4 x float> %i.mz, i64 3 ; 4 uses
  %i.oa = fmul float %i.nz, %i.nz
  %i.ob = fmul float %.sroa.21.2.i.us, %.3537.2.i.us
  %i.oc = fcmp ogt float %i.oa, %i.ob
  br i1 %i.oc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.od = fdiv float %i.nz, %.sroa.21.2.i.us      ; 2 uses
  %i.oe = fmul float %i.nz, %i.od
  %i.of = trunc nuw nsw i64 %indvars.iv768.i.us to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.3537.3.i.us = phi float [ %i.oe, %bb.ac ], [ %.3537.2.i.us, %bb.ab ], [ %.3537.2.i.us, %bb.aa ] ; 2 uses
  %.3532.3.i.us = phi float [ %i.od, %bb.ac ], [ %.3532.2.i.us, %bb.ab ], [ %.3532.2.i.us, %bb.aa ] ; 5 uses
  %.3528.3.i.us = phi i32 [ %i.iw, %bb.ac ], [ %.3528.2.i.us, %bb.ab ], [ %.3528.2.i.us, %bb.aa ] ; 10 uses
  %.3524.3.i.us = phi i32 [ %i.of, %bb.ac ], [ %.3524.2.i.us, %bb.ab ], [ %.3524.2.i.us, %bb.aa ] ; 11 uses
  %.3.3.i.us = phi i32 [ 3, %bb.ac ], [ %.3.2.i.us, %bb.ab ], [ %.3.2.i.us, %bb.aa ] ; 7 uses
  %indvars.iv.next769.i.us = add nuw nsw i64 %indvars.iv768.i.us, 1 ; 2 uses
  %exitcond779.not.i.us = icmp eq i64 %indvars.iv.next769.i.us, 17
  br i1 %exitcond779.not.i.us, label %bb.ae, label %bb.i, !llvm.loop !680

bb.ae:                                            ; preds = %bb.ad
  %indvars.iv.next762.i.us = add nuw nsw i64 %indvars.iv761.i.us, 1 ; 2 uses
  %exitcond781.not.i.us = icmp eq i64 %indvars.iv.next762.i.us, 17
  br i1 %exitcond781.not.i.us, label %bb.af, label %.preheader578.i.us, !llvm.loop !681

bb.af:                                            ; preds = %bb.ae
  %i.og = icmp slt i32 %.3528.3.i.us, 0
  %i.oh = icmp slt i32 %.3524.3.i.us, 0
  %or.cond.i.us = select i1 %i.og, i1 true, i1 %i.oh
  %i.oi = icmp slt i32 %.3.3.i.us, 0
  %or.cond3.i.us = select i1 %or.cond.i.us, i1 true, i1 %i.oi
  br i1 %or.cond3.i.us, label %bb.am, label %.preheader585.i.us

.preheader585.i.us:                               ; preds = %bb.af
  %.not920.i.us = icmp eq i32 %.3528.3.i.us, 0
  br i1 %.not920.i.us, label %.preheader584.i.us, label %.lr.ph673.preheader.i.us

.lr.ph673.preheader.i.us:                         ; preds = %.preheader585.i.us
  %wide.trip.count.i.us = zext nneg i32 %.3528.3.i.us to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.us, 3    ; 3 uses
  %i.oj = icmp ult i32 %.3528.3.i.us, 4
  br i1 %i.oj, label %.lr.ph673.i.us.epil.preheader, label %.lr.ph673.preheader.i.us.new

.lr.ph673.preheader.i.us.new:                     ; preds = %.lr.ph673.preheader.i.us
  %unroll_iter = and i64 %wide.trip.count.i.us, 2147483644
  br label %.lr.ph673.i.us

.lr.ph673.i.us:                                   ; preds = %.lr.ph673.i.us, %.lr.ph673.preheader.i.us.new
  %indvars.iv782.i.us = phi i64 [ 0, %.lr.ph673.preheader.i.us.new ], [ %indvars.iv.next783.i.us.3, %.lr.ph673.i.us ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph673.preheader.i.us.new ], [ %niter.next.3, %.lr.ph673.i.us ]
  %.idx884.i.us = shl nuw nsw i64 %indvars.iv782.i.us, 3
  %i.ok = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx884.i.us
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !47, !noalias !695
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds i8, ptr %i.c, i64 %i.om
  store i8 0, ptr %i.on, align 1, !tbaa !34, !noalias !695
  %indvars.iv.next783.i.us = shl i64 %indvars.iv782.i.us, 3
  %i.oo = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next783.i.us
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !47, !noalias !695
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds i8, ptr %i.c, i64 %i.or
  store i8 0, ptr %i.os, align 1, !tbaa !34, !noalias !695
  %indvars.iv.next783.i.us.1 = shl i64 %indvars.iv782.i.us, 3
  %i.ot = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next783.i.us.1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !47, !noalias !695
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds i8, ptr %i.c, i64 %i.ow
  store i8 0, ptr %i.ox, align 1, !tbaa !34, !noalias !695
  %indvars.iv.next783.i.us.2 = shl i64 %indvars.iv782.i.us, 3
  %i.oy = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next783.i.us.2
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !47, !noalias !695
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds i8, ptr %i.c, i64 %i.pb
  store i8 0, ptr %i.pc, align 1, !tbaa !34, !noalias !695
  %indvars.iv.next783.i.us.3 = add nuw nsw i64 %indvars.iv782.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader584.i.us.loopexit.unr-lcssa, label %.lr.ph673.i.us, !llvm.loop !682

.preheader584.i.us.loopexit.unr-lcssa:            ; preds = %.lr.ph673.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader584.i.us, label %.lr.ph673.i.us.epil.preheader

.lr.ph673.i.us.epil.preheader:                    ; preds = %.preheader584.i.us.loopexit.unr-lcssa, %.lr.ph673.preheader.i.us
  %indvars.iv782.i.us.epil.init = phi i64 [ 0, %.lr.ph673.preheader.i.us ], [ %indvars.iv.next783.i.us.3, %.preheader584.i.us.loopexit.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod236)
  br label %.lr.ph673.i.us.epil

.lr.ph673.i.us.epil:                              ; preds = %.lr.ph673.i.us.epil, %.lr.ph673.i.us.epil.preheader
  %indvars.iv782.i.us.epil = phi i64 [ %indvars.iv782.i.us.epil.init, %.lr.ph673.i.us.epil.preheader ], [ %indvars.iv.next783.i.us.epil, %.lr.ph673.i.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph673.i.us.epil.preheader ], [ %epil.iter.next, %.lr.ph673.i.us.epil ]
  %.idx884.i.us.epil = shl nuw nsw i64 %indvars.iv782.i.us.epil, 3
  %i.pd = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx884.i.us.epil
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !47, !noalias !695
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds i8, ptr %i.c, i64 %i.pf
  store i8 0, ptr %i.pg, align 1, !tbaa !34, !noalias !695
  %indvars.iv.next783.i.us.epil = add nuw nsw i64 %indvars.iv782.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader584.i.us, label %.lr.ph673.i.us.epil, !llvm.loop !683

.preheader584.i.us:                               ; preds = %.preheader584.i.us.loopexit.unr-lcssa, %.lr.ph673.i.us.epil, %.preheader585.i.us
  %i.ph = icmp samesign ult i32 %.3528.3.i.us, %.3524.3.i.us
  br i1 %i.ph, label %.lr.ph675.preheader.i.us, label %.preheader583.i.us

.lr.ph675.preheader.i.us:                         ; preds = %.preheader584.i.us
  %i.pi = zext nneg i32 %.3528.3.i.us to i64      ; 2 uses
  %i.pj = sub nuw nsw i32 %.3524.3.i.us, %.3528.3.i.us
  %xtraiter239 = and i32 %i.pj, 3                 ; 2 uses
  %lcmp.mod240.not = icmp eq i32 %xtraiter239, 0
  br i1 %lcmp.mod240.not, label %.lr.ph675.i.us.prol.loopexit, label %.lr.ph675.i.us.prol

.lr.ph675.i.us.prol:                              ; preds = %.lr.ph675.preheader.i.us, %.lr.ph675.i.us.prol
  %indvars.iv787.i.us.prol = phi i64 [ %indvars.iv.next788.i.us.prol, %.lr.ph675.i.us.prol ], [ %i.pi, %.lr.ph675.preheader.i.us ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph675.i.us.prol ], [ 0, %.lr.ph675.preheader.i.us ]
  %.idx885.i.us.prol = shl nuw nsw i64 %indvars.iv787.i.us.prol, 3
  %i.pk = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx885.i.us.prol
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !47, !noalias !695
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds i8, ptr %i.c, i64 %i.pm
  store i8 1, ptr %i.pn, align 1, !tbaa !34, !noalias !695
  %indvars.iv.next788.i.us.prol = add nuw nsw i64 %indvars.iv787.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
end_hunk_0
