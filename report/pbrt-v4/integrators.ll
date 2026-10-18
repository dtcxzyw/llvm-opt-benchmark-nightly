Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS5_Pvi:bb.a
  %i.ba = mul i64 %.117.i.i.i, %i.an
  br label %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_18IndependentSamplerEEEDaS3_.exit

_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_18IndependentSamplerEEEDaS3_.exit: ; preds = %bb.c, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i
  %.016.lcssa.i.i.i = phi i64 [ %i.an, %bb.c ], [ %i.ba, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i ]
  %.015.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.1.i.i.i, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = add i64 %.015.lcssa.i.i.i, %.016.lcssa.i.i.i
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !454
  br label %bb.z

bb.f:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.d, ptr %i.be, align 8, !tbaa !640
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.g, ptr %i.bf, align 4, !tbaa !641
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !642
  %i.bi = mul i64 %.sroa.0.0.copyload.i.i, -4132994306676758123 ; 2 uses
  %i.bj = lshr i64 %i.bi, 47
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = mul i64 %i.bk, -4132994306676758123
  %i.bm = xor i64 %i.bl, 5744300541007557372
  %i.bn = mul i64 %i.bm, -4132994306676758123
  %i.bo = zext i32 %i.bh to i64
  %i.bp = xor i64 %i.bn, %i.bo
  %i.bq = mul i64 %i.bp, -4132994306676758123     ; 2 uses
  %i.br = lshr i64 %i.bq, 47
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = mul i64 %i.bs, -4132994306676758123     ; 3 uses
  %i.bu = lshr i64 %i.bt, 47
  %i.bv = xor i64 %i.bu, %i.bt                    ; 2 uses
  %i.bw = lshr i64 %i.bt, 31
  %i.bx = xor i64 %i.bv, %i.bw
  %i.by = mul i64 %i.bx, 9202493588570546565      ; 2 uses
  %i.bz = lshr i64 %i.by, 27
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = mul i64 %i.ca, -9089707755183418291     ; 2 uses
  %i.cc = lshr i64 %i.cb, 33
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = shl i64 %i.bv, 1
  %i.cf = or disjoint i64 %i.ce, 1                ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !453
  %i.ch = add i64 %i.cd, %i.cf
  %i.ci = mul i64 %i.ch, 6364136223846793005
  %i.cj = add i64 %i.ci, %i.cf                    ; 2 uses
  %i.ck = sext i32 %i.d to i64
  %i.cl = shl nsw i64 %i.ck, 16
  %i.cm = sext i32 %i.g to i64
  %i.cn = add nsw i64 %i.cl, %i.cm                ; 2 uses
  %.not21.i.i.i21 = icmp eq i64 %i.cn, 0
  br i1 %.not21.i.i.i21, label %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_17StratifiedSamplerEEEDaS3_.exit, label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %bb.f, %bb.h
  %.026.i.i.i23 = phi i64 [ %i.cv, %bb.h ], [ %i.cn, %bb.f ] ; 2 uses
  %.01525.i.i.i24 = phi i64 [ %.1.i.i.i30, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.01624.i.i.i25 = phi i64 [ %.117.i.i.i29, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.01823.i.i.i26 = phi i64 [ %i.ct, %bb.h ], [ %i.cf, %bb.f ] ; 2 uses
  %.01922.i.i.i27 = phi i64 [ %i.cu, %bb.h ], [ 6364136223846793005, %bb.f ] ; 5 uses
  %i.co = and i64 %.026.i.i.i23, 1
  %.not20.i.i.i28 = icmp eq i64 %i.co, 0
  br i1 %.not20.i.i.i28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i22
  %i.cp = mul i64 %.01922.i.i.i27, %.01624.i.i.i25
  %i.cq = mul i64 %.01922.i.i.i27, %.01525.i.i.i24
  %i.cr = add i64 %i.cq, %.01823.i.i.i26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i22
  %.117.i.i.i29 = phi i64 [ %i.cp, %bb.g ], [ %.01624.i.i.i25, %.lr.ph.i.i.i22 ] ; 2 uses
  %.1.i.i.i30 = phi i64 [ %i.cr, %bb.g ], [ %.01525.i.i.i24, %.lr.ph.i.i.i22 ] ; 2 uses
  %i.cs = add i64 %.01922.i.i.i27, 1
  %i.ct = mul i64 %i.cs, %.01823.i.i.i26
  %i.cu = mul i64 %.01922.i.i.i27, %.01922.i.i.i27
  %i.cv = lshr i64 %.026.i.i.i23, 1               ; 2 uses
  %.not.i.i.i31 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i31, label %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i32, label %.lr.ph.i.i.i22, !llvm.loop !1745

_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i32:       ; preds = %bb.h
  %i.cw = mul i64 %.117.i.i.i29, %i.cj
  br label %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_17StratifiedSamplerEEEDaS3_.exit

_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_17StratifiedSamplerEEEDaS3_.exit: ; preds = %bb.f, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i32
  %.016.lcssa.i.i.i33 = phi i64 [ %i.cj, %bb.f ], [ %i.cw, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i32 ]
  %.015.lcssa.i.i.i34 = phi i64 [ 0, %bb.f ], [ %.1.i.i.i30, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i32 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cy = add i64 %.015.lcssa.i.i.i34, %.016.lcssa.i.i.i33
  store i64 %i.cy, ptr %i.cx, align 8, !tbaa !454
  br label %bb.z

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt13HaltonSampler16StartPixelSampleENS_6Point2IiEEii(ptr noundef nonnull align 8 dereferenceable(52) %1, i64 %.sroa.0.0.copyload.i.i, i32 noundef %i.d, i32 noundef %i.g)
  br label %bb.z

bb.j:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.d, ptr %i.da, align 4, !tbaa !643
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.g, ptr %i.db, align 4, !tbaa !644
  br label %bb.z

bb.k:                                             ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.dc, align 8
  %.sroa.speculated.i.i38 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 2)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %.sroa.speculated.i.i38, ptr %i.dd, align 8, !tbaa !645
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !646
  %i.dg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.df, i1 true) ; 4 uses
  %i.dh = xor i32 %i.dg, 31                       ; 2 uses
  %i.di = sext i32 %i.d to i64                    ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %i.dj = icmp eq i32 %i.dg, 31
  br i1 %i.dj, label %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_12SobolSamplerEEEDaS3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dk = shl nuw nsw i32 %i.dh, 1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = shl i64 %i.di, %i.dl                    ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not34.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i39

.lr.ph.i.i.i39:                                   ; preds = %bb.l
  %i.dn = sub nuw nsw i32 30, %i.dg
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [416 x i8], ptr @_ZN4pbrt16VdCSobolMatricesE, i64 %i.do
  br label %bb.m

._crit_edge.i.i.i:                                ; preds = %bb.o, %bb.l
  %.025.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.1.i.i.i40, %bb.o ] ; 2 uses
  %i.dq = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.dr = zext nneg i32 %i.dh to i64
  %i.ds = shl nuw nsw i64 %i.dq, %i.dr
  %i.dt = or i64 %i.ds, %.sroa.2.0.extract.shift.i.i.i ; 2 uses
  %.not3138.i.i.i = icmp eq i64 %.025.lcssa.i.i.i, %i.dt
  br i1 %.not3138.i.i.i, label %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_12SobolSamplerEEEDaS3_.exit, label %.lr.ph43.i.i.i

