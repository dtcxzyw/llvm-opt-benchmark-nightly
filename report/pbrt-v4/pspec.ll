Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/pspec?download=true
inline.NumInlined: 1853
inline.NumDeleted: 656
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS5_Pvi:bb.a
  %i.em = and i64 %.sroa.0.0.copyload.i.i, 4294967295 ; 2 uses
  %i.en = shl nuw nsw i64 %i.em, 16
  %i.eo = or i64 %i.en, %i.em
  %i.ep = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %i.eq = insertelement <2 x i64> %i.ep, i64 %i.eo, i64 1
  %i.er = and <2 x i64> %i.eq, splat (i64 281470681808895) ; 2 uses
  %i.es = shl nuw nsw <2 x i64> %i.er, splat (i64 8)
  %i.et = or <2 x i64> %i.es, %i.er
  %i.eu = and <2 x i64> %i.et, splat (i64 71777214294589695) ; 2 uses
  %i.ev = shl nuw nsw <2 x i64> %i.eu, splat (i64 4)
  %i.ew = or <2 x i64> %i.ev, %i.eu
  %i.ex = and <2 x i64> %i.ew, splat (i64 1085102592571150095) ; 2 uses
  %i.ey = shl nuw nsw <2 x i64> %i.ex, splat (i64 2)
  %i.ez = or <2 x i64> %i.ey, %i.ex
  %i.fa = and <2 x i64> %i.ez, splat (i64 3689348814741910323) ; 3 uses
  %i.fb = extractelement <2 x i64> %i.fa, i64 0
  %i.fc = shl nuw nsw i64 %i.fb, 1
  %i.fd = shl nuw <2 x i64> %i.fa, <i64 2, i64 1>
  %i.fe = insertelement <2 x i64> %i.fa, i64 %i.fc, i64 0
  %i.ff = or <2 x i64> %i.fd, %i.fe
  %i.fg = and <2 x i64> %i.ff, <i64 -6148914691236517206, i64 6148914691236517205>
  %i.fh = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.fg)
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !63
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = shl i64 %i.fh, %i.fk
  %i.fm = sext i32 %i.d to i64
  %i.fn = or i64 %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !64
  br label %bb.z

