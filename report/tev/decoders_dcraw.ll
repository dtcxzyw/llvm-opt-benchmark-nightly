Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/decoders_dcraw?download=true
inline.NumInlined: 216
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN6LibRaw10ljpeg_idctEP5jhead:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !97
  %i.as = add nsw i32 %i.ap, %i.ar                ; 2 uses
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !97
  %i.at = sitofp i32 %i.as to float
  store float %i.at, ptr %i.a, align 16, !tbaa !116
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 440
  br label %bb.e

bb.e:                                             ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit, %bb.f
  %.06482 = phi i32 [ 1, %_ZN6LibRaw10ljpeg_diffEPt.exit ], [ %i.bv, %bb.f ]
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !89 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !86
  %i.ax = zext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.az = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ax, ptr noundef nonnull %i.ay) ; 3 uses
  %i.ba = and i32 %i.az, 15                       ; 4 uses
  %i.bb = icmp eq i32 %i.ba, 0
  %i.bc = icmp samesign ult i32 %i.az, 240
  %or.cond = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond, label %.preheader79.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = lshr i32 %i.az, 4
  %i.be = add nsw i32 %i.bd, %.06482              ; 3 uses
  %i.bf = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ba, ptr noundef null) ; 2 uses
  %i.bg = add nsw i32 %i.ba, -1
  %i.bh = shl nuw nsw i32 1, %i.bg
  %i.bi = and i32 %i.bf, %i.bh
  %i.bj = icmp eq i32 %i.bi, 0
  %notmask = shl nsw i32 -1, %i.ba
  %.neg = add nsw i32 %notmask, 1
  %i.bk = select i1 %i.bj, i32 %.neg, i32 0
  %.0 = add nsw i32 %i.bk, %i.bf
  %i.bl = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !86
  %i.bo = zext i16 %i.bn to i32
  %i.bp = mul nsw i32 %.0, %i.bo
  %i.bq = sitofp i32 %i.bp to float
  %i.br = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE6zigzag, i64 %i.bl
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !88
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bt
  store float %i.bq, ptr %i.bu, align 4, !tbaa !116
  %i.bv = add nuw nsw i32 %i.be, 1
  %i.bw = icmp slt i32 %i.be, 63
  br i1 %i.bw, label %bb.e, label %.preheader79.preheader, !llvm.loop !169