.lr.ph43.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.du = xor i64 %.025.lcssa.i.i.i, %i.dt
  %i.dv = sub nuw nsw i32 30, %i.dg
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [416 x i8], ptr @_ZN4pbrt19VdCSobolMatricesInvE, i64 %i.dw
  br label %bb.p

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.i39
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i39 ], [ %indvars.iv.next.i.i.i, %bb.o ] ; 2 uses
  %.02536.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i39 ], [ %.1.i.i.i40, %bb.o ] ; 2 uses
  %.02835.i.i.i = phi i64 [ %i.di, %.lr.ph.i.i.i39 ], [ %i.ec, %bb.o ] ; 2 uses
  %i.dy = and i64 %.02835.i.i.i, 1
  %.not33.i.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not33.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i.i
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !145
  %i.eb = xor i64 %i.ea, %.02536.i.i.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i.i.i40 = phi i64 [ %i.eb, %bb.n ], [ %.02536.i.i.i, %bb.m ] ; 2 uses
  %i.ec = lshr i64 %.02835.i.i.i, 1               ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %.not.i.i.i41 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i41, label %._crit_edge.i.i.i, label %bb.m, !llvm.loop !1746

bb.p:                                             ; preds = %bb.r, %.lr.ph43.i.i.i
  %indvars.iv46.i.i.i = phi i64 [ 0, %.lr.ph43.i.i.i ], [ %indvars.iv.next47.i.i.i, %bb.r ] ; 2 uses
  %.02340.i.i.i = phi i64 [ %i.du, %.lr.ph43.i.i.i ], [ %i.eh, %bb.r ] ; 2 uses
  %.02639.i.i.i = phi i64 [ %i.dm, %.lr.ph43.i.i.i ], [ %.127.i.i.i, %bb.r ] ; 2 uses
  %i.ed = and i64 %.02340.i.i.i, 1
  %.not32.i.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not32.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv46.i.i.i
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !145
  %i.eg = xor i64 %i.ef, %.02639.i.i.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.127.i.i.i = phi i64 [ %i.eg, %bb.q ], [ %.02639.i.i.i, %bb.p ] ; 2 uses
  %i.eh = lshr i64 %.02340.i.i.i, 1               ; 2 uses
  %indvars.iv.next47.i.i.i = add nuw nsw i64 %indvars.iv46.i.i.i, 1
  %.not31.i.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not31.i.i.i, label %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_12SobolSamplerEEEDaS3_.exit, label %bb.p, !llvm.loop !1747

