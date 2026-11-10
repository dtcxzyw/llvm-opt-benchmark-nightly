Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cmp?download=true
inline.NumInlined: 70
inline.NumDeleted: 33
begin_hunk_0_@cmp_main:bb.a
  br label %bb.cc

bb.bg:                                            ; preds = %bb.al
  %i.fc = load i32, ptr @opt_verbosity, align 4, !tbaa !17 ; 2 uses
  %i.fd = icmp slt i32 %i.fc, 3
  br i1 %i.fd, label %read_config.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fe = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.ff = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fe, ptr noundef nonnull @.str.397, ptr noundef nonnull @__func__.read_config, ptr noundef nonnull @.str.351, i32 noundef 2785, ptr noundef nonnull @.str.352, i32 noundef %i.cy, ptr noundef nonnull %i.cj, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %read_config.exit

conf_get_string.exit.i:                           ; preds = %bb.be, %bb.ba
  %.1117.i = phi i64 [ %i.em, %bb.ba ], [ %.0116165.i, %bb.be ] ; 8 uses
  %.173.i = phi ptr [ %.072167.i, %bb.ba ], [ %i.fb, %bb.be ] ; 6 uses
  %or.cond9.i = or i1 %spec.select.i, %i.cq
  br i1 %or.cond9.i, label %bb.bi, label %bb.bu

bb.bi:                                            ; preds = %conf_get_string.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.fg = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.c, i64 noundef 81, ptr noundef nonnull @.str.398, ptr noundef nonnull %i.cj) #12 ; 0 uses
  %i.fh = load ptr, ptr @prog, align 8, !tbaa !15
  store ptr %i.fh, ptr %i.b, align 16, !tbaa !15
  store ptr %i.c, ptr %i.ch, align 8, !tbaa !15
  %i.fi = icmp eq i32 %i.cy, 45
  br i1 %i.fi, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fj = load ptr, ptr @conf, align 8, !tbaa !24
  %i.fk = load ptr, ptr @opt_section, align 8, !tbaa !15 ; 3 uses
  %i.fl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fk) #13
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fl
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %bb.bj
  %.0.i106.i = phi ptr [ %i.fm, %bb.bj ], [ %i.fn, %bb.bl ]
  %i.fn = call fastcc ptr @prev_item(ptr noundef nonnull %i.fk, ptr noundef nonnull %.0.i106.i) ; 2 uses
  %.not.i107.i = icmp eq ptr %i.fn, null
  br i1 %.not.i107.i, label %.thread.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fo = call ptr @app_conf_try_string(ptr noundef %i.fj, ptr noundef nonnull @opt_item, ptr noundef nonnull %i.cj) #12 ; 2 uses
  %.not13.i108.i = icmp eq ptr %i.fo, null
  br i1 %.not13.i108.i, label %bb.bk, label %.thread.i, !llvm.loop !48

.thread.i:                                        ; preds = %bb.bl, %bb.bk
  %.010.i109.i = phi ptr [ %i.fo, %bb.bl ], [ null, %bb.bk ]
  store ptr %.010.i109.i, ptr %i.ci, align 16, !tbaa !15
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %.not95.not.i = icmp eq i64 %.1117.i, 0
  br i1 %.not95.not.i, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.thread.i
  %.0131.i = phi i32 [ 3, %.thread.i ], [ 2, %bb.bm ]
  %i.fp = call ptr @opt_init(i32 noundef %.0131.i, ptr noundef nonnull %i.b, ptr noundef nonnull @cmp_options) #12 ; 0 uses
  %i.fq = call i32 @opt_next() #12                ; 2 uses
  br i1 %spec.select.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fr = call i32 @opt_provider(i32 noundef %i.fq) #12
  %.not97.i = icmp eq i32 %i.fr, 0
  br i1 %.not97.i, label %bb.bq, label %bb.bt

bb.bp:                                            ; preds = %bb.bn
  %i.fs = load ptr, ptr @vpm, align 8, !tbaa !22
  %i.ft = call i32 @opt_verify(i32 noundef %i.fq, ptr noundef %i.fs) #12
  %.not96.i = icmp eq i32 %i.ft, 0
  br i1 %.not96.i, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.fu = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.fv = icmp slt i32 %i.fu, 3
  br i1 %i.fv, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fw = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.fx = load ptr, ptr @opt_section, align 8, !tbaa !15
  %i.fy = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fw, ptr noundef nonnull @.str.399, ptr noundef nonnull @__func__.read_config, ptr noundef nonnull @.str.351, i32 noundef 2811, ptr noundef nonnull @.str.352, ptr noundef nonnull %i.cj, ptr noundef %i.fx, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %read_config.exit

bb.bt:                                            ; preds = %bb.bp, %bb.bo, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.cc

bb.bu:                                            ; preds = %conf_get_string.exit.i
  switch i32 %i.cy, label %bb.bz [
    i32 45, label %bb.bv
    i32 112, label %bb.bv
    i32 110, label %bb.bv
    i32 78, label %bb.bv
    i32 108, label %bb.by
  ]

bb.bv:                                            ; preds = %bb.bu, %bb.bu, %bb.bu, %bb.bu
  %i.fz = add i64 %.1117.i, -2147483648
  %or.cond11.i = icmp ult i64 %i.fz, -4294967296
  br i1 %or.cond11.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ga = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.gb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ga, ptr noundef nonnull @.str.400, ptr noundef nonnull %i.cj) #12 ; 0 uses
  br label %read_config.exit

bb.bx:                                            ; preds = %bb.bv
  %i.gc = trunc nsw i64 %.1117.i to i32
  %i.gd = zext i32 %spec.select100.i to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr @cmp_vars, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !16
  store i32 %i.gc, ptr %i.gf, align 4, !tbaa !17
  br label %bb.cc

