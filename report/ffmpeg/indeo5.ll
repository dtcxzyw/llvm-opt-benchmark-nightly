Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/indeo5?download=true
inline.NumInlined: 65
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decode_pic_hdr:bb.a
  %i.dq = select i1 %i.dp, i8 4, i8 1             ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 3 uses
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !89
  %i.ds = icmp ne i8 %i.dc, 0                     ; 2 uses
  %i.dt = and i32 %i.do, 1
  %i.du = select i1 %i.ds, i32 1, i32 %i.dt
  %i.dv = icmp ne i8 %i.de, 4
  %i.dw = select i1 %i.ds, i1 %i.dv, i1 false
  %or.cond201.i = select i1 %i.dw, i1 true, i1 %i.dp
  br i1 %or.cond201.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread.i
  %i.dx = zext nneg i8 %i.dq to i32
  %i.dy = zext nneg i8 %i.de to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.dy, i32 noundef %i.dx) #8
  br label %bb.bk

bb.n:                                             ; preds = %.thread.i
  %i.dz = lshr i32 %spec.select.i.i, 3
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 1, !tbaa !31
  %i.ed = and i32 %spec.select.i.i, 7
  %i.ee = lshr i32 %i.ec, %i.ed
  %i.ef = and i32 %i.ee, 15                       ; 2 uses
  %i.eg = add i32 %spec.select.i.i, 4
  %i.eh = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.eg) ; 5 uses
  store i32 %i.eh, ptr %i.a, align 8, !tbaa !28
  %i.ei = icmp eq i32 %i.ef, 15
  br i1 %i.ei, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ej = lshr i32 %i.eh, 3
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 1, !tbaa !31
  %i.en = and i32 %i.eh, 7
  %i.eo = lshr i32 %i.em, %i.en
  %i.ep = add i32 %i.eh, 13
  %i.eq = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ep) ; 4 uses
  store i32 %i.eq, ptr %i.a, align 8, !tbaa !28
  %i.er = trunc i32 %i.eo to i16
  %i.es = and i16 %i.er, 8191                     ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.es, ptr %i.et, align 2, !tbaa !90
  %i.eu = lshr i32 %i.eq, 3
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 1, !tbaa !31
  %i.ey = and i32 %i.eq, 7
  %i.ez = lshr i32 %i.ex, %i.ey
  %i.fa = add i32 %i.eq, 13
  %i.fb = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.fa) ; 2 uses
  store i32 %i.fb, ptr %i.a, align 8, !tbaa !28
  %i.fc = trunc i32 %i.ez to i16
  %i.fd = and i16 %i.fc, 8191
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.fe = shl nuw nsw i32 %i.ef, 1
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @ivi5_common_pic_sizes, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !31
  %i.fj = zext i8 %i.fi to i16
  %i.fk = shl nuw nsw i16 %i.fj, 2                ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !90
  %i.fm = load i8, ptr %i.fg, align 2, !tbaa !31
  %i.fn = zext i8 %i.fm to i16
  %i.fo = shl nuw nsw i16 %i.fn, 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre279.i140 = phi i32 [ %i.eh, %bb.p ], [ %i.fb, %bb.o ]
  %i.fp = phi i16 [ %i.fk, %bb.p ], [ %i.es, %bb.o ] ; 3 uses
  %storemerge.i = phi i16 [ %i.fo, %bb.p ], [ %i.fd, %bb.o ] ; 4 uses
  store i16 %storemerge.i, ptr %2, align 2, !tbaa !91
  %i.fq = and i8 %i.au, 2
  %.not185.i = icmp eq i8 %i.fq, 0
  br i1 %.not185.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %1, ptr noundef nonnull @.str.9) #8
  br label %bb.bk

bb.s:                                             ; preds = %bb.q
  %narrow307.i = add nuw nsw i16 %i.fp, 3
  %i.fr = lshr i16 %narrow307.i, 2                ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !92
  %narrow.i = add nuw nsw i16 %storemerge.i, 3
  %i.ft = lshr i16 %narrow.i, 2                   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !93
  %.not186.i = icmp eq i32 %i.cs, 0               ; 2 uses
  %i.fv = trunc nuw nsw i32 %i.cs to i16          ; 2 uses
  %spec.select.i = select i1 %.not186.i, i16 %i.fp, i16 %i.fv ; 2 uses
  %spec.select350.i = select i1 %.not186.i, i16 %storemerge.i, i16 %i.fv ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  store i16 %spec.select.i, ptr %i.fw, align 2, !tbaa !94
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i16 %spec.select350.i, ptr %i.fx, align 2, !tbaa !95
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 4696 ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 8, !tbaa !91
  %.not.i.i = icmp eq i16 %storemerge.i, %i.fz
  br i1 %.not.i.i, label %bb.t, label %ivi_pic_config_cmp.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 4698
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !90
  %.not16.i.i = icmp eq i16 %i.fp, %i.gb
  br i1 %.not16.i.i, label %bb.u, label %ivi_pic_config_cmp.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 4700
  %i.gd = load i16, ptr %i.gc, align 4, !tbaa !93
  %.not17.i.i = icmp eq i16 %i.ft, %i.gd
  br i1 %.not17.i.i, label %bb.v, label %ivi_pic_config_cmp.exit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 4702
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !92
  %.not18.i.i = icmp eq i16 %i.gf, %i.fr
  br i1 %.not18.i.i, label %bb.w, label %ivi_pic_config_cmp.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 4704
  %i.gh = load i16, ptr %i.gg, align 8, !tbaa !95
  %.not19.i.i = icmp eq i16 %spec.select350.i, %i.gh
  br i1 %.not19.i.i, label %bb.x, label %ivi_pic_config_cmp.exit.thread.i

bb.x:                                             ; preds = %bb.w
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 4706
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !94
  %.not20.i.i = icmp eq i16 %spec.select.i, %i.gj
  br i1 %.not20.i.i, label %bb.y, label %ivi_pic_config_cmp.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 4708
  %i.gl = load i8, ptr %i.gk, align 4, !tbaa !88
  %.not21.i.i = icmp eq i8 %i.de, %i.gl
  br i1 %.not21.i.i, label %ivi_pic_config_cmp.exit.i, label %ivi_pic_config_cmp.exit.thread.i

ivi_pic_config_cmp.exit.i:                        ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 4709
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !89
  %.not214.i = icmp eq i8 %i.dq, %i.gn
  br i1 %.not214.i, label %bb.z, label %ivi_pic_config_cmp.exit.thread.i

bb.z:                                             ; preds = %ivi_pic_config_cmp.exit.i
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !25
  %.not188.i = icmp eq i32 %i.gp, 0
  br i1 %.not188.i, label %.lr.ph.i, label %ivi_pic_config_cmp.exit.thread.i

