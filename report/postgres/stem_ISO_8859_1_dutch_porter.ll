Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/stem_ISO_8859_1_dutch_porter?download=true
inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@dutch_porter_ISO_8859_1_stem:bb.a
  %i.bo = tail call i32 @in_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 1) #4 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.w, label %r_mark_regions.exit

bb.w:                                             ; preds = %bb.v
  %i.bq = load i32, ptr %i.a, align 8
  %i.br = add i32 %i.bq, %i.bo                    ; 2 uses
  store i32 %i.br, ptr %i.a, align 8
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.br, i32 %i.bj)
  store i32 %spec.select.i, ptr %i.bh, align 4
  %i.bs = tail call i32 @out_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 1) #4 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  br i1 %i.bt, label %bb.x, label %r_mark_regions.exit

bb.x:                                             ; preds = %bb.w
  %i.bu = load i32, ptr %i.a, align 8
  %i.bv = add i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.a, align 8
  %i.bw = tail call i32 @in_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 1) #4 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, -1
  br i1 %i.bx, label %bb.y, label %r_mark_regions.exit

bb.y:                                             ; preds = %bb.x
  %i.by = load i32, ptr %i.a, align 8
  %i.bz = add i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bi, align 8
  br label %r_mark_regions.exit

r_mark_regions.exit:                              ; preds = %.loopexit, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store i32 %i.b, ptr %i.ca, align 8
  %i.cb = load i32, ptr %i.d, align 4             ; 4 uses
  store i32 %i.cb, ptr %i.a, align 8
  store i32 %i.cb, ptr %i.e, align 8
  %.not.i45 = icmp sgt i32 %i.cb, %i.b
  br i1 %.not.i45, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %r_mark_regions.exit
  %i.cc = load ptr, ptr %0, align 8
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -1
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %.mask.i47 = and i32 %i.ch, 224
  %.not326.i = icmp eq i32 %.mask.i47, 96
  br i1 %.not326.i, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.ci = and i32 %i.ch, 31
  %i.cj = shl nuw i32 1, %i.ci
  %i.ck = and i32 %i.cj, 540704
  %.not327.i = icmp eq i32 %i.ck, 0
  br i1 %.not327.i, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_3, i32 noundef 5, ptr noundef null) #4 ; 2 uses
  %.not328.i = icmp eq i32 %i.cl, 0
  br i1 %.not328.i, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = load i32, ptr %i.a, align 8             ; 3 uses
  store i32 %i.cm, ptr %i.c, align 4
  switch i32 %i.cl, label %bb.aj [
    i32 1, label %bb.ad
    i32 2, label %bb.af
    i32 3, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  %.val379.i = load i32, ptr %i.bh, align 4
  %.not443.i = icmp sgt i32 %.val379.i, %i.cm
  br i1 %.not443.i, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cn = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_11) #4 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %bb.aj, label %r_standard_suffix.exit.thread

bb.af:                                            ; preds = %bb.ac
  %i.cp = tail call fastcc i32 @r_en_ending(ptr noundef nonnull %0) ; 3 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %r_standard_suffix.exit.thread, label %bb.aj

