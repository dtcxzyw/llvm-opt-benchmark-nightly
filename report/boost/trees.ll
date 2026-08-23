Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/trees?download=true
inline.NumInlined: 18
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_tr_flush_block:bb.a
  %i.dp = getelementptr i8, ptr %i.do, i64 6
  store i16 -1, ptr %i.dp, align 2, !tbaa !28
  %.not48.i14.i = icmp slt i32 %i.dk, 0
  br i1 %.not48.i14.i, label %scan_tree.exit36.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %scan_tree.exit.i
  %i.dq = icmp eq i16 %i.dm, 0                    ; 2 uses
  %spec.select46.i16.i = select i1 %i.dq, i32 3, i32 4
  %spec.select.i17.i = select i1 %i.dq, i32 138, i32 7
  %i.dr = zext i16 %i.dm to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2748 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2812 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2820 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.dw = add nuw i32 %i.dk, 1
  %wide.trip.count.i18.i = zext i32 %i.dw to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.bd, %.lr.ph.i15.i
  %indvars.iv.i19.i = phi i64 [ 0, %.lr.ph.i15.i ], [ %indvars.iv.next.i25.i, %bb.bd ]
  %.154.i20.i = phi i32 [ %spec.select46.i16.i, %.lr.ph.i15.i ], [ %.2.i34.i, %bb.bd ] ; 2 uses
  %.13253.i21.i = phi i32 [ %spec.select.i17.i, %.lr.ph.i15.i ], [ %.233.i33.i, %bb.bd ] ; 2 uses
  %.03452.i22.i = phi i32 [ 0, %.lr.ph.i15.i ], [ %.135.i32.i, %bb.bd ] ; 2 uses
  %.03651.i23.i = phi i32 [ %i.dr, %.lr.ph.i15.i ], [ %i.ea, %bb.bd ] ; 7 uses
  %.03750.i24.i = phi i32 [ -1, %.lr.ph.i15.i ], [ %.138.i31.i, %bb.bd ] ; 2 uses
  %indvars.iv.next.i25.i = add nuw nsw i64 %indvars.iv.i19.i, 1 ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i25.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !28 ; 2 uses
  %i.ea = zext i16 %i.dz to i32                   ; 2 uses
  %i.eb = add nsw i32 %.03452.i22.i, 1            ; 4 uses
  %i.ec = icmp slt i32 %i.eb, %.13253.i21.i
  %i.ed = icmp eq i32 %.03651.i23.i, %i.ea        ; 3 uses
  %or.cond.i26.i = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %or.cond.i26.i, label %bb.bd, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ee = icmp slt i32 %i.eb, %.154.i20.i
  br i1 %i.ee, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ef = zext nneg i32 %.03651.i23.i to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ef ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !28
  %i.ei = trunc i32 %i.eb to i16
  %i.ej = add i16 %i.eh, %i.ei
  store i16 %i.ej, ptr %i.eg, align 4, !tbaa !28
  br label %bb.bb

bb.au:                                            ; preds = %bb.as
  %.not44.i27.i = icmp eq i32 %.03651.i23.i, 0
  br i1 %.not44.i27.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not45.i28.i = icmp eq i32 %.03651.i23.i, %.03750.i24.i
  br i1 %.not45.i28.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ek = zext nneg i32 %.03651.i23.i to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ek ; 2 uses
  %i.em = load i16, ptr %i.el, align 4, !tbaa !28
  %i.en = add i16 %i.em, 1
  store i16 %i.en, ptr %i.el, align 4, !tbaa !28
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.eo = load i16, ptr %i.dt, align 4, !tbaa !28
  %i.ep = add i16 %i.eo, 1
  store i16 %i.ep, ptr %i.dt, align 4, !tbaa !28
  br label %bb.bb

bb.ay:                                            ; preds = %bb.au
  %i.eq = icmp slt i32 %.03452.i22.i, 10
  br i1 %i.eq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.er = load i16, ptr %i.dv, align 8, !tbaa !28
  %i.es = add i16 %i.er, 1
  store i16 %i.es, ptr %i.dv, align 8, !tbaa !28
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.et = load i16, ptr %i.du, align 4, !tbaa !28
  %i.eu = add i16 %i.et, 1
  store i16 %i.eu, ptr %i.du, align 4, !tbaa !28
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ax, %bb.at
  %i.ev = icmp eq i16 %i.dz, 0
  br i1 %i.ev, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %..i29.i = select i1 %i.ed, i32 6, i32 7
  %.47.i30.i = select i1 %i.ed, i32 3, i32 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ar
  %.138.i31.i = phi i32 [ %.03750.i24.i, %bb.ar ], [ %.03651.i23.i, %bb.bb ], [ %.03651.i23.i, %bb.bc ]
  %.135.i32.i = phi i32 [ %i.eb, %bb.ar ], [ 0, %bb.bb ], [ 0, %bb.bc ]
  %.233.i33.i = phi i32 [ %.13253.i21.i, %bb.ar ], [ 138, %bb.bb ], [ %..i29.i, %bb.bc ]
  %.2.i34.i = phi i32 [ %.154.i20.i, %bb.ar ], [ 3, %bb.bb ], [ %.47.i30.i, %bb.bc ]
  %exitcond.not.i35.i = icmp eq i64 %indvars.iv.next.i25.i, %wide.trip.count.i18.i
  br i1 %exitcond.not.i35.i, label %scan_tree.exit36.i, label %bb.ar, !llvm.loop !41