ivi_pic_config_cmp.exit.thread.i:                 ; preds = %bb.z, %ivi_pic_config_cmp.exit.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 4712
  %i.gr = call i32 @ff_ivi_init_planes(ptr noundef %1, ptr noundef nonnull %i.gq, ptr noundef nonnull %2, i32 noundef 0) #8 ; 2 uses
  %i.gs = icmp slt i32 %i.gr, 0
  br i1 %i.gs, label %bb.aa, label %.preheader218.i

bb.aa:                                            ; preds = %ivi_pic_config_cmp.exit.thread.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.10) #8
  br label %bb.bk

.preheader218.i:                                  ; preds = %ivi_pic_config_cmp.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.fy, ptr noundef nonnull align 2 dereferenceable(14) %2, i64 14, i1 false), !tbaa.struct !97
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 4668
  store i32 %i.du, ptr %i.gt, align 4, !tbaa !98
  %.pre.i = load i8, ptr %i.df, align 2
  %i.gu = icmp eq i8 %.pre.i, 0
  br i1 %i.gu, label %._crit_edge.i, label %.preheader218.i..lr.ph.i_crit_edge

.preheader218.i..lr.ph.i_crit_edge:               ; preds = %.preheader218.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !30
  %.pre138 = load i32, ptr %i.c, align 8, !tbaa !29
  %.pre279.i.pre = load i32, ptr %i.a, align 8, !tbaa !28
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader218.i..lr.ph.i_crit_edge, %bb.z
  %.pre279.i = phi i32 [ %.pre279.i.pre, %.preheader218.i..lr.ph.i_crit_edge ], [ %.pre279.i140, %bb.z ]
  %i.gv = phi i32 [ %.pre138, %.preheader218.i..lr.ph.i_crit_edge ], [ %i.d, %bb.z ] ; 5 uses
  %i.gw = phi ptr [ %.pre, %.preheader218.i..lr.ph.i_crit_edge ], [ %i.e, %bb.z ] ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 4720
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !36
  br label %bb.ac

.lr.ph240.i:                                      ; preds = %._crit_edge.1.i
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 4752
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !36
  br label %bb.bb

bb.ab:                                            ; preds = %bb.ar
  %i.hb = load i8, ptr %i.df, align 2
  %i.hc = zext i8 %i.hb to i64
  %i.hd = icmp samesign ult i64 %indvars.iv.next.i, %i.hc
  br i1 %i.hd, label %bb.ac, label %._crit_edge.i, !llvm.loop !80

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i
  %3 = phi i32 [ %.pre279.i, %.lr.ph.i ], [ %i.kx, %bb.ab ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ab ] ; 3 uses
  %i.he = getelementptr inbounds nuw [456 x i8], ptr %i.gy, i64 %indvars.iv.i ; 28 uses
  %i.hf = lshr i32 %3, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !31
  %i.hj = icmp slt i32 %3, %i.gv
  %i.hk = zext i1 %i.hj to i32
  %spec.select.i202.i = add i32 %3, %i.hk         ; 5 uses
  %i.hl = zext i8 %i.hi to i32
  %i.hm = and i32 %3, 7
  %i.hn = lshr i32 %i.hl, %i.hm
  %i.ho = and i32 %i.hn, 1
  store i32 %spec.select.i202.i, ptr %i.a, align 8, !tbaa !28
  %i.hp = getelementptr inbounds nuw i8, ptr %i.he, i64 116
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !41
  %i.hq = lshr i32 %spec.select.i202.i, 3
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !31
  %i.hu = icmp slt i32 %spec.select.i202.i, %i.gv
  %i.hv = zext i1 %i.hu to i32
  %spec.select.i203.i = add i32 %spec.select.i202.i, %i.hv ; 5 uses
  %i.hw = zext i8 %i.ht to i32
  %i.hx = and i32 %spec.select.i202.i, 7
  %i.hy = lshr i32 %i.hw, %i.hx
  %i.hz = and i32 %i.hy, 1
  store i32 %spec.select.i203.i, ptr %i.a, align 8, !tbaa !28
  %i.ia = lshr i32 %spec.select.i203.i, 3
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !31
  %i.ie = icmp slt i32 %spec.select.i203.i, %i.gv
  %i.if = zext i1 %i.ie to i32
  %spec.select.i204.i = add i32 %spec.select.i203.i, %i.if ; 5 uses
  %i.ig = zext i8 %i.id to i32
  %i.ih = and i32 %spec.select.i203.i, 7
  %i.ii = lshr i32 %i.ig, %i.ih                   ; 2 uses
  %i.ij = and i32 %i.ii, 1                        ; 2 uses
  store i32 %spec.select.i204.i, ptr %i.a, align 8, !tbaa !28
  %i.ik = lshr exact i32 8, %i.ij                 ; 5 uses
  %i.il = xor i32 %i.hz, 1
  %i.im = shl nuw nsw i32 %i.ik, %i.il            ; 2 uses
  %i.in = trunc i32 %i.ii to i1
  br i1 %i.in, label %.loopexit262.i, label %bb.ad

.loopexit262.i:                                   ; preds = %bb.ac
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.11) #8
  br label %bb.bk

bb.ad:                                            ; preds = %bb.ac
  %i.io = getelementptr inbounds nuw i8, ptr %i.he, i64 108 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !42
  %.not197.i = icmp eq i32 %i.im, %i.ip
  br i1 %.not197.i, label %bb.ae, label %.thread213.i

bb.ae:                                            ; preds = %bb.ad
  %i.iq = getelementptr inbounds nuw i8, ptr %i.he, i64 112
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !43
  %.not215.i = icmp eq i32 %i.ik, %i.ir
  br i1 %.not215.i, label %bb.af, label %.thread213.i

.thread213.i:                                     ; preds = %bb.ae, %bb.ad
  store i32 %i.im, ptr %i.io, align 4, !tbaa !42
  %i.is = getelementptr inbounds nuw i8, ptr %i.he, i64 112
  store i32 %i.ik, ptr %i.is, align 8, !tbaa !43
  br label %bb.af

bb.af:                                            ; preds = %.thread213.i, %bb.ae
  %i.it = phi i32 [ 1, %.thread213.i ], [ 0, %bb.ae ]
  %i.iu = lshr i32 %spec.select.i204.i, 3
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !31
  %i.iy = icmp slt i32 %spec.select.i204.i, %i.gv
  %i.iz = zext i1 %i.iy to i32
  %spec.select.i205.i = add i32 %spec.select.i204.i, %i.iz ; 4 uses
  %i.ja = zext i8 %i.ix to i32
  %i.jb = and i32 %spec.select.i204.i, 7
  store i32 %spec.select.i205.i, ptr %i.a, align 8, !tbaa !28
  %i.jc = shl nuw nsw i32 1, %i.jb
  %i.jd = and i32 %i.jc, %i.ja
  %.not198.i = icmp eq i32 %i.jd, 0
  br i1 %.not198.i, label %bb.ag, label %.loopexit263.i

