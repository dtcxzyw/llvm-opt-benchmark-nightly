Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_resetwal?download=true
inline.NumInlined: 29
inline.NumDeleted: 18
begin_hunk_0_@main:bb.a

.lr.ph.i:                                         ; preds = %.preheader.i, %IsPartialXLogFileName.exit.thread.i
  %i.lt = phi ptr [ %i.mp, %IsPartialXLogFileName.exit.thread.i ], [ %i.ls, %.preheader.i ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 19 ; 4 uses
  %i.lv = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.lu) #13
  switch i64 %i.lv, label %IsPartialXLogFileName.exit.thread.i [
    i64 24, label %IsXLogFileName.exit.i
    i64 32, label %bb.dy
  ]

IsXLogFileName.exit.i:                            ; preds = %.lr.ph.i
  %i.lw = call i64 @strspn(ptr noundef nonnull readonly %i.lu, ptr noundef nonnull @.str.125) #13
  %i.lx = icmp eq i64 %i.lw, 24
  br i1 %i.lx, label %bb.dz, label %IsPartialXLogFileName.exit.thread.i

bb.dy:                                            ; preds = %.lr.ph.i
  %i.ly = call i64 @strspn(ptr noundef nonnull readonly %i.lu, ptr noundef nonnull @.str.125) #13
  %i.lz = icmp eq i64 %i.ly, 24
  br i1 %i.lz, label %IsPartialXLogFileName.exit.i, label %IsPartialXLogFileName.exit.thread.i

IsPartialXLogFileName.exit.i:                     ; preds = %bb.dy
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lt, i64 43
  %i.mb = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ma, ptr noundef nonnull dereferenceable(9) @.str.126) #13
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.dz, label %IsPartialXLogFileName.exit.thread.i

bb.dz:                                            ; preds = %IsPartialXLogFileName.exit.i, %IsXLogFileName.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.md = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 240), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.me = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.lu, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #12 ; 0 uses
  %i.mf = load i32, ptr %i.e, align 4
  %i.mg = zext i32 %i.mf to i64
  %i.mh = sext i32 %i.md to i64
  %i.mi = udiv i64 4294967296, %i.mh
  %i.mj = mul nuw i64 %i.mi, %i.mg
  %i.mk = load i32, ptr %i.f, align 4
  %i.ml = zext i32 %i.mk to i64
  %i.mm = add nuw i64 %i.mj, %i.ml                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.mn = load i64, ptr @newXlogSegNo, align 8
  %i.mo = icmp ugt i64 %i.mm, %i.mn
  br i1 %i.mo, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  store i64 %i.mm, ptr @newXlogSegNo, align 8
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %IsPartialXLogFileName.exit.thread.i

IsPartialXLogFileName.exit.thread.i:              ; preds = %bb.eb, %IsPartialXLogFileName.exit.i, %bb.dy, %IsXLogFileName.exit.i, %.lr.ph.i
  store i32 0, ptr %i.jn, align 4
  %i.mp = call ptr @readdir(ptr noundef nonnull %i.lq) #12 ; 2 uses
  %.not.i161 = icmp eq ptr %i.mp, null
  br i1 %.not.i161, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !32

._crit_edge.i:                                    ; preds = %IsPartialXLogFileName.exit.thread.i, %.preheader.i
  %i.mq = load i32, ptr %i.jn, align 4
  %.not7.i = icmp eq i32 %i.mq, 0
  br i1 %.not7.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.121) #12
  call void @exit(i32 noundef 1) #16
  unreachable

bb.ed:                                            ; preds = %._crit_edge.i
  %i.mr = call i32 @closedir(ptr noundef nonnull %i.lq)
  %.not8.i = icmp eq i32 %i.mr, 0
  br i1 %.not8.i, label %FindEndOfXLOG.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.121) #12
  call void @exit(i32 noundef 1) #16
  unreachable

