Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/stem_UTF_8_dutch_porter?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@dutch_porter_UTF_8_stem:bb.a
  br i1 %.not333.i, label %.thread.i45, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = load i32, ptr %i.a, align 8             ; 5 uses
  store i32 %i.cs, ptr %i.c, align 4
  switch i32 %i.cr, label %.thread.i45 [
    i32 1, label %bb.ab
    i32 2, label %bb.ad
    i32 3, label %bb.ah
  ]

bb.ab:                                            ; preds = %bb.aa
  %.val384.i = load i32, ptr %i.bl, align 4
  %.not474.i = icmp sgt i32 %.val384.i, %i.cs
  br i1 %.not474.i, label %.thread.i45, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_11) #4 ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %.thread.i45, label %r_standard_suffix.exit.thread

bb.ad:                                            ; preds = %bb.aa
  %.val29.i.i = load i32, ptr %i.bl, align 4
  %.not32.i.i = icmp sgt i32 %.val29.i.i, %i.cs
  br i1 %.not32.i.i, label %.thread.i45, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = load i32, ptr %i.d, align 4
  %i.cw = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #4
  %.not.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i, label %bb.af, label %.thread.i45

bb.af:                                            ; preds = %bb.ae
  %.neg.i.i = sub i32 %i.cs, %i.cv                ; 2 uses
  %i.cx = load i32, ptr %i.d, align 4
  %i.cy = add i32 %i.cx, %.neg.i.i
  store i32 %i.cy, ptr %i.a, align 8
  %i.cz = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_10) #4
  %.not28.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not28.i.i, label %bb.ag, label %.thread.i45

bb.ag:                                            ; preds = %bb.af
  %i.da = load i32, ptr %i.d, align 4
  %i.db = add i32 %i.da, %.neg.i.i
  store i32 %i.db, ptr %i.a, align 8
  %i.dc = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, -1
  br i1 %i.dd, label %r_en_ending.exit.i, label %r_standard_suffix.exit.thread

r_en_ending.exit.i:                               ; preds = %bb.ag
  %i.de = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0)
  %.fr.i = freeze i32 %i.de                       ; 3 uses
  %i.df = icmp slt i32 %.fr.i, 0
  br i1 %i.df, label %r_standard_suffix.exit.thread, label %.thread.i45

bb.ah:                                            ; preds = %bb.aa
  %.val382.i = load i32, ptr %i.bl, align 4
  %.not519.i = icmp sgt i32 %.val382.i, %i.cs
  br i1 %.not519.i, label %.thread.i45, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v_j, i32 noundef 97, i32 noundef 232, i32 noundef 0) #4
  %.not334.i = icmp eq i32 %i.dg, 0
  br i1 %.not334.i, label %bb.aj, label %.thread.i45

bb.aj:                                            ; preds = %bb.ai
  %i.dh = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.di = icmp sgt i32 %i.dh, -1
  br i1 %i.di, label %.thread.i45, label %r_standard_suffix.exit.thread

.thread.i45:                                      ; preds = %bb.aj, %bb.ai, %bb.ah, %r_en_ending.exit.i, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %r_mark_regions.exit
  %.5268.i = phi i32 [ undef, %r_mark_regions.exit ], [ undef, %bb.x ], [ undef, %bb.aa ], [ 1, %bb.ac ], [ 0, %bb.ab ], [ undef, %bb.y ], [ undef, %bb.z ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.ad ], [ %.fr.i, %r_en_ending.exit.i ], [ 0, %bb.ae ], [ 0, %bb.af ] ; 8 uses
  %i.dj = load i32, ptr %i.d, align 4             ; 8 uses
  store i32 %i.dj, ptr %i.a, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i8 0, ptr %i.dk, align 8
  store i32 %i.dj, ptr %i.e, align 8
  %i.dl = load i32, ptr %i.cg, align 8
  %.not.i399.i = icmp sgt i32 %i.dj, %i.dl
  br i1 %.not.i399.i, label %bb.ak, label %r_e_ending.exit.thread.i

