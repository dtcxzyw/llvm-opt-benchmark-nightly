Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/stem_UTF_8_dutch?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@dutch_UTF_8_stem:bb.a
  %i.cw = getelementptr i8, ptr %.val384.i, i64 4
  %.val384.val.i = load i32, ptr %i.cw, align 4, !tbaa !21
  %.not.i.not.i = icmp sgt i32 %.val384.val.i, %i.cv
  br i1 %.not.i.not.i, label %.thread.i45, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_11) #3 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, -1
  br i1 %i.cy, label %.thread.i45, label %r_standard_suffix.exit.thread

bb.ai:                                            ; preds = %bb.af
  %.val34.i.i = load ptr, ptr %i.bn, align 8, !tbaa !20
  %i.cz = getelementptr i8, ptr %.val34.i.i, i64 4
  %.val34.val.i.i = load i32, ptr %i.cz, align 4, !tbaa !21
  %.not.i.not.i.i = icmp sgt i32 %.val34.val.i.i, %i.cv
  br i1 %.not.i.not.i.i, label %.thread.i45, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = load i32, ptr %i.d, align 4, !tbaa !16
  %i.db = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #3
  %.not.i399.i = icmp eq i32 %i.db, 0
  br i1 %.not.i399.i, label %bb.ak, label %.thread.i45

bb.ak:                                            ; preds = %bb.aj
  %.neg.i.i = sub i32 %i.cv, %i.da                ; 2 uses
  %i.dc = load i32, ptr %i.d, align 4, !tbaa !16
  %i.dd = add i32 %i.dc, %.neg.i.i
  store i32 %i.dd, ptr %i.a, align 8, !tbaa !14
  %i.de = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_10) #3
  %.not33.i.i = icmp eq i32 %i.de, 0
  br i1 %.not33.i.i, label %bb.al, label %.thread.i45

bb.al:                                            ; preds = %bb.ak
  %i.df = load i32, ptr %i.d, align 4, !tbaa !16
  %i.dg = add i32 %i.df, %.neg.i.i
  store i32 %i.dg, ptr %i.a, align 8, !tbaa !14
  %i.dh = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.di = icmp sgt i32 %i.dh, -1
  br i1 %i.di, label %r_en_ending.exit.i, label %r_standard_suffix.exit.thread

r_en_ending.exit.i:                               ; preds = %bb.al
  %i.dj = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0)
  %.fr.i = freeze i32 %i.dj                       ; 3 uses
  %i.dk = icmp slt i32 %.fr.i, 0
  br i1 %i.dk, label %r_standard_suffix.exit.thread, label %.thread.i45

bb.am:                                            ; preds = %bb.af
  %.val382.i = load ptr, ptr %i.bn, align 8, !tbaa !20
  %i.dl = getelementptr i8, ptr %.val382.i, i64 4
  %.val382.val.i = load i32, ptr %i.dl, align 4, !tbaa !21
  %.not.i400.not.i = icmp sgt i32 %.val382.val.i, %i.cv
  br i1 %.not.i400.not.i, label %.thread.i45, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dm = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v_j, i32 noundef 97, i32 noundef 232, i32 noundef 0) #3
  %.not334.i = icmp eq i32 %i.dm, 0
  br i1 %.not334.i, label %bb.ao, label %.thread.i45

bb.ao:                                            ; preds = %bb.an
  %i.dn = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, -1
  br i1 %i.do, label %.thread.i45, label %r_standard_suffix.exit.thread

.thread.i45:                                      ; preds = %bb.ao, %bb.an, %bb.am, %r_en_ending.exit.i, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %r_mark_regions.exit
  %.5268.i = phi i32 [ undef, %r_mark_regions.exit ], [ undef, %bb.ac ], [ undef, %bb.af ], [ 1, %bb.ah ], [ 0, %bb.ag ], [ undef, %bb.ad ], [ undef, %bb.ae ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 0, %bb.am ], [ 0, %bb.ai ], [ %.fr.i, %r_en_ending.exit.i ], [ 0, %bb.aj ], [ 0, %bb.ak ] ; 8 uses
  %i.dp = load i32, ptr %i.d, align 4, !tbaa !16
  store i32 %i.dp, ptr %i.a, align 8, !tbaa !14
  %i.dq = load ptr, ptr %i.bn, align 8, !tbaa !20 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 0, ptr %i.dr, align 4, !tbaa !21
  %i.ds = load i32, ptr %i.a, align 8, !tbaa !14  ; 5 uses
  store i32 %i.ds, ptr %i.e, align 8, !tbaa !19
  %i.dt = load i32, ptr %i.cj, align 8, !tbaa !22
  %.not.i402.i = icmp sgt i32 %i.ds, %i.dt
  br i1 %.not.i402.i, label %bb.ap, label %r_e_ending.exit.thread.i