FindEndOfXLOG.exit:                               ; preds = %bb.ed
  %i.ms = load i64, ptr @newXlogSegNo, align 8
  %i.mt = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 240), align 8
  %i.mu = zext i32 %i.mt to i64
  %i.mv = add i64 %i.ms, 1
  %i.mw = mul i64 %i.mv, %i.mu
  %i.mx = add i64 %i.mw, -1
  %i.my = load i32, ptr @WalSegSz, align 4
  %i.mz = sext i32 %i.my to i64
  %i.na = udiv i64 %i.mx, %i.mz
  %i.nb = add i64 %i.na, 1
  store i64 %i.nb, ptr @newXlogSegNo, align 8
  %.b77 = load i1, ptr @guessed, align 1          ; 2 uses
  %.not81 = xor i1 %.0, true
  %or.cond9.not = and i1 %.b77, %.not81
  %or.cond11 = or i1 %or.cond9.not, %.048
  br i1 %or.cond11, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %FindEndOfXLOG.exit
  %.str.71..str.72.i = select i1 %.b77, ptr @.str.71, ptr @.str.72
  %i.nc = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull %.str.71..str.72.i) #12 ; 0 uses
  %i.nd = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 8), align 8
  %i.ne = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.73, i32 noundef %i.nd) #12 ; 0 uses
  %i.nf = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 12), align 4
  %i.ng = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.74, i32 noundef %i.nf) #12 ; 0 uses
  %i.nh = load i64, ptr @ControlFile, align 8
  %i.ni = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.75, i64 noundef %i.nh) #12 ; 0 uses
  %i.nj = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 48), align 8
  %i.nk = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.76, i32 noundef %i.nj) #12 ; 0 uses
  %i.nl = load i8, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 56), align 8, !range !55, !noundef !56
  %i.nm = trunc nuw i8 %i.nl to i1
  %i.nn = select i1 %i.nm, ptr @.str.78, ptr @.str.79
  %i.no = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.77, ptr noundef nonnull %i.nn) #12 ; 0 uses
  %i.np = load i64, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 72), align 8 ; 2 uses
  %i.nq = lshr i64 %i.np, 32
  %i.nr = trunc nuw i64 %i.nq to i32
  %i.ns = trunc i64 %i.np to i32
  %i.nt = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.80, i32 noundef %i.nr, i32 noundef %i.ns) #12 ; 0 uses
  %i.nu = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 80), align 8
  %i.nv = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.81, i32 noundef %i.nu) #12 ; 0 uses
  %i.nw = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 84), align 4
  %i.nx = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.82, i32 noundef %i.nw) #12 ; 0 uses
  %i.ny = load i64, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 88), align 8
  %i.nz = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.83, i64 noundef %i.ny) #12 ; 0 uses
  %i.oa = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 96), align 8
  %i.ob = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.84, i32 noundef %i.oa) #12 ; 0 uses
  %i.oc = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 100), align 4
  %i.od = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.85, i32 noundef %i.oc) #12 ; 0 uses
  %i.oe = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 128), align 8
  %i.of = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.86, i32 noundef %i.oe) #12 ; 0 uses
  %i.og = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 104), align 8
  %i.oh = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.87, i32 noundef %i.og) #12 ; 0 uses
  %i.oi = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 108), align 4
  %i.oj = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.88, i32 noundef %i.oi) #12 ; 0 uses
  %i.ok = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 120), align 8
  %i.ol = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.89, i32 noundef %i.ok) #12 ; 0 uses
  %i.om = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 124), align 4
  %i.on = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.90, i32 noundef %i.om) #12 ; 0 uses
  %i.oo = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 212), align 4
  %i.op = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.91, i32 noundef %i.oo) #12 ; 0 uses
  %i.oq = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 224), align 8
  %i.or = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.92, i32 noundef %i.oq) #12 ; 0 uses
  %i.os = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 228), align 4
  %i.ot = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.93, i32 noundef %i.os) #12 ; 0 uses
  %i.ou = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 232), align 8
  %i.ov = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.94, i32 noundef %i.ou) #12 ; 0 uses
  %i.ow = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 236), align 4
  %i.ox = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.95, i32 noundef %i.ow) #12 ; 0 uses
  %i.oy = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 240), align 8
  %i.oz = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.96, i32 noundef %i.oy) #12 ; 0 uses
  %i.pa = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 244), align 4
  %i.pb = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.97, i32 noundef %i.pa) #12 ; 0 uses
  %i.pc = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 248), align 8
  %i.pd = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.98, i32 noundef %i.pc) #12 ; 0 uses
  %i.pe = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 252), align 4
  %i.pf = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.99, i32 noundef %i.pe) #12 ; 0 uses
  %i.pg = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 256), align 8
  %i.ph = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.100, i32 noundef %i.pg) #12 ; 0 uses
  %i.pi = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) #12 ; 0 uses
  %i.pj = load i8, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 260), align 4, !range !55, !noundef !56
  %i.pk = trunc nuw i8 %i.pj to i1
  %i.pl = select i1 %i.pk, ptr @.str.104, ptr @.str.105
  %i.pm = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.103, ptr noundef nonnull %i.pl) #12 ; 0 uses
  %i.pn = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 264), align 8
  %i.po = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.106, i32 noundef %i.pn) #12 ; 0 uses
  %i.pp = load i8, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 268), align 4, !range !55, !noundef !56
  %i.pq = trunc nuw i8 %i.pp to i1
  %i.pr = select i1 %i.pq, ptr @.str.39, ptr @.str.40
  %i.ps = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.107, ptr noundef nonnull %i.pr) #12 ; 0 uses
  br label %bb.eg