_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_12SobolSamplerEEEDaS3_.exit: ; preds = %bb.r, %bb.k, %._crit_edge.i.i.i
  %.029.i.i.i = phi i64 [ %i.di, %bb.k ], [ %i.dm, %._crit_edge.i.i.i ], [ %.127.i.i.i, %bb.r ]
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.029.i.i.i, ptr %i.ei, align 8, !tbaa !647
  br label %bb.z

bb.s:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.g, ptr %3, align 8, !tbaa !648
  %4 = shl nuw nsw i64 %.sroa.2.0.extract.shift.i.i, 16
  %5 = or i64 %4, %.sroa.2.0.extract.shift.i.i
  %6 = and i64 %.sroa.0.0.copyload.i.i, 4294967295 ; 2 uses
  %7 = shl nuw nsw i64 %6, 16
  %8 = or i64 %7, %6
  %9 = insertelement <2 x i64> poison, i64 %5, i64 0
  %10 = insertelement <2 x i64> %9, i64 %8, i64 1
  %i.ej = and <2 x i64> %10, splat (i64 281470681808895) ; 2 uses
  %i.ek = shl nuw nsw <2 x i64> %i.ej, splat (i64 8)
  %i.el = or <2 x i64> %i.ek, %i.ej
  %i.em = and <2 x i64> %i.el, splat (i64 71777214294589695) ; 2 uses
  %i.en = shl nuw nsw <2 x i64> %i.em, splat (i64 4)
  %i.eo = or <2 x i64> %i.en, %i.em
  %i.ep = and <2 x i64> %i.eo, splat (i64 1085102592571150095) ; 2 uses
  %i.eq = shl nuw nsw <2 x i64> %i.ep, splat (i64 2)
  %i.er = or <2 x i64> %i.eq, %i.ep
  %i.es = and <2 x i64> %i.er, splat (i64 3689348814741910323) ; 2 uses
  %i.et = shl nuw nsw <2 x i64> %i.es, <i64 1, i64 0>
  %i.eu = shl nuw <2 x i64> %i.es, <i64 2, i64 1>
  %i.ev = or <2 x i64> %i.eu, %i.et
  %i.ew = and <2 x i64> %i.ev, <i64 -6148914691236517206, i64 6148914691236517205>
  %i.ex = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.ew)
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !125
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl i64 %i.ex, %i.fa
  %i.fc = sext i32 %i.d to i64
  %i.fd = or i64 %i.fb, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !649
  br label %bb.z

