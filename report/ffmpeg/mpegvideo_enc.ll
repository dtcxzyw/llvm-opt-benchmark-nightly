Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideo_enc?download=true
inline.NumInlined: 128
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 125
begin_hunk_0_@dct_quantize_refine:bb.a
  %i.ch = extractelement <4 x float> %i.bu, i64 2
  %i.ci = tail call i64 @llvm.lrint.i64.f32(float %i.ch)
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = zext i8 %i.cg to i64
  %i.cl = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  store i16 %i.cj, ptr %i.cn, align 2, !tbaa !53
  %i.co = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.cp = extractelement <4 x float> %i.bu, i64 3
  %i.cq = tail call i64 @llvm.lrint.i64.f32(float %i.cp)
  %i.cr = trunc i64 %i.cq to i16
  %i.cs = zext i8 %i.co to i64
  %i.ct = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  store i16 %i.cr, ptr %i.cv, align 2, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %bb.c, label %.preheader.i, !llvm.loop !530

bb.c:                                             ; preds = %.preheader.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next36.i, 8
  br i1 %exitcond38.not.i, label %bb.d, label %.preheader27.i, !llvm.loop !531

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 8
  br i1 %exitcond42.not.i, label %build_basis.exit, label %.preheader28.i, !llvm.loop !532

build_basis.exit:                                 ; preds = %bb.d, %bb.a
  %i.cw = shl nsw i32 %5, 1                       ; 4 uses
  %i.cx = add nsw i32 %5, -1
  %i.cy = or i32 %i.cx, 1                         ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3116
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !77
  %.not = icmp eq i32 %i.da, 0                    ; 2 uses
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %build_basis.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dc = load ptr, ptr %i.db, align 16, !tbaa !80 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.df = load i32, ptr %i.de, align 4, !tbaa !81
  %.not422 = icmp eq i32 %i.df, 0
  br i1 %.not422, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dg = icmp slt i32 %4, 4
  %i.dh = load i16, ptr %1, align 2, !tbaa !53
  %i.di = zext i16 %i.dh to i32                   ; 2 uses
  br i1 %i.dg, label %.thread446, label %.thread

.thread446:                                       ; preds = %bb.f
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !538
  %i.dl = shl i32 %i.dk, 3                        ; 2 uses
  %i.dm = mul i32 %i.dl, %i.di
  br label %.sink.split