.loopexit263.i:                                   ; preds = %bb.af, %bb.au
  call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %1, ptr noundef nonnull @.str.12) #8
  br label %bb.bk

bb.ag:                                            ; preds = %bb.af
  %i.je = trunc nuw nsw i64 %indvars.iv.i to i32
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.he, i64 384 ; 6 uses
  switch i32 %i.je, label %._crit_edge280.i [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %bb.ak
    i32 4, label %bb.al
  ]

._crit_edge280.i:                                 ; preds = %bb.ag
  %.pre281.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !99
  %.phi.trans.insert282.i = getelementptr inbounds nuw i8, ptr %i.he, i64 392
  %.pre283.i = load i32, ptr %.phi.trans.insert282.i, align 8, !tbaa !100
  br label %bb.am

bb.ah:                                            ; preds = %bb.ag
  store ptr @ff_ivi_inverse_slant_8x8, ptr %.phi.trans.insert.i, align 8, !tbaa !99
  %i.jf = getelementptr inbounds nuw i8, ptr %i.he, i64 400
  store ptr @ff_ivi_dc_slant_2d, ptr %i.jf, align 8, !tbaa !101
  %i.jg = getelementptr inbounds nuw i8, ptr %i.he, i64 144
  store ptr @ff_zigzag_direct, ptr %i.jg, align 8, !tbaa !102
  %i.jh = getelementptr inbounds nuw i8, ptr %i.he, i64 392
  store i32 8, ptr %i.jh, align 8, !tbaa !100
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag
  store ptr @ff_ivi_row_slant8, ptr %.phi.trans.insert.i, align 8, !tbaa !99
  %i.ji = getelementptr inbounds nuw i8, ptr %i.he, i64 400
  store ptr @ff_ivi_dc_row_slant, ptr %i.ji, align 8, !tbaa !101
  %i.jj = getelementptr inbounds nuw i8, ptr %i.he, i64 144
  store ptr @ff_ivi_vertical_scan_8x8, ptr %i.jj, align 8, !tbaa !102
  %i.jk = getelementptr inbounds nuw i8, ptr %i.he, i64 392
  store i32 8, ptr %i.jk, align 8, !tbaa !100
  br label %bb.am

bb.aj:                                            ; preds = %bb.ag
  store ptr @ff_ivi_col_slant8, ptr %.phi.trans.insert.i, align 8, !tbaa !99
  %i.jl = getelementptr inbounds nuw i8, ptr %i.he, i64 400
  store ptr @ff_ivi_dc_col_slant, ptr %i.jl, align 8, !tbaa !101
  %i.jm = getelementptr inbounds nuw i8, ptr %i.he, i64 144
  store ptr @ff_ivi_horizontal_scan_8x8, ptr %i.jm, align 8, !tbaa !102
  %i.jn = getelementptr inbounds nuw i8, ptr %i.he, i64 392
  store i32 8, ptr %i.jn, align 8, !tbaa !100
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag
  store ptr @ff_ivi_put_pixels_8x8, ptr %.phi.trans.insert.i, align 8, !tbaa !99
  %i.jo = getelementptr inbounds nuw i8, ptr %i.he, i64 400
  store ptr @ff_ivi_put_dc_pixel_8x8, ptr %i.jo, align 8, !tbaa !101
  %i.jp = getelementptr inbounds nuw i8, ptr %i.he, i64 144
  store ptr @ff_ivi_horizontal_scan_8x8, ptr %i.jp, align 8, !tbaa !102
  %i.jq = getelementptr inbounds nuw i8, ptr %i.he, i64 392
  store i32 8, ptr %i.jq, align 8, !tbaa !100
  br label %bb.am

bb.al:                                            ; preds = %bb.ag
  store ptr @ff_ivi_inverse_slant_4x4, ptr %.phi.trans.insert.i, align 8, !tbaa !99
  %i.jr = getelementptr inbounds nuw i8, ptr %i.he, i64 400
  store ptr @ff_ivi_dc_slant_2d, ptr %i.jr, align 8, !tbaa !101
  %i.js = getelementptr inbounds nuw i8, ptr %i.he, i64 144
  store ptr @ff_ivi_direct_scan_4x4, ptr %i.js, align 8, !tbaa !102
  %i.jt = getelementptr inbounds nuw i8, ptr %i.he, i64 392
  store i32 4, ptr %i.jt, align 8, !tbaa !100
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %._crit_edge280.i
  %i.ju = phi i32 [ %.pre283.i, %._crit_edge280.i ], [ 4, %bb.al ], [ 8, %bb.ak ], [ 8, %bb.aj ], [ 8, %bb.ai ], [ 8, %bb.ah ] ; 2 uses
  %i.jv = phi ptr [ %.pre281.i, %._crit_edge280.i ], [ @ff_ivi_inverse_slant_4x4, %bb.al ], [ @ff_ivi_put_pixels_8x8, %bb.ak ], [ @ff_ivi_col_slant8, %bb.aj ], [ @ff_ivi_row_slant8, %bb.ai ], [ @ff_ivi_inverse_slant_8x8, %bb.ah ] ; 2 uses
  %i.jw = icmp eq ptr %i.jv, @ff_ivi_inverse_slant_8x8
  %i.jx = icmp eq ptr %i.jv, @ff_ivi_inverse_slant_4x4
  %narrow216.i = or i1 %i.jw, %i.jx
  %i.jy = zext i1 %narrow216.i to i32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.he, i64 408
  store i32 %i.jy, ptr %i.jz, align 8, !tbaa !103
  %.not199.i = icmp eq i32 %i.ju, %i.ik
  br i1 %.not199.i, label %bb.an, label %.loopexit264.i

.loopexit264.i:                                   ; preds = %bb.am, %bb.ax
  %.lcssa252.i = phi i32 [ %i.nj, %bb.ax ], [ %i.ju, %bb.am ]
  %.lcssa248.i = phi i32 [ %i.ml, %bb.ax ], [ %i.ik, %bb.am ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %.lcssa252.i, i32 noundef %.lcssa248.i) #8
  br label %bb.bk

bb.an:                                            ; preds = %bb.am
  %i.ka = load i8, ptr %i.df, align 2
  %i.kb = icmp ugt i8 %i.ka, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.kc = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.kd = select i1 %i.kb, i32 %i.kc, i32 0       ; 2 uses
  %i.ke = icmp eq i32 %i.ij, 0
  br i1 %i.ke, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.kf = icmp samesign ugt i32 %i.kd, 4
  br i1 %i.kf, label %.loopexit265.i, label %bb.ap

.loopexit265.i:                                   ; preds = %bb.ao, %bb.ay
  %.0170.lcssa.i = phi i32 [ 5, %bb.ay ], [ %i.kc, %bb.ao ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %.0170.lcssa.i) #8
  br label %bb.bk

