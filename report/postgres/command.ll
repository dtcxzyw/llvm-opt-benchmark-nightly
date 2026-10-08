Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/command?download=true
inline.NumInlined: 128
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@exec_command:bb.a

bb.ej:                                            ; preds = %bb.ei
  br i1 %.not257.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.kv = call ptr @PQerrorMessage(ptr noundef nonnull %.2206.i.i) #16
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.180, ptr noundef %i.kv) #16
  call void @PQfinish(ptr noundef nonnull %.2206.i.i) #16
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.not258.i.i = icmp eq ptr %i.dp, null
  br i1 %.not258.i.i, label %do_connect.exit.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.186) #16
  br label %do_connect.exit.i

bb.en:                                            ; preds = %bb.ei
  br i1 %.not257.i.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.kw = call ptr @PQerrorMessage(ptr noundef nonnull %.2206.i.i) #16
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.187, ptr noundef %i.kw) #16
  call void @PQfinish(ptr noundef nonnull %.2206.i.i) #16
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.not255.i.i = icmp eq ptr %i.dp, null
  br i1 %.not255.i.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @PQfinish(ptr noundef nonnull %i.dp) #16
  store ptr null, ptr @pset, align 8
  call void @ResetCancelConn() #16
  call void @UnsyncVariables()
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.kx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 424), align 8 ; 2 uses
  %.not256.i.i = icmp eq ptr %i.kx, null
  br i1 %.not256.i.i, label %do_connect.exit.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @PQfinish(ptr noundef nonnull %i.kx) #16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 424), align 8
  br label %do_connect.exit.i

bb.et:                                            ; preds = %.thread308.i.i
  %i.ky = call ptr @PQsetNoticeProcessor(ptr noundef %.2206.i.i, ptr noundef nonnull @NoticeProcessor, ptr noundef null) #16 ; 0 uses
  store ptr %.2206.i.i, ptr @pset, align 8
  call void @SyncVariables()
  call void @connection_warnings(i1 noundef zeroext false)
  %i.kz = load i8, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 434), align 2, !range !8, !noundef !9
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %bb.fh, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.not259.i.i = icmp eq ptr %i.dp, null
  br i1 %.not259.i.i, label %param_is_newly_set.exit.thread.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.lb = call ptr @PQhost(ptr noundef nonnull %i.dp) #16 ; 2 uses
  %i.lc = load ptr, ptr @pset, align 8
  %i.ld = call ptr @PQhost(ptr noundef %i.lc) #16 ; 2 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %param_is_newly_set.exit.thread314.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.lf = icmp eq ptr %i.lb, null
  br i1 %i.lf, label %param_is_newly_set.exit.thread.i.i, label %param_is_newly_set.exit.i.i

param_is_newly_set.exit.i.i:                      ; preds = %bb.ew
  %i.lg = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull readonly dereferenceable(1) %i.ld) #17
  %.not.i280.not.i.i = icmp eq i32 %i.lg, 0
  br i1 %.not.i280.not.i.i, label %param_is_newly_set.exit.thread314.i.i, label %param_is_newly_set.exit.thread.i.i

param_is_newly_set.exit.thread314.i.i:            ; preds = %param_is_newly_set.exit.i.i, %bb.ev
  %i.lh = call ptr @PQport(ptr noundef nonnull %i.dp) #16 ; 2 uses
  %i.li = load ptr, ptr @pset, align 8
  %i.lj = call ptr @PQport(ptr noundef %i.li) #16 ; 2 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %.thread319.i.i, label %bb.ex

bb.ex:                                            ; preds = %param_is_newly_set.exit.thread314.i.i
  %i.ll = icmp eq ptr %i.lh, null
  br i1 %i.ll, label %param_is_newly_set.exit.thread.i.i, label %param_is_newly_set.exit284.i.i

param_is_newly_set.exit284.i.i:                   ; preds = %bb.ex
  %i.lm = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lh, ptr noundef nonnull readonly dereferenceable(1) %i.lj) #17
  %.not.i282.not.i.i = icmp eq i32 %i.lm, 0
  br i1 %.not.i282.not.i.i, label %.thread319.i.i, label %param_is_newly_set.exit.thread.i.i

param_is_newly_set.exit.thread.i.i:               ; preds = %param_is_newly_set.exit284.i.i, %bb.ex, %param_is_newly_set.exit.i.i, %bb.ew, %bb.eu
  %i.ln = load ptr, ptr @pset, align 8
  %i.lo = call ptr @PQhost(ptr noundef %i.ln) #16 ; 5 uses
  %i.lp = load ptr, ptr @pset, align 8
  %i.lq = call ptr @PQhostaddr(ptr noundef %i.lp) #16 ; 6 uses
  %.val.i.i = load i8, ptr %i.lo, align 1
  %.not260.i.i = icmp eq ptr %i.lq, null          ; 2 uses
  switch i8 %.val.i.i, label %bb.fc [
    i8 64, label %bb.ey
    i8 47, label %bb.ey
  ]

bb.ey:                                            ; preds = %param_is_newly_set.exit.thread.i.i, %param_is_newly_set.exit.thread.i.i
  br i1 %.not260.i.i, label %bb.fb, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.lr = load i8, ptr %i.lq, align 1
  %.not264.i.i = icmp eq i8 %i.lr, 0
  br i1 %.not264.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ls = load ptr, ptr @pset, align 8
  %i.lt = call ptr @PQdb(ptr noundef %i.ls) #16
  %i.lu = load ptr, ptr @pset, align 8
  %i.lv = call ptr @PQuser(ptr noundef %i.lu) #16
  %i.lw = load ptr, ptr @pset, align 8
  %i.lx = call ptr @PQport(ptr noundef %i.lw) #16
  %i.ly = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.188, ptr noundef %i.lt, ptr noundef %i.lv, ptr noundef nonnull %i.lq, ptr noundef %i.lx) #16 ; 0 uses
  br label %bb.fh

bb.fb:                                            ; preds = %bb.ez, %bb.ey
  %i.lz = load ptr, ptr @pset, align 8
  %i.ma = call ptr @PQdb(ptr noundef %i.lz) #16
  %i.mb = load ptr, ptr @pset, align 8
  %i.mc = call ptr @PQuser(ptr noundef %i.mb) #16
  %i.md = load ptr, ptr @pset, align 8
  %i.me = call ptr @PQport(ptr noundef %i.md) #16
  %i.mf = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.189, ptr noundef %i.ma, ptr noundef %i.mc, ptr noundef nonnull %i.lo, ptr noundef %i.me) #16 ; 0 uses
  br label %bb.fh