bb.ak:                                            ; preds = %.thread.i45
  %i.dm = load ptr, ptr %0, align 8
  %i.dn = add nsw i32 %i.dj, -1                   ; 3 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1
  %.not32.i400.i = icmp eq i8 %i.dq, 101
  br i1 %.not32.i400.i, label %bb.al, label %r_e_ending.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  store i32 %i.dn, ptr %i.a, align 8
  store i32 %i.dn, ptr %i.c, align 4
  %.val35.i.i = load i32, ptr %i.bl, align 4
  %i.dr = icmp slt i32 %.val35.i.i, %i.dj
  br i1 %i.dr, label %bb.am, label %r_e_ending.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.ds = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #4
  %.not34.not.i.i = icmp eq i32 %i.ds, 0
  %.pre492.i = load i32, ptr %i.d, align 4        ; 2 uses
  br i1 %.not34.not.i.i, label %bb.an, label %r_e_ending.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.dt = add i32 %.pre492.i, -1
  store i32 %i.dt, ptr %i.a, align 8
  %i.du = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, -1
  br i1 %i.dv, label %r_e_ending.exit.i, label %r_standard_suffix.exit.thread

r_e_ending.exit.i:                                ; preds = %bb.an
  store i8 1, ptr %i.dk, align 8
  %i.dw = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0) ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, -1
  br i1 %i.dx, label %r_e_ending.exit.r_e_ending.exit.thread_crit_edge.i, label %r_standard_suffix.exit.thread

r_e_ending.exit.r_e_ending.exit.thread_crit_edge.i: ; preds = %r_e_ending.exit.i
  %.pre.i47 = load i32, ptr %i.d, align 4
  br label %r_e_ending.exit.thread.i

r_e_ending.exit.thread.i:                         ; preds = %r_e_ending.exit.r_e_ending.exit.thread_crit_edge.i, %bb.am, %bb.al, %bb.ak, %.thread.i45
  %i.dy = phi i32 [ %.pre.i47, %r_e_ending.exit.r_e_ending.exit.thread_crit_edge.i ], [ %.pre492.i, %bb.am ], [ %i.dj, %bb.ak ], [ %i.dj, %.thread.i45 ], [ %i.dj, %bb.al ] ; 2 uses
  store i32 %i.dy, ptr %i.a, align 8
  store i32 %i.dy, ptr %i.e, align 8
  %i.dz = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_12) #4
  %.not336.i = icmp eq i32 %i.dz, 0
  br i1 %.not336.i, label %.thread67, label %bb.ao

bb.ao:                                            ; preds = %r_e_ending.exit.thread.i
  %i.ea = load i32, ptr %i.a, align 8             ; 4 uses
  store i32 %i.ea, ptr %i.c, align 4
  %.val398.i = load i32, ptr %i.bm, align 8
  %.not475.i.a = icmp sgt i32 %.val398.i, %i.ea
  br i1 %.not475.i.a, label %.thread67, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eb = load i32, ptr %i.cg, align 8
  %.not337.i = icmp sgt i32 %i.ea, %i.eb
  br i1 %.not337.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ec = load ptr, ptr %0, align 8
  %i.ed = sext i32 %i.ea to i64
  %i.ee = getelementptr i8, ptr %i.ec, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 -1
  %i.eg = load i8, ptr %i.ef, align 1
  %.not338.i = icmp eq i8 %i.eg, 99
  br i1 %.not338.i, label %.thread67, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.eh = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, -1
  br i1 %i.ei, label %bb.as, label %r_standard_suffix.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.ej = load i32, ptr %i.a, align 8
  store i32 %i.ej, ptr %i.e, align 8
  %i.ek = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_13) #4
  %.not340.i = icmp eq i32 %i.ek, 0
  br i1 %.not340.i, label %.thread67, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.el = load i32, ptr %i.a, align 8             ; 3 uses
  store i32 %i.el, ptr %i.c, align 4
  %.val29.i = load i32, ptr %i.bl, align 4
  %.not32.i = icmp sgt i32 %.val29.i, %i.el
  br i1 %.not32.i, label %.thread67, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.em = load i32, ptr %i.d, align 4
  %i.en = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #4
  %.not.i53 = icmp eq i32 %i.en, 0
  br i1 %.not.i53, label %bb.av, label %.thread67

