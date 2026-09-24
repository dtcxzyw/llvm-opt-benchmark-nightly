Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/stem_ISO_8859_1_dutch?download=true
inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@dutch_ISO_8859_1_stem:bb.a
  %i.bw = tail call i32 @out_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 1) #3 ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %r_mark_regions.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = load i32, ptr %i.a, align 8, !tbaa !14
  %i.bz = add nsw i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.a, align 8, !tbaa !14
  %i.ca = tail call i32 @in_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 1) #3 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %r_mark_regions.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !14
  %i.cd = add nsw i32 %i.cc, %i.ca
  %i.ce = load ptr, ptr %i.bj, align 8, !tbaa !20
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !21
  br label %r_mark_regions.exit

r_mark_regions.exit:                              ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store i32 %i.b, ptr %i.cf, align 8, !tbaa !22
  %i.cg = load i32, ptr %i.d, align 4, !tbaa !16  ; 4 uses
  store i32 %i.cg, ptr %i.a, align 8, !tbaa !14
  store i32 %i.cg, ptr %i.e, align 8, !tbaa !19
  %.not.i44 = icmp sgt i32 %i.cg, %i.b
  br i1 %.not.i44, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %r_mark_regions.exit
  %i.ch = load ptr, ptr %0, align 8, !tbaa !17
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr i8, ptr %i.ch, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !18
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %.mask.i45 = and i32 %i.cm, 224
  %.not326.i = icmp eq i32 %.mask.i45, 96
  br i1 %.not326.i, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.cn = and i32 %i.cm, 31
  %i.co = shl nuw i32 1, %i.cn
  %i.cp = and i32 %i.co, 540704
  %.not327.i = icmp eq i32 %i.cp, 0
  br i1 %.not327.i, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_3, i32 noundef 5) #3 ; 2 uses
  %.not328.i = icmp eq i32 %i.cq, 0
  br i1 %.not328.i, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cr = load i32, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  store i32 %i.cr, ptr %i.c, align 4, !tbaa !15
  switch i32 %i.cq, label %bb.an [
    i32 1, label %bb.ah
    i32 2, label %bb.aj
    i32 3, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %.val379.i = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.cs = getelementptr i8, ptr %.val379.i, i64 4
  %.val379.val.i = load i32, ptr %i.cs, align 4, !tbaa !21
  %.not.i.not.i = icmp sgt i32 %.val379.val.i, %i.cr
  br i1 %.not.i.not.i, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ct = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_11) #3 ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %bb.an, label %r_standard_suffix.exit.thread

bb.aj:                                            ; preds = %bb.ag
  %i.cv = tail call fastcc i32 @r_en_ending(ptr noundef nonnull %0) ; 3 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %r_standard_suffix.exit.thread, label %bb.an

bb.ak:                                            ; preds = %bb.ag
  %.val377.i = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.cx = getelementptr i8, ptr %.val377.i, i64 4
  %.val377.val.i = load i32, ptr %i.cx, align 4, !tbaa !21
  %.not.i394.not.i = icmp sgt i32 %.val377.val.i, %i.cr
  br i1 %.not.i394.not.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cy = tail call i32 @out_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_v_j, i32 noundef 97, i32 noundef 232, i32 noundef 0) #3
  %.not329.i = icmp eq i32 %i.cy, 0
  br i1 %.not329.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cz = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, -1
  br i1 %i.da, label %bb.an, label %r_standard_suffix.exit.thread

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %r_mark_regions.exit
  %.5264.i = phi i32 [ undef, %r_mark_regions.exit ], [ undef, %bb.ad ], [ undef, %bb.ag ], [ 1, %bb.ai ], [ 0, %bb.ah ], [ undef, %bb.ae ], [ %i.cv, %bb.aj ], [ 1, %bb.al ], [ 1, %bb.am ], [ 0, %bb.ak ], [ undef, %bb.af ] ; 5 uses
  %i.db = load i32, ptr %i.d, align 4, !tbaa !16
  store i32 %i.db, ptr %i.a, align 8, !tbaa !14
  %i.dc = load ptr, ptr %i.bj, align 8, !tbaa !20 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i32 0, ptr %i.dd, align 4, !tbaa !21
  %i.de = load i32, ptr %i.a, align 8, !tbaa !14  ; 5 uses
  store i32 %i.de, ptr %i.e, align 8, !tbaa !19
  %i.df = load i32, ptr %i.cf, align 8, !tbaa !22
  %.not.i396.i = icmp sgt i32 %i.de, %i.df
  br i1 %.not.i396.i, label %bb.ao, label %r_e_ending.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.dg = load ptr, ptr %0, align 8, !tbaa !17
  %i.dh = sext i32 %i.de to i64
  %i.di = getelementptr i8, ptr %i.dg, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !18
  %.not37.i.i = icmp eq i8 %i.dk, 101
  br i1 %.not37.i.i, label %bb.ap, label %r_e_ending.exit.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.dl = add nsw i32 %i.de, -1                   ; 3 uses
  store i32 %i.dl, ptr %i.a, align 8, !tbaa !14
  store i32 %i.dl, ptr %i.c, align 4, !tbaa !15
  %i.dm = getelementptr i8, ptr %i.dc, i64 4
  %.val40.val.i.i = load i32, ptr %i.dm, align 4, !tbaa !21
  %.not.i.i.i = icmp slt i32 %.val40.val.i.i, %i.de
  br i1 %.not.i.i.i, label %bb.aq, label %r_e_ending.exit.thread.i

