Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cmp?download=true
inline.NumInlined: 70
inline.NumDeleted: 33
begin_hunk_0_@cmp_main:bb.a
  br label %bb.cc

bb.bg:                                            ; preds = %bb.al
  %i.fc = load i32, ptr @opt_verbosity, align 4, !tbaa !847 ; 2 uses
  %i.fd = icmp slt i32 %i.fc, 3
  br i1 %i.fd, label %read_config.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fe = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.ff = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fe, ptr noundef nonnull @.str.395, ptr noundef nonnull @__func__.read_config, ptr noundef nonnull @.str.351, i32 noundef 2784, ptr noundef nonnull @.str.352, i32 noundef %i.cy, ptr noundef nonnull %i.cj, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %read_config.exit

conf_get_string.exit.i:                           ; preds = %bb.be, %bb.ba
  %.1117.i = phi i64 [ %i.em, %bb.ba ], [ %.0116165.i, %bb.be ] ; 8 uses
  %.173.i = phi ptr [ %.072167.i, %bb.ba ], [ %i.fb, %bb.be ] ; 6 uses
  %or.cond9.i = or i1 %spec.select.i, %i.cq
  br i1 %or.cond9.i, label %bb.bi, label %bb.bu

bb.bi:                                            ; preds = %conf_get_string.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.fg = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.c, i64 noundef 81, ptr noundef nonnull @.str.396, ptr noundef nonnull %i.cj) #11 ; 0 uses
  %i.fh = load ptr, ptr @prog, align 8, !tbaa !845
  store ptr %i.fh, ptr %i.b, align 16, !tbaa !845
  store ptr %i.c, ptr %i.ch, align 8, !tbaa !845
  %i.fi = icmp eq i32 %i.cy, 45
  br i1 %i.fi, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fj = load ptr, ptr @conf, align 8, !tbaa !854
  %i.fk = load ptr, ptr @opt_section, align 8, !tbaa !845 ; 3 uses
  %i.fl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fk) #12
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fl
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %bb.bj
  %.0.i106.i = phi ptr [ %i.fm, %bb.bj ], [ %i.fn, %bb.bl ]
  %i.fn = call fastcc ptr @prev_item(ptr noundef nonnull %i.fk, ptr noundef nonnull %.0.i106.i) ; 2 uses
  %.not.i107.i = icmp eq ptr %i.fn, null
  br i1 %.not.i107.i, label %.thread.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fo = call ptr @app_conf_try_string(ptr noundef %i.fj, ptr noundef nonnull @opt_item, ptr noundef nonnull %i.cj) #11 ; 2 uses
  %.not13.i108.i = icmp eq ptr %i.fo, null
  br i1 %.not13.i108.i, label %bb.bk, label %.thread.i, !llvm.loop !878

.thread.i:                                        ; preds = %bb.bl, %bb.bk
  %.010.i109.i = phi ptr [ %i.fo, %bb.bl ], [ null, %bb.bk ]
  store ptr %.010.i109.i, ptr %i.ci, align 16, !tbaa !845
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %.not95.not.i = icmp eq i64 %.1117.i, 0
  br i1 %.not95.not.i, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.thread.i
  %.0131.i = phi i32 [ 3, %.thread.i ], [ 2, %bb.bm ]
  %i.fp = call ptr @opt_init(i32 noundef %.0131.i, ptr noundef nonnull %i.b, ptr noundef nonnull @cmp_options) #11 ; 0 uses
  %i.fq = call i32 @opt_next() #11                ; 2 uses
  br i1 %spec.select.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fr = call i32 @opt_provider(i32 noundef %i.fq) #11
  %.not97.i = icmp eq i32 %i.fr, 0
  br i1 %.not97.i, label %bb.bq, label %bb.bt

bb.bp:                                            ; preds = %bb.bn
  %i.fs = load ptr, ptr @vpm, align 8, !tbaa !852
  %i.ft = call i32 @opt_verify(i32 noundef %i.fq, ptr noundef %i.fs) #11
  %.not96.i = icmp eq i32 %i.ft, 0
  br i1 %.not96.i, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.fu = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.fv = icmp slt i32 %i.fu, 3
  br i1 %i.fv, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fw = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.fx = load ptr, ptr @opt_section, align 8, !tbaa !845
  %i.fy = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fw, ptr noundef nonnull @.str.397, ptr noundef nonnull @__func__.read_config, ptr noundef nonnull @.str.351, i32 noundef 2811, ptr noundef nonnull @.str.352, ptr noundef nonnull %i.cj, ptr noundef %i.fx, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %read_config.exit

bb.bt:                                            ; preds = %bb.bp, %bb.bo, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
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
  %i.ga = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.gb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ga, ptr noundef nonnull @.str.398, ptr noundef nonnull %i.cj) #11 ; 0 uses
  br label %read_config.exit

bb.bx:                                            ; preds = %bb.bv
  %i.gc = trunc nsw i64 %.1117.i to i32
  %i.gd = zext i32 %spec.select100.i to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr @cmp_vars, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !846
  store i32 %i.gc, ptr %i.gf, align 4, !tbaa !847
  br label %bb.cc

bb.by:                                            ; preds = %bb.bu
  %i.gg = zext i32 %spec.select100.i to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr @cmp_vars, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !846
  store i64 %.1117.i, ptr %i.gi, align 8, !tbaa !887
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bu
  %.not94.i = icmp eq ptr %.173.i, null
  br i1 %.not94.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gj = load i8, ptr %.173.i, align 1, !tbaa !846
  %i.gk = icmp eq i8 %i.gj, 0
  %spec.store.select.i = select i1 %i.gk, ptr null, ptr %.173.i
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.2.i = phi ptr [ %spec.store.select.i, %bb.ca ], [ null, %bb.bz ] ; 2 uses
  %i.gl = zext i32 %spec.select100.i to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr @cmp_vars, i64 %i.gl
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !846
  store ptr %.2.i, ptr %i.gn, align 8, !tbaa !845
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.by, %bb.bx, %bb.bt, %bb.bf, %bb.ax, %bb.ak
  %.2118.ph.i = phi i64 [ %.1117.i, %bb.bt ], [ %.1117.i, %bb.by ], [ %.1117.i, %bb.bx ], [ %.1117.i, %bb.cb ], [ %.0116165.i, %bb.bf ], [ %.0116165.i, %bb.ax ], [ %.0116165.i, %bb.ak ]
  %.377.ph.i = phi i32 [ %spec.select100.i, %bb.bt ], [ %spec.select100.i, %bb.by ], [ %spec.select100.i, %bb.bx ], [ %spec.select100.i, %bb.cb ], [ %spec.select100.i, %bb.bf ], [ %spec.select100.i, %bb.ax ], [ %i.cv, %bb.ak ]
  %.4.ph.i = phi ptr [ %.173.i, %bb.bt ], [ %.173.i, %bb.by ], [ %.173.i, %bb.bx ], [ %.2.i, %bb.cb ], [ null, %bb.bf ], [ %.072167.i, %bb.ax ], [ %.072167.i, %bb.ak ]
  %i.go = add i32 %.377.ph.i, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.171168.i, i64 24 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !884 ; 2 uses
  %.not92.i = icmp eq ptr %i.gq, null
  br i1 %.not92.i, label %read_config.exit, label %bb.ai, !llvm.loop !879