bb.av:                                            ; preds = %bb.au
  %.neg.i55 = sub i32 %i.el, %i.em                ; 2 uses
  %i.eo = load i32, ptr %i.d, align 4
  %i.ep = add i32 %i.eo, %.neg.i55
  store i32 %i.ep, ptr %i.a, align 8
  %i.eq = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_10) #4
  %.not28.i = icmp eq i32 %i.eq, 0
  br i1 %.not28.i, label %bb.aw, label %.thread67

bb.aw:                                            ; preds = %bb.av
  %i.er = load i32, ptr %i.d, align 4
  %i.es = add i32 %i.er, %.neg.i55
  store i32 %i.es, ptr %i.a, align 8
  %i.et = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.eu = icmp sgt i32 %i.et, -1
  br i1 %i.eu, label %r_en_ending.exit, label %r_standard_suffix.exit.thread

r_en_ending.exit:                                 ; preds = %bb.aw
  %i.ev = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0)
  %.fr = freeze i32 %i.ev                         ; 3 uses
  %i.ew = icmp slt i32 %.fr, 0
  %spec.select = select i1 %i.ew, i32 %.fr, i32 %.5268.i ; 2 uses
  %.not517.i = icmp sgt i32 %.fr, -1
  br i1 %.not517.i, label %.thread67, label %r_standard_suffix.exit

.thread67:                                        ; preds = %bb.at, %bb.au, %bb.av, %r_en_ending.exit, %bb.as, %bb.aq, %bb.ao, %r_e_ending.exit.thread.i
  %.11274.i = phi i32 [ %.5268.i, %r_e_ending.exit.thread.i ], [ %spec.select, %r_en_ending.exit ], [ %.5268.i, %bb.as ], [ %.5268.i, %bb.ao ], [ %.5268.i, %bb.aq ], [ %.5268.i, %bb.av ], [ %.5268.i, %bb.au ], [ %.5268.i, %bb.at ]
  %i.ex = load i32, ptr %i.d, align 4             ; 3 uses
  store i32 %i.ex, ptr %i.a, align 8
  store i32 %i.ex, ptr %i.e, align 8
  %i.ey = add i32 %i.ex, -1                       ; 2 uses
  %i.ez = load i32, ptr %i.cg, align 8
  %.not342.i = icmp sgt i32 %i.ey, %i.ez
  br i1 %.not342.i, label %bb.ax, label %.thread459.i

bb.ax:                                            ; preds = %.thread67
  %i.fa = load ptr, ptr %0, align 8
  %i.fb = sext i32 %i.ey to i64
  %i.fc = getelementptr inbounds i8, ptr %i.fa, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = zext i8 %i.fd to i32                    ; 2 uses
  %.mask344.i = and i32 %i.fe, 224
  %.not343.i = icmp eq i32 %.mask344.i, 96
  br i1 %.not343.i, label %bb.ay, label %.thread459.i

bb.ay:                                            ; preds = %bb.ax
  %i.ff = and i32 %i.fe, 31
  %i.fg = shl nuw i32 1, %i.ff
  %i.fh = and i32 %i.fg, 264336
  %.not345.i = icmp eq i32 %i.fh, 0
  br i1 %.not345.i, label %.thread459.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fi = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_4, i32 noundef 6, ptr noundef null) #4 ; 2 uses
  %.not346.i = icmp eq i32 %i.fi, 0
  br i1 %.not346.i, label %.thread459.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fj = load i32, ptr %i.a, align 8             ; 8 uses
  store i32 %i.fj, ptr %i.c, align 4
  switch i32 %i.fi, label %.thread459.i [
    i32 1, label %bb.bb
    i32 2, label %bb.bj
    i32 3, label %bb.bn
    i32 4, label %bb.bq
    i32 5, label %bb.bs
  ]