bb.aq:                                            ; preds = %bb.ap
  %i.dn = load i32, ptr %i.d, align 4, !tbaa !16
  %i.do = tail call i32 @out_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #3
  %.not39.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not39.not.i.i, label %bb.ar, label %r_e_ending.exit.thread.i

bb.ar:                                            ; preds = %bb.aq
  %.neg.i.i = sub i32 %i.dl, %i.dn
  %i.dp = load i32, ptr %i.d, align 4, !tbaa !16
  %i.dq = add i32 %.neg.i.i, %i.dp
  store i32 %i.dq, ptr %i.a, align 8, !tbaa !14
  %i.dr = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, -1
  br i1 %i.ds, label %r_e_ending.exit.i, label %r_standard_suffix.exit.thread

r_e_ending.exit.i:                                ; preds = %bb.ar
  %i.dt = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 1, ptr %i.du, align 4, !tbaa !21
  %i.dv = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0) ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, -1
  br i1 %i.dw, label %r_e_ending.exit.thread.i, label %r_standard_suffix.exit.thread

r_e_ending.exit.thread.i:                         ; preds = %r_e_ending.exit.i, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.dx = load i32, ptr %i.d, align 4, !tbaa !16  ; 2 uses
  store i32 %i.dx, ptr %i.a, align 8, !tbaa !14
  store i32 %i.dx, ptr %i.e, align 8, !tbaa !19
  %i.dy = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_12) #3
  %.not331.i = icmp eq i32 %i.dy, 0
  br i1 %.not331.i, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %r_e_ending.exit.thread.i
  %i.dz = load i32, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  store i32 %i.dz, ptr %i.c, align 4, !tbaa !15
  %.val393.i = load ptr, ptr %i.bj, align 8, !tbaa !20
  %.val393.val.i = load i32, ptr %.val393.i, align 4, !tbaa !21
  %.not.i397.not.i = icmp sgt i32 %.val393.val.i, %i.dz
  br i1 %.not.i397.not.i, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ea = load i32, ptr %i.cf, align 8, !tbaa !22
  %.not332.i = icmp sgt i32 %i.dz, %i.ea
  br i1 %.not332.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.eb = load ptr, ptr %0, align 8, !tbaa !17
  %i.ec = sext i32 %i.dz to i64
  %i.ed = getelementptr i8, ptr %i.eb, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !18
  %.not333.i = icmp eq i8 %i.ef, 99
  br i1 %.not333.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.eg = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, -1
  br i1 %i.eh, label %bb.aw, label %r_standard_suffix.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.ei = load i32, ptr %i.a, align 8, !tbaa !14
  store i32 %i.ei, ptr %i.e, align 8, !tbaa !19
  %i.ej = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_13) #3
  %.not335.i = icmp eq i32 %i.ej, 0
  br i1 %.not335.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ek = load i32, ptr %i.a, align 8, !tbaa !14
  store i32 %i.ek, ptr %i.c, align 4, !tbaa !15
  %i.el = tail call fastcc i32 @r_en_ending(ptr noundef nonnull %0) ; 3 uses
  %i.em = icmp slt i32 %i.el, 0
  %.10269.i = select i1 %i.em, i32 %i.el, i32 %.5264.i ; 2 uses
  %.not496.i = icmp sgt i32 %i.el, -1
  br i1 %.not496.i, label %bb.ay, label %r_standard_suffix.exit

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.au, %bb.as, %r_e_ending.exit.thread.i
  %.11270.i = phi i32 [ %.5264.i, %r_e_ending.exit.thread.i ], [ %.10269.i, %bb.ax ], [ %.5264.i, %bb.aw ], [ %.5264.i, %bb.as ], [ %.5264.i, %bb.au ] ; 2 uses
  %i.en = load i32, ptr %i.d, align 4, !tbaa !16  ; 3 uses
  store i32 %i.en, ptr %i.a, align 8, !tbaa !14
  store i32 %i.en, ptr %i.e, align 8, !tbaa !19
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  %i.ep = load i32, ptr %i.cf, align 8, !tbaa !22
  %.not337.i = icmp sgt i32 %i.eo, %i.ep
  br i1 %.not337.i, label %bb.az, label %.thread450.i