bb.ap:                                            ; preds = %bb.ao
  %i.kg = zext nneg i32 %i.kd to i64              ; 4 uses
  %i.kh = getelementptr inbounds nuw [128 x i8], ptr @ivi5_base_quant_8x8_intra, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.he, i64 424
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !104
  %i.kj = getelementptr inbounds nuw [128 x i8], ptr @ivi5_base_quant_8x8_inter, i64 %i.kg
  %i.kk = getelementptr inbounds nuw i8, ptr %i.he, i64 432
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !105
  %i.kl = getelementptr inbounds nuw [24 x i8], ptr @ivi5_scale_quant_8x8_intra, i64 %i.kg
  %i.km = getelementptr inbounds nuw i8, ptr %i.he, i64 440
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !106
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr @ivi5_scale_quant_8x8_inter, i64 %i.kg
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.ko = getelementptr inbounds nuw i8, ptr %i.he, i64 424
  store <2 x ptr> <ptr @ivi5_base_quant_4x4_intra, ptr @ivi5_base_quant_4x4_inter>, ptr %i.ko, align 8, !tbaa !107
  %i.kp = getelementptr inbounds nuw i8, ptr %i.he, i64 440
  store ptr @ivi5_scale_quant_4x4_intra, ptr %i.kp, align 8, !tbaa !106
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %ivi5_scale_quant_4x4_inter.sink.i = phi ptr [ @ivi5_scale_quant_4x4_inter, %bb.aq ], [ %i.kn, %bb.ap ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.he, i64 448
  store ptr %ivi5_scale_quant_4x4_inter.sink.i, ptr %i.kq, align 8, !tbaa !108
  %i.kr = lshr i32 %spec.select.i205.i, 3
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 1, !tbaa !31
  %i.kv = and i32 %spec.select.i205.i, 7
  %i.kw = add i32 %spec.select.i205.i, 2
  %i.kx = call i32 @llvm.umin.i32(i32 %i.gv, i32 %i.kw) ; 2 uses
  store i32 %i.kx, ptr %i.a, align 8, !tbaa !28
  %i.ky = shl nuw nsw i32 3, %i.kv
  %i.kz = and i32 %i.ku, %i.ky
  %.not200.i = icmp eq i32 %i.kz, 0
  br i1 %.not200.i, label %bb.ab, label %.loopexit266.i, !llvm.loop !80

.loopexit266.i:                                   ; preds = %bb.ar, %bb.az
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.15) #8
  br label %bb.bk

._crit_edge.i:                                    ; preds = %bb.ab, %.preheader218.i
  %.2.lcssa.i = phi i32 [ 1, %.preheader218.i ], [ %i.it, %bb.ab ]
  %i.la = load i8, ptr %i.dr, align 1
  %.not242.1.i = icmp eq i8 %i.la, 0
  br i1 %.not242.1.i, label %._crit_edge241.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 4736
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !36 ; 2 uses
  %i.ld = load ptr, ptr %0, align 8, !tbaa !30    ; 5 uses
  %i.le = load i32, ptr %i.c, align 8, !tbaa !29  ; 5 uses
  %.pre284.i = load i32, ptr %i.a, align 8, !tbaa !28
  br label %bb.as

bb.as:                                            ; preds = %bb.ba, %.lr.ph.1.i
  %4 = phi i32 [ %.pre284.i, %.lr.ph.1.i ], [ %i.ny, %bb.ba ] ; 4 uses
  %indvars.iv.1.i = phi i64 [ 0, %.lr.ph.1.i ], [ %indvars.iv.next.1.i, %bb.ba ] ; 3 uses
  %i.lf = getelementptr inbounds nuw [456 x i8], ptr %i.lc, i64 %indvars.iv.1.i ; 12 uses
  %i.lg = lshr i32 %4, 3
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !31
  %i.lk = icmp slt i32 %4, %i.le
  %i.ll = zext i1 %i.lk to i32
  %spec.select.i202.1.i = add i32 %4, %i.ll       ; 5 uses
  %i.lm = zext i8 %i.lj to i32
  %i.ln = and i32 %4, 7
  %i.lo = lshr i32 %i.lm, %i.ln
  %i.lp = and i32 %i.lo, 1
  store i32 %spec.select.i202.1.i, ptr %i.a, align 8, !tbaa !28
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lf, i64 116
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !41
  %i.lr = lshr i32 %spec.select.i202.1.i, 3
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !31
  %i.lv = icmp slt i32 %spec.select.i202.1.i, %i.le
  %i.lw = zext i1 %i.lv to i32
  %spec.select.i203.1.i = add i32 %spec.select.i202.1.i, %i.lw ; 5 uses
  %i.lx = zext i8 %i.lu to i32
  %i.ly = and i32 %spec.select.i202.1.i, 7
  %i.lz = lshr i32 %i.lx, %i.ly
  %i.ma = and i32 %i.lz, 1
  store i32 %spec.select.i203.1.i, ptr %i.a, align 8, !tbaa !28
  %i.mb = lshr i32 %spec.select.i203.1.i, 3
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !31
  %i.mf = icmp slt i32 %spec.select.i203.1.i, %i.le
  %i.mg = zext i1 %i.mf to i32
  %spec.select.i204.1.i = add i32 %spec.select.i203.1.i, %i.mg ; 5 uses
  %i.mh = zext i8 %i.me to i32
  %i.mi = and i32 %spec.select.i203.1.i, 7
  %i.mj = lshr i32 %i.mh, %i.mi
  %i.mk = and i32 %i.mj, 1                        ; 2 uses
  store i32 %spec.select.i204.1.i, ptr %i.a, align 8, !tbaa !28
  %i.ml = lshr exact i32 8, %i.mk                 ; 5 uses
  %i.mm = xor i32 %i.ma, 1
  %i.mn = shl nuw nsw i32 %i.ml, %i.mm            ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lf, i64 108 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !42
  %.not197.1.i = icmp eq i32 %i.mn, %i.mp
  br i1 %.not197.1.i, label %bb.at, label %.thread213.1.i

bb.at:                                            ; preds = %bb.as
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lf, i64 112
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !43
  %.not215.1.i = icmp eq i32 %i.ml, %i.mr
  br i1 %.not215.1.i, label %bb.au, label %.thread213.1.i

.thread213.1.i:                                   ; preds = %bb.at, %bb.as
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !42
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lf, i64 112
  store i32 %i.ml, ptr %i.ms, align 8, !tbaa !43
  br label %bb.au

bb.au:                                            ; preds = %.thread213.1.i, %bb.at
  %i.mt = phi i32 [ 1, %.thread213.1.i ], [ 0, %bb.at ] ; 2 uses
  %i.mu = lshr i32 %spec.select.i204.1.i, 3
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !31
  %i.my = icmp slt i32 %spec.select.i204.1.i, %i.le
  %i.mz = zext i1 %i.my to i32
  %spec.select.i205.1.i = add i32 %spec.select.i204.1.i, %i.mz ; 4 uses
  %i.na = zext i8 %i.mx to i32
  %i.nb = and i32 %spec.select.i204.1.i, 7
  store i32 %spec.select.i205.1.i, ptr %i.a, align 8, !tbaa !28
  %i.nc = shl nuw nsw i32 1, %i.nb
  %i.nd = and i32 %i.nc, %i.na
  %.not198.1.i = icmp eq i32 %i.nd, 0
  br i1 %.not198.1.i, label %bb.av, label %.loopexit263.i

