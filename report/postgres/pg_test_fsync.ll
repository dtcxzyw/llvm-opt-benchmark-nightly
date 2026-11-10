Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_test_fsync?download=true
inline.NumInlined: 17
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a
  %i.aj = load ptr, ptr @optarg, align 8
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i8, ptr %i.ai, align 1
  %.not14.i = icmp eq i8 %i.al, 0
  br i1 %.not14.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.af, align 4
  %.not15.i = icmp eq i32 %i.am, 0
  %.not16.i = icmp ult i64 %i.ah, 4294967296
  %or.cond.i = select i1 %.not15.i, i1 %.not16.i, i1 false
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #13
  %i.an = load ptr, ptr @progname, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef %i.an) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ao = trunc nuw i64 %i.ah to i32
  store i32 %i.ao, ptr @secs_per_test, align 4
  %i.ap = icmp eq i64 %i.ah, 0
  br i1 %i.ap, label %bb.k, label %.tail17.thread.i.backedge

.tail17.thread.i.backedge:                        ; preds = %bb.j, %bb.e
  br label %.tail17.thread.i, !llvm.loop !5

bb.k:                                             ; preds = %bb.j
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef -1) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.l:                                             ; preds = %.tail17.thread.i
  %i.aq = load ptr, ptr @progname, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef %i.aq) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.m:                                             ; preds = %.tail17.thread.i
  %i.ar = load i32, ptr @optind, align 4          ; 2 uses
  %i.as = icmp sgt i32 %0, %i.ar
  br i1 %i.as, label %bb.n, label %handle_args.exit

bb.n:                                             ; preds = %bb.m
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %1, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %i.av) #13
  %i.aw = load ptr, ptr @progname, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef %i.aw) #13
  call void @exit(i32 noundef 1) #17
  unreachable

handle_args.exit:                                 ; preds = %bb.m
  %i.ax = load i32, ptr @secs_per_test, align 4   ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 1
  %i.az = select i1 %i.ay, ptr @.str.16, ptr @.str.17
  %i.ba = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull %i.az, i32 noundef %i.ax) #13 ; 0 uses
  %i.bb = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.18) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @pqsignal_fe(i32 noundef 2, ptr noundef nonnull @signal_cleanup) #13
  call void @pqsignal_fe(i32 noundef 15, ptr noundef nonnull @signal_cleanup) #13
  call void @pqsignal_fe(i32 noundef 14, ptr noundef nonnull @process_alarm) #13
  call void @pqsignal_fe(i32 noundef 1, ptr noundef nonnull @signal_cleanup) #13
  %i.bc = call i64 @time(ptr noundef null) #13
  call void @pg_prng_seed(ptr noundef nonnull @pg_global_prng_state, i64 noundef %i.bc) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %handle_args.exit
  %indvars.iv.i = phi i64 [ 0, %handle_args.exit ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.bd = call i32 @pg_prng_int32(ptr noundef nonnull @pg_global_prng_state) #13
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr @buf, i64 %indvars.iv.i
  store i8 %i.be, ptr %i.bf, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16777216
  br i1 %exitcond.not.i, label %prepare_buf.exit, label %bb.o, !llvm.loop !6

prepare_buf.exit:                                 ; preds = %bb.o
  %i.bg = load ptr, ptr @filename, align 8
  %i.bh = call i32 (ptr, i32, ...) @open(ptr noundef %i.bg, i32 noundef 66, i32 noundef 384) #13 ; 4 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %prepare_buf.exit
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.q:                                             ; preds = %prepare_buf.exit
  store i1 true, ptr @needs_unlink, align 4
  %i.bj = call i64 @write(i32 noundef %i.bh, ptr noundef nonnull @buf, i64 noundef 16777216) #13
  %.not.i4 = icmp eq i64 %i.bj, 16777216
  br i1 %.not.i4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bk = call i32 @fsync(i32 noundef %i.bh) #13
  %.not3.i = icmp eq i32 %i.bk, 0
  br i1 %.not3.i, label %test_open.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.22) #13
  call void @exit(i32 noundef 1) #17
  unreachable