bb.by:                                            ; preds = %bb.bu
  %i.gg = zext i32 %spec.select100.i to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr @cmp_vars, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !16
  store i64 %.1117.i, ptr %i.gi, align 8, !tbaa !56
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bu
  %.not94.i = icmp eq ptr %.173.i, null
  br i1 %.not94.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gj = load i8, ptr %.173.i, align 1, !tbaa !16
  %i.gk = icmp eq i8 %i.gj, 0
  %spec.store.select.i = select i1 %i.gk, ptr null, ptr %.173.i
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.2.i = phi ptr [ %spec.store.select.i, %bb.ca ], [ null, %bb.bz ] ; 2 uses
  %i.gl = zext i32 %spec.select100.i to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr @cmp_vars, i64 %i.gl
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !16
  store ptr %.2.i, ptr %i.gn, align 8, !tbaa !15
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.by, %bb.bx, %bb.bt, %bb.bf, %bb.ax, %bb.ak
  %.2118.ph.i = phi i64 [ %.1117.i, %bb.bt ], [ %.1117.i, %bb.by ], [ %.1117.i, %bb.bx ], [ %.1117.i, %bb.cb ], [ %.0116165.i, %bb.bf ], [ %.0116165.i, %bb.ax ], [ %.0116165.i, %bb.ak ]
  %.377.ph.i = phi i32 [ %spec.select100.i, %bb.bt ], [ %spec.select100.i, %bb.by ], [ %spec.select100.i, %bb.bx ], [ %spec.select100.i, %bb.cb ], [ %spec.select100.i, %bb.bf ], [ %spec.select100.i, %bb.ax ], [ %i.cv, %bb.ak ]
  %.4.ph.i = phi ptr [ %.173.i, %bb.bt ], [ %.173.i, %bb.by ], [ %.173.i, %bb.bx ], [ %.2.i, %bb.cb ], [ null, %bb.bf ], [ %.072167.i, %bb.ax ], [ %.072167.i, %bb.ak ]
  %i.go = add i32 %.377.ph.i, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.171168.i, i64 24 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !53 ; 2 uses
  %.not92.i = icmp eq ptr %i.gq, null
  br i1 %.not92.i, label %read_config.exit, label %bb.ai, !llvm.loop !49

read_config.exit:                                 ; preds = %bb.cc, %bb.az, %bb.bb, %bb.bh, %bb.bs, %bb.bw
  %i.gr = phi i1 [ true, %bb.bw ], [ true, %bb.bh ], [ true, %bb.bb ], [ true, %bb.az ], [ true, %bb.bs ], [ false, %bb.cc ]
  %i.gs = phi i1 [ false, %bb.bw ], [ false, %bb.bh ], [ true, %bb.bb ], [ true, %bb.az ], [ false, %bb.bs ], [ false, %bb.cc ]
  %.pr = load i32, ptr @opt_verbosity, align 4, !tbaa !17 ; 3 uses
  %or.cond.i222 = icmp ugt i32 %.pr, 8
  br i1 %or.cond.i222, label %bb.cd, label %set_verbosity.exit

read_config.exit.thread:                          ; preds = %bb.bg
  %or.cond.i222375 = icmp ugt i32 %i.fc, 8
  br i1 %or.cond.i222375, label %.thread239, label %handle_opts_upfront.exit.thread

bb.cd:                                            ; preds = %read_config.exit
  %i.gt = icmp slt i32 %.pr, 3
  br i1 %i.gt, label %.thread239, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gu = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.gv = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gu, ptr noundef nonnull @.str.403, ptr noundef nonnull @__func__.set_verbosity, ptr noundef nonnull @.str.351, i32 noundef 829, ptr noundef nonnull @.str.352, i32 noundef %.pr, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.thread239

set_verbosity.exit:                               ; preds = %read_config.exit
  br i1 %i.gr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %set_verbosity.exit
  br i1 %i.gs, label %.thread239, label %handle_opts_upfront.exit.thread

.thread239:                                       ; preds = %read_config.exit.thread, %bb.ce, %bb.cd, %bb.cf
  %i.gw = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.gx = call i32 @BIO_puts(ptr noundef %i.gw, ptr noundef nonnull @.str.359) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.cg:                                            ; preds = %set_verbosity.exit, %bb.r, %bb.p, %bb.o
  %.1125 = phi i32 [ 1, %set_verbosity.exit ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.o ]
  %i.gy = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.gz = call i64 @BIO_ctrl(ptr noundef %i.gy, i32 noundef 11, i64 noundef 0, ptr noundef null) #12 ; 0 uses
  %i.ha = call ptr @app_get0_libctx() #12
  %i.hb = call ptr @app_get0_propq() #12
  %i.hc = call ptr @OSSL_CMP_CTX_new(ptr noundef %i.ha, ptr noundef %i.hb) #12 ; 2 uses
  store ptr %i.hc, ptr @cmp_ctx, align 8, !tbaa !31
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %handle_opts_upfront.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.he = call ptr @opt_init(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @cmp_options) #12
  store ptr %i.he, ptr @prog, align 8, !tbaa !15
  %2 = call i32 @opt_next() #12                   ; 2 uses
  %.not19.i = icmp eq i32 %2, 0
  br i1 %.not19.i, label %._crit_edge.i225, label %.lr.ph.i223