bb.ag:                                            ; preds = %bb.ac
  %.val377.i = load i32, ptr %i.bh, align 4
  %.not487.i = icmp sgt i32 %.val377.i, %i.cm
  br i1 %.not487.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cr = tail call i32 @out_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_v_j, i32 noundef 97, i32 noundef 232, i32 noundef 0) #4
  %.not329.i = icmp eq i32 %i.cr, 0
  br i1 %.not329.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cs = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  br i1 %i.ct, label %bb.aj, label %r_standard_suffix.exit.thread

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %r_mark_regions.exit
  %.5264.i = phi i32 [ undef, %r_mark_regions.exit ], [ undef, %bb.z ], [ undef, %bb.ac ], [ 1, %bb.ae ], [ 0, %bb.ad ], [ undef, %bb.aa ], [ %i.cp, %bb.af ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 0, %bb.ag ], [ undef, %bb.ab ] ; 5 uses
  %i.cu = load i32, ptr %i.d, align 4             ; 8 uses
  store i32 %i.cu, ptr %i.a, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i8 0, ptr %i.cv, align 8
  store i32 %i.cu, ptr %i.e, align 8
  %i.cw = load i32, ptr %i.ca, align 8
  %.not.i.i = icmp sgt i32 %i.cu, %i.cw
  br i1 %.not.i.i, label %bb.ak, label %r_e_ending.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.cx = load ptr, ptr %0, align 8
  %i.cy = add nsw i32 %i.cu, -1                   ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1
  %.not32.i.i = icmp eq i8 %i.db, 101
  br i1 %.not32.i.i, label %bb.al, label %r_e_ending.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  store i32 %i.cy, ptr %i.a, align 8
  store i32 %i.cy, ptr %i.c, align 4
  %.val35.i.i = load i32, ptr %i.bh, align 4
  %i.dc = icmp slt i32 %.val35.i.i, %i.cu
  br i1 %i.dc, label %bb.am, label %r_e_ending.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.dd = tail call i32 @out_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #4
  %.not34.not.i.i = icmp eq i32 %i.dd, 0
  %.pre461.i = load i32, ptr %i.d, align 4        ; 2 uses
  br i1 %.not34.not.i.i, label %bb.an, label %r_e_ending.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.de = add i32 %.pre461.i, -1
  store i32 %i.de, ptr %i.a, align 8
  %i.df = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, -1
  br i1 %i.dg, label %r_e_ending.exit.i, label %r_standard_suffix.exit.thread

r_e_ending.exit.i:                                ; preds = %bb.an
  store i8 1, ptr %i.cv, align 8
  %i.dh = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0) ; 2 uses
  %i.di = icmp sgt i32 %i.dh, -1
  br i1 %i.di, label %r_e_ending.exit.r_e_ending.exit.thread_crit_edge.i, label %r_standard_suffix.exit.thread

r_e_ending.exit.r_e_ending.exit.thread_crit_edge.i: ; preds = %r_e_ending.exit.i
  %.pre.i46 = load i32, ptr %i.d, align 4
  br label %r_e_ending.exit.thread.i

r_e_ending.exit.thread.i:                         ; preds = %r_e_ending.exit.r_e_ending.exit.thread_crit_edge.i, %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.dj = phi i32 [ %.pre.i46, %r_e_ending.exit.r_e_ending.exit.thread_crit_edge.i ], [ %.pre461.i, %bb.am ], [ %i.cu, %bb.ak ], [ %i.cu, %bb.aj ], [ %i.cu, %bb.al ] ; 2 uses
  store i32 %i.dj, ptr %i.a, align 8
  store i32 %i.dj, ptr %i.e, align 8
  %i.dk = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_12) #4
  %.not331.i = icmp eq i32 %i.dk, 0
  br i1 %.not331.i, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %r_e_ending.exit.thread.i
  %i.dl = load i32, ptr %i.a, align 8             ; 4 uses
  store i32 %i.dl, ptr %i.c, align 4
  %.val393.i = load i32, ptr %i.bi, align 8
  %.not444.i.a = icmp sgt i32 %.val393.i, %i.dl
  br i1 %.not444.i.a, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dm = load i32, ptr %i.ca, align 8
  %.not332.i = icmp sgt i32 %i.dl, %i.dm
  br i1 %.not332.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dn = load ptr, ptr %0, align 8
  %i.do = sext i32 %i.dl to i64
  %i.dp = getelementptr i8, ptr %i.dn, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 -1
  %i.dr = load i8, ptr %i.dq, align 1
  %.not333.i = icmp eq i8 %i.dr, 99
  br i1 %.not333.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ds = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, -1
  br i1 %i.dt, label %bb.as, label %r_standard_suffix.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.du = load i32, ptr %i.a, align 8
  store i32 %i.du, ptr %i.e, align 8
  %i.dv = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_13) #4
  %.not335.i = icmp eq i32 %i.dv, 0
  br i1 %.not335.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = load i32, ptr %i.a, align 8
  store i32 %i.dw, ptr %i.c, align 4
  %i.dx = tail call fastcc i32 @r_en_ending(ptr noundef nonnull %0) ; 3 uses
  %i.dy = icmp slt i32 %i.dx, 0
  %.10269.i = select i1 %i.dy, i32 %i.dx, i32 %.5264.i ; 2 uses
  %.not485.i = icmp sgt i32 %i.dx, -1
  br i1 %.not485.i, label %bb.au, label %r_standard_suffix.exit

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.aq, %bb.ao, %r_e_ending.exit.thread.i
  %.11270.i = phi i32 [ %.5264.i, %r_e_ending.exit.thread.i ], [ %.10269.i, %bb.at ], [ %.5264.i, %bb.as ], [ %.5264.i, %bb.ao ], [ %.5264.i, %bb.aq ] ; 2 uses
  %i.dz = load i32, ptr %i.d, align 4             ; 3 uses
  store i32 %i.dz, ptr %i.a, align 8
  store i32 %i.dz, ptr %i.e, align 8
  %i.ea = add i32 %i.dz, -1                       ; 2 uses
  %i.eb = load i32, ptr %i.ca, align 8
  %.not337.i = icmp sgt i32 %i.ea, %i.eb
  br i1 %.not337.i, label %bb.av, label %.thread430.i