.preheader79.preheader:                           ; preds = %bb.e, %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.by = load <4 x float>, ptr %i.bx, align 16, !tbaa !116
  %i.bz = fmul <4 x float> %i.by, splat (float f0x3F3504F3)
  store <4 x float> %i.bz, ptr %i.bx, align 16, !tbaa !116
  %i.ca = load <4 x float>, ptr %i.a, align 16, !tbaa !116
  %i.cb = fmul <4 x float> %i.ca, <float f0x3F3504F3, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.cc = fmul <4 x float> %i.cb, splat (float f0x3F3504F3)
  store <4 x float> %i.cc, ptr %i.a, align 16, !tbaa !116
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 16, !tbaa !116
  %i.cf = fmul float %i.ce, f0x3F3504F3
  store float %i.cf, ptr %i.cd, align 16, !tbaa !116
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 16, !tbaa !116
  %i.ci = fmul float %i.ch, f0x3F3504F3
  store float %i.ci, ptr %i.cg, align 16, !tbaa !116
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 16, !tbaa !116
  %i.cl = fmul float %i.ck, f0x3F3504F3
  store float %i.cl, ptr %i.cj, align 16, !tbaa !116
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 16, !tbaa !116
  %i.co = fmul float %i.cn, f0x3F3504F3
  store float %i.co, ptr %i.cm, align 16, !tbaa !116
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 16, !tbaa !116
  %i.cr = fmul float %i.cq, f0x3F3504F3
  store float %i.cr, ptr %i.cp, align 16, !tbaa !116
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 16, !tbaa !116
  %i.cu = fmul float %i.ct, f0x3F3504F3
  store float %i.cu, ptr %i.cs, align 16, !tbaa !116
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 16, !tbaa !116
  %i.cx = fmul float %i.cw, f0x3F3504F3
  store float %i.cx, ptr %i.cv, align 16, !tbaa !116
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 5 uses
  %i.cz = load float, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 16, !tbaa !116 ; 2 uses
  %i.da = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 420), align 4, !tbaa !116
  %i.db = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 360), align 8
  %i.dc = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 300), align 4
  %i.dd = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 240), align 16
  %i.de = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 120), align 8 ; 2 uses
  %i.df = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 60), align 4 ; 2 uses
  %i.dg = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 364), align 4
  %i.dh = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 312), align 8
  %i.di = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 260), align 4
  %i.dj = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 208), align 16
  %i.dk = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 156), align 4
  %i.dl = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 104), align 8
  %i.dm = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 52), align 4
  %i.dn = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 308), align 4
  %i.do = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 264), align 8
  %i.dp = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 220), align 4
  %i.dq = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 176), align 16
  %i.dr = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 132), align 4
  %i.ds = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 88), align 8
  %i.dt = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 44), align 4
  %i.du = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 252), align 4
  %i.dv = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 216), align 8
  %i.dw = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 180), align 4 ; 2 uses
  %i.dx = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 144), align 16
  %i.dy = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 108), align 4
  %i.dz = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 196), align 4
  %i.ea = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 168), align 8
  %i.eb = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 112), align 16
  %i.ec = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 56), align 8
  %i.ed = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 140), align 4 ; 2 uses
  %i.ee = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 100), align 4
  %i.ef = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 80), align 16
  %i.eg = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 40), align 8
  %i.eh = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 84), align 4 ; 2 uses
  %i.ei = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 72), align 8 ; 2 uses
  %i.ej = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 48), align 16
  %i.ek = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 36), align 4 ; 2 uses
  %i.el = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 28), align 4 ; 2 uses
  %i.em = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 24), align 8 ; 2 uses
  %i.en = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 20), align 4 ; 2 uses
  %i.eo = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 16), align 16
  %i.ep = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 12), align 4 ; 2 uses
  %i.eq = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 8), align 8
  %i.er = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 4), align 4
  %.pre131 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 120), align 8, !tbaa !116
  %.pre130 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 60), align 4, !tbaa !116
  %.pre = load float, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 16, !tbaa !116
  %broadcast.splat146 = shufflevector <1 x float> %i.en, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat158 = shufflevector <1 x float> %i.eh, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat172 = shufflevector <1 x float> %i.ea, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert175 = insertelement <4 x float> poison, float %i.cz, i64 0 ; 3 uses
  %broadcast.splat176 = shufflevector <4 x float> %broadcast.splatinsert175, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat202 = shufflevector <1 x float> %i.dm, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat204 = shufflevector <1 x float> %i.dl, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat214 = shufflevector <1 x float> %i.dg, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat216 = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat218 = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert225 = insertelement <4 x float> poison, float %i.da, i64 0
  %broadcast.splat226 = shufflevector <4 x float> %broadcast.splatinsert225, <4 x float> poison, <4 x i32> zeroinitializer
  %vector.recur.init = insertelement <4 x float> poison, float %.pre131, i64 3
  %vector.recur.init227 = insertelement <4 x float> poison, float %.pre130, i64 3
  %vector.recur.init229 = insertelement <4 x float> poison, float %.pre, i64 3
  %i.es = shufflevector <1 x float> %i.el, <1 x float> %i.eh, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.et = shufflevector <1 x float> %i.em, <1 x float> %i.ei, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.eu = shufflevector <1 x float> %i.eo, <1 x float> %i.ej, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.ev = shufflevector <1 x float> %i.ep, <1 x float> %i.ek, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.ew = shufflevector <1 x float> %i.eq, <1 x float> %i.em, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.ex = shufflevector <1 x float> %i.er, <1 x float> %i.ep, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.ey = shufflevector <1 x float> %i.ed, <1 x float> %i.dz, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.ez = shufflevector <1 x float> %i.ee, <1 x float> %i.ed, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fa = shufflevector <1 x float> %i.ef, <1 x float> %i.eb, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fb = shufflevector <1 x float> %i.eg, <1 x float> %i.ec, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fc = shufflevector <1 x float> %i.en, <1 x float> %i.el, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fd = shufflevector <1 x float> %i.du, <1 x float> %i.dn, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fe = shufflevector <1 x float> %i.dv, <1 x float> %i.do, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.ff = shufflevector <1 x float> %i.dw, <1 x float> %i.dp, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fg = shufflevector <1 x float> %i.dx, <1 x float> %i.dq, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fh = shufflevector <1 x float> %i.dy, <1 x float> %i.dr, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fi = shufflevector <1 x float> %i.ei, <1 x float> %i.ds, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fj = shufflevector <1 x float> %i.ek, <1 x float> %i.dt, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fk = shufflevector <4 x float> %broadcast.splat214, <4 x float> %broadcast.splat226, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fl = shufflevector <1 x float> %i.dh, <1 x float> %i.db, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fm = shufflevector <1 x float> %i.di, <1 x float> %i.dc, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fn = shufflevector <1 x float> %i.dj, <1 x float> %i.dd, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fo = shufflevector <1 x float> %i.dk, <1 x float> %i.dw, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.fp = shufflevector <4 x float> %broadcast.splat204, <4 x float> %broadcast.splat218, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fq = shufflevector <4 x float> %broadcast.splat202, <4 x float> %broadcast.splat216, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fr = shufflevector <8 x float> %i.es, <8 x float> %i.ey, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fs = shufflevector <8 x float> %i.eu, <8 x float> %i.fa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ft = shufflevector <8 x float> %i.ew, <8 x float> %i.fb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fu = shufflevector <8 x float> %i.ex, <8 x float> %i.fc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fv = shufflevector <8 x float> %i.fd, <8 x float> %i.fk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fw = shufflevector <8 x float> %i.fe, <8 x float> %i.fl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fx = shufflevector <8 x float> %i.ff, <8 x float> %i.fm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fy = shufflevector <8 x float> %i.fg, <8 x float> %i.fn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fz = shufflevector <8 x float> %i.fh, <8 x float> %i.fo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ga = shufflevector <8 x float> %i.fi, <8 x float> %i.fp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gb = shufflevector <8 x float> %i.fj, <8 x float> %i.fq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gc = shufflevector <4 x float> %broadcast.splatinsert175, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader79.preheader
  %index = phi i64 [ 0, %.preheader79.preheader ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <4 x float> [ %vector.recur.init, %.preheader79.preheader ], [ %broadcast.splat218, %vector.body ]
  %vector.recur228 = phi <4 x float> [ %vector.recur.init227, %.preheader79.preheader ], [ %broadcast.splat216, %vector.body ]
  %vector.recur230 = phi <4 x float> [ %vector.recur.init229, %.preheader79.preheader ], [ %broadcast.splat176, %vector.body ]
  %i.gd = or disjoint i64 %index, 1               ; 2 uses
  %i.ge = or disjoint i64 %index, 2               ; 2 uses
  %i.gf = or disjoint i64 %index, 3               ; 2 uses
  %i.gg = shufflevector <4 x float> %vector.recur230, <4 x float> %broadcast.splatinsert175, <4 x i32> <i32 3, i32 4, i32 4, i32 4> ; 2 uses
  %i.gh = shufflevector <4 x float> %vector.recur228, <4 x float> %i.df, <4 x i32> <i32 3, i32 4, i32 4, i32 4> ; 2 uses
  %i.gi = shufflevector <4 x float> %vector.recur, <4 x float> %i.de, <4 x i32> <i32 3, i32 4, i32 4, i32 4>
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %index ; 8 uses
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.gd ; 8 uses
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.ge ; 8 uses
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.gf ; 8 uses
  %i.gn = getelementptr inbounds nuw [32 x i8], ptr %i.cy, i64 %index ; 9 uses
  %i.go = getelementptr inbounds nuw [32 x i8], ptr %i.cy, i64 %i.gd ; 8 uses
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.cy, i64 %i.ge ; 8 uses
  %i.gq = getelementptr inbounds nuw [32 x i8], ptr %i.cy, i64 %i.gf ; 8 uses
  %i.gr = load float, ptr %i.gn, align 16, !tbaa !116
  %i.gs = load float, ptr %i.go, align 16, !tbaa !116
  %i.gt = load float, ptr %i.gp, align 16, !tbaa !116
  %i.gu = load float, ptr %i.gq, align 16, !tbaa !116
  %i.gv = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %i.gs, i64 1
  %i.gx = insertelement <4 x float> %i.gw, float %i.gt, i64 2
  %i.gy = insertelement <4 x float> %i.gx, float %i.gu, i64 3
  %i.gz = load float, ptr %i.gj, align 16, !tbaa !116
  %i.ha = load float, ptr %i.gk, align 16, !tbaa !116
  %i.hb = load float, ptr %i.gl, align 16, !tbaa !116
  %i.hc = load float, ptr %i.gm, align 16, !tbaa !116
  %i.hd = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.he = insertelement <4 x float> %i.hd, float %i.ha, i64 1
  %i.hf = insertelement <4 x float> %i.he, float %i.hb, i64 2
  %i.hg = insertelement <4 x float> %i.hf, float %i.hc, i64 3 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.hl = load float, ptr %i.hh, align 4, !tbaa !116
  %i.hm = load float, ptr %i.hi, align 4, !tbaa !116
  %i.hn = load float, ptr %i.hj, align 4, !tbaa !116
  %i.ho = load float, ptr %i.hk, align 4, !tbaa !116
  %i.hp = insertelement <4 x float> poison, float %i.hl, i64 0
  %i.hq = insertelement <4 x float> %i.hp, float %i.hm, i64 1
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 2
  %i.hs = insertelement <4 x float> %i.hr, float %i.ho, i64 3 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.hx = load float, ptr %i.ht, align 8, !tbaa !116
  %i.hy = load float, ptr %i.hu, align 8, !tbaa !116
  %i.hz = load float, ptr %i.hv, align 8, !tbaa !116
  %i.ia = load float, ptr %i.hw, align 8, !tbaa !116
  %i.ib = insertelement <4 x float> poison, float %i.hx, i64 0
  %i.ic = insertelement <4 x float> %i.ib, float %i.hy, i64 1
  %i.id = insertelement <4 x float> %i.ic, float %i.hz, i64 2
  %i.ie = insertelement <4 x float> %i.id, float %i.ia, i64 3 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  %i.ij = load float, ptr %i.if, align 4, !tbaa !116
  %i.ik = load float, ptr %i.ig, align 4, !tbaa !116
  %i.il = load float, ptr %i.ih, align 4, !tbaa !116
  %i.im = load float, ptr %i.ii, align 4, !tbaa !116
  %i.in = insertelement <4 x float> poison, float %i.ij, i64 0
  %i.io = insertelement <4 x float> %i.in, float %i.ik, i64 1
  %i.ip = insertelement <4 x float> %i.io, float %i.il, i64 2
  %i.iq = insertelement <4 x float> %i.ip, float %i.im, i64 3 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.is = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.it = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.iv = load float, ptr %i.ir, align 16, !tbaa !116
  %i.iw = load float, ptr %i.is, align 16, !tbaa !116
  %i.ix = load float, ptr %i.it, align 16, !tbaa !116
  %i.iy = load float, ptr %i.iu, align 16, !tbaa !116
  %i.iz = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.ja = insertelement <4 x float> %i.iz, float %i.iw, i64 1
  %i.jb = insertelement <4 x float> %i.ja, float %i.ix, i64 2
  %i.jc = insertelement <4 x float> %i.jb, float %i.iy, i64 3 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %i.je = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  %i.jg = getelementptr inbounds nuw i8, ptr %i.gm, i64 20
  %i.jh = load float, ptr %i.jd, align 4, !tbaa !116
  %i.ji = load float, ptr %i.je, align 4, !tbaa !116
  %i.jj = load float, ptr %i.jf, align 4, !tbaa !116
  %i.jk = load float, ptr %i.jg, align 4, !tbaa !116
  %i.jl = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jm = insertelement <4 x float> %i.jl, float %i.ji, i64 1
  %i.jn = insertelement <4 x float> %i.jm, float %i.jj, i64 2
  %i.jo = insertelement <4 x float> %i.jn, float %i.jk, i64 3 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.js = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.jt = load float, ptr %i.jp, align 8, !tbaa !116
  %i.ju = load float, ptr %i.jq, align 8, !tbaa !116
  %i.jv = load float, ptr %i.jr, align 8, !tbaa !116
  %i.jw = load float, ptr %i.js, align 8, !tbaa !116
  %i.jx = insertelement <4 x float> poison, float %i.jt, i64 0
  %i.jy = insertelement <4 x float> %i.jx, float %i.ju, i64 1
  %i.jz = insertelement <4 x float> %i.jy, float %i.jv, i64 2
  %i.ka = insertelement <4 x float> %i.jz, float %i.jw, i64 3 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gj, i64 28
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gk, i64 28
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %i.kf = load float, ptr %i.kb, align 4, !tbaa !116
  %i.kg = load float, ptr %i.kc, align 4, !tbaa !116
  %i.kh = load float, ptr %i.kd, align 4, !tbaa !116
  %i.ki = load float, ptr %i.ke, align 4, !tbaa !116
  %i.kj = insertelement <4 x float> poison, float %i.kf, i64 0
  %i.kk = insertelement <4 x float> %i.kj, float %i.kg, i64 1
  %i.kl = insertelement <4 x float> %i.kk, float %i.kh, i64 2
  %i.km = insertelement <4 x float> %i.kl, float %i.ki, i64 3 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.kr = load float, ptr %i.kn, align 4, !tbaa !116
  %i.ks = load float, ptr %i.ko, align 4, !tbaa !116
  %i.kt = load float, ptr %i.kp, align 4, !tbaa !116
  %i.ku = load float, ptr %i.kq, align 4, !tbaa !116
  %i.kv = insertelement <4 x float> poison, float %i.kr, i64 0
  %i.kw = insertelement <4 x float> %i.kv, float %i.ks, i64 1
  %i.kx = insertelement <4 x float> %i.kw, float %i.kt, i64 2
  %i.ky = insertelement <4 x float> %i.kx, float %i.ku, i64 3
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.ld = load float, ptr %i.kz, align 8, !tbaa !116
  %i.le = load float, ptr %i.la, align 8, !tbaa !116
  %i.lf = load float, ptr %i.lb, align 8, !tbaa !116
  %i.lg = load float, ptr %i.lc, align 8, !tbaa !116
  %i.lh = insertelement <4 x float> poison, float %i.ld, i64 0
  %i.li = insertelement <4 x float> %i.lh, float %i.le, i64 1
  %i.lj = insertelement <4 x float> %i.li, float %i.lf, i64 2
  %i.lk = insertelement <4 x float> %i.lj, float %i.lg, i64 3
  %i.ll = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.lm = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  %i.ln = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %i.lo = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  %i.lp = load float, ptr %i.ll, align 4, !tbaa !116
  %i.lq = load float, ptr %i.lm, align 4, !tbaa !116
  %i.lr = load float, ptr %i.ln, align 4, !tbaa !116
  %i.ls = load float, ptr %i.lo, align 4, !tbaa !116
  %i.lt = insertelement <4 x float> poison, float %i.lp, i64 0
  %i.lu = insertelement <4 x float> %i.lt, float %i.lq, i64 1
  %i.lv = insertelement <4 x float> %i.lu, float %i.lr, i64 2
  %i.lw = insertelement <4 x float> %i.lv, float %i.ls, i64 3
  %i.lx = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.ly = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.mb = load float, ptr %i.lx, align 16, !tbaa !116
  %i.mc = load float, ptr %i.ly, align 16, !tbaa !116
  %i.md = load float, ptr %i.lz, align 16, !tbaa !116
  %i.me = load float, ptr %i.ma, align 16, !tbaa !116
  %i.mf = insertelement <4 x float> poison, float %i.mb, i64 0
  %i.mg = insertelement <4 x float> %i.mf, float %i.mc, i64 1
  %i.mh = insertelement <4 x float> %i.mg, float %i.md, i64 2
  %i.mi = insertelement <4 x float> %i.mh, float %i.me, i64 3
  %i.mj = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  %i.mk = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  %i.ml = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  %i.mm = getelementptr inbounds nuw i8, ptr %i.gq, i64 20
  %i.mn = load float, ptr %i.mj, align 4, !tbaa !116
  %i.mo = load float, ptr %i.mk, align 4, !tbaa !116
  %i.mp = load float, ptr %i.ml, align 4, !tbaa !116
  %i.mq = load float, ptr %i.mm, align 4, !tbaa !116
  %i.mr = insertelement <4 x float> poison, float %i.mn, i64 0
  %i.ms = insertelement <4 x float> %i.mr, float %i.mo, i64 1
  %i.mt = insertelement <4 x float> %i.ms, float %i.mp, i64 2
  %i.mu = insertelement <4 x float> %i.mt, float %i.mq, i64 3
  %i.mv = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.mw = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.mx = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.my = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.mz = load float, ptr %i.mv, align 8, !tbaa !116
  %i.na = load float, ptr %i.mw, align 8, !tbaa !116
  %i.nb = load float, ptr %i.mx, align 8, !tbaa !116
  %i.nc = load float, ptr %i.my, align 8, !tbaa !116
  %i.nd = insertelement <4 x float> poison, float %i.mz, i64 0
  %i.ne = insertelement <4 x float> %i.nd, float %i.na, i64 1
  %i.nf = insertelement <4 x float> %i.ne, float %i.nb, i64 2
  %i.ng = insertelement <4 x float> %i.nf, float %i.nc, i64 3
  %i.nh = getelementptr inbounds nuw i8, ptr %i.gn, i64 28
  %i.ni = getelementptr inbounds nuw i8, ptr %i.go, i64 28
  %i.nj = getelementptr inbounds nuw i8, ptr %i.gp, i64 28
  %i.nk = getelementptr inbounds nuw i8, ptr %i.gq, i64 28
  %i.nl = load float, ptr %i.nh, align 4, !tbaa !116
  %i.nm = load float, ptr %i.ni, align 4, !tbaa !116
  %i.nn = load float, ptr %i.nj, align 4, !tbaa !116
  %i.no = load float, ptr %i.nk, align 4, !tbaa !116
  %i.np = insertelement <4 x float> poison, float %i.nl, i64 0
  %i.nq = insertelement <4 x float> %i.np, float %i.nm, i64 1
  %i.nr = insertelement <4 x float> %i.nq, float %i.nn, i64 2
  %i.ns = insertelement <4 x float> %i.nr, float %i.no, i64 3
  %i.nt = shufflevector <4 x float> %i.km, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.nu = shufflevector <4 x float> %i.ka, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.nv = shufflevector <4 x float> %i.jo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.nw = shufflevector <4 x float> %broadcast.splat146, <4 x float> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nx = shufflevector <4 x float> %i.jc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ny = shufflevector <4 x float> %i.iq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.nz = shufflevector <4 x float> %i.ie, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oa = shufflevector <4 x float> %i.hs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ob = shufflevector <4 x float> %i.hg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oc = shufflevector <4 x float> %i.gg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.od = shufflevector <4 x float> %i.gy, <4 x float> %i.ky, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oe = shufflevector <4 x float> %i.km, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.of = shufflevector <4 x float> %i.ka, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.og = shufflevector <4 x float> %i.gi, <4 x float> %broadcast.splat172, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oh = shufflevector <4 x float> %i.jo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oi = shufflevector <4 x float> %i.jc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oj = shufflevector <4 x float> %i.iq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ok = shufflevector <4 x float> %i.gh, <4 x float> %broadcast.splat158, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ol = shufflevector <4 x float> %i.ie, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.om = shufflevector <4 x float> %i.hs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.on = shufflevector <4 x float> %i.hg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oo = shufflevector <4 x float> %i.gg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.op = shufflevector <4 x float> %i.lk, <4 x float> %i.lw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %2 = shufflevector <4 x float> %i.km, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %3 = shufflevector <4 x float> %i.ka, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oq = shufflevector <4 x float> %i.jo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.or = shufflevector <4 x float> %i.jc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.os = shufflevector <4 x float> %i.iq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ot = shufflevector <4 x float> %i.ie, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ou = shufflevector <4 x float> %i.hs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ov = shufflevector <4 x float> %i.hg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ow = shufflevector <4 x float> %i.mi, <4 x float> %i.mu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ox = shufflevector <4 x float> %i.km, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oy = shufflevector <4 x float> %i.ka, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oz = shufflevector <4 x float> %i.jo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pa = shufflevector <4 x float> %i.jc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pb = shufflevector <4 x float> %i.iq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pc = shufflevector <4 x float> %i.ie, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pd = shufflevector <4 x float> %i.hs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pe = shufflevector <4 x float> %i.hg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pf = shufflevector <4 x float> %i.ng, <4 x float> %i.ns, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pg = shufflevector <8 x float> %i.nt, <8 x float> %i.oe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ph = shufflevector <8 x float> %i.nu, <8 x float> %i.of, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pi = shufflevector <8 x float> %i.et, <8 x float> %i.og, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pj = shufflevector <8 x float> %i.nv, <8 x float> %i.oh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pk = shufflevector <8 x float> %i.nw, <8 x float> %i.ez, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pl = shufflevector <8 x float> %i.nx, <8 x float> %i.oi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pm = shufflevector <8 x float> %i.ny, <8 x float> %i.oj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pn = shufflevector <8 x float> %i.ev, <8 x float> %i.ok, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.po = shufflevector <8 x float> %i.nz, <8 x float> %i.ol, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pp = shufflevector <8 x float> %i.oa, <8 x float> %i.om, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pq = shufflevector <8 x float> %i.ob, <8 x float> %i.on, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pr = shufflevector <8 x float> %i.oc, <8 x float> %i.oo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ps = shufflevector <8 x float> %i.od, <8 x float> %i.op, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pt = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.pq, <16 x float> %i.pr, <16 x float> %i.ps)
  %i.pu = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.pp, <16 x float> %i.fu, <16 x float> %i.pt)
  %i.pv = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.po, <16 x float> %i.ft, <16 x float> %i.pu)
  %i.pw = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.pm, <16 x float> %i.pn, <16 x float> %i.pv)
  %i.px = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.pl, <16 x float> %i.fs, <16 x float> %i.pw)
  %i.py = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.pj, <16 x float> %i.pk, <16 x float> %i.px)
  %i.pz = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.ph, <16 x float> %i.pi, <16 x float> %i.py)
  %i.qa = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.pg, <16 x float> %i.fr, <16 x float> %i.pz)
  %i.qb = shufflevector <8 x float> %2, <8 x float> %i.ox, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qc = shufflevector <8 x float> %3, <8 x float> %i.oy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qd = shufflevector <8 x float> %i.oq, <8 x float> %i.oz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qe = shufflevector <8 x float> %i.or, <8 x float> %i.pa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qf = shufflevector <8 x float> %i.os, <8 x float> %i.pb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qg = shufflevector <8 x float> %i.ot, <8 x float> %i.pc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qh = shufflevector <8 x float> %i.ou, <8 x float> %i.pd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qi = shufflevector <8 x float> %i.ov, <8 x float> %i.pe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qj = shufflevector <8 x float> %i.ow, <8 x float> %i.pf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qk = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.qi, <16 x float> %i.gc, <16 x float> %i.qj)
  %i.ql = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.qh, <16 x float> %i.gb, <16 x float> %i.qk)
  %i.qm = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.qg, <16 x float> %i.ga, <16 x float> %i.ql)
  %i.qn = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.qf, <16 x float> %i.fz, <16 x float> %i.qm)
  %i.qo = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.qe, <16 x float> %i.fy, <16 x float> %i.qn)
  %i.qp = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.qd, <16 x float> %i.fx, <16 x float> %i.qo)
  %i.qq = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.qc, <16 x float> %i.fw, <16 x float> %i.qp)
  %i.qr = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.qb, <16 x float> %i.fv, <16 x float> %i.qq)
  %interleaved.vec = shufflevector <16 x float> %i.qa, <16 x float> %i.qr, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.gn, align 16, !tbaa !116
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qs = icmp eq i64 %index.next, 8
  br i1 %i.qs, label %.preheader75, label %vector.body, !llvm.loop !170