.thread:                                          ; preds = %bb.f
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !261
  %i.dp = shl i32 %i.do, 3                        ; 2 uses
  %i.dq = mul i32 %i.dp, %i.di
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.dr = load i16, ptr %1, align 2, !tbaa !53
  %i.ds = sext i16 %i.dr to i32
  %i.dt = shl nsw i32 %i.ds, 3                    ; 2 uses
  %i.du = icmp sgt i32 %4, 3
  br i1 %i.du, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %.thread, %bb.g
  %i.dv = phi i32 [ %i.dq, %.thread ], [ %i.dt, %bb.g ] ; 2 uses
  %i.dw = phi i32 [ %i.dp, %.thread ], [ 8, %bb.g ] ; 2 uses
  %.0399444 = phi i32 [ %i.cy, %.thread ], [ 0, %bb.g ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 6160
  %i.dy = load ptr, ptr %i.dx, align 16, !tbaa !90 ; 2 uses
  %.not423 = icmp eq ptr %i.dy, null
  br i1 %.not423, label %.sink.split, label %vector.ph

bb.i:                                             ; preds = %build_basis.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !83
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h, %.thread446, %bb.i
  %.sink567 = phi i64 [ 6176, %bb.i ], [ 6144, %.thread446 ], [ 6144, %bb.h ], [ 6144, %bb.g ]
  %.sink.ph = phi i64 [ 6184, %bb.i ], [ 6152, %.thread446 ], [ 6152, %bb.h ], [ 6152, %bb.g ]
  %.0408.ph = phi ptr [ %i.ea, %bb.i ], [ %i.dc, %.thread446 ], [ %i.dc, %bb.h ], [ %i.dc, %bb.g ]
  %.0407.ph = phi ptr [ %i.eb, %bb.i ], [ %i.dd, %.thread446 ], [ %i.dd, %bb.h ], [ %i.dd, %bb.g ]
  %.1400.ph = phi i32 [ %i.cy, %bb.i ], [ %i.cy, %.thread446 ], [ %.0399444, %bb.h ], [ 0, %bb.g ]
  %.0398.ph = phi i32 [ 0, %bb.i ], [ 1, %.thread446 ], [ 1, %bb.h ], [ 1, %bb.g ]
  %.0387.ph = phi i32 [ 0, %bb.i ], [ %i.dm, %.thread446 ], [ %i.dv, %bb.h ], [ %i.dt, %bb.g ]
  %.1370.ph = phi i32 [ 1, %bb.i ], [ %i.dl, %.thread446 ], [ %i.dw, %bb.h ], [ 8, %bb.g ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %.sink567
  %i.ed = load ptr, ptr %i.ec, align 16, !tbaa !91
  br label %vector.ph

vector.ph:                                        ; preds = %.sink.split, %bb.h
  %.sink = phi i64 [ 6168, %bb.h ], [ %.sink.ph, %.sink.split ]
  %.0408 = phi ptr [ %i.dc, %bb.h ], [ %.0408.ph, %.sink.split ]
  %.0407 = phi ptr [ %i.dd, %bb.h ], [ %.0407.ph, %.sink.split ] ; 8 uses
  %.1400 = phi i32 [ %.0399444, %bb.h ], [ %.1400.ph, %.sink.split ] ; 5 uses
  %.0398 = phi i32 [ 1, %bb.h ], [ %.0398.ph, %.sink.split ] ; 7 uses
  %.0387 = phi i32 [ %i.dv, %bb.h ], [ %.0387.ph, %.sink.split ]
  %.0386 = phi ptr [ %i.dy, %bb.h ], [ %i.ed, %.sink.split ] ; 13 uses
  %.1370 = phi i32 [ %i.dw, %bb.h ], [ %.1370.ph, %.sink.split ] ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0385 = load ptr, ptr %i.ee, align 8, !tbaa !91 ; 13 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eg = sext i32 %4 to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !54 ; 3 uses
  %i.ej = add i32 %.0387, 32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <8 x i16>, ptr %3, align 2, !tbaa !53
  %wide.load568 = load <8 x i16>, ptr %i.ek, align 2, !tbaa !53
  %i.el = sext <8 x i16> %wide.load to <8 x i32>
  %i.em = sext <8 x i16> %wide.load568 to <8 x i32>
  %i.en = shl nsw <8 x i32> %i.el, splat (i32 6)
  %i.eo = shl nsw <8 x i32> %i.em, splat (i32 6)
  %i.ep = sub <8 x i32> %broadcast.splat, %i.en
  %i.eq = sub <8 x i32> %broadcast.splat, %i.eo
  %i.er = trunc <8 x i32> %i.ep to <8 x i16>
  %i.es = trunc <8 x i32> %i.eq to <8 x i16>
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <8 x i16> %i.er, ptr %i.a, align 16, !tbaa !53
  store <8 x i16> %i.es, ptr %i.et, align 16, !tbaa !53
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.eu, align 2, !tbaa !53
  %wide.load568.1 = load <8 x i16>, ptr %i.ev, align 2, !tbaa !53
  %i.ew = sext <8 x i16> %wide.load.1 to <8 x i32>
  %i.ex = sext <8 x i16> %wide.load568.1 to <8 x i32>
  %i.ey = shl nsw <8 x i32> %i.ew, splat (i32 6)
  %i.ez = shl nsw <8 x i32> %i.ex, splat (i32 6)
  %i.fa = sub <8 x i32> %broadcast.splat, %i.ey
  %i.fb = sub <8 x i32> %broadcast.splat, %i.ez
  %i.fc = trunc <8 x i32> %i.fa to <8 x i16>
  %i.fd = trunc <8 x i32> %i.fb to <8 x i16>
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <8 x i16> %i.fc, ptr %i.fe, align 16, !tbaa !53
  store <8 x i16> %i.fd, ptr %i.ff, align 16, !tbaa !53
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 80
  %wide.load.2 = load <8 x i16>, ptr %i.fg, align 2, !tbaa !53
  %wide.load568.2 = load <8 x i16>, ptr %i.fh, align 2, !tbaa !53
  %i.fi = sext <8 x i16> %wide.load.2 to <8 x i32>
  %i.fj = sext <8 x i16> %wide.load568.2 to <8 x i32>
  %i.fk = shl nsw <8 x i32> %i.fi, splat (i32 6)
  %i.fl = shl nsw <8 x i32> %i.fj, splat (i32 6)
  %i.fm = sub <8 x i32> %broadcast.splat, %i.fk
  %i.fn = sub <8 x i32> %broadcast.splat, %i.fl
  %i.fo = trunc <8 x i32> %i.fm to <8 x i16>
  %i.fp = trunc <8 x i32> %i.fn to <8 x i16>
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <8 x i16> %i.fo, ptr %i.fq, align 16, !tbaa !53
  store <8 x i16> %i.fp, ptr %i.fr, align 16, !tbaa !53
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.load.3 = load <8 x i16>, ptr %i.fs, align 2, !tbaa !53
  %wide.load568.3 = load <8 x i16>, ptr %i.ft, align 2, !tbaa !53
  %i.fu = sext <8 x i16> %wide.load.3 to <8 x i32>
  %i.fv = sext <8 x i16> %wide.load568.3 to <8 x i32>
  %i.fw = shl nsw <8 x i32> %i.fu, splat (i32 6)
  %i.fx = shl nsw <8 x i32> %i.fv, splat (i32 6)
  %i.fy = sub <8 x i32> %broadcast.splat, %i.fw
  %i.fz = sub <8 x i32> %broadcast.splat, %i.fx
  %i.ga = trunc <8 x i32> %i.fy to <8 x i16>
  %i.gb = trunc <8 x i32> %i.fz to <8 x i16>
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <8 x i16> %i.ga, ptr %i.gc, align 16, !tbaa !53
  store <8 x i16> %i.gb, ptr %i.gd, align 16, !tbaa !53
  br label %vector.body570

vector.body570:                                   ; preds = %vector.ph, %vector.body570
  %index571 = phi i64 [ %index.next575, %vector.body570 ], [ 0, %vector.ph ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.gs, %vector.body570 ], [ zeroinitializer, %vector.ph ]
  %vec.phi572 = phi <4 x i32> [ %i.gt, %vector.body570 ], [ zeroinitializer, %vector.ph ]
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index571 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  %wide.load573.a = load <4 x i16>, ptr %i.ge, align 2, !tbaa !53
  %wide.load574 = load <4 x i16>, ptr %i.gf, align 2, !tbaa !53
  %i.gg = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load573.a, i1 false)
  %i.gh = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load574, i1 false)
  %i.gi = add nuw <4 x i16> %i.gg, splat (i16 144) ; 2 uses
  %i.gj = add nuw <4 x i16> %i.gh, splat (i16 144) ; 2 uses
  %i.gk = lshr <4 x i16> %i.gi, splat (i16 1)
  %i.gl = lshr <4 x i16> %i.gj, splat (i16 1)
  %i.gm = add nuw nsw <4 x i16> %i.gk, splat (i16 6912)
  %i.gn = add nuw nsw <4 x i16> %i.gl, splat (i16 6912)
  %i.go = udiv <4 x i16> %i.gm, %i.gi
  %i.gp = udiv <4 x i16> %i.gn, %i.gj
  %6 = add nuw nsw <4 x i16> %i.go, splat (i16 15) ; 2 uses
  %7 = add nuw nsw <4 x i16> %i.gp, splat (i16 15) ; 2 uses
  %8 = zext nneg <4 x i16> %6 to <4 x i32>        ; 2 uses
  %9 = zext nneg <4 x i16> %7 to <4 x i32>        ; 2 uses
  store <4 x i16> %6, ptr %i.ge, align 2, !tbaa !53
  store <4 x i16> %7, ptr %i.gf, align 2, !tbaa !53
  %i.gq = mul nuw nsw <4 x i32> %8, %8
  %i.gr = mul nuw nsw <4 x i32> %9, %9
  %i.gs = add <4 x i32> %i.gq, %vec.phi           ; 2 uses
  %i.gt = add <4 x i32> %i.gr, %vec.phi572        ; 2 uses
  %index.next575 = add nuw i64 %index571, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next575, 64
  br i1 %i.gu, label %middle.block576, label %vector.body570, !llvm.loop !533