bb.ap:                                            ; preds = %.thread.i45
  %i.du = load ptr, ptr %0, align 8, !tbaa !17
  %i.dv = sext i32 %i.ds to i64
  %i.dw = getelementptr i8, ptr %i.du, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !18
  %.not37.i.i = icmp eq i8 %i.dy, 101
  br i1 %.not37.i.i, label %bb.aq, label %r_e_ending.exit.thread.i

bb.aq:                                            ; preds = %bb.ap
  %i.dz = add nsw i32 %i.ds, -1                   ; 3 uses
  store i32 %i.dz, ptr %i.a, align 8, !tbaa !14
  store i32 %i.dz, ptr %i.c, align 4, !tbaa !15
  %i.ea = getelementptr i8, ptr %i.dq, i64 4
  %.val40.val.i.i = load i32, ptr %i.ea, align 4, !tbaa !21
  %.not.i.i.i = icmp slt i32 %.val40.val.i.i, %i.ds
  br i1 %.not.i.i.i, label %bb.ar, label %r_e_ending.exit.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.eb = load i32, ptr %i.d, align 4, !tbaa !16
  %i.ec = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #3
  %.not39.not.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not39.not.i.i, label %bb.as, label %r_e_ending.exit.thread.i

bb.as:                                            ; preds = %bb.ar
  %.neg.i403.i = sub i32 %i.dz, %i.eb
  %i.ed = load i32, ptr %i.d, align 4, !tbaa !16
  %i.ee = add i32 %.neg.i403.i, %i.ed
  store i32 %i.ee, ptr %i.a, align 8, !tbaa !14
  %i.ef = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, -1
  br i1 %i.eg, label %r_e_ending.exit.i, label %r_standard_suffix.exit.thread

r_e_ending.exit.i:                                ; preds = %bb.as
  %i.eh = load ptr, ptr %i.bn, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 1, ptr %i.ei, align 4, !tbaa !21
  %i.ej = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0) ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, -1
  br i1 %i.ek, label %r_e_ending.exit.thread.i, label %r_standard_suffix.exit.thread

r_e_ending.exit.thread.i:                         ; preds = %r_e_ending.exit.i, %bb.ar, %bb.aq, %bb.ap, %.thread.i45
  %i.el = load i32, ptr %i.d, align 4, !tbaa !16  ; 2 uses
  store i32 %i.el, ptr %i.a, align 8, !tbaa !14
  store i32 %i.el, ptr %i.e, align 8, !tbaa !19
  %i.em = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_12) #3
  %.not336.i = icmp eq i32 %i.em, 0
  br i1 %.not336.i, label %.thread66, label %bb.at

bb.at:                                            ; preds = %r_e_ending.exit.thread.i
  %i.en = load i32, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  store i32 %i.en, ptr %i.c, align 4, !tbaa !15
  %.val398.i = load ptr, ptr %i.bn, align 8, !tbaa !20
  %.val398.val.i = load i32, ptr %.val398.i, align 4, !tbaa !21
  %.not.i404.not.i = icmp sgt i32 %.val398.val.i, %i.en
  br i1 %.not.i404.not.i, label %.thread66, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eo = load i32, ptr %i.cj, align 8, !tbaa !22
  %.not337.i = icmp sgt i32 %i.en, %i.eo
  br i1 %.not337.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ep = load ptr, ptr %0, align 8, !tbaa !17
  %i.eq = sext i32 %i.en to i64
  %i.er = getelementptr i8, ptr %i.ep, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 -1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !18
  %.not338.i = icmp eq i8 %i.et, 99
  br i1 %.not338.i, label %.thread66, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.eu = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, -1
  br i1 %i.ev, label %bb.ax, label %r_standard_suffix.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ew = load i32, ptr %i.a, align 8, !tbaa !14
  store i32 %i.ew, ptr %i.e, align 8, !tbaa !19
  %i.ex = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_13) #3
  %.not340.i = icmp eq i32 %i.ex, 0
  br i1 %.not340.i, label %.thread66, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ey = load i32, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  store i32 %i.ey, ptr %i.c, align 4, !tbaa !15
  %.val34.i = load ptr, ptr %i.bn, align 8, !tbaa !20
  %i.ez = getelementptr i8, ptr %.val34.i, i64 4
  %.val34.val.i = load i32, ptr %i.ez, align 4, !tbaa !21
  %.not.i.not.i50 = icmp sgt i32 %.val34.val.i, %i.ey
  br i1 %.not.i.not.i50, label %.thread66, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fa = load i32, ptr %i.d, align 4, !tbaa !16
  %i.fb = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #3
  %.not.i51 = icmp eq i32 %i.fb, 0
  br i1 %.not.i51, label %bb.ba, label %.thread66