test_open.exit:                                   ; preds = %bb.s
  %i.bl = call i32 @close(i32 noundef %i.bh) #13  ; 0 uses
  call fastcc void @test_sync(i32 noundef 1)
  call fastcc void @test_sync(i32 noundef 2)
  %i.bm = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.37) #13 ; 0 uses
  %i.bn = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.38) #13 ; 0 uses
  call fastcc void @test_open_sync(ptr noundef nonnull @.str.39, i32 noundef 16)
  call fastcc void @test_open_sync(ptr noundef nonnull @.str.40, i32 noundef 8)
  call fastcc void @test_open_sync(ptr noundef nonnull @.str.41, i32 noundef 4)
  call fastcc void @test_open_sync(ptr noundef nonnull @.str.42, i32 noundef 2)
  call fastcc void @test_open_sync(ptr noundef nonnull @.str.43, i32 noundef 1)
  %i.bo = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.44) #13 ; 0 uses
  %i.bp = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.45) #13 ; 0 uses
  %i.bq = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.46) #13 ; 0 uses
  %i.br = load ptr, ptr @stdout, align 8
  %i.bs = call i32 @fflush(ptr noundef %i.br)     ; 0 uses
  store i1 false, ptr @alarm_triggered, align 4
  %i.bt = load i32, ptr @secs_per_test, align 4
  %i.bu = call i32 @alarm(i32 noundef %i.bt) #13  ; 0 uses
  %i.bv = call i32 @gettimeofday(ptr noundef nonnull @start_t, ptr noundef null) #13 ; 0 uses
  %.b1628.i = load i1, ptr @alarm_triggered, align 4
  br i1 %.b1628.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %test_open.exit, %bb.ab
  %.029.i = phi i32 [ %i.cg, %bb.ab ], [ 0, %test_open.exit ]
  %i.bw = load ptr, ptr @filename, align 8
  %i.bx = call i32 (ptr, i32, ...) @open(ptr noundef %i.bw, i32 noundef 2, i32 noundef 0) #13 ; 4 uses
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.v:                                             ; preds = %.lr.ph.i
  %i.bz = call i64 @write(i32 noundef %i.bx, ptr noundef nonnull @buf, i64 noundef 8192) #13
  %.not18.i = icmp eq i64 %i.bz, 8192
  br i1 %.not18.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ca = call i32 @fsync(i32 noundef %i.bx) #13
  %.not19.i = icmp eq i32 %i.ca, 0
  br i1 %.not19.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.22) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cb = call i32 @close(i32 noundef %i.bx) #13  ; 0 uses
  %i.cc = load ptr, ptr @filename, align 8
  %i.cd = call i32 (ptr, i32, ...) @open(ptr noundef %i.cc, i32 noundef 2, i32 noundef 0) #13 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cf = call i32 @close(i32 noundef %i.cd) #13  ; 0 uses
  %i.cg = add i32 %.029.i, 1                      ; 2 uses
  %.b16.i = load i1, ptr @alarm_triggered, align 4
  br i1 %.b16.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.loopexit.i:                           ; preds = %bb.ab
  %i.ch = sitofp i32 %i.cg to double
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %test_open.exit
  %.0.lcssa.i = phi double [ 0.000000e+00, %test_open.exit ], [ %i.ch, %._crit_edge.loopexit.i ]
  %i.ci = call i32 @gettimeofday(ptr noundef nonnull @stop_t, ptr noundef null) #13 ; 0 uses
  %i.cj = load <2 x i64>, ptr @start_t, align 16
  %i.ck = load <2 x i64>, ptr @stop_t, align 16
  %i.cl = sub <2 x i64> %i.ck, %i.cj
  %i.cm = sitofp <2 x i64> %i.cl to <2 x double>  ; 2 uses
  %2 = shufflevector <2 x double> %i.cm, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.cn = insertelement <2 x double> %i.cm, double %.0.lcssa.i, i64 1 ; 2 uses
  %i.co = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> <double f0x3EB0C6F7A0B5ED8D, double 0.000000e+00>, <2 x double> %i.cn) ; 2 uses
  %i.cp = shufflevector <2 x double> %i.cn, <2 x double> %i.co, <2 x i32> <i32 1, i32 2>
  %i.cq = fdiv <2 x double> %i.co, %i.cp          ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  %i.cs = fmul double %i.cr, 1.000000e+06
  %i.ct = extractelement <2 x double> %i.cq, i64 1
  %i.cu = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.36, double noundef %i.ct, double noundef %i.cs) #13 ; 0 uses
  %i.cv = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.47) #13 ; 0 uses
  %i.cw = load ptr, ptr @stdout, align 8
  %i.cx = call i32 @fflush(ptr noundef %i.cw)     ; 0 uses
  store i1 false, ptr @alarm_triggered, align 4
  %i.cy = load i32, ptr @secs_per_test, align 4
  %i.cz = call i32 @alarm(i32 noundef %i.cy) #13  ; 0 uses
  %i.da = call i32 @gettimeofday(ptr noundef nonnull @start_t, ptr noundef null) #13 ; 0 uses
  %.b30.i = load i1, ptr @alarm_triggered, align 4
  br i1 %.b30.i, label %test_file_descriptor_sync.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %._crit_edge.i, %bb.aj
  %.131.i = phi i32 [ %i.dl, %bb.aj ], [ 0, %._crit_edge.i ]
  %i.db = load ptr, ptr @filename, align 8
  %i.dc = call i32 (ptr, i32, ...) @open(ptr noundef %i.db, i32 noundef 2, i32 noundef 0) #13 ; 3 uses
  %i.dd = icmp eq i32 %i.dc, -1
  br i1 %i.dd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph33.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.ad:                                            ; preds = %.lr.ph33.i
  %i.de = call i64 @write(i32 noundef %i.dc, ptr noundef nonnull @buf, i64 noundef 8192) #13
  %.not.i5 = icmp eq i64 %i.de, 8192
  br i1 %.not.i5, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.df = call i32 @close(i32 noundef %i.dc) #13  ; 0 uses
  %i.dg = load ptr, ptr @filename, align 8
  %i.dh = call i32 (ptr, i32, ...) @open(ptr noundef %i.dg, i32 noundef 2, i32 noundef 0) #13 ; 3 uses
  %i.di = icmp eq i32 %i.dh, -1
  br i1 %i.di, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dj = call i32 @fsync(i32 noundef %i.dh) #13
  %.not17.i = icmp eq i32 %i.dj, 0
  br i1 %.not17.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.22) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dk = call i32 @close(i32 noundef %i.dh) #13  ; 0 uses
  %i.dl = add i32 %.131.i, 1                      ; 2 uses
  %.b.i = load i1, ptr @alarm_triggered, align 4
  br i1 %.b.i, label %._crit_edge34.loopexit.i, label %.lr.ph33.i, !llvm.loop !8