bb.bb:                                            ; preds = %bb.ba
  %.val396.i = load i32, ptr %i.bm, align 8
  %.not483.i = icmp sgt i32 %.val396.i, %i.fj
  br i1 %.not483.i, label %.thread459.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fk = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, -1
  br i1 %i.fl, label %bb.bd, label %r_standard_suffix.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.fm = load i32, ptr %i.d, align 4
  %i.fn = load i32, ptr %i.a, align 8             ; 2 uses
  %.neg357.i = sub i32 %i.fn, %i.fm
  store i32 %i.fn, ptr %i.e, align 8
  %i.fo = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_14) #4
  %.not352.i = icmp eq i32 %i.fo, 0
  br i1 %.not352.i, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fp = load i32, ptr %i.a, align 8             ; 4 uses
  store i32 %i.fp, ptr %i.c, align 4
  %.val394.i = load i32, ptr %i.bm, align 8
  %.not484.i = icmp sgt i32 %.val394.i, %i.fp
  br i1 %.not484.i, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fq = load i32, ptr %i.cg, align 8
  %.not353.i = icmp sgt i32 %i.fp, %i.fq
  br i1 %.not353.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fr = load ptr, ptr %0, align 8
  %i.fs = sext i32 %i.fp to i64
  %i.ft = getelementptr i8, ptr %i.fr, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 -1
  %i.fv = load i8, ptr %i.fu, align 1
  %.not354.i = icmp eq i8 %i.fv, 101
  br i1 %.not354.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fw = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, -1
  br i1 %i.fx, label %.thread459.i, label %r_standard_suffix.exit.thread

bb.bi:                                            ; preds = %bb.bg, %bb.be, %bb.bd
  %i.fy = load i32, ptr %i.d, align 4
  %i.fz = add i32 %.neg357.i, %i.fy
  store i32 %i.fz, ptr %i.a, align 8
  %i.ga = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0) ; 2 uses
  %1 = icmp slt i32 %i.ga, 0
  br i1 %1, label %r_standard_suffix.exit.thread, label %.thread459.i

bb.bj:                                            ; preds = %bb.ba
  %.val392.i = load i32, ptr %i.bm, align 8
  %.not482.i = icmp sgt i32 %.val392.i, %i.fj
  br i1 %.not482.i, label %.thread459.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gb = load i32, ptr %i.cg, align 8
  %.not348.i.a = icmp sgt i32 %i.fj, %i.gb
  br i1 %.not348.i.a, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gc = load ptr, ptr %0, align 8
  %i.gd = sext i32 %i.fj to i64
  %i.ge = getelementptr i8, ptr %i.gc, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 -1
  %i.gg = load i8, ptr %i.gf, align 1
  %.not349.i = icmp eq i8 %i.gg, 101
  br i1 %.not349.i, label %.thread459.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gh = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, -1
  br i1 %i.gi, label %.thread459.i, label %r_standard_suffix.exit.thread

bb.bn:                                            ; preds = %bb.ba
  %.val390.i = load i32, ptr %i.bm, align 8
  %.not479.i = icmp sgt i32 %.val390.i, %i.fj
  br i1 %.not479.i, label %.thread459.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gj = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, -1
  br i1 %i.gk, label %bb.bp, label %r_standard_suffix.exit.thread

bb.bp:                                            ; preds = %bb.bo
  %i.gl = tail call fastcc i32 @r_e_ending(ptr noundef nonnull %0) ; 3 uses
  %i.gm = icmp slt i32 %i.gl, 0
  %.24287.i = select i1 %i.gm, i32 %i.gl, i32 %.11274.i
  %.not518.i = icmp sgt i32 %i.gl, -1
  br i1 %.not518.i, label %.thread459.i, label %r_standard_suffix.exit

