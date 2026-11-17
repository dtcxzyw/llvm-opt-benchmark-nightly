Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pgbench?download=true
inline.NumInlined: 280
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@initPopulateTable:bb.a
  %i.c = load i32, ptr @scale, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = mul nsw i64 %2, %i.d                     ; 8 uses
  %i.f = load ptr, ptr @stderr, align 8
  %i.g = tail call i32 @fileno(ptr noundef %i.f) #12
  %i.h = tail call i32 @isatty(i32 noundef %i.g) #12
  %.not = icmp ne i32 %i.h, 0                     ; 2 uses
  call void @initPQExpBuffer(ptr noundef nonnull %7) #12
  %i.i = call i32 @PQserverVersion(ptr noundef nonnull %0) #12
  %i.j = icmp sgt i32 %i.i, 139999
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr %1, ptr %i.a, align 8
  %i.k = call ptr @PQexecParams(ptr noundef nonnull %0, ptr noundef nonnull @.str.260, i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 0) #12 ; 3 uses
  %i.l = call i32 @PQresultStatus(ptr noundef %i.k) #12
  %.not.i = icmp eq i32 %i.l, 2
  br i1 %.not.i, label %get_table_relkind.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call ptr @PQerrorMessage(ptr noundef nonnull %0) #12
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.218, ptr noundef %i.m) #12
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.260) #12
  call void @exit(i32 noundef 1) #27
  unreachable

get_table_relkind.exit:                           ; preds = %bb.b
  %i.n = call ptr @PQgetvalue(ptr noundef %i.k, i32 noundef 0, i32 noundef 0) #12
  %i.o = load i8, ptr %i.n, align 1
  call void @PQclear(ptr noundef %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.p = icmp eq i8 %i.o, 114
  %spec.select = select i1 %i.p, ptr @.str.249, ptr @.str.248
  br label %bb.d

bb.d:                                             ; preds = %get_table_relkind.exit, %bb.a
  %.071 = phi ptr [ @.str.248, %bb.a ], [ %spec.select, %get_table_relkind.exit ]
  %i.q = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.b, i64 noundef 256, ptr noundef nonnull %.071, ptr noundef %1) #12 ; 2 uses
  %i.r = icmp ugt i32 %i.q, 255
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.250, i32 noundef %i.q) #12
  call void @exit(i32 noundef 1) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = call ptr @PQexec(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.t = call i32 @PQresultStatus(ptr noundef %i.s) #12
  %.not85 = icmp eq i32 %i.t, 4
  br i1 %.not85, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = call ptr @PQerrorMessage(ptr noundef nonnull %0) #12
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.252, ptr noundef %i.u) #12
  call void @exit(i32 noundef 1) #27
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @PQclear(ptr noundef %i.s) #12
  %i.v = load i8, ptr @timing_tsc_enabled, align 1, !range !12, !noundef !13
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.x = call { i64, i32 } @llvm.x86.rdtscp()
  %i.y = extractvalue { i64, i32 } %i.x, 0
  br label %pg_get_ticks.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.z = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #12 ; 0 uses
  %i.aa = load i64, ptr %6, align 8
  %i.ab = mul i64 %i.aa, 1000000000
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ab, %i.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %pg_get_ticks.exit.i

pg_get_ticks.exit.i:                              ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i = phi i64 [ %i.y, %bb.i ], [ %i.ae, %bb.j ] ; 5 uses
  %i.af = load i64, ptr @ticks_per_ns_scaled, align 8 ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %pg_time_now.exit, label %bb.k

bb.k:                                             ; preds = %pg_get_ticks.exit.i
  %i.ah = load i64, ptr @max_ticks_no_overflow, align 8
  %i.ai = icmp sgt i64 %.sroa.0.0.i.i, %i.ah
  br i1 %i.ai, label %bb.l, label %bb.m, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.aj = ashr i64 %.sroa.0.0.i.i, 14
  %i.ak = mul i64 %i.af, %i.aj
  %i.al = and i64 %.sroa.0.0.i.i, 16383
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.011.i.i = phi i64 [ %i.al, %bb.l ], [ %.sroa.0.0.i.i, %bb.k ]
  %.010.i.i = phi i64 [ %i.ak, %bb.l ], [ 0, %bb.k ]
  %i.am = mul i64 %.011.i.i, %i.af
  %i.an = lshr i64 %i.am, 14
  %i.ao = add i64 %i.an, %.010.i.i
  br label %pg_time_now.exit

pg_time_now.exit:                                 ; preds = %pg_get_ticks.exit.i, %bb.m
  %.0.i.i = phi i64 [ %i.ao, %bb.m ], [ %.sroa.0.0.i.i, %pg_get_ticks.exit.i ]
  %i.ap = sdiv i64 %.0.i.i, 1000                  ; 2 uses
  %i.aq = icmp sgt i64 %i.e, 0
  br i1 %i.aq, label %.lr.ph, label %.thread.thread

