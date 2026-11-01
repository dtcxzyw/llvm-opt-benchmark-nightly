Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurmd?download=true
inline.NumInlined: 37
inline.NumDeleted: 23
begin_hunk_0_@_read_config:bb.a
  %.not65 = icmp eq ptr %i.ar, null
  br i1 %.not65, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 272), align 8
  %i.at = call ptr @xstrcasestr(ptr noundef %i.as, ptr noundef nonnull @.str.201) #16
  %.not66 = icmp eq ptr %i.at, null
  br i1 %.not66, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.202) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.au = load ptr, ptr @conf, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4264
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call ptr @find_node_record(ptr noundef %i.aw) #16 ; 12 uses
  %.not67 = icmp eq ptr %i.ax, null
  %i.ay = load ptr, ptr @conf, align 8            ; 2 uses
  br i1 %.not67, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4264
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.203, ptr noundef %i.ba) #16 ; 0 uses
  call void @exit(i32 noundef 1) #18
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 4328 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not68 = icmp eq ptr %i.bd, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ax, i64 352
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.not70 = icmp eq ptr %.pre, null               ; 2 uses
  br i1 %.not68, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not70, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.bc, ptr noundef nonnull @.str.204, ptr noundef nonnull %.pre) #16
  %.pre95 = load ptr, ptr @conf, align 8
  %.phi.trans.insert96 = getelementptr inbounds nuw i8, ptr %.pre95, i64 4328
  %.pre97 = load ptr, ptr %.phi.trans.insert96, align 8
  br label %.thread

bb.r:                                             ; preds = %bb.o
  br i1 %.not70, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = call ptr @xstrdup(ptr noundef nonnull %.pre) #16 ; 2 uses
  %i.bf = load ptr, ptr @conf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4328
  store ptr %i.be, ptr %i.bg, align 8
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.r, %bb.s, %bb.q
  %i.bh = phi ptr [ null, %bb.r ], [ %i.be, %bb.s ], [ %.pre97, %bb.q ], [ %i.bd, %bb.p ]
  call void @parse_slurmd_params(ptr noundef %i.bh) #16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 376
  %i.bj = load i16, ptr %i.bi, align 8            ; 2 uses
  %i.bk = load ptr, ptr @conf, align 8            ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4376
  store i16 %i.bj, ptr %i.bl, align 8
  %i.bm = zext i16 %i.bj to i32
  store i32 %i.bm, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1384), align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bo = load i16, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 4188
  store i16 %i.bo, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 90
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 4192
  store i16 %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.bu = load i16, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 4186
  store i16 %i.bu, ptr %i.bv, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 554
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 4190
  store i16 %i.bx, ptr %i.by, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 544
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 4194
  store i16 %i.ca, ptr %i.cb, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.cd = load i16, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 4168
  store i16 %i.cd, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call ptr @xstrdup(ptr noundef %i.cg) #16
  %i.ci = load ptr, ptr @conf, align 8            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4160
  store ptr %i.ch, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4176
  store i64 %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 4240
  call void @slurm_xfree(ptr noundef nonnull %i.cn) #16
  %i.co = load ptr, ptr @conf, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4248
  call void @slurm_xfree(ptr noundef nonnull %i.cp) #16
  %i.cq = load ptr, ptr @conf, align 8            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4144 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %.not71 = icmp eq ptr %i.cs, null
  br i1 %.not71, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread
  call void @slurm_xfree(ptr noundef nonnull %i.cr) #16
  %i.ct = load ptr, ptr @conf, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4360
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.167, ptr noundef %i.cv) #16
  %i.cx = load ptr, ptr @conf, align 8            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4144
  store ptr %i.cw, ptr %i.cy, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  %i.cz = phi ptr [ %i.cx, %bb.t ], [ %i.cq, %.thread ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4256
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_update_nice.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = call i32 @getpid() #16                  ; 2 uses
  %i.de = call i32 @getpriority(i32 noundef 0, i32 noundef %i.dd) #16
  %i.df = load ptr, ptr @conf, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4256
  %i.dh = load i32, ptr %i.dg, align 8            ; 2 uses
  %i.di = icmp eq i32 %i.de, %i.dh
  br i1 %i.di, label %_update_nice.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = call i32 @setpriority(i32 noundef 0, i32 noundef %i.dd, i32 noundef %i.dh) #16
  %.not.i = icmp eq i32 %i.dj, 0
  %.pre99 = load ptr, ptr @conf, align 8          ; 2 uses
  br i1 %.not.i, label %_update_nice.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre99, i64 4256
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.215, i32 noundef %i.dl) #16 ; 0 uses
  %.pre98 = load ptr, ptr @conf, align 8
  br label %_update_nice.exit