middle.block576:                                  ; preds = %vector.body570
  %bin.rdx = add <4 x i32> %i.gt, %i.gs
  %i.gv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 4420
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !87
  %i.gz = zext i32 %i.gy to i64
  %i.ha = mul nuw nsw i64 %i.gz, %i.gw
  %i.hb = lshr i64 %i.ha, 19
  %i.hc = trunc i64 %i.hb to i32                  ; 2 uses
  %.not424491 = icmp sgt i32 %.0398, %i.ei
  %.pre = sub i32 0, %.1400                       ; 4 uses
  br i1 %.not424491, label %..preheader486_crit_edge, label %.lr.ph

..preheader486_crit_edge:                         ; preds = %middle.block576
  %.pre555 = zext nneg i32 %.0398 to i64
  br label %.preheader486

.lr.ph:                                           ; preds = %middle.block576
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 4512
  %i.he = zext nneg i32 %.0398 to i64             ; 2 uses
  %i.hf = add nuw i32 %i.ei, 1
  %wide.trip.count = zext i32 %i.hf to i64
  br label %bb.j

.preheader486:                                    ; preds = %bb.m, %..preheader486_crit_edge
  %.pre-phi556 = phi i64 [ %.pre555, %..preheader486_crit_edge ], [ %i.he, %bb.m ] ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 4444 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 4512
  %i.hk = add nsw i32 %.0398, -1
  %i.hl = sub i32 0, %.1370                       ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv535 = phi i64 [ %i.he, %.lr.ph ], [ %indvars.iv.next536, %bb.m ] ; 2 uses
  %.0371494 = phi i32 [ 0, %.lr.ph ], [ %.1372, %bb.m ] ; 2 uses
  %.0378493 = phi i32 [ 0, %.lr.ph ], [ %.1379, %bb.m ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0407, i64 %indvars.iv535
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !52
  %i.ij = zext i8 %i.ii to i64                    ; 2 uses
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ij
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !53 ; 3 uses
  %.not436 = icmp eq i16 %i.il, 0
  br i1 %.not436, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.im = sext i16 %i.il to i32
  %i.in = icmp slt i16 %i.il, 0
  %i.io = mul nsw i32 %i.cw, %i.im
  %.0367.p = select i1 %i.in, i32 %.pre, i32 %.1400
  %.0367 = add i32 %i.io, %.0367.p
  %i.ip = add nsw i32 %.0378493, 1
  %i.iq = sext i32 %.0378493 to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.iq
  store i32 %.0371494, ptr %i.ir, align 4, !tbaa !54
  %i.is = load ptr, ptr %i.hd, align 16, !tbaa !539
  %i.it = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ij
  call void %i.is(ptr noundef nonnull %i.a, ptr noundef nonnull %i.it, i32 noundef %.0367) #14
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.iu = add nsw i32 %.0371494, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1379 = phi i32 [ %i.ip, %bb.k ], [ %.0378493, %bb.l ]
  %.1372 = phi i32 [ 0, %bb.k ], [ %i.iu, %bb.l ]
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %exitcond538.not = icmp eq i64 %indvars.iv.next536, %wide.trip.count
  br i1 %exitcond538.not, label %.preheader486, label %bb.j, !llvm.loop !534

bb.n:                                             ; preds = %.preheader486, %._crit_edge
  %.0394 = phi i32 [ %.2396, %._crit_edge ], [ %i.ei, %.preheader486 ] ; 9 uses
  %i.iv = load ptr, ptr %i.hg, align 8, !tbaa !540
  %i.iw = call i32 %i.iv(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @basis, i32 noundef 0) #14 ; 4 uses
  %i.ix = icmp sgt i32 %.0394, 2
  br i1 %i.ix, label %vector.body578, label %.split

.split:                                           ; preds = %bb.n
  %i.iy = load i32, ptr %i.hh, align 4, !tbaa !260
  %i.iz = icmp sgt i32 %i.iy, 2
  br i1 %i.iz, label %vector.body578, label %bb.o

vector.body578:                                   ; preds = %.split, %bb.n
  %wide.load580.a = load <8 x i16>, ptr %2, align 2, !tbaa !53
  %i.ja = sext <8 x i16> %wide.load580.a to <8 x i32> ; 2 uses
  %wide.load581 = load <8 x i16>, ptr %i.a, align 16, !tbaa !53
  %i.jb = sext <8 x i16> %wide.load581 to <8 x i32>
  %i.jc = mul nsw <8 x i32> %i.ja, %i.ja
  %i.jd = mul <8 x i32> %i.jc, %i.jb
  %i.je = add nsw <8 x i32> %i.jd, splat (i32 131072)
  %i.jf = ashr <8 x i32> %i.je, splat (i32 18)
  %i.jg = trunc nsw <8 x i32> %i.jf to <8 x i16>
  store <8 x i16> %i.jg, ptr %i.b, align 16, !tbaa !53
  %wide.load580.1.a = load <8 x i16>, ptr %i.hm, align 2, !tbaa !53
  %i.jh = sext <8 x i16> %wide.load580.1.a to <8 x i32> ; 2 uses
  %wide.load581.1 = load <8 x i16>, ptr %i.hn, align 16, !tbaa !53
  %i.ji = sext <8 x i16> %wide.load581.1 to <8 x i32>
  %i.jj = mul nsw <8 x i32> %i.jh, %i.jh
  %i.jk = mul <8 x i32> %i.jj, %i.ji
  %i.jl = add nsw <8 x i32> %i.jk, splat (i32 131072)
  %i.jm = ashr <8 x i32> %i.jl, splat (i32 18)
  %i.jn = trunc nsw <8 x i32> %i.jm to <8 x i16>
  store <8 x i16> %i.jn, ptr %i.ho, align 16, !tbaa !53
  %wide.load580.2.a = load <8 x i16>, ptr %i.hp, align 2, !tbaa !53
  %i.jo = sext <8 x i16> %wide.load580.2.a to <8 x i32> ; 2 uses
  %wide.load581.2 = load <8 x i16>, ptr %i.hq, align 16, !tbaa !53
  %i.jp = sext <8 x i16> %wide.load581.2 to <8 x i32>
  %i.jq = mul nsw <8 x i32> %i.jo, %i.jo
  %i.jr = mul <8 x i32> %i.jq, %i.jp
  %i.js = add nsw <8 x i32> %i.jr, splat (i32 131072)
  %i.jt = ashr <8 x i32> %i.js, splat (i32 18)
  %i.ju = trunc nsw <8 x i32> %i.jt to <8 x i16>
  store <8 x i16> %i.ju, ptr %i.hr, align 16, !tbaa !53
  %wide.load580.3.a = load <8 x i16>, ptr %i.hs, align 2, !tbaa !53
  %i.jv = sext <8 x i16> %wide.load580.3.a to <8 x i32> ; 2 uses
  %wide.load581.3 = load <8 x i16>, ptr %i.ht, align 16, !tbaa !53
  %i.jw = sext <8 x i16> %wide.load581.3 to <8 x i32>
  %i.jx = mul nsw <8 x i32> %i.jv, %i.jv
  %i.jy = mul <8 x i32> %i.jx, %i.jw
  %i.jz = add nsw <8 x i32> %i.jy, splat (i32 131072)
  %i.ka = ashr <8 x i32> %i.jz, splat (i32 18)
  %i.kb = trunc nsw <8 x i32> %i.ka to <8 x i16>
  store <8 x i16> %i.kb, ptr %i.hu, align 16, !tbaa !53
  %wide.load580.4.a = load <8 x i16>, ptr %i.hv, align 2, !tbaa !53
  %i.kc = sext <8 x i16> %wide.load580.4.a to <8 x i32> ; 2 uses
  %wide.load581.4 = load <8 x i16>, ptr %i.hw, align 16, !tbaa !53
  %i.kd = sext <8 x i16> %wide.load581.4 to <8 x i32>
  %i.ke = mul nsw <8 x i32> %i.kc, %i.kc
  %i.kf = mul <8 x i32> %i.ke, %i.kd
  %i.kg = add nsw <8 x i32> %i.kf, splat (i32 131072)
  %i.kh = ashr <8 x i32> %i.kg, splat (i32 18)
  %i.ki = trunc nsw <8 x i32> %i.kh to <8 x i16>
  store <8 x i16> %i.ki, ptr %i.hx, align 16, !tbaa !53
  %wide.load580.5.a = load <8 x i16>, ptr %i.hy, align 2, !tbaa !53
  %i.kj = sext <8 x i16> %wide.load580.5.a to <8 x i32> ; 2 uses
  %wide.load581.5 = load <8 x i16>, ptr %i.hz, align 16, !tbaa !53
  %i.kk = sext <8 x i16> %wide.load581.5 to <8 x i32>
  %i.kl = mul nsw <8 x i32> %i.kj, %i.kj
  %i.km = mul <8 x i32> %i.kl, %i.kk
  %i.kn = add nsw <8 x i32> %i.km, splat (i32 131072)
  %i.ko = ashr <8 x i32> %i.kn, splat (i32 18)
  %i.kp = trunc nsw <8 x i32> %i.ko to <8 x i16>
  store <8 x i16> %i.kp, ptr %i.ia, align 16, !tbaa !53
  %wide.load580.6.a = load <8 x i16>, ptr %i.ib, align 2, !tbaa !53
  %i.kq = sext <8 x i16> %wide.load580.6.a to <8 x i32> ; 2 uses
  %wide.load581.6 = load <8 x i16>, ptr %i.ic, align 16, !tbaa !53
  %i.kr = sext <8 x i16> %wide.load581.6 to <8 x i32>
  %i.ks = mul nsw <8 x i32> %i.kq, %i.kq
  %i.kt = mul <8 x i32> %i.ks, %i.kr
  %i.ku = add nsw <8 x i32> %i.kt, splat (i32 131072)
  %i.kv = ashr <8 x i32> %i.ku, splat (i32 18)
  %i.kw = trunc nsw <8 x i32> %i.kv to <8 x i16>
  store <8 x i16> %i.kw, ptr %i.id, align 16, !tbaa !53
  %wide.load580.7.a = load <8 x i16>, ptr %i.ie, align 2, !tbaa !53
  %i.kx = sext <8 x i16> %wide.load580.7.a to <8 x i32> ; 2 uses
  %wide.load581.7 = load <8 x i16>, ptr %i.if, align 16, !tbaa !53
  %i.ky = sext <8 x i16> %wide.load581.7 to <8 x i32>
  %i.kz = mul nsw <8 x i32> %i.kx, %i.kx
  %i.la = mul <8 x i32> %i.kz, %i.ky
  %i.lb = add nsw <8 x i32> %i.la, splat (i32 131072)
  %i.lc = ashr <8 x i32> %i.lb, splat (i32 18)
  %i.ld = trunc nsw <8 x i32> %i.lc to <8 x i16>
  store <8 x i16> %i.ld, ptr %i.ig, align 16, !tbaa !53
  %i.le = load ptr, ptr %i.hi, align 16, !tbaa !75
  call void %i.le(ptr noundef nonnull %i.b) #14
  br label %bb.o

bb.o:                                             ; preds = %.split, %vector.body578
end_hunk_0