.lr.ph.i223:                                      ; preds = %bb.ch, %bb.hi
  %3 = phi i32 [ %4, %bb.hi ], [ %2, %bb.ch ]     ; 4 uses
  switch i32 %3, label %bb.hi [
    i32 1543, label %bb.gz
    i32 -1, label %set_verbosity.exit.thread.i
    i32 1, label %bb.ci
    i32 1551, label %bb.hh
    i32 1550, label %bb.hg
    i32 4, label %bb.cj
    i32 34, label %bb.cm
    i32 35, label %bb.cn
    i32 36, label %bb.co
    i32 37, label %bb.cp
    i32 38, label %bb.cq
    i32 39, label %bb.cr
    i32 40, label %bb.cu
    i32 41, label %bb.cv
    i32 1504, label %bb.cw
    i32 1505, label %bb.cx
    i32 1506, label %bb.cy
    i32 1507, label %bb.cz
    i32 1508, label %bb.da
    i32 1509, label %bb.db
    i32 1510, label %bb.dc
    i32 60, label %bb.dd
    i32 61, label %bb.de
    i32 62, label %bb.df
    i32 63, label %bb.dg
    i32 64, label %bb.dh
    i32 65, label %bb.di
    i32 66, label %bb.dj
    i32 67, label %bb.dk
    i32 68, label %bb.dl
    i32 69, label %bb.dm
    i32 42, label %bb.dn
    i32 43, label %bb.do
    i32 44, label %bb.dp
    i32 45, label %bb.dq
    i32 46, label %bb.dr
    i32 47, label %bb.ds
    i32 48, label %bb.dt
    i32 49, label %bb.du
    i32 50, label %bb.dv
    i32 51, label %bb.dw
    i32 52, label %bb.dx
    i32 53, label %bb.dy
    i32 54, label %bb.dz
    i32 55, label %bb.ea
    i32 56, label %bb.eb
    i32 57, label %bb.ec
    i32 58, label %bb.ed
    i32 59, label %bb.ee
    i32 1549, label %bb.hf
    i32 1548, label %bb.he
    i32 2001, label %bb.ef
    i32 2002, label %bb.ef
    i32 2003, label %bb.ef
    i32 2004, label %bb.ef
    i32 2029, label %bb.ef
    i32 2005, label %bb.ef
    i32 2006, label %bb.ef
    i32 2007, label %bb.ef
    i32 2008, label %bb.ef
    i32 2009, label %bb.ef
    i32 2010, label %bb.ef
    i32 2011, label %bb.ef
    i32 2012, label %bb.ef
    i32 2013, label %bb.ef
    i32 2014, label %bb.ef
    i32 2015, label %bb.ef
    i32 2016, label %bb.ef
    i32 2017, label %bb.ef
    i32 2018, label %bb.ef
    i32 2019, label %bb.ef
    i32 2020, label %bb.ef
    i32 2021, label %bb.ef
    i32 2022, label %bb.ef
    i32 2023, label %bb.ef
    i32 2024, label %bb.ef
    i32 2025, label %bb.ef
    i32 2026, label %bb.ef
    i32 2027, label %bb.ef
    i32 2028, label %bb.ef
    i32 2030, label %bb.ef
    i32 5, label %bb.eg
    i32 6, label %bb.eh
    i32 7, label %bb.ei
    i32 8, label %bb.ej
    i32 9, label %bb.ek
    i32 10, label %bb.el
    i32 11, label %bb.em
    i32 12, label %bb.en
    i32 13, label %bb.eo
    i32 14, label %bb.ep
    i32 15, label %bb.eq
    i32 16, label %bb.er
    i32 17, label %bb.es
    i32 18, label %bb.et
    i32 19, label %bb.eu
    i32 20, label %bb.ev
    i32 21, label %bb.ew
    i32 22, label %bb.ex
    i32 23, label %bb.ey
    i32 24, label %bb.fb
    i32 25, label %bb.fc
    i32 26, label %bb.fd
    i32 27, label %bb.fe
    i32 28, label %bb.ff
    i32 29, label %bb.fg
    i32 30, label %bb.fh
    i32 33, label %bb.fi
    i32 31, label %bb.fl
    i32 32, label %bb.fm
    i32 70, label %bb.fn
    i32 71, label %bb.fo
    i32 72, label %bb.fp
    i32 73, label %bb.fq
    i32 1547, label %bb.hd
    i32 1546, label %bb.hc
    i32 1601, label %bb.fr
    i32 1602, label %bb.fr
    i32 1604, label %bb.fr
    i32 1603, label %bb.fr
    i32 1545, label %bb.hb
    i32 1544, label %bb.ha
    i32 1501, label %bb.fs
    i32 1502, label %bb.fs
    i32 1511, label %bb.ft
    i32 1512, label %bb.fu
    i32 1513, label %bb.fv
    i32 1514, label %bb.fw
    i32 1515, label %bb.fx
    i32 1516, label %bb.fy
    i32 1517, label %bb.fz
    i32 1518, label %bb.ga
    i32 1519, label %bb.gb
    i32 1520, label %bb.gc
    i32 1521, label %bb.gd
    i32 1522, label %bb.ge
    i32 1523, label %bb.gf
    i32 1524, label %bb.gg
    i32 1525, label %bb.gh
    i32 1526, label %bb.gi
    i32 1527, label %bb.gj
    i32 1528, label %bb.gk
    i32 1529, label %bb.gl
    i32 1530, label %bb.gm
    i32 1531, label %bb.gn
    i32 1532, label %bb.go
    i32 1533, label %bb.gp
    i32 1534, label %bb.gq
    i32 1535, label %bb.gr
    i32 1536, label %bb.gs
    i32 1537, label %bb.gt
    i32 1538, label %bb.gu
    i32 1539, label %bb.gv
    i32 1540, label %bb.gw
    i32 1541, label %bb.gx
    i32 1542, label %bb.gy
  ]

set_verbosity.exit.thread.i:                      ; preds = %bb.fs, %bb.fr, %bb.ef, %.lr.ph.i223, %._crit_edge.i225, %bb.fk, %bb.fj, %bb.fa, %bb.ez, %bb.ct, %bb.cs, %bb.cl, %bb.ck
  %i.hf = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.hg = load ptr, ptr @prog, align 8, !tbaa !15
  %i.hh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hf, ptr noundef nonnull @.str.404, ptr noundef %i.hg) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ci:                                            ; preds = %.lr.ph.i223
  call void @opt_help(ptr noundef nonnull @cmp_options) #12
  br label %handle_opts_upfront.exit.thread

bb.cj:                                            ; preds = %.lr.ph.i223
  %i.hi = call i32 @opt_int_arg() #12             ; 3 uses
  %or.cond.i.i230 = icmp ugt i32 %i.hi, 8
  br i1 %or.cond.i.i230, label %bb.ck, label %set_verbosity.exit.i231

bb.ck:                                            ; preds = %bb.cj
  %i.hj = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.hk = icmp slt i32 %i.hj, 3
  br i1 %i.hk, label %set_verbosity.exit.thread.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hl = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.hm = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hl, ptr noundef nonnull @.str.403, ptr noundef nonnull @__func__.set_verbosity, ptr noundef nonnull @.str.351, i32 noundef 829, ptr noundef nonnull @.str.352, i32 noundef %i.hi, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %set_verbosity.exit.thread.i

set_verbosity.exit.i231:                          ; preds = %bb.cj
  store i32 %i.hi, ptr @opt_verbosity, align 4, !tbaa !17
  br label %bb.hi

bb.cm:                                            ; preds = %.lr.ph.i223
  %i.hn = call fastcc ptr @opt_str()
  store ptr %i.hn, ptr @opt_server, align 8, !tbaa !15
  br label %bb.hi

bb.cn:                                            ; preds = %.lr.ph.i223
  %i.ho = call fastcc ptr @opt_str()
  store ptr %i.ho, ptr @opt_proxy, align 8, !tbaa !15
  br label %bb.hi

bb.co:                                            ; preds = %.lr.ph.i223
  %i.hp = call fastcc ptr @opt_str()
  store ptr %i.hp, ptr @opt_no_proxy, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@cmp_main:bb.a
  store ptr %i.hr, ptr @opt_path, align 8, !tbaa !15
  br label %bb.hi

bb.cr:                                            ; preds = %.lr.ph.i223
  %i.hs = call i32 @opt_int_arg() #12             ; 2 uses
  store i32 %i.hs, ptr @opt_keep_alive, align 4, !tbaa !17
  %i.ht = icmp sgt i32 %i.hs, 2
  br i1 %i.ht, label %bb.cs, label %bb.hi

bb.cs:                                            ; preds = %bb.cr
  %i.hu = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.hv = icmp slt i32 %i.hu, 3
  br i1 %i.hv, label %set_verbosity.exit.thread.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hw = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.hx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hw, ptr noundef nonnull @.str.405, ptr noundef nonnull @__func__.get_opts, ptr noundef nonnull @.str.351, i32 noundef 2902, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %set_verbosity.exit.thread.i

bb.cu:                                            ; preds = %.lr.ph.i223
  %i.hy = call i32 @opt_int_arg() #12
  store i32 %i.hy, ptr @opt_msg_timeout, align 4, !tbaa !17
  br label %bb.hi