bb.fc:                                            ; preds = %param_is_newly_set.exit.thread.i.i
  br i1 %.not260.i.i, label %bb.fg, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.mg = load i8, ptr %i.lq, align 1
  %.not261.i.i = icmp eq i8 %i.mg, 0
  br i1 %.not261.i.i, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.mh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lo, ptr noundef nonnull dereferenceable(1) %i.lq) #17
  %.not262.i.i = icmp eq i32 %i.mh, 0
  br i1 %.not262.i.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.mi = load ptr, ptr @pset, align 8
  %i.mj = call ptr @PQdb(ptr noundef %i.mi) #16
  %i.mk = load ptr, ptr @pset, align 8
  %i.ml = call ptr @PQuser(ptr noundef %i.mk) #16
  %i.mm = load ptr, ptr @pset, align 8
  %i.mn = call ptr @PQport(ptr noundef %i.mm) #16
  %i.mo = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.190, ptr noundef %i.mj, ptr noundef %i.ml, ptr noundef nonnull %i.lo, ptr noundef nonnull %i.lq, ptr noundef %i.mn) #16 ; 0 uses
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe, %bb.fd, %bb.fc
  %i.mp = load ptr, ptr @pset, align 8
  %i.mq = call ptr @PQdb(ptr noundef %i.mp) #16
  %i.mr = load ptr, ptr @pset, align 8
  %i.ms = call ptr @PQuser(ptr noundef %i.mr) #16
  %i.mt = load ptr, ptr @pset, align 8
  %i.mu = call ptr @PQport(ptr noundef %i.mt) #16
  %i.mv = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.191, ptr noundef %i.mq, ptr noundef %i.ms, ptr noundef nonnull %i.lo, ptr noundef %i.mu) #16 ; 0 uses
  br label %bb.fh

.thread319.i.i:                                   ; preds = %param_is_newly_set.exit284.i.i, %param_is_newly_set.exit.thread314.i.i
  %i.mw = load ptr, ptr @pset, align 8
  %i.mx = call ptr @PQdb(ptr noundef %i.mw) #16
  %i.my = load ptr, ptr @pset, align 8
  %i.mz = call ptr @PQuser(ptr noundef %i.my) #16
  %i.na = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.192, ptr noundef %i.mx, ptr noundef %i.mz) #16 ; 0 uses
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %bb.fb, %bb.fa, %bb.et
  %.not265.i.i = icmp eq ptr %i.dp, null
  br i1 %.not265.i.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %.thread319.i.i
  call void @PQfinish(ptr noundef nonnull %i.dp) #16
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.nb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 424), align 8 ; 2 uses
  %.not266.i.i = icmp eq ptr %i.nb, null
  br i1 %.not266.i.i, label %do_connect.exit.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @PQfinish(ptr noundef nonnull %i.nb) #16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 424), align 8
  br label %do_connect.exit.i

do_connect.exit.i:                                ; preds = %bb.fk, %bb.fj, %bb.es, %bb.er, %bb.em, %bb.el, %bb.az, %bb.au
  %.0207.i.i = phi i32 [ 5, %bb.au ], [ 5, %bb.em ], [ 5, %bb.az ], [ 5, %bb.er ], [ 5, %bb.es ], [ 5, %bb.el ], [ 2, %bb.fk ], [ 2, %bb.fj ]
  call void @free(ptr noundef %.0.i35.i) #16
  call void @free(ptr noundef %.0.i40.i) #16
  call void @free(ptr noundef %.0.i45.i) #16
  br label %bb.fl

bb.fl:                                            ; preds = %do_connect.exit.i, %bb.ai
  %.12358.i = phi ptr [ %i.ce, %bb.ai ], [ %.12359.i, %do_connect.exit.i ]
  %.125.i = phi i32 [ 5, %bb.ai ], [ %.0207.i.i, %do_connect.exit.i ]
  call void @free(ptr noundef %.12358.i) #16
  br label %copy_previous_query.exit

bb.fm:                                            ; preds = %bb.x
  %i.nc = tail call ptr @psql_scan_slash_option(ptr noundef %1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not2.i.i281 = icmp eq ptr %i.nc, null
  br i1 %.not2.i.i281, label %copy_previous_query.exit, label %.lr.ph.i49.i

.lr.ph.i49.i:                                     ; preds = %bb.fm, %.lr.ph.i49.i
  %i.nd = phi ptr [ %i.ne, %.lr.ph.i49.i ], [ %i.nc, %bb.fm ]
  tail call void @free(ptr noundef nonnull %i.nd) #16
  %i.ne = tail call ptr @psql_scan_slash_option(ptr noundef %1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not.i50.i = icmp eq ptr %i.ne, null
  br i1 %.not.i50.i, label %copy_previous_query.exit, label %.lr.ph.i49.i, !llvm.loop !0

sub_0307:                                         ; preds = %.tail302.thread
  br i1 %.not465584586, label %sub_1308, label %.tail306.thread

sub_1308:                                         ; preds = %sub_0307
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ng = load i8, ptr %i.nf, align 1
  %.not467 = icmp eq i8 %i.ng, 100
  br i1 %.not467, label %.tail306, label %.tail306.thread

.tail306:                                         ; preds = %sub_1308
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ni = load i8, ptr %i.nh, align 1
  %i.nj = icmp eq i8 %i.ni, 0
  br i1 %i.nj, label %bb.fn, label %.tail306.thread

bb.fn:                                            ; preds = %.tail306
  br i1 %i.h, label %bb.fo, label %bb.fz

bb.fo:                                            ; preds = %bb.fn
  %i.nk = tail call ptr @psql_scan_slash_option(ptr noundef %1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #16 ; 3 uses
  %.not.i288 = icmp eq ptr %i.nk, null
  br i1 %.not.i288, label %bb.fp, label %bb.fw

bb.fp:                                            ; preds = %bb.fo
  %i.nl = tail call ptr @getenv(ptr noundef nonnull @.str.195) #16 ; 3 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.nn = load i8, ptr %i.nl, align 1
  %i.no = icmp eq i8 %i.nn, 0
  br i1 %i.no, label %bb.fr, label %bb.fw

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.np = tail call i32 @geteuid() #16            ; 2 uses
  %i.nq = tail call ptr @__errno_location() #18   ; 2 uses
  store i32 0, ptr %i.nq, align 4
  %i.nr = tail call ptr @getpwuid(i32 noundef %i.np) #16 ; 2 uses
  %.not22.i290 = icmp eq ptr %i.nr, null
  br i1 %.not22.i290, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  %i.nt = load ptr, ptr %i.ns, align 8
  br label %bb.fw

bb.ft:                                            ; preds = %bb.fr
  %i.nu = zext i32 %i.np to i64
  %i.nv = load i32, ptr %i.nq, align 4            ; 2 uses
  %.not23.i = icmp eq i32 %i.nv, 0
  br i1 %.not23.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.nw = tail call ptr @pg_strerror(i32 noundef %i.nv) #16
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.nx = phi ptr [ %i.nw, %bb.fu ], [ @.str.197, %bb.ft ]
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.196, i64 noundef %i.nu, ptr noundef %i.nx) #16
  br label %bb.fy

bb.fw:                                            ; preds = %bb.fs, %bb.fq, %bb.fo
  %.1.ph.i = phi ptr [ %i.nt, %bb.fs ], [ %i.nk, %bb.fo ], [ %i.nl, %bb.fq ] ; 2 uses
  %i.ny = tail call i32 @chdir(ptr noundef %.1.ph.i) #16
  %i.nz = icmp slt i32 %i.ny, 0
  br i1 %i.nz, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.198, ptr noundef nonnull %0, ptr noundef %.1.ph.i) #16
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw, %bb.fv
  %.2.i289 = phi i32 [ 5, %bb.fx ], [ 2, %bb.fw ], [ 5, %bb.fv ]
  tail call void @free(ptr noundef %i.nk) #16
  br label %copy_previous_query.exit

bb.fz:                                            ; preds = %bb.fn
  %i.oa = tail call ptr @psql_scan_slash_option(ptr noundef %1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not2.i.i285 = icmp eq ptr %i.oa, null
  br i1 %.not2.i.i285, label %copy_previous_query.exit, label %.lr.ph.i.i286

.lr.ph.i.i286:                                    ; preds = %bb.fz, %.lr.ph.i.i286
  %i.ob = phi ptr [ %i.oc, %.lr.ph.i.i286 ], [ %i.oa, %bb.fz ]
  tail call void @free(ptr noundef nonnull %i.ob) #16
  %i.oc = tail call ptr @psql_scan_slash_option(ptr noundef %1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not.i.i287 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i287, label %copy_previous_query.exit, label %.lr.ph.i.i286, !llvm.loop !0

.tail306.thread:                                  ; preds = %sub_1308, %sub_0307, %.tail306
  %i.od = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.91) #17
  %i.oe = icmp eq i32 %i.od, 0
  br i1 %i.oe, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %.tail306.thread
  %i.of = tail call fastcc i32 @exec_command_close_prepared(ptr noundef %1, i1 noundef zeroext %i.h, ptr noundef nonnull %0)
  br label %exec_command_a.exit

bb.gb:                                            ; preds = %.tail306.thread
  %i.og = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.92) #17
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  tail call fastcc void @exec_command_conninfo(i1 noundef zeroext %i.h)
  br label %copy_previous_query.exit

bb.gd:                                            ; preds = %bb.gb
  %i.oi = tail call i32 @pg_strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.93) #16
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.ok = tail call fastcc i32 @exec_command_copy(ptr noundef %1, i1 noundef zeroext %i.h)
  br label %copy_previous_query.exit