bb.az:                                            ; preds = %bb.ay
  %i.eq = load ptr, ptr %0, align 8, !tbaa !17
  %i.er = sext i32 %i.eo to i64
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !18
  %i.eu = zext i8 %i.et to i32                    ; 2 uses
  %.mask339.i = and i32 %i.eu, 224
  %.not338.i = icmp eq i32 %.mask339.i, 96
  br i1 %.not338.i, label %bb.ba, label %.thread450.i

bb.ba:                                            ; preds = %bb.az
  %i.ev = and i32 %i.eu, 31
  %i.ew = shl nuw i32 1, %i.ev
  %i.ex = and i32 %i.ew, 264336
  %.not340.i = icmp eq i32 %i.ex, 0
  br i1 %.not340.i, label %.thread450.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ey = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_4, i32 noundef 6) #3 ; 2 uses
  %.not341.i = icmp eq i32 %i.ey, 0
  br i1 %.not341.i, label %.thread450.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ez = load i32, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  store i32 %i.ez, ptr %i.c, align 4, !tbaa !15
  switch i32 %i.ey, label %.thread450.i [
    i32 1, label %bb.bd
    i32 2, label %bb.bl
    i32 3, label %bb.bp
    i32 4, label %bb.bs
    i32 5, label %bb.bu
  ]

bb.bd:                                            ; preds = %bb.bc
  %.val391.i = load ptr, ptr %i.bj, align 8, !tbaa !20
  %.val391.val.i = load i32, ptr %.val391.i, align 4, !tbaa !21
  %.not.i399.not.i = icmp sgt i32 %.val391.val.i, %i.ez
  br i1 %.not.i399.not.i, label %.thread450.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fa = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, -1
  br i1 %i.fb, label %bb.bf, label %r_standard_suffix.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.fc = load i32, ptr %i.d, align 4, !tbaa !16
  %i.fd = load i32, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %.neg352.i = sub i32 %i.fd, %i.fc
  store i32 %i.fd, ptr %i.e, align 8, !tbaa !19
  %i.fe = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_14) #3
  %.not347.i = icmp eq i32 %i.fe, 0
  br i1 %.not347.i, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ff = load i32, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  store i32 %i.ff, ptr %i.c, align 4, !tbaa !15
  %.val389.i = load ptr, ptr %i.bj, align 8, !tbaa !20
  %.val389.val.i = load i32, ptr %.val389.i, align 4, !tbaa !21
  %.not.i401.not.i = icmp sgt i32 %.val389.val.i, %i.ff
  br i1 %.not.i401.not.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fg = load i32, ptr %i.cf, align 8, !tbaa !22
  %.not348.i = icmp sgt i32 %i.ff, %i.fg
  br i1 %.not348.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.fh = load ptr, ptr %0, align 8, !tbaa !17
  %i.fi = sext i32 %i.ff to i64
  %i.fj = getelementptr i8, ptr %i.fh, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fj, i64 -1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !18
  %.not349.i = icmp eq i8 %i.fl, 101
  br i1 %.not349.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.fm = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, -1
  br i1 %i.fn, label %.thread450.i, label %r_standard_suffix.exit.thread