bb.ba:                                            ; preds = %bb.az
  %.neg.i54 = sub i32 %i.ey, %i.fa                ; 2 uses
  %i.fc = load i32, ptr %i.d, align 4, !tbaa !16
  %i.fd = add i32 %i.fc, %.neg.i54
  store i32 %i.fd, ptr %i.a, align 8, !tbaa !14
  %i.fe = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_10) #3
  %.not33.i = icmp eq i32 %i.fe, 0
  br i1 %.not33.i, label %bb.bb, label %.thread66

bb.bb:                                            ; preds = %bb.ba
  %i.ff = load i32, ptr %i.d, align 4, !tbaa !16
  %i.fg = add i32 %i.ff, %.neg.i54
  store i32 %i.fg, ptr %i.a, align 8, !tbaa !14
  %i.fh = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, -1
  br i1 %i.fi, label %r_en_ending.exit, label %r_standard_suffix.exit.thread

r_en_ending.exit:                                 ; preds = %bb.bb
  %i.fj = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0)
  %.fr = freeze i32 %i.fj                         ; 3 uses
  %i.fk = icmp slt i32 %.fr, 0
  %spec.select = select i1 %i.fk, i32 %.fr, i32 %.5268.i ; 2 uses
  %.not527.i = icmp sgt i32 %.fr, -1
  br i1 %.not527.i, label %.thread66, label %r_standard_suffix.exit

.thread66:                                        ; preds = %bb.ay, %bb.az, %bb.ba, %r_en_ending.exit, %bb.ax, %bb.av, %bb.at, %r_e_ending.exit.thread.i
  %.11274.i = phi i32 [ %.5268.i, %r_e_ending.exit.thread.i ], [ %spec.select, %r_en_ending.exit ], [ %.5268.i, %bb.ax ], [ %.5268.i, %bb.at ], [ %.5268.i, %bb.av ], [ %.5268.i, %bb.ba ], [ %.5268.i, %bb.az ], [ %.5268.i, %bb.ay ]
  %i.fl = load i32, ptr %i.d, align 4, !tbaa !16  ; 3 uses
  store i32 %i.fl, ptr %i.a, align 8, !tbaa !14
  store i32 %i.fl, ptr %i.e, align 8, !tbaa !19
  %i.fm = add nsw i32 %i.fl, -1                   ; 2 uses
  %i.fn = load i32, ptr %i.cj, align 8, !tbaa !22
  %.not342.i = icmp sgt i32 %i.fm, %i.fn
  br i1 %.not342.i, label %bb.bc, label %.thread478.i

bb.bc:                                            ; preds = %.thread66
  %i.fo = load ptr, ptr %0, align 8, !tbaa !17
  %i.fp = sext i32 %i.fm to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !18
  %i.fs = zext i8 %i.fr to i32                    ; 2 uses
  %.mask344.i = and i32 %i.fs, 224
  %.not343.i = icmp eq i32 %.mask344.i, 96
  br i1 %.not343.i, label %bb.bd, label %.thread478.i

bb.bd:                                            ; preds = %bb.bc
  %i.ft = and i32 %i.fs, 31
  %i.fu = shl nuw i32 1, %i.ft
  %i.fv = and i32 %i.fu, 264336
  %.not345.i = icmp eq i32 %i.fv, 0
  br i1 %.not345.i, label %.thread478.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fw = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_4, i32 noundef 6) #3 ; 2 uses
  %.not346.i = icmp eq i32 %i.fw, 0
  br i1 %.not346.i, label %.thread478.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fx = load i32, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  store i32 %i.fx, ptr %i.c, align 4, !tbaa !15
  switch i32 %i.fw, label %.thread478.i [
    i32 1, label %bb.bg
    i32 2, label %bb.bo
    i32 3, label %bb.bs
    i32 4, label %bb.bv
    i32 5, label %bb.bx
  ]