._crit_edge34.loopexit.i:                         ; preds = %bb.aj
  %i.dm = sitofp i32 %i.dl to double
  br label %test_file_descriptor_sync.exit

test_file_descriptor_sync.exit:                   ; preds = %._crit_edge.i, %._crit_edge34.loopexit.i
  %.1.lcssa.i = phi double [ 0.000000e+00, %._crit_edge.i ], [ %i.dm, %._crit_edge34.loopexit.i ]
  %i.dn = call i32 @gettimeofday(ptr noundef nonnull @stop_t, ptr noundef null) #13 ; 0 uses
  %i.do = load <2 x i64>, ptr @start_t, align 16
  %i.dp = load <2 x i64>, ptr @stop_t, align 16
  %i.dq = sub <2 x i64> %i.dp, %i.do
  %i.dr = sitofp <2 x i64> %i.dq to <2 x double>  ; 2 uses
  %3 = shufflevector <2 x double> %i.dr, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ds = insertelement <2 x double> %i.dr, double %.1.lcssa.i, i64 1 ; 2 uses
  %i.dt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> <double f0x3EB0C6F7A0B5ED8D, double 0.000000e+00>, <2 x double> %i.ds) ; 2 uses
  %i.du = shufflevector <2 x double> %i.ds, <2 x double> %i.dt, <2 x i32> <i32 1, i32 2>
  %i.dv = fdiv <2 x double> %i.dt, %i.du          ; 2 uses
  %i.dw = extractelement <2 x double> %i.dv, i64 0
  %i.dx = fmul double %i.dw, 1.000000e+06
  %i.dy = extractelement <2 x double> %i.dv, i64 1
  %i.dz = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.36, double noundef %i.dy, double noundef %i.dx) #13 ; 0 uses
  %i.ea = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.48, i32 noundef 8) #13 ; 0 uses
  %i.eb = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.49) #13 ; 0 uses
  %i.ec = load ptr, ptr @stdout, align 8
  %i.ed = call i32 @fflush(ptr noundef %i.ec)     ; 0 uses
  %i.ee = load ptr, ptr @filename, align 8
  %i.ef = call i32 (ptr, i32, ...) @open(ptr noundef %i.ee, i32 noundef 2, i32 noundef 0) #13 ; 3 uses
  %i.eg = icmp eq i32 %i.ef, -1
  br i1 %i.eg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %test_file_descriptor_sync.exit
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.al:                                            ; preds = %test_file_descriptor_sync.exit
  store i1 false, ptr @alarm_triggered, align 4
  %i.eh = load i32, ptr @secs_per_test, align 4
  %i.ei = call i32 @alarm(i32 noundef %i.eh) #13  ; 0 uses
  %i.ej = call i32 @gettimeofday(ptr noundef nonnull @start_t, ptr noundef null) #13 ; 0 uses
  %.b6.i = load i1, ptr @alarm_triggered, align 4
  br i1 %.b6.i, label %test_non_sync.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %bb.al, %bb.an
  %.07.i = phi i32 [ %i.el, %bb.an ], [ 0, %bb.al ]
  %i.ek = call i64 @pwrite(i32 noundef %i.ef, ptr noundef nonnull @buf, i64 noundef 8192, i64 noundef 0) #13
  %.not.i7 = icmp eq i64 %i.ek, 8192
  br i1 %.not.i7, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i6
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #13
  call void @exit(i32 noundef 1) #17
  unreachable