bb.cv:                                            ; preds = %.lr.ph.i223
  %i.hz = call i32 @opt_int_arg() #12
  store i32 %i.hz, ptr @opt_total_timeout, align 4, !tbaa !17
  br label %bb.hi

bb.cw:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_tls_used, align 4, !tbaa !17
  br label %bb.hi

bb.cx:                                            ; preds = %.lr.ph.i223
  %i.ia = call fastcc ptr @opt_str()
  store ptr %i.ia, ptr @opt_tls_cert, align 8, !tbaa !15
  br label %bb.hi

bb.cy:                                            ; preds = %.lr.ph.i223
  %i.ib = call fastcc ptr @opt_str()
  store ptr %i.ib, ptr @opt_tls_key, align 8, !tbaa !15
  br label %bb.hi

bb.cz:                                            ; preds = %.lr.ph.i223
  %i.ic = call fastcc ptr @opt_str()
  store ptr %i.ic, ptr @opt_tls_keypass, align 8, !tbaa !15
  br label %bb.hi

bb.da:                                            ; preds = %.lr.ph.i223
  %i.id = call fastcc ptr @opt_str()
  store ptr %i.id, ptr @opt_tls_extra, align 8, !tbaa !15
  br label %bb.hi

bb.db:                                            ; preds = %.lr.ph.i223
  %i.ie = call fastcc ptr @opt_str()
  store ptr %i.ie, ptr @opt_tls_trusted, align 8, !tbaa !15
  br label %bb.hi

bb.dc:                                            ; preds = %.lr.ph.i223
  %i.if = call fastcc ptr @opt_str()
  store ptr %i.if, ptr @opt_tls_host, align 8, !tbaa !15
  br label %bb.hi

bb.dd:                                            ; preds = %.lr.ph.i223
  %i.ig = call fastcc ptr @opt_str()
  store ptr %i.ig, ptr @opt_ref, align 8, !tbaa !15
  br label %bb.hi

bb.de:                                            ; preds = %.lr.ph.i223
  %i.ih = call fastcc ptr @opt_str()
  store ptr %i.ih, ptr @opt_secret, align 8, !tbaa !15
  br label %bb.hi

bb.df:                                            ; preds = %.lr.ph.i223
  %i.ii = call fastcc ptr @opt_str()
  store ptr %i.ii, ptr @opt_cert, align 8, !tbaa !15
  br label %bb.hi

bb.dg:                                            ; preds = %.lr.ph.i223
  %i.ij = call fastcc ptr @opt_str()
  store ptr %i.ij, ptr @opt_own_trusted, align 8, !tbaa !15
  br label %bb.hi

bb.dh:                                            ; preds = %.lr.ph.i223
  %i.ik = call fastcc ptr @opt_str()
  store ptr %i.ik, ptr @opt_key, align 8, !tbaa !15
  br label %bb.hi

bb.di:                                            ; preds = %.lr.ph.i223
  %i.il = call fastcc ptr @opt_str()
  store ptr %i.il, ptr @opt_keypass, align 8, !tbaa !15
  br label %bb.hi

bb.dj:                                            ; preds = %.lr.ph.i223
  %i.im = call fastcc ptr @opt_str()
  store ptr %i.im, ptr @opt_digest, align 8, !tbaa !15
  br label %bb.hi

bb.dk:                                            ; preds = %.lr.ph.i223
  %i.in = call fastcc ptr @opt_str()
  store ptr %i.in, ptr @opt_mac, align 8, !tbaa !15
  br label %bb.hi

bb.dl:                                            ; preds = %.lr.ph.i223
  %i.io = call fastcc ptr @opt_str()
  store ptr %i.io, ptr @opt_extracerts, align 8, !tbaa !15
  br label %bb.hi

bb.dm:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_unprotected_requests, align 4, !tbaa !17
  br label %bb.hi

bb.dn:                                            ; preds = %.lr.ph.i223
  %i.ip = call fastcc ptr @opt_str()
  store ptr %i.ip, ptr @opt_trusted, align 8, !tbaa !15
  br label %bb.hi

bb.do:                                            ; preds = %.lr.ph.i223
  %i.iq = call fastcc ptr @opt_str()
  store ptr %i.iq, ptr @opt_untrusted, align 8, !tbaa !15
  br label %bb.hi

bb.dp:                                            ; preds = %.lr.ph.i223
  %i.ir = call fastcc ptr @opt_str()
  store ptr %i.ir, ptr @opt_srvcert, align 8, !tbaa !15
  br label %bb.hi

bb.dq:                                            ; preds = %.lr.ph.i223
  %i.is = call fastcc ptr @opt_str()
  store ptr %i.is, ptr @opt_expect_sender, align 8, !tbaa !15
  br label %bb.hi

bb.dr:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_ignore_keyusage, align 4, !tbaa !17
  br label %bb.hi

bb.ds:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_unprotected_errors, align 4, !tbaa !17
  br label %bb.hi

bb.dt:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_ta_in_ip_extracerts, align 4, !tbaa !17
  br label %bb.hi

bb.du:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_no_cache_extracerts, align 4, !tbaa !17
  br label %bb.hi

bb.dv:                                            ; preds = %.lr.ph.i223
  %i.it = call fastcc ptr @opt_str()
  store ptr %i.it, ptr @opt_srvcertout, align 8, !tbaa !15
  br label %bb.hi

bb.dw:                                            ; preds = %.lr.ph.i223
  %i.iu = call fastcc ptr @opt_str()
  store ptr %i.iu, ptr @opt_extracertsout, align 8, !tbaa !15
  br label %bb.hi

bb.dx:                                            ; preds = %.lr.ph.i223
  %i.iv = call fastcc ptr @opt_str()
  store ptr %i.iv, ptr @opt_cacertsout, align 8, !tbaa !15
  br label %bb.hi

bb.dy:                                            ; preds = %.lr.ph.i223
  %i.iw = call fastcc ptr @opt_str()
  store ptr %i.iw, ptr @opt_oldwithold, align 8, !tbaa !15
  br label %bb.hi

bb.dz:                                            ; preds = %.lr.ph.i223
  %i.ix = call fastcc ptr @opt_str()
  store ptr %i.ix, ptr @opt_newwithnew, align 8, !tbaa !15
  br label %bb.hi

bb.ea:                                            ; preds = %.lr.ph.i223
  %i.iy = call fastcc ptr @opt_str()
  store ptr %i.iy, ptr @opt_newwithold, align 8, !tbaa !15
  br label %bb.hi

bb.eb:                                            ; preds = %.lr.ph.i223
  %i.iz = call fastcc ptr @opt_str()
  store ptr %i.iz, ptr @opt_oldwithnew, align 8, !tbaa !15
  br label %bb.hi