bb.bg:                                            ; preds = %bb.bf
  %.val396.i = load ptr, ptr %i.bn, align 8, !tbaa !20
  %.val396.val.i = load i32, ptr %.val396.i, align 4, !tbaa !21
  %.not.i406.not.i = icmp sgt i32 %.val396.val.i, %i.fx
  br i1 %.not.i406.not.i, label %.thread478.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fy = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, -1
  br i1 %i.fz, label %bb.bi, label %r_standard_suffix.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.ga = load i32, ptr %i.d, align 4, !tbaa !16
  %i.gb = load i32, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %.neg357.i = sub i32 %i.gb, %i.ga
  store i32 %i.gb, ptr %i.e, align 8, !tbaa !19
  %i.gc = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_14) #3
  %.not352.i = icmp eq i32 %i.gc, 0
  br i1 %.not352.i, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gd = load i32, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  store i32 %i.gd, ptr %i.c, align 4, !tbaa !15
  %.val394.i = load ptr, ptr %i.bn, align 8, !tbaa !20
  %.val394.val.i = load i32, ptr %.val394.i, align 4, !tbaa !21
  %.not.i408.not.i = icmp sgt i32 %.val394.val.i, %i.gd
  br i1 %.not.i408.not.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ge = load i32, ptr %i.cj, align 8, !tbaa !22
  %.not353.i = icmp sgt i32 %i.gd, %i.ge
  br i1 %.not353.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gf = load ptr, ptr %0, align 8, !tbaa !17
  %i.gg = sext i32 %i.gd to i64
  %i.gh = getelementptr i8, ptr %i.gf, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 -1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !18
  %.not354.i = icmp eq i8 %i.gj, 101
  br i1 %.not354.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gk = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, -1
  br i1 %i.gl, label %.thread478.i, label %r_standard_suffix.exit.thread

bb.bn:                                            ; preds = %bb.bl, %bb.bj, %bb.bi
  %i.gm = load i32, ptr %i.d, align 4, !tbaa !16
  %i.gn = add i32 %.neg357.i, %i.gm
  store i32 %i.gn, ptr %i.a, align 8, !tbaa !14
  %i.go = tail call fastcc i32 @r_undouble(ptr noundef nonnull %0) ; 2 uses
  %1 = icmp slt i32 %i.go, 0
  br i1 %1, label %r_standard_suffix.exit.thread, label %.thread478.i

bb.bo:                                            ; preds = %bb.bf
  %.val392.i = load ptr, ptr %i.bn, align 8, !tbaa !20
  %.val392.val.i = load i32, ptr %.val392.i, align 4, !tbaa !21
  %.not.i410.not.i = icmp sgt i32 %.val392.val.i, %i.fx
  br i1 %.not.i410.not.i, label %.thread478.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gp = load i32, ptr %i.cj, align 8, !tbaa !22
  %.not348.i.a = icmp sgt i32 %i.fx, %i.gp
  br i1 %.not348.i.a, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.gq = load ptr, ptr %0, align 8, !tbaa !17
  %i.gr = sext i32 %i.fx to i64
  %i.gs = getelementptr i8, ptr %i.gq, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gs, i64 -1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !18
  %.not349.i = icmp eq i8 %i.gu, 101
  br i1 %.not349.i, label %.thread478.i, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gv = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, -1
  br i1 %i.gw, label %.thread478.i, label %r_standard_suffix.exit.thread

bb.bs:                                            ; preds = %bb.bf
  %.val390.i = load ptr, ptr %i.bn, align 8, !tbaa !20
  %.val390.val.i = load i32, ptr %.val390.i, align 4, !tbaa !21
  %.not.i412.not.i = icmp sgt i32 %.val390.val.i, %i.fx
  br i1 %.not.i412.not.i, label %.thread478.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gx = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, -1
  br i1 %i.gy, label %bb.bu, label %r_standard_suffix.exit.thread

