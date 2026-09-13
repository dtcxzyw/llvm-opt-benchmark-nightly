Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl14texture_lookupERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a

bb.n:                                             ; preds = %bb.l
  %i.gk = fmul float %i.fu, %i.ga
  %i.gl = insertelement <2 x float> %i.ft, float %i.gk, i64 1
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit: ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit, %bb.m, %bb.n
  %.0.i = phi float [ %i.ga, %bb.m ], [ %i.ga, %bb.n ], [ %.1.i.i205, %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit ] ; 5 uses
  %i.gm = phi <2 x float> [ %i.gj, %bb.m ], [ %i.gl, %bb.n ], [ %i.ft, %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !202
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.gq = sext i32 %i.go to i64
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !203
  %i.gs = getelementptr inbounds nuw [128 x i8], ptr %i.gr, i64 %i.gq ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 96
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !342 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 100
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !343 ; 7 uses
  %i.gx = icmp slt i32 %i.gw, %i.gu
  br i1 %i.gx, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 104
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !344
  %i.ha = sext i32 %i.gw to i64
  %i.hb = extractelement <2 x float> %i.gm, i64 0 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ha, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !55
  %i.he = sitofp i32 %i.hd to float
  %i.hf = fmul float %i.hb, %i.he                 ; 2 uses
  %i.hg = fcmp ugt float %i.hf, 1.000000e+00
  br i1 %i.hg, label %.critedge.i, label %.loopexit.i

.critedge.i:                                      ; preds = %bb.o
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.gu, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread, label %bb.o, !llvm.loop !9

.loopexit.i:                                      ; preds = %bb.o
  %i.hh = trunc nsw i64 %indvars.iv.i to i32      ; 6 uses
  %i.hi = add nsw i32 %i.hh, -1                   ; 2 uses
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hf, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %.inv.i208 = fcmp oge float %i.hj, 0.000000e+00
  %.0.i77.i = select i1 %.inv.i208, float %i.hj, float 0.000000e+00 ; 2 uses
  %i.hk = fcmp ogt float %.0.i77.i, 1.000000e+00
  %.1.i78.i = select i1 %i.hk, float 1.000000e+00, float %.0.i77.i ; 6 uses
  %i.hl = fsub float 1.000000e+00, %.1.i78.i
  %i.hm = icmp slt i64 %indvars.iv.i, 0
  br i1 %i.hm, label %.loopexit.i.thread, label %bb.p

.loopexit.i.thread:                               ; preds = %.critedge.i, %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit, %.loopexit.i
  %i.hn = add nsw i32 %i.gu, -1                   ; 2 uses
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.p:                                             ; preds = %.loopexit.i
  %.not351 = icmp slt i32 %i.gw, %i.hh
  br i1 %.not351, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !198
  switch i8 %i.hp, label %bb.t [
    i8 1, label %bb.r
    i8 2, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  ]

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gs, i64 120
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !231 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 36
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %i.hu = load i32, ptr %i.hs, align 4, !tbaa !55
  %i.hv = load i32, ptr %i.ht, align 4, !tbaa !55
  %i.hw = tail call i32 @llvm.smax.i32(i32 %i.hu, i32 %i.hv)
  %i.hx = sitofp i32 %i.hw to float               ; 2 uses
  %i.hy = fmul float %i.hb, %i.hx
  %i.hz = fcmp olt float %i.hy, 5.000000e-01
  br i1 %i.hz, label %bb.s, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.s:                                             ; preds = %bb.r
  %i.ia = extractelement <2 x float> %i.gm, i64 1
  %i.ib = fmul float %i.ia, %i.hx
  %i.ic = fmul float %i.ib, 2.000000e+00          ; 2 uses
  %.inv93.i = fcmp oge float %i.ic, 1.000000e+00
  %.0.i75.i = select i1 %.inv93.i, float %i.ic, float 1.000000e+00 ; 2 uses
  %i.id = fcmp ogt float %.0.i75.i, %i.ga
  %.1.i76.i = select i1 %i.id, float %i.ga, float %.0.i75.i
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.t:                                             ; preds = %bb.q
  br i1 %i.aa, label %bb.u, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.u:                                             ; preds = %bb.t
  %i.ie = fcmp ult float %i.t, %.1.i78.i          ; 2 uses
  %i.if = fdiv float %i.t, %.1.i78.i
  %i.ig = fsub float %i.t, %.1.i78.i
  %i.ih = fsub float 1.000000e+00, %.1.i78.i
  %i.ii = fdiv float %i.ig, %i.ih
  %.sroa.10.1 = select i1 %i.ie, i32 %i.hh, i32 %i.hi ; 2 uses
  %.sink109.i = select i1 %i.ie, float %i.if, float %i.ii ; 2 uses
  %.inv91.i = fcmp oge float %.sink109.i, 0.000000e+00
  %.0.i.i206 = select i1 %.inv91.i, float %.sink109.i, float 0.000000e+00 ; 2 uses
  %i.ij = fcmp ogt float %.0.i.i206, 1.000000e+00
  %.1.i.i207 = select i1 %i.ij, float 1.000000e+00, float %.0.i.i206 ; 2 uses
  store float %.1.i.i207, ptr %i.s, align 8, !tbaa !262
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit: ; preds = %bb.q, %.loopexit.i.thread, %bb.r, %bb.s, %bb.t, %bb.u
  %i.ik = phi float [ %i.t, %.loopexit.i.thread ], [ %i.t, %bb.s ], [ %i.t, %bb.r ], [ %.1.i.i207, %bb.u ], [ %i.t, %bb.t ], [ %i.t, %bb.q ]
  %.sroa.10.2 = phi i32 [ %i.hn, %.loopexit.i.thread ], [ %i.gw, %bb.s ], [ %i.gw, %bb.r ], [ %.sroa.10.1, %bb.u ], [ %i.hh, %bb.t ], [ %i.hh, %bb.q ] ; 7 uses
  %.sroa.0328.2 = phi i32 [ %i.hn, %.loopexit.i.thread ], [ %i.gw, %bb.s ], [ %i.gw, %bb.r ], [ %.sroa.10.1, %bb.u ], [ %i.hi, %bb.t ], [ %i.hh, %bb.q ] ; 7 uses
  %.sroa.9.1 = phi float [ 0.000000e+00, %.loopexit.i.thread ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.u ], [ %.1.i78.i, %bb.t ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %.sroa.0.1 = phi float [ 1.000000e+00, %.loopexit.i.thread ], [ 1.000000e+00, %bb.s ], [ 1.000000e+00, %bb.r ], [ 1.000000e+00, %bb.u ], [ %i.hl, %bb.t ], [ 1.000000e+00, %bb.q ] ; 2 uses
  %.0309 = phi float [ %.0.i, %.loopexit.i.thread ], [ %.1.i76.i, %bb.s ], [ %.0.i, %bb.r ], [ %.0.i, %bb.u ], [ %.0.i, %bb.t ], [ %.0.i, %bb.q ]
  %i.il = zext i16 %i.fz to i32
  %i.im = shl nuw nsw i32 %i.il, 1
  %i.in = add nuw nsw i32 %i.im, 2
  %i.io = and i32 %i.in, 262140                   ; 5 uses
  %.not = icmp eq i32 %i.io, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  %i.ip = shl nuw nsw i32 %i.io, 4
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = alloca i8, i64 %i.iq, align 16
  br label %bb.w

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit, %bb.v
  %i.is = phi ptr [ %i.ir, %bb.v ], [ null, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit ] ; 14 uses
  %i.it = zext nneg i32 %i.io to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.it ; 4 uses
  %i.iv = shl nuw nsw i32 %i.io, 1
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.iw ; 13 uses
  %i.iy = mul nuw nsw i32 %i.io, 3
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.iz ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.jb = extractelement <2 x float> %i.gm, i64 0
  %i.jc = extractelement <2 x float> %i.gm, i64 1
  %i.jd = call noundef i32 @_ZN11OpenImageIO4v3_124compute_ellipse_samplingEffffRfS1_S1_PfS2_bf(float noundef %.0309, float noundef %.0308, float noundef %i.jc, float noundef %i.jb, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef %i.is, ptr noundef %i.iu, i1 noundef zeroext %i.ab, float noundef %i.ik) ; 16 uses
  %i.je = load float, ptr %i.a, align 4, !tbaa !75
  %i.jf = fmul float %i.je, 5.000000e-01          ; 2 uses
  store float %i.jf, ptr %i.a, align 4, !tbaa !75
  %i.jg = load float, ptr %i.b, align 4, !tbaa !75
  %i.jh = fmul float %i.jg, 5.000000e-01          ; 2 uses
  store float %i.jh, ptr %i.b, align 4, !tbaa !75
  %i.ji = icmp sgt i32 %i.jd, 0
  br i1 %i.ji, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.jj = insertelement <4 x float> poison, float %6, i64 0
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jl = insertelement <4 x float> poison, float %i.jf, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jn = insertelement <4 x float> poison, float %7, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jp = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jr = zext nneg i32 %i.jd to i64
  %i.js = add nsw i64 %i.jr, -1                   ; 2 uses
  %i.jt = lshr i64 %i.js, 2                       ; 2 uses
  %i.ju = add nuw nsw i64 %i.jt, 1                ; 2 uses
  %i.jv = icmp eq i64 %i.jt, 0
  br i1 %i.jv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ju, 9223372036854775806
  br label %bb.x

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.x
  %i.jw = and i64 %i.js, 4
  %lcmp.mod.not.not = icmp eq i64 %i.jw, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod356 = trunc i64 %i.ju to i1
  call void @llvm.assume(i1 %lcmp.mod356)
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv.epil.init
  %i.jy = load <4 x float>, ptr %i.jx, align 16, !tbaa !83 ; 2 uses
  %i.jz = fmul <4 x float> %i.jm, %i.jy
  %i.ka = fadd <4 x float> %i.jk, %i.jz
  %i.kb = fmul <4 x float> %i.jq, %i.jy
  %i.kc = fadd <4 x float> %i.jo, %i.kb
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.epil.init
  store <4 x float> %i.ka, ptr %i.kd, align 16, !tbaa !83
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.epil.init
  store <4 x float> %i.kc, ptr %i.ke, align 16, !tbaa !83
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.w
  %.not168 = icmp eq ptr %13, null                ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %18 = lshr i32 %i.p, 1                          ; 2 uses
  %19 = lshr i32 %i.r, 1                          ; 2 uses
  %.3 = select i1 %.not168, ptr null, ptr %16     ; 8 uses
  %i.kg = select i1 %.not168, ptr null, ptr %17   ; 8 uses
  %i.kh = fcmp une float %.sroa.0.1, 0.000000e+00
  br i1 %i.kh, label %bb.y, label %bb.ak

bb.x:                                             ; preds = %bb.x, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.x ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.x ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv
  %i.kj = load <4 x float>, ptr %i.ki, align 16, !tbaa !83 ; 2 uses
  %i.kk = fmul <4 x float> %i.jm, %i.kj
  %i.kl = fadd <4 x float> %i.jk, %i.kk
  %i.km = fmul <4 x float> %i.jq, %i.kj
  %i.kn = fadd <4 x float> %i.jo, %i.km
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv
  store <4 x float> %i.kl, ptr %i.ko, align 16, !tbaa !83
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv
  store <4 x float> %i.kn, ptr %i.kp, align 16, !tbaa !83
  %indvars.iv.next = or disjoint i64 %indvars.iv, 4 ; 3 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv.next
  %i.kr = load <4 x float>, ptr %i.kq, align 16, !tbaa !83 ; 2 uses
  %i.ks = fmul <4 x float> %i.jm, %i.kr
  %i.kt = fadd <4 x float> %i.jk, %i.ks
  %i.ku = fmul <4 x float> %i.jq, %i.kr
  %i.kv = fadd <4 x float> %i.jo, %i.ku
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next
  store <4 x float> %i.kt, ptr %i.kw, align 16, !tbaa !83
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next
  store <4 x float> %i.kv, ptr %i.kx, align 16, !tbaa !83
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.x, !llvm.loop !706

bb.y:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.ky = load i8, ptr %i.kf, align 4, !tbaa !258
  switch i8 %i.ky, label %bb.ah [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %i.kz = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_closestEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.0328.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  %i.la = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.0328.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kg)
  br label %bb.ah

bb.ab:                                            ; preds = %bb.y
  %i.lb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.0328.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kg)
  br label %bb.ah

bb.ac:                                            ; preds = %bb.y
  %i.lc = icmp eq i32 %.sroa.0328.2, 0
  br i1 %i.lc, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ld = load i32, ptr %i.gn, align 4, !tbaa !202
  %i.le = sext i32 %i.ld to i64
  %i.lf = load ptr, ptr %i.gp, align 8, !tbaa !203
  %i.lg = getelementptr inbounds nuw [128 x i8], ptr %i.lf, i64 %i.le ; 2 uses
  %i.lh = sext i32 %.sroa.0328.2 to i64
  %i.li = load ptr, ptr %i.lg, align 8, !tbaa !263
  %i.lj = getelementptr inbounds nuw [40 x i8], ptr %i.li, i64 %i.lh
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !273 ; 2 uses
  %.not.i = icmp eq ptr %i.lk, null
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 120
  %i.lm = load ptr, ptr %i.ll, align 8
  %i.ln = select i1 %.not.i, ptr %i.lm, ptr %i.lk ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !291
  %i.lq = icmp slt i32 %i.lp, %18
  br i1 %i.lq, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !288
  %i.lt = icmp slt i32 %i.ls, %19
  br i1 %i.lt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.lu = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.0328.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kg)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.lv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.0328.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kg)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.1161 = phi i1 [ true, %bb.y ], [ %i.kz, %bb.z ], [ %i.la, %bb.aa ], [ %i.lb, %bb.ab ], [ %i.lu, %bb.af ], [ %i.lv, %bb.ag ]
  %.1156 = phi i32 [ 0, %bb.y ], [ 1, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.af ], [ 0, %bb.ag ]
  %.1153 = phi i32 [ 0, %bb.y ], [ 0, %bb.z ], [ 1, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.af ], [ 1, %bb.ag ]
  %.1150 = phi i32 [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.af ], [ 0, %bb.ag ]
  %i.lw = insertelement <4 x float> poison, float %.sroa.0.1, i64 0
  %i.lx = shufflevector <4 x float> %i.lw, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ly = load <4 x float>, ptr %15, align 16, !tbaa !83
  %i.lz = fmul <4 x float> %i.lx, %i.ly
  %i.ma = fadd <4 x float> %i.lz, zeroinitializer
  br i1 %.not168, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mb = load <4 x float>, ptr %16, align 16, !tbaa !83
  %i.mc = fmul <4 x float> %i.lx, %i.mb
  %i.md = fadd <4 x float> %i.mc, zeroinitializer
  %i.me = load <4 x float>, ptr %17, align 16, !tbaa !83
  %i.mf = fmul <4 x float> %i.lx, %i.me
  %i.mg = fadd <4 x float> %i.mf, zeroinitializer
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.0219.2 = phi <4 x float> [ zeroinitializer, %bb.ah ], [ %i.md, %bb.ai ]
  %.sroa.0218.2 = phi <4 x float> [ zeroinitializer, %bb.ah ], [ %i.mg, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge, %bb.aj
  %.sroa.0220.1 = phi <4 x float> [ %i.ma, %bb.aj ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.sroa.0219.3 = phi <4 x float> [ %.sroa.0219.2, %bb.aj ], [ zeroinitializer, %._crit_edge ] ; 3 uses
  %.sroa.0218.3 = phi <4 x float> [ %.sroa.0218.2, %bb.aj ], [ zeroinitializer, %._crit_edge ] ; 3 uses
  %.2162 = phi i1 [ %.1161, %bb.aj ], [ true, %._crit_edge ] ; 7 uses
  %.1159 = phi i32 [ 1, %bb.aj ], [ 0, %._crit_edge ] ; 2 uses
  %.2157 = phi i32 [ %.1156, %bb.aj ], [ 0, %._crit_edge ] ; 7 uses
  %.2154 = phi i32 [ %.1153, %bb.aj ], [ 0, %._crit_edge ] ; 7 uses
  %.2151 = phi i32 [ %.1150, %bb.aj ], [ 0, %._crit_edge ] ; 7 uses
  %i.mh = fcmp une float %.sroa.9.1, 0.000000e+00
  br i1 %i.mh, label %bb.al, label %bb.ax

bb.al:                                            ; preds = %bb.ak
  %i.mi = add nuw nsw i32 %.1159, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.mj = load i8, ptr %i.kf, align 4, !tbaa !258
  switch i8 %i.mj, label %bb.au [
    i8 0, label %bb.at
    i8 1, label %bb.as
    i8 2, label %bb.ar
    i8 3, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.mk = icmp eq i32 %.sroa.10.2, 0
  br i1 %i.mk, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ml = load i32, ptr %i.gn, align 4, !tbaa !202
  %i.mm = sext i32 %i.ml to i64
  %i.mn = load ptr, ptr %i.gp, align 8, !tbaa !203
  %i.mo = getelementptr inbounds nuw [128 x i8], ptr %i.mn, i64 %i.mm ; 2 uses
  %i.mp = sext i32 %.sroa.10.2 to i64
  %i.mq = load ptr, ptr %i.mo, align 8, !tbaa !263
  %i.mr = getelementptr inbounds nuw [40 x i8], ptr %i.mq, i64 %i.mp
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !273 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.ms, null
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 120
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = select i1 %.not.i.1, ptr %i.mu, ptr %i.ms ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 12
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !291
  %i.my = icmp slt i32 %i.mx, %18
  br i1 %i.my, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !288
  %i.nb = icmp slt i32 %i.na, %19
  br i1 %i.nb, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nc = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kg)
  %i.nd = and i1 %i.nc, %.2162
  %i.ne = add nuw nsw i32 %.2154, 1
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.nf = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kg)
  %i.ng = and i1 %i.nf, %.2162
  %i.nh = add nuw nsw i32 %.2151, 1
  br label %bb.au

bb.ar:                                            ; preds = %bb.al
  %i.ni = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kg)
  %i.nj = and i1 %i.ni, %.2162
  %i.nk = add nuw nsw i32 %.2151, 1
  br label %bb.au

bb.as:                                            ; preds = %bb.al
  %i.nl = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kg)
  %i.nm = and i1 %i.nl, %.2162
  %i.nn = add nuw nsw i32 %.2154, 1
  br label %bb.au

end_hunk_0