bb.gf:                                            ; preds = %bb.gd
  %i.ol = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.94) #17
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %bb.gf
  br i1 %i.h, label %bb.gh, label %copy_previous_query.exit

bb.gh:                                            ; preds = %bb.gg
  tail call void @print_copyright() #16
  br label %copy_previous_query.exit

bb.gi:                                            ; preds = %bb.gf
  %i.on = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.95) #17
  %i.oo = icmp eq i32 %i.on, 0
  br i1 %i.oo, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.op = tail call fastcc i32 @exec_command_crosstabview(ptr noundef %1, i1 noundef zeroext %i.h)
  br label %exec_command_a.exit

bb.gk:                                            ; preds = %bb.gi
  %i.oq = load i8, ptr %0, align 1                ; 16 uses
  switch i8 %i.oq, label %.thread [
    i8 100, label %bb.gl
    i8 101, label %.tail310
  ]

bb.gl:                                            ; preds = %bb.gk
  %i.or = tail call fastcc i32 @exec_command_d(ptr noundef %1, i1 noundef zeroext %i.h, ptr noundef nonnull %0)
  br label %exec_command_a.exit

.tail310:                                         ; preds = %bb.gk
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ot = load i8, ptr %i.os, align 1
  %i.ou = icmp eq i8 %i.ot, 0
  br i1 %i.ou, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %.tail310
  %i.ov = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.97) #17
  %i.ow = icmp eq i32 %i.ov, 0
  br i1 %i.ow, label %bb.gn, label %sub_1316

.thread:                                          ; preds = %bb.gk
  %i.ox = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.97) #17
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %bb.gn, label %.tail319.thread

bb.gn:                                            ; preds = %.thread, %bb.gm, %.tail310
  %i.oz = tail call fastcc i32 @exec_command_edit(ptr noundef %1, i1 noundef zeroext %i.h, ptr noundef %3, ptr noundef %4)
  br label %copy_previous_query.exit

sub_1316:                                         ; preds = %bb.gm
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.pb = load i8, ptr %i.pa, align 1
  %.not470 = icmp eq i8 %i.pb, 102
  br i1 %.not470, label %.tail314, label %sub_1321

.tail314:                                         ; preds = %sub_1316
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.pd = load i8, ptr %i.pc, align 1
  %i.pe = icmp eq i8 %i.pd, 0
  br i1 %i.pe, label %bb.go, label %sub_1321

bb.go:                                            ; preds = %.tail314
  %i.pf = tail call fastcc i32 @exec_command_ef_ev(ptr noundef %1, i1 noundef zeroext %i.h, ptr noundef %3, i1 noundef zeroext true)
  br label %copy_previous_query.exit

sub_1321:                                         ; preds = %.tail314, %sub_1316
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 1
end_hunk_0
begin_hunk_1_@exec_command_unrestrict:bb.a
  br label %ignore_slash_options.exit

bb.i:                                             ; preds = %bb.g
  tail call void @pfree(ptr noundef nonnull %i.e) #16
  store i1 false, ptr @restricted, align 1
  br label %ignore_slash_options.exit

bb.j:                                             ; preds = %bb.a
  %i.h = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not2.i = icmp eq ptr %i.h, null
  br i1 %.not2.i, label %ignore_slash_options.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %i.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.h, %bb.j ]
  tail call void @free(ptr noundef nonnull %i.i) #16
  %i.j = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %ignore_slash_options.exit, label %.lr.ph.i, !llvm.loop !0

ignore_slash_options.exit:                        ; preds = %.lr.ph.i, %bb.f, %bb.h, %bb.d, %bb.i, %bb.j
  %.1 = phi i32 [ 2, %bb.i ], [ 5, %bb.f ], [ 2, %bb.j ], [ 5, %bb.d ], [ 5, %bb.h ], [ 2, %.lr.ph.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 2, 6) i32 @exec_command_unset(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 4 uses
  %.not = icmp eq ptr %i.a, null                  ; 2 uses
  br i1 %1, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.172, ptr noundef %2) #16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 416), align 8
  %i.c = tail call zeroext i1 @SetVariable(ptr noundef %i.b, ptr noundef nonnull %i.a, ptr noundef null) #16
  %spec.select = select i1 %i.c, i32 2, i32 5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %spec.select, %bb.d ], [ 5, %bb.c ]
  tail call void @free(ptr noundef %i.a) #16
  br label %ignore_slash_options.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not, label %ignore_slash_options.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.d = phi ptr [ %i.e, %.lr.ph.i ], [ %i.a, %bb.f ]
  tail call void @free(ptr noundef nonnull %i.d) #16
  %i.e = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %ignore_slash_options.exit, label %.lr.ph.i, !llvm.loop !0

ignore_slash_options.exit:                        ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.1 = phi i32 [ %.0, %bb.e ], [ 2, %bb.f ], [ 2, %.lr.ph.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 2, 6) i32 @exec_command_write(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  br i1 %1, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 3, ptr noundef null, i1 noundef zeroext true) #16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.240) #16
  br label %.thread43

bb.d:                                             ; preds = %bb.b
  %.not30 = icmp eq ptr %i.b, null
  br i1 %.not30, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.172, ptr noundef %2) #16
  br label %.thread43

bb.f:                                             ; preds = %bb.d
  call void @expand_tilde(ptr noundef nonnull %i.a) #16
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 124                     ; 2 uses
  br i1 %i.e, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.f = call i32 @fflush(ptr noundef null)       ; 0 uses
  call void @disable_sigpipe_trap() #16
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = call noalias ptr @popen(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.162) ; 2 uses
  %.not31 = icmp eq ptr %i.i, null
  br i1 %.not31, label %bb.p, label %bb.h