bb.bq:                                            ; preds = %bb.ba
  %.val388.i = load i32, ptr %i.bm, align 8
  %.not478.i = icmp sgt i32 %.val388.i, %i.fj
  br i1 %.not478.i, label %.thread459.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gn = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.go = icmp sgt i32 %i.gn, -1
  br i1 %i.go, label %.thread459.i, label %r_standard_suffix.exit.thread

bb.bs:                                            ; preds = %bb.ba
  %.val386.i = load i32, ptr %i.bm, align 8
  %.not477.i = icmp sgt i32 %.val386.i, %i.fj
  br i1 %.not477.i, label %.thread459.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gp = load i8, ptr %i.dk, align 8
  %.not347.i = icmp eq i8 %i.gp, 0
  br i1 %.not347.i, label %.thread459.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gq = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, -1
  br i1 %i.gr, label %.thread459.i, label %r_standard_suffix.exit.thread

.thread459.i:                                     ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bn, %bb.bm, %bb.bl, %bb.bj, %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %.thread67
  %i.gs = load i32, ptr %i.d, align 4
  store i32 %i.gs, ptr %i.a, align 8
  %i.gt = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v_I, i32 noundef 73, i32 noundef 232, i32 noundef 0) #4
  %.not359.i = icmp eq i32 %i.gt, 0
  br i1 %.not359.i, label %bb.bv, label %r_standard_suffix.exit.thread75

bb.bv:                                            ; preds = %.thread459.i
  %i.gu = load i32, ptr %i.d, align 4
  %i.gv = load i32, ptr %i.a, align 8             ; 2 uses
  %.neg366.i = sub i32 %i.gv, %i.gu
  %i.gw = add i32 %i.gv, -1                       ; 2 uses
  %i.gx = load i32, ptr %i.cg, align 8
  %.not360.i = icmp sgt i32 %i.gw, %i.gx
  br i1 %.not360.i, label %bb.bw, label %r_standard_suffix.exit.thread75

bb.bw:                                            ; preds = %bb.bv
  %i.gy = load ptr, ptr %0, align 8
  %i.gz = sext i32 %i.gw to i64
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = zext i8 %i.hb to i32                    ; 2 uses
  %.mask362.i = and i32 %i.hc, 224
  %.not361.i = icmp eq i32 %.mask362.i, 96
  br i1 %.not361.i, label %bb.bx, label %r_standard_suffix.exit.thread75

bb.bx:                                            ; preds = %bb.bw
  %i.hd = and i32 %i.hc, 31
  %i.he = shl nuw i32 1, %i.hd
  %i.hf = and i32 %i.he, 2129954
  %.not363.i = icmp eq i32 %i.hf, 0
  br i1 %.not363.i, label %r_standard_suffix.exit.thread75, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hg = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_5, i32 noundef 4, ptr noundef null) #4
  %.not364.i = icmp eq i32 %i.hg, 0
  br i1 %.not364.i, label %r_standard_suffix.exit.thread75, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hh = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #4
  %.not365.i = icmp eq i32 %i.hh, 0
  br i1 %.not365.i, label %bb.ca, label %r_standard_suffix.exit.thread75

bb.ca:                                            ; preds = %bb.bz
  %i.hi = load i32, ptr %i.d, align 4
  %i.hj = add i32 %i.hi, %.neg366.i               ; 3 uses
  store i32 %i.hj, ptr %i.a, align 8
  store i32 %i.hj, ptr %i.e, align 8
  %i.hk = load ptr, ptr %0, align 8
  %i.hl = load i32, ptr %i.cg, align 8
  %i.hm = tail call i32 @skip_b_utf8(ptr noundef %i.hk, i32 noundef %i.hj, i32 noundef %i.hl, i32 noundef 1) #4 ; 3 uses
  %i.hn = icmp slt i32 %i.hm, 0
  br i1 %i.hn, label %r_standard_suffix.exit.thread75, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i32 %i.hm, ptr %i.a, align 8
  store i32 %i.hm, ptr %i.c, align 4
  %i.ho = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.hp = icmp sgt i32 %i.ho, -1
  br i1 %i.hp, label %r_standard_suffix.exit.thread75, label %r_standard_suffix.exit.thread

