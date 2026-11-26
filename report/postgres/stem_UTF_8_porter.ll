Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/stem_UTF_8_porter?download=true
inline.NumInlined: 13
inline.NumDeleted: 7
begin_hunk_0_@porter_UTF_8_stem:bb.a
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1
  %.not30.i = icmp eq i8 %i.be, 115
  br i1 %.not30.i, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bf = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_0, i32 noundef 4, ptr noundef null) #2 ; 2 uses
  %.not31.i = icmp eq i32 %i.bf, 0
  br i1 %.not31.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = load i32, ptr %i.a, align 8
  store i32 %i.bg, ptr %i.c, align 4
  switch i32 %i.bf, label %bb.x [
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.bh = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_0) #2 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, -1
  br i1 %i.bi, label %bb.x, label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.bj = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_1) #2 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, -1
  br i1 %i.bk, label %bb.x, label %.critedge

bb.w:                                             ; preds = %bb.t
  %i.bl = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, -1
  br i1 %i.bm, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.q, %bb.r, %bb.s
  %i.bn = load i32, ptr %i.d, align 4             ; 3 uses
  store i32 %i.bn, ptr %i.a, align 8
  store i32 %i.bn, ptr %i.p, align 8
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  %i.bp = load i32, ptr %i.ay, align 8
  %.not.i299 = icmp sgt i32 %i.bo, %i.bp
  br i1 %.not.i299, label %bb.y, label %bb.an

bb.y:                                             ; preds = %bb.x
  %i.bq = load ptr, ptr %0, align 8
  %i.br = sext i32 %i.bo to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  switch i8 %i.bt, label %bb.an [
    i8 100, label %bb.z
    i8 103, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.bu = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_2, i32 noundef 3, ptr noundef null) #2 ; 2 uses
  %.not130.i = icmp eq i32 %i.bu, 0
  br i1 %.not130.i, label %bb.an, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = load i32, ptr %i.a, align 8             ; 3 uses
  store i32 %i.bv, ptr %i.c, align 4
  switch i32 %i.bu, label %bb.an [
    i32 1, label %bb.ab
    i32 2, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %.val143.i = load i32, ptr %i.ag, align 4
  %.not148.i = icmp sgt i32 %.val143.i, %i.bv
  br i1 %.not148.i, label %bb.an, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_2) #2 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, -1
  br i1 %i.bx, label %bb.an, label %.critedge

bb.ad:                                            ; preds = %bb.aa
  %i.by = load i32, ptr %i.d, align 4
  %i.bz = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 121, i32 noundef 1) #2
  %i.ca = icmp sgt i32 %i.bz, -1
  br i1 %i.ca, label %.critedge.i, label %bb.an