.thread:                                          ; preds = %bb.f
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 8), align 8
  call void @canonicalize_path_enc(ptr noundef nonnull %i.c, i32 noundef %i.j) #16
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = call noalias ptr @fopen(ptr noundef %i.k, ptr noundef nonnull @.str.162) ; 2 uses
  %.not3157 = icmp eq ptr %i.l, null
  br i1 %.not3157, label %.thread59, label %bb.h

.thread59:                                        ; preds = %.thread
  %i.m = load ptr, ptr %i.a, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef %i.m) #16
  br label %.thread43

bb.h:                                             ; preds = %.thread, %bb.g
  %.02358 = phi ptr [ %i.l, %.thread ], [ %i.i, %bb.g ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %.not33 = icmp eq i64 %i.o, 0
  br i1 %.not33, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %.not34 = icmp eq ptr %4, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %.not35 = icmp eq i64 %i.q, 0
  br i1 %.not35, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.h
  %.sink60 = phi ptr [ %3, %bb.h ], [ %4, %bb.j ]
  %i.r = load ptr, ptr %.sink60, align 8
  %i.s = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef nonnull %.02358, ptr noundef nonnull @.str.333, ptr noundef %i.r) #16 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.j
  br i1 %i.e, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.t = call i32 @pclose(ptr noundef nonnull %.02358) ; 3 uses
  %.not36 = icmp eq i32 %i.t, 0
  br i1 %.not36, label %.thread47, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = call ptr @wait_result_to_str(i32 noundef %i.t) #16
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.334, ptr noundef %i.u, ptr noundef %i.v) #16
  br label %.thread47

.thread47:                                        ; preds = %bb.l, %bb.m
  %.126 = phi i32 [ 5, %bb.m ], [ 2, %bb.l ]
  call void @SetShellResultVariables(i32 noundef %i.t) #16
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.w = call i32 @fclose(ptr noundef nonnull %.02358)
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.o, label %.thread43

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr %i.a, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef %i.y) #16
  br label %.thread43

bb.p:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.a, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef %i.z) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread47
  %.350 = phi i32 [ %.126, %.thread47 ], [ 5, %bb.p ]
  call void @restore_sigpipe_trap() #16
  br label %.thread43

.thread43:                                        ; preds = %.thread59, %bb.e, %bb.c, %bb.n, %bb.o, %bb.q
  %.346 = phi i32 [ 5, %bb.o ], [ %.350, %bb.q ], [ 5, %.thread59 ], [ 2, %bb.n ], [ 5, %bb.c ], [ 5, %bb.e ]
  %i.aa = load ptr, ptr %i.a, align 8
  call void @free(ptr noundef %i.aa) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  %i.ab = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 3, ptr noundef null, i1 noundef zeroext false) #16
  tail call void @free(ptr noundef %i.ab) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread43
  %.4 = phi i32 [ %.346, %.thread43 ], [ 2, %bb.r ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 2, 6) i32 @exec_command_watch(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.printQueryOpt, align 8      ; 14 uses
  %5 = alloca %struct.__sigset_t, align 8         ; 11 uses
  %6 = alloca %struct.__sigset_t, align 8         ; 9 uses
  %7 = alloca %struct.__sigset_t, align 8         ; 11 uses
  %8 = alloca %struct.itimerval, align 8          ; 11 uses
  %i.a = alloca i64, align 8                      ; 19 uses
  %i.b = alloca [128 x i8], align 16              ; 20 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 13 uses
  br i1 %1, label %bb.b, label %bb.br

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 456), align 8 ; 2 uses
  %i.f = load ptr, ptr @pset, align 8
  %i.g = tail call i32 @PQpipelineStatus(ptr noundef %i.f) #16
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.lr.ph.preheader, label %bb.c

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %.not70296 = icmp eq ptr %i.h, null
  br i1 %.not70296, label %.lr.ph._crit_edge, label %.lr.ph303

bb.c:                                             ; preds = %bb.b
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.164) #16
  tail call void @clean_extended_state() #16
  br label %.loopexit

.lr.ph303:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.i = phi ptr [ %i.bs, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 13 uses
  %.057110302 = phi i8 [ %.158, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.054111301 = phi i1 [ %.155, %.lr.ph ], [ false, %.lr.ph.preheader ] ; 4 uses
  %.051112300 = phi i1 [ %.152, %.lr.ph ], [ false, %.lr.ph.preheader ] ; 4 uses
  %.047113299 = phi double [ %.148, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.043114298 = phi i32 [ %.144, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.042115297 = phi i32 [ %.1, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.j = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.i, i32 noundef 61) #17 ; 2 uses
  %.not71 = icmp eq ptr %i.j, null
  br i1 %.not71, label %bb.z, label %sub_0

sub_0:                                            ; preds = %.lr.ph303
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 6 uses
  %i.l = load i8, ptr %i.i, align 1               ; 4 uses
  %i.m = zext i8 %i.l to i32                      ; 3 uses
  %i.n = sub nsw i32 105, %i.m
  %.not116 = icmp eq i8 %i.l, 105
  br i1 %.not116, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = sub nsw i32 61, %i.q
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1
  %i.s = phi i32 [ %i.n, %sub_0 ], [ %i.r, %sub_1 ]
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.tail
  %i.u = call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.336, ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 9) #17
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %sub_091

bb.e:                                             ; preds = %bb.d, %.tail
  %i.w = trunc nuw i8 %.057110302 to i1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.337) #16
  br label %..loopexit_crit_edge.critedge

bb.g:                                             ; preds = %bb.e
  %i.x = tail call ptr @__errno_location() #18    ; 2 uses
  store i32 0, ptr %i.x, align 4
  %i.y = call double @strtod(ptr noundef nonnull %i.k, ptr noundef nonnull %i.d) #16 ; 2 uses
  %i.z = fcmp olt double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.d, align 8
  %i.ab = load i8, ptr %i.aa, align 1
  %.not75 = icmp eq i8 %i.ab, 0
  br i1 %.not75, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %i.x, align 4
  %i.ad = icmp eq i32 %i.ac, 34
  br i1 %i.ad, label %bb.j, label %.lr.ph

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.338, ptr noundef nonnull %i.k) #16
  br label %..loopexit_crit_edge.critedge

sub_091:                                          ; preds = %bb.d
  %i.ae = sub nsw i32 99, %i.m
  %.not117 = icmp eq i8 %i.l, 99
  br i1 %.not117, label %sub_192, label %.tail90

sub_192:                                          ; preds = %sub_091
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = sub nsw i32 61, %i.ah
  br label %.tail90

.tail90:                                          ; preds = %sub_091, %sub_192
  %i.aj = phi i32 [ %i.ae, %sub_091 ], [ %i.ai, %sub_192 ]
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.tail90
  %i.al = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.340, ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 6) #17
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %sub_095

bb.l:                                             ; preds = %bb.k, %.tail90
  br i1 %.054111301, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.341) #16
  br label %..loopexit_crit_edge.critedge