r_standard_suffix.exit:                           ; preds = %r_en_ending.exit, %bb.bp
  %.34297.i = phi i32 [ %spec.select, %r_en_ending.exit ], [ %.24287.i, %bb.bp ] ; 2 uses
  %i.hq = icmp sgt i32 %.34297.i, -1
  br i1 %i.hq, label %r_standard_suffix.exit.thread75, label %r_standard_suffix.exit.thread

r_standard_suffix.exit.thread75:                  ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %.thread459.i, %r_standard_suffix.exit
  %i.hr = load i32, ptr %i.cg, align 8            ; 3 uses
  store i32 %i.hr, ptr %i.a, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ci, %r_standard_suffix.exit.thread75
  %i.hs = phi i32 [ %.pre, %bb.ci ], [ %i.hr, %r_standard_suffix.exit.thread75 ] ; 5 uses
  store i32 %i.hs, ptr %i.c, align 4
  %i.ht = load i32, ptr %i.d, align 4             ; 2 uses
  %.not.i49 = icmp slt i32 %i.hs, %i.ht
  br i1 %.not.i49, label %bb.cd, label %.thread.i50

bb.cd:                                            ; preds = %bb.cc
  %i.hu = load ptr, ptr %0, align 8
  %i.hv = sext i32 %i.hs to i64
  %i.hw = getelementptr inbounds i8, ptr %i.hu, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1
  switch i8 %i.hx, label %.thread.i50 [
    i8 73, label %bb.ce
    i8 89, label %bb.ce
  ]

.thread.i50:                                      ; preds = %bb.cd, %bb.cc
  store i32 %i.hs, ptr %i.e, align 8
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cd, %bb.cd
  %i.hy = tail call i32 @find_among(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 3, ptr noundef null) #4
  %i.hz = load i32, ptr %i.a, align 8             ; 2 uses
  store i32 %i.hz, ptr %i.e, align 8
  switch i32 %i.hy, label %bb.ci [
    i32 1, label %bb.cf
    i32 2, label %bb.cg
    i32 3, label %._crit_edge.i51
  ]

._crit_edge.i51:                                  ; preds = %bb.ce
  %.pre.i52 = load i32, ptr %i.d, align 4
  br label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.ia = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_8) #4 ; 2 uses
  %i.ib = icmp sgt i32 %i.ia, -1
  br i1 %i.ib, label %bb.ci, label %r_standard_suffix.exit.thread

bb.cg:                                            ; preds = %bb.ce
  %i.ic = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_9) #4 ; 2 uses
  %i.id = icmp sgt i32 %i.ic, -1
  br i1 %i.id, label %bb.ci, label %r_standard_suffix.exit.thread

bb.ch:                                            ; preds = %._crit_edge.i51, %.thread.i50
  %i.ie = phi i32 [ %i.ht, %.thread.i50 ], [ %.pre.i52, %._crit_edge.i51 ]
  %i.if = phi i32 [ %i.hs, %.thread.i50 ], [ %i.hz, %._crit_edge.i51 ]
  %i.ig = load ptr, ptr %0, align 8
  %i.ih = tail call i32 @skip_utf8(ptr noundef %i.ig, i32 noundef %i.if, i32 noundef %i.ie, i32 noundef 1) #4 ; 2 uses
  %i.ii = icmp slt i32 %i.ih, 0
  br i1 %i.ii, label %bb.cj, label %.thread46.i

.thread46.i:                                      ; preds = %bb.ch
  store i32 %i.ih, ptr %i.a, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %.thread46.i, %bb.cg, %bb.cf, %bb.ce
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.cc