bb.bk:                                            ; preds = %bb.bi, %bb.bg, %bb.bf
  %i.fo = load i32, ptr %i.d, align 4, !tbaa !16
  %i.fp = add i32 %.neg352.i, %i.fo
  store i32 %i.fp, ptr %i.a, align 8, !tbaa !14
  %i.fq = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0) ; 4 uses
  %1 = icmp eq i32 %i.fq, 0
  br i1 %1, label %.thread450.i, label %2

2:                                                ; preds = %bb.bk
  %3 = icmp slt i32 %i.fq, 0
  %..12272..i = select i1 %3, i32 %i.fq, i32 %.11270.i
  %cond.i = icmp sgt i32 %i.fq, -1
  br i1 %cond.i, label %.thread450.i, label %r_standard_suffix.exit

bb.bl:                                            ; preds = %bb.bc
  %.val387.i = load ptr, ptr %i.bj, align 8, !tbaa !20
  %.val387.val.i = load i32, ptr %.val387.i, align 4, !tbaa !21
  %.not.i403.not.i = icmp sgt i32 %.val387.val.i, %i.ez
  br i1 %.not.i403.not.i, label %.thread450.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fr = load i32, ptr %i.cf, align 8, !tbaa !22
  %.not343.i.a = icmp sgt i32 %i.ez, %i.fr
  br i1 %.not343.i.a, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fs = load ptr, ptr %0, align 8, !tbaa !17
  %i.ft = sext i32 %i.ez to i64
  %i.fu = getelementptr i8, ptr %i.fs, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 -1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !18
  %.not344.i = icmp eq i8 %i.fw, 101
  br i1 %.not344.i, label %.thread450.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.fx = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, -1
  br i1 %i.fy, label %.thread450.i, label %r_standard_suffix.exit.thread

bb.bp:                                            ; preds = %bb.bc
  %.val385.i = load ptr, ptr %i.bj, align 8, !tbaa !20
  %.val385.val.i = load i32, ptr %.val385.i, align 4, !tbaa !21
  %.not.i405.not.i = icmp sgt i32 %.val385.val.i, %i.ez
  br i1 %.not.i405.not.i, label %.thread450.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fz = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, -1
  br i1 %i.ga, label %bb.br, label %r_standard_suffix.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.gb = tail call fastcc i32 @r_e_ending(ptr noundef nonnull %0) ; 3 uses
  %i.gc = icmp slt i32 %i.gb, 0
  %.24283.i = select i1 %i.gc, i32 %i.gb, i32 %.11270.i
  %.not497.i = icmp sgt i32 %i.gb, -1
  br i1 %.not497.i, label %.thread450.i, label %r_standard_suffix.exit

bb.bs:                                            ; preds = %bb.bc
  %.val383.i = load ptr, ptr %i.bj, align 8, !tbaa !20
  %.val383.val.i = load i32, ptr %.val383.i, align 4, !tbaa !21
  %.not.i407.not.i = icmp sgt i32 %.val383.val.i, %i.ez
  br i1 %.not.i407.not.i, label %.thread450.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gd = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, -1
  br i1 %i.ge, label %.thread450.i, label %r_standard_suffix.exit.thread

bb.bu:                                            ; preds = %bb.bc
  %.val381.i = load ptr, ptr %i.bj, align 8, !tbaa !20 ; 2 uses
  %.val381.val.i = load i32, ptr %.val381.i, align 4, !tbaa !21
  %.not.i409.not.i = icmp sgt i32 %.val381.val.i, %i.ez
  br i1 %.not.i409.not.i, label %.thread450.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gf = getelementptr inbounds nuw i8, ptr %.val381.i, i64 8
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !21
  %.not342.i = icmp eq i32 %i.gg, 0
  br i1 %.not342.i, label %.thread450.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gh = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, -1
  br i1 %i.gi, label %.thread450.i, label %r_standard_suffix.exit.thread

