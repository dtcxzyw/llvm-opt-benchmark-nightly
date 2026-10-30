Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/huffman?download=true
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@BrotliBuildCodeLengthsHuffmanTable:bb.a
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bv
  store i32 12, ptr %i.bw, align 4, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !13 ; 2 uses
  %i.cc = add nsw i32 %i.cb, -1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !13
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cd
  store i32 11, ptr %i.ce, align 4, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !10
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !13 ; 2 uses
  %i.ck = add nsw i32 %i.cj, -1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !13
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cl
  store i32 10, ptr %i.cm, align 4, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !10
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !13 ; 2 uses
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !13
  %i.ct = sext i32 %i.cr to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ct
  store i32 9, ptr %i.cu, align 4, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !10
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !13 ; 2 uses
  %i.da = add nsw i32 %i.cz, -1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !13
  %i.db = sext i32 %i.cz to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.db
  store i32 8, ptr %i.dc, align 4, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !10
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !13 ; 2 uses
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !13
  %i.dj = sext i32 %i.dh to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dj
  store i32 7, ptr %i.dk, align 4, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !10
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dn ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !13 ; 2 uses
  %i.dq = add nsw i32 %i.dp, -1
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !13
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dr
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
  %.2.lcssa.a = phi i32 [ 0, %.preheader.preheader ], [ %i.gz, %._crit_edge.loopexit ] ; 2 uses
  %i.ha = load i16, ptr %i.h, align 2, !tbaa !9   ; 2 uses
  %.not8489.1 = icmp eq i16 %i.ha, 0
  br i1 %.not8489.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge
  %i.hb = zext i16 %i.ha to i32
  %3 = sext i32 %.2.lcssa.a to i64
  br label %ReplicateValue.exit.1

ReplicateValue.exit.1:                            ; preds = %ReplicateValue.exit.1, %.lr.ph.1
  %indvars.iv99.1 = phi i64 [ %3, %.lr.ph.1 ], [ %indvars.iv.next100.1, %ReplicateValue.exit.1 ] ; 2 uses
  %.07691.1 = phi i32 [ %i.hb, %.lr.ph.1 ], [ %i.hq, %ReplicateValue.exit.1 ]
  %.28290.1 = phi i64 [ %.282.lcssa, %.lr.ph.1 ], [ %i.hp, %ReplicateValue.exit.1 ] ; 2 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv99.1
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.1 = shl i32 %i.hd, 16
  %.sroa.0.0.insert.insert.i.1 = or disjoint i32 %.sroa.22.0.insert.ext.i.1, 2 ; 8 uses
  %i.he = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !10
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hg ; 8 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 112
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hi, align 2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 96
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hj, align 2
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hk, align 2
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hl, align 2
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hm, align 2
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hn, align 2
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.ho, align 2
  store i32 %.sroa.0.0.insert.insert.i.1, ptr %i.hh, align 2
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99.1, 1 ; 2 uses
  %i.hp = add nuw nsw i64 %.28290.1, 64           ; 2 uses
  %i.hq = add nsw i32 %.07691.1, -1               ; 2 uses
  %.not84.1 = icmp eq i32 %i.hq, 0
  br i1 %.not84.1, label %._crit_edge.loopexit.1, label %ReplicateValue.exit.1, !llvm.loop !12

._crit_edge.loopexit.1:                           ; preds = %ReplicateValue.exit.1
  %i.hr = trunc nsw i64 %indvars.iv.next100.1 to i32
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %._crit_edge
  %.282.lcssa.1 = phi i64 [ %.282.lcssa, %._crit_edge ], [ %i.hp, %._crit_edge.loopexit.1 ] ; 4 uses
  %.2.lcssa.1 = phi i32 [ %.2.lcssa.a, %._crit_edge ], [ %i.hr, %._crit_edge.loopexit.1 ] ; 2 uses
  %i.hs = load i16, ptr %i.m, align 2, !tbaa !9   ; 3 uses
  %.not8489.2 = icmp eq i16 %i.hs, 0
  br i1 %.not8489.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1
  %i.ht = zext i16 %i.hs to i32                   ; 3 uses
  %i.hu = sext i32 %.2.lcssa.1 to i64             ; 3 uses
  %xtraiter = and i32 %i.ht, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ReplicateValue.exit.2.prol.loopexit, label %ReplicateValue.exit.2.prol