.preheader75:                                     ; preds = %vector.body
  %i.qt = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 2 uses
  %broadcast.splatinsert246 = insertelement <4 x float> poison, float %i.cz, i64 0
  %broadcast.splat247 = shufflevector <4 x float> %broadcast.splatinsert246, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %wide.load250 = load <4 x float>, ptr %i.cy, align 16, !tbaa !116
  %i.qu = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %wide.load251 = load <4 x float>, ptr %i.qu, align 16, !tbaa !116
  %i.qv = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %wide.load252 = load <4 x float>, ptr %i.qv, align 16, !tbaa !116
  %i.qw = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %wide.load253 = load <4 x float>, ptr %i.qw, align 16, !tbaa !116
  %i.qx = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %wide.load254 = load <4 x float>, ptr %i.qx, align 16, !tbaa !116
  %i.qy = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %wide.load255 = load <4 x float>, ptr %i.qy, align 16, !tbaa !116
  %i.qz = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %wide.load256 = load <4 x float>, ptr %i.qz, align 16, !tbaa !116
  %i.ra = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %wide.load257 = load <4 x float>, ptr %i.ra, align 16, !tbaa !116
  %i.rb = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %wide.load250.1 = load <4 x float>, ptr %i.rb, align 16, !tbaa !116
  %i.rc = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %wide.load251.1 = load <4 x float>, ptr %i.rc, align 16, !tbaa !116
  %i.rd = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %wide.load252.1 = load <4 x float>, ptr %i.rd, align 16, !tbaa !116
  %i.re = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %wide.load253.1 = load <4 x float>, ptr %i.re, align 16, !tbaa !116
  %i.rf = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %wide.load254.1 = load <4 x float>, ptr %i.rf, align 16, !tbaa !116
  %i.rg = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %wide.load255.1 = load <4 x float>, ptr %i.rg, align 16, !tbaa !116
  %i.rh = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %wide.load256.1 = load <4 x float>, ptr %i.rh, align 16, !tbaa !116
  %i.ri = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %wide.load257.1 = load <4 x float>, ptr %i.ri, align 16, !tbaa !116
  br label %.preheader74

