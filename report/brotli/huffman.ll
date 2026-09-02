Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/huffman?download=true
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@BrotliBuildCodeLengthsHuffmanTable:bb.a
  store i32 6, ptr %i.ds, align 4, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !10
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !13 ; 2 uses
  %i.dy = add nsw i32 %i.dx, -1
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !13
  %i.dz = sext i32 %i.dx to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dz
  store i32 5, ptr %i.ea, align 4, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !10
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !13 ; 2 uses
  %i.eg = add nsw i32 %i.ef, -1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !13
  %i.eh = sext i32 %i.ef to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eh
  store i32 4, ptr %i.ei, align 4, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !10
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !13 ; 2 uses
  %i.eo = add nsw i32 %i.en, -1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !13
  %i.ep = sext i32 %i.en to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ep
  store i32 3, ptr %i.eq, align 4, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !10
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !13 ; 2 uses
  %i.ew = add nsw i32 %i.ev, -1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !13
  %i.ex = sext i32 %i.ev to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ex
  store i32 2, ptr %i.ey, align 4, !tbaa !13
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !10
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !13 ; 2 uses
  %i.fe = add nsw i32 %i.fd, -1
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !13
  %i.ff = sext i32 %i.fd to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ff
  store i32 1, ptr %i.fg, align 4, !tbaa !13
  %i.fh = load i8, ptr %1, align 1, !tbaa !10
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fi ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !13 ; 2 uses
  %i.fl = add nsw i32 %i.fk, -1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !13
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fm
  store i32 0, ptr %i.fn, align 4, !tbaa !13
  %i.fo = load i32, ptr %i.b, align 16, !tbaa !13
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %.loopexit.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.fq = load i16, ptr %i.c, align 2, !tbaa !9   ; 2 uses
  %.not8489 = icmp eq i16 %i.fq, 0
  br i1 %.not8489, label %._crit_edge, label %.lr.ph

.loopexit.loopexit:                               ; preds = %bb.a
  %i.fr = load i32, ptr %i.a, align 16, !tbaa !13
  %.sroa.22.0.insert.ext.i85 = shl i32 %i.fr, 16
  %i.fs = insertelement <4 x i32> poison, i32 %.sroa.22.0.insert.ext.i85, i64 0
  %i.ft = shufflevector <4 x i32> %i.fs, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  store <4 x i32> %i.ft, ptr %0, align 2
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %i.ft, ptr %i.fu, align 2
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %i.ft, ptr %i.fv, align 2
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %i.ft, ptr %i.fw, align 2
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> %i.ft, ptr %i.fx, align 2
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> %i.ft, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> %i.ft, ptr %i.fz, align 2
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> %i.ft, ptr %i.ga, align 2
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.gb = zext i16 %i.fq to i32
  br label %ReplicateValue.exit