.lr.ph:                                           ; preds = %pg_time_now.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = uitofp nneg i64 %i.e to double          ; 2 uses
  %i.at = select i1 %.not, i32 13, i32 10         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.ak
  %.070115 = phi i32 [ 1, %.lr.ph ], [ %.3, %bb.ak ] ; 4 uses
  %.072114 = phi i32 [ 0, %.lr.ph ], [ %.375, %bb.ak ] ; 6 uses
  %.076113 = phi i32 [ 0, %.lr.ph ], [ %.379, %bb.ak ] ; 3 uses
  %.080112 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.ak ] ; 2 uses
  %i.av = add nuw nsw i64 %.080112, 1             ; 11 uses
  call void %3(ptr noundef nonnull %7, i64 noundef %.080112) #12, !callees !67
  %i.aw = load ptr, ptr %7, align 8
  %i.ax = call i32 @PQputline(ptr noundef nonnull %0, ptr noundef %i.aw) #12
  %.not86 = icmp eq i32 %i.ax, 0
  br i1 %.not86, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.253) #12
  call void @exit(i32 noundef 1) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ay = load volatile i32, ptr @CancelRequested, align 4
  %.not87 = icmp eq i32 %i.ay, 0
  br i1 %.not87, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %.b84 = load i1, ptr @use_quiet, align 1        ; 2 uses
  %i.az = urem i64 %i.av, 100000
  %i.ba = icmp ne i64 %i.az, 0
  %or.cond91.not = select i1 %.b84, i1 true, i1 %i.ba
  br i1 %or.cond91.not, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load i8, ptr @timing_tsc_enabled, align 1, !range !12, !noundef !13
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.s, label %bb.t, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.bd = call { i64, i32 } @llvm.x86.rdtscp()
  %i.be = extractvalue { i64, i32 } %i.bd, 0
  br label %pg_get_ticks.exit.i94

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.bf = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #12 ; 0 uses
  %i.bg = load i64, ptr %5, align 8
  %i.bh = mul i64 %i.bg, 1000000000
  %i.bi = load i64, ptr %i.ar, align 8
  %i.bj = add i64 %i.bh, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %pg_get_ticks.exit.i94

pg_get_ticks.exit.i94:                            ; preds = %bb.t, %bb.s
  %.sroa.0.0.i.i95 = phi i64 [ %i.be, %bb.s ], [ %i.bj, %bb.t ] ; 5 uses
  %i.bk = load i64, ptr @ticks_per_ns_scaled, align 8 ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %pg_time_now.exit99, label %bb.u

bb.u:                                             ; preds = %pg_get_ticks.exit.i94
  %i.bm = load i64, ptr @max_ticks_no_overflow, align 8
  %i.bn = icmp sgt i64 %.sroa.0.0.i.i95, %i.bm
  br i1 %i.bn, label %bb.v, label %bb.w, !prof !14

bb.v:                                             ; preds = %bb.u
  %i.bo = ashr i64 %.sroa.0.0.i.i95, 14
  %i.bp = mul i64 %i.bk, %i.bo
  %i.bq = and i64 %.sroa.0.0.i.i95, 16383
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.011.i.i96 = phi i64 [ %i.bq, %bb.v ], [ %.sroa.0.0.i.i95, %bb.u ]
  %.010.i.i97 = phi i64 [ %i.bp, %bb.v ], [ 0, %bb.u ]
  %i.br = mul i64 %.011.i.i96, %i.bk
  %i.bs = lshr i64 %i.br, 14
  %i.bt = add i64 %i.bs, %.010.i.i97
  br label %pg_time_now.exit99

pg_time_now.exit99:                               ; preds = %pg_get_ticks.exit.i94, %bb.w
  %.0.i.i98 = phi i64 [ %i.bt, %bb.w ], [ %.sroa.0.0.i.i95, %pg_get_ticks.exit.i94 ]
  %i.bu = sdiv i64 %.0.i.i98, 1000
  %i.bv = sub nsw i64 %i.bu, %i.ap
  %i.bw = sitofp i64 %i.bv to double
  %i.bx = fmul nnan double %i.bw, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %i.by = uitofp nneg i64 %i.av to double         ; 2 uses
  %i.bz = fsub nnan ninf double %i.as, %i.by
  %i.ca = fmul nnan double %i.bz, %i.bx
  %i.cb = fdiv double %i.ca, %i.by
  %i.cc = load ptr, ptr @stderr, align 8
  %i.cd = mul nuw nsw i64 %i.av, 100
  %i.ce = udiv i64 %i.cd, %i.e
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.cc, ptr noundef nonnull @.str.254, i64 noundef %i.av, i64 noundef %i.e, i32 noundef %i.cf, ptr noundef %1, double noundef %i.bx, double noundef %i.cb) #12 ; 4 uses
  %i.ch = icmp sgt i32 %.072114, %i.cg
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %pg_time_now.exit99
  %i.ci = load ptr, ptr @stderr, align 8
  %i.cj = sub i32 %.072114, %i.cg
  %i.ck = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str.255, i32 noundef %i.cj, i32 noundef 32) #12 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %pg_time_now.exit99
  %i.cl = load ptr, ptr @stderr, align 8
  %i.cm = call i32 @fputc(i32 noundef %i.at, ptr noundef %i.cl) ; 0 uses
  br label %bb.ak

