Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg4videodec?download=true
inline.NumInlined: 418
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 34
begin_hunk_0_@mpeg4_decode_sprite_trajectory:bb.a
  %i.av = icmp slt i16 %i.at, 0
  br i1 %i.av, label %bb.c, label %get_vlc2.exit556

bb.c:                                             ; preds = %bb.b
  %i.aw = add i32 %i.ae, 6                        ; 3 uses
  %i.ax = lshr i32 %i.aw, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 1, !tbaa !139
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bc = and i32 %i.aw, 7
  %i.bd = shl i32 %i.bb, %i.bc
  %i.be = add nsw i32 %i.au, 32
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = add i32 %i.bf, %i.ar
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @sprite_trajectory, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !139
  %i.bl = sext i16 %i.bk to i32
  %i.bm = load i16, ptr %i.bi, align 4, !tbaa !139
  %i.bn = sext i16 %i.bm to i32
  br label %get_vlc2.exit556

get_vlc2.exit556:                                 ; preds = %bb.b, %bb.c
  %.154.i553 = phi i32 [ %i.bn, %bb.c ], [ %i.ar, %bb.b ] ; 3 uses
  %.152.i554 = phi i32 [ %i.aw, %bb.c ], [ %i.ae, %bb.b ]
  %.1.i555 = phi i32 [ %i.bl, %bb.c ], [ %i.au, %bb.b ]
  %i.bo = add i32 %.1.i555, %.152.i554            ; 5 uses
  store i32 %i.bo, ptr %i.q, align 8, !tbaa !141
  %i.bp = icmp sgt i32 %.154.i553, 0
  br i1 %i.bp, label %bb.d, label %bb.e

bb.d:                                             ; preds = %get_vlc2.exit556
  %i.bq = lshr i32 %i.bo, 3
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 1, !tbaa !139
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = and i32 %i.bo, 7
  %i.bw = shl i32 %i.bu, %i.bv                    ; 2 uses
  %isnotneg.i = icmp sgt i32 %i.bw, -1            ; 2 uses
  %i.bx = sext i1 %isnotneg.i to i32
  %i.by = add i32 %i.bo, %.154.i553               ; 2 uses
  store i32 %i.by, ptr %i.q, align 8, !tbaa !141
  %i.bz = xor i32 %i.bw, %i.bx
  %i.ca = sub nsw i32 32, %.154.i553
  %i.cb = lshr i32 %i.bz, %i.ca                   ; 2 uses
  %i.cc = sub i32 0, %i.cb
  %i.cd = select i1 %isnotneg.i, i32 %i.cc, i32 %i.cb
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %get_vlc2.exit556
  %i.ce = phi i32 [ %i.by, %bb.d ], [ %i.bo, %get_vlc2.exit556 ] ; 5 uses
  %.0508 = phi i32 [ %i.cd, %bb.d ], [ 0, %get_vlc2.exit556 ] ; 2 uses
  %i.cf = load i32, ptr %i.r, align 16, !tbaa !160
  %i.cg = icmp eq i32 %i.cf, 500
  br i1 %i.cg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ch = load i32, ptr %i.s, align 4, !tbaa !161
  %i.ci = icmp eq i32 %i.ch, 413
  br i1 %i.ci, label %check_marker.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cj = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.ck = lshr i32 %i.ce, 3
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !139
  %i.co = and i32 %i.ce, 7
  %i.cp = zext i8 %i.cn to i32
  %i.cq = add i32 %i.ce, 1                        ; 2 uses
  store i32 %i.cq, ptr %i.q, align 8, !tbaa !141
  %i.cr = lshr exact i32 128, %i.co
  %i.cs = and i32 %i.cr, %i.cp
  %.not.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i, label %bb.h, label %check_marker.exit

bb.h:                                             ; preds = %bb.g
  %i.ct = load i32, ptr %i.u, align 4, !tbaa !154
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cj, i32 noundef 32, ptr noundef nonnull @.str.55, i32 noundef %i.ce, i32 noundef %i.ct, ptr noundef nonnull @.str.56) #13
  %.pre = load i32, ptr %i.q, align 8, !tbaa !141
  %.pre636 = load ptr, ptr %1, align 8, !tbaa !143
  br label %check_marker.exit

check_marker.exit:                                ; preds = %bb.h, %bb.g, %bb.f
  %i.cu = phi ptr [ %.pre636, %bb.h ], [ %i.af, %bb.g ], [ %i.af, %bb.f ] ; 4 uses
  %i.cv = phi i32 [ %.pre, %bb.h ], [ %i.cq, %bb.g ], [ %i.ce, %bb.f ] ; 4 uses
  %i.cw = lshr i32 %i.cv, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 1, !tbaa !139
  %i.da = tail call i32 @llvm.bswap.i32(i32 %i.cz)
  %i.db = and i32 %i.cv, 7
  %i.dc = shl i32 %i.da, %i.db
  %i.dd = lshr i32 %i.dc, 26
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr @sprite_trajectory, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 4, !tbaa !139
  %i.dh = sext i16 %i.dg to i32                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !139 ; 2 uses
  %i.dk = sext i16 %i.dj to i32                   ; 2 uses
  %i.dl = icmp slt i16 %i.dj, 0
  br i1 %i.dl, label %bb.i, label %get_vlc2.exit