ReplicateValue.exit.2.prol:                       ; preds = %.lr.ph.2
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.2.prol = shl i32 %i.hw, 16
  %.sroa.0.0.insert.insert.i.2.prol = or disjoint i32 %.sroa.22.0.insert.ext.i.2.prol, 3 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.282.lcssa.1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !10
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hz ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 96
  store i32 %.sroa.0.0.insert.insert.i.2.prol, ptr %i.ib, align 2
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 64
  store i32 %.sroa.0.0.insert.insert.i.2.prol, ptr %i.ic, align 2
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  store i32 %.sroa.0.0.insert.insert.i.2.prol, ptr %i.id, align 2
  store i32 %.sroa.0.0.insert.insert.i.2.prol, ptr %i.ia, align 2
  %indvars.iv.next100.2.prol = add nuw nsw i64 %i.hu, 1 ; 2 uses
  %i.ie = add nuw nsw i64 %.282.lcssa.1, 32       ; 2 uses
  %i.if = add nsw i32 %i.ht, -1
  br label %ReplicateValue.exit.2.prol.loopexit

ReplicateValue.exit.2.prol.loopexit:              ; preds = %ReplicateValue.exit.2.prol, %.lr.ph.2
  %indvars.iv.next100.2.lcssa.unr = phi i64 [ poison, %.lr.ph.2 ], [ %indvars.iv.next100.2.prol, %ReplicateValue.exit.2.prol ]
  %.lcssa119.unr = phi i64 [ poison, %.lr.ph.2 ], [ %i.ie, %ReplicateValue.exit.2.prol ]
  %indvars.iv99.2.unr = phi i64 [ %i.hu, %.lr.ph.2 ], [ %indvars.iv.next100.2.prol, %ReplicateValue.exit.2.prol ]
  %.07691.2.unr = phi i32 [ %i.ht, %.lr.ph.2 ], [ %i.if, %ReplicateValue.exit.2.prol ]
  %.28290.2.unr = phi i64 [ %.282.lcssa.1, %.lr.ph.2 ], [ %i.ie, %ReplicateValue.exit.2.prol ]
  %i.ig = icmp eq i16 %i.hs, 1
  br i1 %i.ig, label %._crit_edge.loopexit.2, label %ReplicateValue.exit.2

ReplicateValue.exit.2:                            ; preds = %ReplicateValue.exit.2.prol.loopexit, %ReplicateValue.exit.2
  %indvars.iv99.2 = phi i64 [ %indvars.iv.next100.2.1, %ReplicateValue.exit.2 ], [ %indvars.iv99.2.unr, %ReplicateValue.exit.2.prol.loopexit ] ; 3 uses
  %.07691.2 = phi i32 [ %i.jc, %ReplicateValue.exit.2 ], [ %.07691.2.unr, %ReplicateValue.exit.2.prol.loopexit ]
  %.28290.2 = phi i64 [ %i.jb, %ReplicateValue.exit.2 ], [ %.28290.2.unr, %ReplicateValue.exit.2.prol.loopexit ] ; 3 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv99.2
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.2 = shl i32 %i.ii, 16
  %.sroa.0.0.insert.insert.i.2 = or disjoint i32 %.sroa.22.0.insert.ext.i.2, 3 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.2
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !10
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.il ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 96
  store i32 %.sroa.0.0.insert.insert.i.2, ptr %i.in, align 2
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 64
  store i32 %.sroa.0.0.insert.insert.i.2, ptr %i.io, align 2
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  store i32 %.sroa.0.0.insert.insert.i.2, ptr %i.ip, align 2
  store i32 %.sroa.0.0.insert.insert.i.2, ptr %i.im, align 2
  %i.iq = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv99.2
  %i.ir = getelementptr i8, ptr %i.iq, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.2.1 = shl i32 %i.is, 16
  %.sroa.0.0.insert.insert.i.2.1 = or disjoint i32 %.sroa.22.0.insert.ext.i.2.1, 3 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.2
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !10
  %i.iw = zext i8 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.iw ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 96
  store i32 %.sroa.0.0.insert.insert.i.2.1, ptr %i.iy, align 2
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  store i32 %.sroa.0.0.insert.insert.i.2.1, ptr %i.iz, align 2
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  store i32 %.sroa.0.0.insert.insert.i.2.1, ptr %i.ja, align 2
  store i32 %.sroa.0.0.insert.insert.i.2.1, ptr %i.ix, align 2
  %indvars.iv.next100.2.1 = add nuw nsw i64 %indvars.iv99.2, 2 ; 2 uses
  %i.jb = add nuw nsw i64 %.28290.2, 64           ; 2 uses
  %i.jc = add nsw i32 %.07691.2, -2               ; 2 uses
  %.not84.2.1 = icmp eq i32 %i.jc, 0
  br i1 %.not84.2.1, label %._crit_edge.loopexit.2, label %ReplicateValue.exit.2, !llvm.loop !12