bb.av:                                            ; preds = %bb.au
  %i.ec = load ptr, ptr %0, align 8
  %i.ed = sext i32 %i.ea to i64
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = zext i8 %i.ef to i32                    ; 2 uses
  %.mask339.i = and i32 %i.eg, 224
  %.not338.i = icmp eq i32 %.mask339.i, 96
  br i1 %.not338.i, label %bb.aw, label %.thread430.i

bb.aw:                                            ; preds = %bb.av
  %i.eh = and i32 %i.eg, 31
  %i.ei = shl nuw i32 1, %i.eh
  %i.ej = and i32 %i.ei, 264336
  %.not340.i = icmp eq i32 %i.ej, 0
  br i1 %.not340.i, label %.thread430.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ek = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_4, i32 noundef 6, ptr noundef null) #4 ; 2 uses
  %.not341.i = icmp eq i32 %i.ek, 0
  br i1 %.not341.i, label %.thread430.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.el = load i32, ptr %i.a, align 8             ; 8 uses
  store i32 %i.el, ptr %i.c, align 4
  switch i32 %i.ek, label %.thread430.i [
    i32 1, label %bb.az
    i32 2, label %bb.bh
    i32 3, label %bb.bl
    i32 4, label %bb.bo
    i32 5, label %bb.bq
  ]

bb.az:                                            ; preds = %bb.ay
  %.val391.i = load i32, ptr %i.bi, align 8
  %.not452.i = icmp sgt i32 %.val391.i, %i.el
  br i1 %.not452.i, label %.thread430.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.em = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.en = icmp sgt i32 %i.em, -1
  br i1 %i.en, label %bb.bb, label %r_standard_suffix.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.eo = load i32, ptr %i.d, align 4
  %i.ep = load i32, ptr %i.a, align 8             ; 2 uses
  %.neg352.i = sub i32 %i.ep, %i.eo
  store i32 %i.ep, ptr %i.e, align 8
  %i.eq = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_14) #4
  %.not347.i = icmp eq i32 %i.eq, 0
  br i1 %.not347.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.er = load i32, ptr %i.a, align 8             ; 4 uses
  store i32 %i.er, ptr %i.c, align 4
  %.val389.i = load i32, ptr %i.bi, align 8
  %.not453.i = icmp sgt i32 %.val389.i, %i.er
  br i1 %.not453.i, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.es = load i32, ptr %i.ca, align 8
  %.not348.i = icmp sgt i32 %i.er, %i.es
  br i1 %.not348.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.et = load ptr, ptr %0, align 8
  %i.eu = sext i32 %i.er to i64
  %i.ev = getelementptr i8, ptr %i.et, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 -1
  %i.ex = load i8, ptr %i.ew, align 1
  %.not349.i = icmp eq i8 %i.ex, 101
  br i1 %.not349.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ey = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, -1
  br i1 %i.ez, label %.thread430.i, label %r_standard_suffix.exit.thread