ReplicateValue.exit:                              ; preds = %.lr.ph, %ReplicateValue.exit
  %indvars.iv99 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next100, %ReplicateValue.exit ] ; 2 uses
  %.07691 = phi i32 [ %i.gb, %.lr.ph ], [ %i.gy, %ReplicateValue.exit ]
  %.28290 = phi i64 [ 0, %.lr.ph ], [ %i.gx, %ReplicateValue.exit ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv99
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i = shl i32 %i.gd, 16
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.22.0.insert.ext.i, 1 ; 16 uses
  %i.ge = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290
  %i.gf = load i8, ptr %i.ge, align 16, !tbaa !10
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gg ; 16 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 120
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gi, align 2
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 112
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gj, align 2
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 104
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gk, align 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 96
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gl, align 2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 88
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gm, align 2
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 80
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gn, align 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 72
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.go, align 2
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gp, align 2
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gq, align 2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gr, align 2
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gs, align 2
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gt, align 2
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gu, align 2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gv, align 2
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gw, align 2
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gh, align 2
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.gx = add nuw nsw i64 %.28290, 128            ; 2 uses
  %i.gy = add nsw i32 %.07691, -1                 ; 2 uses
  %.not84 = icmp eq i32 %i.gy, 0
  br i1 %.not84, label %._crit_edge.loopexit, label %ReplicateValue.exit, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %ReplicateValue.exit
  %i.gz = trunc nsw i64 %indvars.iv.next100 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader.preheader
  %.282.lcssa = phi i64 [ 0, %.preheader.preheader ], [ %i.gx, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi i32 [ 0, %.preheader.preheader ], [ %i.gz, %._crit_edge.loopexit ] ; 2 uses
  %i.ha = load i16, ptr %i.h, align 2, !tbaa !9   ; 2 uses
  %.not8489.1 = icmp eq i16 %i.ha, 0
  br i1 %.not8489.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge
  %i.hb = zext i16 %i.ha to i32
  %i.hc = sext i32 %.2.lcssa to i64
  br label %ReplicateValue.exit.1

ReplicateValue.exit.1:                            ; preds = %ReplicateValue.exit.1, %.lr.ph.1
  %indvars.iv99.1 = phi i64 [ %i.hc, %.lr.ph.1 ], [ %indvars.iv.next100.1, %ReplicateValue.exit.1 ] ; 2 uses
  %.07691.1 = phi i32 [ %i.hb, %.lr.ph.1 ], [ %i.hr, %ReplicateValue.exit.1 ]
  %.28290.1 = phi i64 [ %.282.lcssa, %.lr.ph.1 ], [ %i.hq, %ReplicateValue.exit.1 ] ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv99.1
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.1 = shl i32 %i.he, 16
  %.sroa.0.0.insert.insert.i.1 = or disjoint i32 %.sroa.22.0.insert.ext.i.1, 2 ; 8 uses
  %i.hf = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !10
  %i.hh = zext i8 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hh ; 8 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 112
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hj, align 2
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 96
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hk, align 2
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 80
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hl, align 2
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 64
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hm, align 2
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hn, align 2
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.ho, align 2
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hp, align 2
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hi, align 2
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99.1, 1 ; 2 uses
  %i.hq = add nuw nsw i64 %.28290.1, 64           ; 2 uses
  %i.hr = add nsw i32 %.07691.1, -1               ; 2 uses
  %.not84.1 = icmp eq i32 %i.hr, 0
  br i1 %.not84.1, label %._crit_edge.loopexit.1, label %ReplicateValue.exit.1, !llvm.loop !12

._crit_edge.loopexit.1:                           ; preds = %ReplicateValue.exit.1
  %i.hs = trunc nsw i64 %indvars.iv.next100.1 to i32
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %._crit_edge
  %.282.lcssa.1 = phi i64 [ %.282.lcssa, %._crit_edge ], [ %i.hq, %._crit_edge.loopexit.1 ] ; 4 uses
  %.2.lcssa.1 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %i.hs, %._crit_edge.loopexit.1 ] ; 2 uses
  %i.ht = load i16, ptr %i.m, align 2, !tbaa !9   ; 4 uses
  %.not8489.2 = icmp eq i16 %i.ht, 0
  br i1 %.not8489.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1
  %i.hu = zext i16 %i.ht to i32                   ; 2 uses
  %i.hv = sext i32 %.2.lcssa.1 to i64             ; 3 uses
  %3 = trunc i16 %i.ht to i1
  br i1 %3, label %ReplicateValue.exit.2.prol, label %ReplicateValue.exit.2.prol.loopexit

ReplicateValue.exit.2.prol:                       ; preds = %.lr.ph.2
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.2.prol = shl i32 %i.hx, 16
  %.sroa.0.0.insert.insert.i.2.prol = or disjoint i32 %.sroa.22.0.insert.ext.i.2.prol, 3 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.282.lcssa.1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !10
  %i.ia = zext i8 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ia ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  store i32 %.sroa.0.0.insert.insert.i.2.prol, ptr %i.ic, align 2
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 64
  store i32 %.sroa.0.0.insert.insert.i.2.prol, ptr %i.id, align 2
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  store i32 %.sroa.0.0.insert.insert.i.2.prol, ptr %i.ie, align 2
  store i32 %.sroa.0.0.insert.insert.i.2.prol, ptr %i.ib, align 2
  %indvars.iv.next100.2.prol = add nuw nsw i64 %i.hv, 1 ; 2 uses
  %i.if = add nuw nsw i64 %.282.lcssa.1, 32       ; 2 uses
  %i.ig = add nsw i32 %i.hu, -1
  br label %ReplicateValue.exit.2.prol.loopexit

ReplicateValue.exit.2.prol.loopexit:              ; preds = %ReplicateValue.exit.2.prol, %.lr.ph.2
  %indvars.iv.next100.2.lcssa.unr = phi i64 [ poison, %.lr.ph.2 ], [ %indvars.iv.next100.2.prol, %ReplicateValue.exit.2.prol ]
  %.lcssa119.unr = phi i64 [ poison, %.lr.ph.2 ], [ %i.if, %ReplicateValue.exit.2.prol ]
  %indvars.iv99.2.unr = phi i64 [ %i.hv, %.lr.ph.2 ], [ %indvars.iv.next100.2.prol, %ReplicateValue.exit.2.prol ]
  %.07691.2.unr = phi i32 [ %i.hu, %.lr.ph.2 ], [ %i.ig, %ReplicateValue.exit.2.prol ]
  %.28290.2.unr = phi i64 [ %.282.lcssa.1, %.lr.ph.2 ], [ %i.if, %ReplicateValue.exit.2.prol ]
  %i.ih = icmp eq i16 %i.ht, 1
  br i1 %i.ih, label %._crit_edge.loopexit.2, label %ReplicateValue.exit.2

ReplicateValue.exit.2:                            ; preds = %ReplicateValue.exit.2.prol.loopexit, %ReplicateValue.exit.2
  %indvars.iv99.2 = phi i64 [ %indvars.iv.next100.2.1, %ReplicateValue.exit.2 ], [ %indvars.iv99.2.unr, %ReplicateValue.exit.2.prol.loopexit ] ; 3 uses
  %.07691.2 = phi i32 [ %i.jd, %ReplicateValue.exit.2 ], [ %.07691.2.unr, %ReplicateValue.exit.2.prol.loopexit ]
  %.28290.2 = phi i64 [ %i.jc, %ReplicateValue.exit.2 ], [ %.28290.2.unr, %ReplicateValue.exit.2.prol.loopexit ] ; 3 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv99.2
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.2 = shl i32 %i.ij, 16
  %.sroa.0.0.insert.insert.i.2 = or disjoint i32 %.sroa.22.0.insert.ext.i.2, 3 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.2
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !10
  %i.im = zext i8 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.im ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 96
  store i32 %.sroa.0.0.insert.insert.i.2, ptr %i.io, align 2
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 64
  store i32 %.sroa.0.0.insert.insert.i.2, ptr %i.ip, align 2
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  store i32 %.sroa.0.0.insert.insert.i.2, ptr %i.iq, align 2
  store i32 %.sroa.0.0.insert.insert.i.2, ptr %i.in, align 2
  %i.ir = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv99.2
  %i.is = getelementptr i8, ptr %i.ir, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.2.1 = shl i32 %i.it, 16
  %.sroa.0.0.insert.insert.i.2.1 = or disjoint i32 %.sroa.22.0.insert.ext.i.2.1, 3 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.2
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !10
  %i.ix = zext i8 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ix ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  store i32 %.sroa.0.0.insert.insert.i.2.1, ptr %i.iz, align 2
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  store i32 %.sroa.0.0.insert.insert.i.2.1, ptr %i.ja, align 2
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  store i32 %.sroa.0.0.insert.insert.i.2.1, ptr %i.jb, align 2
  store i32 %.sroa.0.0.insert.insert.i.2.1, ptr %i.iy, align 2
  %indvars.iv.next100.2.1 = add nuw nsw i64 %indvars.iv99.2, 2 ; 2 uses
  %i.jc = add nuw nsw i64 %.28290.2, 64           ; 2 uses
  %i.jd = add nsw i32 %.07691.2, -2               ; 2 uses
  %.not84.2.1 = icmp eq i32 %i.jd, 0
  br i1 %.not84.2.1, label %._crit_edge.loopexit.2, label %ReplicateValue.exit.2, !llvm.loop !12

._crit_edge.loopexit.2:                           ; preds = %ReplicateValue.exit.2, %ReplicateValue.exit.2.prol.loopexit
  %indvars.iv.next100.2.lcssa = phi i64 [ %indvars.iv.next100.2.lcssa.unr, %ReplicateValue.exit.2.prol.loopexit ], [ %indvars.iv.next100.2.1, %ReplicateValue.exit.2 ]
  %.lcssa119 = phi i64 [ %.lcssa119.unr, %ReplicateValue.exit.2.prol.loopexit ], [ %i.jc, %ReplicateValue.exit.2 ]
  %i.je = trunc nsw i64 %indvars.iv.next100.2.lcssa to i32
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.loopexit.2, %._crit_edge.1
  %.282.lcssa.2 = phi i64 [ %.282.lcssa.1, %._crit_edge.1 ], [ %.lcssa119, %._crit_edge.loopexit.2 ] ; 4 uses
  %.2.lcssa.2 = phi i32 [ %.2.lcssa.1, %._crit_edge.1 ], [ %i.je, %._crit_edge.loopexit.2 ] ; 2 uses
  %i.jf = load i16, ptr %i.r, align 2, !tbaa !9   ; 4 uses
  %.not8489.3 = icmp eq i16 %i.jf, 0
  br i1 %.not8489.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %._crit_edge.2
  %i.jg = zext i16 %i.jf to i32                   ; 2 uses
  %i.jh = sext i32 %.2.lcssa.2 to i64             ; 3 uses
  %4 = trunc i16 %i.jf to i1
  br i1 %4, label %ReplicateValue.exit.3.prol, label %ReplicateValue.exit.3.prol.loopexit

ReplicateValue.exit.3.prol:                       ; preds = %.lr.ph.3
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.3.prol = shl i32 %i.jj, 16
  %.sroa.0.0.insert.insert.i.3.prol = or disjoint i32 %.sroa.22.0.insert.ext.i.3.prol, 4 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.282.lcssa.2
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !10
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jm ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  store i32 %.sroa.0.0.insert.insert.i.3.prol, ptr %i.jo, align 2
  store i32 %.sroa.0.0.insert.insert.i.3.prol, ptr %i.jn, align 2
  %indvars.iv.next100.3.prol = add nuw nsw i64 %i.jh, 1 ; 2 uses
  %i.jp = add nuw nsw i64 %.282.lcssa.2, 16       ; 2 uses
  %i.jq = add nsw i32 %i.jg, -1
  br label %ReplicateValue.exit.3.prol.loopexit

ReplicateValue.exit.3.prol.loopexit:              ; preds = %ReplicateValue.exit.3.prol, %.lr.ph.3
  %indvars.iv.next100.3.lcssa.unr = phi i64 [ poison, %.lr.ph.3 ], [ %indvars.iv.next100.3.prol, %ReplicateValue.exit.3.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.3 ], [ %i.jp, %ReplicateValue.exit.3.prol ]
  %indvars.iv99.3.unr = phi i64 [ %i.jh, %.lr.ph.3 ], [ %indvars.iv.next100.3.prol, %ReplicateValue.exit.3.prol ]
  %.07691.3.unr = phi i32 [ %i.jg, %.lr.ph.3 ], [ %i.jq, %ReplicateValue.exit.3.prol ]
  %.28290.3.unr = phi i64 [ %.282.lcssa.2, %.lr.ph.3 ], [ %i.jp, %ReplicateValue.exit.3.prol ]
  %i.jr = icmp eq i16 %i.jf, 1
  br i1 %i.jr, label %._crit_edge.loopexit.3, label %ReplicateValue.exit.3

ReplicateValue.exit.3:                            ; preds = %ReplicateValue.exit.3.prol.loopexit, %ReplicateValue.exit.3
  %indvars.iv99.3 = phi i64 [ %indvars.iv.next100.3.1, %ReplicateValue.exit.3 ], [ %indvars.iv99.3.unr, %ReplicateValue.exit.3.prol.loopexit ] ; 3 uses
  %.07691.3 = phi i32 [ %i.kj, %ReplicateValue.exit.3 ], [ %.07691.3.unr, %ReplicateValue.exit.3.prol.loopexit ]
  %.28290.3 = phi i64 [ %i.ki, %ReplicateValue.exit.3 ], [ %.28290.3.unr, %ReplicateValue.exit.3.prol.loopexit ] ; 3 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv99.3
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.3 = shl i32 %i.jt, 16
  %.sroa.0.0.insert.insert.i.3 = or disjoint i32 %.sroa.22.0.insert.ext.i.3, 4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.3
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !10
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jw ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 64
  store i32 %.sroa.0.0.insert.insert.i.3, ptr %i.jy, align 2
  store i32 %.sroa.0.0.insert.insert.i.3, ptr %i.jx, align 2
  %i.jz = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv99.3
  %i.ka = getelementptr i8, ptr %i.jz, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.3.1 = shl i32 %i.kb, 16
  %.sroa.0.0.insert.insert.i.3.1 = or disjoint i32 %.sroa.22.0.insert.ext.i.3.1, 4 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.3
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !10
  %i.kf = zext i8 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kf ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 64
  store i32 %.sroa.0.0.insert.insert.i.3.1, ptr %i.kh, align 2
  store i32 %.sroa.0.0.insert.insert.i.3.1, ptr %i.kg, align 2
  %indvars.iv.next100.3.1 = add nuw nsw i64 %indvars.iv99.3, 2 ; 2 uses
  %i.ki = add nuw nsw i64 %.28290.3, 32           ; 2 uses
  %i.kj = add nsw i32 %.07691.3, -2               ; 2 uses
  %.not84.3.1 = icmp eq i32 %i.kj, 0
  br i1 %.not84.3.1, label %._crit_edge.loopexit.3, label %ReplicateValue.exit.3, !llvm.loop !12

._crit_edge.loopexit.3:                           ; preds = %ReplicateValue.exit.3, %ReplicateValue.exit.3.prol.loopexit
  %indvars.iv.next100.3.lcssa = phi i64 [ %indvars.iv.next100.3.lcssa.unr, %ReplicateValue.exit.3.prol.loopexit ], [ %indvars.iv.next100.3.1, %ReplicateValue.exit.3 ]
  %.lcssa = phi i64 [ %.lcssa.unr, %ReplicateValue.exit.3.prol.loopexit ], [ %i.ki, %ReplicateValue.exit.3 ]
  %i.kk = trunc nsw i64 %indvars.iv.next100.3.lcssa to i32
  br label %._crit_edge.3

._crit_edge.3:                                    ; preds = %._crit_edge.loopexit.3, %._crit_edge.2
  %.282.lcssa.3 = phi i64 [ %.282.lcssa.2, %._crit_edge.2 ], [ %.lcssa, %._crit_edge.loopexit.3 ] ; 3 uses
  %.2.lcssa.3 = phi i32 [ %.2.lcssa.2, %._crit_edge.2 ], [ %i.kk, %._crit_edge.loopexit.3 ]
  %i.kl = load i16, ptr %i.w, align 2, !tbaa !9   ; 4 uses
  %.not8489.4 = icmp eq i16 %i.kl, 0
  br i1 %.not8489.4, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %._crit_edge.3
  %i.km = zext i16 %i.kl to i32                   ; 2 uses
  %i.kn = sext i32 %.2.lcssa.3 to i64             ; 3 uses
  %5 = trunc i16 %i.kl to i1
  br i1 %5, label %ReplicateValue.exit.4.prol, label %ReplicateValue.exit.4.prol.loopexit

ReplicateValue.exit.4.prol:                       ; preds = %.lr.ph.4
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.4.prol = shl i32 %i.kp, 16
  %.sroa.0.0.insert.insert.i.4.prol = or disjoint i32 %.sroa.22.0.insert.ext.i.4.prol, 5
  %i.kq = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.282.lcssa.3
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !10
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ks
  store i32 %.sroa.0.0.insert.insert.i.4.prol, ptr %i.kt, align 2
  %indvars.iv.next100.4.prol = add nuw nsw i64 %i.kn, 1
  %i.ku = add nuw nsw i64 %.282.lcssa.3, 8
  %i.kv = add nsw i32 %i.km, -1
  br label %ReplicateValue.exit.4.prol.loopexit

ReplicateValue.exit.4.prol.loopexit:              ; preds = %ReplicateValue.exit.4.prol, %.lr.ph.4
  %indvars.iv99.4.unr = phi i64 [ %i.kn, %.lr.ph.4 ], [ %indvars.iv.next100.4.prol, %ReplicateValue.exit.4.prol ]
  %.07691.4.unr = phi i32 [ %i.km, %.lr.ph.4 ], [ %i.kv, %ReplicateValue.exit.4.prol ]
  %.28290.4.unr = phi i64 [ %.282.lcssa.3, %.lr.ph.4 ], [ %i.ku, %ReplicateValue.exit.4.prol ]
  %i.kw = icmp eq i16 %i.kl, 1
  br i1 %i.kw, label %.loopexit, label %ReplicateValue.exit.4

ReplicateValue.exit.4:                            ; preds = %ReplicateValue.exit.4.prol.loopexit, %ReplicateValue.exit.4
  %indvars.iv99.4 = phi i64 [ %indvars.iv.next100.4.1, %ReplicateValue.exit.4 ], [ %indvars.iv99.4.unr, %ReplicateValue.exit.4.prol.loopexit ] ; 3 uses
  %.07691.4 = phi i32 [ %i.lm, %ReplicateValue.exit.4 ], [ %.07691.4.unr, %ReplicateValue.exit.4.prol.loopexit ]
  %.28290.4 = phi i64 [ %i.ll, %ReplicateValue.exit.4 ], [ %.28290.4.unr, %ReplicateValue.exit.4.prol.loopexit ] ; 3 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv99.4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.4 = shl i32 %i.ky, 16
  %.sroa.0.0.insert.insert.i.4 = or disjoint i32 %.sroa.22.0.insert.ext.i.4, 5
  %i.kz = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.4
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !10
  %i.lb = zext i8 %i.la to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lb
  store i32 %.sroa.0.0.insert.insert.i.4, ptr %i.lc, align 2
  %i.ld = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv99.4
  %i.le = getelementptr i8, ptr %i.ld, i64 4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.4.1 = shl i32 %i.lf, 16
  %.sroa.0.0.insert.insert.i.4.1 = or disjoint i32 %.sroa.22.0.insert.ext.i.4.1, 5
  %i.lg = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !10
  %i.lj = zext i8 %i.li to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lj
  store i32 %.sroa.0.0.insert.insert.i.4.1, ptr %i.lk, align 2
  %indvars.iv.next100.4.1 = add nuw nsw i64 %indvars.iv99.4, 2
  %i.ll = add nuw nsw i64 %.28290.4, 16
  %i.lm = add nsw i32 %.07691.4, -2               ; 2 uses
  %.not84.4.1 = icmp eq i32 %i.lm, 0
  br i1 %.not84.4.1, label %.loopexit, label %ReplicateValue.exit.4, !llvm.loop !12

.loopexit:                                        ; preds = %ReplicateValue.exit.4.prol.loopexit, %ReplicateValue.exit.4, %._crit_edge.3, %.loopexit.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @BrotliBuildHuffmanTable(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv198 = phi i32 [ %indvars.iv.next199, %bb.b ], [ 15, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ -1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds [2 x i8], ptr %2, i64 %indvars.iv
  %i.b = load i16, ptr %i.a, align 2, !tbaa !9
  %i.c = icmp eq i16 %i.b, -1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars.iv.next199 = add i32 %indvars.iv198, -1
  br i1 %i.c, label %bb.b, label %bb.c, !llvm.loop !14

bb.c:                                             ; preds = %bb.b
  %i.d = trunc nsw i64 %indvars.iv to i32
  %i.e = add nsw i32 %i.d, 16                     ; 4 uses
  %i.f = shl nuw i32 1, %1                        ; 6 uses
  %i.g = icmp sgt i32 %1, %i.e
  %i.h = shl nuw i32 1, %i.e
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.e)
  %spec.select117 = select i1 %i.g, i32 %i.h, i32 %i.f ; 3 uses
  %i.i = sext i32 %spec.select to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %._crit_edge ], [ 1, %bb.c ] ; 5 uses
  %.0102 = phi i64 [ %.1103.lcssa, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %.0101 = phi i64 [ %i.ae, %._crit_edge ], [ 128, %bb.c ] ; 2 uses
  %.095 = phi i32 [ %i.ad, %._crit_edge ], [ 2, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv186
  %i.k = load i16, ptr %i.j, align 2, !tbaa !9    ; 2 uses
  %.not129 = icmp eq i16 %i.k, 0
  br i1 %.not129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = zext i16 %i.k to i32
  %i.m = trunc i64 %indvars.iv186 to i32
  %i.n = add i32 %i.m, -16
  %i.o = trunc nuw nsw i64 %indvars.iv186 to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %ReplicateValue.exit127
  %.085132 = phi i32 [ %i.l, %.lr.ph ], [ %i.ac, %ReplicateValue.exit127 ]
  %.1103131 = phi i64 [ %.0102, %.lr.ph ], [ %i.ab, %ReplicateValue.exit127 ] ; 2 uses
  %.0107130 = phi i32 [ %i.n, %.lr.ph ], [ %i.s, %ReplicateValue.exit127 ]
  %i.p = sext i32 %.0107130 to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %2, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !9
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %.sroa.22.0.insert.shift.i123 = shl nuw i32 %i.s, 16
  %.sroa.0.0.insert.insert.i125 = or disjoint i32 %.sroa.22.0.insert.shift.i123, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.1103131
  %i.u = load i8, ptr %i.t, align 1, !tbaa !10
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i126 = phi i32 [ %spec.select117, %bb.e ], [ %i.x, %bb.f ]
  %i.x = sub nsw i32 %.0.i126, %.095              ; 3 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  store i32 %.sroa.0.0.insert.insert.i125, ptr %i.z, align 2
  %i.aa = icmp sgt i32 %i.x, 0
  br i1 %i.aa, label %bb.f, label %ReplicateValue.exit127, !llvm.loop !15

ReplicateValue.exit127:                           ; preds = %bb.f
  %i.ab = add i64 %.1103131, %.0101               ; 2 uses
  %i.ac = add nsw i32 %.085132, -1                ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !16

._crit_edge:                                      ; preds = %ReplicateValue.exit127, %bb.d
  %.1103.lcssa = phi i64 [ %.0102, %bb.d ], [ %i.ab, %ReplicateValue.exit127 ] ; 2 uses
  %i.ad = shl nuw nsw i32 %.095, 1
  %i.ae = lshr i64 %.0101, 1
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1
  %.not113.not = icmp slt i64 %indvars.iv186, %i.i
  br i1 %.not113.not, label %bb.d, label %.preheader, !llvm.loop !17

.preheader:                                       ; preds = %._crit_edge
  %.not114133 = icmp eq i32 %i.f, %spec.select117
  br i1 %.not114133, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %.preheader, %.lr.ph135
  %.192134 = phi i32 [ %i.ai, %.lr.ph135 ], [ %spec.select117, %.preheader ] ; 2 uses
  %i.af = sext i32 %.192134 to i64                ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.ah = shl nsw i64 %i.af, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ag, ptr align 2 %0, i64 %i.ah, i1 false)
  %i.ai = shl i32 %.192134, 1                     ; 2 uses
  %.not114 = icmp eq i32 %i.f, %i.ai
  br i1 %.not114, label %._crit_edge136, label %.lr.ph135, !llvm.loop !18

._crit_edge136:                                   ; preds = %.lr.ph135, %.preheader
  %i.aj = add nsw i32 %1, -1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = lshr i64 128, %i.ak                     ; 2 uses
  %.not115.not165 = icmp slt i32 %1, %i.e
  br i1 %.not115.not165, label %.lr.ph178, label %._crit_edge179

.lr.ph178:                                        ; preds = %._crit_edge136
  %i.am = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.an = sext i32 %1 to i64                      ; 2 uses
  %wide.trip.count = sext i32 %indvars.iv198 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph178, %._crit_edge154
  %indvars.iv195 = phi i64 [ %i.an, %.lr.ph178 ], [ %indvars.iv.next196, %._crit_edge154 ] ; 3 uses
  %indvars.iv190.in = phi i64 [ %i.an, %.lr.ph178 ], [ %indvars.iv190, %._crit_edge154 ]
  %.0175 = phi ptr [ %0, %.lr.ph178 ], [ %.1.lcssa, %._crit_edge154 ] ; 3 uses
  %.088173 = phi i32 [ %i.f, %.lr.ph178 ], [ %.189.lcssa, %._crit_edge154 ] ; 3 uses
  %.293172 = phi i32 [ %i.f, %.lr.ph178 ], [ %.3.lcssa, %._crit_edge154 ] ; 3 uses
  %.196170 = phi i32 [ 2, %.lr.ph178 ], [ %i.do, %._crit_edge154 ] ; 3 uses
  %.097168 = phi i64 [ 128, %.lr.ph178 ], [ %i.dp, %._crit_edge154 ] ; 3 uses
  %.098167 = phi i64 [ 256, %.lr.ph178 ], [ %.199.lcssa, %._crit_edge154 ] ; 3 uses
  %.2104166 = phi i64 [ %.1103.lcssa, %.lr.ph178 ], [ %.3105.lcssa, %._crit_edge154 ] ; 3 uses
  %indvars.iv190 = add nsw i64 %indvars.iv190.in, 1 ; 2 uses
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, 1 ; 5 uses
  %i.ao = add nsw i64 %indvars.iv195, -15         ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv.next196 ; 5 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !9
  %.not116145 = icmp eq i16 %i.aq, 0
  br i1 %.not116145, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.g
  %i.ar = trunc i64 %indvars.iv.next196 to i32
  %i.as = sub i32 %i.ar, %1                       ; 2 uses
  %i.at = shl nuw i32 1, %i.as                    ; 3 uses
  %i.au = icmp slt i64 %indvars.iv195, 14
end_hunk_0