._crit_edge.loopexit.2:                           ; preds = %ReplicateValue.exit.2, %ReplicateValue.exit.2.prol.loopexit
  %indvars.iv.next100.2.lcssa = phi i64 [ %indvars.iv.next100.2.lcssa.unr, %ReplicateValue.exit.2.prol.loopexit ], [ %indvars.iv.next100.2.1, %ReplicateValue.exit.2 ]
  %.lcssa119 = phi i64 [ %.lcssa119.unr, %ReplicateValue.exit.2.prol.loopexit ], [ %i.jb, %ReplicateValue.exit.2 ]
  %i.jd = trunc nsw i64 %indvars.iv.next100.2.lcssa to i32
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.loopexit.2, %._crit_edge.1
  %.282.lcssa.2 = phi i64 [ %.282.lcssa.1, %._crit_edge.1 ], [ %.lcssa119, %._crit_edge.loopexit.2 ] ; 4 uses
  %.2.lcssa.2 = phi i32 [ %.2.lcssa.1, %._crit_edge.1 ], [ %i.jd, %._crit_edge.loopexit.2 ] ; 2 uses
  %i.je = load i16, ptr %i.r, align 2, !tbaa !9   ; 3 uses
  %.not8489.3 = icmp eq i16 %i.je, 0
  br i1 %.not8489.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %._crit_edge.2
  %i.jf = zext i16 %i.je to i32                   ; 3 uses
  %i.jg = sext i32 %.2.lcssa.2 to i64             ; 3 uses
  %xtraiter122 = and i32 %i.jf, 1
  %lcmp.mod123.not = icmp eq i32 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %ReplicateValue.exit.3.prol.loopexit, label %ReplicateValue.exit.3.prol

ReplicateValue.exit.3.prol:                       ; preds = %.lr.ph.3
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.3.prol = shl i32 %i.ji, 16
  %.sroa.0.0.insert.insert.i.3.prol = or disjoint i32 %.sroa.22.0.insert.ext.i.3.prol, 4 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.282.lcssa.2
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !10
  %i.jl = zext i8 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  store i32 %.sroa.0.0.insert.insert.i.3.prol, ptr %i.jn, align 2
  store i32 %.sroa.0.0.insert.insert.i.3.prol, ptr %i.jm, align 2
  %indvars.iv.next100.3.prol = add nuw nsw i64 %i.jg, 1 ; 2 uses
  %i.jo = add nuw nsw i64 %.282.lcssa.2, 16       ; 2 uses
  %i.jp = add nsw i32 %i.jf, -1
  br label %ReplicateValue.exit.3.prol.loopexit