.critedge.i:                                      ; preds = %bb.ad
  %.neg.i = sub i32 %i.bv, %i.by
  %i.cb = load i32, ptr %i.d, align 4
  %i.cc = add i32 %.neg.i, %i.cb
  store i32 %i.cc, ptr %i.a, align 8
  %i.cd = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, -1
  br i1 %i.ce, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %.critedge.i
  %i.cf = load i32, ptr %i.d, align 4
  %i.cg = load i32, ptr %i.a, align 8             ; 5 uses
  %.neg134.i = sub i32 %i.cg, %i.cf               ; 2 uses
  %i.ch = add i32 %i.cg, -1                       ; 2 uses
  %i.ci = load i32, ptr %i.ay, align 8
  %.not131.i = icmp sgt i32 %i.ch, %i.ci
  br i1 %.not131.i, label %bb.af, label %.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.cj = load ptr, ptr %0, align 8
  %i.ck = sext i32 %i.ch to i64
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %.mask.i = and i32 %i.cn, 224
  %.not132.i = icmp eq i32 %.mask.i, 96
  br i1 %.not132.i, label %bb.ag, label %.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.co = and i32 %i.cn, 31
  %i.cp = shl nuw i32 1, %i.co
  %i.cq = and i32 %i.cp, 68514004
  %.not133.i = icmp eq i32 %i.cq, 0
  br i1 %.not133.i, label %.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cr = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 13, ptr noundef null) #2
  %i.cs = load i32, ptr %i.d, align 4
  %i.ct = add i32 %i.cs, %.neg134.i               ; 7 uses
  store i32 %i.ct, ptr %i.a, align 8
  switch i32 %i.cr, label %bb.an [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %.thread.i
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cu = tail call i32 @insert_s(ptr noundef nonnull %0, i32 noundef %i.ct, i32 noundef %i.ct, i32 noundef 1, ptr noundef nonnull @s_3) #2 ; 2 uses
  store i32 %i.ct, ptr %i.a, align 8
  %i.cv = icmp sgt i32 %i.cu, -1
  br i1 %i.cv, label %bb.an, label %.critedge

bb.aj:                                            ; preds = %bb.ah
  store i32 %i.ct, ptr %i.p, align 8
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = load i32, ptr %i.ay, align 8
  %i.cy = tail call i32 @skip_b_utf8(ptr noundef %i.cw, i32 noundef %i.ct, i32 noundef %i.cx, i32 noundef 1) #2 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, -1
  br i1 %i.cz, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.cy, ptr %i.a, align 8
  store i32 %i.cy, ptr %i.c, align 4
  %i.da = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.db = icmp sgt i32 %i.da, -1
  br i1 %i.db, label %bb.an, label %.critedge

.thread.i:                                        ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.dc = phi i32 [ %i.ct, %bb.ah ], [ %i.cg, %bb.ag ], [ %i.cg, %bb.af ], [ %i.cg, %bb.ae ]
  %i.dd = load i32, ptr %i.ag, align 4
  %.not135.i = icmp eq i32 %i.dc, %i.dd
  br i1 %.not135.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.thread.i
  %i.de = tail call fastcc i32 @r_shortv(ptr noundef nonnull %0)
  %.not136.not.not.not.i = icmp eq i32 %i.de, 0
  br i1 %.not136.not.not.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.df = load i32, ptr %i.d, align 4
  %i.dg = add i32 %i.df, %.neg134.i               ; 4 uses
  store i32 %i.dg, ptr %i.a, align 8
  %i.dh = tail call i32 @insert_s(ptr noundef nonnull %0, i32 noundef %i.dg, i32 noundef %i.dg, i32 noundef 1, ptr noundef nonnull @s_4) #2 ; 2 uses
  store i32 %i.dg, ptr %i.a, align 8
  %i.di = icmp sgt i32 %i.dh, -1
  br i1 %i.di, label %bb.an, label %.critedge

bb.an:                                            ; preds = %bb.aa, %bb.ac, %bb.ah, %bb.ai, %bb.ak, %bb.am, %bb.x, %bb.ab, %bb.z, %bb.ad, %bb.al, %.thread.i, %bb.y, %bb.aj
  %i.dj = load i32, ptr %i.d, align 4             ; 4 uses
  store i32 %i.dj, ptr %i.a, align 8
  store i32 %i.dj, ptr %i.p, align 8
  %i.dk = load i32, ptr %i.ay, align 8
  %.not.i300 = icmp sgt i32 %i.dj, %i.dk
  br i1 %.not.i300, label %bb.ao, label %r_Step_1c.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.dl = load ptr, ptr %0, align 8
  %i.dm = add nsw i32 %i.dj, -1                   ; 3 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  switch i8 %i.dp, label %r_Step_1c.exit.thread [
    i8 121, label %bb.ap
    i8 89, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  store i32 %i.dm, ptr %i.a, align 8
  store i32 %i.dm, ptr %i.c, align 4
  %i.dq = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 121, i32 noundef 1) #2 ; 2 uses
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %r_Step_1c.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = load i32, ptr %i.a, align 8
  %i.dt = sub i32 %i.ds, %i.dq
  store i32 %i.dt, ptr %i.a, align 8
  %i.du = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_5) #2 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, -1
  br i1 %i.dv, label %r_Step_1c.exit.thread, label %.critedge