bb.bg:                                            ; preds = %bb.be, %bb.bc, %bb.bb
  %i.fa = load i32, ptr %i.d, align 4
  %i.fb = add i32 %.neg352.i, %i.fa
  store i32 %i.fb, ptr %i.a, align 8
  %i.fc = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0) ; 4 uses
  %1 = icmp eq i32 %i.fc, 0
  br i1 %1, label %.thread430.i, label %2

2:                                                ; preds = %bb.bg
  %3 = icmp slt i32 %i.fc, 0
  %..12272..i = select i1 %3, i32 %i.fc, i32 %.11270.i
  %cond.i = icmp sgt i32 %i.fc, -1
  br i1 %cond.i, label %.thread430.i, label %r_standard_suffix.exit

bb.bh:                                            ; preds = %bb.ay
  %.val387.i = load i32, ptr %i.bi, align 8
  %.not451.i = icmp sgt i32 %.val387.i, %i.el
  br i1 %.not451.i, label %.thread430.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fd = load i32, ptr %i.ca, align 8
  %.not343.i.a = icmp sgt i32 %i.el, %i.fd
  br i1 %.not343.i.a, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fe = load ptr, ptr %0, align 8
  %i.ff = sext i32 %i.el to i64
  %i.fg = getelementptr i8, ptr %i.fe, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 -1
  %i.fi = load i8, ptr %i.fh, align 1
  %.not344.i = icmp eq i8 %i.fi, 101
  br i1 %.not344.i, label %.thread430.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fj = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, -1
  br i1 %i.fk, label %.thread430.i, label %r_standard_suffix.exit.thread

bb.bl:                                            ; preds = %bb.ay
  %.val385.i = load i32, ptr %i.bi, align 8
  %.not448.i = icmp sgt i32 %.val385.i, %i.el
  br i1 %.not448.i, label %.thread430.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fl = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, -1
  br i1 %i.fm, label %bb.bn, label %r_standard_suffix.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.fn = tail call fastcc i32 @r_e_ending(ptr noundef nonnull %0) ; 3 uses
  %i.fo = icmp slt i32 %i.fn, 0
  %.24283.i = select i1 %i.fo, i32 %i.fn, i32 %.11270.i
  %.not486.i = icmp sgt i32 %i.fn, -1
  br i1 %.not486.i, label %.thread430.i, label %r_standard_suffix.exit

bb.bo:                                            ; preds = %bb.ay
  %.val383.i = load i32, ptr %i.bi, align 8
  %.not447.i = icmp sgt i32 %.val383.i, %i.el
  br i1 %.not447.i, label %.thread430.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fp = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, -1
  br i1 %i.fq, label %.thread430.i, label %r_standard_suffix.exit.thread

bb.bq:                                            ; preds = %bb.ay
  %.val381.i = load i32, ptr %i.bi, align 8
  %.not446.i = icmp sgt i32 %.val381.i, %i.el
  br i1 %.not446.i, label %.thread430.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fr = load i8, ptr %i.cv, align 8
  %.not342.i = icmp eq i8 %i.fr, 0
  br i1 %.not342.i, label %.thread430.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fs = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, -1
  br i1 %i.ft, label %.thread430.i, label %r_standard_suffix.exit.thread

.thread430.i:                                     ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bl, %bb.bk, %bb.bj, %bb.bh, %2, %bb.bg, %bb.bf, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au
  %i.fu = load i32, ptr %i.d, align 4
  store i32 %i.fu, ptr %i.a, align 8
  %i.fv = tail call i32 @out_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_v_I, i32 noundef 73, i32 noundef 232, i32 noundef 0) #4
  %.not354.i = icmp eq i32 %i.fv, 0
  br i1 %.not354.i, label %bb.bt, label %r_standard_suffix.exit.thread59

