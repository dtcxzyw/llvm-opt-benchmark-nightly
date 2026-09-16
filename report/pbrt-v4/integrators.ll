Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZNK4pbrt12SobolSampler15SampleDimensionEi:bb.a
  %i.ae = mul i32 %1, 52
  %i.af = sext i32 %i.ae to i64
  br label %.lr.ph.i12

._crit_edge.loopexit.i20:                         ; preds = %bb.h
  %i.ag = xor i32 %.1.i17, %i.ab
  br label %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit

.lr.ph.i12:                                       ; preds = %bb.h, %.lr.ph.preheader.i11
  %indvars.iv.i13 = phi i64 [ %i.af, %.lr.ph.preheader.i11 ], [ %indvars.iv.next.i18, %bb.h ] ; 2 uses
  %.0914.i14 = phi i32 [ 0, %.lr.ph.preheader.i11 ], [ %.1.i17, %bb.h ] ; 2 uses
  %.01013.i15 = phi i64 [ %i.ad, %.lr.ph.preheader.i11 ], [ %i.al, %bb.h ] ; 2 uses
  %i.ah = and i64 %.01013.i15, 1
  %.not11.i16 = icmp eq i64 %i.ah, 0
  br i1 %.not11.i16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i12
  %i.ai = getelementptr inbounds [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i13
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !49
  %i.ak = xor i32 %i.aj, %.0914.i14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i12
  %.1.i17 = phi i32 [ %i.ak, %bb.g ], [ %.0914.i14, %.lr.ph.i12 ] ; 2 uses
  %i.al = ashr i64 %.01013.i15, 1                 ; 2 uses
  %indvars.iv.next.i18 = add nsw i64 %indvars.iv.i13, 1
  %.not.i19 = icmp eq i64 %i.al, 0
  br i1 %.not.i19, label %._crit_edge.loopexit.i20, label %.lr.ph.i12, !llvm.loop !25

_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit: ; preds = %bb.f, %._crit_edge.loopexit.i20
  %.09.lcssa.i21 = phi i32 [ %i.ab, %bb.f ], [ %i.ag, %._crit_edge.loopexit.i20 ]
  %i.am = uitofp i32 %.09.lcssa.i21 to float
  %i.an = fmul nnan float %i.am, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit

bb.i:                                             ; preds = %bb.e
  br i1 %.not12.i36, label %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit, label %.lr.ph.preheader.i24

.lr.ph.preheader.i24:                             ; preds = %bb.i
  %i.ao = mul i32 %1, 52
  %i.ap = sext i32 %i.ao to i64
  br label %.lr.ph.i25

._crit_edge.loopexit.i33:                         ; preds = %bb.k
  %i.aq = tail call i32 @llvm.bitreverse.i32(i32 %.1.i30)
  br label %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit

.lr.ph.i25:                                       ; preds = %bb.k, %.lr.ph.preheader.i24
  %indvars.iv.i26 = phi i64 [ %i.ap, %.lr.ph.preheader.i24 ], [ %indvars.iv.next.i31, %bb.k ] ; 2 uses
  %.0914.i27 = phi i32 [ 0, %.lr.ph.preheader.i24 ], [ %.1.i30, %bb.k ] ; 2 uses
  %.01013.i28 = phi i64 [ %i.ad, %.lr.ph.preheader.i24 ], [ %i.av, %bb.k ] ; 2 uses
  %i.ar = and i64 %.01013.i28, 1
  %.not11.i29 = icmp eq i64 %i.ar, 0
  br i1 %.not11.i29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i25
  %i.as = getelementptr inbounds [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i26
  %i.at = load i32, ptr %i.as, align 4, !tbaa !49
  %i.au = xor i32 %i.at, %.0914.i27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i25
  %.1.i30 = phi i32 [ %i.au, %bb.j ], [ %.0914.i27, %.lr.ph.i25 ] ; 2 uses
  %i.av = ashr i64 %.01013.i28, 1                 ; 2 uses
  %indvars.iv.next.i31 = add nsw i64 %indvars.iv.i26, 1
  %.not.i32 = icmp eq i64 %i.av, 0
  br i1 %.not.i32, label %._crit_edge.loopexit.i33, label %.lr.ph.i25, !llvm.loop !26

_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit: ; preds = %bb.i, %._crit_edge.loopexit.i33
  %.09.lcssa.i34 = phi i32 [ 0, %bb.i ], [ %i.aq, %._crit_edge.loopexit.i33 ] ; 2 uses
  %i.aw = mul i32 %.09.lcssa.i34, 1025551850
  %i.ax = xor i32 %i.aw, %.09.lcssa.i34
  %i.ay = add i32 %i.ax, %i.ab
  %i.az = lshr i32 %i.ab, 16
  %i.ba = or i32 %i.az, 1
  %i.bb = mul i32 %i.ay, %i.ba                    ; 2 uses
  %i.bc = mul i32 %i.bb, 89287766
  %i.bd = xor i32 %i.bc, %i.bb                    ; 2 uses
  %i.be = mul i32 %i.bd, 1403136100
  %i.bf = xor i32 %i.be, %i.bd
  %i.bg = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.bf)
  %i.bh = uitofp i32 %i.bg to float
  %i.bi = fmul nnan float %i.bh, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit

bb.l:                                             ; preds = %bb.e
  br i1 %.not12.i36, label %._crit_edge.i, label %.lr.ph.preheader.i37

.lr.ph.preheader.i37:                             ; preds = %bb.l
  %i.bj = mul i32 %1, 52
  %i.bk = sext i32 %i.bj to i64
  br label %.lr.ph.i38

._crit_edge.i:                                    ; preds = %bb.p, %bb.l
  %.09.lcssa.i46 = phi i32 [ 0, %bb.l ], [ %.1.i43, %bb.p ]
  %i.bl = shl i32 %i.ab, 31
  %spec.select.i.i = xor i32 %.09.lcssa.i46, %i.bl
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %._crit_edge.i
  %.013.i.i = phi i32 [ 1, %._crit_edge.i ], [ %i.cv, %bb.n ] ; 8 uses
  %.112.i.i = phi i32 [ %spec.select.i.i, %._crit_edge.i ], [ %.2.i.i.1, %bb.n ] ; 2 uses
  %i.bm = sub nuw nsw i32 32, %.013.i.i
  %i.bn = shl nsw i32 -1, %i.bm
  %i.bo = and i32 %i.bn, %.112.i.i
  %i.bp = xor i32 %i.bo, %i.ab
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = lshr i64 %i.bq, 31
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = mul i64 %i.bs, 9202493588570546565      ; 2 uses
  %i.bu = lshr i64 %i.bt, 27
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = mul i64 %i.bv, -9089707755183418291     ; 2 uses
  %i.bx = lshr i64 %i.bw, 33
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = trunc i64 %i.by to i32
  %i.ca = shl nuw i32 1, %.013.i.i
  %i.cb = and i32 %i.ca, %i.bz
  %.not11.i.i = icmp eq i32 %i.cb, 0
  %i.cc = lshr exact i32 -2147483648, %.013.i.i
  %i.cd = select i1 %.not11.i.i, i32 0, i32 %i.cc
  %.2.i.i = xor i32 %i.cd, %.112.i.i              ; 3 uses
  %exitcond.not.i.i = icmp eq i32 %.013.i.i, 31
  br i1 %exitcond.not.i.i, label %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = ashr exact i32 -2147483648, %.013.i.i
  %i.cf = and i32 %i.ce, %.2.i.i
  %i.cg = xor i32 %i.cf, %i.ab
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = lshr i64 %i.ch, 31
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = mul i64 %i.cj, 9202493588570546565      ; 2 uses
  %i.cl = lshr i64 %i.ck, 27
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = mul i64 %i.cm, -9089707755183418291     ; 2 uses
  %i.co = lshr i64 %i.cn, 33
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = shl nuw i32 2, %.013.i.i
  %i.cs = and i32 %i.cr, %i.cq
  %.not11.i.i.1 = icmp eq i32 %i.cs, 0
  %i.ct = lshr exact i32 1073741824, %.013.i.i
  %i.cu = select i1 %.not11.i.i.1, i32 0, i32 %i.ct
  %.2.i.i.1 = xor i32 %i.cu, %.2.i.i
  %i.cv = add nuw nsw i32 %.013.i.i, 2
  br label %bb.m

.lr.ph.i38:                                       ; preds = %bb.p, %.lr.ph.preheader.i37
  %indvars.iv.i39 = phi i64 [ %i.bk, %.lr.ph.preheader.i37 ], [ %indvars.iv.next.i44, %bb.p ] ; 2 uses
  %.0914.i40 = phi i32 [ 0, %.lr.ph.preheader.i37 ], [ %.1.i43, %bb.p ] ; 2 uses
  %.01013.i41 = phi i64 [ %i.ad, %.lr.ph.preheader.i37 ], [ %i.da, %bb.p ] ; 2 uses
  %i.cw = and i64 %.01013.i41, 1
  %.not11.i42 = icmp eq i64 %i.cw, 0
  br i1 %.not11.i42, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i38
  %i.cx = getelementptr inbounds [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i39
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !49
  %i.cz = xor i32 %i.cy, %.0914.i40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i38
  %.1.i43 = phi i32 [ %i.cz, %bb.o ], [ %.0914.i40, %.lr.ph.i38 ] ; 2 uses
  %i.da = ashr i64 %.01013.i41, 1                 ; 2 uses
  %indvars.iv.next.i44 = add nsw i64 %indvars.iv.i39, 1
  %.not.i45 = icmp eq i64 %i.da, 0
  br i1 %.not.i45, label %._crit_edge.i, label %.lr.ph.i38, !llvm.loop !27

_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit: ; preds = %bb.m
  %i.db = uitofp i32 %.2.i.i to float
  %i.dc = fmul nnan float %i.db, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit

_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit: ; preds = %._crit_edge.loopexit.i, %bb.b, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit, %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit
  %.sink59 = phi float [ %i.an, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit ], [ %i.bi, %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit ], [ %i.dc, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit ], [ 0.000000e+00, %bb.b ], [ %i.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.dd = fcmp ogt float %.sink59, f0x3F7FFFFF
  %.sroa.speculated.i22 = select i1 %i.dd, float f0x3F7FFFFF, float %.sink59
  ret float %.sroa.speculated.i22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN4pbrt13ZSobolSampler5Get1DEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %.not.i = trunc i32 %i.b to i1
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !674  ; 2 uses
  %.not20.not21.i = icmp sgt i32 %i.e, %i.c
  br i1 %.not20.not21.i, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !649  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !648
  %i.j = mul i32 %i.i, 1431655765
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = zext nneg i32 %i.e to i64                ; 6 uses
  %i.m = zext nneg i32 %i.c to i64                ; 5 uses
  %i.n = sub nsw i64 %i.l, %i.m                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check66 = icmp ult i64 %i.n, 16
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.n, 12
  %n.vec = and i64 %i.n, -16                      ; 4 uses
  %i.p = sub nsw i64 %i.l, %n.vec                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert67 = insertelement <4 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat68 = shufflevector <4 x i64> %broadcast.splatinsert67, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert69 = insertelement <4 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat70 = shufflevector <4 x i64> %broadcast.splatinsert69, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert71 = insertelement <4 x i64> poison, i64 %i.l, i64 0
  %broadcast.splat72 = shufflevector <4 x i64> %broadcast.splatinsert71, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.q = add nsw <4 x i64> %broadcast.splat72, <i64 0, i64 -1, i64 -2, i64 -3>
  %invariant.op = sub <4 x i64> splat (i64 -2), %broadcast.splat70
  %invariant.op105 = sub <4 x i64> splat (i64 -10), %broadcast.splat70
  %invariant.op107 = sub <4 x i64> splat (i64 -18), %broadcast.splat70
  %invariant.op109 = sub <4 x i64> splat (i64 -26), %broadcast.splat70
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %i.q, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.gd, %vector.body ]
  %vec.phi73 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ge, %vector.body ]
  %vec.phi74 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.gf, %vector.body ]
  %vec.phi75 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.gg, %vector.body ]
  %i.r = shl <4 x i64> %vec.ind, splat (i64 1)
  %i.s = shl <4 x i64> %vec.ind, splat (i64 1)
  %i.t = shl <4 x i64> %vec.ind, splat (i64 1)
  %i.u = shl <4 x i64> %vec.ind, splat (i64 1)
  %.reass = add <4 x i64> %i.r, %invariant.op     ; 3 uses
  %.reass106 = add <4 x i64> %i.s, %invariant.op105 ; 3 uses
  %.reass108 = add <4 x i64> %i.t, %invariant.op107 ; 3 uses
  %.reass110 = add <4 x i64> %i.u, %invariant.op109 ; 3 uses
  %i.v = lshr <4 x i64> %broadcast.splat, %.reass
  %i.w = lshr <4 x i64> %broadcast.splat, %.reass106
  %i.x = lshr <4 x i64> %broadcast.splat, %.reass108
  %i.y = lshr <4 x i64> %broadcast.splat, %.reass110
  %i.z = and <4 x i64> %i.v, splat (i64 3)        ; 4 uses
  %i.aa = and <4 x i64> %i.w, splat (i64 3)       ; 4 uses
  %i.ab = and <4 x i64> %i.x, splat (i64 3)       ; 4 uses
  %i.ac = and <4 x i64> %i.y, splat (i64 3)       ; 4 uses
  %i.ad = add nuw nsw <4 x i64> %.reass, splat (i64 2)
  %i.ae = add nuw nsw <4 x i64> %.reass106, splat (i64 2)
  %i.af = add nuw nsw <4 x i64> %.reass108, splat (i64 2)
  %i.ag = add nuw nsw <4 x i64> %.reass110, splat (i64 2)
  %i.ah = lshr <4 x i64> %broadcast.splat, %i.ad
  %i.ai = lshr <4 x i64> %broadcast.splat, %i.ae
  %i.aj = lshr <4 x i64> %broadcast.splat, %i.af
  %i.ak = lshr <4 x i64> %broadcast.splat, %i.ag
  %i.al = xor <4 x i64> %i.ah, %broadcast.splat68 ; 2 uses
  %i.am = xor <4 x i64> %i.ai, %broadcast.splat68 ; 2 uses
  %i.an = xor <4 x i64> %i.aj, %broadcast.splat68 ; 2 uses
  %i.ao = xor <4 x i64> %i.ak, %broadcast.splat68 ; 2 uses
  %i.ap = lshr <4 x i64> %i.al, splat (i64 31)
  %i.aq = lshr <4 x i64> %i.am, splat (i64 31)
  %i.ar = lshr <4 x i64> %i.an, splat (i64 31)
  %i.as = lshr <4 x i64> %i.ao, splat (i64 31)
  %i.at = xor <4 x i64> %i.ap, %i.al
  %i.au = xor <4 x i64> %i.aq, %i.am
  %i.av = xor <4 x i64> %i.ar, %i.an
  %i.aw = xor <4 x i64> %i.as, %i.ao
  %i.ax = mul <4 x i64> %i.at, splat (i64 9202493588570546565) ; 2 uses
  %i.ay = mul <4 x i64> %i.au, splat (i64 9202493588570546565) ; 2 uses
  %i.az = mul <4 x i64> %i.av, splat (i64 9202493588570546565) ; 2 uses
  %i.ba = mul <4 x i64> %i.aw, splat (i64 9202493588570546565) ; 2 uses
  %i.bb = lshr <4 x i64> %i.ax, splat (i64 27)
  %i.bc = lshr <4 x i64> %i.ay, splat (i64 27)
  %i.bd = lshr <4 x i64> %i.az, splat (i64 27)
  %i.be = lshr <4 x i64> %i.ba, splat (i64 27)
  %i.bf = xor <4 x i64> %i.bb, %i.ax
  %i.bg = xor <4 x i64> %i.bc, %i.ay
  %i.bh = xor <4 x i64> %i.bd, %i.az
  %i.bi = xor <4 x i64> %i.be, %i.ba
  %i.bj = mul <4 x i64> %i.bf, splat (i64 -9089707755183418291) ; 2 uses
  %i.bk = mul <4 x i64> %i.bg, splat (i64 -9089707755183418291) ; 2 uses
  %i.bl = mul <4 x i64> %i.bh, splat (i64 -9089707755183418291) ; 2 uses
  %i.bm = mul <4 x i64> %i.bi, splat (i64 -9089707755183418291) ; 2 uses
  %i.bn = lshr <4 x i64> %i.bj, splat (i64 57)
  %i.bo = lshr <4 x i64> %i.bk, splat (i64 57)
  %i.bp = lshr <4 x i64> %i.bl, splat (i64 57)
  %i.bq = lshr <4 x i64> %i.bm, splat (i64 57)
  %i.br = lshr <4 x i64> %i.bj, splat (i64 24)
  %i.bs = lshr <4 x i64> %i.bk, splat (i64 24)
  %i.bt = lshr <4 x i64> %i.bl, splat (i64 24)
  %i.bu = lshr <4 x i64> %i.bm, splat (i64 24)
  %i.bv = xor <4 x i64> %i.bn, %i.br
  %i.bw = xor <4 x i64> %i.bo, %i.bs
  %i.bx = xor <4 x i64> %i.bp, %i.bt
  %i.by = xor <4 x i64> %i.bq, %i.bu
  %i.bz = urem <4 x i64> %i.bv, splat (i64 24)    ; 4 uses
  %i.ca = urem <4 x i64> %i.bw, splat (i64 24)    ; 4 uses
  %i.cb = urem <4 x i64> %i.bx, splat (i64 24)    ; 4 uses
  %i.cc = urem <4 x i64> %i.by, splat (i64 24)    ; 4 uses
  %i.cd = extractelement <4 x i64> %i.bz, i64 0
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cd
  %i.cf = extractelement <4 x i64> %i.bz, i64 1
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cf
  %i.ch = extractelement <4 x i64> %i.bz, i64 2
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.ch
  %i.cj = extractelement <4 x i64> %i.bz, i64 3
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cj
  %i.cl = extractelement <4 x i64> %i.ca, i64 0
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cl
  %i.cn = extractelement <4 x i64> %i.ca, i64 1
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cn
  %i.cp = extractelement <4 x i64> %i.ca, i64 2
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cp
  %i.cr = extractelement <4 x i64> %i.ca, i64 3
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cr
  %i.ct = extractelement <4 x i64> %i.cb, i64 0
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.ct
  %i.cv = extractelement <4 x i64> %i.cb, i64 1
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cv
  %i.cx = extractelement <4 x i64> %i.cb, i64 2
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cx
  %i.cz = extractelement <4 x i64> %i.cb, i64 3
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cz
  %i.db = extractelement <4 x i64> %i.cc, i64 0
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.db
  %i.dd = extractelement <4 x i64> %i.cc, i64 1
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.dd
  %i.df = extractelement <4 x i64> %i.cc, i64 2
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.df
  %i.dh = extractelement <4 x i64> %i.cc, i64 3
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.dh
  %i.dj = extractelement <4 x i64> %i.z, i64 0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dj
  %i.dl = extractelement <4 x i64> %i.z, i64 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dl
  %i.dn = extractelement <4 x i64> %i.z, i64 2
  %i.do = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dn
  %i.dp = extractelement <4 x i64> %i.z, i64 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.dp
  %i.dr = extractelement <4 x i64> %i.aa, i64 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dr
  %i.dt = extractelement <4 x i64> %i.aa, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dt
  %i.dv = extractelement <4 x i64> %i.aa, i64 2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dv
  %i.dx = extractelement <4 x i64> %i.aa, i64 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dx
  %i.dz = extractelement <4 x i64> %i.ab, i64 0
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dz
  %i.eb = extractelement <4 x i64> %i.ab, i64 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.eb
  %i.ed = extractelement <4 x i64> %i.ab, i64 2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.ed
  %i.ef = extractelement <4 x i64> %i.ab, i64 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ef
  %i.eh = extractelement <4 x i64> %i.ac, i64 0
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eh
  %i.ej = extractelement <4 x i64> %i.ac, i64 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ej
  %i.el = extractelement <4 x i64> %i.ac, i64 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.el
  %i.en = extractelement <4 x i64> %i.ac, i64 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.en
  %i.ep = load i8, ptr %i.dk, align 1, !tbaa !47
  %i.eq = load i8, ptr %i.dm, align 1, !tbaa !47
  %i.er = load i8, ptr %i.do, align 1, !tbaa !47
  %i.es = load i8, ptr %i.dq, align 1, !tbaa !47
  %i.et = insertelement <4 x i8> poison, i8 %i.ep, i64 0
  %i.eu = insertelement <4 x i8> %i.et, i8 %i.eq, i64 1
  %i.ev = insertelement <4 x i8> %i.eu, i8 %i.er, i64 2
  %i.ew = insertelement <4 x i8> %i.ev, i8 %i.es, i64 3
  %i.ex = load i8, ptr %i.ds, align 1, !tbaa !47
  %i.ey = load i8, ptr %i.du, align 1, !tbaa !47
  %i.ez = load i8, ptr %i.dw, align 1, !tbaa !47
  %i.fa = load i8, ptr %i.dy, align 1, !tbaa !47
  %i.fb = insertelement <4 x i8> poison, i8 %i.ex, i64 0
  %i.fc = insertelement <4 x i8> %i.fb, i8 %i.ey, i64 1
  %i.fd = insertelement <4 x i8> %i.fc, i8 %i.ez, i64 2
  %i.fe = insertelement <4 x i8> %i.fd, i8 %i.fa, i64 3
  %i.ff = load i8, ptr %i.ea, align 1, !tbaa !47
  %i.fg = load i8, ptr %i.ec, align 1, !tbaa !47
  %i.fh = load i8, ptr %i.ee, align 1, !tbaa !47
  %i.fi = load i8, ptr %i.eg, align 1, !tbaa !47
  %i.fj = insertelement <4 x i8> poison, i8 %i.ff, i64 0
  %i.fk = insertelement <4 x i8> %i.fj, i8 %i.fg, i64 1
  %i.fl = insertelement <4 x i8> %i.fk, i8 %i.fh, i64 2
  %i.fm = insertelement <4 x i8> %i.fl, i8 %i.fi, i64 3
  %i.fn = load i8, ptr %i.ei, align 1, !tbaa !47
  %i.fo = load i8, ptr %i.ek, align 1, !tbaa !47
  %i.fp = load i8, ptr %i.em, align 1, !tbaa !47
  %i.fq = load i8, ptr %i.eo, align 1, !tbaa !47
  %i.fr = insertelement <4 x i8> poison, i8 %i.fn, i64 0
  %i.fs = insertelement <4 x i8> %i.fr, i8 %i.fo, i64 1
  %i.ft = insertelement <4 x i8> %i.fs, i8 %i.fp, i64 2
  %i.fu = insertelement <4 x i8> %i.ft, i8 %i.fq, i64 3
  %i.fv = zext <4 x i8> %i.ew to <4 x i64>
  %i.fw = zext <4 x i8> %i.fe to <4 x i64>
  %i.fx = zext <4 x i8> %i.fm to <4 x i64>