read_config.exit:                                 ; preds = %bb.cc, %bb.az, %bb.bb, %bb.bh, %bb.bs, %bb.bw
  %i.gr = phi i1 [ true, %bb.bw ], [ true, %bb.bh ], [ true, %bb.bb ], [ true, %bb.az ], [ true, %bb.bs ], [ false, %bb.cc ]
  %i.gs = phi i1 [ false, %bb.bw ], [ false, %bb.bh ], [ true, %bb.bb ], [ true, %bb.az ], [ false, %bb.bs ], [ false, %bb.cc ]
  %.pr = load i32, ptr @opt_verbosity, align 4, !tbaa !847 ; 3 uses
  %or.cond.i218 = icmp ugt i32 %.pr, 8
  br i1 %or.cond.i218, label %bb.cd, label %set_verbosity.exit

read_config.exit.thread:                          ; preds = %bb.bg
  %or.cond.i218365 = icmp ugt i32 %i.fc, 8
  br i1 %or.cond.i218365, label %.thread235, label %handle_opts_upfront.exit.thread

bb.cd:                                            ; preds = %read_config.exit
  %i.gt = icmp slt i32 %.pr, 3
  br i1 %i.gt, label %.thread235, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gu = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.gv = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gu, ptr noundef nonnull @.str.401, ptr noundef nonnull @__func__.set_verbosity, ptr noundef nonnull @.str.351, i32 noundef 834, ptr noundef nonnull @.str.352, i32 noundef %.pr, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %.thread235

set_verbosity.exit:                               ; preds = %read_config.exit
  br i1 %i.gr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %set_verbosity.exit
  br i1 %i.gs, label %.thread235, label %handle_opts_upfront.exit.thread

.thread235:                                       ; preds = %read_config.exit.thread, %bb.ce, %bb.cd, %bb.cf
  %i.gw = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.gx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gw, ptr noundef nonnull @.str.359) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.cg:                                            ; preds = %set_verbosity.exit, %bb.r, %bb.p, %bb.o
  %.1126 = phi i32 [ 1, %set_verbosity.exit ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.o ]
  %i.gy = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.gz = call i64 @BIO_ctrl(ptr noundef %i.gy, i32 noundef 11, i64 noundef 0, ptr noundef null) #11 ; 0 uses
  %i.ha = call ptr @app_get0_libctx() #11
  %i.hb = call ptr @app_get0_propq() #11
  %i.hc = call ptr @OSSL_CMP_CTX_new(ptr noundef %i.ha, ptr noundef %i.hb) #11 ; 2 uses
  store ptr %i.hc, ptr @cmp_ctx, align 8, !tbaa !861
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %handle_opts_upfront.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.he = call ptr @opt_init(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @cmp_options) #11
  store ptr %i.he, ptr @prog, align 8, !tbaa !845
  br label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %bb.hi, %bb.ch
  %2 = call i32 @opt_next() #11                   ; 4 uses
  switch i32 %2, label %bb.hi [
    i32 0, label %._crit_edge.i221
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
    i32 59, label %bb.dd
    i32 60, label %bb.de
    i32 61, label %bb.df
    i32 62, label %bb.dg
    i32 63, label %bb.dh
    i32 64, label %bb.di
    i32 65, label %bb.dj
    i32 66, label %bb.dk
    i32 67, label %bb.dl
    i32 68, label %bb.dm
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
    i32 1549, label %bb.hf
    i32 1548, label %bb.he
    i32 2001, label %bb.ee
    i32 2002, label %bb.ee
    i32 2003, label %bb.ee
    i32 2004, label %bb.ee
    i32 2029, label %bb.ee
    i32 2005, label %bb.ee
    i32 2006, label %bb.ee
    i32 2007, label %bb.ee
    i32 2008, label %bb.ee
    i32 2009, label %bb.ee
    i32 2010, label %bb.ee
    i32 2011, label %bb.ee
    i32 2012, label %bb.ee
    i32 2013, label %bb.ee
    i32 2014, label %bb.ee
    i32 2015, label %bb.ee
    i32 2016, label %bb.ee
    i32 2017, label %bb.ee
    i32 2018, label %bb.ee
    i32 2019, label %bb.ee
    i32 2020, label %bb.ee
    i32 2021, label %bb.ee
    i32 2022, label %bb.ee
    i32 2023, label %bb.ee
    i32 2024, label %bb.ee
    i32 2025, label %bb.ee
    i32 2026, label %bb.ee
    i32 2027, label %bb.ee
    i32 2028, label %bb.ee
    i32 2030, label %bb.ee
    i32 5, label %bb.ef
    i32 6, label %bb.eg
    i32 7, label %bb.eh
    i32 8, label %bb.ei
    i32 9, label %bb.ej
    i32 10, label %bb.ek
    i32 11, label %bb.el
    i32 12, label %bb.em
    i32 13, label %bb.en
    i32 14, label %bb.eo
    i32 15, label %bb.ep
    i32 16, label %bb.eq
    i32 17, label %bb.er
    i32 18, label %bb.es
    i32 19, label %bb.et
    i32 20, label %bb.eu
    i32 21, label %bb.ev
    i32 22, label %bb.ew
    i32 23, label %bb.ex
    i32 24, label %bb.fa
    i32 25, label %bb.fb
    i32 26, label %bb.fc
    i32 27, label %bb.fd
    i32 28, label %bb.fe
    i32 29, label %bb.ff
    i32 30, label %bb.fg
    i32 33, label %bb.fh
    i32 31, label %bb.fk
    i32 32, label %bb.fl
    i32 69, label %bb.fm
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

set_verbosity.exit.thread.i:                      ; preds = %bb.fs, %bb.fr, %bb.ee, %.lr.ph.i219, %._crit_edge.i221, %bb.fj, %bb.fi, %bb.ez, %bb.ey, %bb.ct, %bb.cs, %bb.cl, %bb.ck
  %i.hf = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.hg = load ptr, ptr @prog, align 8, !tbaa !845
  %i.hh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hf, ptr noundef nonnull @.str.402, ptr noundef %i.hg) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ci:                                            ; preds = %.lr.ph.i219
  call void @opt_help(ptr noundef nonnull @cmp_options) #11
  br label %handle_opts_upfront.exit.thread