bb.bt:                                            ; preds = %.thread430.i
  %i.fw = load i32, ptr %i.d, align 4
  %i.fx = load i32, ptr %i.a, align 8             ; 2 uses
  %.neg361.i = sub i32 %i.fx, %i.fw
  %i.fy = add i32 %i.fx, -1                       ; 2 uses
  %i.fz = load i32, ptr %i.ca, align 8
  %.not355.i = icmp sgt i32 %i.fy, %i.fz
  br i1 %.not355.i, label %bb.bu, label %r_standard_suffix.exit.thread59

bb.bu:                                            ; preds = %bb.bt
  %i.ga = load ptr, ptr %0, align 8
  %i.gb = sext i32 %i.fy to i64
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = zext i8 %i.gd to i32                    ; 2 uses
  %.mask357.i = and i32 %i.ge, 224
  %.not356.i = icmp eq i32 %.mask357.i, 96
  br i1 %.not356.i, label %bb.bv, label %r_standard_suffix.exit.thread59

bb.bv:                                            ; preds = %bb.bu
  %i.gf = and i32 %i.ge, 31
  %i.gg = shl nuw i32 1, %i.gf
  %i.gh = and i32 %i.gg, 2129954
  %.not358.i = icmp eq i32 %i.gh, 0
  br i1 %.not358.i, label %r_standard_suffix.exit.thread59, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gi = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_5, i32 noundef 4, ptr noundef null) #4
  %.not359.i = icmp eq i32 %i.gi, 0
  br i1 %.not359.i, label %r_standard_suffix.exit.thread59, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gj = tail call i32 @out_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #4
  %.not360.i = icmp eq i32 %i.gj, 0
  br i1 %.not360.i, label %bb.by, label %r_standard_suffix.exit.thread59

bb.by:                                            ; preds = %bb.bx
  %i.gk = load i32, ptr %i.d, align 4
  %i.gl = add i32 %i.gk, %.neg361.i               ; 4 uses
  store i32 %i.gl, ptr %i.a, align 8
  store i32 %i.gl, ptr %i.e, align 8
  %i.gm = load i32, ptr %i.ca, align 8
  %.not362.i = icmp sgt i32 %i.gl, %i.gm
  br i1 %.not362.i, label %bb.bz, label %r_standard_suffix.exit.thread59

bb.bz:                                            ; preds = %bb.by
  %i.gn = add nsw i32 %i.gl, -1                   ; 2 uses
  store i32 %i.gn, ptr %i.a, align 8
  store i32 %i.gn, ptr %i.c, align 4
  %i.go = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.gp = icmp sgt i32 %i.go, -1
  br i1 %i.gp, label %r_standard_suffix.exit.thread59, label %r_standard_suffix.exit.thread

r_standard_suffix.exit:                           ; preds = %bb.at, %2, %bb.bn
  %.34.i = phi i32 [ %..12272..i, %2 ], [ %.10269.i, %bb.at ], [ %.24283.i, %bb.bn ] ; 2 uses
  %i.gq = icmp sgt i32 %.34.i, -1
  br i1 %i.gq, label %r_standard_suffix.exit.thread59, label %r_standard_suffix.exit.thread

r_standard_suffix.exit.thread59:                  ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %.thread430.i, %r_standard_suffix.exit
  %i.gr = load i32, ptr %i.ca, align 8            ; 3 uses
  store i32 %i.gr, ptr %i.a, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ch, %r_standard_suffix.exit.thread59
  %i.gs = phi i32 [ %.pre, %bb.ch ], [ %i.gr, %r_standard_suffix.exit.thread59 ] ; 5 uses
  store i32 %i.gs, ptr %i.c, align 4
  %i.gt = load i32, ptr %i.d, align 4             ; 2 uses
  %.not.i48 = icmp slt i32 %i.gs, %i.gt
  br i1 %.not.i48, label %bb.cb, label %.thread.i49