_update_nice.exit:                                ; preds = %bb.u, %bb.v, %bb.w, %bb.x
  %i.dn = phi ptr [ %i.cz, %bb.u ], [ %i.df, %bb.v ], [ %.pre99, %bb.w ], [ %.pre98, %bb.x ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4196
  store i16 0, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4144
  %i.dq = load ptr, ptr %i.dp, align 8
  %.not72 = icmp eq ptr %i.dq, null
  br i1 %.not72, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_update_nice.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 1336
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call ptr @xstrcasestr(ptr noundef %i.ds, ptr noundef nonnull @.str.205) #16
  %.not73 = icmp eq ptr %i.dt, null
  br i1 %.not73, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.206) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %_update_nice.exit
  %i.du = load ptr, ptr @conf, align 8            ; 8 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4196
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 4198
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 4200
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 4202
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 4204
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 4232
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 4240
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 4248
  %i.ed = call i32 @xcpuinfo_hwloc_topo_get(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ec) #16
  %.not74 = icmp eq i32 %i.ed, 0
  br i1 %.not74, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.207) #17
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 284
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = and i32 %i.ef, 1                        ; 2 uses
  %.not75 = icmp eq i32 %i.eg, 0                  ; 2 uses
  %i.eh = load ptr, ptr @conf, align 8            ; 42 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4593
  %i.ej = load i8, ptr %i.ei, align 1             ; 2 uses
  %i.ek = icmp eq i8 %i.ej, 1
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %i.eh, i64 4196
  %.pre107 = load i16, ptr %.phi.trans.insert106, align 4 ; 7 uses
  br i1 %i.ek, label %._crit_edge103, label %bb.ad

._crit_edge103:                                   ; preds = %bb.ac
  %.phi.trans.insert104 = getelementptr inbounds nuw i8, ptr %i.eh, i64 4152
  %.pre105 = load i16, ptr %.phi.trans.insert104, align 8
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 4190
  %i.em = load i16, ptr %i.el, align 2            ; 8 uses
  %i.en = icmp eq i16 %i.em, %.pre107
  br i1 %i.en, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 4186
  %i.ep = load i16, ptr %i.eo, align 2
  %i.eq = icmp eq i16 %i.ep, %i.em
  br i1 %i.eq, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 4192
  %i.es = load i16, ptr %i.er, align 8
  %i.et = icmp eq i16 %i.es, 1
  br i1 %i.et, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 4194
  %i.ev = load i16, ptr %i.eu, align 2
  %i.ew = icmp eq i16 %i.ev, 1
  br i1 %i.ew, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eh, i64 4152
  store i16 %i.em, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eh, i64 4188
  %i.ez = load i16, ptr %i.ey, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eh, i64 4154
  store i16 %i.ez, ptr %i.fa, align 2
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eh, i64 4200
  store i16 %i.em, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eh, i64 4156
  store i16 %i.em, ptr %i.fc, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eh, i64 4202
  store i16 1, ptr %i.fd, align 2
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eh, i64 4184
  store i16 1, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eh, i64 4204
  store i16 1, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eh, i64 4158
  store i16 1, ptr %i.fg, align 2
  br label %.thread141

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.fh = icmp eq i8 %i.ej, 2
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eh, i64 4186 ; 2 uses
  %i.fj = load i16, ptr %i.fi, align 2            ; 4 uses
  br i1 %i.fh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eh, i64 4152
  %0 = load <2 x i16>, ptr %i.fi, align 2
  store <2 x i16> %0, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eh, i64 4156
  store i16 %i.em, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eh, i64 4192
  %i.fn = load i16, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eh, i64 4184
  store i16 %i.fn, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eh, i64 4194
  %i.fq = load i16, ptr %i.fp, align 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eh, i64 4158
  store i16 %i.fq, ptr %i.fr, align 2
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.fs = icmp ult i16 %.pre107, %i.fj
  %or.cond143 = select i1 %.not75, i1 %i.fs, i1 false
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eh, i64 4152 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eh, i64 4154 ; 2 uses
  br i1 %or.cond143, label %bb.al, label %._crit_edge100

