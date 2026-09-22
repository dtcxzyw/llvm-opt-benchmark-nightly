Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/decoders_dcraw?download=true
inline.NumInlined: 216
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN6LibRaw10ljpeg_idctEP5jhead:bb.a
bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = add i32 %i.ae, -16842752
  %or.cond.i = icmp ult i32 %i.af, -16842751
  br i1 %or.cond.i, label %_ZN6LibRaw10ljpeg_diffEPt.exit, label %.split.i

.split.i:                                         ; preds = %bb.d, %bb.c
  %i.ag = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ab, ptr noundef null) ; 2 uses
  %i.ah = add nsw i32 %i.ab, -1
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = and i32 %i.ag, %i.ai
  %i.ak = icmp eq i32 %i.aj, 0
  %notmask.i = shl nsw i32 -1, %i.ab
  %.neg.i = add nsw i32 %notmask.i, 1
  %i.al = select i1 %i.ak, i32 %.neg.i, i32 0
  %.0.i = add nsw i32 %i.al, %i.ag
  br label %_ZN6LibRaw10ljpeg_diffEPt.exit

_ZN6LibRaw10ljpeg_diffEPt.exit:                   ; preds = %bb.d, %.split.i
  %.011.i = phi i32 [ %.0.i, %.split.i ], [ -32768, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load i16, ptr %i.am, align 8, !tbaa !87
  %i.ao = zext i16 %i.an to i32
  %i.ap = mul nsw i32 %.011.i, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !96
  %i.as = add nsw i32 %i.ap, %i.ar                ; 2 uses
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !96
  %i.at = sitofp i32 %i.as to float
  store float %i.at, ptr %i.a, align 16, !tbaa !117
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 440
  br label %bb.e

bb.e:                                             ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit, %bb.f
  %.06482 = phi i32 [ 1, %_ZN6LibRaw10ljpeg_diffEPt.exit ], [ %i.bv, %bb.f ]
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !90 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !87
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
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !87
  %i.bo = zext i16 %i.bn to i32
  %i.bp = mul nsw i32 %.0, %i.bo
  %i.bq = sitofp i32 %i.bp to float
  %i.br = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE6zigzag, i64 %i.bl
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !89
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bt
  store float %i.bq, ptr %i.bu, align 4, !tbaa !117
  %i.bv = add nuw nsw i32 %i.be, 1
  %i.bw = icmp slt i32 %i.be, 63
  br i1 %i.bw, label %bb.e, label %.preheader79.preheader, !llvm.loop !167

.preheader79.preheader:                           ; preds = %bb.e, %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.by = load <4 x float>, ptr %i.bx, align 16, !tbaa !117
  %i.bz = fmul <4 x float> %i.by, splat (float f0x3F3504F3)
  store <4 x float> %i.bz, ptr %i.bx, align 16, !tbaa !117
  %i.ca = load <4 x float>, ptr %i.a, align 16, !tbaa !117
  %i.cb = fmul <4 x float> %i.ca, <float f0x3F3504F3, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.cc = fmul <4 x float> %i.cb, splat (float f0x3F3504F3)
  store <4 x float> %i.cc, ptr %i.a, align 16, !tbaa !117
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 16, !tbaa !117
  %i.cf = fmul float %i.ce, f0x3F3504F3
  store float %i.cf, ptr %i.cd, align 16, !tbaa !117
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 16, !tbaa !117
  %i.ci = fmul float %i.ch, f0x3F3504F3
  store float %i.ci, ptr %i.cg, align 16, !tbaa !117
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 16, !tbaa !117
  %i.cl = fmul float %i.ck, f0x3F3504F3
  store float %i.cl, ptr %i.cj, align 16, !tbaa !117
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 16, !tbaa !117
  %i.co = fmul float %i.cn, f0x3F3504F3
  store float %i.co, ptr %i.cm, align 16, !tbaa !117
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 16, !tbaa !117
  %i.cr = fmul float %i.cq, f0x3F3504F3
  store float %i.cr, ptr %i.cp, align 16, !tbaa !117
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 16, !tbaa !117
  %i.cu = fmul float %i.ct, f0x3F3504F3
  store float %i.cu, ptr %i.cs, align 16, !tbaa !117
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 16, !tbaa !117
  %i.cx = fmul float %i.cw, f0x3F3504F3
  store float %i.cx, ptr %i.cv, align 16, !tbaa !117
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 4 uses
  %.pre = load float, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 16, !tbaa !117
  %.pre130 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 60), align 4, !tbaa !117 ; 2 uses
  %.pre131 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 120), align 8, !tbaa !117
  %i.cz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 28), align 4, !tbaa !117 ; 2 uses
  %i.da = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 48), align 16, !tbaa !117
  %i.db = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 72), align 8, !tbaa !117 ; 2 uses
  %i.dc = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 4), align 4, !tbaa !117 ; 4 uses
  %i.dd = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 20), align 4 ; 4 uses
  %i.de = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 36), align 4 ; 3 uses
  %i.df = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 80), align 16 ; 3 uses
  %i.dg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 100), align 4, !tbaa !117
  %i.dh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 140), align 4, !tbaa !117 ; 2 uses
  %i.di = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 56), align 8, !tbaa !117
  %i.dj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 112), align 16, !tbaa !117
  %i.dk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 168), align 8, !tbaa !117
  %i.dl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 196), align 4, !tbaa !117
  %i.dm = load float, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 16, !tbaa !117 ; 3 uses
  %i.dn = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 144), align 16
  %i.do = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 252), align 4
  %i.dp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 44), align 4, !tbaa !117
  %i.dq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 88), align 8, !tbaa !117
  %i.dr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 132), align 4, !tbaa !117
  %i.ds = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 52), align 4, !tbaa !117
  %i.dt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 156), align 4, !tbaa !117
  %i.du = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 208), align 16, !tbaa !117
  %i.dv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 60), align 4, !tbaa !117 ; 3 uses
  %i.dw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 120), align 8, !tbaa !117 ; 2 uses
  %i.dx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 240), align 16, !tbaa !117
  %i.dy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 300), align 4, !tbaa !117
  %i.dz = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 176), align 16 ; 3 uses
  %i.ea = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 216), align 8, !tbaa !117 ; 2 uses
  %i.eb = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 104), align 8 ; 2 uses
  %i.ec = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 260), align 4, !tbaa !117 ; 2 uses
  %i.ed = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 308), align 4 ; 2 uses
  %i.ee = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 360), align 8 ; 2 uses
  %i.ef = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 420), align 4, !tbaa !117
  %i.eg = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.dh, i64 2
  %i.ei = insertelement <4 x float> %i.eh, float %i.dl, i64 3
  %i.ej = insertelement <4 x float> poison, float %i.db, i64 1
  %i.ek = insertelement <4 x float> %i.ej, float %i.dk, i64 3
  %i.el = insertelement <4 x float> poison, float %i.dg, i64 2
  %i.em = insertelement <4 x float> %i.el, float %i.dh, i64 3
  %i.en = insertelement <4 x float> poison, float %i.da, i64 1
  %i.eo = insertelement <4 x float> %i.en, float %i.dj, i64 3
  %i.ep = insertelement <4 x float> poison, float %i.di, i64 3
  %i.eq = shufflevector <4 x float> %i.dc, <4 x float> %i.dd, <4 x i32> <i32 0, i32 2, i32 4, i32 poison>
  %i.er = insertelement <4 x float> %i.eq, float %i.cz, i64 3 ; 2 uses
  %i.es = shufflevector <4 x float> %i.ei, <4 x float> %i.df, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.et = shufflevector <4 x float> %i.ek, <4 x float> %i.dd, <4 x i32> <i32 5, i32 1, i32 poison, i32 3> ; 2 uses
  %i.eu = shufflevector <4 x float> %i.dd, <4 x float> %i.em, <4 x i32> <i32 0, i32 poison, i32 6, i32 7> ; 2 uses
  %i.ev = shufflevector <4 x float> %i.eo, <4 x float> %i.dc, <4 x i32> <i32 7, i32 1, i32 poison, i32 3>
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.ex = shufflevector <4 x float> %i.dc, <4 x float> %i.de, <4 x i32> <i32 2, i32 4, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 poison, i32 5> ; 2 uses
  %i.ez = shufflevector <4 x float> %i.ep, <4 x float> %i.dc, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> %i.dd, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> %i.de, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.fc = insertelement <4 x float> %i.do, float %i.ef, i64 3
  %i.fd = insertelement <4 x float> poison, float %i.dy, i64 3
  %i.fe = insertelement <4 x float> %i.dn, float %i.du, i64 2
  %i.ff = insertelement <4 x float> %i.fe, float %i.dx, i64 3
  %i.fg = insertelement <4 x float> poison, float %i.dr, i64 1
  %i.fh = insertelement <4 x float> %i.fg, float %i.dt, i64 2
  %i.fi = insertelement <4 x float> poison, float %i.db, i64 0
  %i.fj = insertelement <4 x float> %i.fi, float %i.dq, i64 1
  %i.fk = insertelement <4 x float> %i.fj, float %i.dw, i64 3
  %i.fl = insertelement <4 x float> %i.de, float %i.dp, i64 1
  %i.fm = insertelement <4 x float> %i.fl, float %i.ds, i64 2
  %i.fn = insertelement <4 x float> %i.fm, float %i.dv, i64 3 ; 2 uses
  %i.fo = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fq = shufflevector <4 x float> %i.fc, <4 x float> %i.ed, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.fs = shufflevector <2 x float> %i.ea, <2 x float> %i.ec, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.fv = shufflevector <4 x float> %i.fd, <4 x float> %i.dz, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.fw = shufflevector <2 x float> %i.ea, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fx = shufflevector <4 x float> %i.fv, <4 x float> %i.fw, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.fy = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fz = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.ga = shufflevector <4 x float> %i.ff, <4 x float> %i.dz, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %i.gb = shufflevector <4 x float> %i.fh, <4 x float> %i.eb, <4 x i32> <i32 5, i32 1, i32 2, i32 poison>
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.gd = shufflevector <4 x float> %i.fk, <4 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gf = load <8 x float>, ptr %i.a, align 16, !tbaa !117 ; 10 uses
  %2 = shufflevector <8 x float> %i.gf, <8 x float> poison, <8 x i32> <i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = load <4 x float>, ptr %i.cy, align 16, !tbaa !117
  %i.gh = shufflevector <8 x float> %i.gf, <8 x float> poison, <4 x i32> zeroinitializer
  %i.gi = insertelement <4 x float> poison, float %.pre, i64 0
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gh, <4 x float> %i.gj, <4 x float> %i.gg)
  %i.gl = shufflevector <8 x float> %i.gf, <8 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> %i.er, <4 x float> %i.gk)
  %i.gn = shufflevector <8 x float> %i.gf, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.go = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> %i.fb, <4 x float> %i.gm)
  %i.gp = shufflevector <8 x float> %i.gf, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gq = insertelement <4 x float> %i.ey, float %.pre130, i64 2
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gp, <4 x float> %i.gq, <4 x float> %i.go)
  %i.gs = shufflevector <8 x float> %i.gf, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.gt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.ew, <4 x float> %i.gr)
  %i.gu = shufflevector <8 x float> %i.gf, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.gv = insertelement <4 x float> %i.eu, float %.pre130, i64 1
  %i.gw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gu, <4 x float> %i.gv, <4 x float> %i.gt)
  %i.gx = shufflevector <8 x float> %i.gf, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.gy = insertelement <4 x float> %i.et, float %.pre131, i64 2
  %i.gz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> %i.gy, <4 x float> %i.gw)
  %i.ha = shufflevector <8 x float> %i.gf, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.hb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %i.es, <4 x float> %i.gz)
  store <4 x float> %i.hb, ptr %i.cy, align 16, !tbaa !117
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %i.hd = load <6 x float>, ptr %i.a, align 16, !tbaa !117 ; 6 uses
  %i.he = load <2 x float>, ptr %i.ge, align 8, !tbaa !117 ; 2 uses
  %i.hf = load <4 x float>, ptr %i.hc, align 16, !tbaa !117
  %i.hg = shufflevector <6 x float> %i.hd, <6 x float> poison, <4 x i32> zeroinitializer
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %i.fp, <4 x float> %i.hf)
  %i.hi = shufflevector <6 x float> %i.hd, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hi, <4 x float> %i.fn, <4 x float> %i.hh)
  %i.hk = shufflevector <6 x float> %i.hd, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hk, <4 x float> %i.gd, <4 x float> %i.hj)
  %i.hm = shufflevector <6 x float> %i.hd, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> %i.gc, <4 x float> %i.hl)
  %i.ho = shufflevector <6 x float> %i.hd, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.hp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %i.ga, <4 x float> %i.hn)
  %i.hq = shufflevector <6 x float> %i.hd, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.hr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hq, <4 x float> %i.fz, <4 x float> %i.hp)
  %i.hs = shufflevector <8 x float> %i.gf, <8 x float> poison, <2 x i32> <i32 6, i32 poison>
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> %i.he, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.hu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ht, <4 x float> %i.fu, <4 x float> %i.hr)
  %3 = shufflevector <2 x float> %i.he, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %4 = shufflevector <8 x float> %2, <8 x float> %3, <4 x i32> <i32 0, i32 9, i32 9, i32 9>
  %i.hv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %i.fr, <4 x float> %i.hu)
  store <4 x float> %i.hv, ptr %i.hc, align 16, !tbaa !117
  %i.hw = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hy = insertelement <4 x float> %i.ey, float %i.dv, i64 2
  %i.hz = insertelement <4 x float> %i.eu, float %i.dv, i64 1
  %i.ia = insertelement <4 x float> %i.et, float %i.dw, i64 2
  br label %.preheader77

