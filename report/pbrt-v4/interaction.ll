Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/interaction?download=true
inline.NumInlined: 2722
inline.NumDeleted: 705
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN4pbrt13ZSobolSampler5Get1DEv:bb.a
  %i.ml = shl nuw i32 1, %.013.i.i
  %i.mm = and i32 %i.ml, %i.mk
  %.not11.i.i = icmp eq i32 %i.mm, 0
  %i.mn = lshr exact i32 -2147483648, %.013.i.i
  %i.mo = select i1 %.not11.i.i, i32 0, i32 %i.mn
  %.2.i.i = xor i32 %i.mo, %.112.i.i              ; 3 uses
  %exitcond.not.i.i = icmp eq i32 %.013.i.i, 31
  br i1 %exitcond.not.i.i, label %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.mp = ashr exact i32 -2147483648, %.013.i.i
  %i.mq = and i32 %i.mp, %.2.i.i
  %i.mr = xor i32 %i.mq, %i.km
  %i.ms = zext i32 %i.mr to i64                   ; 2 uses
  %i.mt = lshr i64 %i.ms, 31
  %i.mu = xor i64 %i.mt, %i.ms
  %i.mv = mul i64 %i.mu, 9202493588570546565      ; 2 uses
  %i.mw = lshr i64 %i.mv, 27
  %i.mx = xor i64 %i.mw, %i.mv
  %i.my = mul i64 %i.mx, -9089707755183418291     ; 2 uses
  %i.mz = lshr i64 %i.my, 33
  %i.na = xor i64 %i.mz, %i.my
  %i.nb = trunc i64 %i.na to i32
  %i.nc = shl nuw i32 2, %.013.i.i
  %i.nd = and i32 %i.nc, %i.nb
  %.not11.i.i.1 = icmp eq i32 %i.nd, 0
  %i.ne = lshr exact i32 1073741824, %.013.i.i
  %i.nf = select i1 %.not11.i.i.1, i32 0, i32 %i.ne
  %.2.i.i.1 = xor i32 %i.nf, %.2.i.i
  %i.ng = add nuw nsw i32 %.013.i.i, 2
  br label %bb.m

.lr.ph.i45:                                       ; preds = %bb.l, %bb.p
  %indvars.iv.i46 = phi i64 [ %indvars.iv.next.i51, %bb.p ], [ 0, %bb.l ] ; 2 uses
  %.0914.i47 = phi i32 [ %.1.i50, %bb.p ], [ 0, %bb.l ] ; 2 uses
  %.01013.i48 = phi i64 [ %i.nl, %bb.p ], [ %.1.i, %bb.l ] ; 2 uses
  %i.nh = and i64 %.01013.i48, 1
  %.not11.i49 = icmp eq i64 %i.nh, 0
  br i1 %.not11.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i45
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i46
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !120
  %i.nk = xor i32 %i.nj, %.0914.i47
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i45
  %.1.i50 = phi i32 [ %i.nk, %bb.o ], [ %.0914.i47, %.lr.ph.i45 ] ; 2 uses
  %i.nl = ashr i64 %.01013.i48, 1                 ; 2 uses
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i46, 1
  %.not.i52 = icmp eq i64 %i.nl, 0
  br i1 %.not.i52, label %._crit_edge.i53, label %.lr.ph.i45, !llvm.loop !5

_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit: ; preds = %bb.m
  %i.nm = uitofp i32 %.2.i.i to float
  %i.nn = fmul nnan float %i.nm, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit

_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit: ; preds = %._crit_edge.loopexit.i, %bb.c, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit, %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit
  %.sink65 = phi float [ %i.nn, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit ], [ %i.lv, %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit ], [ %i.lc, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit ], [ 0.000000e+00, %bb.c ], [ %i.kp, %._crit_edge.loopexit.i ] ; 2 uses
  %i.no = fcmp ogt float %.sink65, f0x3F7FFFFF
  %.sroa.speculated.i55 = select i1 %i.no, float f0x3F7FFFFF, float %.sink65
  ret float %.sroa.speculated.i55
}