bb.eg:                                            ; preds = %FindEndOfXLOG.exit, %bb.ef
  %.b = load i1, ptr @next_xid_epoch_given, align 1
  br i1 %.b, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.pt = load i32, ptr @next_xid_epoch_val, align 4
  %i.pu = load i64, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 72), align 8
  %i.pv = zext i32 %i.pt to i64
  %i.pw = shl nuw i64 %i.pv, 32
  %i.px = and i64 %i.pu, 4294967295
  %i.py = or disjoint i64 %i.pw, %i.px
  store i64 %i.py, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 72), align 8
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.b66 = load i1, ptr @oldest_xid_given, align 1
  br i1 %.b66, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.pz = load i32, ptr @oldest_xid_val, align 4
  store i32 %i.pz, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 96), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 100), align 4
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.b67 = load i1, ptr @next_xid_given, align 1
  br i1 %.b67, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %4 = load i64, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 72), align 8
  %5 = and i64 %4, -4294967296
  %6 = load i32, ptr @next_xid_val, align 4
  %i.qa = zext i32 %6 to i64
  %i.qb = or disjoint i64 %5, %i.qa
  store i64 %i.qb, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 72), align 8
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.b68 = load i1, ptr @commit_ts_xids_given, align 1
  br i1 %.b68, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.qc = load i32, ptr @oldest_commit_ts_xid_val, align 4
  store i32 %i.qc, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 120), align 8
  %i.qd = load i32, ptr @newest_commit_ts_xid_val, align 4
  store i32 %i.qd, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 124), align 4
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.b69 = load i1, ptr @next_oid_given, align 1
  br i1 %.b69, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.qe = load i32, ptr @next_oid_val, align 4
  store i32 %i.qe, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 80), align 8
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.b70 = load i1, ptr @mxids_given, align 1
  br i1 %.b70, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.qf = load i32, ptr @next_mxid_val, align 4
  store i32 %i.qf, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 84), align 4
  %i.qg = load i32, ptr @oldest_mxid_val, align 4
  %spec.select = call i32 @llvm.umax.i32(i32 %i.qg, i32 1)
  store i32 %spec.select, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 104), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 108), align 4
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.b71 = load i1, ptr @next_mxoff_given, align 1
  br i1 %.b71, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.qh = load i64, ptr @next_mxoff_val, align 8
  store i64 %i.qh, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 88), align 8
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.qi = load i32, ptr @minXlogTli, align 4      ; 3 uses
  %i.qj = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 48), align 8
  %i.qk = icmp ugt i32 %i.qi, %i.qj
  br i1 %i.qk, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 %i.qi, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 48), align 8
  store i32 %i.qi, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 52), align 4
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.b72 = load i1, ptr @wal_segsize_given, align 1
  br i1 %.b72, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ql = load i32, ptr @WalSegSz, align 4
  store i32 %i.ql, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 240), align 8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.b75 = load i1, ptr @char_signedness_given, align 1
  br i1 %.b75, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %.b74 = load i1, ptr @char_signedness_val, align 1
  %i.qm = zext i1 %.b74 to i8
  store i8 %i.qm, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 268), align 4
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.qn = load i64, ptr @minXlogSegNo, align 8    ; 3 uses
  %i.qo = load i64, ptr @newXlogSegNo, align 8    ; 2 uses
  %i.qp = icmp ugt i64 %i.qn, %i.qo
  br i1 %i.qp, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i64 %i.qn, ptr @newXlogSegNo, align 8
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.qq = phi i64 [ %i.qn, %bb.fb ], [ %i.qo, %bb.fa ]
  br i1 %.048, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  call fastcc void @PrintNewControlValues()
  call void @exit(i32 noundef 0) #14
  unreachable