bb.cj:                                            ; preds = %.lr.ph.i219
  %i.hi = call i32 @opt_int_arg() #11             ; 3 uses
  %or.cond.i.i226 = icmp ugt i32 %i.hi, 8
  br i1 %or.cond.i.i226, label %bb.ck, label %set_verbosity.exit.i227

bb.ck:                                            ; preds = %bb.cj
  %i.hj = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.hk = icmp slt i32 %i.hj, 3
  br i1 %i.hk, label %set_verbosity.exit.thread.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hl = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.hm = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hl, ptr noundef nonnull @.str.401, ptr noundef nonnull @__func__.set_verbosity, ptr noundef nonnull @.str.351, i32 noundef 834, ptr noundef nonnull @.str.352, i32 noundef %i.hi, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %set_verbosity.exit.thread.i

set_verbosity.exit.i227:                          ; preds = %bb.cj
  store i32 %i.hi, ptr @opt_verbosity, align 4, !tbaa !847
  br label %bb.hi

bb.cm:                                            ; preds = %.lr.ph.i219
  %i.hn = call fastcc ptr @opt_str()
  store ptr %i.hn, ptr @opt_server, align 8, !tbaa !845
  br label %bb.hi

bb.cn:                                            ; preds = %.lr.ph.i219
  %i.ho = call fastcc ptr @opt_str()
  store ptr %i.ho, ptr @opt_proxy, align 8, !tbaa !845
  br label %bb.hi

bb.co:                                            ; preds = %.lr.ph.i219
  %i.hp = call fastcc ptr @opt_str()
  store ptr %i.hp, ptr @opt_no_proxy, align 8, !tbaa !845
end_hunk_0
begin_hunk_1_@cmp_main:bb.a
  br label %bb.hi

bb.cq:                                            ; preds = %.lr.ph.i219
  %i.hr = call fastcc ptr @opt_str()
  store ptr %i.hr, ptr @opt_path, align 8, !tbaa !845
  br label %bb.hi

bb.cr:                                            ; preds = %.lr.ph.i219
  %i.hs = call i32 @opt_int_arg() #11             ; 2 uses
  store i32 %i.hs, ptr @opt_keep_alive, align 4, !tbaa !847
  %i.ht = icmp sgt i32 %i.hs, 2
  br i1 %i.ht, label %bb.cs, label %bb.hi

bb.cs:                                            ; preds = %bb.cr
  %i.hu = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.hv = icmp slt i32 %i.hu, 3
  br i1 %i.hv, label %set_verbosity.exit.thread.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hw = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.hx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hw, ptr noundef nonnull @.str.403, ptr noundef nonnull @__func__.get_opts, ptr noundef nonnull @.str.351, i32 noundef 2902, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %set_verbosity.exit.thread.i

bb.cu:                                            ; preds = %.lr.ph.i219
  %i.hy = call i32 @opt_int_arg() #11
  store i32 %i.hy, ptr @opt_msg_timeout, align 4, !tbaa !847
  br label %bb.hi

bb.cv:                                            ; preds = %.lr.ph.i219
  %i.hz = call i32 @opt_int_arg() #11
  store i32 %i.hz, ptr @opt_total_timeout, align 4, !tbaa !847
  br label %bb.hi

bb.cw:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_tls_used, align 4, !tbaa !847
  br label %bb.hi

bb.cx:                                            ; preds = %.lr.ph.i219
  %i.ia = call fastcc ptr @opt_str()
  store ptr %i.ia, ptr @opt_tls_cert, align 8, !tbaa !845
  br label %bb.hi

bb.cy:                                            ; preds = %.lr.ph.i219
  %i.ib = call fastcc ptr @opt_str()
  store ptr %i.ib, ptr @opt_tls_key, align 8, !tbaa !845
  br label %bb.hi

bb.cz:                                            ; preds = %.lr.ph.i219
  %i.ic = call fastcc ptr @opt_str()
  store ptr %i.ic, ptr @opt_tls_keypass, align 8, !tbaa !845
  br label %bb.hi

bb.da:                                            ; preds = %.lr.ph.i219
  %i.id = call fastcc ptr @opt_str()
  store ptr %i.id, ptr @opt_tls_extra, align 8, !tbaa !845
  br label %bb.hi

bb.db:                                            ; preds = %.lr.ph.i219
  %i.ie = call fastcc ptr @opt_str()
  store ptr %i.ie, ptr @opt_tls_trusted, align 8, !tbaa !845
  br label %bb.hi

bb.dc:                                            ; preds = %.lr.ph.i219
  %i.if = call fastcc ptr @opt_str()
  store ptr %i.if, ptr @opt_tls_host, align 8, !tbaa !845
  br label %bb.hi

bb.dd:                                            ; preds = %.lr.ph.i219
  %i.ig = call fastcc ptr @opt_str()
  store ptr %i.ig, ptr @opt_ref, align 8, !tbaa !845
  br label %bb.hi

bb.de:                                            ; preds = %.lr.ph.i219
  %i.ih = call fastcc ptr @opt_str()
  store ptr %i.ih, ptr @opt_secret, align 8, !tbaa !845
  br label %bb.hi

bb.df:                                            ; preds = %.lr.ph.i219
  %i.ii = call fastcc ptr @opt_str()
  store ptr %i.ii, ptr @opt_cert, align 8, !tbaa !845
  br label %bb.hi

bb.dg:                                            ; preds = %.lr.ph.i219
  %i.ij = call fastcc ptr @opt_str()
  store ptr %i.ij, ptr @opt_own_trusted, align 8, !tbaa !845
  br label %bb.hi