scan_tree.exit36.i:                               ; preds = %bb.bd, %scan_tree.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 2952
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !28
  %.not.i90 = icmp eq i16 %i.ey, 0
  br i1 %.not.i90, label %bb.be, label %build_bl_tree.exit

bb.be:                                            ; preds = %scan_tree.exit36.i
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !28
  %.not.1.i = icmp eq i16 %i.fa, 0
  br i1 %.not.1.i, label %bb.bf, label %build_bl_tree.exit

bb.bf:                                            ; preds = %bb.be
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !28
  %.not.2.i = icmp eq i16 %i.fc, 0
  br i1 %.not.2.i, label %bb.bg, label %build_bl_tree.exit

bb.bg:                                            ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !28
  %.not.3.i = icmp eq i16 %i.fe, 0
  br i1 %.not.3.i, label %bb.bh, label %build_bl_tree.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !28
  %.not.4.i = icmp eq i16 %i.fg, 0
  br i1 %.not.4.i, label %bb.bi, label %build_bl_tree.exit

bb.bi:                                            ; preds = %bb.bh
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !28
  %.not.5.i = icmp eq i16 %i.fi, 0
  br i1 %.not.5.i, label %bb.bj, label %build_bl_tree.exit

bb.bj:                                            ; preds = %bb.bi
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !28
  %.not.6.i = icmp eq i16 %i.fk, 0
  br i1 %.not.6.i, label %bb.bk, label %build_bl_tree.exit

bb.bk:                                            ; preds = %bb.bj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !28
  %.not.7.i = icmp eq i16 %i.fm, 0
  br i1 %.not.7.i, label %bb.bl, label %build_bl_tree.exit

bb.bl:                                            ; preds = %bb.bk
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !28
  %.not.8.i = icmp eq i16 %i.fo, 0
  br i1 %.not.8.i, label %bb.bm, label %build_bl_tree.exit

bb.bm:                                            ; preds = %bb.bl
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !28
  %.not.9.i = icmp eq i16 %i.fq, 0
  br i1 %.not.9.i, label %bb.bn, label %build_bl_tree.exit

bb.bn:                                            ; preds = %bb.bm
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !28
  %.not.10.i = icmp eq i16 %i.fs, 0
  br i1 %.not.10.i, label %bb.bo, label %build_bl_tree.exit

bb.bo:                                            ; preds = %bb.bn
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !28
  %.not.11.i = icmp eq i16 %i.fu, 0
  br i1 %.not.11.i, label %bb.bp, label %build_bl_tree.exit

bb.bp:                                            ; preds = %bb.bo
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !28
  %.not.12.i = icmp eq i16 %i.fw, 0
  br i1 %.not.12.i, label %bb.bq, label %build_bl_tree.exit

bb.bq:                                            ; preds = %bb.bp
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !28
  %.not.13.i = icmp eq i16 %i.fy, 0
  br i1 %.not.13.i, label %bb.br, label %build_bl_tree.exit

bb.br:                                            ; preds = %bb.bq
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !28
  %.not.14.i = icmp eq i16 %i.ga, 0
  br i1 %.not.14.i, label %bb.bs, label %build_bl_tree.exit

bb.bs:                                            ; preds = %bb.br
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !28
  %.not.15.i = icmp eq i16 %i.gc, 0
  br i1 %.not.15.i, label %4, label %build_bl_tree.exit

4:                                                ; preds = %bb.bs
  br label %build_bl_tree.exit