bb.n:                                             ; preds = %bb.l
  %i.an = tail call ptr @__errno_location() #18   ; 2 uses
  store i32 0, ptr %i.an, align 4
  %i.ao = call i32 @strtoint(ptr noundef nonnull %i.k, ptr noundef nonnull %i.d, i32 noundef 10) #16 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.d, align 8
  %i.ar = load i8, ptr %i.aq, align 1
  %.not74 = icmp eq i8 %i.ar, 0
  br i1 %.not74, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.as = load i32, ptr %i.an, align 4
  %i.at = icmp eq i32 %i.as, 34
  br i1 %i.at, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.342, ptr noundef nonnull %i.k) #16
  br label %..loopexit_crit_edge.critedge

sub_095:                                          ; preds = %bb.k
  %i.au = sub nsw i32 109, %i.m
  %.not118 = icmp eq i8 %i.l, 109
  br i1 %.not118, label %sub_196, label %.tail94

sub_196:                                          ; preds = %sub_095
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = sub nsw i32 61, %i.ax
  br label %.tail94

.tail94:                                          ; preds = %sub_095, %sub_196
  %i.az = phi i32 [ %i.au, %sub_095 ], [ %i.ay, %sub_196 ]
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.tail94
  %i.bb = call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.344, ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 9) #17
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r, %.tail94
  br i1 %.051112300, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.345) #16
  br label %..loopexit_crit_edge.critedge

bb.u:                                             ; preds = %bb.s
  %i.bd = tail call ptr @__errno_location() #18   ; 2 uses
  store i32 0, ptr %i.bd, align 4
  %i.be = call i32 @strtoint(ptr noundef nonnull %i.k, ptr noundef nonnull %i.d, i32 noundef 10) #16 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 1
  br i1 %i.bf, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = load ptr, ptr %i.d, align 8
  %i.bh = load i8, ptr %i.bg, align 1
  %.not73 = icmp eq i8 %i.bh, 0
  br i1 %.not73, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bi = load i32, ptr %i.bd, align 4
  %i.bj = icmp eq i32 %i.bi, 34
  br i1 %i.bj, label %bb.x, label %.lr.ph

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.346, ptr noundef nonnull %i.k) #16
  br label %..loopexit_crit_edge.critedge

bb.y:                                             ; preds = %bb.r
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.347, ptr noundef nonnull %i.i) #16
  br label %..loopexit_crit_edge.critedge

bb.z:                                             ; preds = %.lr.ph303
  %i.bk = trunc nuw i8 %.057110302 to i1
  br i1 %i.bk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.337) #16
  br label %..loopexit_crit_edge.critedge

bb.ab:                                            ; preds = %bb.z
  %i.bl = tail call ptr @__errno_location() #18   ; 2 uses
  store i32 0, ptr %i.bl, align 4
  %i.bm = call double @strtod(ptr noundef nonnull %i.i, ptr noundef nonnull %i.d) #16 ; 2 uses
  %i.bn = fcmp olt double %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = load ptr, ptr %i.d, align 8
  %i.bp = load i8, ptr %i.bo, align 1
  %.not72 = icmp eq i8 %i.bp, 0
  br i1 %.not72, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bq = load i32, ptr %i.bl, align 4
  %i.br = icmp eq i32 %i.bq, 34
  br i1 %i.br, label %bb.ae, label %.lr.ph

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.338, ptr noundef nonnull %i.i) #16
  br label %..loopexit_crit_edge.critedge

.lr.ph:                                           ; preds = %bb.p, %bb.w, %bb.i, %bb.ad
  %.158 = phi i8 [ 1, %bb.ad ], [ %.057110302, %bb.p ], [ 1, %bb.i ], [ %.057110302, %bb.w ]
  %.155 = phi i1 [ %.054111301, %bb.ad ], [ true, %bb.p ], [ %.054111301, %bb.i ], [ %.054111301, %bb.w ]
  %.152 = phi i1 [ %.051112300, %bb.ad ], [ %.051112300, %bb.p ], [ %.051112300, %bb.i ], [ true, %bb.w ]
  %.148 = phi double [ %i.bm, %bb.ad ], [ %.047113299, %bb.p ], [ %i.y, %bb.i ], [ %.047113299, %bb.w ] ; 2 uses
  %.144 = phi i32 [ %.043114298, %bb.ad ], [ %i.ao, %bb.p ], [ %.043114298, %bb.i ], [ %.043114298, %bb.w ] ; 2 uses
  %.1 = phi i32 [ %.042115297, %bb.ad ], [ %.042115297, %bb.p ], [ %.042115297, %bb.i ], [ %i.be, %bb.w ] ; 2 uses
  call void @free(ptr noundef nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.bs = call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %.not70 = icmp eq ptr %i.bs, null
  br i1 %.not70, label %.lr.ph._crit_edge, label %.lr.ph303

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.042115.lcssa = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %.lr.ph ] ; 4 uses
  %.043114.lcssa = phi i32 [ 0, %.lr.ph.preheader ], [ %.144, %.lr.ph ] ; 4 uses
  %.047113.lcssa = phi double [ %i.e, %.lr.ph.preheader ], [ %.148, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %copy_previous_query.exit, label %bb.af

bb.af:                                            ; preds = %.lr.ph._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.ag, label %.thread

.thread:                                          ; preds = %bb.af
  %i.bw = fmul double %.047113.lcssa, 1.000000e+03
  %i.bx = fptosi double %i.bw to i64
  %.fr105.i88188 = freeze i64 %i.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) getelementptr inbounds nuw (i8, ptr @pset, i64 48), i64 184, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  br label %bb.ai

copy_previous_query.exit:                         ; preds = %.lr.ph._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.by = load ptr, ptr %3, align 8
  call void @appendPQExpBufferStr(ptr noundef nonnull %2, ptr noundef %i.by) #16
  %.pre = load i64, ptr %i.bt, align 8
  %i.bz = icmp eq i64 %.pre, 0
  %i.ca = fmul double %.047113.lcssa, 1.000000e+03
  %i.cb = fptosi double %i.ca to i64
  %.fr105.i88 = freeze i64 %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) getelementptr inbounds nuw (i8, ptr @pset, i64 48), i64 184, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  br i1 %i.bz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %copy_previous_query.exit
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.348) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.loopexit

bb.ai:                                            ; preds = %.thread, %bb.ag
  %.fr105.i88189 = phi i64 [ %.fr105.i88188, %.thread ], [ %.fr105.i88, %bb.ag ] ; 4 uses
  %i.cc = call i32 @sigemptyset(ptr noundef nonnull %5) #16 ; 0 uses
  %i.cd = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef 17) #16 ; 0 uses
  %i.ce = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef 14) #16 ; 0 uses
  %i.cf = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef 2) #16 ; 0 uses
  %i.cg = call i32 @sigemptyset(ptr noundef nonnull %6) #16 ; 0 uses
  %i.ch = call i32 @sigaddset(ptr noundef nonnull %6, i32 noundef 17) #16 ; 0 uses
  %i.ci = call i32 @sigaddset(ptr noundef nonnull %6, i32 noundef 14) #16 ; 0 uses
  %i.cj = call i32 @sigemptyset(ptr noundef nonnull %7) #16 ; 0 uses
  %i.ck = call i32 @sigaddset(ptr noundef nonnull %7, i32 noundef 2) #16 ; 0 uses
  %i.cl = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %6, ptr noundef null) #16 ; 0 uses
  %i.cm = sdiv i64 %.fr105.i88189, 1000
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 %i.cm, ptr %i.cn, align 8
  %i.co = srem i64 %.fr105.i88189, 1000
  %i.cp = mul nsw i64 %i.co, 1000
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.cp, ptr %i.cq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false)
  %i.cr = call i32 @setitimer(i32 noundef 0, ptr noundef nonnull %8, ptr noundef null) #16
  %i.cs = icmp slt i32 %i.cr, 0                   ; 2 uses
  br i1 %i.cs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.349) #16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ct = call ptr @getenv(ptr noundef nonnull @.str.350) #16 ; 4 uses
  %.not68.i = icmp eq ptr %i.ct, null
  br i1 %.not68.i, label %.thread.i, label %bb.al