bb.z:                                             ; preds = %bb.q
  %i.cn = urem i64 %i.av, 100
  %i.co = icmp eq i64 %i.cn, 0
  %or.cond93 = select i1 %.b84, i1 %i.co, i1 false
  br i1 %or.cond93, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.cp = load i8, ptr @timing_tsc_enabled, align 1, !range !12, !noundef !13
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.ab, label %bb.ac, !prof !11

bb.ab:                                            ; preds = %bb.aa
  %i.cr = call { i64, i32 } @llvm.x86.rdtscp()
  %i.cs = extractvalue { i64, i32 } %i.cr, 0
  br label %pg_get_ticks.exit.i100

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.ct = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #12 ; 0 uses
  %i.cu = load i64, ptr %4, align 8
  %i.cv = mul i64 %i.cu, 1000000000
  %i.cw = load i64, ptr %i.au, align 8
  %i.cx = add i64 %i.cv, %i.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %pg_get_ticks.exit.i100

pg_get_ticks.exit.i100:                           ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i.i101 = phi i64 [ %i.cs, %bb.ab ], [ %i.cx, %bb.ac ] ; 5 uses
  %i.cy = load i64, ptr @ticks_per_ns_scaled, align 8 ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %pg_time_now.exit105, label %bb.ad

bb.ad:                                            ; preds = %pg_get_ticks.exit.i100
  %i.da = load i64, ptr @max_ticks_no_overflow, align 8
  %i.db = icmp sgt i64 %.sroa.0.0.i.i101, %i.da
  br i1 %i.db, label %bb.ae, label %bb.af, !prof !14

bb.ae:                                            ; preds = %bb.ad
  %i.dc = ashr i64 %.sroa.0.0.i.i101, 14
  %i.dd = mul i64 %i.cy, %i.dc
  %i.de = and i64 %.sroa.0.0.i.i101, 16383
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.011.i.i102 = phi i64 [ %i.de, %bb.ae ], [ %.sroa.0.0.i.i101, %bb.ad ]
  %.010.i.i103 = phi i64 [ %i.dd, %bb.ae ], [ 0, %bb.ad ]
  %i.df = mul i64 %.011.i.i102, %i.cy
  %i.dg = lshr i64 %i.df, 14
  %i.dh = add i64 %i.dg, %.010.i.i103
  br label %pg_time_now.exit105

pg_time_now.exit105:                              ; preds = %pg_get_ticks.exit.i100, %bb.af
  %.0.i.i104 = phi i64 [ %i.dh, %bb.af ], [ %.sroa.0.0.i.i101, %pg_get_ticks.exit.i100 ]
  %i.di = sdiv i64 %.0.i.i104, 1000
  %i.dj = sub nsw i64 %i.di, %i.ap
  %i.dk = sitofp i64 %i.dj to double
  %i.dl = fmul nnan double %i.dk, f0x3EB0C6F7A0B5ED8D ; 4 uses
  %i.dm = uitofp nneg i64 %i.av to double         ; 2 uses
  %i.dn = fsub nnan ninf double %i.as, %i.dm
  %i.do = fmul nnan double %i.dn, %i.dl
  %i.dp = fdiv double %i.do, %i.dm
  %i.dq = icmp eq i64 %i.av, %i.e
  br i1 %i.dq, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %pg_time_now.exit105
  %i.dr = mul i32 %.070115, 5
  %i.ds = sitofp i32 %i.dr to double
  %i.dt = fcmp ult double %i.dl, %i.ds
  br i1 %i.dt, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %pg_time_now.exit105
  %i.du = load ptr, ptr @stderr, align 8
  %i.dv = mul nuw nsw i64 %i.av, 100
  %i.dw = udiv i64 %i.dv, %i.e
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.du, ptr noundef nonnull @.str.254, i64 noundef %i.av, i64 noundef %i.e, i32 noundef %i.dx, ptr noundef %1, double noundef %i.dl, double noundef %i.dp) #12 ; 4 uses
  %i.dz = icmp sgt i32 %.072114, %i.dy
  br i1 %i.dz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ea = load ptr, ptr @stderr, align 8
  %i.eb = sub i32 %.072114, %i.dy
  %i.ec = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ea, ptr noundef nonnull @.str.255, i32 noundef %i.eb, i32 noundef 32) #12 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ed = load ptr, ptr @stderr, align 8
  %i.ee = call i32 @fputc(i32 noundef %i.at, ptr noundef %i.ed) ; 0 uses
  %i.ef = fdiv double %i.dl, 5.000000e+00
  %i.eg = call double @llvm.ceil.f64(double %i.ef)
  %i.eh = fptosi double %i.eg to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.y, %bb.z, %bb.aj, %bb.ag
  %.379 = phi i32 [ %.076113, %bb.ag ], [ %.076113, %bb.z ], [ %i.cg, %bb.y ], [ %i.dy, %bb.aj ] ; 2 uses
  %.375 = phi i32 [ %.072114, %bb.ag ], [ %.072114, %bb.z ], [ %i.cg, %bb.y ], [ %i.dy, %bb.aj ]
  %.3 = phi i32 [ %.070115, %bb.ag ], [ %.070115, %bb.z ], [ %.070115, %bb.y ], [ %i.eh, %bb.aj ]
  %exitcond.not = icmp eq i64 %i.av, %i.e
  br i1 %exitcond.not, label %.thread, label %bb.n, !llvm.loop !66