bb.av:                                            ; preds = %bb.au
  %i.ne = and i64 %indvars.iv.1.i, 4294967295
  %cond.i = icmp eq i64 %i.ne, 0
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lf, i64 384 ; 2 uses
  br i1 %cond.i, label %bb.aw, label %._crit_edge285.i

._crit_edge285.i:                                 ; preds = %bb.av
  %.pre287.i = load ptr, ptr %i.nf, align 8, !tbaa !99
  %.phi.trans.insert288.i = getelementptr inbounds nuw i8, ptr %i.lf, i64 392
  %.pre289.i = load i32, ptr %.phi.trans.insert288.i, align 8, !tbaa !100
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store ptr @ff_ivi_inverse_slant_4x4, ptr %i.nf, align 8, !tbaa !99
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lf, i64 400
  store ptr @ff_ivi_dc_slant_2d, ptr %i.ng, align 8, !tbaa !101
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lf, i64 144
  store ptr @ff_ivi_direct_scan_4x4, ptr %i.nh, align 8, !tbaa !102
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lf, i64 392
  store i32 4, ptr %i.ni, align 8, !tbaa !100
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge285.i
  %i.nj = phi i32 [ %.pre289.i, %._crit_edge285.i ], [ 4, %bb.aw ] ; 2 uses
  %i.nk = phi ptr [ %.pre287.i, %._crit_edge285.i ], [ @ff_ivi_inverse_slant_4x4, %bb.aw ] ; 2 uses
  %i.nl = icmp eq ptr %i.nk, @ff_ivi_inverse_slant_8x8
  %i.nm = icmp eq ptr %i.nk, @ff_ivi_inverse_slant_4x4
  %narrow216.1.i = or i1 %i.nl, %i.nm
  %i.nn = zext i1 %narrow216.1.i to i32
  %i.no = getelementptr inbounds nuw i8, ptr %i.lf, i64 408
  store i32 %i.nn, ptr %i.no, align 8, !tbaa !103
  %.not199.1.i = icmp eq i32 %i.nj, %i.ml
  br i1 %.not199.1.i, label %bb.ay, label %.loopexit264.i

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %i.np = icmp eq i32 %i.mk, 0
  br i1 %i.np, label %.loopexit265.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lf, i64 424
  store <2 x ptr> <ptr @ivi5_base_quant_4x4_intra, ptr @ivi5_base_quant_4x4_inter>, ptr %i.nq, align 8, !tbaa !107
  %i.nr = getelementptr inbounds nuw i8, ptr %i.lf, i64 440
  store <2 x ptr> <ptr @ivi5_scale_quant_4x4_intra, ptr @ivi5_scale_quant_4x4_inter>, ptr %i.nr, align 8, !tbaa !109
  %i.ns = lshr i32 %spec.select.i205.1.i, 3
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 1, !tbaa !31
  %i.nw = and i32 %spec.select.i205.1.i, 7
  %i.nx = add i32 %spec.select.i205.1.i, 2
  %i.ny = call i32 @llvm.umin.i32(i32 %i.le, i32 %i.nx) ; 2 uses
  store i32 %i.ny, ptr %i.a, align 8, !tbaa !28
  %i.nz = shl nuw nsw i32 3, %i.nw
  %i.oa = and i32 %i.nv, %i.nz
  %.not200.1.i = icmp eq i32 %i.oa, 0
  br i1 %.not200.1.i, label %bb.ba, label %.loopexit266.i, !llvm.loop !80

bb.ba:                                            ; preds = %bb.az
  %i.ob = load i8, ptr %i.dr, align 1             ; 2 uses
  %i.oc = zext i8 %i.ob to i64                    ; 2 uses
  %i.od = icmp samesign ult i64 %indvars.iv.next.1.i, %i.oc
  br i1 %i.od, label %bb.as, label %._crit_edge.1.i, !llvm.loop !80

._crit_edge.1.i:                                  ; preds = %bb.ba
  %.not243.i = icmp eq i8 %i.ob, 0
  br i1 %.not243.i, label %._crit_edge241.i, label %.lr.ph240.i

bb.bb:                                            ; preds = %bb.bb, %.lr.ph240.i
  %indvars.iv275.i = phi i64 [ 0, %.lr.ph240.i ], [ %indvars.iv.next276.i, %bb.bb ] ; 3 uses
  %i.oe = getelementptr inbounds nuw [456 x i8], ptr %i.lc, i64 %indvars.iv275.i ; 10 uses
  %i.of = getelementptr inbounds nuw [456 x i8], ptr %i.ha, i64 %indvars.iv275.i ; 10 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oi = load <2 x i32>, ptr %i.og, align 8, !tbaa !110
  store <2 x i32> %i.oi, ptr %i.oh, align 8, !tbaa !110
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oe, i64 108
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 108
  %i.ol = load <2 x i32>, ptr %i.oj, align 4, !tbaa !110
  store <2 x i32> %i.ol, ptr %i.ok, align 4, !tbaa !110
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 116
  %i.on = load i32, ptr %i.om, align 4, !tbaa !41
  %i.oo = getelementptr inbounds nuw i8, ptr %i.of, i64 116
  store i32 %i.on, ptr %i.oo, align 4, !tbaa !41
  %i.op = getelementptr inbounds nuw i8, ptr %i.oe, i64 424
  %i.oq = getelementptr inbounds nuw i8, ptr %i.of, i64 424
  %i.or = load <2 x ptr>, ptr %i.op, align 8, !tbaa !107
  store <2 x ptr> %i.or, ptr %i.oq, align 8, !tbaa !107
  %i.os = getelementptr inbounds nuw i8, ptr %i.oe, i64 440
  %i.ot = getelementptr inbounds nuw i8, ptr %i.of, i64 440
  %i.ou = load <2 x ptr>, ptr %i.os, align 8, !tbaa !109
  store <2 x ptr> %i.ou, ptr %i.ot, align 8, !tbaa !109
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oe, i64 144
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !102
  %i.ox = getelementptr inbounds nuw i8, ptr %i.of, i64 144
  store ptr %i.ow, ptr %i.ox, align 8, !tbaa !102
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oe, i64 384
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !99
  %i.pa = getelementptr inbounds nuw i8, ptr %i.of, i64 384
  store ptr %i.oz, ptr %i.pa, align 8, !tbaa !99
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oe, i64 400
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !101
  %i.pd = getelementptr inbounds nuw i8, ptr %i.of, i64 400
  store ptr %i.pc, ptr %i.pd, align 8, !tbaa !101
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oe, i64 408
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !103
  %i.pg = getelementptr inbounds nuw i8, ptr %i.of, i64 408
  store i32 %i.pf, ptr %i.pg, align 8, !tbaa !103
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oe, i64 392
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !100
  %i.pj = getelementptr inbounds nuw i8, ptr %i.of, i64 392
  store i32 %i.pi, ptr %i.pj, align 8, !tbaa !100
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next276.i, %i.oc
  br i1 %exitcond.not.i, label %._crit_edge241.i, label %bb.bb, !llvm.loop !81