.thread.i:                                        ; preds = %bb.ak
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 18
  br label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.cv = call i64 @strspn(ptr noundef nonnull %i.ct, ptr noundef nonnull @.str.351) #17
  %i.cw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ct) #17
  %i.cx = icmp ne i64 %i.cv, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 18 ; 5 uses
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = icmp ne i16 %i.cz, 0
  %or.cond.i = select i1 %i.cx, i1 %i.da, i1 false
  br i1 %or.cond.i, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.db = load ptr, ptr @stdin, align 8
  %i.dc = call i32 @fileno(ptr noundef %i.db) #16
  %i.dd = call i32 @isatty(i32 noundef %i.dc) #16
  %.not69.i = icmp eq i32 %i.dd, 0
  br i1 %.not69.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.de = load ptr, ptr @stdout, align 8
  %i.df = call i32 @fileno(ptr noundef %i.de) #16
  %i.dg = call i32 @isatty(i32 noundef %i.df) #16
  %.not70.i = icmp eq i32 %i.dg, 0
  br i1 %.not70.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dh = call i32 @fflush(ptr noundef null)      ; 0 uses
  call void @disable_sigpipe_trap() #16
  %i.di = call noalias ptr @popen(ptr noundef nonnull %i.ct, ptr noundef nonnull @.str.162) ; 2 uses
  %.not71.i = icmp eq ptr %i.di, null
  br i1 %.not71.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @restore_sigpipe_trap() #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an, %bb.am, %bb.al, %.thread.i
  %.ph.i = phi ptr [ %i.cu, %.thread.i ], [ %i.cy, %bb.al ], [ %i.cy, %bb.am ], [ %i.cy, %bb.an ], [ %i.cy, %bb.ap ]
  store i16 0, ptr %.ph.i, align 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.not7285.i = phi i1 [ true, %bb.aq ], [ false, %bb.ao ] ; 4 uses
  %.05283.i = phi ptr [ null, %bb.aq ], [ %i.di, %bb.ao ] ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 5 uses
  %i.dk = load ptr, ptr %i.dj, align 8            ; 5 uses
  %.not73.i = icmp eq ptr %i.dk, null             ; 3 uses
  br i1 %.not73.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dk) #17
  %i.dm = shl i64 %i.dl, 32
  %sext.i = add i64 %i.dm, 1099511627776
  %i.dn = ashr exact i64 %sext.i, 32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.do = phi i64 [ %i.dn, %bb.as ], [ 256, %bb.ar ] ; 6 uses
  %i.dp = call ptr @pg_malloc(i64 noundef %i.do) #16 ; 10 uses
  br i1 %i.cs, label %.loopexit96.i, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %bb.at
  %i.dq = sitofp i64 %.fr105.i88189 to double
  %i.dr = fdiv double %i.dq, 1.000000e+03         ; 5 uses
  %i.ds = icmp eq i64 %.fr105.i88189, 0
  br i1 %i.ds, label %.lr.ph98.split.us.split.i, label %.lr.ph98.split.i, !llvm.loop !29

.lr.ph98.split.us.split.i:                        ; preds = %.lr.ph98.i
  br i1 %.not73.i, label %.lr.ph98.split.us.split.split.us.i, label %.lr.ph98.split.us.split.split.i

.lr.ph98.split.us.split.split.us.i:               ; preds = %.lr.ph98.split.us.split.i, %bb.ay
  %.05597.us.us.i = phi i32 [ %.156.us.us.i, %bb.ay ], [ %.043114.lcssa, %.lr.ph98.split.us.split.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.dt = call i64 @time(ptr noundef null) #16
  store i64 %i.dt, ptr %i.a, align 8
  %i.du = call ptr @localtime(ptr noundef nonnull %i.a) #16
  %i.dv = call i64 @strftime(ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull @.str.352, ptr noundef %i.du) #16 ; 0 uses
  %i.dw = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef %i.dp, i64 noundef %i.do, ptr noundef nonnull @.str.354, ptr noundef nonnull %i.b, double noundef %i.dr) #16 ; 0 uses
  store ptr %i.dp, ptr %i.dj, align 8
  %i.dx = load ptr, ptr %2, align 8
  %i.dy = call i32 @PSQLexecWatch(ptr noundef %i.dx, ptr noundef nonnull %4, ptr noundef %.05283.i, i32 noundef %.042115.lcssa) #16 ; 4 uses
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %.thread92.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph98.split.us.split.split.us.i
  %.not74.us.us.i = icmp eq i32 %.05597.us.us.i, 0
  br i1 %.not74.us.us.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ea = add nsw i32 %.05597.us.us.i, -1
  %i.eb = icmp slt i32 %.05597.us.us.i, 2
  br i1 %i.eb, label %.thread92.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.156.us.us.i = phi i32 [ %i.ea, %bb.av ], [ 0, %bb.au ]
  br i1 %.not7285.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ec = call i32 @ferror(ptr noundef nonnull %.05283.i) #16
  %.not75.us.us.i = icmp eq i32 %i.ec, 0
  br i1 %.not75.us.us.i, label %bb.ay, label %.thread92.i

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.lr.ph98.split.us.split.split.us.i

.lr.ph98.split.us.split.split.i:                  ; preds = %.lr.ph98.split.us.split.i
  br i1 %.not7285.i, label %.lr.ph98.split.us.split.split.split.us.i, label %.lr.ph98.split.us.split.split.split.i