declare noundef float @_ZN4pbrt10MLTSampler5Get1DEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get2DEvEUlT_E_NS_6Point2IfEENS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  switch i32 %2, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.i
    i32 7, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call <2 x float> @_ZN4pbrt14PMJ02BNSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !167  ; 2 uses
  %i.d = mul i64 %i.c, 6364136223846793005
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !168  ; 2 uses
  %i.g = add i64 %i.d, %i.f                       ; 2 uses
  %i.h = mul i64 %i.g, 6364136223846793005
  %i.i = add i64 %i.h, %i.f
  store i64 %i.i, ptr %i.b, align 8, !tbaa !167
  %i.j = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.k = insertelement <2 x i64> %i.j, i64 %i.g, i64 1 ; 3 uses
  %i.l = lshr <2 x i64> %i.k, splat (i64 45)
  %i.m = lshr <2 x i64> %i.k, splat (i64 27)
  %i.n = xor <2 x i64> %i.l, %i.m
  %i.o = trunc <2 x i64> %i.n to <2 x i32>        ; 2 uses
  %i.p = lshr <2 x i64> %i.k, splat (i64 59)
  %i.q = trunc nuw nsw <2 x i64> %i.p to <2 x i32>
  %i.r = tail call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.o, <2 x i32> %i.o, <2 x i32> %i.q)
  %i.s = uitofp <2 x i32> %i.r to <2 x float>
  %i.t = fmul nnan <2 x float> %i.s, splat (float f0x2F800000) ; 2 uses
  %i.u = fcmp olt <2 x float> %i.t, splat (float f0x3F7FFFFF)
  %i.v = select <2 x i1> %i.u, <2 x float> %i.t, <2 x float> splat (float f0x3F7FFFFF)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.w = tail call <2 x float> @_ZN4pbrt17StratifiedSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !169  ; 2 uses
  %i.z = icmp sgt i32 %i.y, 998
  %spec.select.i.i = select i1 %i.z, i32 2, i32 %i.y ; 3 uses
  %i.aa = add nsw i32 %spec.select.i.i, 2
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !169
  %i.ab = tail call noundef float @_ZNK4pbrt13HaltonSampler15SampleDimensionEi(ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %spec.select.i.i)
  %i.ac = add nsw i32 %spec.select.i.i, 1
  %i.ad = tail call noundef float @_ZNK4pbrt13HaltonSampler15SampleDimensionEi(ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %i.ac)
  %.sroa.0.0.vec.insert.i.i19 = insertelement <2 x float> poison, float %i.ab, i64 0
  %.sroa.0.4.vec.insert.i.i20 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i19, float %i.ad, i64 1
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.ae = tail call <2 x float> @_ZN4pbrt18PaddedSobolSampler5Get2DEv(ptr noundef nonnull align 4 dereferenceable(28) %1)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !170 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 1022
  br i1 %i.ah, label %bb.h, label %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit

bb.h:                                             ; preds = %bb.g
  store i32 2, ptr %i.af, align 8, !tbaa !170
  br label %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit

_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit: ; preds = %bb.g, %bb.h
  %i.ai = phi i32 [ 2, %bb.h ], [ %i.ag, %bb.g ]
  %i.aj = tail call noundef float @_ZNK4pbrt12SobolSampler15SampleDimensionEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.ai)
  %i.ak = load i32, ptr %i.af, align 8, !tbaa !170
  %i.al = add nsw i32 %i.ak, 1
  %i.am = tail call noundef float @_ZNK4pbrt12SobolSampler15SampleDimensionEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.al)
  %.sroa.0.0.vec.insert.i.i21 = insertelement <2 x float> poison, float %i.aj, i64 0
  %.sroa.0.4.vec.insert.i.i22 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i21, float %i.am, i64 1
  %i.an = load i32, ptr %i.af, align 8, !tbaa !170
  %i.ao = add nsw i32 %i.an, 2
  store i32 %i.ao, ptr %i.af, align 8, !tbaa !170
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.ap = tail call <2 x float> @_ZN4pbrt13ZSobolSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(28) %1)
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.aq = tail call <2 x float> @_ZN4pbrt10MLTSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(104) %1)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !171 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !172 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !173 ; 3 uses
  %i.ax = add nsw i32 %i.aw, 1
  %i.ay = mul nsw i32 %i.aw, %i.au
  %i.az = add nsw i32 %i.ay, %i.as
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bb = sext i32 %i.az to i64
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !175 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load float, ptr %i.bd, align 4, !tbaa !59
  %i.bf = add nsw i32 %i.aw, 2
  store i32 %i.bf, ptr %i.av, align 4, !tbaa !173
  %i.bg = mul nsw i32 %i.ax, %i.au
  %i.bh = add nsw i32 %i.bg, %i.as
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !59
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.be, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.bk, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i.i, %bb.k ], [ %i.a, %bb.b ], [ %i.v, %bb.c ], [ %i.w, %bb.d ], [ %.sroa.0.4.vec.insert.i.i20, %bb.e ], [ %i.ae, %bb.f ], [ %.sroa.0.4.vec.insert.i.i22, %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit ], [ %i.ap, %bb.i ], [ %i.aq, %bb.j ]
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZN4pbrt14PMJ02BNSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !178  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !176  ; 6 uses
  %i.e = icmp sgt i32 %i.d, 9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load i64, ptr %i.f, align 8 ; 4 uses
  br i1 %i.e, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !177
  %.sroa.4.8.insert.ext.i = zext nneg i32 %i.d to i64
  %.sroa.4.12.insert.ext.i = zext i32 %i.h to i64
  %.sroa.4.12.insert.shift.i = shl nuw i64 %.sroa.4.12.insert.ext.i, 32
  %.sroa.4.12.insert.insert.i = or disjoint i64 %.sroa.4.12.insert.shift.i, %.sroa.4.8.insert.ext.i
  %i.i = mul i64 %.sroa.02.0.copyload, -4132994306676758123 ; 2 uses
  %i.j = lshr i64 %i.i, 47
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4132994306676758123
  %i.m = xor i64 %i.l, 7659067388010076496
  %i.n = mul i64 %i.m, -4132994306676758123
  %i.o = mul i64 %.sroa.4.12.insert.insert.i, -4132994306676758123 ; 2 uses
  %i.p = lshr i64 %i.o, 47
  %i.q = xor i64 %i.p, %i.o
  %i.r = mul i64 %i.q, -4132994306676758123
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, -4132994306676758123       ; 2 uses
  %i.u = lshr i64 %i.t, 47
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, -4132994306676758123       ; 2 uses
  %i.x = lshr i64 %i.w, 47
  %i.y = xor i64 %i.x, %i.w
  %i.z = load i32, ptr %0, align 8, !tbaa !67     ; 3 uses
  %i.aa = trunc i64 %i.y to i32                   ; 6 uses
  %i.ab = add i32 %i.z, -1                        ; 2 uses
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = or i32 %i.ac, %i.ab                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 2
  %i.af = or i32 %i.ae, %i.ad                     ; 2 uses
  %i.ag = lshr i32 %i.af, 4
  %i.ah = or i32 %i.ag, %i.af                     ; 2 uses
  %i.ai = lshr i32 %i.ah, 8
  %i.aj = or i32 %i.ai, %i.ah                     ; 2 uses
  %i.ak = lshr i32 %i.aj, 16
  %i.al = or i32 %i.ak, %i.aj                     ; 6 uses
  %i.am = lshr i32 %i.aa, 16
  %i.an = lshr i32 %i.aa, 8
  %i.ao = lshr i32 %i.aa, 23
  %i.ap = lshr i32 %i.aa, 27
  %i.aq = or i32 %i.ap, 1
  %i.ar = mul i32 %i.aq, 1765145193
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %i.b, %bb.b ], [ %i.bt, %bb.c ]
  %i.as = xor i32 %.0.i, %i.aa
  %i.at = mul i32 %i.as, -512718531
  %i.au = xor i32 %i.at, %i.am                    ; 2 uses
  %i.av = and i32 %i.au, %i.al
  %i.aw = lshr i32 %i.av, 4
  %i.ax = xor i32 %i.an, %i.aw
  %i.ay = xor i32 %i.ax, %i.au
  %i.az = mul i32 %i.ay, 153742143
  %i.ba = xor i32 %i.az, %i.ao                    ; 2 uses
  %i.bb = and i32 %i.ba, %i.al
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = xor i32 %i.bc, %i.ba
  %i.be = mul i32 %i.ar, %i.bd                    ; 2 uses
  %i.bf = and i32 %i.be, %i.al
  %i.bg = lshr i32 %i.bf, 11
  %i.bh = xor i32 %i.bg, %i.be
  %i.bi = mul i32 %i.bh, 1960620803               ; 2 uses
  %i.bj = and i32 %i.bi, %i.al
  %i.bk = lshr i32 %i.bj, 2
  %i.bl = xor i32 %i.bk, %i.bi
  %i.bm = mul i32 %i.bl, -1638916925              ; 2 uses
  %i.bn = and i32 %i.bm, %i.al
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = xor i32 %i.bo, %i.bm
  %i.bq = mul i32 %i.bp, -933190689
  %i.br = and i32 %i.bq, %i.al                    ; 2 uses
  %i.bs = lshr i32 %i.br, 5
  %i.bt = xor i32 %i.bs, %i.br                    ; 3 uses
  %.not.i = icmp ult i32 %i.bt, %i.z
  br i1 %.not.i, label %_ZN4pbrt18PermutationElementEjjj.exit, label %bb.c, !llvm.loop !1