._crit_edge241.i:                                 ; preds = %bb.bb, %._crit_edge.1.i, %._crit_edge.i
  %.2.lcssa.1312.i = phi i32 [ %.2.lcssa.i, %._crit_edge.i ], [ %i.mt, %._crit_edge.1.i ], [ %i.mt, %bb.bb ]
  %.not189.i = icmp eq i32 %.2.lcssa.1312.i, 0
  br i1 %.not189.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge241.i
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 4712
  %i.pl = load i16, ptr %i.fx, align 2, !tbaa !95
  %i.pm = zext i16 %i.pl to i32
end_hunk_0
begin_hunk_1_@decode_mb_info:bb.a
  %i.cn = and i32 %spec.select.i.us, 7
  %i.co = lshr i32 %i.cm, %i.cn
  %i.cp = and i32 %i.co, 8191
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !31
  %i.cu = sext i16 %i.ct to i32
  %i.cv = load i16, ptr %i.cr, align 2, !tbaa !31
  %i.cw = zext i16 %i.cv to i32                   ; 2 uses
  %i.cx = add i32 %spec.select.i.us, %i.cu
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.cx) ; 2 uses
  store i32 %i.cy, ptr %i.as, align 8, !tbaa !28
  %sext211.us = shl i32 %i.cw, 24
  %i.cz = ashr i32 %sext211.us, 25
  %i.da = and i32 %i.cw, 1
  %i.db = sub nsw i32 0, %i.da
  %i.dc = xor i32 %i.cz, %i.db
  %i.dd = trunc nsw i32 %i.dc to i8
  %i.de = sub nsw i8 0, %i.dd
  store i8 %i.de, ptr %i.cb, align 2, !tbaa !140
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.df = phi i32 [ %i.cy, %bb.m ], [ %spec.select.i.us, %bb.l ], [ %spec.select.i.us, %bb.k ], [ %spec.select.i.us, %bb.j ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 12 ; 3 uses
  store i8 0, ptr %i.dg, align 4, !tbaa !145
  %i.dh = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 11 ; 3 uses
  store i8 0, ptr %i.dh, align 1, !tbaa !146
  %i.di = load i32, ptr %i.ax, align 8, !tbaa !47
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = icmp ne ptr %.1235.us, null
  %or.cond.us = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond.us, label %bb.o, label %bb.al

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %.1235.us, i64 11
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !146 ; 4 uses
  br i1 %.not212, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = sext i8 %i.dm to i32
  %i.do = icmp sgt i8 %i.dm, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = add nsw i32 %i.ay, %i.dn
  %i.dr = add nsw i32 %i.dq, %i.dp
  %i.ds = ashr i32 %i.dr, %i.an
  %i.dt = trunc i32 %i.ds to i8                   ; 2 uses
  store i8 %i.dt, ptr %i.dh, align 1, !tbaa !146
  %i.du = getelementptr inbounds nuw i8, ptr %.1235.us, i64 12
  %i.dv = load i8, ptr %i.du, align 4, !tbaa !145 ; 2 uses
  %i.dw = sext i8 %i.dv to i32
  %i.dx = icmp sgt i8 %i.dv, 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = add nsw i32 %i.ay, %i.dw
  %i.ea = add nsw i32 %i.dz, %i.dy
  %i.eb = ashr i32 %i.ea, %i.an
  %i.ec = trunc i32 %i.eb to i8                   ; 2 uses
  store i8 %i.ec, ptr %i.dg, align 4, !tbaa !145
  br label %bb.al

bb.q:                                             ; preds = %bb.o
  store i8 %i.dm, ptr %i.dh, align 1, !tbaa !146
  %i.ed = getelementptr inbounds nuw i8, ptr %.1235.us, i64 12
  %i.ee = load i8, ptr %i.ed, align 4, !tbaa !145 ; 2 uses
  store i8 %i.ee, ptr %i.dg, align 4, !tbaa !145
  br label %bb.al

bb.r:                                             ; preds = %bb.h
  %i.ef = load i32, ptr %i.ax, align 8, !tbaa !47
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = icmp ne ptr %.1235.us, null             ; 2 uses
  %or.cond3.us = select i1 %i.eg, i1 %i.eh, i1 false ; 2 uses
  br i1 %or.cond3.us, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = load i32, ptr %i.at, align 8, !tbaa !32
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ek = lshr i32 %spec.select.i.us, 3
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !31
  %i.eo = icmp slt i32 %spec.select.i.us, %i.bg
  %i.ep = zext i1 %i.eo to i32
  %spec.select.i215.us = add i32 %spec.select.i.us, %i.ep ; 2 uses
  %i.eq = zext i8 %i.en to i32
  %i.er = and i32 %spec.select.i.us, 7
  %i.es = lshr i32 %i.eq, %i.er
  store i32 %spec.select.i215.us, ptr %i.as, align 8, !tbaa !28
  %i.et = trunc nuw i32 %i.es to i8
  %i.eu = and i8 %i.et, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.ev = getelementptr inbounds nuw i8, ptr %.1235.us, i64 8
  %i.ew = load i8, ptr %i.ev, align 4, !tbaa !138
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.t
  %.sink = phi i8 [ %i.ew, %bb.u ], [ %i.eu, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.ex = phi i32 [ %spec.select.i.us, %bb.u ], [ %spec.select.i215.us, %bb.t ], [ %spec.select.i.us, %bb.s ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 8
  store i8 %.sink, ptr %i.ey, align 4, !tbaa !138
  %i.ez = load i32, ptr %i.az, align 8, !tbaa !43
  %.not199.us = icmp eq i32 %i.b, %i.ez
  %i.fa = select i1 %.not199.us, i32 1, i32 4     ; 2 uses
  %i.fb = lshr i32 %i.ex, 3
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 1, !tbaa !31
  %i.ff = and i32 %i.ex, 7
  %i.fg = lshr i32 %i.fe, %i.ff
  %narrow.i.i.us = sub nuw nsw i32 32, %i.fa
  %i.fh = lshr i32 -1, %narrow.i.i.us
  %i.fi = and i32 %i.fh, %i.fg                    ; 2 uses
  %i.fj = add i32 %i.fa, %i.ex
  %i.fk = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.fj) ; 10 uses
  store i32 %i.fk, ptr %i.as, align 8, !tbaa !28
  %i.fl = trunc nuw nsw i32 %i.fi to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 9
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !139
  %i.fn = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 10 ; 2 uses
  store i8 0, ptr %i.fn, align 2, !tbaa !140
  %i.fo = load i32, ptr %i.ba, align 8, !tbaa !49
  %.not200.us = icmp eq i32 %i.fo, 0
  br i1 %.not200.us, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fp = load i32, ptr %i.bb, align 4, !tbaa !48
  %.not201.us = icmp eq i32 %i.fp, 0
  br i1 %.not201.us, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.eh, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.fq = getelementptr inbounds nuw i8, ptr %.1235.us, i64 10
  %i.fr = load i8, ptr %i.fq, align 2, !tbaa !140
  br label %.sink.split

bb.z:                                             ; preds = %bb.w
  %.not202.us = icmp eq i32 %i.fi, 0
  br i1 %.not202.us, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.fs = load i32, ptr %1, align 8, !tbaa !141
  %.not203.us = icmp eq i32 %i.fs, 0
  br i1 %.not203.us, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ft = load i32, ptr %i.au, align 4, !tbaa !142
  %.not204.us = icmp eq i32 %i.ft, 0
  br i1 %.not204.us, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.fu = load i8, ptr %i.av, align 4, !tbaa !44
  %i.fv = and i8 %i.fu, 8
  %.not205.us = icmp eq i8 %i.fv, 0
  br i1 %.not205.us, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %i.fw = load ptr, ptr %i.aw, align 8, !tbaa !143
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !144
  %i.fz = lshr i32 %i.fk, 3
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 1, !tbaa !31
  %i.gd = and i32 %i.fk, 7
  %i.ge = lshr i32 %i.gc, %i.gd
  %i.gf = and i32 %i.ge, 8191
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gg ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !31
  %i.gk = sext i16 %i.gj to i32
  %i.gl = load i16, ptr %i.gh, align 2, !tbaa !31
  %i.gm = zext i16 %i.gl to i32                   ; 2 uses
  %i.gn = add i32 %i.fk, %i.gk
  %i.go = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.gn) ; 2 uses
  store i32 %i.go, ptr %i.as, align 8, !tbaa !28
  %sext.us = shl i32 %i.gm, 24
  %i.gp = ashr i32 %sext.us, 25
  %i.gq = and i32 %i.gm, 1
  %i.gr = sub nsw i32 0, %i.gq
  %i.gs = xor i32 %i.gp, %i.gr
  %i.gt = trunc nsw i32 %i.gs to i8
  %i.gu = sub nsw i8 0, %i.gt
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.ad
  %.sink288 = phi i8 [ %i.gu, %bb.ad ], [ %i.fr, %bb.y ]
  %.ph287 = phi i32 [ %i.go, %bb.ad ], [ %i.fk, %bb.y ]
  store i8 %.sink288, ptr %i.fn, align 2, !tbaa !140
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ac, %bb.ab, %bb.aa, %bb.x, %bb.v
  %i.gv = phi i32 [ %i.fk, %bb.x ], [ %i.fk, %bb.ac ], [ %i.fk, %bb.ab ], [ %i.fk, %bb.aa ], [ %i.fk, %bb.v ], [ %.ph287, %.sink.split ] ; 6 uses
  %.not206.us = icmp eq i8 %.sink, 0
  br i1 %.not206.us, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %or.cond3.us, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gw = load ptr, ptr %i.aw, align 8, !tbaa !143
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !144 ; 2 uses
  %i.gz = lshr i32 %i.gv, 3
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 1, !tbaa !31
  %i.hd = and i32 %i.gv, 7
  %i.he = lshr i32 %i.hc, %i.hd
  %i.hf = and i32 %i.he, 8191
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !31
  %i.hk = sext i16 %i.hj to i32
  %i.hl = load i16, ptr %i.hh, align 2, !tbaa !31 ; 2 uses
  %i.hm = add i32 %i.gv, %i.hk
  %i.hn = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.hm) ; 4 uses
  store i32 %i.hn, ptr %i.as, align 8, !tbaa !28
  %i.ho = ashr i16 %i.hl, 1
  %i.hp = and i16 %i.hl, 1
  %i.hq = sub nsw i16 0, %i.hp
  %i.hr = xor i16 %i.ho, %i.hq
  %i.hs = sub i16 %.1182232.us, %i.hr             ; 2 uses
  %i.ht = lshr i32 %i.hn, 3
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 1, !tbaa !31
  %i.hx = and i32 %i.hn, 7
  %i.hy = lshr i32 %i.hw, %i.hx
  %i.hz = and i32 %i.hy, 8191
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ia ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !31
  %i.ie = sext i16 %i.id to i32
  %i.if = load i16, ptr %i.ib, align 2, !tbaa !31 ; 2 uses
  %i.ig = add i32 %i.hn, %i.ie
  %i.ih = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.ig) ; 2 uses
  store i32 %i.ih, ptr %i.as, align 8, !tbaa !28
  %i.ii = ashr i16 %i.if, 1
  %i.ij = and i16 %i.if, 1
  %i.ik = sub nsw i16 0, %i.ij
  %i.il = xor i16 %i.ii, %i.ik
  %i.im = sub i16 %.1185231.us, %i.il             ; 2 uses
  %i.in = trunc i16 %i.im to i8                   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 11
  store i8 %i.in, ptr %i.io, align 1, !tbaa !146
  %i.ip = trunc i16 %i.hs to i8                   ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 12
  store i8 %i.ip, ptr %i.iq, align 4, !tbaa !145
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.ir = getelementptr inbounds nuw i8, ptr %.1235.us, i64 11
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !146 ; 4 uses
  br i1 %.not212, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.it = sext i8 %i.is to i32
  %i.iu = icmp sgt i8 %i.is, 0
  %i.iv = zext i1 %i.iu to i32
  %i.iw = add nsw i32 %i.ay, %i.it
  %i.ix = add nsw i32 %i.iw, %i.iv
  %i.iy = ashr i32 %i.ix, %i.an
  %i.iz = trunc i32 %i.iy to i8                   ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 11
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !146
  %i.jb = getelementptr inbounds nuw i8, ptr %.1235.us, i64 12
  %i.jc = load i8, ptr %i.jb, align 4, !tbaa !145 ; 2 uses
  %i.jd = sext i8 %i.jc to i32
  %i.je = icmp sgt i8 %i.jc, 0
  %i.jf = zext i1 %i.je to i32
  %i.jg = add nsw i32 %i.ay, %i.jd
  %i.jh = add nsw i32 %i.jg, %i.jf
  %i.ji = ashr i32 %i.jh, %i.an
  %i.jj = trunc i32 %i.ji to i8                   ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 12
  store i8 %i.jj, ptr %i.jk, align 4, !tbaa !145
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.jl = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 11
  store i8 %i.is, ptr %i.jl, align 1, !tbaa !146
  %i.jm = getelementptr inbounds nuw i8, ptr %.1235.us, i64 12
  %i.jn = load i8, ptr %i.jm, align 4, !tbaa !145 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 12
  store i8 %i.jn, ptr %i.jo, align 4, !tbaa !145
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae
  %i.jp = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 12
  store i8 0, ptr %i.jp, align 4, !tbaa !145
  %i.jq = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 11
  store i8 0, ptr %i.jq, align 1, !tbaa !146
  br label %bb.an