ReplicateValue.exit.3.prol.loopexit:              ; preds = %ReplicateValue.exit.3.prol, %.lr.ph.3
  %indvars.iv.next100.3.lcssa.unr = phi i64 [ poison, %.lr.ph.3 ], [ %indvars.iv.next100.3.prol, %ReplicateValue.exit.3.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.3 ], [ %i.jo, %ReplicateValue.exit.3.prol ]
  %indvars.iv99.3.unr = phi i64 [ %i.jg, %.lr.ph.3 ], [ %indvars.iv.next100.3.prol, %ReplicateValue.exit.3.prol ]
  %.07691.3.unr = phi i32 [ %i.jf, %.lr.ph.3 ], [ %i.jp, %ReplicateValue.exit.3.prol ]
  %.28290.3.unr = phi i64 [ %.282.lcssa.2, %.lr.ph.3 ], [ %i.jo, %ReplicateValue.exit.3.prol ]
  %i.jq = icmp eq i16 %i.je, 1
  br i1 %i.jq, label %._crit_edge.loopexit.3, label %ReplicateValue.exit.3

ReplicateValue.exit.3:                            ; preds = %ReplicateValue.exit.3.prol.loopexit, %ReplicateValue.exit.3
  %indvars.iv99.3 = phi i64 [ %indvars.iv.next100.3.1, %ReplicateValue.exit.3 ], [ %indvars.iv99.3.unr, %ReplicateValue.exit.3.prol.loopexit ] ; 3 uses
  %.07691.3 = phi i32 [ %i.ki, %ReplicateValue.exit.3 ], [ %.07691.3.unr, %ReplicateValue.exit.3.prol.loopexit ]
  %.28290.3 = phi i64 [ %i.kh, %ReplicateValue.exit.3 ], [ %.28290.3.unr, %ReplicateValue.exit.3.prol.loopexit ] ; 3 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv99.3
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.3 = shl i32 %i.js, 16
  %.sroa.0.0.insert.insert.i.3 = or disjoint i32 %.sroa.22.0.insert.ext.i.3, 4 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.3
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !10
  %i.jv = zext i8 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jv ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 64
  store i32 %.sroa.0.0.insert.insert.i.3, ptr %i.jx, align 2
  store i32 %.sroa.0.0.insert.insert.i.3, ptr %i.jw, align 2
  %i.jy = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv99.3
  %i.jz = getelementptr i8, ptr %i.jy, i64 4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.3.1 = shl i32 %i.ka, 16
  %.sroa.0.0.insert.insert.i.3.1 = or disjoint i32 %.sroa.22.0.insert.ext.i.3.1, 4 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.3
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !10
  %i.ke = zext i8 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ke ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 64
  store i32 %.sroa.0.0.insert.insert.i.3.1, ptr %i.kg, align 2
  store i32 %.sroa.0.0.insert.insert.i.3.1, ptr %i.kf, align 2
  %indvars.iv.next100.3.1 = add nuw nsw i64 %indvars.iv99.3, 2 ; 2 uses
  %i.kh = add nuw nsw i64 %.28290.3, 32           ; 2 uses
  %i.ki = add nsw i32 %.07691.3, -2               ; 2 uses
  %.not84.3.1 = icmp eq i32 %i.ki, 0
  br i1 %.not84.3.1, label %._crit_edge.loopexit.3, label %ReplicateValue.exit.3, !llvm.loop !12
end_hunk_0
begin_hunk_1_@BrotliBuildCodeLengthsHuffmanTable:bb.a
  %.sroa.0.0.insert.insert.i.4.1 = or disjoint i32 %.sroa.22.0.insert.ext.i.4.1, 5
  %i.lf = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !10
  %i.li = zext i8 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.li
  store i32 %.sroa.0.0.insert.insert.i.4.1, ptr %i.lj, align 2
  %indvars.iv.next100.4.1 = add nuw nsw i64 %indvars.iv99.4, 2
  %i.lk = add nuw nsw i64 %.28290.4, 16
  %i.ll = add nsw i32 %.07691.4, -2               ; 2 uses
  %.not84.4.1 = icmp eq i32 %i.ll, 0
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
  %.sroa.0.0.insert.ext.i = and i32 %i.as, 255    ; 2 uses
  br i1 %i.au, label %.lr.ph153.split.us.preheader, label %.lr.ph153.split