.preheader74:                                     ; preds = %.preheader75, %.preheader74
  %indvars.iv122 = phi i64 [ 0, %.preheader75 ], [ %indvars.iv.next123, %.preheader74 ] ; 3 uses
  %i.rj = shl nuw nsw i64 %indvars.iv122, 1
  %i.rk = or disjoint i64 %i.rj, 1                ; 7 uses
  %.idx138 = mul nuw nsw i64 %i.rk, 28
  %i.rl = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %.idx138
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !116
  %broadcast.splatinsert244 = insertelement <4 x float> poison, float %i.rm, i64 0
  %broadcast.splat245 = shufflevector <4 x float> %broadcast.splatinsert244, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.idx137 = mul nuw nsw i64 %i.rk, 24
  %i.rn = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %.idx137
  %i.ro = load float, ptr %i.rn, align 8, !tbaa !116
  %broadcast.splatinsert242 = insertelement <4 x float> poison, float %i.ro, i64 0
  %broadcast.splat243 = shufflevector <4 x float> %broadcast.splatinsert242, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.idx136 = mul nuw nsw i64 %i.rk, 20
  %i.rp = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %.idx136
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !116
  %broadcast.splatinsert240 = insertelement <4 x float> poison, float %i.rq, i64 0
  %broadcast.splat241 = shufflevector <4 x float> %broadcast.splatinsert240, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.idx135 = shl nuw nsw i64 %i.rk, 4
  %i.rr = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %.idx135
  %i.rs = load float, ptr %i.rr, align 16, !tbaa !116
  %broadcast.splatinsert238 = insertelement <4 x float> poison, float %i.rs, i64 0
  %broadcast.splat239 = shufflevector <4 x float> %broadcast.splatinsert238, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.idx134 = mul nuw nsw i64 %i.rk, 12
  %i.rt = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %.idx134
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !116
  %broadcast.splatinsert236 = insertelement <4 x float> poison, float %i.ru, i64 0
  %broadcast.splat237 = shufflevector <4 x float> %broadcast.splatinsert236, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.idx = shl nuw nsw i64 %i.rk, 3
  %i.rv = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %.idx
  %i.rw = load float, ptr %i.rv, align 8, !tbaa !116
  %broadcast.splatinsert234 = insertelement <4 x float> poison, float %i.rw, i64 0
  %broadcast.splat235 = shufflevector <4 x float> %broadcast.splatinsert234, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %i.rk
  %.pre132 = load float, ptr %.phi.trans.insert, align 4, !tbaa !116
  %broadcast.splatinsert232 = insertelement <4 x float> poison, float %.pre132, i64 0
  %broadcast.splat233 = shufflevector <4 x float> %broadcast.splatinsert232, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rx = getelementptr inbounds nuw [32 x i8], ptr %i.qt, i64 %indvars.iv122 ; 3 uses
  %wide.load = load <4 x float>, ptr %i.rx, align 16, !tbaa !116
  %i.ry = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load250, <4 x float> %broadcast.splat247, <4 x float> %wide.load)
  %i.rz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load251, <4 x float> %broadcast.splat233, <4 x float> %i.ry)
  %i.sa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load252, <4 x float> %broadcast.splat235, <4 x float> %i.rz)
  %i.sb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load253, <4 x float> %broadcast.splat237, <4 x float> %i.sa)
  %i.sc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load254, <4 x float> %broadcast.splat239, <4 x float> %i.sb)
  %i.sd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load255, <4 x float> %broadcast.splat241, <4 x float> %i.sc)
  %i.se = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load256, <4 x float> %broadcast.splat243, <4 x float> %i.sd)
  %i.sf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load257, <4 x float> %broadcast.splat245, <4 x float> %i.se)
  store <4 x float> %i.sf, ptr %i.rx, align 16, !tbaa !116
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rx, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.sg, align 16, !tbaa !116
  %i.sh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load250.1, <4 x float> %broadcast.splat247, <4 x float> %wide.load.1)
  %i.si = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load251.1, <4 x float> %broadcast.splat233, <4 x float> %i.sh)
  %i.sj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load252.1, <4 x float> %broadcast.splat235, <4 x float> %i.si)
  %i.sk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load253.1, <4 x float> %broadcast.splat237, <4 x float> %i.sj)
  %i.sl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load254.1, <4 x float> %broadcast.splat239, <4 x float> %i.sk)
  %i.sm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load255.1, <4 x float> %broadcast.splat241, <4 x float> %i.sl)
  %i.sn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load256.1, <4 x float> %broadcast.splat243, <4 x float> %i.sm)
  %i.so = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load257.1, <4 x float> %broadcast.splat245, <4 x float> %i.sn)
  store <4 x float> %i.so, ptr %i.sg, align 16, !tbaa !116
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next123, 8
  br i1 %exitcond125.not, label %.preheader, label %.preheader74, !llvm.loop !171