bb.bu:                                            ; preds = %bb.bt
  %i.gz = tail call fastcc i32 @r_e_ending(ptr noundef nonnull %0) ; 3 uses
  %i.ha = icmp slt i32 %i.gz, 0
  %.24287.i = select i1 %i.ha, i32 %i.gz, i32 %.11274.i
  %.not528.i = icmp sgt i32 %i.gz, -1
  br i1 %.not528.i, label %.thread478.i, label %r_standard_suffix.exit

bb.bv:                                            ; preds = %bb.bf
  %.val388.i = load ptr, ptr %i.bn, align 8, !tbaa !20
  %.val388.val.i = load i32, ptr %.val388.i, align 4, !tbaa !21
  %.not.i414.not.i = icmp sgt i32 %.val388.val.i, %i.fx
  br i1 %.not.i414.not.i, label %.thread478.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hb = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, -1
  br i1 %i.hc, label %.thread478.i, label %r_standard_suffix.exit.thread

bb.bx:                                            ; preds = %bb.bf
  %.val386.i = load ptr, ptr %i.bn, align 8, !tbaa !20 ; 2 uses
  %.val386.val.i = load i32, ptr %.val386.i, align 4, !tbaa !21
  %.not.i416.not.i = icmp sgt i32 %.val386.val.i, %i.fx
  br i1 %.not.i416.not.i, label %.thread478.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hd = getelementptr inbounds nuw i8, ptr %.val386.i, i64 8
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !21
  %.not347.i = icmp eq i32 %i.he, 0
  br i1 %.not347.i, label %.thread478.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hf = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, -1
  br i1 %i.hg, label %.thread478.i, label %r_standard_suffix.exit.thread

.thread478.i:                                     ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bn, %bb.bm, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %.thread66
  %i.hh = load i32, ptr %i.d, align 4, !tbaa !16
  store i32 %i.hh, ptr %i.a, align 8, !tbaa !14
  %i.hi = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v_I, i32 noundef 73, i32 noundef 232, i32 noundef 0) #3
  %.not359.i = icmp eq i32 %i.hi, 0
  br i1 %.not359.i, label %bb.ca, label %r_standard_suffix.exit.thread74

bb.ca:                                            ; preds = %.thread478.i
  %i.hj = load i32, ptr %i.d, align 4, !tbaa !16
  %i.hk = load i32, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %.neg366.i = sub i32 %i.hk, %i.hj
  %i.hl = add nsw i32 %i.hk, -1                   ; 2 uses
  %i.hm = load i32, ptr %i.cj, align 8, !tbaa !22
  %.not360.i = icmp sgt i32 %i.hl, %i.hm
  br i1 %.not360.i, label %bb.cb, label %r_standard_suffix.exit.thread74

bb.cb:                                            ; preds = %bb.ca
  %i.hn = load ptr, ptr %0, align 8, !tbaa !17
  %i.ho = sext i32 %i.hl to i64
  %i.hp = getelementptr inbounds i8, ptr %i.hn, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !18
  %i.hr = zext i8 %i.hq to i32                    ; 2 uses
  %.mask362.i = and i32 %i.hr, 224
  %.not361.i = icmp eq i32 %.mask362.i, 96
  br i1 %.not361.i, label %bb.cc, label %r_standard_suffix.exit.thread74

bb.cc:                                            ; preds = %bb.cb
  %i.hs = and i32 %i.hr, 31
  %i.ht = shl nuw i32 1, %i.hs
  %i.hu = and i32 %i.ht, 2129954
  %.not363.i = icmp eq i32 %i.hu, 0
  br i1 %.not363.i, label %r_standard_suffix.exit.thread74, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hv = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_5, i32 noundef 4) #3
  %.not364.i = icmp eq i32 %i.hv, 0
  br i1 %.not364.i, label %r_standard_suffix.exit.thread74, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hw = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #3
  %.not365.i = icmp eq i32 %i.hw, 0
  br i1 %.not365.i, label %bb.cf, label %r_standard_suffix.exit.thread74