.lr.ph153.split.us.preheader:                     ; preds = %.lr.ph153
  %i.av = trunc nsw i64 %i.ao to i32
  br label %.lr.ph153.split.us

.lr.ph153.split.us:                               ; preds = %.lr.ph153.split.us.preheader, %ReplicateValue.exit.us
  %.1151.us = phi ptr [ %.2.us, %ReplicateValue.exit.us ], [ %.0175, %.lr.ph153.split.us.preheader ] ; 2 uses
  %.189150.us = phi i32 [ %.290.us, %ReplicateValue.exit.us ], [ %.088173, %.lr.ph153.split.us.preheader ] ; 2 uses
  %.3149.us = phi i32 [ %.4.us, %ReplicateValue.exit.us ], [ %.293172, %.lr.ph153.split.us.preheader ] ; 2 uses
  %.199148.us = phi i64 [ %i.cg, %ReplicateValue.exit.us ], [ %.098167, %.lr.ph153.split.us.preheader ] ; 2 uses
  %.3105147.us = phi i64 [ %.4106.us, %ReplicateValue.exit.us ], [ %.2104166, %.lr.ph153.split.us.preheader ] ; 3 uses
  %.1108146.us = phi i32 [ %i.bx, %ReplicateValue.exit.us ], [ %i.av, %.lr.ph153.split.us.preheader ]
  %i.aw = icmp eq i64 %.199148.us, 256
  br i1 %i.aw, label %.lr.ph141.us, label %bb.j

.lr.ph141.us:                                     ; preds = %.lr.ph153.split.us
  %i.ax = sext i32 %.3149.us to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.1151.us, i64 %i.ax ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph141.us, %bb.i
  %indvars.iv192 = phi i64 [ %indvars.iv190, %.lr.ph141.us ], [ %indvars.iv.next193, %bb.i ] ; 3 uses
  %.0.i128139.us = phi i32 [ %i.at, %.lr.ph141.us ], [ %i.be, %bb.i ]
  %i.az = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv192
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !9
  %i.bb = zext i16 %i.ba to i32
  %i.bc = sub nsw i32 %.0.i128139.us, %i.bb       ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %NextTableBitSize.exit.us.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next193 = add nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.be = shl nuw i32 %i.bc, 1
  %i.bf = and i64 %indvars.iv.next193, 4294967295
  %exitcond.not = icmp eq i64 %i.bf, 15
  br i1 %exitcond.not, label %NextTableBitSize.exit.us, label %bb.h, !llvm.loop !19

NextTableBitSize.exit.us.split.loop.exit:         ; preds = %bb.h
  %i.bg = trunc nsw i64 %indvars.iv192 to i32
  br label %NextTableBitSize.exit.us

NextTableBitSize.exit.us:                         ; preds = %bb.i, %NextTableBitSize.exit.us.split.loop.exit
  %.010.i.lcssa.us.a = phi i32 [ %i.bg, %NextTableBitSize.exit.us.split.loop.exit ], [ 15, %bb.i ] ; 2 uses
  %i.bh = sub nsw i32 %.010.i.lcssa.us.a, %1
  %i.bi = shl nuw i32 1, %i.bh                    ; 2 uses
  %i.bj = add nsw i32 %i.bi, %.189150.us
  %i.bk = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.3105147.us
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !10
  %i.bm = zext i8 %i.bl to i64                    ; 2 uses
  %i.bn = add i64 %.3105147.us, %i.al
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm
  %i.bp = ptrtoint ptr %i.ay to i64
  %i.bq = sub i64 %i.bp, %i.am
  %i.br = lshr exact i64 %i.bq, 2
  %i.bs = sub nsw i64 %i.br, %i.bm
  %i.bt = trunc i64 %i.bs to i32
  %.sroa.22.0.insert.ext.i118.us = shl i32 %i.bt, 16
  %.sroa.0.0.insert.ext.i120.us = and i32 %.010.i.lcssa.us.a, 255
  %.sroa.0.0.insert.insert.i121.us = or disjoint i32 %.sroa.22.0.insert.ext.i118.us, %.sroa.0.0.insert.ext.i120.us
  store i32 %.sroa.0.0.insert.insert.i121.us, ptr %i.bo, align 2
  br label %bb.j

