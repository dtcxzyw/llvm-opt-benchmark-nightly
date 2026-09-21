Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/pspec?download=true
inline.NumInlined: 1853
inline.NumDeleted: 656
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4pbrt13HaltonSampler16StartPixelSampleENS_6Point2IiEEii:bb.a
  %i.bv = and i64 %i.bt, 1
  %i.bw = lshr i64 %.015.i.us41, 4                ; 2 uses
  %i.bx = shl i64 %i.bu, 1
  %i.by = or disjoint i64 %i.bx, %i.bv            ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1.unr-lcssa, label %.lr.ph.i.us40, !llvm.loop !525

_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1.unr-lcssa: ; preds = %.lr.ph.i.us40
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1, label %.lr.ph.i.us40.epil.preheader

.lr.ph.i.us40.epil.preheader:                     ; preds = %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1.unr-lcssa, %.lr.ph.i.us40.preheader
  %.015.i.us41.epil.init = phi i64 [ %i.g, %.lr.ph.i.us40.preheader ], [ %i.bw, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1.unr-lcssa ]
  %.01213.i.us43.epil.init = phi i64 [ 0, %.lr.ph.i.us40.preheader ], [ %i.by, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1.unr-lcssa ]
  %lcmp.mod78 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.us40.epil

.lr.ph.i.us40.epil:                               ; preds = %.lr.ph.i.us40.epil, %.lr.ph.i.us40.epil.preheader
  %.015.i.us41.epil = phi i64 [ %i.ca, %.lr.ph.i.us40.epil ], [ %.015.i.us41.epil.init, %.lr.ph.i.us40.epil.preheader ] ; 2 uses
  %.01213.i.us43.epil = phi i64 [ %i.cc, %.lr.ph.i.us40.epil ], [ %.01213.i.us43.epil.init, %.lr.ph.i.us40.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.us40.epil ], [ 0, %.lr.ph.i.us40.epil.preheader ]
  %i.bz = and i64 %.015.i.us41.epil, 1
  %i.ca = lshr i64 %.015.i.us41.epil, 1
  %i.cb = shl i64 %.01213.i.us43.epil, 1
  %i.cc = or disjoint i64 %i.cb, %i.bz            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1, label %.lr.ph.i.us40.epil, !llvm.loop !527

_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1:  ; preds = %.lr.ph.i.us40.epil, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1.unr-lcssa
  %.lcssa76 = phi i64 [ %i.by, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1.unr-lcssa ], [ %i.cc, %.lr.ph.i.us40.epil ]
  %i.cd = sext i32 %i.d to i64
  %i.ce = mul i64 %.lcssa76, %i.cd
  %i.cf = load i32, ptr %i.i, align 8, !tbaa !29
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul i64 %i.ce, %i.cg
  br label %.split35.us

.split35.us:                                      ; preds = %.split33, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us.1, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us.us.1
  %.us-phi = phi i64 [ %i.ay, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us.us.1 ], [ %i.ch, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1 ], [ %i.bj, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us.1 ], [ 0, %.split33 ]
  %i.ci = zext nneg i32 %i.e to i64
  %i.cj = srem i64 %.us-phi, %i.ci
  br label %bb.c