bb.al:                                            ; preds = %bb.ak
  store i16 %.pre107, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eh, i64 4198
  %i.fw = load <2 x i16>, ptr %i.fv, align 2
  store <2 x i16> %i.fw, ptr %i.fu, align 2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eh, i64 4202
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eh, i64 4184
  store i16 %i.fy, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eh, i64 4204
  %i.gb = load i16, ptr %i.ga, align 4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eh, i64 4158
  store i16 %i.gb, ptr %i.gc, align 2
  br label %.thread141

._crit_edge100:                                   ; preds = %bb.ak
  store i16 %i.fj, ptr %i.ft, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eh, i64 4188
  %i.ge = load i16, ptr %i.gd, align 4
  store i16 %i.ge, ptr %i.fu, align 2
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eh, i64 4156
  store i16 %i.em, ptr %i.gf, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eh, i64 4192
  %i.gh = load i16, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eh, i64 4184
  store i16 %i.gh, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eh, i64 4194
  %i.gk = load i16, ptr %i.gj, align 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eh, i64 4158
  store i16 %i.gk, ptr %i.gl, align 2
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge103, %._crit_edge100, %bb.aj
  %i.gm = phi i16 [ %.pre105, %._crit_edge103 ], [ %i.fj, %._crit_edge100 ], [ %i.fj, %bb.aj ] ; 5 uses
  %.not76 = icmp eq i16 %i.gm, %.pre107
  br i1 %.not76, label %.thread141, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eh, i64 4202
  %i.go = load i16, ptr %i.gn, align 2
  %i.gp = icmp eq i16 %i.gm, %i.go
  br i1 %i.gp, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eh, i64 4200
  %i.gr = load i16, ptr %i.gq, align 8
  %i.gs = icmp eq i16 %i.gm, %i.gr
  br i1 %i.gs, label %bb.ap, label %.thread141

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gt = phi ptr [ @.str.210, %bb.ao ], [ @.str.209, %bb.an ]
  %i.gu = select i1 %.not75, i32 5, i32 3
  %i.gv = zext i16 %i.gm to i32
  %i.gw = zext i16 %.pre107 to i32
  call void (i32, ptr, ...) @log_var(i32 noundef %i.gu, ptr noundef nonnull @.str.208, ptr noundef nonnull %i.gt, i32 noundef %i.gv, i32 noundef %i.gw) #16
  %.pre108 = load ptr, ptr @conf, align 8         ; 2 uses
  %.phi.trans.insert109 = getelementptr inbounds nuw i8, ptr %.pre108, i64 4152
  %.pre110 = load i16, ptr %.phi.trans.insert109, align 8
  br label %.thread141

.thread141:                                       ; preds = %bb.al, %bb.ah, %bb.ap, %bb.ao, %bb.am
  %i.gx = phi i16 [ %.pre110, %bb.ap ], [ %i.gm, %bb.ao ], [ %.pre107, %bb.am ], [ %.pre107, %bb.al ], [ %i.em, %bb.ah ] ; 4 uses
  %i.gy = phi ptr [ %.pre108, %bb.ap ], [ %i.eh, %bb.ao ], [ %i.eh, %bb.am ], [ %i.eh, %bb.al ], [ %i.eh, %bb.ah ] ; 16 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4196
  %i.ha = load i16, ptr %i.gz, align 4            ; 2 uses
  %.not77 = icmp eq i16 %i.gx, %i.ha
  br i1 %.not77, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.thread141
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 4202
  %i.hc = load i16, ptr %i.hb, align 2            ; 2 uses
  %.not78 = icmp eq i16 %i.gx, %i.hc
  br i1 %.not78, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 4200
  %i.he = load i16, ptr %i.hd, align 8            ; 2 uses
  %.not79 = icmp eq i16 %i.gx, %i.he
  br i1 %.not79, label %bb.as, label %._crit_edge111

._crit_edge111:                                   ; preds = %bb.ar
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %i.gy, i64 4156
  %.pre113 = load i16, ptr %.phi.trans.insert112, align 4
  br label %bb.av

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.thread141
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 4156
  %i.hg = load i16, ptr %i.hf, align 4            ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gy, i64 4200
  %i.hi = load i16, ptr %i.hh, align 8            ; 2 uses
  %.not80 = icmp eq i16 %i.hg, %i.hi
  br i1 %.not80, label %bb.at, label %._crit_edge114