.preheader77:                                     ; preds = %.preheader79.preheader, %.preheader77
  %indvars.iv110 = phi i64 [ 1, %.preheader79.preheader ], [ %indvars.iv.next111, %.preheader77 ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv110 ; 3 uses
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %i.cy, i64 %indvars.iv110 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.ie = load <8 x float>, ptr %i.ib, align 16, !tbaa !117 ; 10 uses
  %5 = shufflevector <8 x float> %i.ie, <8 x float> poison, <8 x i32> <i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.if = load <4 x float>, ptr %i.ic, align 16, !tbaa !117
  %i.ig = shufflevector <8 x float> %i.ie, <8 x float> poison, <4 x i32> zeroinitializer
  %i.ih = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ig, <4 x float> %i.hx, <4 x float> %i.if)
  %i.ii = shufflevector <8 x float> %i.ie, <8 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ij = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ii, <4 x float> %i.er, <4 x float> %i.ih)
  %i.ik = shufflevector <8 x float> %i.ie, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.il = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ik, <4 x float> %i.fb, <4 x float> %i.ij)
  %i.im = shufflevector <8 x float> %i.ie, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.in = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> %i.hy, <4 x float> %i.il)
  %i.io = shufflevector <8 x float> %i.ie, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ip = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.io, <4 x float> %i.ew, <4 x float> %i.in)
  %i.iq = shufflevector <8 x float> %i.ie, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ir = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iq, <4 x float> %i.hz, <4 x float> %i.ip)
  %i.is = shufflevector <8 x float> %i.ie, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.it = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.is, <4 x float> %i.ia, <4 x float> %i.ir)
  %i.iu = shufflevector <8 x float> %i.ie, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.iv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iu, <4 x float> %i.es, <4 x float> %i.it)
  store <4 x float> %i.iv, ptr %i.ic, align 16, !tbaa !117
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %i.ix = load <6 x float>, ptr %i.ib, align 16, !tbaa !117 ; 6 uses
  %i.iy = load <2 x float>, ptr %i.id, align 8, !tbaa !117 ; 2 uses
  %i.iz = load <4 x float>, ptr %i.iw, align 16, !tbaa !117
  %i.ja = shufflevector <6 x float> %i.ix, <6 x float> poison, <4 x i32> zeroinitializer
  %i.jb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ja, <4 x float> %i.fp, <4 x float> %i.iz)
  %i.jc = shufflevector <6 x float> %i.ix, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jc, <4 x float> %i.fn, <4 x float> %i.jb)
  %i.je = shufflevector <6 x float> %i.ix, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.jf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %i.gd, <4 x float> %i.jd)
  %i.jg = shufflevector <6 x float> %i.ix, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.jh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jg, <4 x float> %i.gc, <4 x float> %i.jf)
  %i.ji = shufflevector <6 x float> %i.ix, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.jj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ji, <4 x float> %i.ga, <4 x float> %i.jh)
  %i.jk = shufflevector <6 x float> %i.ix, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.jl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jk, <4 x float> %i.fz, <4 x float> %i.jj)
  %i.jm = shufflevector <8 x float> %i.ie, <8 x float> poison, <2 x i32> <i32 6, i32 poison>
  %i.jn = shufflevector <2 x float> %i.jm, <2 x float> %i.iy, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.jo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.fu, <4 x float> %i.jl)
  %6 = shufflevector <2 x float> %i.iy, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <8 x float> %5, <8 x float> %6, <4 x i32> <i32 0, i32 9, i32 9, i32 9>
  %i.jp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %7, <4 x float> %i.fr, <4 x float> %i.jo)
  store <4 x float> %i.jp, ptr %i.iw, align 16, !tbaa !117
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, 8
  br i1 %exitcond113.not, label %.preheader75, label %.preheader77, !llvm.loop !168