end_hunk_0
begin_hunk_1_@_ZN4pbrt17StratifiedSampler5Get2DEv:bb.a
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
  br i1 %.not.i, label %_ZN4pbrt18PermutationElementEjjj.exit, label %bb.b, !llvm.loop !21

_ZN4pbrt18PermutationElementEjjj.exit:            ; preds = %bb.b
  %i.bw = add nsw i32 %i.c, 2
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !641
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !667, !range !136, !noundef !137
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt18PermutationElementEjjj.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !454 ; 2 uses
  %i.cc = mul i64 %i.cb, 6364136223846793005
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !453 ; 2 uses
  %i.cf = add i64 %i.cc, %i.ce                    ; 2 uses
  %i.cg = mul i64 %i.cf, 6364136223846793005
  %i.ch = add i64 %i.cg, %i.ce
  store i64 %i.ch, ptr %i.ca, align 8, !tbaa !454
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
define linkonce_odr dso_local <2 x float> @_ZN4pbrt18PaddedSobolSampler5Get2DEv(ptr noundef nonnull align 4 dereferenceable(28) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !644  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !672
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
  %i.x = load i32, ptr %i.w, align 4, !tbaa !643
  %i.y = load i32, ptr %0, align 4, !tbaa !121    ; 3 uses
  %i.z = trunc i64 %i.v to i32                    ; 7 uses
  %i.aa = add i32 %i.y, -1                        ; 2 uses
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = or i32 %i.ab, %i.aa                     ; 2 uses
  %i.ad = lshr i32 %i.ac, 2
  %i.ae = or i32 %i.ad, %i.ac                     ; 2 uses
  %i.af = lshr i32 %i.ae, 4
  %i.ag = or i32 %i.af, %i.ae                     ; 2 uses
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = or i32 %i.ah, %i.ag                     ; 2 uses
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = or i32 %i.aj, %i.ai                     ; 6 uses
  %i.al = lshr i32 %i.z, 16
  %i.am = lshr i32 %i.z, 8
  %i.an = lshr i32 %i.z, 23
  %i.ao = lshr i32 %i.z, 27
  %i.ap = or i32 %i.ao, 1
  %i.aq = mul i32 %i.ap, 1765145193
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ %i.x, %bb.a ], [ %i.bs, %bb.b ]
  %i.ar = xor i32 %.0.i, %i.z
  %i.as = mul i32 %i.ar, -512718531
  %i.at = xor i32 %i.as, %i.al                    ; 2 uses
  %i.au = and i32 %i.at, %i.ak
  %i.av = lshr i32 %i.au, 4
  %i.aw = xor i32 %i.am, %i.av
  %i.ax = xor i32 %i.aw, %i.at
  %i.ay = mul i32 %i.ax, 153742143
  %i.az = xor i32 %i.ay, %i.an                    ; 2 uses
  %i.ba = and i32 %i.az, %i.ak
  %i.bb = lshr i32 %i.ba, 1
  %i.bc = xor i32 %i.bb, %i.az
  %i.bd = mul i32 %i.aq, %i.bc                    ; 2 uses
  %i.be = and i32 %i.bd, %i.ak
  %i.bf = lshr i32 %i.be, 11
  %i.bg = xor i32 %i.bf, %i.bd
  %i.bh = mul i32 %i.bg, 1960620803               ; 2 uses
  %i.bi = and i32 %i.bh, %i.ak
  %i.bj = lshr i32 %i.bi, 2
  %i.bk = xor i32 %i.bj, %i.bh
  %i.bl = mul i32 %i.bk, -1638916925              ; 2 uses
  %i.bm = and i32 %i.bl, %i.ak
  %i.bn = lshr i32 %i.bm, 2
  %i.bo = xor i32 %i.bn, %i.bl
  %i.bp = mul i32 %i.bo, -933190689
  %i.bq = and i32 %i.bp, %i.ak                    ; 2 uses
  %i.br = lshr i32 %i.bq, 5
  %i.bs = xor i32 %i.br, %i.bq                    ; 3 uses
  %.not.i = icmp ult i32 %i.bs, %i.y
  br i1 %.not.i, label %_ZN4pbrt18PermutationElementEjjj.exit, label %bb.b, !llvm.loop !21