build_bl_tree.exit:                               ; preds = %scan_tree.exit36.i, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %4
  %.0.lcssa.i = phi i32 [ 18, %scan_tree.exit36.i ], [ 2, %4 ], [ 17, %bb.be ], [ 3, %bb.bs ], [ 16, %bb.bf ], [ 8, %bb.bn ], [ 15, %bb.bg ], [ 4, %bb.br ], [ 14, %bb.bh ], [ 9, %bb.bm ], [ 13, %bb.bi ], [ 5, %bb.bq ], [ 12, %bb.bj ], [ 7, %bb.bo ], [ 11, %bb.bk ], [ 6, %bb.bp ], [ 10, %bb.bl ] ; 3 uses
  %narrow.i = mul nuw nsw i32 %.0.lcssa.i, 3
  %narrow42.i = add nuw nsw i32 %narrow.i, 17
  %i.gd = zext nneg i32 %narrow42.i to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !43
  %i.gg = add i64 %i.gf, %i.gd                    ; 2 uses
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !43
  %i.gh = add i64 %i.gg, 10
  %i.gi = lshr i64 %i.gh, 3                       ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !44
  %i.gl = add i64 %i.gk, 10
  %i.gm = lshr i64 %i.gl, 3                       ; 3 uses
  %.not = icmp samesign ugt i64 %i.gm, %i.gi
  br i1 %.not, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %build_bl_tree.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !45
  %i.gp = icmp eq i32 %i.go, 4
  br i1 %i.gp, label %bb.bv, label %.thread

bb.bu:                                            ; preds = %bb.a
  %i.gq = add i64 %2, 5
  br label %bb.bv

bb.bv:                                            ; preds = %build_bl_tree.exit, %bb.bt, %bb.bu
  %.0 = phi i64 [ %i.gq, %bb.bu ], [ %i.gm, %bb.bt ], [ %i.gm, %build_bl_tree.exit ]
  %i.gr = add i64 %2, 4
  %i.gs = icmp ule i64 %i.gr, %.0
  %i.gt = icmp ne ptr %1, null
  %or.cond = and i1 %i.gt, %i.gs
  br i1 %or.cond, label %bb.bw, label %bb.bx

.thread:                                          ; preds = %bb.bt
  %i.gu = add i64 %2, 4
  %i.gv = icmp ule i64 %i.gu, %i.gi
  %i.gw = icmp ne ptr %1, null
  %or.cond100 = and i1 %i.gw, %i.gv
  br i1 %or.cond100, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %.thread, %bb.bv
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %bb.cr

bb.bx:                                            ; preds = %bb.bv
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !27 ; 4 uses
  %i.gz = icmp sgt i32 %i.gy, 13
  %i.ha = add i32 %3, 2                           ; 3 uses
  br i1 %i.gz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.hb = and i32 %i.ha, 65535
  %i.hc = shl i32 %i.ha, %i.gy
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 4 uses
  %i.he = load i16, ptr %i.hd, align 8, !tbaa !26
  %i.hf = trunc i32 %i.hc to i16
  %i.hg = or i16 %i.he, %i.hf                     ; 2 uses
  store i16 %i.hg, ptr %i.hd, align 8, !tbaa !26
  %i.hh = trunc i16 %i.hg to i8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !32
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !33 ; 2 uses
  %i.hm = add i64 %i.hl, 1
  store i64 %i.hm, ptr %i.hk, align 8, !tbaa !33
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hl
  store i8 %i.hh, ptr %i.hn, align 1, !tbaa !28
  %i.ho = load i16, ptr %i.hd, align 8, !tbaa !26
  %i.hp = lshr i16 %i.ho, 8
  %i.hq = trunc nuw i16 %i.hp to i8
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !32
  %i.hs = load i64, ptr %i.hk, align 8, !tbaa !33 ; 2 uses
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.hk, align 8, !tbaa !33
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hs
  store i8 %i.hq, ptr %i.hu, align 1, !tbaa !28
  %i.hv = load i32, ptr %i.gx, align 4, !tbaa !27 ; 2 uses
  %i.hw = sub nsw i32 16, %i.hv
  %i.hx = lshr i32 %i.hb, %i.hw
  %i.hy = trunc nuw i32 %i.hx to i16
  store i16 %i.hy, ptr %i.hd, align 8, !tbaa !26
  %i.hz = add nsw i32 %i.hv, -13
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.ia = shl i32 %i.ha, %i.gy
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.ic = load i16, ptr %i.ib, align 8, !tbaa !26
  %i.id = trunc i32 %i.ia to i16
  %i.ie = or i16 %i.ic, %i.id
  store i16 %i.ie, ptr %i.ib, align 8, !tbaa !26
  %i.if = add nsw i32 %i.gy, 3
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %storemerge88 = phi i32 [ %i.if, %bb.bz ], [ %i.hz, %bb.by ]
  store i32 %storemerge88, ptr %i.gx, align 4, !tbaa !27
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  br label %bb.cr