._crit_edge114:                                   ; preds = %bb.as
  %.phi.trans.insert115 = getelementptr inbounds nuw i8, ptr %i.gy, i64 4202
  %.pre116 = load i16, ptr %.phi.trans.insert115, align 2
  br label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gy, i64 4184
  %i.hk = load i16, ptr %i.hj, align 8            ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gy, i64 4202
  %i.hm = load i16, ptr %i.hl, align 2            ; 2 uses
  %.not81 = icmp eq i16 %i.hk, %i.hm
  br i1 %.not81, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gy, i64 4158
  %i.ho = load i16, ptr %i.hn, align 2
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gy, i64 4204
  %i.hq = load i16, ptr %i.hp, align 4
  %.not82 = icmp eq i16 %i.ho, %i.hq
  br i1 %.not82, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge114, %._crit_edge111, %bb.au, %bb.at
  %i.hr = phi i16 [ %i.hc, %._crit_edge111 ], [ %i.hk, %bb.au ], [ %i.hm, %bb.at ], [ %.pre116, %._crit_edge114 ]
  %i.hs = phi i16 [ %i.he, %._crit_edge111 ], [ %i.hg, %bb.au ], [ %i.hg, %bb.at ], [ %i.hi, %._crit_edge114 ]
  %i.ht = phi i16 [ %.pre113, %._crit_edge111 ], [ %i.hg, %bb.au ], [ %i.hg, %bb.at ], [ %i.hg, %._crit_edge114 ]
  %i.hu = or disjoint i32 %i.eg, 2
  %i.hv = zext i16 %i.gx to i32
  %i.hw = zext i16 %i.ha to i32
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gy, i64 4154
  %i.hy = load i16, ptr %i.hx, align 2            ; 2 uses
  %i.hz = zext i16 %i.hy to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gy, i64 4198
  %i.ib = load i16, ptr %i.ia, align 2            ; 2 uses
  %i.ic = zext i16 %i.ib to i32
  %i.id = udiv i16 %i.ht, %i.hy
  %i.ie = zext i16 %i.id to i32
  %i.if = udiv i16 %i.hs, %i.ib
  %i.ig = zext i16 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gy, i64 4184
  %i.ii = load i16, ptr %i.ih, align 8
  %i.ij = zext i16 %i.ii to i32
  %i.ik = zext i16 %i.hr to i32
  %i.il = getelementptr inbounds nuw i8, ptr %i.gy, i64 4158
  %i.im = load i16, ptr %i.il, align 2
  %i.in = zext i16 %i.im to i32
  %i.io = getelementptr inbounds nuw i8, ptr %i.gy, i64 4204
  %i.ip = load i16, ptr %i.io, align 4
  %i.iq = zext i16 %i.ip to i32
  call void (i32, ptr, ...) @log_var(i32 noundef %i.hu, ptr noundef nonnull @.str.211, i32 noundef %i.hv, i32 noundef %i.hw, i32 noundef %i.hz, i32 noundef %i.ic, i32 noundef %i.ie, i32 noundef %i.ig, i32 noundef %i.ij, i32 noundef %i.ik, i32 noundef %i.in, i32 noundef %i.iq) #16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ax, i64 408 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8
  call fastcc void @_spec_override(i64 noundef %i.is)
  %i.it = load i64, ptr %i.ir, align 8
  %i.iu = load ptr, ptr @conf, align 8            ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4208
  store i64 %i.it, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 4216
  %i.ix = call i32 @get_memory(ptr noundef nonnull %i.iw) #16 ; 0 uses
  %i.iy = load ptr, ptr @conf, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4228
  %i.ja = call i32 @get_up_time(ptr noundef nonnull %i.iz) #16 ; 0 uses
  %i.jb = call ptr @slurm_conf_lock() #16         ; 6 uses
  %i.jc = load ptr, ptr @conf, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4344
  call void @slurm_xfree(ptr noundef nonnull %i.jd) #16
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 1560
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = load ptr, ptr @conf, align 8            ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4264
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 4128
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = call ptr @slurm_conf_expand_slurmd_path(ptr noundef %i.jf, ptr noundef %i.ji, ptr noundef %i.jk) #16
  %i.jm = load ptr, ptr @conf, align 8            ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4344
  store ptr %i.jl, ptr %i.jn, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 4336
  call void @slurm_xfree(ptr noundef nonnull %i.jo) #16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jb, i64 1376
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = load ptr, ptr @conf, align 8            ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 4264
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 4128
  %i.jv = load ptr, ptr %i.ju, align 8
end_hunk_0