bb.an:                                            ; preds = %.lr.ph.i6
  %i.el = add i32 %.07.i, 1                       ; 2 uses
  %.b.i8 = load i1, ptr @alarm_triggered, align 4
  br i1 %.b.i8, label %._crit_edge.loopexit.i9, label %.lr.ph.i6, !llvm.loop !9

._crit_edge.loopexit.i9:                          ; preds = %bb.an
  %i.em = sitofp i32 %i.el to double
  br label %test_non_sync.exit

test_non_sync.exit:                               ; preds = %bb.al, %._crit_edge.loopexit.i9
  %.0.lcssa.i11 = phi double [ 0.000000e+00, %bb.al ], [ %i.em, %._crit_edge.loopexit.i9 ]
  %i.en = call i32 @gettimeofday(ptr noundef nonnull @stop_t, ptr noundef null) #13 ; 0 uses
  %i.eo = load <2 x i64>, ptr @start_t, align 16
  %i.ep = load <2 x i64>, ptr @stop_t, align 16
  %i.eq = sub <2 x i64> %i.ep, %i.eo
  %i.er = sitofp <2 x i64> %i.eq to <2 x double>  ; 2 uses
  %4 = shufflevector <2 x double> %i.er, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.es = insertelement <2 x double> %i.er, double %.0.lcssa.i11, i64 1 ; 2 uses
  %i.et = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> <double f0x3EB0C6F7A0B5ED8D, double 0.000000e+00>, <2 x double> %i.es) ; 2 uses
  %i.eu = shufflevector <2 x double> %i.es, <2 x double> %i.et, <2 x i32> <i32 1, i32 2>
  %i.ev = fdiv <2 x double> %i.et, %i.eu          ; 2 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 0
  %i.ex = fmul double %i.ew, 1.000000e+06
  %i.ey = extractelement <2 x double> %i.ev, i64 1
  %i.ez = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.36, double noundef %i.ey, double noundef %i.ex) #13 ; 0 uses
  %i.fa = call i32 @close(i32 noundef %i.ef) #13  ; 0 uses
  %i.fb = load ptr, ptr @filename, align 8
  %i.fc = call i32 @unlink(ptr noundef %i.fb) #13 ; 0 uses
  ret i32 0
}

declare void @pg_logging_init(ptr noundef) local_unnamed_addr #1