_ZN4pbrt18PermutationElementEjjj.exit:            ; preds = %bb.c
  %i.bu = add i32 %i.bt, %i.aa
  %i.bv = urem i32 %i.bu, %i.z
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %_ZN4pbrt18PermutationElementEjjj.exit
  %.0 = phi i32 [ %i.bv, %_ZN4pbrt18PermutationElementEjjj.exit ], [ %i.b, %bb.a ]
  %i.bw = icmp sgt i32 %i.d, -1
  %i.bx = and i64 %.sroa.02.0.copyload, -9223372034707292160
  %i.by = icmp eq i64 %i.bx, 0
  %or.cond5.i = select i1 %i.bw, i1 %i.by, i1 false
  br i1 %or.cond5.i, label %_ZN4pbrt9BlueNoiseEiNS_6Point2IiEE.exit10, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  tail call void @_ZN4pbrt8LogFatalIJRA42_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef 26, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(42) @.str.32) #25
  unreachable

_ZN4pbrt9BlueNoiseEiNS_6Point2IiEE.exit10:        ; preds = %._crit_edge
  %i.bz = lshr i32 %i.d, 1
  %i.ca = urem i32 %i.bz, 5
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [524288 x i8], ptr @_ZN4pbrt14pmj02bnSamplesE, i64 %i.cb
  %i.cd = srem i32 %.0, 65536
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ce
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.02.0.copyload, 32
  %1 = and i64 %.sroa.02.0.copyload, 127          ; 2 uses
  %i.cg = and i64 %.sroa.3.0.extract.shift.i, 127 ; 2 uses
  %2 = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <2 x i32> zeroinitializer
  %4 = add nuw nsw <2 x i32> %3, <i32 0, i32 1>
  %5 = urem <2 x i32> %4, splat (i32 48)          ; 2 uses
  %6 = extractelement <2 x i32> %5, i64 0
  %i.ch = zext nneg i32 %6 to i64
  %i.ci = getelementptr inbounds nuw [32768 x i8], ptr @_ZN4pbrt17BlueNoiseTexturesE, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [256 x i8], ptr %i.ci, i64 %1
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.cg
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !179
  %7 = extractelement <2 x i32> %5, i64 1
  %i.cm = zext nneg i32 %7 to i64
  %i.cn = getelementptr inbounds nuw [32768 x i8], ptr @_ZN4pbrt17BlueNoiseTexturesE, i64 %i.cm
  %i.co = getelementptr inbounds nuw [256 x i8], ptr %i.cn, i64 %1
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cg
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !179
  %i.cr = load <2 x i32>, ptr %i.cf, align 8, !tbaa !120
  %i.cs = uitofp <2 x i32> %i.cr to <2 x double>
  %i.ct = fmul nnan <2 x double> %i.cs, splat (double f0x3DF0000000000000)
  %i.cu = fptrunc <2 x double> %i.ct to <2 x float>
  %i.cv = insertelement <2 x i16> poison, i16 %i.cl, i64 0
  %i.cw = insertelement <2 x i16> %i.cv, i16 %i.cq, i64 1
  %i.cx = uitofp <2 x i16> %i.cw to <2 x float>
  %i.cy = fdiv <2 x float> %i.cx, splat (float 6.553500e+04)
  %i.cz = fadd <2 x float> %i.cy, %i.cu           ; 4 uses
  %i.da = extractelement <2 x float> %i.cz, i64 0 ; 2 uses
  %i.db = fcmp ult float %i.da, 1.000000e+00
  %i.dc = fadd float %i.da, -1.000000e+00
  %.sroa.013.0.vec.insert = insertelement <2 x float> %i.cz, float %i.dc, i64 0
  %.sroa.013.0 = select i1 %i.db, <2 x float> %i.cz, <2 x float> %.sroa.013.0.vec.insert ; 2 uses
  %i.dd = extractelement <2 x float> %i.cz, i64 1 ; 2 uses
  %i.de = fcmp ult float %i.dd, 1.000000e+00
  %i.df = fadd float %i.dd, -1.000000e+00
  %.sroa.013.4.vec.insert40 = insertelement <2 x float> %.sroa.013.0, float %i.df, i64 1
  %.sroa.013.1 = select i1 %i.de, <2 x float> %.sroa.013.0, <2 x float> %.sroa.013.4.vec.insert40 ; 2 uses
  %i.dg = add nuw nsw i32 %i.d, 2
  store i32 %i.dg, ptr %i.c, align 4, !tbaa !176
  %i.dh = fcmp ogt <2 x float> %.sroa.013.1, splat (float f0x3F7FFFFF)
  %i.di = select <2 x i1> %i.dh, <2 x float> splat (float f0x3F7FFFFF), <2 x float> %.sroa.013.1
  ret <2 x float> %i.di
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZN4pbrt17StratifiedSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !180  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !181
  %.sroa.4.8.insert.ext.i = zext i32 %i.c to i64
  %.sroa.4.12.insert.ext.i = zext i32 %i.e to i64
  %.sroa.4.12.insert.shift.i = shl nuw i64 %.sroa.4.12.insert.ext.i, 32
  %.sroa.4.12.insert.insert.i = or disjoint i64 %.sroa.4.12.insert.shift.i, %.sroa.4.8.insert.ext.i
  %i.f = mul i64 %.sroa.0.0.copyload, -4132994306676758123 ; 2 uses
  %i.g = lshr i64 %i.f, 47
  %i.h = xor i64 %i.g, %i.f
  %i.i = mul i64 %i.h, -4132994306676758123
  %i.j = xor i64 %i.i, 7659067388010076496
  %i.k = mul i64 %i.j, -4132994306676758123
  %i.l = mul i64 %.sroa.4.12.insert.insert.i, -4132994306676758123 ; 2 uses
  %i.m = lshr i64 %i.l, 47
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -4132994306676758123
  %i.p = xor i64 %i.o, %i.k
  %i.q = mul i64 %i.p, -4132994306676758123       ; 2 uses
  %i.r = lshr i64 %i.q, 47
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, -4132994306676758123       ; 2 uses
  %i.u = lshr i64 %i.t, 47
  %i.v = xor i64 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !182
  %i.y = load <2 x i32>, ptr %0, align 8, !tbaa !120 ; 3 uses
  %i.z = extractelement <2 x i32> %i.y, i64 0     ; 3 uses
  %i.aa = extractelement <2 x i32> %i.y, i64 1
  %i.ab = mul nsw i32 %i.aa, %i.z                 ; 3 uses
  %i.ac = trunc i64 %i.v to i32                   ; 6 uses
  %i.ad = add i32 %i.ab, -1                       ; 2 uses
  %i.ae = lshr i32 %i.ad, 1
  %i.af = or i32 %i.ae, %i.ad                     ; 2 uses
  %i.ag = lshr i32 %i.af, 2
  %i.ah = or i32 %i.ag, %i.af                     ; 2 uses
  %i.ai = lshr i32 %i.ah, 4
  %i.aj = or i32 %i.ai, %i.ah                     ; 2 uses
  %i.ak = lshr i32 %i.aj, 8
  %i.al = or i32 %i.ak, %i.aj                     ; 2 uses
  %i.am = lshr i32 %i.al, 16
  %i.an = or i32 %i.am, %i.al                     ; 6 uses
  %i.ao = lshr i32 %i.ac, 16
  %i.ap = lshr i32 %i.ac, 8
  %i.aq = lshr i32 %i.ac, 23
  %i.ar = lshr i32 %i.ac, 27
  %i.as = or i32 %i.ar, 1
  %i.at = mul i32 %i.as, 1765145193
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ %i.x, %bb.a ], [ %i.bv, %bb.b ]
  %i.au = xor i32 %.0.i, %i.ac
  %i.av = mul i32 %i.au, -512718531
  %i.aw = xor i32 %i.av, %i.ao                    ; 2 uses
  %i.ax = and i32 %i.aw, %i.an
  %i.ay = lshr i32 %i.ax, 4
  %i.az = xor i32 %i.ap, %i.ay
  %i.ba = xor i32 %i.az, %i.aw
  %i.bb = mul i32 %i.ba, 153742143
  %i.bc = xor i32 %i.bb, %i.aq                    ; 2 uses
  %i.bd = and i32 %i.bc, %i.an
  %i.be = lshr i32 %i.bd, 1
  %i.bf = xor i32 %i.be, %i.bc
  %i.bg = mul i32 %i.at, %i.bf                    ; 2 uses
  %i.bh = and i32 %i.bg, %i.an
  %i.bi = lshr i32 %i.bh, 11
  %i.bj = xor i32 %i.bi, %i.bg
  %i.bk = mul i32 %i.bj, 1960620803               ; 2 uses
  %i.bl = and i32 %i.bk, %i.an
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = xor i32 %i.bm, %i.bk
  %i.bo = mul i32 %i.bn, -1638916925              ; 2 uses
  %i.bp = and i32 %i.bo, %i.an
  %i.bq = lshr i32 %i.bp, 2
  %i.br = xor i32 %i.bq, %i.bo
  %i.bs = mul i32 %i.br, -933190689
  %i.bt = and i32 %i.bs, %i.an                    ; 2 uses
  %i.bu = lshr i32 %i.bt, 5
  %i.bv = xor i32 %i.bu, %i.bt                    ; 3 uses
  %.not.i = icmp ult i32 %i.bv, %i.ab
  br i1 %.not.i, label %_ZN4pbrt18PermutationElementEjjj.exit, label %bb.b, !llvm.loop !1