.lr.ph98.split.us.split.split.split.us.i:         ; preds = %.lr.ph98.split.us.split.split.i, %bb.bb
  %.05597.us.us100.i = phi i32 [ %.156.us.us102.i, %bb.bb ], [ %.043114.lcssa, %.lr.ph98.split.us.split.split.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ed = call i64 @time(ptr noundef null) #16
  store i64 %i.ed, ptr %i.a, align 8
  %i.ee = call ptr @localtime(ptr noundef nonnull %i.a) #16
  %i.ef = call i64 @strftime(ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull @.str.352, ptr noundef %i.ee) #16 ; 0 uses
  %i.eg = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef %i.dp, i64 noundef %i.do, ptr noundef nonnull @.str.353, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.b, double noundef %i.dr) #16 ; 0 uses
  store ptr %i.dp, ptr %i.dj, align 8
  %i.eh = load ptr, ptr %2, align 8
  %i.ei = call i32 @PSQLexecWatch(ptr noundef %i.eh, ptr noundef nonnull %4, ptr noundef %.05283.i, i32 noundef %.042115.lcssa) #16 ; 3 uses
  %i.ej = icmp slt i32 %i.ei, 1
  br i1 %i.ej, label %.thread92.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph98.split.us.split.split.split.us.i
  %.not74.us.us101.i = icmp eq i32 %.05597.us.us100.i, 0
  br i1 %.not74.us.us101.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ek = add nsw i32 %.05597.us.us100.i, -1
  %i.el = icmp slt i32 %.05597.us.us100.i, 2
  br i1 %i.el, label %.thread92.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.156.us.us102.i = phi i32 [ %i.ek, %bb.ba ], [ 0, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.lr.ph98.split.us.split.split.split.us.i

.lr.ph98.split.us.split.split.split.i:            ; preds = %.lr.ph98.split.us.split.split.i, %bb.bf
  %.05597.us.i = phi i32 [ %.156.us.i, %bb.bf ], [ %.043114.lcssa, %.lr.ph98.split.us.split.split.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.em = call i64 @time(ptr noundef null) #16
  store i64 %i.em, ptr %i.a, align 8
  %i.en = call ptr @localtime(ptr noundef nonnull %i.a) #16
  %i.eo = call i64 @strftime(ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull @.str.352, ptr noundef %i.en) #16 ; 0 uses
  %i.ep = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef %i.dp, i64 noundef %i.do, ptr noundef nonnull @.str.353, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.b, double noundef %i.dr) #16 ; 0 uses
  store ptr %i.dp, ptr %i.dj, align 8
  %i.eq = load ptr, ptr %2, align 8
  %i.er = call i32 @PSQLexecWatch(ptr noundef %i.eq, ptr noundef nonnull %4, ptr noundef %.05283.i, i32 noundef %.042115.lcssa) #16 ; 4 uses
  %i.es = icmp slt i32 %i.er, 1
  br i1 %i.es, label %.thread92.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph98.split.us.split.split.split.i
  %.not74.us.i = icmp eq i32 %.05597.us.i, 0
  br i1 %.not74.us.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.et = add nsw i32 %.05597.us.i, -1
  %i.eu = icmp slt i32 %.05597.us.i, 2
  br i1 %i.eu, label %.thread92.i, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.156.us.i = phi i32 [ %i.et, %bb.bd ], [ 0, %bb.bc ]
  %i.ev = call i32 @ferror(ptr noundef nonnull %.05283.i) #16
  %.not75.us.i = icmp eq i32 %i.ev, 0
  br i1 %.not75.us.i, label %bb.bf, label %.thread92.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.lr.ph98.split.us.split.split.split.i

.lr.ph98.split.i:                                 ; preds = %.lr.ph98.i, %.thread88.i
  %.05597.i = phi i32 [ %.156.i, %.thread88.i ], [ %.043114.lcssa, %.lr.ph98.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ew = call i64 @time(ptr noundef null) #16
  store i64 %i.ew, ptr %i.a, align 8
  %i.ex = call ptr @localtime(ptr noundef nonnull %i.a) #16
  %i.ey = call i64 @strftime(ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull @.str.352, ptr noundef %i.ex) #16 ; 0 uses
  br i1 %.not73.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph98.split.i
  %i.ez = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef %i.dp, i64 noundef %i.do, ptr noundef nonnull @.str.353, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.b, double noundef %i.dr) #16 ; 0 uses
  br label %bb.bi

bb.bh:                                            ; preds = %.lr.ph98.split.i
  %i.fa = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef %i.dp, i64 noundef %i.do, ptr noundef nonnull @.str.354, ptr noundef nonnull %i.b, double noundef %i.dr) #16 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store ptr %i.dp, ptr %i.dj, align 8
  %i.fb = load ptr, ptr %2, align 8
  %i.fc = call i32 @PSQLexecWatch(ptr noundef %i.fb, ptr noundef nonnull %4, ptr noundef %.05283.i, i32 noundef %.042115.lcssa) #16 ; 4 uses
  %i.fd = icmp slt i32 %i.fc, 1
  br i1 %i.fd, label %.thread92.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.not74.i = icmp eq i32 %.05597.i, 0
  br i1 %.not74.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fe = add nsw i32 %.05597.i, -1
  %i.ff = icmp slt i32 %.05597.i, 2
  br i1 %i.ff, label %.thread92.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.156.i = phi i32 [ %i.fe, %bb.bk ], [ 0, %bb.bj ]
  br i1 %.not7285.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fg = call i32 @ferror(ptr noundef nonnull %.05283.i) #16
  %.not75.i = icmp eq i32 %i.fg, 0
  br i1 %.not75.i, label %bb.bn, label %.thread92.i

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fh = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %7, ptr noundef null) #16 ; 0 uses
  %i.fi = load volatile i32, ptr @cancel_pressed, align 4
  %.not76.not.i = icmp eq i32 %i.fi, 0
  br i1 %.not76.not.i, label %.lr.ph.i, label %..loopexit96_crit_edge.split.critedge.i

.lr.ph.i:                                         ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.fj = call i32 @sigwait(ptr noundef nonnull %5, ptr noundef nonnull %i.c) #16 ; 2 uses
  %i.fk = tail call ptr @__errno_location() #18
  store i32 %i.fj, ptr %i.fk, align 4
  switch i32 %i.fj, label %.loopexit96.critedge.i [
    i32 0, label %.thread88.i
    i32 4, label %bb.bo
  ], !llvm.loop !30

.loopexit96.critedge.i:                           ; preds = %.lr.ph.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.355) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.fl = call i32 @sigprocmask(i32 noundef 1, ptr noundef nonnull %7, ptr noundef null) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit96.i

.thread88.i:                                      ; preds = %.lr.ph.i
  %i.fm = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.fn = call i32 @sigprocmask(i32 noundef 1, ptr noundef nonnull %7, ptr noundef null) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  switch i32 %i.fm, label %.lr.ph98.split.i [
    i32 17, label %.loopexit96.i
    i32 2, label %.loopexit96.i
  ]

bb.bo:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.lr.ph.i

.thread92.i:                                      ; preds = %bb.bm, %bb.bk, %bb.bi, %bb.be, %bb.bd, %.lr.ph98.split.us.split.split.split.i, %bb.ba, %.lr.ph98.split.us.split.split.split.us.i, %bb.ax, %bb.av, %.lr.ph98.split.us.split.split.us.i
  %.us-phi.i = phi i32 [ %i.er, %bb.be ], [ %i.ei, %bb.ba ], [ %i.dy, %bb.ax ], [ %i.dy, %.lr.ph98.split.us.split.split.us.i ], [ %i.dy, %bb.av ], [ %i.ei, %.lr.ph98.split.us.split.split.split.us.i ], [ %i.er, %.lr.ph98.split.us.split.split.split.i ], [ %i.er, %bb.bd ], [ %i.fc, %bb.bi ], [ %i.fc, %bb.bk ], [ %i.fc, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.us-phi.i.fr = freeze i32 %.us-phi.i
  %i.fo = icmp sgt i32 %.us-phi.i.fr, -1
  %i.fp = select i1 %i.fo, i32 2, i32 5
  br label %.loopexit96.i

..loopexit96_crit_edge.split.critedge.i:          ; preds = %bb.bn
  %i.fq = call i32 @sigprocmask(i32 noundef 1, ptr noundef nonnull %7, ptr noundef null) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit96.i

.loopexit96.i:                                    ; preds = %.thread88.i, %.thread88.i, %..loopexit96_crit_edge.split.critedge.i, %.thread92.i, %.loopexit96.critedge.i, %bb.at
  %.151.i = phi i32 [ %i.fp, %.thread92.i ], [ 2, %..loopexit96_crit_edge.split.critedge.i ], [ 2, %.loopexit96.critedge.i ], [ 2, %bb.at ], [ 2, %.thread88.i ], [ 2, %.thread88.i ]
  br i1 %.not7285.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.loopexit96.i
  %i.fr = call i32 @pclose(ptr noundef nonnull %.05283.i) ; 0 uses
  call void @restore_sigpipe_trap() #16
  br label %do_watch.exit

bb.bq:                                            ; preds = %.loopexit96.i
  %i.fs = load ptr, ptr @stdout, align 8
  %i.ft = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.fs, ptr noundef nonnull @.str.291) #16 ; 0 uses
  %i.fu = load ptr, ptr @stdout, align 8
  %i.fv = call i32 @fflush(ptr noundef %i.fu)     ; 0 uses
  br label %do_watch.exit