.thread450.i:                                     ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bp, %bb.bo, %bb.bn, %bb.bl, %2, %bb.bk, %bb.bj, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %i.gj = load i32, ptr %i.d, align 4, !tbaa !16
  store i32 %i.gj, ptr %i.a, align 8, !tbaa !14
  %i.gk = tail call i32 @out_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_v_I, i32 noundef 73, i32 noundef 232, i32 noundef 0) #3
  %.not354.i = icmp eq i32 %i.gk, 0
  br i1 %.not354.i, label %bb.bx, label %r_standard_suffix.exit.thread55

bb.bx:                                            ; preds = %.thread450.i
  %i.gl = load i32, ptr %i.d, align 4, !tbaa !16
  %i.gm = load i32, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %.neg361.i = sub i32 %i.gm, %i.gl
  %i.gn = add nsw i32 %i.gm, -1                   ; 2 uses
  %i.go = load i32, ptr %i.cf, align 8, !tbaa !22
  %.not355.i = icmp sgt i32 %i.gn, %i.go
  br i1 %.not355.i, label %bb.by, label %r_standard_suffix.exit.thread55

bb.by:                                            ; preds = %bb.bx
  %i.gp = load ptr, ptr %0, align 8, !tbaa !17
  %i.gq = sext i32 %i.gn to i64
  %i.gr = getelementptr inbounds i8, ptr %i.gp, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !18
  %i.gt = zext i8 %i.gs to i32                    ; 2 uses
  %.mask357.i = and i32 %i.gt, 224
  %.not356.i = icmp eq i32 %.mask357.i, 96
  br i1 %.not356.i, label %bb.bz, label %r_standard_suffix.exit.thread55

bb.bz:                                            ; preds = %bb.by
  %i.gu = and i32 %i.gt, 31
  %i.gv = shl nuw i32 1, %i.gu
  %i.gw = and i32 %i.gv, 2129954
  %.not358.i = icmp eq i32 %i.gw, 0
  br i1 %.not358.i, label %r_standard_suffix.exit.thread55, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gx = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_5, i32 noundef 4) #3
  %.not359.i = icmp eq i32 %i.gx, 0
  br i1 %.not359.i, label %r_standard_suffix.exit.thread55, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gy = tail call i32 @out_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #3
  %.not360.i = icmp eq i32 %i.gy, 0
  br i1 %.not360.i, label %bb.cc, label %r_standard_suffix.exit.thread55

bb.cc:                                            ; preds = %bb.cb
  %i.gz = load i32, ptr %i.d, align 4, !tbaa !16
  %i.ha = add i32 %i.gz, %.neg361.i               ; 4 uses
  store i32 %i.ha, ptr %i.a, align 8, !tbaa !14
  store i32 %i.ha, ptr %i.e, align 8, !tbaa !19
  %i.hb = load i32, ptr %i.cf, align 8, !tbaa !22
  %.not362.i = icmp sgt i32 %i.ha, %i.hb
  br i1 %.not362.i, label %bb.cd, label %r_standard_suffix.exit.thread55

bb.cd:                                            ; preds = %bb.cc
  %i.hc = add nsw i32 %i.ha, -1                   ; 2 uses
  store i32 %i.hc, ptr %i.a, align 8, !tbaa !14
  store i32 %i.hc, ptr %i.c, align 4, !tbaa !15
  %i.hd = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.he = icmp sgt i32 %i.hd, -1
  br i1 %i.he, label %r_standard_suffix.exit.thread55, label %r_standard_suffix.exit.thread

r_standard_suffix.exit:                           ; preds = %bb.ax, %2, %bb.br
  %.34.i = phi i32 [ %..12272..i, %2 ], [ %.10269.i, %bb.ax ], [ %.24283.i, %bb.br ] ; 2 uses
  %i.hf = icmp sgt i32 %.34.i, -1
  br i1 %i.hf, label %r_standard_suffix.exit.thread55, label %r_standard_suffix.exit.thread