bb.al:                                            ; preds = %bb.p, %bb.q, %bb.n, %bb.ai, %bb.aj, %bb.ag
  %.ph = phi i8 [ %i.ip, %bb.ag ], [ %i.jn, %bb.aj ], [ %i.jj, %bb.ai ], [ 0, %bb.n ], [ %i.ee, %bb.q ], [ %i.ec, %bb.p ]
  %.ph269 = phi i8 [ %i.in, %bb.ag ], [ %i.is, %bb.aj ], [ %i.iz, %bb.ai ], [ 0, %bb.n ], [ %i.dm, %bb.q ], [ %i.dt, %bb.p ]
  %.ph270 = phi i32 [ %i.ih, %bb.ag ], [ %i.gv, %bb.aj ], [ %i.gv, %bb.ai ], [ %i.df, %bb.n ], [ %i.df, %bb.q ], [ %i.df, %bb.p ]
  %.2186.us.ph = phi i16 [ %i.im, %bb.ag ], [ %.1185231.us, %bb.aj ], [ %.1185231.us, %bb.ai ], [ %.1185231.us, %bb.n ], [ %.1185231.us, %bb.q ], [ %.1185231.us, %bb.p ]
  %.2183.us.ph = phi i16 [ %i.hs, %bb.ag ], [ %.1182232.us, %bb.aj ], [ %.1182232.us, %bb.ai ], [ %.1182232.us, %bb.n ], [ %.1182232.us, %bb.q ], [ %.1182232.us, %bb.p ]
  %i.jr = load i32, ptr %i.bc, align 4, !tbaa !41 ; 8 uses
  %i.js = sext i8 %.ph269 to i32                  ; 3 uses
  %i.jt = ashr i32 %i.js, %i.jr
  %i.ju = add nsw i32 %i.jt, %.0188230.us
  %i.jv = sext i32 %i.ju to i64
  %i.jw = sext i8 %.ph to i32                     ; 3 uses
  %i.jx = ashr i32 %i.jw, %i.jr
  %i.jy = add nsw i32 %i.jx, %.0187239.us
  %i.jz = sext i32 %i.jy to i64
  %i.ka = mul nsw i64 %i.d, %i.jz
  %i.kb = add nsw i64 %i.ka, %i.jv
  %i.kc = icmp slt i64 %i.kb, 0
  br i1 %i.kc, label %.split247.us, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kd = add nsw i32 %i.jr, %i.js
  %i.ke = ashr i32 %i.kd, %i.jr
  %i.kf = add i32 %i.z, %.0188230.us
  %i.kg = add i32 %i.kf, %i.ke
  %i.kh = sext i32 %i.kg to i64
  %i.ki = add nsw i32 %i.jr, %i.jw
  %i.kj = ashr i32 %i.ki, %i.jr
  %i.kk = add nsw i32 %i.bi, %i.kj
  %i.kl = sext i32 %i.kk to i64
  %i.km = mul nsw i64 %i.d, %i.kl
  %i.kn = add nsw i64 %i.km, %i.kh
  %i.ko = load i32, ptr %i.bd, align 4, !tbaa !147
  %i.kp = add nsw i32 %i.ko, -1
  %i.kq = sext i32 %i.kp to i64
  %i.kr = icmp sgt i64 %i.kn, %i.kq
  br i1 %i.kr, label %.split247.us, label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am
  %.2183.us277 = phi i16 [ %.2183.us.ph, %bb.am ], [ %.1182232.us, %bb.ak ] ; 2 uses
  %.2186.us275 = phi i16 [ %.2186.us.ph, %bb.am ], [ %.1185231.us, %bb.ak ] ; 2 uses
  %i.ks = phi i32 [ %.ph270, %bb.am ], [ %i.gv, %bb.ak ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.1178234.us, i64 16 ; 2 uses
  %.not214.us = icmp eq ptr %.1235.us, null
  %i.ku = getelementptr inbounds nuw i8, ptr %.1235.us, i64 16
  %spec.select.us = select i1 %.not214.us, ptr null, ptr %i.ku ; 2 uses
  %i.kv = add nsw i32 %.0179233.us, %i.b
  %i.kw = add nsw i32 %.0188230.us, %i.b          ; 2 uses
  %i.kx = icmp slt i32 %i.kw, %i.aq
  br i1 %i.kx, label %bb.h, label %._crit_edge.us, !llvm.loop !122

._crit_edge.us:                                   ; preds = %bb.an
  %i.ky = add nsw i32 %.0180242.us, %i.f
  %i.kz = add nsw i32 %.0187239.us, %i.b          ; 2 uses
  %i.la = icmp slt i32 %i.kz, %i.ao
  br i1 %i.la, label %.preheader.us, label %._crit_edge245, !llvm.loop !123

.split.us:                                        ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.20) #8
  br label %align_get_bits.exit