r_Step_1c.exit.thread:                            ; preds = %bb.aq, %bb.an, %bb.ao, %bb.ap
  %i.dw = load i32, ptr %i.d, align 4             ; 4 uses
  store i32 %i.dw, ptr %i.a, align 8
  store i32 %i.dw, ptr %i.p, align 8
  %i.dx = add i32 %i.dw, -2
  %i.dy = load i32, ptr %i.ay, align 8
  %.not.i302 = icmp sgt i32 %i.dx, %i.dy
  br i1 %.not.i302, label %bb.ar, label %bb.bj

bb.ar:                                            ; preds = %r_Step_1c.exit.thread
  %i.dz = load ptr, ptr %0, align 8
  %i.ea = add i32 %i.dw, -1
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.dz, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i32                    ; 2 uses
  %.mask.i303 = and i32 %i.ee, 224
  %.not110.i = icmp eq i32 %.mask.i303, 96
  br i1 %.not110.i, label %bb.as, label %bb.bj

bb.as:                                            ; preds = %bb.ar
  %i.ef = and i32 %i.ee, 31
  %i.eg = shl nuw i32 1, %i.ef
  %i.eh = and i32 %i.eg, 815616
  %.not111.i = icmp eq i32 %i.eh, 0
  br i1 %.not111.i, label %bb.bj, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ei = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_3, i32 noundef 20, ptr noundef null) #2 ; 2 uses
  %.not112.i = icmp eq i32 %i.ei, 0
  br i1 %.not112.i, label %bb.bj, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ej = load i32, ptr %i.a, align 8             ; 2 uses
  store i32 %i.ej, ptr %i.c, align 4
  %.val126.i = load i32, ptr %i.ag, align 4
  %.not127.i = icmp sgt i32 %.val126.i, %i.ej
  br i1 %.not127.i, label %bb.bj, label %bb.av

bb.av:                                            ; preds = %bb.au
  switch i32 %i.ei, label %bb.bj [
    i32 1, label %bb.aw
    i32 2, label %bb.ax
    i32 3, label %bb.ay
    i32 4, label %bb.az
    i32 5, label %bb.ba
    i32 6, label %bb.bb
    i32 7, label %bb.bc
    i32 8, label %bb.bd
    i32 9, label %bb.be
    i32 10, label %bb.bf
    i32 11, label %bb.bg
    i32 12, label %bb.bh
    i32 13, label %bb.bi
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ek = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_6) #2 ; 2 uses
  %i.el = icmp sgt i32 %i.ek, -1
  br i1 %i.el, label %bb.bj, label %.critedge

bb.ax:                                            ; preds = %bb.av
  %i.em = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_7) #2 ; 2 uses
  %i.en = icmp sgt i32 %i.em, -1
  br i1 %i.en, label %bb.bj, label %.critedge

bb.ay:                                            ; preds = %bb.av
  %i.eo = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_8) #2 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, -1
  br i1 %i.ep, label %bb.bj, label %.critedge

bb.az:                                            ; preds = %bb.av
  %i.eq = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_9) #2 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, -1
  br i1 %i.er, label %bb.bj, label %.critedge

bb.ba:                                            ; preds = %bb.av
  %i.es = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_10) #2 ; 2 uses
  %i.et = icmp sgt i32 %i.es, -1
  br i1 %i.et, label %bb.bj, label %.critedge

bb.bb:                                            ; preds = %bb.av
  %i.eu = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_11) #2 ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, -1
  br i1 %i.ev, label %bb.bj, label %.critedge

bb.bc:                                            ; preds = %bb.av
  %i.ew = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_12) #2 ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, -1
  br i1 %i.ex, label %bb.bj, label %.critedge

bb.bd:                                            ; preds = %bb.av
  %i.ey = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_13) #2 ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, -1
  br i1 %i.ez, label %bb.bj, label %.critedge