bb.i:                                             ; preds = %check_marker.exit
  %i.dm = add i32 %i.cv, 6                        ; 3 uses
  %i.dn = lshr i32 %i.dm, 3
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 1, !tbaa !139
  %i.dr = tail call i32 @llvm.bswap.i32(i32 %i.dq)
  %i.ds = and i32 %i.dm, 7
  %i.dt = shl i32 %i.dr, %i.ds
  %i.du = add nsw i32 %i.dk, 32
  %i.dv = lshr i32 %i.dt, %i.du
  %i.dw = add i32 %i.dv, %i.dh
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @sprite_trajectory, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !139
  %i.eb = sext i16 %i.ea to i32
  %i.ec = load i16, ptr %i.dy, align 4, !tbaa !139
  %i.ed = sext i16 %i.ec to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %check_marker.exit, %bb.i
  %.154.i = phi i32 [ %i.ed, %bb.i ], [ %i.dh, %check_marker.exit ] ; 3 uses
  %.152.i = phi i32 [ %i.dm, %bb.i ], [ %i.cv, %check_marker.exit ]
  %.1.i = phi i32 [ %i.eb, %bb.i ], [ %i.dk, %check_marker.exit ]
  %i.ee = add i32 %.1.i, %.152.i                  ; 5 uses
  store i32 %i.ee, ptr %i.q, align 8, !tbaa !141
  %i.ef = icmp sgt i32 %.154.i, 0
  br i1 %i.ef, label %bb.j, label %bb.k

bb.j:                                             ; preds = %get_vlc2.exit
  %i.eg = lshr i32 %i.ee, 3
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 1, !tbaa !139
  %i.ek = tail call i32 @llvm.bswap.i32(i32 %i.ej)
  %i.el = and i32 %i.ee, 7
  %i.em = shl i32 %i.ek, %i.el                    ; 2 uses
  %isnotneg.i557 = icmp sgt i32 %i.em, -1         ; 2 uses
  %i.en = sext i1 %isnotneg.i557 to i32
  %i.eo = add i32 %i.ee, %.154.i                  ; 2 uses
  store i32 %i.eo, ptr %i.q, align 8, !tbaa !141
  %i.ep = xor i32 %i.em, %i.en
  %i.eq = sub nsw i32 32, %.154.i
  %i.er = lshr i32 %i.ep, %i.eq                   ; 2 uses
  %i.es = sub i32 0, %i.er
  %i.et = select i1 %isnotneg.i557, i32 %i.es, i32 %i.er
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %get_vlc2.exit
  %i.eu = phi i32 [ %i.eo, %bb.j ], [ %i.ee, %get_vlc2.exit ] ; 4 uses
  %.0 = phi i32 [ %i.et, %bb.j ], [ 0, %get_vlc2.exit ] ; 2 uses
  %i.ev = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.ew = lshr i32 %i.eu, 3
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !139
  %i.fa = and i32 %i.eu, 7
  %i.fb = zext i8 %i.ez to i32
  %i.fc = add i32 %i.eu, 1
  store i32 %i.fc, ptr %i.q, align 8, !tbaa !141
  %i.fd = lshr exact i32 128, %i.fa
  %i.fe = and i32 %i.fd, %i.fb
  %.not.i558 = icmp eq i32 %i.fe, 0
  br i1 %.not.i558, label %bb.l, label %check_marker.exit559

bb.l:                                             ; preds = %bb.k
  %i.ff = load i32, ptr %i.u, align 4, !tbaa !154
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ev, i32 noundef 32, ptr noundef nonnull @.str.55, i32 noundef %i.eu, i32 noundef %i.ff, ptr noundef nonnull @.str.57) #13
  br label %check_marker.exit559

check_marker.exit559:                             ; preds = %bb.k, %bb.l
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store i32 %.0508, ptr %i.fg, align 8, !tbaa !42
  %i.fh = trunc i32 %.0508 to i16
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  store i16 %i.fh, ptr %i.fi, align 4, !tbaa !79
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %.0, ptr %i.fj, align 4, !tbaa !42
  %i.fk = trunc i32 %.0 to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.fm = load i32, ptr %i.n, align 4, !tbaa !159 ; 3 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next, %i.fn
  br i1 %i.fo, label %bb.b, label %.preheader573, !llvm.loop !162