declare void @set_pglocale_pgservice(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @get_progname(ptr noundef) local_unnamed_addr #1

declare void @pqsignal_fe(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define internal void @signal_cleanup(i32 %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %.b = load i1, ptr @needs_unlink, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @filename, align 8
  %i.b = tail call i32 @unlink(ptr noundef %i.a) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call i64 @write(i32 noundef 1, ptr noundef nonnull @.str.50, i64 noundef 1) #13 ; 0 uses
  tail call void @_exit(i32 noundef 1) #15
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @process_alarm(i32 %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  store i1 true, ptr @alarm_triggered, align 4
  ret void
}

declare void @pg_prng_seed(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @test_sync(i32 noundef range(i32 1, 3) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  %.str.23..str.24 = select i1 %i.a, ptr @.str.23, ptr @.str.24
  %i.b = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull %.str.23..str.24, i32 noundef 8) #13 ; 0 uses
  %i.c = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.25) #13 ; 0 uses
  %i.d = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #13 ; 0 uses
  %i.e = load ptr, ptr @stdout, align 8
  %i.f = tail call i32 @fflush(ptr noundef %i.e)  ; 0 uses
  %i.g = load ptr, ptr @filename, align 8
  %i.h = tail call noundef i32 (ptr, i32, ...) @open(ptr noundef readonly %i.g, i32 noundef 20482, i32 noundef 0) #13 ; 3 uses
  %i.i = icmp eq i32 %i.h, -1                     ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #13 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  store i1 false, ptr @alarm_triggered, align 4
  %i.k = load i32, ptr @secs_per_test, align 4
  %i.l = tail call i32 @alarm(i32 noundef %i.k) #13 ; 0 uses
  %i.m = tail call i32 @gettimeofday(ptr noundef nonnull @start_t, ptr noundef null) #13 ; 0 uses
  %.b4862 = load i1, ptr @alarm_triggered, align 4
  br i1 %.b4862, label %._crit_edge, label %.preheader55.preheader

.preheader55.preheader:                           ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.preheader55

.preheader55:                                     ; preds = %.preheader55.preheader, %bb.g
  %.03863 = phi i32 [ %i.p, %bb.g ], [ 0, %.preheader55.preheader ]
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.g, label %bb.e, !llvm.loop !10

bb.e:                                             ; preds = %.preheader55, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader55 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.n = shl nuw nsw i64 %indvars.iv, 13
  %i.o = tail call i64 @pwrite(i32 noundef %i.h, ptr noundef nonnull @buf, i64 noundef 8192, i64 noundef %i.n) #13
  %.not = icmp eq i64 %i.o, 8192
  br i1 %.not, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #13
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.p = add i32 %.03863, 1                       ; 2 uses
  %.b48 = load i1, ptr @alarm_triggered, align 4
  br i1 %.b48, label %._crit_edge.loopexit, label %.preheader55, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.q = sitofp i32 %i.p to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.038.lcssa = phi double [ 0.000000e+00, %bb.c ], [ %i.q, %._crit_edge.loopexit ]
  %i.r = tail call i32 @gettimeofday(ptr noundef nonnull @stop_t, ptr noundef null) #13 ; 0 uses
  %i.s = load <2 x i64>, ptr @start_t, align 16
  %i.t = load <2 x i64>, ptr @stop_t, align 16
  %i.u = sub <2 x i64> %i.t, %i.s
  %i.v = sitofp <2 x i64> %i.u to <2 x double>    ; 2 uses
  %1 = shufflevector <2 x double> %i.v, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.w = insertelement <2 x double> %i.v, double %.038.lcssa, i64 1 ; 2 uses
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1, <2 x double> <double f0x3EB0C6F7A0B5ED8D, double 0.000000e+00>, <2 x double> %i.w) ; 2 uses
  %i.y = shufflevector <2 x double> %i.w, <2 x double> %i.x, <2 x i32> <i32 1, i32 2>
  %i.z = fdiv <2 x double> %i.x, %i.y             ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = fmul double %i.aa, 1.000000e+06
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.36, double noundef %i.ac, double noundef %i.ab) #13 ; 0 uses
  %i.ae = tail call i32 @close(i32 noundef %i.h) #13 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.b
  %i.af = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.30) #13 ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8
  %i.ah = tail call i32 @fflush(ptr noundef %i.ag) ; 0 uses
  %i.ai = load ptr, ptr @filename, align 8
  %i.aj = tail call i32 (ptr, i32, ...) @open(ptr noundef %i.ai, i32 noundef 2, i32 noundef 0) #13 ; 4 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  store i1 false, ptr @alarm_triggered, align 4
  %i.al = load i32, ptr @secs_per_test, align 4
  %i.am = tail call i32 @alarm(i32 noundef %i.al) #13 ; 0 uses
  %i.an = tail call i32 @gettimeofday(ptr noundef nonnull @start_t, ptr noundef null) #13 ; 0 uses
  %.b4765 = load i1, ptr @alarm_triggered, align 4
  br i1 %.b4765, label %._crit_edge67, label %.preheader54.preheader

.preheader54.preheader:                           ; preds = %bb.j
  %wide.trip.count86 = zext nneg i32 %0 to i64
  br label %.preheader54

.preheader54:                                     ; preds = %.preheader54.preheader, %bb.n
  %.13966 = phi i32 [ %i.ar, %bb.n ], [ 0, %.preheader54.preheader ]
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %bb.n, label %bb.l, !llvm.loop !12

bb.l:                                             ; preds = %.preheader54, %bb.k
  %indvars.iv83 = phi i64 [ 0, %.preheader54 ], [ %indvars.iv.next84, %bb.k ] ; 2 uses
  %i.ao = shl nuw nsw i64 %indvars.iv83, 13
  %i.ap = tail call i64 @pwrite(i32 noundef %i.aj, ptr noundef nonnull @buf, i64 noundef 8192, i64 noundef %i.ao) #13
  %.not52 = icmp eq i64 %i.ap, 8192
  br i1 %.not52, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #13
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.aq = tail call i32 @fdatasync(i32 noundef %i.aj) #13 ; 0 uses
  %i.ar = add i32 %.13966, 1                      ; 2 uses
  %.b47 = load i1, ptr @alarm_triggered, align 4
  br i1 %.b47, label %._crit_edge67.loopexit, label %.preheader54, !llvm.loop !13