bb.dh:                                            ; preds = %.lr.ph.i219
  %i.ik = call fastcc ptr @opt_str()
  store ptr %i.ik, ptr @opt_key, align 8, !tbaa !845
  br label %bb.hi

bb.di:                                            ; preds = %.lr.ph.i219
  %i.il = call fastcc ptr @opt_str()
  store ptr %i.il, ptr @opt_keypass, align 8, !tbaa !845
  br label %bb.hi

bb.dj:                                            ; preds = %.lr.ph.i219
  %i.im = call fastcc ptr @opt_str()
  store ptr %i.im, ptr @opt_digest, align 8, !tbaa !845
  br label %bb.hi

bb.dk:                                            ; preds = %.lr.ph.i219
  %i.in = call fastcc ptr @opt_str()
  store ptr %i.in, ptr @opt_mac, align 8, !tbaa !845
  br label %bb.hi

bb.dl:                                            ; preds = %.lr.ph.i219
  %i.io = call fastcc ptr @opt_str()
  store ptr %i.io, ptr @opt_extracerts, align 8, !tbaa !845
  br label %bb.hi

bb.dm:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_unprotected_requests, align 4, !tbaa !847
  br label %bb.hi

bb.dn:                                            ; preds = %.lr.ph.i219
  %i.ip = call fastcc ptr @opt_str()
  store ptr %i.ip, ptr @opt_trusted, align 8, !tbaa !845
  br label %bb.hi

bb.do:                                            ; preds = %.lr.ph.i219
  %i.iq = call fastcc ptr @opt_str()
  store ptr %i.iq, ptr @opt_untrusted, align 8, !tbaa !845
  br label %bb.hi

bb.dp:                                            ; preds = %.lr.ph.i219
  %i.ir = call fastcc ptr @opt_str()
  store ptr %i.ir, ptr @opt_srvcert, align 8, !tbaa !845
  br label %bb.hi

bb.dq:                                            ; preds = %.lr.ph.i219
  %i.is = call fastcc ptr @opt_str()
  store ptr %i.is, ptr @opt_expect_sender, align 8, !tbaa !845
  br label %bb.hi

bb.dr:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_ignore_keyusage, align 4, !tbaa !847
  br label %bb.hi

bb.ds:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_unprotected_errors, align 4, !tbaa !847
  br label %bb.hi

bb.dt:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_no_cache_extracerts, align 4, !tbaa !847
  br label %bb.hi

bb.du:                                            ; preds = %.lr.ph.i219
  %i.it = call fastcc ptr @opt_str()
  store ptr %i.it, ptr @opt_srvcertout, align 8, !tbaa !845
  br label %bb.hi

bb.dv:                                            ; preds = %.lr.ph.i219
  %i.iu = call fastcc ptr @opt_str()
  store ptr %i.iu, ptr @opt_extracertsout, align 8, !tbaa !845
  br label %bb.hi

bb.dw:                                            ; preds = %.lr.ph.i219
  %i.iv = call fastcc ptr @opt_str()
  store ptr %i.iv, ptr @opt_cacertsout, align 8, !tbaa !845
  br label %bb.hi

bb.dx:                                            ; preds = %.lr.ph.i219
  %i.iw = call fastcc ptr @opt_str()
  store ptr %i.iw, ptr @opt_oldwithold, align 8, !tbaa !845
  br label %bb.hi

bb.dy:                                            ; preds = %.lr.ph.i219
  %i.ix = call fastcc ptr @opt_str()
  store ptr %i.ix, ptr @opt_newwithnew, align 8, !tbaa !845
  br label %bb.hi

bb.dz:                                            ; preds = %.lr.ph.i219
  %i.iy = call fastcc ptr @opt_str()
  store ptr %i.iy, ptr @opt_newwithold, align 8, !tbaa !845
  br label %bb.hi

bb.ea:                                            ; preds = %.lr.ph.i219
  %i.iz = call fastcc ptr @opt_str()
  store ptr %i.iz, ptr @opt_oldwithnew, align 8, !tbaa !845
  br label %bb.hi

bb.eb:                                            ; preds = %.lr.ph.i219
  %i.ja = call fastcc ptr @opt_str()
  store ptr %i.ja, ptr @opt_crlcert, align 8, !tbaa !845
  br label %bb.hi

bb.ec:                                            ; preds = %.lr.ph.i219
  %i.jb = call fastcc ptr @opt_str()
  store ptr %i.jb, ptr @opt_oldcrl, align 8, !tbaa !845
  br label %bb.hi

bb.ed:                                            ; preds = %.lr.ph.i219
  %i.jc = call fastcc ptr @opt_str()
  store ptr %i.jc, ptr @opt_crlout, align 8, !tbaa !845
  br label %bb.hi

bb.ee:                                            ; preds = %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219
  %i.jd = load ptr, ptr @vpm, align 8, !tbaa !852
  %i.je = call i32 @opt_verify(i32 noundef %2, ptr noundef %i.jd) #11
  %.not15.i = icmp eq i32 %i.je, 0
  br i1 %.not15.i, label %set_verbosity.exit.thread.i, label %bb.hi

bb.ef:                                            ; preds = %.lr.ph.i219
  %i.jf = call fastcc ptr @opt_str()
  store ptr %i.jf, ptr @opt_cmd_s, align 8, !tbaa !845
  br label %bb.hi

bb.eg:                                            ; preds = %.lr.ph.i219
  %i.jg = call fastcc ptr @opt_str()
  store ptr %i.jg, ptr @opt_infotype_s, align 8, !tbaa !845
  br label %bb.hi

bb.eh:                                            ; preds = %.lr.ph.i219
  %i.jh = call fastcc ptr @opt_str()
  store ptr %i.jh, ptr @opt_profile, align 8, !tbaa !845
  br label %bb.hi

bb.ei:                                            ; preds = %.lr.ph.i219
  %i.ji = call fastcc ptr @opt_str()
  store ptr %i.ji, ptr @opt_geninfo, align 8, !tbaa !845
  br label %bb.hi

bb.ej:                                            ; preds = %.lr.ph.i219
  %i.jj = call fastcc ptr @opt_str()
  store ptr %i.jj, ptr @opt_template, align 8, !tbaa !845
  br label %bb.hi