.preheader75:                                     ; preds = %.preheader77
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 2 uses
  %broadcast.splatinsert151 = insertelement <4 x float> poison, float %i.dm, i64 0
  %broadcast.splat152 = shufflevector <4 x float> %broadcast.splatinsert151, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %wide.load153 = load <4 x float>, ptr %i.cy, align 16, !tbaa !117
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %wide.load154 = load <4 x float>, ptr %i.jr, align 16, !tbaa !117
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %wide.load155 = load <4 x float>, ptr %i.js, align 16, !tbaa !117
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %wide.load156 = load <4 x float>, ptr %i.jt, align 16, !tbaa !117
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %wide.load157 = load <4 x float>, ptr %i.ju, align 16, !tbaa !117
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %wide.load158 = load <4 x float>, ptr %i.jv, align 16, !tbaa !117
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %wide.load159 = load <4 x float>, ptr %i.jw, align 16, !tbaa !117
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %wide.load160 = load <4 x float>, ptr %i.jx, align 16, !tbaa !117
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %wide.load153.1 = load <4 x float>, ptr %i.jy, align 16, !tbaa !117
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %wide.load154.1 = load <4 x float>, ptr %i.jz, align 16, !tbaa !117
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %wide.load155.1 = load <4 x float>, ptr %i.ka, align 16, !tbaa !117
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %wide.load156.1 = load <4 x float>, ptr %i.kb, align 16, !tbaa !117
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %wide.load157.1 = load <4 x float>, ptr %i.kc, align 16, !tbaa !117
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %wide.load158.1 = load <4 x float>, ptr %i.kd, align 16, !tbaa !117
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %wide.load159.1 = load <4 x float>, ptr %i.ke, align 16, !tbaa !117
  %i.kf = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %wide.load160.1 = load <4 x float>, ptr %i.kf, align 16, !tbaa !117
  br label %.preheader74