bb.j:                                             ; preds = %NextTableBitSize.exit.us, %.lr.ph153.split.us
  %.4106.us = phi i64 [ %i.bn, %NextTableBitSize.exit.us ], [ %.3105147.us, %.lr.ph153.split.us ] ; 2 uses
  %.2100.us = phi i64 [ 0, %NextTableBitSize.exit.us ], [ %.199148.us, %.lr.ph153.split.us ] ; 2 uses
  %.4.us = phi i32 [ %i.bi, %NextTableBitSize.exit.us ], [ %.3149.us, %.lr.ph153.split.us ] ; 3 uses
  %.290.us = phi i32 [ %i.bj, %NextTableBitSize.exit.us ], [ %.189150.us, %.lr.ph153.split.us ] ; 2 uses
  %.2.us = phi ptr [ %i.ay, %NextTableBitSize.exit.us ], [ %.1151.us, %.lr.ph153.split.us ] ; 3 uses
  %i.bu = sext i32 %.1108146.us to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !9
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %.sroa.22.0.insert.shift.i.us = shl nuw i32 %i.bx, 16
  %.sroa.0.0.insert.insert.i.us = or disjoint i32 %.sroa.22.0.insert.shift.i.us, %.sroa.0.0.insert.ext.i
  %i.by = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.2100.us
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !10
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.2.us, i64 %i.ca
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.i.us = phi i32 [ %.4.us, %bb.j ], [ %i.cc, %bb.k ]
  %i.cc = sub nsw i32 %.0.i.us, %.196170          ; 3 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cd
  store i32 %.sroa.0.0.insert.insert.i.us, ptr %i.ce, align 2
  %i.cf = icmp sgt i32 %i.cc, 0
  br i1 %i.cf, label %bb.k, label %ReplicateValue.exit.us, !llvm.loop !15

ReplicateValue.exit.us:                           ; preds = %bb.k
  %i.cg = add i64 %.2100.us, %.097168             ; 2 uses
  %i.ch = load i16, ptr %i.ap, align 2, !tbaa !9
  %i.ci = add i16 %i.ch, -1                       ; 2 uses
  store i16 %i.ci, ptr %i.ap, align 2, !tbaa !9
  %.not116.us = icmp eq i16 %i.ci, 0
  br i1 %.not116.us, label %._crit_edge154, label %.lr.ph153.split.us, !llvm.loop !20

.lr.ph153.split:                                  ; preds = %.lr.ph153
  %i.cj = trunc nuw nsw i64 %indvars.iv.next196 to i32
  %.sroa.0.0.insert.ext.i120 = and i32 %i.cj, 255
  %i.ck = trunc nsw i64 %i.ao to i32
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph153.split, %ReplicateValue.exit
  %.1151 = phi ptr [ %.0175, %.lr.ph153.split ], [ %.2, %ReplicateValue.exit ] ; 2 uses
  %.189150 = phi i32 [ %.088173, %.lr.ph153.split ], [ %.290, %ReplicateValue.exit ] ; 2 uses
  %.3149 = phi i32 [ %.293172, %.lr.ph153.split ], [ %.4, %ReplicateValue.exit ] ; 2 uses
  %.199148 = phi i64 [ %.098167, %.lr.ph153.split ], [ %i.dl, %ReplicateValue.exit ] ; 2 uses
  %.3105147 = phi i64 [ %.2104166, %.lr.ph153.split ], [ %.4106, %ReplicateValue.exit ] ; 3 uses
  %.1108146 = phi i32 [ %i.ck, %.lr.ph153.split ], [ %i.dc, %ReplicateValue.exit ]
  %i.cl = icmp eq i64 %.199148, 256
  br i1 %i.cl, label %NextTableBitSize.exit, label %bb.m