bb.ec:                                            ; preds = %.lr.ph.i223
  %i.ja = call fastcc ptr @opt_str()
  store ptr %i.ja, ptr @opt_crlcert, align 8, !tbaa !15
  br label %bb.hi

bb.ed:                                            ; preds = %.lr.ph.i223
  %i.jb = call fastcc ptr @opt_str()
  store ptr %i.jb, ptr @opt_oldcrl, align 8, !tbaa !15
  br label %bb.hi

bb.ee:                                            ; preds = %.lr.ph.i223
  %i.jc = call fastcc ptr @opt_str()
  store ptr %i.jc, ptr @opt_crlout, align 8, !tbaa !15
  br label %bb.hi

bb.ef:                                            ; preds = %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223
  %i.jd = load ptr, ptr @vpm, align 8, !tbaa !22
  %i.je = call i32 @opt_verify(i32 noundef %3, ptr noundef %i.jd) #12
  %.not15.i = icmp eq i32 %i.je, 0
  br i1 %.not15.i, label %set_verbosity.exit.thread.i, label %bb.hi

bb.eg:                                            ; preds = %.lr.ph.i223
  %i.jf = call fastcc ptr @opt_str()
  store ptr %i.jf, ptr @opt_cmd_s, align 8, !tbaa !15
  br label %bb.hi

bb.eh:                                            ; preds = %.lr.ph.i223
  %i.jg = call fastcc ptr @opt_str()
  store ptr %i.jg, ptr @opt_infotype_s, align 8, !tbaa !15
  br label %bb.hi

bb.ei:                                            ; preds = %.lr.ph.i223
  %i.jh = call fastcc ptr @opt_str()
  store ptr %i.jh, ptr @opt_profile, align 8, !tbaa !15
  br label %bb.hi

bb.ej:                                            ; preds = %.lr.ph.i223
  %i.ji = call fastcc ptr @opt_str()
  store ptr %i.ji, ptr @opt_geninfo, align 8, !tbaa !15
  br label %bb.hi

bb.ek:                                            ; preds = %.lr.ph.i223
  %i.jj = call fastcc ptr @opt_str()
  store ptr %i.jj, ptr @opt_template, align 8, !tbaa !15
  br label %bb.hi

bb.el:                                            ; preds = %.lr.ph.i223
  %i.jk = call fastcc ptr @opt_str()
  store ptr %i.jk, ptr @opt_keyspec, align 8, !tbaa !15
  br label %bb.hi

bb.em:                                            ; preds = %.lr.ph.i223
  %i.jl = call fastcc ptr @opt_str()
  store ptr %i.jl, ptr @opt_newkey, align 8, !tbaa !15
  br label %bb.hi

bb.en:                                            ; preds = %.lr.ph.i223
  %i.jm = call fastcc ptr @opt_str()
  store ptr %i.jm, ptr @opt_newkeypass, align 8, !tbaa !15
  br label %bb.hi

bb.eo:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_centralkeygen, align 4, !tbaa !17
  br label %bb.hi

bb.ep:                                            ; preds = %.lr.ph.i223
  %i.jn = call fastcc ptr @opt_str()
  store ptr %i.jn, ptr @opt_newkeyout, align 8, !tbaa !15
  br label %bb.hi

bb.eq:                                            ; preds = %.lr.ph.i223
  %i.jo = call fastcc ptr @opt_str()
  store ptr %i.jo, ptr @opt_subject, align 8, !tbaa !15
  br label %bb.hi

bb.er:                                            ; preds = %.lr.ph.i223
  %i.jp = call i32 @opt_int_arg() #12
  store i32 %i.jp, ptr @opt_days, align 4, !tbaa !17
  br label %bb.hi

bb.es:                                            ; preds = %.lr.ph.i223
  %i.jq = call fastcc ptr @opt_str()
  store ptr %i.jq, ptr @opt_reqexts, align 8, !tbaa !15
  br label %bb.hi

bb.et:                                            ; preds = %.lr.ph.i223
  %i.jr = call fastcc ptr @opt_str()
  store ptr %i.jr, ptr @opt_sans, align 8, !tbaa !15
  br label %bb.hi

bb.eu:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_san_nodefault, align 4, !tbaa !17
  br label %bb.hi

bb.ev:                                            ; preds = %.lr.ph.i223
  %i.js = call fastcc ptr @opt_str()
  store ptr %i.js, ptr @opt_policies, align 8, !tbaa !15
  br label %bb.hi

bb.ew:                                            ; preds = %.lr.ph.i223
  %i.jt = call fastcc ptr @opt_str()
  store ptr %i.jt, ptr @opt_policy_oids, align 8, !tbaa !15
  br label %bb.hi

bb.ex:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_policy_oids_critical, align 4, !tbaa !17
  br label %bb.hi

bb.ey:                                            ; preds = %.lr.ph.i223
  %i.ju = call i32 @opt_int_arg() #12             ; 2 uses
  store i32 %i.ju, ptr @opt_popo, align 4, !tbaa !17
  %i.jv = add i32 %i.ju, -3
  %or.cond.i229 = icmp ult i32 %i.jv, -4
  br i1 %or.cond.i229, label %bb.ez, label %bb.hi

bb.ez:                                            ; preds = %bb.ey
  %i.jw = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.jx = icmp slt i32 %i.jw, 3
  br i1 %i.jx, label %set_verbosity.exit.thread.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.jy = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.jz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.jy, ptr noundef nonnull @.str.406, ptr noundef nonnull @__func__.get_opts, ptr noundef nonnull @.str.351, i32 noundef 3084, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %set_verbosity.exit.thread.i

bb.fb:                                            ; preds = %.lr.ph.i223
  %i.ka = call fastcc ptr @opt_str()
  store ptr %i.ka, ptr @opt_csr, align 8, !tbaa !15
  br label %bb.hi

bb.fc:                                            ; preds = %.lr.ph.i223
  %i.kb = call fastcc ptr @opt_str()
  store ptr %i.kb, ptr @opt_out_trusted, align 8, !tbaa !15
  br label %bb.hi

bb.fd:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_implicit_confirm, align 4, !tbaa !17
  br label %bb.hi

bb.fe:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_disable_confirm, align 4, !tbaa !17
  br label %bb.hi

bb.ff:                                            ; preds = %.lr.ph.i223
  %i.kc = call fastcc ptr @opt_str()
  store ptr %i.kc, ptr @opt_certout, align 8, !tbaa !15
  br label %bb.hi

bb.fg:                                            ; preds = %.lr.ph.i223
  %i.kd = call fastcc ptr @opt_str()
  store ptr %i.kd, ptr @opt_chainout, align 8, !tbaa !15
  br label %bb.hi

bb.fh:                                            ; preds = %.lr.ph.i223
  %i.ke = call fastcc ptr @opt_str()
  store ptr %i.ke, ptr @opt_oldcert, align 8, !tbaa !15
  br label %bb.hi