bb.cf:                                            ; preds = %bb.ce
  %i.hx = load i32, ptr %i.d, align 4, !tbaa !16
  %i.hy = add i32 %i.hx, %.neg366.i               ; 3 uses
  store i32 %i.hy, ptr %i.a, align 8, !tbaa !14
  store i32 %i.hy, ptr %i.e, align 8, !tbaa !19
  %i.hz = load ptr, ptr %0, align 8, !tbaa !17
  %i.ia = load i32, ptr %i.cj, align 8, !tbaa !22
  %i.ib = tail call i32 @skip_b_utf8(ptr noundef %i.hz, i32 noundef %i.hy, i32 noundef %i.ia, i32 noundef 1) #3 ; 3 uses
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %r_standard_suffix.exit.thread74, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i32 %i.ib, ptr %i.a, align 8, !tbaa !14
  store i32 %i.ib, ptr %i.c, align 4, !tbaa !15
  %i.id = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.ie = icmp sgt i32 %i.id, -1
  br i1 %i.ie, label %r_standard_suffix.exit.thread74, label %r_standard_suffix.exit.thread

r_standard_suffix.exit:                           ; preds = %r_en_ending.exit, %bb.bu
  %.34297.i = phi i32 [ %spec.select, %r_en_ending.exit ], [ %.24287.i, %bb.bu ] ; 2 uses
  %i.if = icmp sgt i32 %.34297.i, -1
  br i1 %i.if, label %r_standard_suffix.exit.thread74, label %r_standard_suffix.exit.thread

r_standard_suffix.exit.thread74:                  ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %.thread478.i, %r_standard_suffix.exit
  %i.ig = load i32, ptr %i.cj, align 8, !tbaa !22 ; 3 uses
  store i32 %i.ig, ptr %i.a, align 8, !tbaa !14
  br label %bb.ch

bb.ch:                                            ; preds = %bb.co, %r_standard_suffix.exit.thread74
  %i.ih = phi i32 [ %.pre, %bb.co ], [ %i.ig, %r_standard_suffix.exit.thread74 ] ; 5 uses
  store i32 %i.ih, ptr %i.c, align 4, !tbaa !15
  %i.ii = load i32, ptr %i.d, align 4, !tbaa !16  ; 2 uses
  %.not.i47 = icmp slt i32 %i.ih, %i.ii
  br i1 %.not.i47, label %bb.ci, label %.thread50.i

bb.ci:                                            ; preds = %bb.ch
  %i.ij = load ptr, ptr %0, align 8, !tbaa !17
  %i.ik = sext i32 %i.ih to i64
  %i.il = getelementptr inbounds i8, ptr %i.ij, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !18
  switch i8 %i.im, label %.thread50.i [
    i8 73, label %bb.cj
    i8 89, label %bb.cj
  ]

.thread50.i:                                      ; preds = %bb.ci, %bb.ch
  store i32 %i.ih, ptr %i.e, align 8, !tbaa !19
  br label %bb.cn

bb.cj:                                            ; preds = %bb.ci, %bb.ci
  %i.in = tail call i32 @find_among(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 3) #3 ; 2 uses
  %.not45.i = icmp eq i32 %i.in, 0
  br i1 %.not45.i, label %bb.cp, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.io = load i32, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  store i32 %i.io, ptr %i.e, align 8, !tbaa !19
  switch i32 %i.in, label %bb.co [
    i32 1, label %bb.cl
    i32 2, label %bb.cm
    i32 3, label %._crit_edge.i48
  ]

._crit_edge.i48:                                  ; preds = %bb.ck
  %.pre.i49 = load i32, ptr %i.d, align 4, !tbaa !16
  br label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.ip = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_8) #3 ; 2 uses
  %i.iq = icmp sgt i32 %i.ip, -1
  br i1 %i.iq, label %bb.co, label %r_standard_suffix.exit.thread

bb.cm:                                            ; preds = %bb.ck
  %i.ir = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_9) #3 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, -1
  br i1 %i.is, label %bb.co, label %r_standard_suffix.exit.thread

bb.cn:                                            ; preds = %._crit_edge.i48, %.thread50.i
  %i.it = phi i32 [ %i.ii, %.thread50.i ], [ %.pre.i49, %._crit_edge.i48 ]
  %i.iu = phi i32 [ %i.ih, %.thread50.i ], [ %i.io, %._crit_edge.i48 ]
  %i.iv = load ptr, ptr %0, align 8, !tbaa !17
  %i.iw = tail call i32 @skip_utf8(ptr noundef %i.iv, i32 noundef %i.iu, i32 noundef %i.it, i32 noundef 1) #3 ; 2 uses
  %i.ix = icmp slt i32 %i.iw, 0
  br i1 %i.ix, label %bb.cp, label %.thread52.i