bb.cb:                                            ; preds = %bb.ca
  %i.gu = load ptr, ptr %0, align 8
  %i.gv = sext i32 %i.gs to i64
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1
  switch i8 %i.gx, label %.thread.i49 [
    i8 73, label %bb.cc
    i8 89, label %bb.cc
  ]

.thread.i49:                                      ; preds = %bb.cb, %bb.ca
  store i32 %i.gs, ptr %i.e, align 8
  br label %bb.cf

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %i.gy = tail call i32 @find_among(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 3, ptr noundef null) #4
  %i.gz = load i32, ptr %i.a, align 8             ; 2 uses
  store i32 %i.gz, ptr %i.e, align 8
  switch i32 %i.gy, label %bb.ch [
    i32 1, label %bb.cd
    i32 2, label %bb.ce
    i32 3, label %._crit_edge.i51
  ]

._crit_edge.i51:                                  ; preds = %bb.cc
  %.pre.i52 = load i32, ptr %i.d, align 4
  br label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.ha = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_8) #4 ; 2 uses
  %i.hb = icmp sgt i32 %i.ha, -1
  br i1 %i.hb, label %bb.ch, label %r_standard_suffix.exit.thread

bb.ce:                                            ; preds = %bb.cc
  %i.hc = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_9) #4 ; 2 uses
  %i.hd = icmp sgt i32 %i.hc, -1
  br i1 %i.hd, label %bb.ch, label %r_standard_suffix.exit.thread

bb.cf:                                            ; preds = %._crit_edge.i51, %.thread.i49
  %i.he = phi i32 [ %i.gt, %.thread.i49 ], [ %.pre.i52, %._crit_edge.i51 ]
  %i.hf = phi i32 [ %i.gs, %.thread.i49 ], [ %i.gz, %._crit_edge.i51 ] ; 2 uses
  %.not39.i = icmp slt i32 %i.hf, %i.he
  br i1 %.not39.i, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.hg = add nsw i32 %i.hf, 1
  store i32 %i.hg, ptr %i.a, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ce, %bb.cd, %bb.cc
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.ca

bb.ci:                                            ; preds = %bb.cf
  store i32 %i.gr, ptr %i.a, align 8
  br label %r_standard_suffix.exit.thread

r_standard_suffix.exit.thread:                    ; preds = %bb.f, %bb.j, %bb.i, %bb.h, %bb.g, %bb.t, %bb.r, %bb.cd, %bb.ce, %bb.ba, %bb.bp, %bb.bs, %bb.bk, %bb.bm, %bb.ae, %bb.af, %bb.ai, %r_e_ending.exit.i, %bb.an, %bb.bf, %bb.ar, %bb.bz, %bb.ci, %.split.i, %r_standard_suffix.exit
  %.440 = phi i32 [ %.34.i, %r_standard_suffix.exit ], [ %i.ds, %bb.ar ], [ %i.cp, %bb.af ], [ %i.cs, %bb.ai ], [ %i.dh, %r_e_ending.exit.i ], [ %i.df, %bb.an ], [ %i.ha, %bb.cd ], [ %i.ey, %bb.bf ], [ %i.ak, %.split.i ], [ %i.bc, %bb.t ], [ 1, %bb.ci ], [ %i.go, %bb.bz ], [ %i.em, %bb.ba ], [ %i.fp, %bb.bp ], [ %i.fs, %bb.bs ], [ %i.fj, %bb.bk ], [ %i.fl, %bb.bm ], [ %i.cn, %bb.ae ], [ %i.hc, %bb.ce ], [ %i.az, %bb.r ], [ %i.t, %bb.g ], [ %i.v, %bb.h ], [ %i.r, %bb.f ], [ %i.x, %bb.i ], [ %i.z, %bb.j ]
  ret i32 %.440
}