bb.fi:                                            ; preds = %.lr.ph.i223
  %i.kf = call i32 @opt_int_arg() #12             ; 3 uses
  store i32 %i.kf, ptr @opt_revreason, align 4, !tbaa !17
  %i.kg = add i32 %i.kf, -11
  %or.cond3.i227 = icmp ult i32 %i.kg, -12
  %i.kh = icmp eq i32 %i.kf, 7
  %or.cond5.i228 = or i1 %i.kh, %or.cond3.i227
  br i1 %or.cond5.i228, label %bb.fj, label %bb.hi

bb.fj:                                            ; preds = %bb.fi
  %i.ki = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.kj = icmp slt i32 %i.ki, 3
  br i1 %i.kj, label %set_verbosity.exit.thread.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.kk = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.kl = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.kk, ptr noundef nonnull @.str.407, ptr noundef nonnull @__func__.get_opts, ptr noundef nonnull @.str.351, i32 noundef 3114, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %set_verbosity.exit.thread.i

bb.fl:                                            ; preds = %.lr.ph.i223
  %i.km = call fastcc ptr @opt_str()
  store ptr %i.km, ptr @opt_issuer, align 8, !tbaa !15
  br label %bb.hi

bb.fm:                                            ; preds = %.lr.ph.i223
  %i.kn = call fastcc ptr @opt_str()
  store ptr %i.kn, ptr @opt_serial, align 8, !tbaa !15
  br label %bb.hi

bb.fn:                                            ; preds = %.lr.ph.i223
  %i.ko = call fastcc ptr @opt_str()
  store ptr %i.ko, ptr @opt_certform_s, align 8, !tbaa !15
  br label %bb.hi

bb.fo:                                            ; preds = %.lr.ph.i223
  %i.kp = call fastcc ptr @opt_str()
  store ptr %i.kp, ptr @opt_crlform_s, align 8, !tbaa !15
  br label %bb.hi

bb.fp:                                            ; preds = %.lr.ph.i223
  %i.kq = call fastcc ptr @opt_str()
  store ptr %i.kq, ptr @opt_keyform_s, align 8, !tbaa !15
  br label %bb.hi

bb.fq:                                            ; preds = %.lr.ph.i223
  %i.kr = call fastcc ptr @opt_str()
  store ptr %i.kr, ptr @opt_otherpass, align 8, !tbaa !15
  br label %bb.hi

bb.fr:                                            ; preds = %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223, %.lr.ph.i223
  %i.ks = call i32 @opt_provider(i32 noundef %3) #12
  %.not14.i = icmp eq i32 %i.ks, 0
  br i1 %.not14.i, label %set_verbosity.exit.thread.i, label %bb.hi

bb.fs:                                            ; preds = %.lr.ph.i223, %.lr.ph.i223
  %i.kt = call i32 @opt_rand(i32 noundef %3) #12
  %.not13.i = icmp eq i32 %i.kt, 0
  br i1 %.not13.i, label %set_verbosity.exit.thread.i, label %bb.hi

bb.ft:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_batch, align 4, !tbaa !17
  br label %bb.hi

bb.fu:                                            ; preds = %.lr.ph.i223
  %i.ku = call i32 @opt_int_arg() #12
  store i32 %i.ku, ptr @opt_repeat, align 4, !tbaa !17
  br label %bb.hi

bb.fv:                                            ; preds = %.lr.ph.i223
  %i.kv = call fastcc ptr @opt_str()
  store ptr %i.kv, ptr @opt_reqin, align 8, !tbaa !15
  br label %bb.hi

bb.fw:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_reqin_new_tid, align 4, !tbaa !17
  br label %bb.hi

bb.fx:                                            ; preds = %.lr.ph.i223
  %i.kw = call fastcc ptr @opt_str()
  store ptr %i.kw, ptr @opt_reqout, align 8, !tbaa !15
  br label %bb.hi

bb.fy:                                            ; preds = %.lr.ph.i223
  %i.kx = call fastcc ptr @opt_str()
  store ptr %i.kx, ptr @opt_reqout_only, align 8, !tbaa !15
  br label %bb.hi

bb.fz:                                            ; preds = %.lr.ph.i223
  %i.ky = call fastcc ptr @opt_str()
  store ptr %i.ky, ptr @opt_rspin, align 8, !tbaa !15
  br label %bb.hi

bb.ga:                                            ; preds = %.lr.ph.i223
  %i.kz = call fastcc ptr @opt_str()
  store ptr %i.kz, ptr @opt_rspout, align 8, !tbaa !15
  br label %bb.hi

bb.gb:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_use_mock_srv, align 4, !tbaa !17
  br label %bb.hi

bb.gc:                                            ; preds = %.lr.ph.i223
  %i.la = call fastcc ptr @opt_str()
  store ptr %i.la, ptr @opt_port, align 8, !tbaa !15
  br label %bb.hi

bb.gd:                                            ; preds = %.lr.ph.i223
  %i.lb = call i32 @opt_int_arg() #12
  store i32 %i.lb, ptr @opt_max_msgs, align 4, !tbaa !17
  br label %bb.hi

bb.ge:                                            ; preds = %.lr.ph.i223
  %i.lc = call fastcc ptr @opt_str()
  store ptr %i.lc, ptr @opt_srv_ref, align 8, !tbaa !15
  br label %bb.hi

bb.gf:                                            ; preds = %.lr.ph.i223
  %i.ld = call fastcc ptr @opt_str()
  store ptr %i.ld, ptr @opt_srv_secret, align 8, !tbaa !15
  br label %bb.hi

bb.gg:                                            ; preds = %.lr.ph.i223
  %i.le = call fastcc ptr @opt_str()
  store ptr %i.le, ptr @opt_srv_cert, align 8, !tbaa !15
  br label %bb.hi

bb.gh:                                            ; preds = %.lr.ph.i223
  %i.lf = call fastcc ptr @opt_str()
  store ptr %i.lf, ptr @opt_srv_key, align 8, !tbaa !15
  br label %bb.hi

bb.gi:                                            ; preds = %.lr.ph.i223
  %i.lg = call fastcc ptr @opt_str()
  store ptr %i.lg, ptr @opt_srv_keypass, align 8, !tbaa !15
  br label %bb.hi

bb.gj:                                            ; preds = %.lr.ph.i223
  %i.lh = call fastcc ptr @opt_str()
  store ptr %i.lh, ptr @opt_srv_trusted, align 8, !tbaa !15
  br label %bb.hi

bb.gk:                                            ; preds = %.lr.ph.i223
  %i.li = call fastcc ptr @opt_str()
  store ptr %i.li, ptr @opt_srv_untrusted, align 8, !tbaa !15
  br label %bb.hi