r_standard_suffix.exit.thread55:                  ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %.thread450.i, %r_standard_suffix.exit
  %i.hg = load i32, ptr %i.cf, align 8, !tbaa !22 ; 3 uses
  store i32 %i.hg, ptr %i.a, align 8, !tbaa !14
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cm, %r_standard_suffix.exit.thread55
  %i.hh = phi i32 [ %.pre, %bb.cm ], [ %i.hg, %r_standard_suffix.exit.thread55 ] ; 5 uses
  store i32 %i.hh, ptr %i.c, align 4, !tbaa !15
  %i.hi = load i32, ptr %i.d, align 4, !tbaa !16  ; 2 uses
  %.not.i46 = icmp slt i32 %i.hh, %i.hi
  br i1 %.not.i46, label %bb.cf, label %.thread46.i

bb.cf:                                            ; preds = %bb.ce
  %i.hj = load ptr, ptr %0, align 8, !tbaa !17
  %i.hk = sext i32 %i.hh to i64
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !18
  switch i8 %i.hm, label %.thread46.i [
    i8 73, label %bb.cg
    i8 89, label %bb.cg
  ]

.thread46.i:                                      ; preds = %bb.cf, %bb.ce
  store i32 %i.hh, ptr %i.e, align 8, !tbaa !19
  br label %bb.ck

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %i.hn = tail call i32 @find_among(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 3) #3 ; 2 uses
  %.not40.i = icmp eq i32 %i.hn, 0
  br i1 %.not40.i, label %bb.cn, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ho = load i32, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  store i32 %i.ho, ptr %i.e, align 8, !tbaa !19
  switch i32 %i.hn, label %bb.cm [
    i32 1, label %bb.ci
    i32 2, label %bb.cj
    i32 3, label %._crit_edge.i47
  ]

._crit_edge.i47:                                  ; preds = %bb.ch
  %.pre.i48 = load i32, ptr %i.d, align 4, !tbaa !16
  br label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.hp = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_8) #3 ; 2 uses
  %i.hq = icmp sgt i32 %i.hp, -1
  br i1 %i.hq, label %bb.cm, label %r_standard_suffix.exit.thread

bb.cj:                                            ; preds = %bb.ch
  %i.hr = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_9) #3 ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, -1
  br i1 %i.hs, label %bb.cm, label %r_standard_suffix.exit.thread

bb.ck:                                            ; preds = %._crit_edge.i47, %.thread46.i
  %i.ht = phi i32 [ %i.hi, %.thread46.i ], [ %.pre.i48, %._crit_edge.i47 ]
  %i.hu = phi i32 [ %i.hh, %.thread46.i ], [ %i.ho, %._crit_edge.i47 ] ; 2 uses
  %.not41.i = icmp slt i32 %i.hu, %i.ht
  br i1 %.not41.i, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.a, align 8, !tbaa !14
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj, %bb.ci, %bb.ch
  %.pre = load i32, ptr %i.a, align 8, !tbaa !14
  br label %bb.ce

bb.cn:                                            ; preds = %bb.cg, %bb.ck
  store i32 %i.hg, ptr %i.a, align 8, !tbaa !14
  br label %r_standard_suffix.exit.thread

r_standard_suffix.exit.thread:                    ; preds = %bb.g, %bb.k, %bb.j, %bb.i, %bb.h, %bb.v, %bb.s, %bb.ci, %bb.cj, %bb.be, %bb.bt, %bb.bw, %bb.bo, %bb.bq, %bb.ai, %bb.aj, %bb.am, %r_e_ending.exit.i, %bb.ar, %bb.bj, %bb.av, %bb.cd, %bb.cn, %.split.i, %r_standard_suffix.exit
  %.440 = phi i32 [ %.34.i, %r_standard_suffix.exit ], [ %i.eg, %bb.av ], [ %i.cv, %bb.aj ], [ %i.cz, %bb.am ], [ %i.dv, %r_e_ending.exit.i ], [ %i.dr, %bb.ar ], [ %i.hp, %bb.ci ], [ %i.fm, %bb.bj ], [ %i.al, %.split.i ], [ %i.bf, %bb.v ], [ 1, %bb.cn ], [ %i.hd, %bb.cd ], [ %i.fa, %bb.be ], [ %i.gd, %bb.bt ], [ %i.gh, %bb.bw ], [ %i.fx, %bb.bo ], [ %i.fz, %bb.bq ], [ %i.ct, %bb.ai ], [ %i.hr, %bb.cj ], [ %i.aw, %bb.s ], [ %i.t, %bb.h ], [ %i.v, %bb.i ], [ %i.r, %bb.g ], [ %i.x, %bb.j ], [ %i.z, %bb.k ]
  ret i32 %.440
}