bb.cb:                                            ; preds = %.thread
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 11 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !27 ; 4 uses
  %i.ii = icmp sgt i32 %i.ih, 13
  %i.ij = add i32 %3, 4                           ; 3 uses
  br i1 %i.ii, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ik = and i32 %i.ij, 65535
  %i.il = shl i32 %i.ij, %i.ih
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 3 uses
  %i.in = load i16, ptr %i.im, align 8, !tbaa !26
  %i.io = trunc i32 %i.il to i16
  %i.ip = or i16 %i.in, %i.io                     ; 2 uses
  store i16 %i.ip, ptr %i.im, align 8, !tbaa !26
  %i.iq = trunc i16 %i.ip to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !32
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !33 ; 2 uses
  %i.iv = add i64 %i.iu, 1
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !33
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.iu
  store i8 %i.iq, ptr %i.iw, align 1, !tbaa !28
  %i.ix = load i16, ptr %i.im, align 8, !tbaa !26
  %i.iy = lshr i16 %i.ix, 8
  %i.iz = trunc nuw i16 %i.iy to i8
  %i.ja = load ptr, ptr %i.ir, align 8, !tbaa !32
  %i.jb = load i64, ptr %i.it, align 8, !tbaa !33 ; 2 uses
  %i.jc = add i64 %i.jb, 1
  store i64 %i.jc, ptr %i.it, align 8, !tbaa !33
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb
  store i8 %i.iz, ptr %i.jd, align 1, !tbaa !28
  %i.je = load i32, ptr %i.ig, align 4, !tbaa !27 ; 2 uses
  %i.jf = sub nsw i32 16, %i.je
  %i.jg = lshr i32 %i.ik, %i.jf
  %i.jh = trunc nuw i32 %i.jg to i16
  %i.ji = add nsw i32 %i.je, -13
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.jj = shl i32 %i.ij, %i.ih
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.jl = load i16, ptr %i.jk, align 8, !tbaa !26
  %i.jm = trunc i32 %i.jj to i16
  %i.jn = or i16 %i.jl, %i.jm
  %i.jo = add nsw i32 %i.ih, 3
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.jp = phi i16 [ %i.jn, %bb.cd ], [ %i.jh, %bb.cc ] ; 2 uses
  %storemerge = phi i32 [ %i.jo, %bb.cd ], [ %i.ji, %bb.cc ] ; 5 uses
  store i32 %storemerge, ptr %i.ig, align 4, !tbaa !27
  %i.jq = load i32, ptr %i.bv, align 8, !tbaa !40 ; 2 uses
  %i.jr = load i32, ptr %i.dj, align 8, !tbaa !42 ; 4 uses
  %i.js = add nuw nsw i32 %.0.lcssa.i, 1
  %i.jt = icmp sgt i32 %storemerge, 11
  %i.ju = add i32 %i.jq, 65280                    ; 3 uses
  br i1 %i.jt, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.jv = and i32 %i.ju, 65535
  %i.jw = shl i32 %i.ju, %storemerge
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.jy = trunc i32 %i.jw to i16
  %i.jz = or i16 %i.jp, %i.jy                     ; 2 uses
  store i16 %i.jz, ptr %i.jx, align 8, !tbaa !26
  %i.ka = trunc i16 %i.jz to i8
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !32
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !33 ; 2 uses
  %i.kf = add i64 %i.ke, 1
  store i64 %i.kf, ptr %i.kd, align 8, !tbaa !33
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.ke
  store i8 %i.ka, ptr %i.kg, align 1, !tbaa !28
  %i.kh = load i16, ptr %i.jx, align 8, !tbaa !26
  %i.ki = lshr i16 %i.kh, 8
  %i.kj = trunc nuw i16 %i.ki to i8
  %i.kk = load ptr, ptr %i.kb, align 8, !tbaa !32
  %i.kl = load i64, ptr %i.kd, align 8, !tbaa !33 ; 2 uses
  %i.km = add i64 %i.kl, 1
  store i64 %i.km, ptr %i.kd, align 8, !tbaa !33
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kl
  store i8 %i.kj, ptr %i.kn, align 1, !tbaa !28
  %i.ko = load i32, ptr %i.ig, align 4, !tbaa !27 ; 2 uses
  %i.kp = sub nsw i32 16, %i.ko
  %i.kq = lshr i32 %i.jv, %i.kp
  %i.kr = trunc nuw i32 %i.kq to i16
  %i.ks = add nsw i32 %i.ko, -11
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.kt = shl i32 %i.ju, %storemerge
  %i.ku = trunc i32 %i.kt to i16
  %i.kv = or i16 %i.jp, %i.ku
  %i.kw = add nsw i32 %storemerge, 5
  br label %bb.ch
end_hunk_0