bb.ek:                                            ; preds = %.lr.ph.i219
  %i.jk = call fastcc ptr @opt_str()
  store ptr %i.jk, ptr @opt_keyspec, align 8, !tbaa !845
  br label %bb.hi

bb.el:                                            ; preds = %.lr.ph.i219
  %i.jl = call fastcc ptr @opt_str()
  store ptr %i.jl, ptr @opt_newkey, align 8, !tbaa !845
  br label %bb.hi

bb.em:                                            ; preds = %.lr.ph.i219
  %i.jm = call fastcc ptr @opt_str()
  store ptr %i.jm, ptr @opt_newkeypass, align 8, !tbaa !845
  br label %bb.hi

bb.en:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_centralkeygen, align 4, !tbaa !847
  br label %bb.hi

bb.eo:                                            ; preds = %.lr.ph.i219
  %i.jn = call fastcc ptr @opt_str()
  store ptr %i.jn, ptr @opt_newkeyout, align 8, !tbaa !845
  br label %bb.hi

bb.ep:                                            ; preds = %.lr.ph.i219
  %i.jo = call fastcc ptr @opt_str()
  store ptr %i.jo, ptr @opt_subject, align 8, !tbaa !845
  br label %bb.hi

bb.eq:                                            ; preds = %.lr.ph.i219
  %i.jp = call i32 @opt_int_arg() #11
  store i32 %i.jp, ptr @opt_days, align 4, !tbaa !847
  br label %bb.hi

bb.er:                                            ; preds = %.lr.ph.i219
  %i.jq = call fastcc ptr @opt_str()
  store ptr %i.jq, ptr @opt_reqexts, align 8, !tbaa !845
  br label %bb.hi

bb.es:                                            ; preds = %.lr.ph.i219
  %i.jr = call fastcc ptr @opt_str()
  store ptr %i.jr, ptr @opt_sans, align 8, !tbaa !845
  br label %bb.hi

bb.et:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_san_nodefault, align 4, !tbaa !847
  br label %bb.hi

bb.eu:                                            ; preds = %.lr.ph.i219
  %i.js = call fastcc ptr @opt_str()
  store ptr %i.js, ptr @opt_policies, align 8, !tbaa !845
  br label %bb.hi

bb.ev:                                            ; preds = %.lr.ph.i219
  %i.jt = call fastcc ptr @opt_str()
  store ptr %i.jt, ptr @opt_policy_oids, align 8, !tbaa !845
  br label %bb.hi

bb.ew:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_policy_oids_critical, align 4, !tbaa !847
  br label %bb.hi

bb.ex:                                            ; preds = %.lr.ph.i219
  %i.ju = call i32 @opt_int_arg() #11             ; 2 uses
  store i32 %i.ju, ptr @opt_popo, align 4, !tbaa !847
  %i.jv = add i32 %i.ju, -3
  %or.cond.i225 = icmp ult i32 %i.jv, -4
  br i1 %or.cond.i225, label %bb.ey, label %bb.hi

bb.ey:                                            ; preds = %bb.ex
  %i.jw = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.jx = icmp slt i32 %i.jw, 3
  br i1 %i.jx, label %set_verbosity.exit.thread.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.jy = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.jz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.jy, ptr noundef nonnull @.str.404, ptr noundef nonnull @__func__.get_opts, ptr noundef nonnull @.str.351, i32 noundef 3081, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %set_verbosity.exit.thread.i

bb.fa:                                            ; preds = %.lr.ph.i219
  %i.ka = call fastcc ptr @opt_str()
  store ptr %i.ka, ptr @opt_csr, align 8, !tbaa !845
  br label %bb.hi

bb.fb:                                            ; preds = %.lr.ph.i219
  %i.kb = call fastcc ptr @opt_str()
  store ptr %i.kb, ptr @opt_out_trusted, align 8, !tbaa !845
  br label %bb.hi

bb.fc:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_implicit_confirm, align 4, !tbaa !847
  br label %bb.hi

bb.fd:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_disable_confirm, align 4, !tbaa !847
  br label %bb.hi

bb.fe:                                            ; preds = %.lr.ph.i219
  %i.kc = call fastcc ptr @opt_str()
  store ptr %i.kc, ptr @opt_certout, align 8, !tbaa !845
  br label %bb.hi

bb.ff:                                            ; preds = %.lr.ph.i219
  %i.kd = call fastcc ptr @opt_str()
  store ptr %i.kd, ptr @opt_chainout, align 8, !tbaa !845
  br label %bb.hi

bb.fg:                                            ; preds = %.lr.ph.i219
  %i.ke = call fastcc ptr @opt_str()
  store ptr %i.ke, ptr @opt_oldcert, align 8, !tbaa !845
  br label %bb.hi

bb.fh:                                            ; preds = %.lr.ph.i219
  %i.kf = call i32 @opt_int_arg() #11             ; 3 uses
  store i32 %i.kf, ptr @opt_revreason, align 4, !tbaa !847
  %i.kg = add i32 %i.kf, -11
  %or.cond3.i223 = icmp ult i32 %i.kg, -12
  %i.kh = icmp eq i32 %i.kf, 7
  %or.cond5.i224 = or i1 %i.kh, %or.cond3.i223
  br i1 %or.cond5.i224, label %bb.fi, label %bb.hi

bb.fi:                                            ; preds = %bb.fh
  %i.ki = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.kj = icmp slt i32 %i.ki, 3
  br i1 %i.kj, label %set_verbosity.exit.thread.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.kk = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.kl = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.kk, ptr noundef nonnull @.str.405, ptr noundef nonnull @__func__.get_opts, ptr noundef nonnull @.str.351, i32 noundef 3111, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %set_verbosity.exit.thread.i

bb.fk:                                            ; preds = %.lr.ph.i219
  %i.km = call fastcc ptr @opt_str()
  store ptr %i.km, ptr @opt_issuer, align 8, !tbaa !845
  br label %bb.hi

bb.fl:                                            ; preds = %.lr.ph.i219
  %i.kn = call fastcc ptr @opt_str()
  store ptr %i.kn, ptr @opt_serial, align 8, !tbaa !845
  br label %bb.hi

bb.fm:                                            ; preds = %.lr.ph.i219
  %i.ko = call fastcc ptr @opt_str()
  store ptr %i.ko, ptr @opt_certform_s, align 8, !tbaa !845
  br label %bb.hi