.preheader:                                       ; preds = %.preheader74
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 184
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %.preheader
  %index262 = phi i64 [ 0, %.preheader ], [ %index.next264, %vector.body261 ] ; 3 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %index262
  %wide.load263 = load <4 x float>, ptr %i.sq, align 16, !tbaa !116
  %i.sr = fpext <4 x float> %wide.load263 to <4 x double>
  %i.ss = fadd <4 x double> %i.sr, splat (double 5.000000e-01)
  %i.st = fptosi <4 x double> %i.ss to <4 x i32>
  %i.su = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.st, <4 x i32> zeroinitializer)
  %i.sv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.su, <4 x i32> splat (i32 65535))
  %i.sw = trunc nuw <4 x i32> %i.sv to <4 x i16>
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.sp, i64 %index262
  store <4 x i16> %i.sw, ptr %i.sx, align 2, !tbaa !86
  %index.next264 = add nuw i64 %index262, 4       ; 2 uses
  %i.sy = icmp eq i64 %index.next264, 64
  br i1 %i.sy, label %middle.block265, label %vector.body261, !llvm.loop !172

middle.block265:                                  ; preds = %vector.body261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15pentax_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x [15 x i16]], align 16        ; 6 uses
  %i.b = alloca [4097 x i16], align 16            ; 6 uses
  %i.c = alloca [2 x [2 x i16]], align 8          ; 4 uses
  %i.d = alloca [2 x i16], align 2                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381768
  %i.h = load i64, ptr %i.g, align 8, !tbaa !117
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.h, i32 noundef 0) ; 0 uses
  %i.m = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.n = add i16 %i.m, 12
  %i.o = and i16 %i.n, 15                         ; 4 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 12, i32 noundef 1) ; 0 uses
  %.not97 = icmp eq i16 %i.o, 0
  br i1 %.not97, label %._crit_edge81, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i16 %i.o to i64
  br label %.lr.ph

.lr.ph75:                                         ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %wide.trip.count106 = zext nneg i16 %i.o to i64
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.v = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.v, ptr %i.w, align 2, !tbaa !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_0