_ZN4pbrt18PermutationElementEjjj.exit:            ; preds = %bb.b
  %i.bt = add i32 %i.bs, %i.z
  %i.bu = urem i32 %i.bt, %i.y                    ; 2 uses
  %i.bv = add nsw i32 %i.c, 2
  store i32 %i.bv, ptr %i.b, align 4, !tbaa !644
  %i.bw = tail call noundef float @_ZNK4pbrt18PaddedSobolSampler15SampleDimensionEijj(ptr noundef nonnull align 4 dereferenceable(28) %0, i32 noundef 0, i32 noundef %i.bu, i32 noundef %i.z)
  %i.bx = lshr i64 %i.t, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = tail call noundef float @_ZNK4pbrt18PaddedSobolSampler15SampleDimensionEijj(ptr noundef nonnull align 4 dereferenceable(28) %0, i32 noundef 1, i32 noundef %i.bu, i32 noundef %i.by)
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.bw, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.bz, i64 1
  ret <2 x float> %.sroa.0.4.vec.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZN4pbrt13ZSobolSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %.not.i = trunc i32 %i.b to i1
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !674  ; 2 uses
  %.not20.not21.i = icmp sgt i32 %i.e, %i.c
  br i1 %.not20.not21.i, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !649  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !648
  %i.j = mul i32 %i.i, 1431655765
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = zext nneg i32 %i.e to i64                ; 6 uses
  %i.m = zext nneg i32 %i.c to i64                ; 5 uses
  %i.n = sub nsw i64 %i.l, %i.m                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check162 = icmp ult i64 %i.n, 16
  br i1 %min.iters.check162, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.n, 12
  %n.vec = and i64 %i.n, -16                      ; 4 uses
  %i.p = sub nsw i64 %i.l, %n.vec                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert163 = insertelement <4 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat164 = shufflevector <4 x i64> %broadcast.splatinsert163, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert165 = insertelement <4 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat166 = shufflevector <4 x i64> %broadcast.splatinsert165, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert167 = insertelement <4 x i64> poison, i64 %i.l, i64 0
  %broadcast.splat168 = shufflevector <4 x i64> %broadcast.splatinsert167, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.q = add nsw <4 x i64> %broadcast.splat168, <i64 0, i64 -1, i64 -2, i64 -3>
  %invariant.op = sub <4 x i64> splat (i64 -2), %broadcast.splat166
  %invariant.op201 = sub <4 x i64> splat (i64 -10), %broadcast.splat166
  %invariant.op203 = sub <4 x i64> splat (i64 -18), %broadcast.splat166
  %invariant.op205 = sub <4 x i64> splat (i64 -26), %broadcast.splat166
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %i.q, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.gd, %vector.body ]
  %vec.phi169 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ge, %vector.body ]
  %vec.phi170 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.gf, %vector.body ]
  %vec.phi171 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.gg, %vector.body ]
  %i.r = shl <4 x i64> %vec.ind, splat (i64 1)
  %i.s = shl <4 x i64> %vec.ind, splat (i64 1)
  %i.t = shl <4 x i64> %vec.ind, splat (i64 1)
  %i.u = shl <4 x i64> %vec.ind, splat (i64 1)
  %.reass = add <4 x i64> %i.r, %invariant.op     ; 3 uses
  %.reass202 = add <4 x i64> %i.s, %invariant.op201 ; 3 uses
  %.reass204 = add <4 x i64> %i.t, %invariant.op203 ; 3 uses
  %.reass206 = add <4 x i64> %i.u, %invariant.op205 ; 3 uses
  %i.v = lshr <4 x i64> %broadcast.splat, %.reass
  %i.w = lshr <4 x i64> %broadcast.splat, %.reass202
  %i.x = lshr <4 x i64> %broadcast.splat, %.reass204
  %i.y = lshr <4 x i64> %broadcast.splat, %.reass206
  %i.z = and <4 x i64> %i.v, splat (i64 3)        ; 4 uses
  %i.aa = and <4 x i64> %i.w, splat (i64 3)       ; 4 uses
  %i.ab = and <4 x i64> %i.x, splat (i64 3)       ; 4 uses
  %i.ac = and <4 x i64> %i.y, splat (i64 3)       ; 4 uses
  %i.ad = add nuw nsw <4 x i64> %.reass, splat (i64 2)
  %i.ae = add nuw nsw <4 x i64> %.reass202, splat (i64 2)
  %i.af = add nuw nsw <4 x i64> %.reass204, splat (i64 2)
  %i.ag = add nuw nsw <4 x i64> %.reass206, splat (i64 2)
  %i.ah = lshr <4 x i64> %broadcast.splat, %i.ad
  %i.ai = lshr <4 x i64> %broadcast.splat, %i.ae
  %i.aj = lshr <4 x i64> %broadcast.splat, %i.af
  %i.ak = lshr <4 x i64> %broadcast.splat, %i.ag
  %i.al = xor <4 x i64> %i.ah, %broadcast.splat164 ; 2 uses
  %i.am = xor <4 x i64> %i.ai, %broadcast.splat164 ; 2 uses
  %i.an = xor <4 x i64> %i.aj, %broadcast.splat164 ; 2 uses
  %i.ao = xor <4 x i64> %i.ak, %broadcast.splat164 ; 2 uses
  %i.ap = lshr <4 x i64> %i.al, splat (i64 31)
  %i.aq = lshr <4 x i64> %i.am, splat (i64 31)
  %i.ar = lshr <4 x i64> %i.an, splat (i64 31)
  %i.as = lshr <4 x i64> %i.ao, splat (i64 31)
  %i.at = xor <4 x i64> %i.ap, %i.al
  %i.au = xor <4 x i64> %i.aq, %i.am
  %i.av = xor <4 x i64> %i.ar, %i.an
  %i.aw = xor <4 x i64> %i.as, %i.ao
  %i.ax = mul <4 x i64> %i.at, splat (i64 9202493588570546565) ; 2 uses
  %i.ay = mul <4 x i64> %i.au, splat (i64 9202493588570546565) ; 2 uses
  %i.az = mul <4 x i64> %i.av, splat (i64 9202493588570546565) ; 2 uses
  %i.ba = mul <4 x i64> %i.aw, splat (i64 9202493588570546565) ; 2 uses
  %i.bb = lshr <4 x i64> %i.ax, splat (i64 27)
  %i.bc = lshr <4 x i64> %i.ay, splat (i64 27)
  %i.bd = lshr <4 x i64> %i.az, splat (i64 27)
  %i.be = lshr <4 x i64> %i.ba, splat (i64 27)
  %i.bf = xor <4 x i64> %i.bb, %i.ax
  %i.bg = xor <4 x i64> %i.bc, %i.ay
  %i.bh = xor <4 x i64> %i.bd, %i.az
  %i.bi = xor <4 x i64> %i.be, %i.ba
  %i.bj = mul <4 x i64> %i.bf, splat (i64 -9089707755183418291) ; 2 uses
  %i.bk = mul <4 x i64> %i.bg, splat (i64 -9089707755183418291) ; 2 uses
  %i.bl = mul <4 x i64> %i.bh, splat (i64 -9089707755183418291) ; 2 uses
  %i.bm = mul <4 x i64> %i.bi, splat (i64 -9089707755183418291) ; 2 uses
  %i.bn = lshr <4 x i64> %i.bj, splat (i64 57)
  %i.bo = lshr <4 x i64> %i.bk, splat (i64 57)
  %i.bp = lshr <4 x i64> %i.bl, splat (i64 57)
  %i.bq = lshr <4 x i64> %i.bm, splat (i64 57)
  %i.br = lshr <4 x i64> %i.bj, splat (i64 24)
  %i.bs = lshr <4 x i64> %i.bk, splat (i64 24)
  %i.bt = lshr <4 x i64> %i.bl, splat (i64 24)
  %i.bu = lshr <4 x i64> %i.bm, splat (i64 24)
  %i.bv = xor <4 x i64> %i.bn, %i.br
  %i.bw = xor <4 x i64> %i.bo, %i.bs
  %i.bx = xor <4 x i64> %i.bp, %i.bt
  %i.by = xor <4 x i64> %i.bq, %i.bu
  %i.bz = urem <4 x i64> %i.bv, splat (i64 24)    ; 4 uses
  %i.ca = urem <4 x i64> %i.bw, splat (i64 24)    ; 4 uses
  %i.cb = urem <4 x i64> %i.bx, splat (i64 24)    ; 4 uses
  %i.cc = urem <4 x i64> %i.by, splat (i64 24)    ; 4 uses
  %i.cd = extractelement <4 x i64> %i.bz, i64 0
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cd
  %i.cf = extractelement <4 x i64> %i.bz, i64 1
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cf
  %i.ch = extractelement <4 x i64> %i.bz, i64 2
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.ch
  %i.cj = extractelement <4 x i64> %i.bz, i64 3
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cj
  %i.cl = extractelement <4 x i64> %i.ca, i64 0
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cl
  %i.cn = extractelement <4 x i64> %i.ca, i64 1
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cn
  %i.cp = extractelement <4 x i64> %i.ca, i64 2
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cp
  %i.cr = extractelement <4 x i64> %i.ca, i64 3
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cr
  %i.ct = extractelement <4 x i64> %i.cb, i64 0
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.ct
  %i.cv = extractelement <4 x i64> %i.cb, i64 1
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cv
  %i.cx = extractelement <4 x i64> %i.cb, i64 2
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cx
  %i.cz = extractelement <4 x i64> %i.cb, i64 3
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.cz
  %i.db = extractelement <4 x i64> %i.cc, i64 0
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.db
  %i.dd = extractelement <4 x i64> %i.cc, i64 1
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.dd
  %i.df = extractelement <4 x i64> %i.cc, i64 2
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.df
  %i.dh = extractelement <4 x i64> %i.cc, i64 3
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.dh
  %i.dj = extractelement <4 x i64> %i.z, i64 0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dj
  %i.dl = extractelement <4 x i64> %i.z, i64 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dl
  %i.dn = extractelement <4 x i64> %i.z, i64 2
  %i.do = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dn
  %i.dp = extractelement <4 x i64> %i.z, i64 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.dp
  %i.dr = extractelement <4 x i64> %i.aa, i64 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dr
  %i.dt = extractelement <4 x i64> %i.aa, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dt
  %i.dv = extractelement <4 x i64> %i.aa, i64 2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dv
  %i.dx = extractelement <4 x i64> %i.aa, i64 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dx
  %i.dz = extractelement <4 x i64> %i.ab, i64 0
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dz
  %i.eb = extractelement <4 x i64> %i.ab, i64 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.eb
  %i.ed = extractelement <4 x i64> %i.ab, i64 2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.ed
  %i.ef = extractelement <4 x i64> %i.ab, i64 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ef
  %i.eh = extractelement <4 x i64> %i.ac, i64 0
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eh
  %i.ej = extractelement <4 x i64> %i.ac, i64 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ej
  %i.el = extractelement <4 x i64> %i.ac, i64 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.el
  %i.en = extractelement <4 x i64> %i.ac, i64 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.en
  %i.ep = load i8, ptr %i.dk, align 1, !tbaa !47
  %i.eq = load i8, ptr %i.dm, align 1, !tbaa !47
  %i.er = load i8, ptr %i.do, align 1, !tbaa !47
  %i.es = load i8, ptr %i.dq, align 1, !tbaa !47
  %i.et = insertelement <4 x i8> poison, i8 %i.ep, i64 0
  %i.eu = insertelement <4 x i8> %i.et, i8 %i.eq, i64 1
  %i.ev = insertelement <4 x i8> %i.eu, i8 %i.er, i64 2
  %i.ew = insertelement <4 x i8> %i.ev, i8 %i.es, i64 3
  %i.ex = load i8, ptr %i.ds, align 1, !tbaa !47
  %i.ey = load i8, ptr %i.du, align 1, !tbaa !47
  %i.ez = load i8, ptr %i.dw, align 1, !tbaa !47
  %i.fa = load i8, ptr %i.dy, align 1, !tbaa !47
  %i.fb = insertelement <4 x i8> poison, i8 %i.ex, i64 0
  %i.fc = insertelement <4 x i8> %i.fb, i8 %i.ey, i64 1
  %i.fd = insertelement <4 x i8> %i.fc, i8 %i.ez, i64 2
  %i.fe = insertelement <4 x i8> %i.fd, i8 %i.fa, i64 3
  %i.ff = load i8, ptr %i.ea, align 1, !tbaa !47
  %i.fg = load i8, ptr %i.ec, align 1, !tbaa !47
  %i.fh = load i8, ptr %i.ee, align 1, !tbaa !47
  %i.fi = load i8, ptr %i.eg, align 1, !tbaa !47
  %i.fj = insertelement <4 x i8> poison, i8 %i.ff, i64 0
  %i.fk = insertelement <4 x i8> %i.fj, i8 %i.fg, i64 1
  %i.fl = insertelement <4 x i8> %i.fk, i8 %i.fh, i64 2
  %i.fm = insertelement <4 x i8> %i.fl, i8 %i.fi, i64 3
  %i.fn = load i8, ptr %i.ei, align 1, !tbaa !47
  %i.fo = load i8, ptr %i.ek, align 1, !tbaa !47
  %i.fp = load i8, ptr %i.em, align 1, !tbaa !47
  %i.fq = load i8, ptr %i.eo, align 1, !tbaa !47
  %i.fr = insertelement <4 x i8> poison, i8 %i.fn, i64 0
  %i.fs = insertelement <4 x i8> %i.fr, i8 %i.fo, i64 1
  %i.ft = insertelement <4 x i8> %i.fs, i8 %i.fp, i64 2
  %i.fu = insertelement <4 x i8> %i.ft, i8 %i.fq, i64 3
  %i.fv = zext <4 x i8> %i.ew to <4 x i64>
  %i.fw = zext <4 x i8> %i.fe to <4 x i64>
  %i.fx = zext <4 x i8> %i.fm to <4 x i64>
end_hunk_1