bb.fn:                                            ; preds = %.lr.ph.i219
  %i.kp = call fastcc ptr @opt_str()
  store ptr %i.kp, ptr @opt_crlform_s, align 8, !tbaa !845
  br label %bb.hi

bb.fo:                                            ; preds = %.lr.ph.i219
  %i.kq = call fastcc ptr @opt_str()
  store ptr %i.kq, ptr @opt_keyform_s, align 8, !tbaa !845
  br label %bb.hi

bb.fp:                                            ; preds = %.lr.ph.i219
  %i.kr = call fastcc ptr @opt_str()
  store ptr %i.kr, ptr @opt_otherpass, align 8, !tbaa !845
  br label %bb.hi

bb.fq:                                            ; preds = %.lr.ph.i219
  %i.ks = call fastcc ptr @opt_str()
  store ptr %i.ks, ptr @opt_engine, align 8, !tbaa !845
  br label %bb.hi

bb.fr:                                            ; preds = %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219, %.lr.ph.i219
  %i.kt = call i32 @opt_provider(i32 noundef %2) #11
  %.not14.i = icmp eq i32 %i.kt, 0
  br i1 %.not14.i, label %set_verbosity.exit.thread.i, label %bb.hi

bb.fs:                                            ; preds = %.lr.ph.i219, %.lr.ph.i219
  %i.ku = call i32 @opt_rand(i32 noundef %2) #11
  %.not13.i = icmp eq i32 %i.ku, 0
  br i1 %.not13.i, label %set_verbosity.exit.thread.i, label %bb.hi

bb.ft:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_batch, align 4, !tbaa !847
  br label %bb.hi

bb.fu:                                            ; preds = %.lr.ph.i219
  %i.kv = call i32 @opt_int_arg() #11
  store i32 %i.kv, ptr @opt_repeat, align 4, !tbaa !847
  br label %bb.hi

bb.fv:                                            ; preds = %.lr.ph.i219
  %i.kw = call fastcc ptr @opt_str()
  store ptr %i.kw, ptr @opt_reqin, align 8, !tbaa !845
  br label %bb.hi

bb.fw:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_reqin_new_tid, align 4, !tbaa !847
  br label %bb.hi

bb.fx:                                            ; preds = %.lr.ph.i219
  %i.kx = call fastcc ptr @opt_str()
  store ptr %i.kx, ptr @opt_reqout, align 8, !tbaa !845
  br label %bb.hi

bb.fy:                                            ; preds = %.lr.ph.i219
  %i.ky = call fastcc ptr @opt_str()
  store ptr %i.ky, ptr @opt_reqout_only, align 8, !tbaa !845
  br label %bb.hi

bb.fz:                                            ; preds = %.lr.ph.i219
  %i.kz = call fastcc ptr @opt_str()
  store ptr %i.kz, ptr @opt_rspin, align 8, !tbaa !845
  br label %bb.hi

bb.ga:                                            ; preds = %.lr.ph.i219
  %i.la = call fastcc ptr @opt_str()
  store ptr %i.la, ptr @opt_rspout, align 8, !tbaa !845
  br label %bb.hi

bb.gb:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_use_mock_srv, align 4, !tbaa !847
  br label %bb.hi

bb.gc:                                            ; preds = %.lr.ph.i219
  %i.lb = call fastcc ptr @opt_str()
  store ptr %i.lb, ptr @opt_port, align 8, !tbaa !845
  br label %bb.hi

bb.gd:                                            ; preds = %.lr.ph.i219
  %i.lc = call i32 @opt_int_arg() #11
  store i32 %i.lc, ptr @opt_max_msgs, align 4, !tbaa !847
  br label %bb.hi

bb.ge:                                            ; preds = %.lr.ph.i219
  %i.ld = call fastcc ptr @opt_str()
  store ptr %i.ld, ptr @opt_srv_ref, align 8, !tbaa !845
  br label %bb.hi

bb.gf:                                            ; preds = %.lr.ph.i219
  %i.le = call fastcc ptr @opt_str()
  store ptr %i.le, ptr @opt_srv_secret, align 8, !tbaa !845
  br label %bb.hi

bb.gg:                                            ; preds = %.lr.ph.i219
  %i.lf = call fastcc ptr @opt_str()
  store ptr %i.lf, ptr @opt_srv_cert, align 8, !tbaa !845
  br label %bb.hi

bb.gh:                                            ; preds = %.lr.ph.i219
  %i.lg = call fastcc ptr @opt_str()
  store ptr %i.lg, ptr @opt_srv_key, align 8, !tbaa !845
  br label %bb.hi

bb.gi:                                            ; preds = %.lr.ph.i219
  %i.lh = call fastcc ptr @opt_str()
  store ptr %i.lh, ptr @opt_srv_keypass, align 8, !tbaa !845
  br label %bb.hi

bb.gj:                                            ; preds = %.lr.ph.i219
  %i.li = call fastcc ptr @opt_str()
  store ptr %i.li, ptr @opt_srv_trusted, align 8, !tbaa !845
  br label %bb.hi

bb.gk:                                            ; preds = %.lr.ph.i219
  %i.lj = call fastcc ptr @opt_str()
  store ptr %i.lj, ptr @opt_srv_untrusted, align 8, !tbaa !845
  br label %bb.hi

bb.gl:                                            ; preds = %.lr.ph.i219
  %i.lk = call fastcc ptr @opt_str()
  store ptr %i.lk, ptr @opt_ref_cert, align 8, !tbaa !845
  br label %bb.hi

bb.gm:                                            ; preds = %.lr.ph.i219
  %i.ll = call fastcc ptr @opt_str()
  store ptr %i.ll, ptr @opt_rsp_cert, align 8, !tbaa !845
  br label %bb.hi

bb.gn:                                            ; preds = %.lr.ph.i219
  %i.lm = call fastcc ptr @opt_str()
  store ptr %i.lm, ptr @opt_rsp_key, align 8, !tbaa !845
  br label %bb.hi

bb.go:                                            ; preds = %.lr.ph.i219
  %i.ln = call fastcc ptr @opt_str()
  store ptr %i.ln, ptr @opt_rsp_keypass, align 8, !tbaa !845
  br label %bb.hi

bb.gp:                                            ; preds = %.lr.ph.i219
  %i.lo = call fastcc ptr @opt_str()
  store ptr %i.lo, ptr @opt_rsp_crl, align 8, !tbaa !845
  br label %bb.hi