.thread52.i:                                      ; preds = %bb.cn
  store i32 %i.iw, ptr %i.a, align 8, !tbaa !14
  br label %bb.co

bb.co:                                            ; preds = %.thread52.i, %bb.cm, %bb.cl, %bb.ck
  %.pre = load i32, ptr %i.a, align 8, !tbaa !14
  br label %bb.ch

bb.cp:                                            ; preds = %bb.cj, %bb.cn
  store i32 %i.ig, ptr %i.a, align 8, !tbaa !14
  br label %r_standard_suffix.exit.thread

r_standard_suffix.exit.thread:                    ; preds = %bb.g, %bb.k, %bb.j, %bb.i, %bb.h, %bb.v, %bb.s, %bb.cl, %bb.cm, %bb.bb, %bb.bn, %bb.bh, %bb.bw, %bb.bz, %bb.br, %bb.bt, %bb.bm, %bb.ah, %bb.ao, %bb.al, %r_e_ending.exit.i, %bb.as, %r_en_ending.exit.i, %bb.aw, %bb.cg, %bb.cp, %.split.i, %r_standard_suffix.exit
  %.440 = phi i32 [ %.34297.i, %r_standard_suffix.exit ], [ %i.eu, %bb.aw ], [ %i.dn, %bb.ao ], [ %i.dh, %bb.al ], [ %i.ej, %r_e_ending.exit.i ], [ %i.ef, %bb.as ], [ %i.ip, %bb.cl ], [ %.fr.i, %r_en_ending.exit.i ], [ %i.ao, %.split.i ], [ %i.bg, %bb.v ], [ 1, %bb.cp ], [ %i.fh, %bb.bb ], [ %i.id, %bb.cg ], [ %i.go, %bb.bn ], [ %i.fy, %bb.bh ], [ %i.hb, %bb.bw ], [ %i.hf, %bb.bz ], [ %i.gv, %bb.br ], [ %i.gx, %bb.bt ], [ %i.gk, %bb.bm ], [ %i.cx, %bb.ah ], [ %i.ir, %bb.cm ], [ %i.az, %bb.s ], [ %i.u, %bb.h ], [ %i.w, %bb.i ], [ %i.s, %bb.g ], [ %i.y, %bb.j ], [ %i.aa, %bb.k ]
  ret i32 %.440
}

; Function Attrs: nounwind uwtable
define ptr @dutch_UTF_8_create_env() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SN_create_env(i32 noundef 0, i32 noundef 3) #3
  ret ptr %i.a
}

declare ptr @SN_create_env(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dutch_UTF_8_close_env(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SN_close_env(ptr noundef %0, i32 noundef 0) #3
  ret void
}

declare void @SN_close_env(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @find_among(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slice_from_s(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @skip_utf8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @in_grouping_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @out_grouping_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @find_among_b(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @out_grouping_b_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
  %i.s = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 232, i32 noundef 0) #3
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
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %.neg = sub i32 %i.d, %i.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !22
  %.not = icmp sgt i32 %i.e, %i.g
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !17
  %i.i = sext i32 %i.e to i64
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18
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
  %i.p = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_2, i32 noundef 3) #3
  %.not36 = icmp eq i32 %i.p, 0
  br i1 %.not36, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.a, align 4, !tbaa !16
  %i.r = add i32 %i.q, %.neg                      ; 3 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !19
  %i.t = load ptr, ptr %0, align 8, !tbaa !17
  %i.u = load i32, ptr %i.f, align 8, !tbaa !22
  %i.v = tail call i32 @skip_b_utf8(ptr noundef %i.t, i32 noundef %i.r, i32 noundef %i.u, i32 noundef 1) #3 ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.v, ptr %i.c, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.v, ptr %i.x, align 4, !tbaa !15
  %i.y = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"any p2 pointer", !8, i64 0}
!11 = !{!"p2 omnipotent char", !10, i64 0}
!12 = !{!"p1 int", !8, i64 0}
!13 = !{!"SN_env", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !11, i64 32, !12, i64 40}
!14 = !{!13, !5, i64 8}
!15 = !{!13, !5, i64 20}
!16 = !{!13, !5, i64 12}
!17 = !{!13, !9, i64 0}
end_hunk_0