bb.cj:                                            ; preds = %bb.ch
  store i32 %i.hr, ptr %i.a, align 8
  br label %r_standard_suffix.exit.thread

r_standard_suffix.exit.thread:                    ; preds = %bb.f, %bb.j, %bb.i, %bb.h, %bb.g, %bb.s, %bb.q, %bb.cf, %bb.cg, %bb.aw, %bb.bi, %bb.bc, %bb.br, %bb.bu, %bb.bm, %bb.bo, %bb.bh, %bb.ac, %bb.aj, %bb.ag, %r_e_ending.exit.i, %bb.an, %r_en_ending.exit.i, %bb.ar, %bb.cb, %bb.cj, %.split.i, %r_standard_suffix.exit
  %.440 = phi i32 [ %.34297.i, %r_standard_suffix.exit ], [ %i.eh, %bb.ar ], [ %i.dh, %bb.aj ], [ %i.dc, %bb.ag ], [ %i.dw, %r_e_ending.exit.i ], [ %i.du, %bb.an ], [ %i.ia, %bb.cf ], [ %.fr.i, %r_en_ending.exit.i ], [ %i.ao, %.split.i ], [ %i.bg, %bb.s ], [ 1, %bb.cj ], [ %i.et, %bb.aw ], [ %i.ho, %bb.cb ], [ %i.ga, %bb.bi ], [ %i.fk, %bb.bc ], [ %i.gn, %bb.br ], [ %i.gq, %bb.bu ], [ %i.gh, %bb.bm ], [ %i.gj, %bb.bo ], [ %i.fw, %bb.bh ], [ %i.ct, %bb.ac ], [ %i.ic, %bb.cg ], [ %i.bd, %bb.q ], [ %i.u, %bb.g ], [ %i.w, %bb.h ], [ %i.s, %bb.f ], [ %i.y, %bb.i ], [ %i.aa, %bb.j ]
  ret i32 %.440
}

; Function Attrs: nounwind uwtable
define hidden ptr @dutch_porter_UTF_8_create_env() local_unnamed_addr #0 {
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
define hidden void @dutch_porter_UTF_8_close_env(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SN_delete_env(ptr noundef %0) #4
  ret void
}

declare void @SN_delete_env(ptr noundef) local_unnamed_addr #1

declare i32 @find_among(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slice_from_s(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @skip_utf8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @out_grouping_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @in_grouping_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @find_among_b(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @out_grouping_b_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
  %i.q = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #4
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
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.neg = sub i32 %i.d, %i.b
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %.not = icmp sgt i32 %i.e, %i.g
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8
  %i.i = sext i32 %i.e to i64
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %.mask = and i32 %i.l, 224
  %.not34 = icmp eq i32 %.mask, 96
  br i1 %.not34, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.l, 31
  %i.n = shl nuw i32 1, %i.m
  %i.o = and i32 %i.n, 1050640
  %.not35 = icmp eq i32 %i.o, 0
  br i1 %.not35, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_2, i32 noundef 3, ptr noundef null) #4
  %.not36 = icmp eq i32 %i.p, 0
  br i1 %.not36, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.a, align 4
  %i.r = add i32 %i.q, %.neg                      ; 3 uses
  store i32 %i.r, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8
  %i.u = load i32, ptr %i.f, align 8
  %i.v = tail call i32 @skip_b_utf8(ptr noundef %i.t, i32 noundef %i.r, i32 noundef %i.u, i32 noundef 1) #4 ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.v, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.v, ptr %i.x, align 4
  %i.y = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  %. = tail call i32 @llvm.smin.i32(i32 %i.y, i32 0)
  %spec.select = select i1 %i.z, i32 1, i32 %.
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bb.e, %bb.f
  %.3 = phi i32 [ 0, %bb.e ], [ %spec.select, %bb.f ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.3
}

declare i32 @skip_b_utf8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
end_hunk_0