bb.be:                                            ; preds = %bb.av
  %i.fa = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_14) #2 ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, -1
  br i1 %i.fb, label %bb.bj, label %.critedge

bb.bf:                                            ; preds = %bb.av
  %i.fc = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_15) #2 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, -1
  br i1 %i.fd, label %bb.bj, label %.critedge

bb.bg:                                            ; preds = %bb.av
  %i.fe = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_16) #2 ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, -1
  br i1 %i.ff, label %bb.bj, label %.critedge

bb.bh:                                            ; preds = %bb.av
  %i.fg = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_17) #2 ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, -1
  br i1 %i.fh, label %bb.bj, label %.critedge

bb.bi:                                            ; preds = %bb.av
  %i.fi = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_18) #2 ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, -1
  br i1 %i.fj, label %bb.bj, label %.critedge

bb.bj:                                            ; preds = %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.au, %bb.at, %bb.as, %bb.ar, %r_Step_1c.exit.thread
  %i.fk = load i32, ptr %i.d, align 4             ; 4 uses
  store i32 %i.fk, ptr %i.a, align 8
  store i32 %i.fk, ptr %i.p, align 8
  %i.fl = add i32 %i.fk, -2
  %i.fm = load i32, ptr %i.ay, align 8
  %.not.i304 = icmp sgt i32 %i.fl, %i.fm
  br i1 %.not.i304, label %bb.bk, label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  %i.fn = load ptr, ptr %0, align 8
  %i.fo = add i32 %i.fk, -1
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fn, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = zext i8 %i.fr to i32                    ; 2 uses
  %.mask.i305 = and i32 %i.fs, 224
  %.not40.i = icmp eq i32 %.mask.i305, 96
  br i1 %.not40.i, label %bb.bl, label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  %i.ft = and i32 %i.fs, 31
  %i.fu = shl nuw i32 1, %i.ft
  %i.fv = and i32 %i.fu, 528928
  %.not41.i = icmp eq i32 %i.fv, 0
  br i1 %.not41.i, label %bb.bs, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fw = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_4, i32 noundef 7, ptr noundef null) #2 ; 2 uses
  %.not42.i = icmp eq i32 %i.fw, 0
  br i1 %.not42.i, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fx = load i32, ptr %i.a, align 8             ; 2 uses
  store i32 %i.fx, ptr %i.c, align 4
  %.val46.i = load i32, ptr %i.ag, align 4
  %.not47.i = icmp sgt i32 %.val46.i, %i.fx
  br i1 %.not47.i, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  switch i32 %i.fw, label %bb.bs [
    i32 1, label %bb.bp
    i32 2, label %bb.bq
    i32 3, label %bb.br
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.fy = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_19) #2 ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, -1
  br i1 %i.fz, label %bb.bs, label %.critedge

bb.bq:                                            ; preds = %bb.bo
  %i.ga = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_20) #2 ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, -1
  br i1 %i.gb, label %bb.bs, label %.critedge

bb.br:                                            ; preds = %bb.bo
  %i.gc = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, -1
  br i1 %i.gd, label %bb.bs, label %.critedge

bb.bs:                                            ; preds = %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bj, %bb.bn, %bb.bl, %bb.bk, %bb.bm
  %i.ge = load i32, ptr %i.d, align 4
  store i32 %i.ge, ptr %i.a, align 8
  %i.gf = tail call fastcc i32 @r_Step_4(ptr noundef nonnull %0) ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, -1
  br i1 %i.gg, label %bb.bt, label %.critedge

bb.bt:                                            ; preds = %bb.bs
  %i.gh = load i32, ptr %i.d, align 4
  store i32 %i.gh, ptr %i.a, align 8
  %i.gi = tail call fastcc i32 @r_Step_5a(ptr noundef nonnull %0) ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, -1
  br i1 %i.gj, label %bb.bu, label %.critedge