.split247.us:                                     ; preds = %bb.al, %bb.am
  %i.lb = mul nsw i32 %i.jr, %.0188230.us
  %i.lc = add nsw i32 %i.lb, %i.js
  %i.ld = mul nsw i32 %i.jr, %.0187239.us
  %i.le = add nsw i32 %i.ld, %i.jw
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %i.lc, i32 noundef %i.le) #8
  br label %align_get_bits.exit

._crit_edge245:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.g
  %i.lf = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val.i = load i32, ptr %i.lf, align 8, !tbaa !28 ; 2 uses
  %i.lg = sub nsw i32 0, %.val.i
  %i.lh = and i32 %i.lg, 7                        ; 2 uses
  %.not.i = icmp eq i32 %i.lh, 0
  br i1 %.not.i, label %align_get_bits.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge245
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !29
  %i.lk = add i32 %i.lh, %.val.i
  %i.ll = tail call i32 @llvm.umin.i32(i32 %i.lj, i32 %i.lk)
  store i32 %i.ll, ptr %i.lf, align 8, !tbaa !28
  br label %align_get_bits.exit

align_get_bits.exit:                              ; preds = %bb.ao, %._crit_edge245, %bb.c, %bb.d, %.split247.us, %.split.us, %bb.f
  %.0189 = phi i32 [ -1094995529, %bb.f ], [ -1094995529, %.split.us ], [ -1094995529, %.split247.us ], [ -1094995529, %bb.c ], [ -1094995529, %bb.d ], [ 0, %._crit_edge245 ], [ 0, %bb.ao ]
  ret i32 %.0189
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @switch_buffers(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4660
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  switch i32 %i.b, label %bb.f [
end_hunk_1