bb.t:                                             ; preds = %bb.a
  %i.fp = mul i64 %.sroa.0.0.copyload.i.i, -4132994306676758123 ; 2 uses
  %i.fq = lshr i64 %i.fp, 47
  %i.fr = xor i64 %i.fq, %i.fp
  %i.fs = mul i64 %i.fr, -4132994306676758123
  %i.ft = xor i64 %i.fs, 3829533694005038248
  %i.fu = mul i64 %i.ft, -4132994306676758123     ; 2 uses
  %i.fv = lshr i64 %i.fu, 47
  %i.fw = xor i64 %i.fv, %i.fu
  %i.fx = mul i64 %i.fw, -4132994306676758123     ; 3 uses
  %i.fy = lshr i64 %i.fx, 47
  %i.fz = xor i64 %i.fy, %i.fx                    ; 2 uses
  %i.ga = lshr i64 %i.fx, 31
  %i.gb = xor i64 %i.fz, %i.ga
  %i.gc = mul i64 %i.gb, 9202493588570546565      ; 2 uses
  %i.gd = lshr i64 %i.gc, 27
  %i.ge = xor i64 %i.gd, %i.gc
  %i.gf = mul i64 %i.ge, -9089707755183418291     ; 2 uses
  %i.gg = lshr i64 %i.gf, 33
  %i.gh = xor i64 %i.gg, %i.gf
  %i.gi = shl i64 %i.fz, 1
  %i.gj = or disjoint i64 %i.gi, 1                ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !69
  %i.gl = add i64 %i.gh, %i.gj
  %i.gm = mul i64 %i.gl, 6364136223846793005
  %i.gn = add i64 %i.gm, %i.gj                    ; 2 uses
  %i.go = shl nsw i32 %i.d, 16
  %i.gp = shl nsw i32 %i.g, 13
  %i.gq = add nsw i32 %i.gp, %i.go                ; 2 uses
  %.not21.i.i.i44 = icmp eq i32 %i.gq, 0
  br i1 %.not21.i.i.i44, label %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_10MLTSamplerEEEDaS3_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.t
  %i.gr = sext i32 %i.gq to i64
  br label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %bb.v, %.lr.ph.i.preheader.i.i
  %.026.i.i.i46 = phi i64 [ %i.gz, %bb.v ], [ %i.gr, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.01525.i.i.i47 = phi i64 [ %.1.i.i.i53, %bb.v ], [ 0, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.01624.i.i.i48 = phi i64 [ %.117.i.i.i52, %bb.v ], [ 1, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.01823.i.i.i49 = phi i64 [ %i.gx, %bb.v ], [ %i.gj, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.01922.i.i.i50 = phi i64 [ %i.gy, %bb.v ], [ 6364136223846793005, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %i.gs = and i64 %.026.i.i.i46, 1
  %.not20.i.i.i51 = icmp eq i64 %i.gs, 0
  br i1 %.not20.i.i.i51, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i45
  %i.gt = mul i64 %.01922.i.i.i50, %.01624.i.i.i48
  %i.gu = mul i64 %.01922.i.i.i50, %.01525.i.i.i47
  %i.gv = add i64 %i.gu, %.01823.i.i.i49
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i45
  %.117.i.i.i52 = phi i64 [ %i.gt, %bb.u ], [ %.01624.i.i.i48, %.lr.ph.i.i.i45 ] ; 2 uses
  %.1.i.i.i53 = phi i64 [ %i.gv, %bb.u ], [ %.01525.i.i.i47, %.lr.ph.i.i.i45 ] ; 2 uses
  %i.gw = add i64 %.01922.i.i.i50, 1
  %i.gx = mul i64 %i.gw, %.01823.i.i.i49
  %i.gy = mul i64 %.01922.i.i.i50, %.01922.i.i.i50
  %i.gz = lshr i64 %.026.i.i.i46, 1               ; 2 uses
  %.not.i.i.i54 = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i.i54, label %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i55, label %.lr.ph.i.i.i45, !llvm.loop !517

_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i55:       ; preds = %bb.v
  %i.ha = mul i64 %.117.i.i.i52, %i.gn
  br label %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_10MLTSamplerEEEDaS3_.exit

_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_10MLTSamplerEEEDaS3_.exit: ; preds = %bb.t, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i55
  %.016.lcssa.i.i.i56 = phi i64 [ %i.gn, %bb.t ], [ %i.ha, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i55 ]
  %.015.lcssa.i.i.i57 = phi i64 [ 0, %bb.t ], [ %.1.i.i.i53, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i55 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hc = add i64 %.015.lcssa.i.i.i57, %.016.lcssa.i.i.i56
  store i64 %i.hc, ptr %i.hb, align 8, !tbaa !68
  br label %bb.z

bb.w:                                             ; preds = %bb.a
  %i.hd = mul i64 %.sroa.0.0.copyload.i.i, -4132994306676758123 ; 2 uses
  %i.he = lshr i64 %i.hd, 47
  %i.hf = xor i64 %i.he, %i.hd
  %i.hg = mul i64 %i.hf, -4132994306676758123
  %i.hh = xor i64 %i.hg, 3829533694005038248
  %i.hi = mul i64 %i.hh, -4132994306676758123     ; 2 uses
  %i.hj = lshr i64 %i.hi, 47
  %i.hk = xor i64 %i.hj, %i.hi
  %i.hl = mul i64 %i.hk, -4132994306676758123     ; 3 uses
  %i.hm = lshr i64 %i.hl, 47
  %i.hn = xor i64 %i.hm, %i.hl                    ; 2 uses
  %i.ho = lshr i64 %i.hl, 31
  %i.hp = xor i64 %i.hn, %i.ho
  %i.hq = mul i64 %i.hp, 9202493588570546565      ; 2 uses
  %i.hr = lshr i64 %i.hq, 27
  %i.hs = xor i64 %i.hr, %i.hq
  %i.ht = mul i64 %i.hs, -9089707755183418291     ; 2 uses
  %i.hu = lshr i64 %i.ht, 33
  %i.hv = xor i64 %i.hu, %i.ht
  %i.hw = shl i64 %i.hn, 1
  %i.hx = or disjoint i64 %i.hw, 1                ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !69
  %i.hz = add i64 %i.hv, %i.hx
  %i.ia = mul i64 %i.hz, 6364136223846793005
  %i.ib = add i64 %i.ia, %i.hx                    ; 2 uses
  %i.ic = shl nsw i32 %i.d, 16
  %i.id = shl nsw i32 %i.g, 13
  %i.ie = add nsw i32 %i.id, %i.ic                ; 2 uses
  %.not21.i.i.i.i = icmp eq i32 %i.ie, 0
  br i1 %.not21.i.i.i.i, label %_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_15DebugMLTSamplerEEET0_OS5_Pvi.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.w
  %i.if = sext i32 %i.ie to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %.lr.ph.i.preheader.i.i.i
  %.026.i.i.i.i = phi i64 [ %i.in, %bb.y ], [ %i.if, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.01525.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.y ], [ 0, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.01624.i.i.i.i = phi i64 [ %.117.i.i.i.i, %bb.y ], [ 1, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.01823.i.i.i.i = phi i64 [ %i.il, %bb.y ], [ %i.hx, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.01922.i.i.i.i = phi i64 [ %i.im, %bb.y ], [ 6364136223846793005, %.lr.ph.i.preheader.i.i.i ] ; 5 uses
  %i.ig = and i64 %.026.i.i.i.i, 1
  %.not20.i.i.i.i = icmp eq i64 %i.ig, 0
  br i1 %.not20.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ih = mul i64 %.01922.i.i.i.i, %.01624.i.i.i.i
  %i.ii = mul i64 %.01922.i.i.i.i, %.01525.i.i.i.i
  %i.ij = add i64 %i.ii, %.01823.i.i.i.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.117.i.i.i.i = phi i64 [ %i.ih, %bb.x ], [ %.01624.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i = phi i64 [ %i.ij, %bb.x ], [ %.01525.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ik = add i64 %.01922.i.i.i.i, 1
  %i.il = mul i64 %i.ik, %.01823.i.i.i.i
  %i.im = mul i64 %.01922.i.i.i.i, %.01922.i.i.i.i
  %i.in = lshr i64 %.026.i.i.i.i, 1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not.i.i.i.i, label %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !517

_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i.i:       ; preds = %bb.y
  %i.io = mul i64 %.117.i.i.i.i, %i.ib
  br label %_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_15DebugMLTSamplerEEET0_OS5_Pvi.exit

_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_15DebugMLTSamplerEEET0_OS5_Pvi.exit: ; preds = %bb.w, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i.i
  %.016.lcssa.i.i.i.i = phi i64 [ %i.ib, %bb.w ], [ %i.io, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i.i ]
  %.015.lcssa.i.i.i.i = phi i64 [ 0, %bb.w ], [ %.1.i.i.i.i, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i.i ]
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iq = add i64 %.015.lcssa.i.i.i.i, %.016.lcssa.i.i.i.i
  store i64 %i.iq, ptr %i.ip, align 8, !tbaa !68
  br label %bb.z

bb.z:                                             ; preds = %_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_15DebugMLTSamplerEEET0_OS5_Pvi.exit, %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_10MLTSamplerEEEDaS3_.exit, %bb.s, %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_12SobolSamplerEEEDaS3_.exit, %bb.j, %bb.i, %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_17StratifiedSamplerEEEDaS3_.exit, %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_18IndependentSamplerEEEDaS3_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt13HaltonSampler16StartPixelSampleENS_6Point2IiEEii(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 3 uses
  %i.e = mul nsw i32 %i.d, %i.b                   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %i.g = and i64 %1, 127                          ; 4 uses
  %i.h = and i64 %.sroa.2.0.extract.shift, 127    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %.fr54 = freeze i32 %i.k                        ; 3 uses
  %i.l = icmp sgt i32 %.fr54, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8
  %.fr = freeze i32 %i.n                          ; 7 uses
  %i.o = icmp sgt i32 %.fr, 0                     ; 2 uses
  br i1 %i.l, label %.split33.us.a, label %.split33

.split33.us.a:                                    ; preds = %bb.b
  br i1 %i.o, label %.lr.ph.i.us.us.preheader, label %.lr.ph.i19.us.1

.lr.ph.i.us.us.preheader:                         ; preds = %.split33.us.a
  %xtraiter79.a = and i32 %.fr, 3                 ; 3 uses
  %i.p = icmp ult i32 %.fr, 4
  br i1 %i.p, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us.preheader.new

.lr.ph.i.us.us.preheader.new:                     ; preds = %.lr.ph.i.us.us.preheader
  %unroll_iter84.a = and i32 %.fr, 2147483644
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us, %.lr.ph.i.us.us.preheader.new
  %.015.i.us.us = phi i64 [ %i.g, %.lr.ph.i.us.us.preheader.new ], [ %i.ab, %.lr.ph.i.us.us ] ; 5 uses
  %.01213.i.us.us = phi i64 [ 0, %.lr.ph.i.us.us.preheader.new ], [ %i.ad, %.lr.ph.i.us.us ]
  %niter85.a = phi i32 [ 0, %.lr.ph.i.us.us.preheader.new ], [ %niter85.next.3, %.lr.ph.i.us.us ]
  %i.q = and i64 %.015.i.us.us, 2
  %i.r = lshr i64 %.015.i.us.us, 2
  %i.s = shl i64 %.01213.i.us.us, 3
  %i.t = shl nsw i64 %.015.i.us.us, 2
  %i.u = and i64 %i.t, 4
  %i.v = or disjoint i64 %i.s, %i.u
  %i.w = or disjoint i64 %i.v, %i.q
  %i.x = and i64 %i.r, 1
  %i.y = lshr i64 %.015.i.us.us, 3
  %i.z = or disjoint i64 %i.w, %i.x
  %i.aa = and i64 %i.y, 1
  %i.ab = lshr i64 %.015.i.us.us, 4               ; 2 uses
  %i.ac = shl i64 %i.z, 1
  %i.ad = or disjoint i64 %i.ac, %i.aa            ; 3 uses
  %niter85.next.3 = add nuw nsw i32 %niter85.a, 4 ; 2 uses
  %niter85.ncmp.3 = icmp eq i32 %niter85.next.3, %unroll_iter84.a
  br i1 %niter85.ncmp.3, label %.lr.ph.i19.us.us.preheader.1.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !525

.lr.ph.i19.us.us.preheader.1.unr-lcssa:           ; preds = %.lr.ph.i.us.us
  %lcmp.mod81.not.a = icmp eq i32 %xtraiter79.a, 0
  br i1 %lcmp.mod81.not.a, label %.lr.ph.i19.us.us.preheader.1, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %.lr.ph.i19.us.us.preheader.1.unr-lcssa, %.lr.ph.i.us.us.preheader
  %.015.i.us.us.epil.init = phi i64 [ %i.g, %.lr.ph.i.us.us.preheader ], [ %i.ab, %.lr.ph.i19.us.us.preheader.1.unr-lcssa ]
  %.01213.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.preheader ], [ %i.ad, %.lr.ph.i19.us.us.preheader.1.unr-lcssa ]
  %lcmp.mod83.a = icmp ne i32 %xtraiter79.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod83.a)
  br label %.lr.ph.i.us.us.epil

.lr.ph.i.us.us.epil:                              ; preds = %.lr.ph.i.us.us.epil, %.lr.ph.i.us.us.epil.preheader
  %.015.i.us.us.epil = phi i64 [ %i.af, %.lr.ph.i.us.us.epil ], [ %.015.i.us.us.epil.init, %.lr.ph.i.us.us.epil.preheader ] ; 2 uses
  %.01213.i.us.us.epil = phi i64 [ %i.ah, %.lr.ph.i.us.us.epil ], [ %.01213.i.us.us.epil.init, %.lr.ph.i.us.us.epil.preheader ]
  %epil.iter80 = phi i32 [ %epil.iter80.next, %.lr.ph.i.us.us.epil ], [ 0, %.lr.ph.i.us.us.epil.preheader ]
  %i.ae = and i64 %.015.i.us.us.epil, 1
  %i.af = lshr i64 %.015.i.us.us.epil, 1
  %i.ag = shl i64 %.01213.i.us.us.epil, 1
  %i.ah = or disjoint i64 %i.ag, %i.ae            ; 2 uses
  %epil.iter80.next = add i32 %epil.iter80, 1     ; 2 uses
  %epil.iter80.cmp.not = icmp eq i32 %epil.iter80.next, %xtraiter79.a
  br i1 %epil.iter80.cmp.not, label %.lr.ph.i19.us.us.preheader.1, label %.lr.ph.i.us.us.epil, !llvm.loop !526

.lr.ph.i19.us.us.preheader.1:                     ; preds = %.lr.ph.i.us.us.epil, %.lr.ph.i19.us.us.preheader.1.unr-lcssa
  %.lcssa74 = phi i64 [ %i.ad, %.lr.ph.i19.us.us.preheader.1.unr-lcssa ], [ %i.ah, %.lr.ph.i.us.us.epil ]
  %i.ai = sext i32 %i.d to i64
  %i.aj = mul i64 %.lcssa74, %i.ai
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !29
  %i.al = sext i32 %i.ak to i64
  %i.am = mul i64 %i.aj, %i.al
  br label %.lr.ph.i19.us.us.1

.lr.ph.i19.us.us.1:                               ; preds = %.lr.ph.i19.us.us.1, %.lr.ph.i19.us.us.preheader.1
  %.015.i20.us.us.1.a = phi i64 [ %i.ao, %.lr.ph.i19.us.us.1 ], [ %i.h, %.lr.ph.i19.us.us.preheader.1 ] ; 2 uses
  %.01114.i21.us.us.1 = phi i32 [ %i.ar, %.lr.ph.i19.us.us.1 ], [ 0, %.lr.ph.i19.us.us.preheader.1 ]
  %.01213.i22.us.us.1 = phi i64 [ %i.aq, %.lr.ph.i19.us.us.1 ], [ 0, %.lr.ph.i19.us.us.preheader.1 ]
  %i.an = urem i64 %.015.i20.us.us.1.a, 3
  %i.ao = udiv i64 %.015.i20.us.us.1.a, 3
  %i.ap = mul i64 %.01213.i22.us.us.1, 3
  %i.aq = add i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = add nuw nsw i32 %.01114.i21.us.us.1, 1  ; 2 uses
  %exitcond.not.i23.us.us.1 = icmp eq i32 %i.ar, %.fr54
  br i1 %exitcond.not.i23.us.us.1, label %_ZN4pbrt21InverseRadicalInverseEmii.exit.us.us.1, label %.lr.ph.i19.us.us.1, !llvm.loop !525

_ZN4pbrt21InverseRadicalInverseEmii.exit.us.us.1: ; preds = %.lr.ph.i19.us.us.1
  %i.as = sext i32 %i.b to i64
  %i.at = mul i64 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.at, %i.aw
  %i.ay = add i64 %i.ax, %i.am
  br label %.split35.us

.lr.ph.i19.us.1:                                  ; preds = %.split33.us.a, %.lr.ph.i19.us.1
  %.015.i20.us.1.a = phi i64 [ %i.ba, %.lr.ph.i19.us.1 ], [ %i.h, %.split33.us.a ] ; 2 uses
  %.01114.i21.us.1 = phi i32 [ %i.bd, %.lr.ph.i19.us.1 ], [ 0, %.split33.us.a ]
  %.01213.i22.us.1 = phi i64 [ %i.bc, %.lr.ph.i19.us.1 ], [ 0, %.split33.us.a ]
  %i.az = urem i64 %.015.i20.us.1.a, 3
  %i.ba = udiv i64 %.015.i20.us.1.a, 3
  %i.bb = mul i64 %.01213.i22.us.1, 3
  %i.bc = add i64 %i.bb, %i.az                    ; 2 uses
  %i.bd = add nuw nsw i32 %.01114.i21.us.1, 1     ; 2 uses
  %exitcond.not.i23.us.1 = icmp eq i32 %i.bd, %.fr54
  br i1 %exitcond.not.i23.us.1, label %_ZN4pbrt21InverseRadicalInverseEmii.exit.us.1, label %.lr.ph.i19.us.1, !llvm.loop !525

_ZN4pbrt21InverseRadicalInverseEmii.exit.us.1:    ; preds = %.lr.ph.i19.us.1
  %i.be = sext i32 %i.b to i64
  %i.bf = mul i64 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !29
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul i64 %i.bf, %i.bi
  br label %.split35.us

.split33:                                         ; preds = %bb.b
  br i1 %i.o, label %.lr.ph.i.us40.preheader, label %.split35.us

.lr.ph.i.us40.preheader:                          ; preds = %.split33
  %xtraiter = and i32 %.fr, 3                     ; 3 uses
  %i.bk = icmp ult i32 %.fr, 4
  br i1 %i.bk, label %.lr.ph.i.us40.epil.preheader, label %.lr.ph.i.us40.preheader.new

.lr.ph.i.us40.preheader.new:                      ; preds = %.lr.ph.i.us40.preheader
  %unroll_iter = and i32 %.fr, 2147483644
  br label %.lr.ph.i.us40

.lr.ph.i.us40:                                    ; preds = %.lr.ph.i.us40, %.lr.ph.i.us40.preheader.new
  %.015.i.us41 = phi i64 [ %i.g, %.lr.ph.i.us40.preheader.new ], [ %i.bw, %.lr.ph.i.us40 ] ; 5 uses
  %.01213.i.us43 = phi i64 [ 0, %.lr.ph.i.us40.preheader.new ], [ %i.by, %.lr.ph.i.us40 ]
  %niter = phi i32 [ 0, %.lr.ph.i.us40.preheader.new ], [ %niter.next.3, %.lr.ph.i.us40 ]
  %i.bl = and i64 %.015.i.us41, 2
  %i.bm = lshr i64 %.015.i.us41, 2
  %i.bn = shl i64 %.01213.i.us43, 3
  %i.bo = shl nsw i64 %.015.i.us41, 2
  %i.bp = and i64 %i.bo, 4
  %i.bq = or disjoint i64 %i.bn, %i.bp
  %i.br = or disjoint i64 %i.bq, %i.bl
  %i.bs = and i64 %i.bm, 1
  %i.bt = lshr i64 %.015.i.us41, 3
  %i.bu = or disjoint i64 %i.br, %i.bs
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
  %i.j = lshr i64 %i.c, 45
  %i.k = lshr i64 %i.c, 27
  %i.l = xor i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = lshr i64 %i.c, 59
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = tail call noundef i32 @llvm.fshr.i32(i32 %i.m, i32 %i.m, i32 %i.o)
  %i.q = uitofp i32 %i.p to float
  %i.r = lshr i64 %i.g, 45
  %i.s = lshr i64 %i.g, 27
  %i.t = xor i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = lshr i64 %i.g, 59
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = tail call noundef i32 @llvm.fshr.i32(i32 %i.u, i32 %i.u, i32 %i.w)
  %i.y = uitofp i32 %i.x to float
  %i.z = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.y, i64 1
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
end_hunk_0