bb.fe:                                            ; preds = %bb.fc
  %.b76 = load i1, ptr @guessed, align 1
  %.not12 = xor i1 %.b76, true
  %or.cond14 = or i1 %.0, %.not12
  br i1 %or.cond14, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call fastcc void @PrintNewControlValues()
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.52) #12
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.53) #12
  call void @exit(i32 noundef 1) #16
  unreachable

bb.fg:                                            ; preds = %bb.fe
  %i.qr = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 16), align 8
  %i.qs = icmp eq i32 %i.qr, 1
  %or.cond16 = or i1 %i.qs, %.0
  br i1 %or.cond16, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.54) #12
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.55) #12
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.56) #12
  call void @exit(i32 noundef 1) #16
  unreachable

bb.fi:                                            ; preds = %bb.fg
  %i.qt = load i32, ptr @WalSegSz, align 4
  %i.qu = sext i32 %i.qt to i64
  %i.qv = mul i64 %i.qq, %i.qu
  %i.qw = add i64 %i.qv, 40
  store i64 %i.qw, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 40), align 8
  %i.qx = call i64 @time(ptr noundef null) #12
  store i64 %i.qx, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 112), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 16), align 8
  %i.qy = load i64, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 40), align 8
  store i64 %i.qy, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 32), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 144), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 152), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 180), align 4
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 184), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 208), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) getelementptr inbounds nuw (i8, ptr @ControlFile, i64 160), i8 0, i64 17, i1 false)
  store <4 x i32> <i32 100, i32 8, i32 10, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 188), align 4
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 204), align 4
  call void @update_controlfile(ptr noundef nonnull @.str.59, ptr noundef nonnull @ControlFile, i1 noundef zeroext true) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.qz = call noalias ptr @opendir(ptr noundef nonnull @.str.121) ; 4 uses
  %i.ra = icmp eq ptr %i.qz, null
  br i1 %i.ra, label %bb.fj, label %.preheader.i162

.preheader.i162:                                  ; preds = %bb.fi
  store i32 0, ptr %i.jn, align 4
  %i.rb = call ptr @readdir(ptr noundef nonnull %i.qz) #12 ; 2 uses
  %.not9.i163 = icmp eq ptr %i.rb, null
  br i1 %.not9.i163, label %._crit_edge.i167, label %.lr.ph.i164

bb.fj:                                            ; preds = %bb.fi
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.121) #12
  call void @exit(i32 noundef 1) #16
  unreachable

.lr.ph.i164:                                      ; preds = %.preheader.i162, %IsPartialXLogFileName.exit.thread.i165
  %i.rc = phi ptr [ %i.rp, %IsPartialXLogFileName.exit.thread.i165 ], [ %i.rb, %.preheader.i162 ] ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 19 ; 4 uses
  %i.re = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.rd) #13
  switch i64 %i.re, label %IsPartialXLogFileName.exit.thread.i165 [
    i64 24, label %IsXLogFileName.exit.i170
    i64 32, label %bb.fk
  ]

IsXLogFileName.exit.i170:                         ; preds = %.lr.ph.i164
  %i.rf = call i64 @strspn(ptr noundef nonnull readonly %i.rd, ptr noundef nonnull @.str.125) #13
  %i.rg = icmp eq i64 %i.rf, 24
  br i1 %i.rg, label %bb.fl, label %IsPartialXLogFileName.exit.thread.i165

bb.fk:                                            ; preds = %.lr.ph.i164
  %i.rh = call i64 @strspn(ptr noundef nonnull readonly %i.rd, ptr noundef nonnull @.str.125) #13
  %i.ri = icmp eq i64 %i.rh, 24
  br i1 %i.ri, label %IsPartialXLogFileName.exit.i169, label %IsPartialXLogFileName.exit.thread.i165

IsPartialXLogFileName.exit.i169:                  ; preds = %bb.fk
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rc, i64 43
  %i.rk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.rj, ptr noundef nonnull dereferenceable(9) @.str.126) #13
  %i.rl = icmp eq i32 %i.rk, 0
  br i1 %i.rl, label %bb.fl, label %IsPartialXLogFileName.exit.thread.i165

bb.fl:                                            ; preds = %IsPartialXLogFileName.exit.i169, %IsXLogFileName.exit.i170
  %i.rm = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.d, i64 noundef 1031, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.121, ptr noundef nonnull %i.rd) #12 ; 0 uses
  %i.rn = call i32 @unlink(ptr noundef nonnull %i.d) #12
  %i.ro = icmp slt i32 %i.rn, 0
  br i1 %i.ro, label %bb.fm, label %IsPartialXLogFileName.exit.thread.i165