bb.gq:                                            ; preds = %.lr.ph.i219
  %i.lp = call fastcc ptr @opt_str()
  store ptr %i.lp, ptr @opt_rsp_extracerts, align 8, !tbaa !845
  br label %bb.hi

bb.gr:                                            ; preds = %.lr.ph.i219
  %i.lq = call fastcc ptr @opt_str()
  store ptr %i.lq, ptr @opt_rsp_capubs, align 8, !tbaa !845
  br label %bb.hi

bb.gs:                                            ; preds = %.lr.ph.i219
  %i.lr = call fastcc ptr @opt_str()
  store ptr %i.lr, ptr @opt_rsp_newwithnew, align 8, !tbaa !845
  br label %bb.hi

bb.gt:                                            ; preds = %.lr.ph.i219
  %i.ls = call fastcc ptr @opt_str()
  store ptr %i.ls, ptr @opt_rsp_newwithold, align 8, !tbaa !845
  br label %bb.hi

bb.gu:                                            ; preds = %.lr.ph.i219
  %i.lt = call fastcc ptr @opt_str()
  store ptr %i.lt, ptr @opt_rsp_oldwithnew, align 8, !tbaa !845
  br label %bb.hi

bb.gv:                                            ; preds = %.lr.ph.i219
  %i.lu = call i32 @opt_int_arg() #11
  store i32 %i.lu, ptr @opt_poll_count, align 4, !tbaa !847
  br label %bb.hi

bb.gw:                                            ; preds = %.lr.ph.i219
  %i.lv = call i32 @opt_int_arg() #11
  store i32 %i.lv, ptr @opt_check_after, align 4, !tbaa !847
  br label %bb.hi

bb.gx:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_grant_implicitconf, align 4, !tbaa !847
  br label %bb.hi

bb.gy:                                            ; preds = %.lr.ph.i219
  %i.lw = call i32 @opt_int_arg() #11
  store i32 %i.lw, ptr @opt_pkistatus, align 4, !tbaa !847
  br label %bb.hi

bb.gz:                                            ; preds = %.lr.ph.i219
  %i.lx = call i32 @opt_int_arg() #11
  store i32 %i.lx, ptr @opt_failure, align 4, !tbaa !847
  br label %bb.hi

bb.ha:                                            ; preds = %.lr.ph.i219
  %i.ly = call i32 @opt_int_arg() #11
  store i32 %i.ly, ptr @opt_failurebits, align 4, !tbaa !847
  br label %bb.hi

bb.hb:                                            ; preds = %.lr.ph.i219
  %i.lz = call fastcc ptr @opt_str()
  store ptr %i.lz, ptr @opt_statusstring, align 8, !tbaa !845
  br label %bb.hi

bb.hc:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_send_error, align 4, !tbaa !847
  br label %bb.hi

bb.hd:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_send_unprotected, align 4, !tbaa !847
  br label %bb.hi

bb.he:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_send_unprot_err, align 4, !tbaa !847
  br label %bb.hi

bb.hf:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_accept_unprotected, align 4, !tbaa !847
  br label %bb.hi

bb.hg:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_accept_unprot_err, align 4, !tbaa !847
  br label %bb.hi

bb.hh:                                            ; preds = %.lr.ph.i219
  store i32 1, ptr @opt_accept_raverified, align 4, !tbaa !847
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %set_verbosity.exit.i227, %.lr.ph.i219
  br label %.lr.ph.i219, !llvm.loop !880

._crit_edge.i221:                                 ; preds = %.lr.ph.i219
  %i.ma = call i32 @opt_check_rest_arg(ptr noundef null) #11
  %.not12.i = icmp eq i32 %i.ma, 0
  br i1 %.not12.i, label %set_verbosity.exit.thread.i, label %get_opts.exit

get_opts.exit:                                    ; preds = %._crit_edge.i221
  %i.mb = call i32 @app_RAND_load() #11
  %.not168 = icmp eq i32 %i.mb, 0
  br i1 %.not168, label %handle_opts_upfront.exit.thread, label %bb.hj

bb.hj:                                            ; preds = %get_opts.exit
  %i.mc = load i32, ptr @opt_batch, align 4, !tbaa !847
  %.not169 = icmp eq i32 %i.mc, 0
  br i1 %.not169, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.md = call ptr @UI_null() #11
  %i.me = call i32 @set_base_ui_method(ptr noundef %i.md) #11 ; 0 uses
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.mf = load ptr, ptr @opt_engine, align 8, !tbaa !845 ; 2 uses
  %.not170 = icmp eq ptr %i.mf, null
  br i1 %.not170, label %bb.hp, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.mg = call ptr @setup_engine_methods(ptr noundef nonnull %i.mf, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %bb.hn, label %bb.hp

bb.hn:                                            ; preds = %bb.hm
  %i.mi = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.mj = icmp slt i32 %i.mi, 3
  br i1 %i.mj, label %handle_opts_upfront.exit.thread, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.mk = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.ml = load ptr, ptr @opt_engine, align 8, !tbaa !845
  %i.mm = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.mk, ptr noundef nonnull @.str.360, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3739, ptr noundef nonnull @.str.352, ptr noundef %i.ml, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.hp:                                            ; preds = %bb.hm, %bb.hl
  %.0130 = phi ptr [ %i.mg, %bb.hm ], [ null, %bb.hl ] ; 37 uses
  %i.mn = load ptr, ptr @cmp_ctx, align 8, !tbaa !861
  %i.mo = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.mp = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %i.mn, i32 noundef 0, i32 noundef %i.mo) #11 ; 0 uses
  %i.mq = load ptr, ptr @cmp_ctx, align 8, !tbaa !861
  %i.mr = call i32 @OSSL_CMP_CTX_set_log_cb(ptr noundef %i.mq, ptr noundef nonnull @print_to_bio_out) #11
  %.not171 = icmp eq i32 %i.mr, 0
  br i1 %.not171, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %bb.hp
  %i.ms = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.mt = icmp slt i32 %i.ms, 3
  br i1 %i.mt, label %handle_opts_upfront.exit.thread, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.mu = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.mv = load ptr, ptr @prog, align 8, !tbaa !845
  %i.mw = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.mu, ptr noundef nonnull @.str.361, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3746, ptr noundef nonnull @.str.352, ptr noundef %i.mv, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.hs:                                            ; preds = %bb.hp
  %i.mx = load ptr, ptr @opt_tls_cert, align 8, !tbaa !845
  %i.my = load ptr, ptr @opt_tls_key, align 8
  %i.mz = load ptr, ptr @opt_tls_keypass, align 8
  %i.na = load ptr, ptr @opt_tls_extra, align 8
  %i.nb = insertelement <4 x ptr> poison, ptr %i.mx, i64 0
  %i.nc = insertelement <4 x ptr> %i.nb, ptr %i.my, i64 1
  %i.nd = insertelement <4 x ptr> %i.nc, ptr %i.mz, i64 2
  %i.ne = insertelement <4 x ptr> %i.nd, ptr %i.na, i64 3
  %.fr = freeze <4 x ptr> %i.ne
  %i.nf = load ptr, ptr @opt_tls_trusted, align 8
  %i.ng = icmp eq ptr %i.nf, null
  %i.nh = load ptr, ptr @opt_tls_host, align 8
  %i.ni = icmp eq ptr %i.nh, null
  %i.nj = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.nk = bitcast <4 x i1> %i.nj to i4
  %i.nl = icmp eq i4 %i.nk, 0
  %op.rdx = select i1 %i.nl, i1 %i.ng, i1 false
  %op.rdx420 = select i1 %op.rdx, i1 %i.ni, i1 false
  %i.nm = load i32, ptr @opt_tls_used, align 4, !tbaa !847 ; 2 uses
  %i.nn = load i32, ptr @opt_verbosity, align 4
  %i.no = icmp slt i32 %i.nn, 4                   ; 2 uses
  br i1 %op.rdx420, label %bb.ht, label %bb.hv