bb.gl:                                            ; preds = %.lr.ph.i223
  %i.lj = call fastcc ptr @opt_str()
  store ptr %i.lj, ptr @opt_ref_cert, align 8, !tbaa !15
  br label %bb.hi

bb.gm:                                            ; preds = %.lr.ph.i223
  %i.lk = call fastcc ptr @opt_str()
  store ptr %i.lk, ptr @opt_rsp_cert, align 8, !tbaa !15
  br label %bb.hi

bb.gn:                                            ; preds = %.lr.ph.i223
  %i.ll = call fastcc ptr @opt_str()
  store ptr %i.ll, ptr @opt_rsp_key, align 8, !tbaa !15
  br label %bb.hi

bb.go:                                            ; preds = %.lr.ph.i223
  %i.lm = call fastcc ptr @opt_str()
  store ptr %i.lm, ptr @opt_rsp_keypass, align 8, !tbaa !15
  br label %bb.hi

bb.gp:                                            ; preds = %.lr.ph.i223
  %i.ln = call fastcc ptr @opt_str()
  store ptr %i.ln, ptr @opt_rsp_crl, align 8, !tbaa !15
  br label %bb.hi

bb.gq:                                            ; preds = %.lr.ph.i223
  %i.lo = call fastcc ptr @opt_str()
  store ptr %i.lo, ptr @opt_rsp_extracerts, align 8, !tbaa !15
  br label %bb.hi

bb.gr:                                            ; preds = %.lr.ph.i223
  %i.lp = call fastcc ptr @opt_str()
  store ptr %i.lp, ptr @opt_rsp_capubs, align 8, !tbaa !15
  br label %bb.hi

bb.gs:                                            ; preds = %.lr.ph.i223
  %i.lq = call fastcc ptr @opt_str()
  store ptr %i.lq, ptr @opt_rsp_newwithnew, align 8, !tbaa !15
  br label %bb.hi

bb.gt:                                            ; preds = %.lr.ph.i223
  %i.lr = call fastcc ptr @opt_str()
  store ptr %i.lr, ptr @opt_rsp_newwithold, align 8, !tbaa !15
  br label %bb.hi

bb.gu:                                            ; preds = %.lr.ph.i223
  %i.ls = call fastcc ptr @opt_str()
  store ptr %i.ls, ptr @opt_rsp_oldwithnew, align 8, !tbaa !15
  br label %bb.hi

bb.gv:                                            ; preds = %.lr.ph.i223
  %i.lt = call i32 @opt_int_arg() #12
  store i32 %i.lt, ptr @opt_poll_count, align 4, !tbaa !17
  br label %bb.hi

bb.gw:                                            ; preds = %.lr.ph.i223
  %i.lu = call i32 @opt_int_arg() #12
  store i32 %i.lu, ptr @opt_check_after, align 4, !tbaa !17
  br label %bb.hi

bb.gx:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_grant_implicitconf, align 4, !tbaa !17
  br label %bb.hi

bb.gy:                                            ; preds = %.lr.ph.i223
  %i.lv = call i32 @opt_int_arg() #12
  store i32 %i.lv, ptr @opt_pkistatus, align 4, !tbaa !17
  br label %bb.hi

bb.gz:                                            ; preds = %.lr.ph.i223
  %i.lw = call i32 @opt_int_arg() #12
  store i32 %i.lw, ptr @opt_failure, align 4, !tbaa !17
  br label %bb.hi

bb.ha:                                            ; preds = %.lr.ph.i223
  %i.lx = call i32 @opt_int_arg() #12
  store i32 %i.lx, ptr @opt_failurebits, align 4, !tbaa !17
  br label %bb.hi

bb.hb:                                            ; preds = %.lr.ph.i223
  %i.ly = call fastcc ptr @opt_str()
  store ptr %i.ly, ptr @opt_statusstring, align 8, !tbaa !15
  br label %bb.hi

bb.hc:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_send_error, align 4, !tbaa !17
  br label %bb.hi

bb.hd:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_send_unprotected, align 4, !tbaa !17
  br label %bb.hi

bb.he:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_send_unprot_err, align 4, !tbaa !17
  br label %bb.hi

bb.hf:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_accept_unprotected, align 4, !tbaa !17
  br label %bb.hi

bb.hg:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_accept_unprot_err, align 4, !tbaa !17
  br label %bb.hi

bb.hh:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_accept_raverified, align 4, !tbaa !17
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %set_verbosity.exit.i231, %.lr.ph.i223
  %4 = call i32 @opt_next() #12                   ; 2 uses
  %.not.i224 = icmp eq i32 %4, 0
  br i1 %.not.i224, label %._crit_edge.i225, label %.lr.ph.i223, !llvm.loop !50

._crit_edge.i225:                                 ; preds = %bb.hi, %bb.ch
  %i.lz = call i32 @opt_check_rest_arg(ptr noundef null) #12
  %.not12.i = icmp eq i32 %i.lz, 0
  br i1 %.not12.i, label %set_verbosity.exit.thread.i, label %get_opts.exit

get_opts.exit:                                    ; preds = %._crit_edge.i225
  %i.ma = call i32 @app_RAND_load() #12
  %.not162 = icmp eq i32 %i.ma, 0
  br i1 %.not162, label %handle_opts_upfront.exit.thread, label %bb.hj