NextTableBitSize.exit:                            ; preds = %bb.l
  %i.cm = sext i32 %.3149 to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %.1151, i64 %i.cm ; 2 uses
  %i.co = add nsw i32 %i.at, %.189150
  %i.cp = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.3105147
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !10
  %i.cr = zext i8 %i.cq to i64                    ; 2 uses
  %i.cs = add i64 %.3105147, %i.al
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cr
  %i.cu = ptrtoint ptr %i.cn to i64
  %i.cv = sub i64 %i.cu, %i.am
  %i.cw = lshr exact i64 %i.cv, 2
  %i.cx = sub nsw i64 %i.cw, %i.cr
  %i.cy = trunc i64 %i.cx to i32
  %.sroa.22.0.insert.ext.i118 = shl i32 %i.cy, 16
  %.sroa.0.0.insert.insert.i121 = or disjoint i32 %.sroa.22.0.insert.ext.i118, %.sroa.0.0.insert.ext.i120
  store i32 %.sroa.0.0.insert.insert.i121, ptr %i.ct, align 2
  br label %bb.m

bb.m:                                             ; preds = %NextTableBitSize.exit, %bb.l
  %.4106 = phi i64 [ %i.cs, %NextTableBitSize.exit ], [ %.3105147, %bb.l ] ; 2 uses
  %.2100 = phi i64 [ 0, %NextTableBitSize.exit ], [ %.199148, %bb.l ] ; 2 uses
  %.4 = phi i32 [ %i.at, %NextTableBitSize.exit ], [ %.3149, %bb.l ] ; 3 uses
  %.290 = phi i32 [ %i.co, %NextTableBitSize.exit ], [ %.189150, %bb.l ] ; 2 uses
  %.2 = phi ptr [ %i.cn, %NextTableBitSize.exit ], [ %.1151, %bb.l ] ; 3 uses
  %i.cz = sext i32 %.1108146 to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !9
  %i.dc = zext i16 %i.db to i32                   ; 2 uses
  %.sroa.22.0.insert.shift.i = shl nuw i32 %i.dc, 16
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.22.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.dd = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.2100
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !10
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %i.df
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0.i = phi i32 [ %.4, %bb.m ], [ %i.dh, %bb.n ]
  %i.dh = sub nsw i32 %.0.i, %.196170             ; 3 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.di
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.dj, align 2
  %i.dk = icmp sgt i32 %i.dh, 0
  br i1 %i.dk, label %bb.n, label %ReplicateValue.exit, !llvm.loop !15

ReplicateValue.exit:                              ; preds = %bb.n
  %i.dl = add i64 %.2100, %.097168                ; 2 uses
  %i.dm = load i16, ptr %i.ap, align 2, !tbaa !9
  %i.dn = add i16 %i.dm, -1                       ; 2 uses
  store i16 %i.dn, ptr %i.ap, align 2, !tbaa !9
  %.not116 = icmp eq i16 %i.dn, 0
  br i1 %.not116, label %._crit_edge154, label %bb.l, !llvm.loop !20

._crit_edge154:                                   ; preds = %ReplicateValue.exit, %ReplicateValue.exit.us, %bb.g
  %.3105.lcssa = phi i64 [ %.2104166, %bb.g ], [ %.4106.us, %ReplicateValue.exit.us ], [ %.4106, %ReplicateValue.exit ]
  %.199.lcssa = phi i64 [ %.098167, %bb.g ], [ %i.cg, %ReplicateValue.exit.us ], [ %i.dl, %ReplicateValue.exit ]
  %.3.lcssa = phi i32 [ %.293172, %bb.g ], [ %.4.us, %ReplicateValue.exit.us ], [ %.4, %ReplicateValue.exit ]
  %.189.lcssa = phi i32 [ %.088173, %bb.g ], [ %.290.us, %ReplicateValue.exit.us ], [ %.290, %ReplicateValue.exit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0175, %bb.g ], [ %.2.us, %ReplicateValue.exit.us ], [ %.2, %ReplicateValue.exit ]
  %i.do = shl i32 %.196170, 1
  %i.dp = lshr i64 %.097168, 1
  %exitcond200.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count
  br i1 %exitcond200.not, label %._crit_edge179, label %bb.g, !llvm.loop !21