bb.fm:                                            ; preds = %bb.fl
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.128, ptr noundef nonnull %i.d) #12
  call void @exit(i32 noundef 1) #16
  unreachable

IsPartialXLogFileName.exit.thread.i165:           ; preds = %bb.fl, %IsPartialXLogFileName.exit.i169, %bb.fk, %IsXLogFileName.exit.i170, %.lr.ph.i164
  store i32 0, ptr %i.jn, align 4
  %i.rp = call ptr @readdir(ptr noundef nonnull %i.qz) #12 ; 2 uses
  %.not.i166 = icmp eq ptr %i.rp, null
  br i1 %.not.i166, label %._crit_edge.i167, label %.lr.ph.i164, !llvm.loop !33

._crit_edge.i167:                                 ; preds = %IsPartialXLogFileName.exit.thread.i165, %.preheader.i162
  %i.rq = load i32, ptr %i.jn, align 4
end_hunk_0
begin_hunk_1_@main:bb.a
  %.not35.i = icmp eq i64 %i.uv, 8192
  br i1 %.not35.i, label %bb.gp, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph.i185
  %i.uw = load i32, ptr %i.jn, align 4
  %i.ux = icmp eq i32 %i.uw, 0
  br i1 %i.ux, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  store i32 28, ptr %i.jn, align 4
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.137, ptr noundef nonnull %i.a) #12
  call void @exit(i32 noundef 1) #16
  unreachable

._crit_edge.i184:                                 ; preds = %bb.gp, %bb.go
  %i.uy = call i32 @fsync(i32 noundef %i.ul) #12
  %.not34.i = icmp eq i32 %i.uy, 0
  br i1 %.not34.i, label %WriteEmptyXLOG.exit, label %bb.gt

bb.gt:                                            ; preds = %._crit_edge.i184
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.138) #12
  call void @exit(i32 noundef 1) #16
  unreachable

WriteEmptyXLOG.exit:                              ; preds = %._crit_edge.i184
  %i.uz = call i32 @close(i32 noundef %i.ul) #12  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.va = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.57) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @pg_logging_init(ptr noundef) local_unnamed_addr #2