bb.hj:                                            ; preds = %get_opts.exit
  %i.mb = load i32, ptr @opt_batch, align 4, !tbaa !17
  %.not163 = icmp eq i32 %i.mb, 0
  br i1 %.not163, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.mc = call ptr @UI_null() #12
  %i.md = call i32 @set_base_ui_method(ptr noundef %i.mc) #12 ; 0 uses
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.me = load ptr, ptr @cmp_ctx, align 8, !tbaa !31
  %i.mf = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.mg = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %i.me, i32 noundef 0, i32 noundef %i.mf) #12 ; 0 uses
  %i.mh = load ptr, ptr @cmp_ctx, align 8, !tbaa !31
  %i.mi = call i32 @OSSL_CMP_CTX_set_log_cb(ptr noundef %i.mh, ptr noundef nonnull @print_to_bio_out) #12
  %.not164 = icmp eq i32 %i.mi, 0
  br i1 %.not164, label %bb.hm, label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  %i.mj = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.mk = icmp slt i32 %i.mj, 3
  br i1 %i.mk, label %handle_opts_upfront.exit.thread, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.ml = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.mm = load ptr, ptr @prog, align 8, !tbaa !15
  %i.mn = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ml, ptr noundef nonnull @.str.360, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3741, ptr noundef nonnull @.str.352, ptr noundef %i.mm, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ho:                                            ; preds = %bb.hl
  %i.mo = load ptr, ptr @opt_tls_cert, align 8, !tbaa !15
  %i.mp = load ptr, ptr @opt_tls_key, align 8
  %i.mq = load ptr, ptr @opt_tls_keypass, align 8
  %i.mr = load ptr, ptr @opt_tls_extra, align 8
  %i.ms = insertelement <4 x ptr> poison, ptr %i.mo, i64 0
  %i.mt = insertelement <4 x ptr> %i.ms, ptr %i.mp, i64 1
  %i.mu = insertelement <4 x ptr> %i.mt, ptr %i.mq, i64 2
  %i.mv = insertelement <4 x ptr> %i.mu, ptr %i.mr, i64 3
  %.fr = freeze <4 x ptr> %i.mv
  %i.mw = load ptr, ptr @opt_tls_trusted, align 8
  %i.mx = icmp eq ptr %i.mw, null
  %i.my = load ptr, ptr @opt_tls_host, align 8
  %i.mz = icmp eq ptr %i.my, null
  %i.na = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.nb = bitcast <4 x i1> %i.na to i4
  %i.nc = icmp eq i4 %i.nb, 0
  %op.rdx = select i1 %i.nc, i1 %i.mx, i1 false
  %op.rdx430 = select i1 %op.rdx, i1 %i.mz, i1 false
  %i.nd = load i32, ptr @opt_tls_used, align 4, !tbaa !17 ; 2 uses
  %i.ne = load i32, ptr @opt_verbosity, align 4
  %i.nf = icmp slt i32 %i.ne, 4                   ; 2 uses
  br i1 %op.rdx430, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  %i.ng = icmp eq i32 %i.nd, 0
  %or.cond43 = select i1 %i.ng, i1 true, i1 %i.nf
  br i1 %or.cond43, label %bb.ht, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.nh = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.ni = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nh, ptr noundef nonnull @.str.361, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3750, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.ht

bb.hr:                                            ; preds = %bb.ho
  %i.nj = icmp ne i32 %i.nd, 0
  %or.cond45 = select i1 %i.nj, i1 true, i1 %i.nf
  br i1 %or.cond45, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.nk = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.nl = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nk, ptr noundef nonnull @.str.363, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3752, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hr, %bb.hs, %bb.hp, %bb.hq
  %i.nm = load ptr, ptr @opt_port, align 8, !tbaa !15
  %.not165 = icmp eq ptr %i.nm, null
  br i1 %.not165, label %bb.ig, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.nn = load i32, ptr @opt_tls_used, align 4, !tbaa !17
  %.not166 = icmp eq i32 %i.nn, 0
  br i1 %.not166, label %bb.hx, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.no = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.np = icmp slt i32 %i.no, 3
  br i1 %i.np, label %handle_opts_upfront.exit.thread, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.nq = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.nr = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nq, ptr noundef nonnull @.str.364, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3756, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.hx:                                            ; preds = %bb.hu
  %i.ns = load ptr, ptr @opt_server, align 8, !tbaa !15
  %i.nt = icmp ne ptr %i.ns, null
  %i.nu = load i32, ptr @opt_use_mock_srv, align 4
  %i.nv = icmp ne i32 %i.nu, 0
  %or.cond11 = select i1 %i.nt, i1 true, i1 %i.nv
  br i1 %or.cond11, label %bb.hy, label %bb.ia

bb.hy:                                            ; preds = %bb.hx
  %i.nw = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.nx = icmp slt i32 %i.nw, 3
  br i1 %i.nx, label %handle_opts_upfront.exit.thread, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.ny = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.nz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ny, ptr noundef nonnull @.str.365, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3760, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ia:                                            ; preds = %bb.hx
  %i.oa = load ptr, ptr @opt_reqin, align 8, !tbaa !15
  %i.ob = icmp ne ptr %i.oa, null
  %i.oc = load ptr, ptr @opt_reqout, align 8
  %i.od = icmp ne ptr %i.oc, null
  %or.cond13 = select i1 %i.ob, i1 true, i1 %i.od
  br i1 %or.cond13, label %bb.ib, label %bb.id

bb.ib:                                            ; preds = %bb.ia
  %i.oe = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.of = icmp slt i32 %i.oe, 3
  br i1 %i.of, label %handle_opts_upfront.exit.thread, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.og = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.oh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.og, ptr noundef nonnull @.str.366, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3764, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.id:                                            ; preds = %bb.ia
  %i.oi = load ptr, ptr @opt_rspin, align 8, !tbaa !15
  %i.oj = icmp ne ptr %i.oi, null
  %i.ok = load ptr, ptr @opt_rspout, align 8
  %i.ol = icmp ne ptr %i.ok, null
  %or.cond15 = select i1 %i.oj, i1 true, i1 %i.ol
  br i1 %or.cond15, label %bb.ie, label %.thread380

bb.ie:                                            ; preds = %bb.id
  %i.om = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.on = icmp slt i32 %i.om, 3
  br i1 %i.on, label %handle_opts_upfront.exit.thread, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.oo = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.op = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.oo, ptr noundef nonnull @.str.367, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3768, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ig:                                            ; preds = %bb.ht
  %.pre = load ptr, ptr @opt_server, align 8, !tbaa !15
  %.pre322.a = load i32, ptr @opt_use_mock_srv, align 4
  %i.oq = icmp ne ptr %.pre, null                 ; 2 uses
  %i.or = icmp ne i32 %.pre322.a, 0               ; 2 uses
  %or.cond17 = select i1 %i.oq, i1 %i.or, i1 false
  br i1 %or.cond17, label %bb.ih, label %.thread380

bb.ih:                                            ; preds = %bb.ig
  %i.os = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.ot = icmp slt i32 %i.os, 3
  br i1 %i.ot, label %handle_opts_upfront.exit.thread, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.ou = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.ov = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ou, ptr noundef nonnull @.str.368, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3774, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

.thread380:                                       ; preds = %bb.id, %bb.ig
  %i.ow = phi i1 [ %i.oq, %bb.ig ], [ false, %bb.id ]
  %i.ox = phi i1 [ %i.or, %bb.ig ], [ false, %bb.id ]
  %.not = xor i1 %i.ow, true
  %or.cond19 = select i1 %.not, i1 true, i1 %i.ox
  %i.oy = load i32, ptr @opt_tls_used, align 4
  %i.oz = icmp ne i32 %i.oy, 0
  %or.cond21 = select i1 %or.cond19, i1 %i.oz, i1 false
  br i1 %or.cond21, label %bb.ij, label %bb.im

bb.ij:                                            ; preds = %.thread380
  %i.pa = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.pb = icmp slt i32 %i.pa, 4
  br i1 %i.pb, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.pc = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.pd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.pc, ptr noundef nonnull @.str.369, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3778, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.il

bb.il:                                            ; preds = %bb.ij, %bb.ik
  store i32 0, ptr @opt_tls_used, align 4, !tbaa !17
  br label %bb.im

bb.im:                                            ; preds = %.thread380, %bb.il
end_hunk_1