bb.bu:                                            ; preds = %bb.bt
  %i.gk = load i32, ptr %i.d, align 4
  store i32 %i.gk, ptr %i.a, align 8
  %i.gl = tail call fastcc i32 @r_Step_5b(ptr noundef nonnull %0) ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, -1
  br i1 %i.gm, label %bb.bv, label %.critedge

bb.bv:                                            ; preds = %bb.bu
  %i.gn = load i32, ptr %i.ay, align 8            ; 2 uses
  store i32 %i.gn, ptr %i.a, align 8
  br i1 %.2231, label %.thread365, label %.preheader

.preheader:                                       ; preds = %bb.bv, %bb.ca
  %i.go = load i32, ptr %i.a, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bz, %.preheader
  %i.gp = phi i32 [ %i.gv, %bb.bz ], [ %i.go, %.preheader ] ; 6 uses
  store i32 %i.gp, ptr %i.c, align 4
  %i.gq = load i32, ptr %i.d, align 4             ; 2 uses
  %i.gr = icmp eq i32 %i.gp, %i.gq
  %.pre395 = load ptr, ptr %0, align 8            ; 2 uses
  br i1 %i.gr, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gs = sext i32 %i.gp to i64
  %i.gt = getelementptr inbounds i8, ptr %.pre395, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1
  %.not281 = icmp eq i8 %i.gu, 89
  br i1 %.not281, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.gv = tail call i32 @skip_utf8(ptr noundef %.pre395, i32 noundef %i.gp, i32 noundef %i.gq, i32 noundef 1) #2 ; 3 uses
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %.thread365, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 %i.gv, ptr %i.a, align 8
  br label %bb.bw

bb.ca:                                            ; preds = %bb.bx
  %i.gx = add i32 %i.gp, 1
  store i32 %i.gx, ptr %i.p, align 8
  store i32 %i.gp, ptr %i.a, align 8
  %i.gy = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_23) #2 ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, -1
  br i1 %i.gz, label %.preheader, label %.critedge

.thread365:                                       ; preds = %bb.by, %bb.bv
  store i32 %i.gn, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.ca, %bb.br, %bb.bq, %bb.bp, %bb.aq, %bb.am, %bb.ak, %bb.ai, %.critedge.i, %bb.ac, %bb.w, %bb.v, %bb.u, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %.thread365, %bb.c, %bb.bu, %bb.bt, %bb.bs
  %.19252 = phi i32 [ %i.gi, %bb.bt ], [ %i.m, %bb.c ], [ %i.gy, %bb.ca ], [ %i.ek, %bb.aw ], [ %i.bh, %bb.u ], [ %i.cu, %bb.ai ], [ %i.fy, %bb.bp ], [ %i.du, %bb.aq ], [ %i.gf, %bb.bs ], [ %i.gl, %bb.bu ], [ 1, %.thread365 ], [ %i.fi, %bb.bi ], [ %i.fg, %bb.bh ], [ %i.fe, %bb.bg ], [ %i.fc, %bb.bf ], [ %i.fa, %bb.be ], [ %i.ey, %bb.bd ], [ %i.ew, %bb.bc ], [ %i.eu, %bb.bb ], [ %i.es, %bb.ba ], [ %i.eq, %bb.az ], [ %i.eo, %bb.ay ], [ %i.em, %bb.ax ], [ %i.bj, %bb.v ], [ %i.bl, %bb.w ], [ %i.da, %bb.ak ], [ %i.dh, %bb.am ], [ %i.bw, %bb.ac ], [ %i.cd, %.critedge.i ], [ %i.ga, %bb.bq ], [ %i.gc, %bb.br ], [ %i.ad, %bb.k ]
  ret i32 %.19252
}