_ZN4pbrt18PermutationElementEjjj.exit:            ; preds = %bb.b
  %i.bw = add nsw i32 %i.c, 2
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !180
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !183, !range !49, !noundef !50
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt18PermutationElementEjjj.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !167 ; 2 uses
  %i.cc = mul i64 %i.cb, 6364136223846793005
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !168 ; 2 uses
  %i.cf = add i64 %i.cc, %i.ce                    ; 2 uses
  %i.cg = mul i64 %i.cf, 6364136223846793005
  %i.ch = add i64 %i.cg, %i.ce
  store i64 %i.ch, ptr %i.ca, align 8, !tbaa !167
  %i.ci = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %i.cj = insertelement <2 x i64> %i.ci, i64 %i.cf, i64 1 ; 3 uses
  %i.ck = lshr <2 x i64> %i.cj, splat (i64 45)
  %i.cl = lshr <2 x i64> %i.cj, splat (i64 27)
  %i.cm = xor <2 x i64> %i.ck, %i.cl
  %i.cn = trunc <2 x i64> %i.cm to <2 x i32>      ; 2 uses
  %i.co = lshr <2 x i64> %i.cj, splat (i64 59)
  %i.cp = trunc nuw nsw <2 x i64> %i.co to <2 x i32>
  %i.cq = tail call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.cn, <2 x i32> %i.cn, <2 x i32> %i.cp)
  %i.cr = uitofp <2 x i32> %i.cq to <2 x float>
  %i.cs = fmul nnan <2 x float> %i.cr, splat (float f0x2F800000) ; 2 uses
  %i.ct = fcmp olt <2 x float> %i.cs, splat (float f0x3F7FFFFF)
  %i.cu = select <2 x i1> %i.ct, <2 x float> %i.cs, <2 x float> splat (float f0x3F7FFFFF)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt18PermutationElementEjjj.exit, %bb.c
  %i.cv = phi <2 x float> [ %i.cu, %bb.c ], [ splat (float 5.000000e-01), %_ZN4pbrt18PermutationElementEjjj.exit ]
  %i.cw = add i32 %i.bv, %i.ac
  %i.cx = urem i32 %i.cw, %i.ab                   ; 2 uses
  %i.cy = sdiv i32 %i.cx, %i.z
  %i.cz = srem i32 %i.cx, %i.z
  %i.da = sitofp <2 x i32> %i.y to <2 x float>
  %i.db = insertelement <2 x i32> poison, i32 %i.cz, i64 0
  %i.dc = insertelement <2 x i32> %i.db, i32 %i.cy, i64 1
  %i.dd = sitofp <2 x i32> %i.dc to <2 x float>
  %i.de = fadd <2 x float> %i.cv, %i.dd
  %i.df = fdiv <2 x float> %i.de, %i.da
  ret <2 x float> %i.df
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZN4pbrt18PaddedSobolSampler5Get2DEv(ptr noundef nonnull align 4 dereferenceable(28) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !184  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !185
  %.sroa.4.8.insert.ext.i = zext i32 %i.c to i64
  %.sroa.4.12.insert.ext.i = zext i32 %i.e to i64
  %.sroa.4.12.insert.shift.i = shl nuw i64 %.sroa.4.12.insert.ext.i, 32
  %.sroa.4.12.insert.insert.i = or disjoint i64 %.sroa.4.12.insert.shift.i, %.sroa.4.8.insert.ext.i
  %i.f = mul i64 %.sroa.0.0.copyload, -4132994306676758123 ; 2 uses
  %i.g = lshr i64 %i.f, 47
  %i.h = xor i64 %i.g, %i.f
  %i.i = mul i64 %i.h, -4132994306676758123
  %i.j = xor i64 %i.i, 7659067388010076496
  %i.k = mul i64 %i.j, -4132994306676758123
  %i.l = mul i64 %.sroa.4.12.insert.insert.i, -4132994306676758123 ; 2 uses
  %i.m = lshr i64 %i.l, 47
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -4132994306676758123
  %i.p = xor i64 %i.o, %i.k
  %i.q = mul i64 %i.p, -4132994306676758123       ; 2 uses
  %i.r = lshr i64 %i.q, 47
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, -4132994306676758123       ; 3 uses
  %i.u = lshr i64 %i.t, 47
  %i.v = xor i64 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !186
  %i.y = load i32, ptr %0, align 4, !tbaa !76     ; 3 uses
  %i.z = trunc i64 %i.v to i32                    ; 7 uses
  %i.aa = add i32 %i.y, -1                        ; 2 uses
  %i.ab = lshr i32 %i.aa, 1
end_hunk_0