declare void @set_pglocale_pgservice(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_progname(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @usage() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @progname, align 8
  %i.b = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.140, ptr noundef %i.a) #12 ; 0 uses
  %i.c = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.141) #12 ; 0 uses
  %i.d = load ptr, ptr @progname, align 8
  %i.e = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.142, ptr noundef %i.d) #12 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.143) #12 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.144) #12 ; 0 uses
  %i.h = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.145) #12 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.146) #12 ; 0 uses
  %i.j = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.147) #12 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.148) #12 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.149) #12 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.150) #12 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.151) #12 ; 0 uses
  %i.o = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.152) #12 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.153) #12 ; 0 uses
  %i.q = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.154) #12 ; 0 uses
  %i.r = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.155) #12 ; 0 uses
  %i.s = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.156) #12 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.157) #12 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.158) #12 ; 0 uses
  %i.v = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.159) #12 ; 0 uses
  %i.w = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161) #12 ; 0 uses
  %i.x = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164) #12 ; 0 uses
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare void @pg_log_generic(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @pg_strdup(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @option_parse_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #6

declare void @get_restricted_token() local_unnamed_addr #2

declare zeroext i1 @GetDataDirectoryCreatePerm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintNewControlValues() unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.108) #12 ; 0 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 48), align 8
  %i.d = load i64, ptr @newXlogSegNo, align 8     ; 2 uses
  %i.e = load i32, ptr @WalSegSz, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = udiv i64 4294967296, %i.f                ; 2 uses
  %i.h = udiv i64 %i.d, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = urem i64 %i.d, %i.g
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.58, i32 noundef %i.c, i32 noundef %i.i, i32 noundef %i.k) #12 ; 0 uses
  %i.m = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.109, ptr noundef nonnull %i.a) #12 ; 0 uses
  %.b5 = load i1, ptr @mxids_given, align 1
  br i1 %.b5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 84), align 4
  %i.o = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.110, i32 noundef %i.n) #12 ; 0 uses
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 104), align 8
  %i.q = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.111, i32 noundef %i.p) #12 ; 0 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 108), align 4
  %i.s = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.112, i32 noundef %i.r) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.b6 = load i1, ptr @next_mxoff_given, align 1
  br i1 %.b6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 88), align 8
  %i.u = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.113, i64 noundef %i.t) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.b4 = load i1, ptr @next_oid_given, align 1
  br i1 %.b4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 80), align 8
  %i.w = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.114, i32 noundef %i.v) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.b2 = load i1, ptr @next_xid_given, align 1
  br i1 %.b2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 72), align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.115, i32 noundef %i.y) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.b1 = load i1, ptr @oldest_xid_given, align 1
  br i1 %.b1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 96), align 8
  %i.ab = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.116, i32 noundef %i.aa) #12 ; 0 uses
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 100), align 4
  %i.ad = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.117, i32 noundef %i.ac) #12 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.b = load i1, ptr @next_xid_epoch_given, align 1
  br i1 %.b, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %0 = load i64, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 72), align 8
  %1 = lshr i64 %0, 32
  %2 = trunc nuw i64 %1 to i32
  %i.ae = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.118, i32 noundef %2) #12 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.b3 = load i1, ptr @commit_ts_xids_given, align 1
  br i1 %.b3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 120), align 8
  %i.ag = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.119, i32 noundef %i.af) #12 ; 0 uses
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 124), align 4
  %i.ai = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.120, i32 noundef %i.ah) #12 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.b7 = load i1, ptr @wal_segsize_given, align 1
  br i1 %.b7, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @ControlFile, i64 240), align 8
  %i.ak = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.96, i32 noundef %i.aj) #12 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare i32 @pg_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare i32 @get_pg_version(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pg_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #6

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @update_controlfile(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #5

declare ptr @readdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

declare i32 @fsync(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, i1 true, !"strtouint32_strict"}
!6 = distinct !{!6, !5, !"strtouint32_strict: argument 0"}
!7 = distinct !{!7, !5, !"strtouint32_strict: argument 1"}
!8 = distinct !{!8, !38}
!9 = distinct !{!9, i1 true, !"strtouint32_strict"}
!10 = distinct !{!10, !9, !"strtouint32_strict: argument 0"}
!11 = distinct !{!11, !9, !"strtouint32_strict: argument 1"}
!12 = distinct !{!12, i1 true, !"strtouint32_strict"}
!13 = distinct !{!13, !12, !"strtouint32_strict: argument 0"}
!14 = distinct !{!14, !12, !"strtouint32_strict: argument 1"}
!15 = distinct !{!15, i1 true, !"strtouint32_strict"}
!16 = distinct !{!16, !15, !"strtouint32_strict: argument 0"}
!17 = distinct !{!17, !15, !"strtouint32_strict: argument 1"}
!18 = distinct !{!18, i1 true, !"strtouint32_strict"}
!19 = distinct !{!19, !18, !"strtouint32_strict: argument 0"}
!20 = distinct !{!20, !18, !"strtouint32_strict: argument 1"}
!21 = distinct !{!21, i1 true, !"strtouint32_strict"}
!22 = distinct !{!22, !21, !"strtouint32_strict: argument 0"}
!23 = distinct !{!23, !21, !"strtouint32_strict: argument 1"}
!24 = distinct !{!24, i1 true, !"strtouint32_strict"}
!25 = distinct !{!25, !24, !"strtouint32_strict: argument 0"}
!26 = distinct !{!26, !24, !"strtouint32_strict: argument 1"}
!27 = distinct !{!27, i1 true, !"strtouint64_strict"}
!28 = distinct !{!28, !27, !"strtouint64_strict: argument 0"}
!29 = distinct !{!29, !27, !"strtouint64_strict: argument 1"}
!30 = distinct !{!30, !38}
!31 = distinct !{null}
!32 = distinct !{!32, !38}
!33 = distinct !{!33, !38}
!34 = distinct !{!34, !38}
!35 = distinct !{!35, !38}
!36 = distinct !{null}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!6}
!40 = !{!6, !7}
!41 = !{!10}
!42 = !{!10, !11}
!43 = !{!13}
!44 = !{!13, !14}
!45 = !{!16}
!46 = !{!16, !17}
!47 = !{!19}
!48 = !{!19, !20}
!49 = !{!22}
!50 = !{!22, !23}
!51 = !{!25}
!52 = !{!25, !26}
!53 = !{!28}
!54 = !{!28, !29}
!55 = !{i8 0, i8 2}
!56 = !{}
end_hunk_1