.preheader74:                                     ; preds = %.preheader75, %.preheader74
  %indvars.iv122 = phi i64 [ 0, %.preheader75 ], [ %indvars.iv.next123, %.preheader74 ] ; 3 uses
  %i.kg = shl nuw nsw i64 %indvars.iv122, 1
  %i.kh = or disjoint i64 %i.kg, 1                ; 7 uses
  %.idx138 = mul nuw nsw i64 %i.kh, 28
  %i.ki = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %.idx138
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !117
  %broadcast.splatinsert149 = insertelement <4 x float> poison, float %i.kj, i64 0
  %broadcast.splat150 = shufflevector <4 x float> %broadcast.splatinsert149, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.idx137 = mul nuw nsw i64 %i.kh, 24
  %i.kk = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %.idx137
  %i.kl = load float, ptr %i.kk, align 8, !tbaa !117
  %broadcast.splatinsert147 = insertelement <4 x float> poison, float %i.kl, i64 0
  %broadcast.splat148 = shufflevector <4 x float> %broadcast.splatinsert147, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.idx136 = mul nuw nsw i64 %i.kh, 20
  %i.km = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %.idx136
  %i.kn = load float, ptr %i.km, align 4, !tbaa !117
  %broadcast.splatinsert145 = insertelement <4 x float> poison, float %i.kn, i64 0
  %broadcast.splat146 = shufflevector <4 x float> %broadcast.splatinsert145, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.idx135 = shl nuw nsw i64 %i.kh, 4
  %i.ko = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %.idx135
  %i.kp = load float, ptr %i.ko, align 16, !tbaa !117
  %broadcast.splatinsert143 = insertelement <4 x float> poison, float %i.kp, i64 0
  %broadcast.splat144 = shufflevector <4 x float> %broadcast.splatinsert143, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.idx134 = mul nuw nsw i64 %i.kh, 12
  %i.kq = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %.idx134
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !117
  %broadcast.splatinsert141 = insertelement <4 x float> poison, float %i.kr, i64 0
  %broadcast.splat142 = shufflevector <4 x float> %broadcast.splatinsert141, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.idx = shl nuw nsw i64 %i.kh, 3
  %i.ks = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %.idx
  %i.kt = load float, ptr %i.ks, align 8, !tbaa !117
  %broadcast.splatinsert139 = insertelement <4 x float> poison, float %i.kt, i64 0
  %broadcast.splat140 = shufflevector <4 x float> %broadcast.splatinsert139, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %i.kh
  %.pre132 = load float, ptr %.phi.trans.insert, align 4, !tbaa !117
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.pre132, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ku = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %indvars.iv122 ; 3 uses
  %wide.load = load <4 x float>, ptr %i.ku, align 16, !tbaa !117
  %i.kv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load153, <4 x float> %broadcast.splat152, <4 x float> %wide.load)
  %i.kw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load154, <4 x float> %broadcast.splat, <4 x float> %i.kv)
  %i.kx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load155, <4 x float> %broadcast.splat140, <4 x float> %i.kw)
  %i.ky = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load156, <4 x float> %broadcast.splat142, <4 x float> %i.kx)
  %i.kz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load157, <4 x float> %broadcast.splat144, <4 x float> %i.ky)
  %i.la = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load158, <4 x float> %broadcast.splat146, <4 x float> %i.kz)
  %i.lb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load159, <4 x float> %broadcast.splat148, <4 x float> %i.la)
  %i.lc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load160, <4 x float> %broadcast.splat150, <4 x float> %i.lb)
  store <4 x float> %i.lc, ptr %i.ku, align 16, !tbaa !117
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.ld, align 16, !tbaa !117
  %i.le = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load153.1, <4 x float> %broadcast.splat152, <4 x float> %wide.load.1)
  %i.lf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load154.1, <4 x float> %broadcast.splat, <4 x float> %i.le)
  %i.lg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load155.1, <4 x float> %broadcast.splat140, <4 x float> %i.lf)
  %i.lh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load156.1, <4 x float> %broadcast.splat142, <4 x float> %i.lg)
  %i.li = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load157.1, <4 x float> %broadcast.splat144, <4 x float> %i.lh)
  %i.lj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load158.1, <4 x float> %broadcast.splat146, <4 x float> %i.li)
  %i.lk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load159.1, <4 x float> %broadcast.splat148, <4 x float> %i.lj)
  %i.ll = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load160.1, <4 x float> %broadcast.splat150, <4 x float> %i.lk)
  store <4 x float> %i.ll, ptr %i.ld, align 16, !tbaa !117
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next123, 8
  br i1 %exitcond125.not, label %.preheader, label %.preheader74, !llvm.loop !169