do_watch.exit:                                    ; preds = %bb.bp, %bb.bq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %9 = call i32 @setitimer(i32 noundef 0, ptr noundef nonnull %8, ptr noundef null) #16 ; 0 uses
  %10 = call i32 @sigprocmask(i32 noundef 1, ptr noundef nonnull %5, ptr noundef null) #16 ; 0 uses
  call void @pg_free(ptr noundef %i.dp) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.loopexit

..loopexit_crit_edge.critedge:                    ; preds = %bb.ae, %bb.aa, %bb.y, %bb.x, %bb.t, %bb.q, %bb.m, %bb.j, %bb.f
  call void @free(ptr noundef nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %..loopexit_crit_edge.critedge, %do_watch.exit, %bb.ah
  %.5 = phi i32 [ %.151.i, %do_watch.exit ], [ 5, %bb.ah ], [ 5, %..loopexit_crit_edge.critedge ], [ 5, %bb.c ]
  call void @resetPQExpBuffer(ptr noundef %2) #16
  call void @psql_scan_reset(ptr noundef %0) #16
  br label %ignore_slash_options.exit

bb.br:                                            ; preds = %bb.a
  %i.fw = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not2.i = icmp eq ptr %i.fw, null
  br i1 %.not2.i, label %ignore_slash_options.exit, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.br, %.lr.ph.i77
  %i.fx = phi ptr [ %i.fy, %.lr.ph.i77 ], [ %i.fw, %bb.br ]
  tail call void @free(ptr noundef nonnull %i.fx) #16
  %i.fy = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not.i78 = icmp eq ptr %i.fy, null
  br i1 %.not.i78, label %ignore_slash_options.exit, label %.lr.ph.i77, !llvm.loop !0

ignore_slash_options.exit:                        ; preds = %.lr.ph.i77, %bb.br, %.loopexit
  %.6 = phi i32 [ %.5, %.loopexit ], [ 2, %bb.br ], [ 2, %.lr.ph.i77 ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 2, 6) i32 @exec_command_x(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #16 ; 2 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 434), align 2, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call zeroext i1 @do_pset(ptr noundef nonnull @.str.51, ptr noundef %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pset, i64 48), i1 noundef zeroext %i.c)
  tail call void @free(ptr noundef %i.a) #16
  %i.e = select i1 %i.d, i32 2, i32 5
  br label %ignore_slash_options.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not2.i = icmp eq ptr %i.f, null
  br i1 %.not2.i, label %ignore_slash_options.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %i.h, %.lr.ph.i ], [ %i.f, %bb.c ]
  tail call void @free(ptr noundef nonnull %i.g) #16
  %i.h = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %ignore_slash_options.exit, label %.lr.ph.i, !llvm.loop !0

ignore_slash_options.exit:                        ; preds = %.lr.ph.i, %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 2, %bb.c ], [ 2, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 2, 6) i32 @exec_command_z(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef readonly %2) unnamed_addr #0 {
bb.a:
  br i1 %1, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #16 ; 2 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 83) #17
  %i.c = icmp ne ptr %i.b, null
  %i.d = load i16, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 52), align 4
  %i.e = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 120) #17
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 1, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 52), align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call zeroext i1 @permissionsList(ptr noundef %i.a, i1 noundef zeroext %i.c) #16
  store i16 %i.d, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 52), align 4
  tail call void @free(ptr noundef %i.a) #16
  %i.g = select i1 %i.f, i32 2, i32 5
  br label %ignore_slash_options.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not2.i = icmp eq ptr %i.h, null
  br i1 %.not2.i, label %ignore_slash_options.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.h, %bb.e ]
  tail call void @free(ptr noundef nonnull %i.i) #16
  %i.j = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %ignore_slash_options.exit, label %.lr.ph.i, !llvm.loop !0

ignore_slash_options.exit:                        ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.0 = phi i32 [ %i.g, %bb.d ], [ 2, %bb.e ], [ 2, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 2, 6) i32 @exec_command_shell_escape(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 4, ptr noundef null, i1 noundef zeroext false) #16 ; 4 uses
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fflush(ptr noundef null)  ; 0 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.356) #16 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %spec.store.select.i = select i1 %i.d, ptr @.str.357, ptr %i.c
  %i.e = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.358, ptr noundef nonnull %spec.store.select.i) #16 ; 2 uses
  %i.f = tail call i32 @system(ptr noundef %i.e) #16
  tail call void @free(ptr noundef %i.e) #16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @system(ptr noundef nonnull readonly %i.a) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.010.i = phi i32 [ %i.g, %bb.d ], [ %i.f, %bb.c ] ; 4 uses
  tail call void @SetShellResultVariables(i32 noundef %.010.i) #16
  switch i32 %.010.i, label %do_shell.exit [
    i32 -1, label %bb.f
    i32 127, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.359) #16
  br label %do_shell.exit

do_shell.exit:                                    ; preds = %bb.e, %bb.f
  %i.h = icmp ne i32 %.010.i, 127
  %i.i = icmp ne i32 %.010.i, -1
  %or.cond.not.i = and i1 %i.h, %i.i
  tail call void @free(ptr noundef %i.a) #16
  %i.j = select i1 %or.cond.not.i, i32 2, i32 5
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.a) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %do_shell.exit
  %.0 = phi i32 [ %i.j, %do_shell.exit ], [ 2, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exec_command_slash_command_help(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @psql_scan_slash_option(ptr noundef %0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 6 uses
  %.not = icmp eq ptr %i.a, null                  ; 2 uses
  br i1 %1, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(9) @.str.360) #17
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = load i16, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 66), align 2
  tail call void @slashUsage(i16 noundef zeroext %i.d) #16
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(8) @.str.361) #17
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = load i16, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 66), align 2
  tail call void @usage(i16 noundef zeroext %i.g) #16
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(10) @.str.362) #17
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 66), align 2 ; 2 uses
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @helpVariables(i16 noundef zeroext %i.j) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @slashUsage(i16 noundef zeroext %i.j) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.d
  tail call void @free(ptr noundef %i.a) #16
  br label %ignore_slash_options.exit

bb.k:                                             ; preds = %bb.a
  br i1 %.not, label %ignore_slash_options.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %i.k = phi ptr [ %i.l, %.lr.ph.i ], [ %i.a, %bb.k ]
end_hunk_1