bb.t:                                             ; preds = %bb.a
  %i.ff = mul i64 %.sroa.0.0.copyload.i.i, -4132994306676758123 ; 2 uses
  %i.fg = lshr i64 %i.ff, 47
  %i.fh = xor i64 %i.fg, %i.ff
  %i.fi = mul i64 %i.fh, -4132994306676758123
  %i.fj = xor i64 %i.fi, 3829533694005038248
  %i.fk = mul i64 %i.fj, -4132994306676758123     ; 2 uses
  %i.fl = lshr i64 %i.fk, 47
  %i.fm = xor i64 %i.fl, %i.fk
  %i.fn = mul i64 %i.fm, -4132994306676758123     ; 3 uses
  %i.fo = lshr i64 %i.fn, 47
  %i.fp = xor i64 %i.fo, %i.fn                    ; 2 uses
  %i.fq = lshr i64 %i.fn, 31
  %i.fr = xor i64 %i.fp, %i.fq
  %i.fs = mul i64 %i.fr, 9202493588570546565      ; 2 uses
  %i.ft = lshr i64 %i.fs, 27
  %i.fu = xor i64 %i.ft, %i.fs
  %i.fv = mul i64 %i.fu, -9089707755183418291     ; 2 uses
  %i.fw = lshr i64 %i.fv, 33
  %i.fx = xor i64 %i.fw, %i.fv
  %i.fy = shl i64 %i.fp, 1
  %i.fz = or disjoint i64 %i.fy, 1                ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !453
  %i.gb = add i64 %i.fx, %i.fz
  %i.gc = mul i64 %i.gb, 6364136223846793005
  %i.gd = add i64 %i.gc, %i.fz                    ; 2 uses
  %i.ge = shl nsw i32 %i.d, 16
  %i.gf = shl nsw i32 %i.g, 13
  %i.gg = add nsw i32 %i.gf, %i.ge                ; 2 uses
  %.not21.i.i.i44 = icmp eq i32 %i.gg, 0
  br i1 %.not21.i.i.i44, label %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_10MLTSamplerEEEDaS3_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.t
  %i.gh = sext i32 %i.gg to i64
  br label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %bb.v, %.lr.ph.i.preheader.i.i
  %.026.i.i.i46 = phi i64 [ %i.gp, %bb.v ], [ %i.gh, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.01525.i.i.i47 = phi i64 [ %.1.i.i.i53, %bb.v ], [ 0, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.01624.i.i.i48 = phi i64 [ %.117.i.i.i52, %bb.v ], [ 1, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.01823.i.i.i49 = phi i64 [ %i.gn, %bb.v ], [ %i.fz, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.01922.i.i.i50 = phi i64 [ %i.go, %bb.v ], [ 6364136223846793005, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %i.gi = and i64 %.026.i.i.i46, 1
  %.not20.i.i.i51 = icmp eq i64 %i.gi, 0
  br i1 %.not20.i.i.i51, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i45
  %i.gj = mul i64 %.01922.i.i.i50, %.01624.i.i.i48
  %i.gk = mul i64 %.01922.i.i.i50, %.01525.i.i.i47
  %i.gl = add i64 %i.gk, %.01823.i.i.i49
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i45
  %.117.i.i.i52 = phi i64 [ %i.gj, %bb.u ], [ %.01624.i.i.i48, %.lr.ph.i.i.i45 ] ; 2 uses
  %.1.i.i.i53 = phi i64 [ %i.gl, %bb.u ], [ %.01525.i.i.i47, %.lr.ph.i.i.i45 ] ; 2 uses
  %i.gm = add i64 %.01922.i.i.i50, 1
  %i.gn = mul i64 %i.gm, %.01823.i.i.i49
  %i.go = mul i64 %.01922.i.i.i50, %.01922.i.i.i50
  %i.gp = lshr i64 %.026.i.i.i46, 1               ; 2 uses
  %.not.i.i.i54 = icmp eq i64 %i.gp, 0
  br i1 %.not.i.i.i54, label %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i55, label %.lr.ph.i.i.i45, !llvm.loop !1745

_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i55:       ; preds = %bb.v
  %i.gq = mul i64 %.117.i.i.i52, %i.gd
  br label %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_10MLTSamplerEEEDaS3_.exit

_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_10MLTSamplerEEEDaS3_.exit: ; preds = %bb.t, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i55
  %.016.lcssa.i.i.i56 = phi i64 [ %i.gd, %bb.t ], [ %i.gq, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i55 ]
  %.015.lcssa.i.i.i57 = phi i64 [ 0, %bb.t ], [ %.1.i.i.i53, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i55 ]
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gs = add i64 %.015.lcssa.i.i.i57, %.016.lcssa.i.i.i56
  store i64 %i.gs, ptr %i.gr, align 8, !tbaa !454
  br label %bb.z

bb.w:                                             ; preds = %bb.a
  %i.gt = mul i64 %.sroa.0.0.copyload.i.i, -4132994306676758123 ; 2 uses
  %i.gu = lshr i64 %i.gt, 47
  %i.gv = xor i64 %i.gu, %i.gt
  %i.gw = mul i64 %i.gv, -4132994306676758123
  %i.gx = xor i64 %i.gw, 3829533694005038248
  %i.gy = mul i64 %i.gx, -4132994306676758123     ; 2 uses
  %i.gz = lshr i64 %i.gy, 47
  %i.ha = xor i64 %i.gz, %i.gy
  %i.hb = mul i64 %i.ha, -4132994306676758123     ; 3 uses
  %i.hc = lshr i64 %i.hb, 47
  %i.hd = xor i64 %i.hc, %i.hb                    ; 2 uses
  %i.he = lshr i64 %i.hb, 31
  %i.hf = xor i64 %i.hd, %i.he
  %i.hg = mul i64 %i.hf, 9202493588570546565      ; 2 uses
  %i.hh = lshr i64 %i.hg, 27
  %i.hi = xor i64 %i.hh, %i.hg
  %i.hj = mul i64 %i.hi, -9089707755183418291     ; 2 uses
  %i.hk = lshr i64 %i.hj, 33
  %i.hl = xor i64 %i.hk, %i.hj
  %i.hm = shl i64 %i.hd, 1
  %i.hn = or disjoint i64 %i.hm, 1                ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !453
  %i.hp = add i64 %i.hl, %i.hn
  %i.hq = mul i64 %i.hp, 6364136223846793005
  %i.hr = add i64 %i.hq, %i.hn                    ; 2 uses
  %i.hs = shl nsw i32 %i.d, 16
  %i.ht = shl nsw i32 %i.g, 13
  %i.hu = add nsw i32 %i.ht, %i.hs                ; 2 uses
  %.not21.i.i.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not21.i.i.i.i, label %_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_15DebugMLTSamplerEEET0_OS5_Pvi.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.w
  %i.hv = sext i32 %i.hu to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %.lr.ph.i.preheader.i.i.i
  %.026.i.i.i.i = phi i64 [ %i.id, %bb.y ], [ %i.hv, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.01525.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.y ], [ 0, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.01624.i.i.i.i = phi i64 [ %.117.i.i.i.i, %bb.y ], [ 1, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.01823.i.i.i.i = phi i64 [ %i.ib, %bb.y ], [ %i.hn, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.01922.i.i.i.i = phi i64 [ %i.ic, %bb.y ], [ 6364136223846793005, %.lr.ph.i.preheader.i.i.i ] ; 5 uses
  %i.hw = and i64 %.026.i.i.i.i, 1
  %.not20.i.i.i.i = icmp eq i64 %i.hw, 0
  br i1 %.not20.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.hx = mul i64 %.01922.i.i.i.i, %.01624.i.i.i.i
  %i.hy = mul i64 %.01922.i.i.i.i, %.01525.i.i.i.i
  %i.hz = add i64 %i.hy, %.01823.i.i.i.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.117.i.i.i.i = phi i64 [ %i.hx, %bb.x ], [ %.01624.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i = phi i64 [ %i.hz, %bb.x ], [ %.01525.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ia = add i64 %.01922.i.i.i.i, 1
  %i.ib = mul i64 %i.ia, %.01823.i.i.i.i
  %i.ic = mul i64 %.01922.i.i.i.i, %.01922.i.i.i.i
  %i.id = lshr i64 %.026.i.i.i.i, 1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.id, 0
  br i1 %.not.i.i.i.i, label %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1745

_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i.i:       ; preds = %bb.y
  %i.ie = mul i64 %.117.i.i.i.i, %i.hr
  br label %_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_15DebugMLTSamplerEEET0_OS5_Pvi.exit

_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_15DebugMLTSamplerEEET0_OS5_Pvi.exit: ; preds = %bb.w, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i.i
  %.016.lcssa.i.i.i.i = phi i64 [ %i.hr, %bb.w ], [ %i.ie, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i.i ]
  %.015.lcssa.i.i.i.i = phi i64 [ 0, %bb.w ], [ %.1.i.i.i.i, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i.i.i ]
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ig = add i64 %.015.lcssa.i.i.i.i, %.016.lcssa.i.i.i.i
  store i64 %i.ig, ptr %i.if, align 8, !tbaa !454
  br label %bb.z

bb.z:                                             ; preds = %_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_15DebugMLTSamplerEEET0_OS5_Pvi.exit, %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_10MLTSamplerEEEDaS3_.exit, %bb.s, %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_12SobolSamplerEEEDaS3_.exit, %bb.j, %bb.i, %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_17StratifiedSamplerEEEDaS3_.exit, %_ZZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEiiENKUlT_E_clIPNS_18IndependentSamplerEEEDaS3_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt13HaltonSampler16StartPixelSampleENS_6Point2IiEEii(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49   ; 3 uses
  %i.e = mul nsw i32 %i.d, %i.b                   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %i.g = and i64 %1, 127                          ; 4 uses
  %i.h = and i64 %.sroa.2.0.extract.shift, 127    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %.fr54 = freeze i32 %i.k                        ; 7 uses
  %i.l = icmp sgt i32 %.fr54, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8
end_hunk_0