.thread:                                          ; preds = %bb.ak, %bb.p
  %.076.lcssa = phi i32 [ %.076113, %bb.p ], [ %.379, %bb.ak ] ; 2 uses
  %i.ei = icmp ne i32 %.076.lcssa, 0
  %or.cond = select i1 %i.ei, i1 %.not, i1 false
  br i1 %or.cond, label %bb.al, label %.thread.thread

bb.al:                                            ; preds = %.thread
  %i.ej = load ptr, ptr @stderr, align 8
  %i.ek = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ej, ptr noundef nonnull @.str.256, i32 noundef %.076.lcssa, i32 noundef 32) #12 ; 0 uses
  br label %.thread.thread

.thread.thread:                                   ; preds = %pg_time_now.exit, %bb.al, %.thread
  %i.el = call i32 @PQputline(ptr noundef nonnull %0, ptr noundef nonnull @.str.257) #12
  %.not88 = icmp eq i32 %i.el, 0
  br i1 %.not88, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.thread.thread
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.258) #12
  call void @exit(i32 noundef 1) #27
  unreachable

bb.an:                                            ; preds = %.thread.thread
  %i.em = call i32 @PQendcopy(ptr noundef nonnull %0) #12
  %.not89 = icmp eq i32 %i.em, 0
  br i1 %.not89, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.259) #12
  call void @exit(i32 noundef 1) #27
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @termPQExpBuffer(ptr noundef nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initBranch(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = add i64 %1, 1
  tail call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef %0, ptr noundef nonnull @.str.261, i64 noundef %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initTeller(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = sdiv i64 %1, 10
  %i.c = add nsw i64 %i.b, 1
  tail call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef %0, ptr noundef nonnull @.str.262, i64 noundef %i.a, i64 noundef %i.c) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initAccount(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = sdiv i64 %1, 100000
  %i.c = add nsw i64 %i.b, 1
  tail call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef %0, ptr noundef nonnull @.str.263, i64 noundef %i.a, i64 noundef %i.c) #12
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @PQserverVersion(ptr noundef) local_unnamed_addr #4

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @PQputline(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #16

declare i32 @PQendcopy(ptr noundef) local_unnamed_addr #4

declare ptr @PQexecParams(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @PQgetvalue(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @PQconnectdbParams(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @PQstatus(ptr noundef) local_unnamed_addr #4

declare i32 @PQconnectionNeedsPassword(ptr noundef) local_unnamed_addr #4

declare ptr @simple_prompt(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @PQparameterStatus(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @formatPGVersionNumber(i32 noundef, i1 noundef zeroext, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @PQresultErrorField(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @PQntuples(ptr noundef) local_unnamed_addr #4

declare i32 @PQgetisnull(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @compareVariableNames(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #28
  ret i32 %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nounwind
declare i32 @pthread_barrier_wait(ptr noundef) local_unnamed_addr #3

declare i32 @PQsocket(ptr noundef) local_unnamed_addr #4

declare void @pg_usleep(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @doLog(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i1 noundef zeroext %3, double noundef %4, double noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 17 uses
  %i.c = load i8, ptr @timing_tsc_enabled, align 1, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i32 } @llvm.x86.rdtscp()
  %i.f = extractvalue { i64, i32 } %i.e, 0
  br label %pg_get_ticks.exit.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.g = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #12 ; 0 uses
  %i.h = load i64, ptr %6, align 8
  %i.i = mul i64 %i.h, 1000000000
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.i, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %pg_get_ticks.exit.i
end_hunk_0