.preheader:                                       ; preds = %.preheader74
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 184
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %.preheader
  %index163 = phi i64 [ 0, %.preheader ], [ %index.next165, %vector.body162 ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %index163
  %wide.load164 = load <4 x float>, ptr %i.ln, align 16, !tbaa !117
  %i.lo = fpext <4 x float> %wide.load164 to <4 x double>
  %i.lp = fadd <4 x double> %i.lo, splat (double 5.000000e-01)
  %i.lq = fptosi <4 x double> %i.lp to <4 x i32>
  %i.lr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lq, <4 x i32> zeroinitializer)
  %i.ls = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.lr, <4 x i32> splat (i32 65535))
  %i.lt = trunc nuw <4 x i32> %i.ls to <4 x i16>
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %index163
  store <4 x i16> %i.lt, ptr %i.lu, align 2, !tbaa !87
  %index.next165 = add nuw i64 %index163, 4       ; 2 uses
  %i.lv = icmp eq i64 %index.next165, 64
  br i1 %i.lv, label %middle.block166, label %vector.body162, !llvm.loop !170

middle.block166:                                  ; preds = %vector.body162
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381768
  %i.h = load i64, ptr %i.g, align 8, !tbaa !118
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.h, i32 noundef 0) ; 0 uses
  %i.m = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.n = add i16 %i.m, 12
  %i.o = and i16 %i.n, 15                         ; 4 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !84
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
  store i16 %i.v, ptr %i.w, align 2, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph75, label %.lr.ph, !llvm.loop !172

.lr.ph80:                                         ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %wide.trip.count116 = zext nneg i16 %i.o to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph75, %bb.b
  %indvars.iv103 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next104, %bb.b ] ; 2 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv103
end_hunk_0