._crit_edge67.loopexit:                           ; preds = %bb.n
  %i.as = sitofp i32 %i.ar to double
  br label %._crit_edge67

._crit_edge67:                                    ; preds = %._crit_edge67.loopexit, %bb.j
  %.139.lcssa = phi double [ 0.000000e+00, %bb.j ], [ %i.as, %._crit_edge67.loopexit ]
  %i.at = tail call i32 @gettimeofday(ptr noundef nonnull @stop_t, ptr noundef null) #13 ; 0 uses
  %i.au = load <2 x i64>, ptr @start_t, align 16
  %i.av = load <2 x i64>, ptr @stop_t, align 16
  %i.aw = sub <2 x i64> %i.av, %i.au
  %i.ax = sitofp <2 x i64> %i.aw to <2 x double>  ; 2 uses
  %2 = shufflevector <2 x double> %i.ax, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ay = insertelement <2 x double> %i.ax, double %.139.lcssa, i64 1 ; 2 uses
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> <double f0x3EB0C6F7A0B5ED8D, double 0.000000e+00>, <2 x double> %i.ay) ; 2 uses
  %i.ba = shufflevector <2 x double> %i.ay, <2 x double> %i.az, <2 x i32> <i32 1, i32 2>
  %i.bb = fdiv <2 x double> %i.az, %i.ba          ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0
  %i.bd = fmul double %i.bc, 1.000000e+06
  %i.be = extractelement <2 x double> %i.bb, i64 1
  %i.bf = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.36, double noundef %i.be, double noundef %i.bd) #13 ; 0 uses
  %i.bg = tail call i32 @close(i32 noundef %i.aj) #13 ; 0 uses
  %i.bh = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.31) #13 ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8
  %i.bj = tail call i32 @fflush(ptr noundef %i.bi) ; 0 uses
  %i.bk = load ptr, ptr @filename, align 8
  %i.bl = tail call i32 (ptr, i32, ...) @open(ptr noundef %i.bk, i32 noundef 2, i32 noundef 0) #13 ; 4 uses
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge67
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.p:                                             ; preds = %._crit_edge67
  store i1 false, ptr @alarm_triggered, align 4
  %i.bn = load i32, ptr @secs_per_test, align 4
  %i.bo = tail call i32 @alarm(i32 noundef %i.bn) #13 ; 0 uses
  %i.bp = tail call i32 @gettimeofday(ptr noundef nonnull @start_t, ptr noundef null) #13 ; 0 uses
  %.b4670 = load i1, ptr @alarm_triggered, align 4
  br i1 %.b4670, label %._crit_edge72, label %.preheader53.preheader

.preheader53.preheader:                           ; preds = %bb.p
  %wide.trip.count91 = zext nneg i32 %0 to i64
  br label %.preheader53

.preheader53:                                     ; preds = %.preheader53.preheader, %bb.v
  %.24071 = phi i32 [ %i.bt, %bb.v ], [ 0, %.preheader53.preheader ]
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %bb.t, label %bb.r, !llvm.loop !14

bb.r:                                             ; preds = %.preheader53, %bb.q
  %indvars.iv88 = phi i64 [ 0, %.preheader53 ], [ %indvars.iv.next89, %bb.q ] ; 2 uses
  %i.bq = shl nuw nsw i64 %indvars.iv88, 13
  %i.br = tail call i64 @pwrite(i32 noundef %i.bl, ptr noundef nonnull @buf, i64 noundef 8192, i64 noundef %i.bq) #13
  %.not51 = icmp eq i64 %i.br, 8192
  br i1 %.not51, label %bb.q, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #13
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.bs = tail call i32 @fsync(i32 noundef %i.bl) #13
  %.not50 = icmp eq i32 %i.bs, 0
  br i1 %.not50, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.22) #13
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bt = add i32 %.24071, 1                      ; 2 uses
  %.b46 = load i1, ptr @alarm_triggered, align 4
  br i1 %.b46, label %._crit_edge72.loopexit, label %.preheader53, !llvm.loop !15