._crit_edge179:                                   ; preds = %._crit_edge154, %._crit_edge136
  %.088.lcssa = phi i32 [ %i.f, %._crit_edge136 ], [ %.189.lcssa, %._crit_edge154 ]
  ret i32 %.088.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 1, -2147483647) i32 @BrotliBuildSimpleHuffmanTable(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %1                        ; 3 uses
  switch i32 %3, label %bb.u [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %.lr.ph
    i32 4, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %2, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i172 = zext i16 %i.b to i32
  %.sroa.22.0.insert.shift.i173 = shl nuw i32 %.sroa.22.0.insert.ext.i172, 16
  store i32 %.sroa.22.0.insert.shift.i173, ptr %0, align 2
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !9    ; 2 uses
  %i.e = load i16, ptr %2, align 2, !tbaa !9      ; 2 uses
  %i.f = icmp ugt i16 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.22.0.insert.ext.i169 = zext i16 %i.e to i32
  %.sroa.22.0.insert.shift.i170 = shl nuw i32 %.sroa.22.0.insert.ext.i169, 16
  %.sroa.0.0.insert.insert.i171 = or disjoint i32 %.sroa.22.0.insert.shift.i170, 1
  store i32 %.sroa.0.0.insert.insert.i171, ptr %0, align 2
  %i.h = load i16, ptr %i.c, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i166 = zext i16 %i.h to i32
  %.sroa.22.0.insert.shift.i167 = shl nuw i32 %.sroa.22.0.insert.ext.i166, 16
  %.sroa.0.0.insert.insert.i168 = or disjoint i32 %.sroa.22.0.insert.shift.i167, 1
  store i32 %.sroa.0.0.insert.insert.i168, ptr %i.g, align 2
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %.sroa.22.0.insert.ext.i163 = zext i16 %i.d to i32
  %.sroa.22.0.insert.shift.i164 = shl nuw i32 %.sroa.22.0.insert.ext.i163, 16
  %.sroa.0.0.insert.insert.i165 = or disjoint i32 %.sroa.22.0.insert.shift.i164, 1
  store i32 %.sroa.0.0.insert.insert.i165, ptr %0, align 2
  %i.i = load i16, ptr %2, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i160 = zext i16 %i.i to i32
  %.sroa.22.0.insert.shift.i161 = shl nuw i32 %.sroa.22.0.insert.ext.i160, 16
  %.sroa.0.0.insert.insert.i162 = or disjoint i32 %.sroa.22.0.insert.shift.i161, 1
  store i32 %.sroa.0.0.insert.insert.i162, ptr %i.g, align 2
  br label %bb.u

bb.f:                                             ; preds = %bb.a
  %i.j = load i16, ptr %2, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i157 = zext i16 %i.j to i32
  %.sroa.22.0.insert.shift.i158 = shl nuw i32 %.sroa.22.0.insert.ext.i157, 16
  %.sroa.0.0.insert.insert.i159 = or disjoint i32 %.sroa.22.0.insert.shift.i158, 1
  store i32 %.sroa.0.0.insert.insert.i159, ptr %0, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i16, ptr %2, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i154 = zext i16 %i.l to i32
  %.sroa.22.0.insert.shift.i155 = shl nuw i32 %.sroa.22.0.insert.ext.i154, 16
  %.sroa.0.0.insert.insert.i156 = or disjoint i32 %.sroa.22.0.insert.shift.i155, 1
  store i32 %.sroa.0.0.insert.insert.i156, ptr %i.k, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !9    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !9    ; 2 uses
  %i.q = icmp ugt i16 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.22.0.insert.ext.i151 = zext i16 %i.p to i32
  %.sroa.22.0.insert.shift.i152 = shl nuw i32 %.sroa.22.0.insert.ext.i151, 16
  %.sroa.0.0.insert.insert.i153 = or disjoint i32 %.sroa.22.0.insert.shift.i152, 2
end_hunk_1