bb.c:                                             ; preds = %.split35.us, %bb.a
  %i.ck = phi i64 [ %i.cj, %.split35.us ], [ 0, %bb.a ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = mul nsw i32 %i.e, %2
  %i.cn = sext i32 %i.cm to i64
  %i.co = add nsw i64 %i.ck, %i.cn
  store i64 %i.co, ptr %i.cl, align 8, !tbaa !155
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %3, i32 2)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.speculated, ptr %i.cp, align 8, !tbaa !156
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get2DEvEUlT_E_NS_6Point2IfEENS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #15 comdat {
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68   ; 4 uses
  %i.d = mul i64 %i.c, 6364136223846793005
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.g = add i64 %i.d, %i.f                       ; 4 uses
  %i.h = mul i64 %i.g, 6364136223846793005
  %i.i = add i64 %i.h, %i.f
  store i64 %i.i, ptr %i.b, align 8, !tbaa !68
  %i.j = lshr i64 %i.g, 45
  %i.k = lshr i64 %i.c, 45
  %i.l = lshr i64 %i.g, 27
  %i.m = lshr i64 %i.c, 27
  %i.n = xor i64 %i.j, %i.l
  %i.o = xor i64 %i.k, %i.m
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  %i.r = lshr i64 %i.g, 59
  %i.s = lshr i64 %i.c, 59
  %i.t = trunc nuw nsw i64 %i.r to i32
  %i.u = trunc nuw nsw i64 %i.s to i32
  %i.v = tail call noundef i32 @llvm.fshr.i32(i32 %i.p, i32 %i.p, i32 %i.t)
  %i.w = tail call noundef i32 @llvm.fshr.i32(i32 %i.q, i32 %i.q, i32 %i.u)
  %i.x = uitofp i32 %i.v to float
  %i.y = uitofp i32 %i.w to float
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.x, i64 1
  %i.ab = fmul nnan <2 x float> %i.aa, splat (float f0x2F800000) ; 2 uses
  %i.ac = fcmp olt <2 x float> %i.ab, splat (float f0x3F7FFFFF)
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.ab, <2 x float> splat (float f0x3F7FFFFF)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.ae = tail call <2 x float> @_ZN4pbrt17StratifiedSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !156 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 998
  %spec.select.i.i = select i1 %i.ah, i32 2, i32 %i.ag ; 3 uses
  %i.ai = add nsw i32 %spec.select.i.i, 2
  store i32 %i.ai, ptr %i.af, align 8, !tbaa !156
  %i.aj = tail call noundef float @_ZNK4pbrt13HaltonSampler15SampleDimensionEi(ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %spec.select.i.i)
  %i.ak = add nsw i32 %spec.select.i.i, 1
  %i.al = tail call noundef float @_ZNK4pbrt13HaltonSampler15SampleDimensionEi(ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %i.ak)
  %.sroa.0.0.vec.insert.i.i19 = insertelement <2 x float> poison, float %i.aj, i64 0
  %.sroa.0.4.vec.insert.i.i20 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i19, float %i.al, i64 1
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.am = tail call <2 x float> @_ZN4pbrt18PaddedSobolSampler5Get2DEv(ptr noundef nonnull align 4 dereferenceable(28) %1)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !151 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 1022
  br i1 %i.ap, label %bb.h, label %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit

bb.h:                                             ; preds = %bb.g
  store i32 2, ptr %i.an, align 8, !tbaa !151
  br label %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit

_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit: ; preds = %bb.g, %bb.h
  %i.aq = phi i32 [ 2, %bb.h ], [ %i.ao, %bb.g ]
  %i.ar = tail call noundef float @_ZNK4pbrt12SobolSampler15SampleDimensionEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.aq)
  %i.as = load i32, ptr %i.an, align 8, !tbaa !151
  %i.at = add nsw i32 %i.as, 1
  %i.au = tail call noundef float @_ZNK4pbrt12SobolSampler15SampleDimensionEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.at)
  %.sroa.0.0.vec.insert.i.i21 = insertelement <2 x float> poison, float %i.ar, i64 0
  %.sroa.0.4.vec.insert.i.i22 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i21, float %i.au, i64 1
  %i.av = load i32, ptr %i.an, align 8, !tbaa !151
  %i.aw = add nsw i32 %i.av, 2
  store i32 %i.aw, ptr %i.an, align 8, !tbaa !151
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.ax = tail call <2 x float> @_ZN4pbrt13ZSobolSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(28) %1)
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.ay = tail call <2 x float> @_ZN4pbrt10MLTSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(104) %1)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !530 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !531 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !532 ; 3 uses
  %i.bf = add nsw i32 %i.be, 1
  %i.bg = mul nsw i32 %i.be, %i.bc
  %i.bh = add nsw i32 %i.bg, %i.ba
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bj = sext i32 %i.bh to i64
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !81 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !53
  %i.bn = add nsw i32 %i.be, 2
  store i32 %i.bn, ptr %i.bd, align 4, !tbaa !532
  %i.bo = mul nsw i32 %i.bf, %i.bc
  %i.bp = add nsw i32 %i.bo, %i.ba
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !53
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.bm, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.bs, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i.i, %bb.k ], [ %i.a, %bb.b ], [ %i.ad, %bb.c ], [ %i.ae, %bb.d ], [ %.sroa.0.4.vec.insert.i.i20, %bb.e ], [ %i.am, %bb.f ], [ %.sroa.0.4.vec.insert.i.i22, %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit ], [ %i.ax, %bb.i ], [ %i.ay, %bb.j ]
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZN4pbrt14PMJ02BNSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !144  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !145  ; 6 uses
  %i.e = icmp sgt i32 %i.d, 9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load i64, ptr %i.f, align 8 ; 4 uses
  br i1 %i.e, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !533
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
  %i.z = load i32, ptr %0, align 8, !tbaa !534    ; 3 uses
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
  br i1 %.not.i, label %_ZN4pbrt18PermutationElementEjjj.exit, label %bb.c, !llvm.loop !7

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
  tail call void @_ZN4pbrt8LogFatalIJRA42_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 26, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(42) @.str.61) #36
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
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !59
  %7 = extractelement <2 x i32> %5, i64 1
  %i.cm = zext nneg i32 %7 to i64
  %i.cn = getelementptr inbounds nuw [32768 x i8], ptr @_ZN4pbrt17BlueNoiseTexturesE, i64 %i.cm
  %i.co = getelementptr inbounds nuw [256 x i8], ptr %i.cn, i64 %1
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cg
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !59
  %i.cr = load <2 x i32>, ptr %i.cf, align 8, !tbaa !29
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
  store i32 %i.dg, ptr %i.c, align 4, !tbaa !145
  %i.dh = fcmp ogt <2 x float> %.sroa.013.1, splat (float f0x3F7FFFFF)
  %i.di = select <2 x i1> %i.dh, <2 x float> splat (float f0x3F7FFFFF), <2 x float> %.sroa.013.1
  ret <2 x float> %i.di
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA42_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(42) %4) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !23, !alias.scope !537
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !26, !alias.scope !537
  store i8 0, ptr %i.a, align 8, !tbaa !27, !alias.scope !537
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA42_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(42) %4)
          to label %_ZN4pbrt12StringPrintfIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !28, !alias.scope !537 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !27, !alias.scope !537
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !28
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !27
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA42_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(42) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 42, i64 noundef 0) #32
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 115, i64 noundef 0) #32
  %.not16 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 100, i64 noundef 0) #32
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.x
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp eq i64 %i.d, -1
  br i1 %.not17, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not16, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.i = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !23, !alias.scope !548
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !26, !alias.scope !548
  store i8 0, ptr %i.j, align 8, !tbaa !27, !alias.scope !548
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !133, !noalias !548 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !548 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134, !noalias !548 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !28, !alias.scope !548 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.aa = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.i, ptr noundef %i.aa) #32, !noalias !549
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !23, !alias.scope !549
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !26, !alias.scope !549
  store i8 0, ptr %i.ae, align 8, !tbaa !27, !alias.scope !549
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ad, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %5, align 8, !tbaa !28, !alias.scope !549
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ag, i64 noundef %i.ad, ptr noundef %i.i, ptr noundef %i.aa) #32 ; 0 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !26, !alias.scope !549
  %i.aj = add i64 %i.ai, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aj, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #34
  unreachable

bb.k:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_0