._crit_edge72.loopexit:                           ; preds = %bb.v
  %i.bu = sitofp i32 %i.bt to double
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %._crit_edge72.loopexit, %bb.p
  %.240.lcssa = phi double [ 0.000000e+00, %bb.p ], [ %i.bu, %._crit_edge72.loopexit ]
  %i.bv = tail call i32 @gettimeofday(ptr noundef nonnull @stop_t, ptr noundef null) #13 ; 0 uses
  %i.bw = load <2 x i64>, ptr @start_t, align 16
  %i.bx = load <2 x i64>, ptr @stop_t, align 16
  %i.by = sub <2 x i64> %i.bx, %i.bw
  %i.bz = sitofp <2 x i64> %i.by to <2 x double>  ; 2 uses
  %3 = shufflevector <2 x double> %i.bz, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ca = insertelement <2 x double> %i.bz, double %.240.lcssa, i64 1 ; 2 uses
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> <double f0x3EB0C6F7A0B5ED8D, double 0.000000e+00>, <2 x double> %i.ca) ; 2 uses
  %i.cc = shufflevector <2 x double> %i.ca, <2 x double> %i.cb, <2 x i32> <i32 1, i32 2>
  %i.cd = fdiv <2 x double> %i.cb, %i.cc          ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = fmul double %i.ce, 1.000000e+06
  %i.cg = extractelement <2 x double> %i.cd, i64 1
  %i.ch = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.36, double noundef %i.cg, double noundef %i.cf) #13 ; 0 uses
  %i.ci = tail call i32 @close(i32 noundef %i.bl) #13 ; 0 uses
  %i.cj = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.32) #13 ; 0 uses
  %i.ck = load ptr, ptr @stdout, align 8
  %i.cl = tail call i32 @fflush(ptr noundef %i.ck) ; 0 uses
  %i.cm = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.33) #13 ; 0 uses
  %i.cn = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.34) #13 ; 0 uses
  %i.co = load ptr, ptr @stdout, align 8
  %i.cp = tail call i32 @fflush(ptr noundef %i.co) ; 0 uses
  %i.cq = load ptr, ptr @filename, align 8
  %i.cr = tail call noundef i32 (ptr, i32, ...) @open(ptr noundef readonly %i.cq, i32 noundef 1069058, i32 noundef 0) #13 ; 3 uses
  %i.cs = icmp eq i32 %i.cr, -1
  br i1 %i.cs, label %.critedge, label %bb.w

.critedge:                                        ; preds = %._crit_edge72
  %i.ct = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #13 ; 0 uses
  br label %bb.ab

bb.w:                                             ; preds = %._crit_edge72
  store i1 false, ptr @alarm_triggered, align 4
  %i.cu = load i32, ptr @secs_per_test, align 4
  %i.cv = tail call i32 @alarm(i32 noundef %i.cu) #13 ; 0 uses
  %i.cw = tail call i32 @gettimeofday(ptr noundef nonnull @start_t, ptr noundef null) #13 ; 0 uses
  %.b75 = load i1, ptr @alarm_triggered, align 4
  br i1 %.b75, label %._crit_edge77, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.w
  %wide.trip.count96 = zext nneg i32 %0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.aa
  %.34176 = phi i32 [ %i.cz, %bb.aa ], [ 0, %.preheader.preheader ]
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %bb.aa, label %bb.y, !llvm.loop !16

bb.y:                                             ; preds = %.preheader, %bb.x
  %indvars.iv93 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next94, %bb.x ] ; 2 uses
  %i.cx = shl nuw nsw i64 %indvars.iv93, 13
  %i.cy = tail call i64 @pwrite(i32 noundef %i.cr, ptr noundef nonnull @buf, i64 noundef 8192, i64 noundef %i.cx) #13
  %.not49 = icmp eq i64 %i.cy, 8192
  br i1 %.not49, label %bb.x, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #13
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.cz = add i32 %.34176, 1                      ; 2 uses
  %.b = load i1, ptr @alarm_triggered, align 4
  br i1 %.b, label %._crit_edge77.loopexit, label %.preheader, !llvm.loop !17