declare i32 @slice_from_s(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @in_grouping_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @skip_utf8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @out_grouping_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_Step_4(ptr noundef initializes((24, 28)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8
  %i.d = add i32 %i.b, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.b, label %.thread62

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %.mask = and i32 %i.k, 224
  %.not53 = icmp eq i32 %.mask, 96
  br i1 %.not53, label %bb.c, label %.thread62

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.k, 31
  %i.m = shl nuw i32 1, %i.l
  %i.n = and i32 %i.m, 3961384
  %.not54 = icmp eq i32 %i.n, 0
  br i1 %.not54, label %.thread62, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_5, i32 noundef 19, ptr noundef null) #2 ; 2 uses
  %.not55 = icmp eq i32 %i.o, 0
  br i1 %.not55, label %.thread62, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.a, align 8              ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.p, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %0, i64 32
  %.val61 = load i32, ptr %i.r, align 8
  %.not65 = icmp sgt i32 %.val61, %i.p
  br i1 %.not65, label %.thread62, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.o, label %bb.k [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.k, label %.thread62

bb.h:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.e, align 8
  %.not57 = icmp sgt i32 %i.p, %i.u
  br i1 %.not57, label %bb.i, label %.thread62

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %0, align 8
  %i.w = add nsw i32 %i.p, -1                     ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %.off = add i8 %i.z, -115
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.j, label %.thread62

bb.j:                                             ; preds = %bb.i
  store i32 %i.w, ptr %i.a, align 8
  %i.aa = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.k, label %.thread62

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.f
  br label %.thread62

.thread62:                                        ; preds = %bb.i, %bb.h, %bb.d, %bb.a, %bb.b, %bb.c, %bb.g, %bb.j, %bb.e, %bb.k
  %.4 = phi i32 [ 0, %bb.a ], [ 1, %bb.k ], [ %i.s, %bb.g ], [ 0, %bb.d ], [ %i.aa, %bb.j ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_Step_5a(ptr noundef initializes((24, 28)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp sgt i32 %i.b, %i.e
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = add nsw i32 %i.b, -1                     ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %.not43 = icmp eq i8 %i.j, 101
  br i1 %.not43, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.g, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %0, i64 32
  %.val47 = load i32, ptr %i.l, align 8
  %.not51 = icmp slt i32 %.val47, %i.b
  br i1 %.not51, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 36
  %.val45 = load i32, ptr %i.m, align 4
  %.not52 = icmp slt i32 %.val45, %i.b
  br i1 %.not52, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %.neg = sub i32 %i.g, %i.o
  %i.p = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v_WXY, i32 noundef 89, i32 noundef 121, i32 noundef 0) #2
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 @in_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 121, i32 noundef 0) #2
  %.not3.i = icmp eq i32 %i.q, 0
  br i1 %.not3.i, label %r_shortv.exit, label %.thread

r_shortv.exit:                                    ; preds = %bb.f
  %i.r = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 121, i32 noundef 0) #2
  %.not4.i.not = icmp eq i32 %i.r, 0
  br i1 %.not4.i.not, label %bb.h, label %.thread

.thread:                                          ; preds = %r_shortv.exit, %bb.e, %bb.f
  %i.s = load i32, ptr %i.n, align 4
  %i.t = add i32 %.neg, %i.s
  store i32 %i.t, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.c
  %i.u = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  %spec.select = select i1 %i.v, i32 1, i32 %i.u
  br label %bb.h

bb.h:                                             ; preds = %r_shortv.exit, %bb.g, %bb.d, %bb.a, %bb.b
  %.6 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ %spec.select, %bb.g ], [ 0, %r_shortv.exit ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_Step_5b(ptr noundef initializes((24, 28)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not = icmp sgt i32 %i.b, %i.e
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = add nsw i32 %i.b, -1                     ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %.not27 = icmp eq i8 %i.j, 108
  br i1 %.not27, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.g, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %0, i64 32
  %.val31 = load i32, ptr %i.l, align 8
  %i.m = icmp slt i32 %.val31, %i.b
  %.not29 = icmp sgt i32 %i.g, %i.e
  %or.cond = and i1 %i.m, %.not29
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.b, -2                     ; 2 uses
end_hunk_0