bb.ht:                                            ; preds = %bb.hs
  %i.np = icmp eq i32 %i.nm, 0
  %or.cond39 = select i1 %i.np, i1 true, i1 %i.no
  br i1 %or.cond39, label %bb.hx, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.nq = load ptr, ptr @bio_out, align 8, !tbaa !849
  %i.nr = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nq, ptr noundef nonnull @.str.362, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3755, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.hx

bb.hv:                                            ; preds = %bb.hs
  %i.ns = icmp ne i32 %i.nm, 0
  %or.cond41 = select i1 %i.ns, i1 true, i1 %i.no
  br i1 %or.cond41, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.nt = load ptr, ptr @bio_out, align 8, !tbaa !849
  %i.nu = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nt, ptr noundef nonnull @.str.364, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3757, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hv, %bb.hw, %bb.ht, %bb.hu
  %i.nv = load ptr, ptr @opt_port, align 8, !tbaa !845
  %.not172 = icmp eq ptr %i.nv, null
  br i1 %.not172, label %bb.ik, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.nw = load i32, ptr @opt_tls_used, align 4, !tbaa !847
  %.not173 = icmp eq i32 %i.nw, 0
  br i1 %.not173, label %bb.ib, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.nx = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.ny = icmp slt i32 %i.nx, 3
  br i1 %i.ny, label %handle_opts_upfront.exit.thread, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.nz = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.oa = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nz, ptr noundef nonnull @.str.365, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3761, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ib:                                            ; preds = %bb.hy
  %i.ob = load ptr, ptr @opt_server, align 8, !tbaa !845
  %i.oc = icmp ne ptr %i.ob, null
  %i.od = load i32, ptr @opt_use_mock_srv, align 4
  %i.oe = icmp ne i32 %i.od, 0
  %or.cond11 = select i1 %i.oc, i1 true, i1 %i.oe
  br i1 %or.cond11, label %bb.ic, label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.of = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.og = icmp slt i32 %i.of, 3
  br i1 %i.og, label %handle_opts_upfront.exit.thread, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.oh = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.oi = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.oh, ptr noundef nonnull @.str.366, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3765, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ie:                                            ; preds = %bb.ib
  %i.oj = load ptr, ptr @opt_reqin, align 8, !tbaa !845
  %i.ok = icmp ne ptr %i.oj, null
  %i.ol = load ptr, ptr @opt_reqout, align 8
  %i.om = icmp ne ptr %i.ol, null
  %or.cond13 = select i1 %i.ok, i1 true, i1 %i.om
  br i1 %or.cond13, label %bb.if, label %bb.ih

bb.if:                                            ; preds = %bb.ie
  %i.on = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.oo = icmp slt i32 %i.on, 3
  br i1 %i.oo, label %handle_opts_upfront.exit.thread, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.op = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.oq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.op, ptr noundef nonnull @.str.367, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3769, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ih:                                            ; preds = %bb.ie
  %i.or = load ptr, ptr @opt_rspin, align 8, !tbaa !845
  %i.os = icmp ne ptr %i.or, null
  %i.ot = load ptr, ptr @opt_rspout, align 8
  %i.ou = icmp ne ptr %i.ot, null
  %or.cond15 = select i1 %i.os, i1 true, i1 %i.ou
  br i1 %or.cond15, label %bb.ii, label %.thread370

bb.ii:                                            ; preds = %bb.ih
  %i.ov = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.ow = icmp slt i32 %i.ov, 3
  br i1 %i.ow, label %handle_opts_upfront.exit.thread, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.ox = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.oy = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ox, ptr noundef nonnull @.str.368, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3773, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ik:                                            ; preds = %bb.hx
  %.pre = load ptr, ptr @opt_server, align 8, !tbaa !845
  %.pre318.a = load i32, ptr @opt_use_mock_srv, align 4
  %i.oz = icmp ne ptr %.pre, null                 ; 2 uses
  %i.pa = icmp ne i32 %.pre318.a, 0               ; 2 uses
  %or.cond17 = select i1 %i.oz, i1 %i.pa, i1 false
  br i1 %or.cond17, label %bb.il, label %.thread370

bb.il:                                            ; preds = %bb.ik
  %i.pb = load i32, ptr @opt_verbosity, align 4, !tbaa !847
  %i.pc = icmp slt i32 %i.pb, 3
  br i1 %i.pc, label %handle_opts_upfront.exit.thread, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.pd = load ptr, ptr @bio_err, align 8, !tbaa !849
  %i.pe = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.pd, ptr noundef nonnull @.str.369, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3779, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

.thread370:                                       ; preds = %bb.ih, %bb.ik
  %i.pf = phi i1 [ %i.oz, %bb.ik ], [ false, %bb.ih ]
  %i.pg = phi i1 [ %i.pa, %bb.ik ], [ false, %bb.ih ]
end_hunk_1