; Function Attrs: nounwind uwtable
define hidden ptr @dutch_porter_ISO_8859_1_create_env() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SN_new_env(i32 noundef 48) #4 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

declare ptr @SN_new_env(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @dutch_porter_ISO_8859_1_close_env(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SN_delete_env(ptr noundef %0) #4
  ret void
}

declare void @SN_delete_env(ptr noundef) local_unnamed_addr #1

declare i32 @find_among(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slice_from_s(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @out_grouping(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @in_grouping(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @find_among_b(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_en_ending(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %.val = load i32, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 36
  %.val29 = load i32, ptr %i.b, align 4
  %.not34 = icmp sgt i32 %.val29, %.val
  br i1 %.not34, label %r_undouble.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call i32 @out_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %r_undouble.exit

bb.c:                                             ; preds = %bb.b
  %.neg = sub i32 %.val, %i.d                     ; 2 uses
  %i.f = load i32, ptr %i.c, align 4
  %i.g = add i32 %i.f, %.neg
  store i32 %i.g, ptr %i.a, align 8
  %i.h = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_10) #4
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %bb.d, label %r_undouble.exit

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.c, align 4
  %i.j = add i32 %i.i, %.neg
  store i32 %i.j, ptr %i.a, align 8
  %i.k = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %r_undouble.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.c, align 4
  %i.n = load i32, ptr %i.a, align 8              ; 2 uses
  %.neg.i = sub i32 %i.n, %i.m
  %i.o = add i32 %i.n, -1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %.not.i = icmp sgt i32 %i.o, %i.q
  br i1 %.not.i, label %bb.f, label %r_undouble.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %0, align 8
  %i.s = sext i32 %i.o to i64
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %.mask.i = and i32 %i.v, 224
  %.not29.i = icmp eq i32 %.mask.i, 96
  br i1 %.not29.i, label %bb.g, label %r_undouble.exit

bb.g:                                             ; preds = %bb.f
  %i.w = and i32 %i.v, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = and i32 %i.x, 1050640
  %.not30.i = icmp eq i32 %i.y, 0
  br i1 %.not30.i, label %r_undouble.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_2, i32 noundef 3, ptr noundef null) #4
  %.not31.i = icmp eq i32 %i.z, 0
  br i1 %.not31.i, label %r_undouble.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.c, align 4
  %i.ab = add i32 %i.aa, %.neg.i                  ; 4 uses
  store i32 %i.ab, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = load i32, ptr %i.p, align 8
  %.not32.i = icmp sgt i32 %i.ab, %i.ad
  br i1 %.not32.i, label %bb.j, label %r_undouble.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 0)
  %spec.select.i = select i1 %i.ah, i32 1, i32 %..i
  br label %r_undouble.exit

r_undouble.exit:                                  ; preds = %bb.c, %bb.b, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ], [ 0, %bb.h ], [ %spec.select.i, %bb.j ], [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.4
}

declare i32 @out_grouping_b(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slice_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_e_ending(ptr noundef initializes((24, 28), (40, 41)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp sgt i32 %i.c, %i.f
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = add nsw i32 %i.c, -1                     ; 4 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %.not32 = icmp eq i8 %i.k, 101
  br i1 %.not32, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  store i32 %i.h, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.h, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %0, i64 36
  %.val35 = load i32, ptr %i.m, align 4
  %i.n = icmp slt i32 %.val35, %i.c
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 @out_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #4
  %.not34.not = icmp eq i32 %i.q, 0
  br i1 %.not34.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.neg = sub i32 %i.h, %i.p
  %i.r = load i32, ptr %i.o, align 4
  %i.s = add i32 %.neg, %i.r
  store i32 %i.s, ptr %i.b, align 8
  %i.t = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.a, align 8
  %i.v = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a, %bb.b, %bb.f
  %.3 = phi i32 [ 0, %bb.c ], [ %i.v, %bb.f ], [ %i.t, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.3
}

declare i32 @eq_s_b(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_undouble(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
end_hunk_0