.preheader572:                                    ; preds = %.lr.ph581, %.preheader573
  %i.fp = phi i32 [ %i.y, %.lr.ph581 ], [ %i.fm, %.preheader573 ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader572
  %.0514 = phi i32 [ %i.fs, %bb.m ], [ 1, %.preheader572 ] ; 10 uses
  %i.fq = shl nuw i32 1, %.0514                   ; 3 uses
  %i.fr = icmp slt i32 %i.fq, %i.i
  %i.fs = add nuw nsw i32 %.0514, 1
  br i1 %i.fr, label %bb.m, label %.preheader571, !llvm.loop !163

.preheader571:                                    ; preds = %bb.m, %.preheader571
  %.0513 = phi i32 [ %i.fv, %.preheader571 ], [ 0, %bb.m ] ; 6 uses
  %i.ft = shl nuw i32 1, %.0513                   ; 3 uses
  %i.fu = icmp slt i32 %i.ft, %i.k
  %i.fv = add nuw nsw i32 %.0513, 1
  br i1 %i.fu, label %.preheader571, label %bb.n, !llvm.loop !164

bb.n:                                             ; preds = %.preheader571
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 5584
  %i.fx = load i32, ptr %i.fw, align 16, !tbaa !160
  %i.fy = icmp eq i32 %i.fx, 500
  br i1 %i.fy, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %.pre637 = load i32, ptr %i.a, align 16, !tbaa !42
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 5588
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !161
  %i.gb = icmp eq i32 %i.ga, 413
  %.pre638 = load i32, ptr %i.a, align 16, !tbaa !42 ; 4 uses
  br i1 %i.gb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !42 ; 3 uses
  %i.ge = mul nsw i32 %i.d, %i.i
  %i.gf = add nsw i32 %.pre638, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !42
  %i.gi = add nsw i32 %i.gf, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !42
  %i.gl = add nsw i32 %i.gk, %i.gd
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gn = load i32, ptr %i.gm, align 16, !tbaa !42
  %i.go = add nsw i32 %i.gn, %.pre638
  %i.gp = mul nsw i32 %i.k, %i.d
  %i.gq = add nsw i32 %i.gd, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !42
  %i.gt = add nsw i32 %i.gq, %i.gs
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge, %bb.o
  %i.gu = phi i32 [ %.pre637, %._crit_edge ], [ %.pre638, %bb.o ] ; 3 uses
  %i.gv = ashr exact i32 %i.d, 1                  ; 6 uses
  %i.gw = mul nsw i32 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !42 ; 3 uses
  %i.gz = mul nsw i32 %i.gy, %i.gv
  %i.ha = shl nuw nsw i32 %i.i, 1
  %i.hb = add nsw i32 %i.gu, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !42
  %i.he = add nsw i32 %i.hb, %i.hd
  %i.hf = mul nsw i32 %i.he, %i.gv
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !42
  %i.hi = add nsw i32 %i.hh, %i.gy
  %i.hj = mul nsw i32 %i.hi, %i.gv
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hl = load i32, ptr %i.hk, align 16, !tbaa !42
  %i.hm = add nsw i32 %i.hl, %i.gu
  %i.hn = mul nsw i32 %i.hm, %i.gv
  %i.ho = shl nuw nsw i32 %i.k, 1
  %i.hp = add nsw i32 %i.gy, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !42
  %i.hs = add nsw i32 %i.hp, %i.hr
  %i.ht = mul nsw i32 %i.hs, %i.gv
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.71.0 = phi i32 [ %i.gt, %bb.p ], [ %i.ht, %bb.q ]
  %.sroa.66.0 = phi i32 [ %i.go, %bb.p ], [ %i.hn, %bb.q ]
  %.sroa.61.0 = phi i32 [ %i.gl, %bb.p ], [ %i.hj, %bb.q ]
  %.sroa.56158.0 = phi i32 [ %i.gi, %bb.p ], [ %i.hf, %bb.q ]
  %.sroa.29.0 = phi i32 [ %i.gd, %bb.p ], [ %i.gz, %bb.q ] ; 7 uses
  %.sroa.0109.0 = phi i32 [ %.pre638, %bb.p ], [ %i.gw, %bb.q ] ; 7 uses
  %i.hu = shl i32 16, %.0514                      ; 3 uses
  %i.hv = sub nsw i32 %i.i, %i.fq
  %i.hw = sext i32 %i.hv to i64                   ; 2 uses
  %i.hx = mul nsw i32 %.sroa.0109.0, %i.g
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = mul nsw i64 %i.hy, %i.hw
  %i.ia = mul nsw i32 %.sroa.56158.0, %i.g
  %i.ib = sext i32 %i.ia to i64
  %i.ic = zext nneg i32 %i.i to i64               ; 4 uses
  %i.id = shl nuw nsw i64 %i.ic, 4
  %i.ie = sub nsw i64 %i.ib, %i.id
  %i.if = zext nneg i32 %.0514 to i64
  %i.ig = shl i64 %i.ie, %i.if
  %i.ih = add nsw i64 %i.hz, %i.ig                ; 2 uses
  %i.ii = lshr i32 %i.i, 1
  %i.ij = zext nneg i32 %i.ii to i64              ; 3 uses
  %i.ik = icmp slt i64 %i.ih, 0
  %i.il = sub nsw i64 0, %i.ij                    ; 2 uses
  %.p = select i1 %i.ik, i64 %i.il, i64 %i.ij
  %i.im = add i64 %.p, %i.ih
  %i.in = sdiv i64 %i.im, %i.ic
  %i.io = trunc i64 %i.in to i32
  %i.ip = add i32 %i.hu, %i.io                    ; 3 uses
  %i.iq = mul nsw i32 %.sroa.29.0, %i.g           ; 2 uses
  %i.ir = sext i32 %i.iq to i64                   ; 2 uses
  %i.is = mul nsw i64 %i.ir, %i.hw
  %i.it = mul nsw i32 %.sroa.61.0, %i.g
  %i.iu = sext i32 %i.it to i64
  %2 = zext nneg i32 %.0514 to i64
  %i.iv = shl i64 %i.iu, %2
  %i.iw = add nsw i64 %i.is, %i.iv                ; 2 uses
  %i.ix = icmp slt i64 %i.iw, 0
  %.p564 = select i1 %i.ix, i64 %i.il, i64 %i.ij
  %i.iy = add nsw i64 %.p564, %i.iw
  %i.iz = sdiv i64 %i.iy, %i.ic                   ; 3 uses
  %i.ja = zext nneg i32 %i.k to i64               ; 4 uses
  switch i32 %i.fp, label %bb.w [
    i32 0, label %bb.s
    i32 1, label %bb.t
    i32 2, label %bb.u
    i32 3, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.jb = sext i32 %i.d to i64                    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 5540
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 5544
  store i32 0, ptr %i.jd, align 8, !tbaa !42
  store i32 0, ptr %i.jc, align 4, !tbaa !42
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.je = sext i32 %.sroa.0109.0 to i64
  %i.jf = sext i32 %.sroa.29.0 to i64
  %i.jg = ashr i32 %.sroa.0109.0, 1
  %i.jh = and i32 %.sroa.0109.0, 1
  %i.ji = or i32 %i.jg, %i.jh
  %i.jj = sext i32 %i.ji to i64
  %i.jk = ashr i32 %.sroa.29.0, 1
  %i.jl = and i32 %.sroa.29.0, 1
  %i.jm = or i32 %i.jk, %i.jl
  %i.jn = sext i32 %i.jm to i64
  %i.jo = sext i32 %i.d to i64                    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 5540
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 5544
  store i32 0, ptr %i.jq, align 8, !tbaa !42
  store i32 0, ptr %i.jp, align 4, !tbaa !42
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.jr = trunc i64 %i.iz to i32                  ; 2 uses
  %i.js = sext i32 %i.hu to i64
  %i.jt = sext i32 %.sroa.0109.0 to i64           ; 3 uses
  %i.ju = add nsw i32 %.0514, %i.e                ; 6 uses
  %i.jv = shl nuw i32 1, %i.ju
  %i.jw = sext i32 %i.jv to i64                   ; 2 uses
  %i.jx = mul nsw i64 %i.jt, %i.jw
  %i.jy = sub nsw i32 0, %i.g                     ; 3 uses
  %i.jz = sext i32 %i.jy to i64                   ; 2 uses
  %i.ka = mul nsw i64 %i.jt, %i.jz
  %i.kb = sext i32 %i.ip to i64
  %i.kc = add nsw i64 %i.ka, %i.kb                ; 2 uses
  %i.kd = zext nneg i32 %i.g to i64
  %i.ke = sext i32 %.sroa.29.0 to i64             ; 3 uses
  %i.kf = mul nsw i64 %i.ke, %i.kd
  %sext541 = shl i64 %i.iz, 32
  %i.kg = ashr exact i64 %sext541, 32             ; 2 uses
  %i.kh = add nsw i32 %i.ju, -1
  %i.ki = shl nuw i32 1, %i.kh
  %i.kj = sext i32 %i.ki to i64                   ; 2 uses
  %i.kk = add nsw i64 %i.jx, %i.kj
  %i.kl = mul nsw i64 %i.ke, %i.jw
  %i.km = add nsw i64 %i.kl, %i.kj
  %i.kn = shl i32 2, %.0514
  %i.ko = mul nsw i32 %i.kn, %i.g
  %i.kp = sext i32 %i.ko to i64                   ; 2 uses
  %i.kq = mul nsw i64 %i.jt, %i.kp
  %i.kr = add nsw i32 %i.ju, 1
  %i.ks = shl nuw i32 1, %i.kr
  %i.kt = sext i32 %i.ks to i64
  %i.ku = sub nsw i64 %i.kt, %i.js                ; 2 uses
  %i.kv = add nsw i64 %i.ku, %i.kf
  %i.kw = add nsw i64 %i.kv, %i.kq
  %i.kx = sub nsw i64 %i.kw, %i.kg
  %i.ky = add nsw i64 %i.kx, %i.kc
  %reass.add = add nsw i64 %i.kp, %i.jz
  %reass.mul = mul nsw i64 %reass.add, %i.ke
  %i.kz = add nsw i64 %i.ku, %reass.mul
  %i.la = add nsw i64 %i.kz, %i.kg
  %i.lb = add nsw i64 %i.la, %i.kc
  %i.lc = mul nsw i32 %.sroa.0109.0, %i.jy
  %i.ld = add nsw i32 %i.ip, %i.lc
  %i.le = sext i32 %i.ld to i64                   ; 2 uses
  %i.lf = sub nsw i32 %i.iq, %i.jr
  %i.lg = sext i32 %i.lf to i64
  %i.lh = mul nsw i32 %.sroa.29.0, %i.jy
  %i.li = add nsw i32 %i.lh, %i.jr
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 5540
  store i32 %i.ju, ptr %i.lk, align 4, !tbaa !42
  %i.ll = add nsw i32 %i.ju, 2                    ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 5544
  store i32 %i.ll, ptr %i.lm, align 8, !tbaa !42
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.ln = lshr i32 %i.k, 1
  %i.lo = zext nneg i32 %i.ln to i64              ; 3 uses
  %i.lp = sub nsw i32 %i.k, %i.ft
  %i.lq = sext i32 %i.lp to i64                   ; 2 uses
  %i.lr = mul nsw i64 %i.ir, %i.lq
  %i.ls = mul nsw i32 %.sroa.71.0, %i.g
  %i.lt = sext i32 %i.ls to i64
  %i.lu = shl nuw nsw i64 %i.ja, 4
  %i.lv = sub nsw i64 %i.lt, %i.lu
  %i.lw = zext nneg i32 %.0513 to i64             ; 2 uses
  %i.lx = shl i64 %i.lv, %i.lw
  %i.ly = add nsw i64 %i.lr, %i.lx                ; 2 uses
  %i.lz = icmp slt i64 %i.ly, 0
  %i.ma = sub nsw i64 0, %i.lo                    ; 2 uses
  %.p566 = select i1 %i.lz, i64 %i.ma, i64 %i.lo
  %i.mb = add i64 %.p566, %i.ly
  %i.mc = shl i32 16, %.0513
  %i.md = mul nsw i64 %i.hy, %i.lq
  %i.me = mul nsw i32 %.sroa.66.0, %i.g
  %i.mf = sext i32 %i.me to i64
  %i.mg = shl i64 %i.mf, %i.lw
  %i.mh = add nsw i64 %i.md, %i.mg                ; 2 uses
  %i.mi = icmp slt i64 %i.mh, 0
  %.p565 = select i1 %i.mi, i64 %i.ma, i64 %i.lo
  %i.mj = add i64 %.p565, %i.mh
  %i.mk = sdiv i64 %i.mj, %i.ja
  %i.ml = sdiv i64 %i.mb, %i.ja
  %i.mm = trunc i64 %i.ml to i32
  %i.mn = add i32 %i.mc, %i.mm
  %i.mo = tail call i32 @llvm.umin.i32(i32 %.0514, i32 %.0513) ; 3 uses
  %i.mp = lshr i32 %i.fq, %i.mo
  %i.mq = lshr i32 %i.ft, %i.mo                   ; 2 uses
  %i.mr = sext i32 %.sroa.0109.0 to i64           ; 3 uses
  %i.ms = add i32 %.0514, %i.e
  %i.mt = add i32 %i.ms, %.0513
  %i.mu = sub i32 %i.mt, %i.mo                    ; 6 uses
  %i.mv = shl nuw i32 1, %i.mu
  %i.mw = sext i32 %i.mv to i64                   ; 2 uses
  %i.mx = mul nsw i64 %i.mr, %i.mw
  %i.my = sub nsw i32 0, %i.g
  %i.mz = sext i32 %i.my to i64                   ; 2 uses
  %i.na = mul nsw i64 %i.mr, %i.mz                ; 2 uses
  %i.nb = sext i32 %i.ip to i64
  %i.nc = add nsw i64 %i.na, %i.nb
  %i.nd = zext nneg i32 %i.mq to i64              ; 3 uses
  %i.ne = mul nsw i64 %i.nc, %i.nd                ; 2 uses
  %sext = shl i64 %i.mk, 32
  %i.nf = ashr exact i64 %sext, 32
  %i.ng = add nsw i64 %i.nf, %i.na
  %i.nh = sext i32 %i.mp to i64                   ; 2 uses
  %i.ni = mul nsw i64 %i.ng, %i.nh                ; 2 uses
  %i.nj = add nsw i32 %i.mu, -1
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = shl nuw i64 1, %i.nk                    ; 2 uses
  %i.nm = add nsw i64 %i.mx, %i.nl
  %i.nn = sext i32 %.sroa.29.0 to i64             ; 3 uses
  %i.no = mul nsw i64 %i.nn, %i.mw
  %i.np = mul nsw i64 %i.nn, %i.mz                ; 2 uses
  %sext540 = shl i64 %i.iz, 32
  %i.nq = ashr exact i64 %sext540, 32
  %i.nr = add nsw i64 %i.nq, %i.np
  %i.ns = mul nsw i64 %i.nr, %i.nd                ; 2 uses
  %i.nt = sext i32 %i.mn to i64
  %i.nu = add nsw i64 %i.np, %i.nt
  %i.nv = mul nsw i64 %i.nu, %i.nh                ; 2 uses
  %i.nw = add nsw i64 %i.no, %i.nl
  %i.nx = shl nuw nsw i32 %i.g, 1
  %3 = zext nneg i32 %i.nx to i64
  %i.ny = zext nneg i32 %.0514 to i64
  %i.nz = shl i64 %3, %i.ny
  %i.oa = mul i64 %i.nz, %i.nd                    ; 2 uses
  %i.ob = mul nsw i64 %i.oa, %i.mr
  %i.oc = mul nsw i32 %i.mq, %i.hu
  %i.od = sext i32 %i.oc to i64
  %i.oe = add nsw i32 %i.mu, 1
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = shl nuw i64 1, %i.of
  %i.oh = sub i64 %i.og, %i.od                    ; 2 uses
  %i.oi = add i64 %i.oh, %i.ob
  %i.oj = add i64 %i.oi, %i.ne
  %i.ok = add i64 %i.oj, %i.ni
  %i.ol = mul nsw i64 %i.oa, %i.nn
  %i.om = add i64 %i.oh, %i.ol
  %i.on = add i64 %i.om, %i.ns
  %i.oo = add i64 %i.on, %i.nv
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 5540
  store i32 %i.mu, ptr %i.op, align 4, !tbaa !42
  %i.oq = add nsw i32 %i.mu, 2                    ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 5544
  store i32 %i.oq, ptr %i.or, align 8, !tbaa !42
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.os = phi i32 [ 0, %bb.s ], [ 0, %bb.t ], [ %i.ll, %bb.u ], [ %i.oq, %bb.v ] ; 3 uses
  %i.ot = phi i32 [ 0, %bb.s ], [ 0, %bb.t ], [ %i.ju, %bb.u ], [ %i.mu, %bb.v ] ; 4 uses
  %.sroa.34.0 = phi i64 [ 0, %bb.s ], [ %i.jn, %bb.t ], [ %i.lb, %bb.u ], [ %i.oo, %bb.v ] ; 3 uses
  %.sroa.24629.0 = phi i64 [ 0, %bb.s ], [ %i.jj, %bb.t ], [ %i.ky, %bb.u ], [ %i.ok, %bb.v ] ; 3 uses
  %.sroa.13624.0 = phi i64 [ 0, %bb.s ], [ %i.jf, %bb.t ], [ %i.km, %bb.u ], [ %i.nw, %bb.v ] ; 3 uses
  %.sroa.0619.0 = phi i64 [ 0, %bb.s ], [ %i.je, %bb.t ], [ %i.kk, %bb.u ], [ %i.nm, %bb.v ] ; 3 uses
  %.sroa.35.0 = phi i64 [ %i.jb, %bb.s ], [ %i.jo, %bb.t ], [ %i.le, %bb.u ], [ %i.nv, %bb.v ] ; 3 uses
  %.sroa.24.0 = phi i64 [ 0, %bb.s ], [ 0, %bb.t ], [ %i.lj, %bb.u ], [ %i.ns, %bb.v ] ; 3 uses
  %.sroa.13.0 = phi i64 [ 0, %bb.s ], [ 0, %bb.t ], [ %i.lg, %bb.u ], [ %i.ni, %bb.v ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %i.jb, %bb.s ], [ %i.jo, %bb.t ], [ %i.le, %bb.u ], [ %i.ne, %bb.v ] ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 5540 ; 2 uses
  %i.ov = shl i32 %i.d, %i.ot
  %i.ow = sext i32 %i.ov to i64
  %i.ox = icmp eq i64 %.sroa.0.0, %i.ow
  %i.oy = icmp eq i64 %.sroa.13.0, 0
  %or.cond5 = select i1 %i.ox, i1 %i.oy, i1 false
  %i.oz = icmp eq i64 %.sroa.24.0, 0
  %or.cond9 = select i1 %or.cond5, i1 %i.oz, i1 false
  %i.pa = icmp eq i64 %.sroa.35.0, %.sroa.0.0
  %or.cond650 = select i1 %or.cond9, i1 %i.pa, i1 false
  br i1 %or.cond650, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.pb = zext nneg i32 %i.ot to i64              ; 2 uses
  %i.pc = ashr i64 %.sroa.0619.0, %i.pb
  %i.pd = ashr i64 %.sroa.13624.0, %i.pb
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 5544
  %i.pf = zext nneg i32 %i.os to i64              ; 2 uses
  %i.pg = ashr i64 %.sroa.24629.0, %i.pf
  %i.ph = ashr i64 %.sroa.34.0, %i.pf
  store i32 0, ptr %i.ou, align 4, !tbaa !42
  store i32 0, ptr %i.pe, align 8, !tbaa !42
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 5488
  store i32 1, ptr %i.pi, align 16, !tbaa !9
  br label %.loopexit.loopexit

bb.z:                                             ; preds = %bb.x
  %i.pj = sub nsw i32 16, %i.ot                   ; 2 uses
  %i.pk = sub nsw i32 16, %i.os                   ; 3 uses
  %i.pl = icmp slt i32 %i.os, 17
  %i.pm = icmp slt i32 %i.ot, 17
  %or.cond11.not661 = and i1 %i.pm, %i.pl
  %i.pn = lshr i32 2147483647, %i.pj
  %i.po = zext nneg i32 %i.pn to i64              ; 6 uses
  %i.pp = lshr i32 2147483647, %i.pk
  %i.pq = zext nneg i32 %i.pp to i64              ; 2 uses
  %i.pr = tail call i64 @llvm.abs.i64(i64 %.sroa.0619.0, i1 true)
  %.not = icmp samesign ult i64 %i.pr, %i.po
  %or.cond651 = select i1 %or.cond11.not661, i1 %.not, i1 false
  %i.ps = tail call i64 @llvm.abs.i64(i64 %.sroa.24629.0, i1 true)
  %.not542 = icmp samesign ult i64 %i.ps, %i.pq
  %or.cond656 = select i1 %or.cond651, i1 %.not542, i1 false
  %i.pt = tail call i64 @llvm.abs.i64(i64 %.sroa.0.0, i1 true)
  %.not543 = icmp samesign ult i64 %i.pt, %i.po
  %or.cond657 = select i1 %or.cond656, i1 %.not543, i1 false
  br i1 %or.cond657, label %bb.aa, label %.split583

.preheader570:                                    ; preds = %bb.aa
  %i.pu = shl nuw i32 1, %i.pj
  %i.pv = sext i32 %i.pu to i64                   ; 6 uses
  %i.pw = mul nsw i64 %.sroa.0619.0, %i.pv        ; 5 uses
  %i.px = zext nneg i32 %i.pk to i64
  %i.py = shl i64 %.sroa.24629.0, %i.px
  %i.pz = mul nsw i64 %.sroa.0.0, %i.pv           ; 3 uses
  %i.qa = mul nsw i64 %.sroa.24.0, %i.pv          ; 3 uses
  store i32 16, ptr %i.ou, align 4, !tbaa !42
  %i.qb = mul nsw i64 %.sroa.13624.0, %i.pv       ; 5 uses
  %i.qc = zext nneg i32 %i.pk to i64
  %i.qd = shl i64 %.sroa.34.0, %i.qc
  %i.qe = mul nsw i64 %.sroa.13.0, %i.pv          ; 3 uses
  %i.qf = mul nsw i64 %.sroa.35.0, %i.pv          ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 5544
  store i32 16, ptr %i.qg, align 8, !tbaa !42
  %i.qh = sext i32 %i.d to i64
  %i.qi = shl nsw i64 %i.qh, 16                   ; 4 uses
  %i.qj = add nuw nsw i64 %i.ic, 16               ; 4 uses
  %i.qk = add nuw nsw i64 %i.ja, 16               ; 4 uses
  %i.ql = sub nsw i64 %i.pz, %i.qi                ; 2 uses
  %i.qm = sub nsw i64 %i.qe, %i.qi                ; 2 uses
  %i.qn = mul nsw i64 %i.pz, %i.qj                ; 2 uses
  %i.qo = add nsw i64 %i.pw, %i.qn                ; 2 uses
  %i.qp = add i64 %i.qo, -2147483647
  %i.qq = icmp ult i64 %i.qp, -4294967293
  br i1 %i.qq, label %.split583, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.qr = tail call i64 @llvm.abs.i64(i64 %.sroa.24.0, i1 true)
  %.not544 = icmp samesign ult i64 %i.qr, %i.po
  %i.qs = tail call i64 @llvm.abs.i64(i64 %.sroa.13624.0, i1 true)
  %.not.1 = icmp samesign ult i64 %i.qs, %i.po
  %or.cond652 = select i1 %.not544, i1 %.not.1, i1 false
  %i.qt = tail call i64 @llvm.abs.i64(i64 %.sroa.34.0, i1 true)
  %.not542.1 = icmp samesign ult i64 %i.qt, %i.pq
  %or.cond653 = select i1 %or.cond652, i1 %.not542.1, i1 false
  %i.qu = tail call i64 @llvm.abs.i64(i64 %.sroa.13.0, i1 true)
  %.not543.1 = icmp samesign ult i64 %i.qu, %i.po
  %or.cond654 = select i1 %or.cond653, i1 %.not543.1, i1 false
  %i.qv = tail call i64 @llvm.abs.i64(i64 %.sroa.35.0, i1 true)
  %.not544.1 = icmp samesign ult i64 %i.qv, %i.po
  %or.cond655 = select i1 %or.cond654, i1 %.not544.1, i1 false
  br i1 %or.cond655, label %.preheader570, label %.split583

bb.ab:                                            ; preds = %bb.am
  %i.qw = sub nsw i64 %i.qa, %i.qi                ; 2 uses
  %i.qx = sub nsw i64 %i.qf, %i.qi                ; 2 uses
  %i.qy = mul nsw i64 %i.qa, %i.qj                ; 2 uses
  %i.qz = add nsw i64 %i.qb, %i.qy                ; 2 uses
  %i.ra = add i64 %i.qz, -2147483647
  %i.rb = icmp ult i64 %i.ra, -4294967293
  br i1 %i.rb, label %.split583, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.rc = mul nsw i64 %i.qf, %i.qk
  %i.rd = add i64 %i.rc, -2147483647              ; 3 uses
  %i.re = add i64 %i.rd, %i.qb
  %i.rf = icmp ult i64 %i.re, -4294967293
  br i1 %i.rf, label %.split583, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rg = add i64 %i.rd, %i.qz
  %i.rh = icmp ult i64 %i.rg, -4294967293
  %i.ri = add i64 %i.qy, -2147483647
  %i.rj = icmp ult i64 %i.ri, -4294967293
  %or.cond546.1 = or i1 %i.rj, %i.rh
  %i.rk = icmp ult i64 %i.rd, -4294967293
  %or.cond548.1 = or i1 %i.rk, %or.cond546.1
  %i.rl = add i64 %i.qw, -2147483647
  %i.rm = icmp ult i64 %i.rl, -4294967293
  %or.cond550.1 = select i1 %or.cond548.1, i1 true, i1 %i.rm
  %i.rn = add i64 %i.qx, -2147483647
  %i.ro = icmp ult i64 %i.rn, -4294967293
  %or.cond552.1 = select i1 %or.cond550.1, i1 true, i1 %i.ro
  br i1 %or.cond552.1, label %.split583, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.rp = mul nsw i64 %i.qw, %i.qj
  %i.rq = add nsw i64 %i.qb, %i.rp                ; 2 uses
  %i.rr = add i64 %i.rq, -2147483647
  %i.rs = icmp ult i64 %i.rr, -4294967293
  br i1 %i.rs, label %.split583, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.rt = mul nsw i64 %i.qx, %i.qk                ; 2 uses
  %i.ru = add i64 %i.qb, -2147483647
  %i.rv = add i64 %i.ru, %i.rt
  %i.rw = icmp ult i64 %i.rv, -4294967293
  br i1 %i.rw, label %.split583, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.rx = add i64 %i.rt, -2147483647
  %i.ry = add i64 %i.rx, %i.rq
  %i.rz = icmp ult i64 %i.ry, -4294967293
  br i1 %i.rz, label %.split583, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 5488
  store i32 %i.fp, ptr %i.sa, align 16, !tbaa !9
  %i.sb = trunc i64 %i.pz to i32
  %i.sc = trunc i64 %i.qa to i32
  %i.sd = trunc i64 %i.qe to i32
  %i.se = trunc i64 %i.qf to i32
  br label %.loopexit.loopexit

bb.ai:                                            ; preds = %.preheader570
  %i.sf = mul nsw i64 %i.qe, %i.qk
  %i.sg = add i64 %i.sf, -2147483647              ; 3 uses
  %i.sh = add i64 %i.sg, %i.pw
  %i.si = icmp ult i64 %i.sh, -4294967293
  br i1 %i.si, label %.split583, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.sj = add i64 %i.sg, %i.qo
  %i.sk = icmp ult i64 %i.sj, -4294967293
  %i.sl = add i64 %i.qn, -2147483647
end_hunk_0