; Function Attrs: nounwind uwtable
define ptr @dutch_ISO_8859_1_create_env() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SN_create_env(i32 noundef 0, i32 noundef 3) #3
  ret ptr %i.a
}

declare ptr @SN_create_env(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dutch_ISO_8859_1_close_env(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SN_close_env(ptr noundef %0, i32 noundef 0) #3
  ret void
}

declare void @SN_close_env(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @find_among(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slice_from_s(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @in_grouping(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @out_grouping(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @find_among_b(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_en_ending(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val34 = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr i8, ptr %.val34, i64 4
  %.val34.val = load i32, ptr %i.c, align 4, !tbaa !21
  %.not.i.not = icmp sgt i32 %.val34.val, %.val
  br i1 %.not.i.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %i.f = tail call i32 @out_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #3
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.neg = sub i32 %.val, %i.e                     ; 2 uses
  %i.g = load i32, ptr %i.d, align 4, !tbaa !16
  %i.h = add i32 %i.g, %.neg
  store i32 %i.h, ptr %i.a, align 8, !tbaa !14
  %i.i = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_10) #3
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.d, align 4, !tbaa !16
  %i.k = add i32 %i.j, %.neg
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  %i.l = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.d, align 4, !tbaa !16
  %i.o = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.neg.i = sub i32 %i.o, %i.n
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !22
  %.not.i35 = icmp sgt i32 %i.p, %i.r
  br i1 %.not.i35, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !17
  %i.t = sext i32 %i.p to i64
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %.mask.i = and i32 %i.w, 224
  %.not29.i = icmp eq i32 %.mask.i, 96
  br i1 %.not29.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.x = and i32 %i.w, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = and i32 %i.y, 1050640
  %.not30.i = icmp eq i32 %i.z, 0
  br i1 %.not30.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_2, i32 noundef 3) #3
  %.not31.i = icmp eq i32 %i.aa, 0
  br i1 %.not31.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.d, align 4, !tbaa !16
  %i.ac = add i32 %i.ab, %.neg.i                  ; 4 uses
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !19
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !22
  %.not32.i = icmp sgt i32 %i.ac, %i.ae
  br i1 %.not32.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.af = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.af, ptr %i.a, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !15
  %i.ah = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  %..i36 = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 0)
  %spec.select.i = select i1 %i.ai, i32 1, i32 %..i36
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.d, %bb.a
  %.5 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.l, %bb.d ], [ 0, %bb.b ], [ %spec.select.i, %bb.j ], [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.h ]
  ret i32 %.5
}

declare i32 @out_grouping_b(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slice_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_e_ending(ptr noundef initializes((24, 28)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.e, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !22
  %.not = icmp sgt i32 %i.e, %i.h
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !17
  %i.j = sext i32 %i.e to i64
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !18
  %.not37 = icmp eq i8 %i.m, 101
  br i1 %.not37, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i32 %i.e, -1                     ; 3 uses
  store i32 %i.n, ptr %i.d, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.n, ptr %i.o, align 4, !tbaa !15
  %i.p = getelementptr i8, ptr %i.b, i64 4
  %.val40.val = load i32, ptr %i.p, align 4, !tbaa !21
  %.not.i = icmp slt i32 %.val40.val, %i.e
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = tail call i32 @out_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #3
  %.not39.not = icmp eq i32 %i.s, 0
  br i1 %.not39.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.neg = sub i32 %i.n, %i.r
  %i.t = load i32, ptr %i.q, align 4, !tbaa !16
  %i.u = add i32 %.neg, %i.t
  store i32 %i.u, ptr %i.d, align 8, !tbaa !14
  %i.v = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 1, ptr %i.y, align 4, !tbaa !21
  %i.z = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c, %bb.a, %bb.b
  %.4 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ %i.z, %bb.f ], [ %i.v, %bb.e ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.4
}

declare i32 @eq_s_b(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_undouble(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_0