._crit_edge77.loopexit:                           ; preds = %bb.aa
  %i.da = sitofp i32 %i.cz to double
  br label %._crit_edge77

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit, %bb.w
  %.341.lcssa = phi double [ 0.000000e+00, %bb.w ], [ %i.da, %._crit_edge77.loopexit ]
  %i.db = tail call i32 @gettimeofday(ptr noundef nonnull @stop_t, ptr noundef null) #13 ; 0 uses
  %i.dc = load <2 x i64>, ptr @start_t, align 16
  %i.dd = load <2 x i64>, ptr @stop_t, align 16
  %i.de = sub <2 x i64> %i.dd, %i.dc
  %i.df = sitofp <2 x i64> %i.de to <2 x double>  ; 2 uses
  %4 = shufflevector <2 x double> %i.df, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.dg = insertelement <2 x double> %i.df, double %.341.lcssa, i64 1 ; 2 uses
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> <double f0x3EB0C6F7A0B5ED8D, double 0.000000e+00>, <2 x double> %i.dg) ; 2 uses
  %i.di = shufflevector <2 x double> %i.dg, <2 x double> %i.dh, <2 x i32> <i32 1, i32 2>
  %i.dj = fdiv <2 x double> %i.dh, %i.di          ; 2 uses
  %i.dk = extractelement <2 x double> %i.dj, i64 0
  %i.dl = fmul double %i.dk, 1.000000e+06
  %i.dm = extractelement <2 x double> %i.dj, i64 1
  %i.dn = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.36, double noundef %i.dm, double noundef %i.dl) #13 ; 0 uses
  %i.do = tail call i32 @close(i32 noundef %i.cr) #13 ; 0 uses
  br i1 %i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge, %._crit_edge77
  %i.dp = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.35) #13 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge77
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @pg_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @pg_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @pg_log_generic(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare i32 @pg_prng_int32(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

declare i32 @fsync(i32 noundef) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @alarm(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @pwrite(i32 noundef, ptr noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #10

declare i32 @fdatasync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @test_open_sync(ptr noundef %0, i32 noundef range(i32 1, 17) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.26, ptr noundef %0) #13 ; 0 uses
  %i.b = load ptr, ptr @stdout, align 8
  %i.c = tail call i32 @fflush(ptr noundef %i.b)  ; 0 uses
  %i.d = load ptr, ptr @filename, align 8
  %i.e = tail call noundef i32 (ptr, i32, ...) @open(ptr noundef readonly %i.d, i32 noundef 1069058, i32 noundef 0) #13 ; 3 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #13 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store i1 false, ptr @alarm_triggered, align 4
  %i.h = load i32, ptr @secs_per_test, align 4
  %i.i = tail call i32 @alarm(i32 noundef %i.h) #13 ; 0 uses
  %i.j = tail call i32 @gettimeofday(ptr noundef nonnull @start_t, ptr noundef null) #13 ; 0 uses
  %.b15 = load i1, ptr @alarm_triggered, align 4
  br i1 %.b15, label %._crit_edge17, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.c
  %.rhs.trunc = trunc nuw nsw i32 %1 to i8
  %i.k = udiv i8 16, %.rhs.trunc
  %i.l = shl nuw nsw i32 %1, 10                   ; 2 uses
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = zext nneg i32 %i.l to i64
  %wide.trip.count = zext nneg i8 %i.k to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.01116.us = phi i32 [ %i.q, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.e, !llvm.loop !18

bb.e:                                             ; preds = %.preheader.us, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.o = mul nuw nsw i64 %indvars.iv, %i.n
  %i.p = tail call i64 @pwrite(i32 noundef %i.e, ptr noundef nonnull @buf, i64 noundef %i.m, i64 noundef %i.o) #13
  %.not.us = icmp eq i64 %i.p, %i.m
  br i1 %.not.us, label %bb.d, label %.split.us

._crit_edge.us:                                   ; preds = %bb.d
  %i.q = add i32 %.01116.us, 1                    ; 2 uses
  %.b.us = load i1, ptr @alarm_triggered, align 4
  br i1 %.b.us, label %._crit_edge17.loopexit, label %.preheader.us, !llvm.loop !19

.split.us:                                        ; preds = %bb.e
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #13
  tail call void @exit(i32 noundef 1) #17
  unreachable

._crit_edge17.loopexit:                           ; preds = %._crit_edge.us
  %i.r = sitofp i32 %i.q to double
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit, %bb.c
  %.011.lcssa = phi double [ 0.000000e+00, %bb.c ], [ %i.r, %._crit_edge17.loopexit ]
  %i.s = tail call i32 @gettimeofday(ptr noundef nonnull @stop_t, ptr noundef null) #13 ; 0 uses
  %i.t = load <2 x i64>, ptr @start_t, align 16
  %i.u = load <2 x i64>, ptr @stop_t, align 16
  %i.v = sub <2 x i64> %i.u, %i.t
  %i.w = sitofp <2 x i64> %i.v to <2 x double>    ; 2 uses
  %2 = shufflevector <2 x double> %i.w, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.x = insertelement <2 x double> %i.w, double %.011.lcssa, i64 1 ; 2 uses
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> <double f0x3EB0C6F7A0B5ED8D, double 0.000000e+00>, <2 x double> %i.x) ; 2 uses
  %i.z = shufflevector <2 x double> %i.x, <2 x double> %i.y, <2 x i32> <i32 1, i32 2>
  %i.aa = fdiv <2 x double> %i.y, %i.z            ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  %i.ac = fmul double %i.ab, 1.000000e+06
  %i.ad = extractelement <2 x double> %i.aa, i64 1
  %i.ae = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.36, double noundef %i.ad, double noundef %i.ac) #13 ; 0 uses
  %i.af = tail call i32 @close(i32 noundef %i.e) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge17, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
end_hunk_0
