Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/xlogrecovery?download=true
inline.NumInlined: 100
inline.NumDeleted: 46
begin_hunk_0_@InitWalRecovery:bb.a
  %i.kr = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13, ptr noundef %i.kk) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 636, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.co:                                            ; preds = %.lr.ph208
  %i.ks = load ptr, ptr %i.kl, align 8
  call void @pfree(ptr noundef %i.ks) #18
  call void @pfree(ptr noundef nonnull %i.ki) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kt = load i32, ptr %i.kc, align 4
  %i.ku = sext i32 %i.kt to i64
  %i.kv = icmp slt i64 %indvars.iv.next, %i.ku
  br i1 %i.kv, label %.lr.ph208, label %.critedge

.critedge:                                        ; preds = %bb.co, %bb.cn, %.lr.ph, %read_tablespace_map.exit
  %i.kw = zext i1 %.not43.i to i8
  br label %bb.di

bb.cp:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.kx = call i32 @stat(ptr noundef nonnull @.str.14, ptr noundef nonnull %5) #18
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.kz = call i32 @unlink(ptr noundef nonnull @.str.15) #18 ; 0 uses
  %i.la = call i32 @durable_rename(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 14) #18
  %i.lb = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.lb, label %.sink.split, label %bb.cr

.sink.split:                                      ; preds = %bb.cq
  %i.lc = icmp eq i32 %i.la, 0                    ; 2 uses
  %.266 = select i1 %i.lc, i32 671, i32 677
  %.str.18..str.19 = select i1 %i.lc, ptr @.str.18, ptr @.str.19
  %i.ld = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17) #18 ; 0 uses
  %i.le = call i32 (ptr, ...) @errdetail(ptr noundef nonnull %.str.18..str.19, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef %.266, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.sink.split, %bb.cp
  %i.lf = load i8, ptr @ArchiveRecoveryRequested, align 1, !range !5, !noundef !6
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.li = load i64, ptr %i.lh, align 8
  %.not162 = icmp eq i64 %i.li, 0
  br i1 %.not162, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.lk = load i8, ptr %i.lj, align 8, !range !5, !noundef !6
  %i.ll = trunc nuw i8 %i.lk to i1
  br i1 %i.ll, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ln = load i64, ptr %i.lm, align 8
  %.not163 = icmp eq i64 %i.ln, 0
  br i1 %.not163, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.lo = load i32, ptr %i.m, align 8
  %i.lp = icmp eq i32 %i.lo, 1
  br i1 %i.lp, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs
  store i8 1, ptr @InArchiveRecovery, align 1
  %.b160 = load i1, ptr @StandbyModeRequested, align 1
  br i1 %.b160, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i8 1, ptr @StandbyMode, align 1
  call void @disable_startup_progress_timeout() #18
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx, %bb.cv, %bb.cr
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8
  %.not164 = icmp eq i64 %i.lr, 0
  br i1 %.not164, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ls = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.ls, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.lt = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.lu = lshr i64 %i.lt, 32
  %i.lv = trunc nuw i64 %i.lu to i32
  %i.lw = trunc i64 %i.lt to i32
  %i.lx = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20, i32 noundef %i.lv, i32 noundef %i.lw) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 716, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da, %bb.cy
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lz = load i64, ptr %i.ly, align 8            ; 2 uses
  store i64 %i.lz, ptr @CheckPointLoc, align 8
  %i.ma = load i32, ptr %i.r, align 8             ; 3 uses
  store i32 %i.ma, ptr @CheckPointTLI, align 4
  %i.mb = load i64, ptr %i.q, align 8
  store i64 %i.mb, ptr @RedoStartLSN, align 8
  store i32 %i.ma, ptr @RedoStartTLI, align 4
  %i.mc = load ptr, ptr @xlogprefetcher, align 8
  %i.md = call fastcc ptr @ReadCheckpointRecord(ptr noundef %i.mc, i64 noundef %i.lz, i32 noundef %i.ma) ; 2 uses
  %.not165 = icmp eq ptr %i.md, null
  br i1 %.not165, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.me = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.me, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.mf = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.mg = lshr i64 %i.mf, 32
  %i.mh = trunc nuw i64 %i.mg to i32
  %i.mi = trunc i64 %i.mf to i32
  %i.mj = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, i32 noundef %i.mh, i32 noundef %i.mi) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 729, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.df

bb.de:                                            ; preds = %bb.db
  %i.mk = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.ml = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.mm = lshr i64 %i.ml, 32
  %i.mn = trunc nuw i64 %i.mm to i32
  %i.mo = trunc i64 %i.ml to i32
  %i.mp = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.21, i32 noundef %i.mn, i32 noundef %i.mo) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 741, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.df:                                            ; preds = %bb.dc, %bb.dd
  %i.mq = load ptr, ptr @xlogreader, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 104
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 72
  %i.mu = load ptr, ptr %i.mt, align 8            ; 12 uses
  %.sroa.014.0.copyload29 = load i64, ptr %i.mu, align 1 ; 6 uses
  %.sroa.20.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %.sroa.20.0.copyload32 = load i32, ptr %.sroa.20.0..sroa_idx31, align 1 ; 3 uses
  %.sroa.23.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.mu, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.23, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.23.0..sroa_idx37, i64 20, i1 false)
  %.sroa.2339.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %.sroa.2339.0.copyload41 = load i64, ptr %.sroa.2339.0..sroa_idx40, align 1 ; 2 uses
  %.sroa.25.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.mu, i64 40
  %.sroa.25.0.copyload46 = load i32, ptr %.sroa.25.0..sroa_idx45, align 1 ; 2 uses
  %.sroa.26.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.mu, i64 44
  %.sroa.26.0.copyload50 = load i32, ptr %.sroa.26.0..sroa_idx49, align 1 ; 2 uses
  %.sroa.27.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.mu, i64 48
  %.sroa.27.0.copyload54 = load i64, ptr %.sroa.27.0..sroa_idx53, align 1 ; 2 uses
  %.sroa.28.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.mu, i64 56
  %i.mv = load <4 x i32>, ptr %.sroa.28.0..sroa_idx57, align 1 ; 2 uses
  %.sroa.32.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.mu, i64 72
  %.sroa.32.0.copyload74 = load i64, ptr %.sroa.32.0..sroa_idx73, align 1 ; 2 uses
  %.sroa.3277.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.mu, i64 80
  %.sroa.3277.0.copyload79 = load i32, ptr %.sroa.3277.0..sroa_idx78, align 1 ; 2 uses
  %.sroa.33.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.mu, i64 84
  %.sroa.33.0.copyload83 = load i32, ptr %.sroa.33.0..sroa_idx82, align 1 ; 2 uses
  %.sroa.34.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.mu, i64 88
  %i.mw = load i64, ptr %.sroa.34.0..sroa_idx86, align 1 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.my = load i8, ptr %i.mx, align 8             ; 2 uses
  %i.mz = load i64, ptr @CheckPointLoc, align 8
  %i.na = icmp ult i64 %.sroa.014.0.copyload29, %i.mz
  br i1 %i.na, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.nb = load ptr, ptr @xlogprefetcher, align 8
  call void @XLogPrefetcherBeginRead(ptr noundef %i.nb, i64 noundef %.sroa.014.0.copyload29) #18
  %i.nc = load ptr, ptr @xlogprefetcher, align 8
  %i.nd = call fastcc ptr @ReadRecord(ptr noundef %i.nc, i32 noundef 15, i1 noundef zeroext false, i32 noundef %.sroa.20.0.copyload32)
  %.not166 = icmp eq ptr %i.nd, null
  br i1 %.not166, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ne = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.nf = lshr i64 %.sroa.014.0.copyload29, 32
  %i.ng = trunc nuw i64 %i.nf to i32
  %i.nh = trunc i64 %.sroa.014.0.copyload29 to i32
  %i.ni = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.nj = lshr i64 %i.ni, 32
  %i.nk = trunc nuw i64 %i.nj to i32
  %i.nl = trunc i64 %i.ni to i32
  %i.nm = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8, i32 noundef %i.ng, i32 noundef %i.nh, i32 noundef %i.nk, i32 noundef %i.nl) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 753, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.di:                                            ; preds = %bb.df, %bb.dg, %.critedge
  %.1184186 = phi i1 [ %or.cond32.i, %.critedge ], [ false, %bb.dg ], [ false, %bb.df ]
  %.sroa.34.sroa.0.0 = phi i64 [ %i.gq, %.critedge ], [ %i.mw, %bb.dg ], [ %i.mw, %bb.df ]
  %.0149.in.in = phi i8 [ %i.gs, %.critedge ], [ %i.my, %bb.dg ], [ %i.my, %bb.df ]
  %.1 = phi i8 [ %i.kw, %.critedge ], [ 0, %bb.dg ], [ 0, %bb.df ]
  %.sroa.33.0 = phi i32 [ %.sroa.33.0.copyload, %.critedge ], [ %.sroa.33.0.copyload83, %bb.dg ], [ %.sroa.33.0.copyload83, %bb.df ] ; 2 uses
  %.sroa.3277.0 = phi i32 [ %.sroa.3277.0.copyload, %.critedge ], [ %.sroa.3277.0.copyload79, %bb.dg ], [ %.sroa.3277.0.copyload79, %bb.df ] ; 2 uses
  %.sroa.32.0 = phi i64 [ %.sroa.32.0.copyload, %.critedge ], [ %.sroa.32.0.copyload74, %bb.dg ], [ %.sroa.32.0.copyload74, %bb.df ]
  %.sroa.27.0 = phi i64 [ %.sroa.27.0.copyload, %.critedge ], [ %.sroa.27.0.copyload54, %bb.dg ], [ %.sroa.27.0.copyload54, %bb.df ] ; 2 uses
  %.sroa.26.0 = phi i32 [ %.sroa.26.0.copyload, %.critedge ], [ %.sroa.26.0.copyload50, %bb.dg ], [ %.sroa.26.0.copyload50, %bb.df ] ; 2 uses
  %.sroa.25.0 = phi i32 [ %.sroa.25.0.copyload, %.critedge ], [ %.sroa.25.0.copyload46, %bb.dg ], [ %.sroa.25.0.copyload46, %bb.df ] ; 2 uses
  %.sroa.2339.0 = phi i64 [ %.sroa.2339.0.copyload, %.critedge ], [ %.sroa.2339.0.copyload41, %bb.dg ], [ %.sroa.2339.0.copyload41, %bb.df ] ; 3 uses
  %.sroa.20.0 = phi i32 [ %.sroa.20.0.copyload, %.critedge ], [ %.sroa.20.0.copyload32, %bb.dg ], [ %.sroa.20.0.copyload32, %bb.df ] ; 2 uses
  %.sroa.014.0 = phi i64 [ %.sroa.014.0.copyload, %.critedge ], [ %.sroa.014.0.copyload29, %bb.dg ], [ %.sroa.014.0.copyload29, %bb.df ] ; 8 uses
  %i.nn = phi <4 x i32> [ %i.gp, %.critedge ], [ %i.mv, %bb.dg ], [ %i.mv, %bb.df ] ; 5 uses
  %.0149.in = icmp ult i8 %.0149.in.in, 16        ; 3 uses
  %i.no = load i8, ptr @ArchiveRecoveryRequested, align 1, !range !5, !noundef !6
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.dj, label %bb.dz

bb.dj:                                            ; preds = %bb.di
  %.b = load i1, ptr @StandbyModeRequested, align 1
  br i1 %.b, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.nq = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.nq, label %bb.dl, label %bb.dz

bb.dl:                                            ; preds = %bb.dk
  %i.nr = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22) #18 ; 0 uses
  br label %.sink.split264

bb.dm:                                            ; preds = %bb.dj
  %i.ns = load i32, ptr @recoveryTarget, align 4
  %i.nt = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18 ; 6 uses
  switch i32 %i.ns, label %bb.dx [
    i32 1, label %bb.dn
    i32 2, label %bb.dp
    i32 3, label %bb.dr
    i32 4, label %bb.dt
    i32 5, label %bb.dv
  ]

bb.dn:                                            ; preds = %bb.dm
  br i1 %i.nt, label %bb.do, label %bb.dz

bb.do:                                            ; preds = %bb.dn
  %i.nu = load i32, ptr @recoveryTargetXid, align 4
  %i.nv = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.23, i32 noundef %i.nu) #18 ; 0 uses
  br label %.sink.split264

bb.dp:                                            ; preds = %bb.dm
  br i1 %i.nt, label %bb.dq, label %bb.dz

bb.dq:                                            ; preds = %bb.dp
  %i.nw = load i64, ptr @recoveryTargetTime, align 8
  %i.nx = call ptr @timestamptz_to_str(i64 noundef %i.nw) #18
  %i.ny = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.24, ptr noundef %i.nx) #18 ; 0 uses
  br label %.sink.split264

bb.dr:                                            ; preds = %bb.dm
  br i1 %i.nt, label %bb.ds, label %bb.dz

bb.ds:                                            ; preds = %bb.dr
  %i.nz = load ptr, ptr @recoveryTargetName, align 8
  %i.oa = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25, ptr noundef %i.nz) #18 ; 0 uses
  br label %.sink.split264

bb.dt:                                            ; preds = %bb.dm
  br i1 %i.nt, label %bb.du, label %bb.dz

bb.du:                                            ; preds = %bb.dt
  %i.ob = load i64, ptr @recoveryTargetLSN, align 8 ; 2 uses
  %i.oc = lshr i64 %i.ob, 32
  %i.od = trunc nuw i64 %i.oc to i32
  %i.oe = trunc i64 %i.ob to i32
  %i.of = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.26, i32 noundef %i.od, i32 noundef %i.oe) #18 ; 0 uses
  br label %.sink.split264

bb.dv:                                            ; preds = %bb.dm
  br i1 %i.nt, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.og = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.27) #18 ; 0 uses
  br label %.sink.split264

bb.dx:                                            ; preds = %bb.dm
  br i1 %i.nt, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.oh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.28) #18 ; 0 uses
  br label %.sink.split264

.sink.split264:                                   ; preds = %bb.do, %bb.ds, %bb.dw, %bb.dy, %bb.du, %bb.dq, %bb.dl
  %.sink265 = phi i32 [ 761, %bb.dl ], [ 769, %bb.dq ], [ 777, %bb.du ], [ 783, %bb.dy ], [ 780, %bb.dw ], [ 773, %bb.ds ], [ 765, %bb.do ]
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef %.sink265, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.dz

bb.dz:                                            ; preds = %.sink.split264, %bb.dk, %bb.dp, %bb.dt, %bb.dx, %bb.dv, %bb.dr, %bb.dn, %bb.di
  %i.oi = load i64, ptr @CheckPointLoc, align 8
  %i.oj = load ptr, ptr @expectedTLEs, align 8
  %i.ok = call i32 @tliOfPointInHistory(i64 noundef %i.oi, ptr noundef %i.oj) #18
  %i.ol = load i32, ptr @CheckPointTLI, align 4   ; 2 uses
  %.not171 = icmp eq i32 %i.ok, %i.ol
  br i1 %.not171, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.om = load ptr, ptr @expectedTLEs, align 8
  %i.on = call i64 @tliSwitchPoint(i32 noundef %i.ol, ptr noundef %i.om, ptr noundef null) #18 ; 2 uses
  %i.oo = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.op = load i32, ptr @recoveryTargetTLI, align 4
  %i.oq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.29, i32 noundef %i.op) #18 ; 0 uses
  %i.or = select i1 %.not.i177, ptr @.str.17, ptr @.str.31
  %i.os = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.ot = lshr i64 %i.os, 32
  %i.ou = trunc nuw i64 %i.ot to i32
  %i.ov = trunc i64 %i.os to i32
  %i.ow = load i32, ptr @CheckPointTLI, align 4
  %i.ox = lshr i64 %i.on, 32
  %i.oy = trunc nuw i64 %i.ox to i32
  %i.oz = trunc i64 %i.on to i32
  %i.pa = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.30, ptr noundef nonnull %i.or, i32 noundef %i.ou, i32 noundef %i.ov, i32 noundef %i.ow, i32 noundef %i.oy, i32 noundef %i.oz) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 811, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.eb:                                            ; preds = %bb.dz
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.pc = load i64, ptr %i.pb, align 8            ; 2 uses
  %.not172 = icmp eq i64 %i.pc, 0
  br i1 %.not172, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.pd = add i64 %i.pc, -1
  %i.pe = load ptr, ptr @expectedTLEs, align 8
  %i.pf = call i32 @tliOfPointInHistory(i64 noundef %i.pd, ptr noundef %i.pe) #18
  %i.pg = load i32, ptr %i.o, align 8
  %.not173 = icmp eq i32 %i.pf, %i.pg
  br i1 %.not173, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ph = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.pi = load i32, ptr @recoveryTargetTLI, align 4
  %i.pj = load i64, ptr %i.pb, align 8            ; 2 uses
  %i.pk = lshr i64 %i.pj, 32
  %i.pl = trunc nuw i64 %i.pk to i32
  %i.pm = trunc i64 %i.pj to i32
  %i.pn = load i32, ptr %i.o, align 8
  %i.po = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32, i32 noundef %i.pi, i32 noundef %i.pl, i32 noundef %i.pm, i32 noundef %i.pn) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 825, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.ee:                                            ; preds = %bb.ec, %bb.eb
  %i.pp = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.pp, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.pq = lshr i64 %.sroa.014.0, 32
  %i.pr = trunc nuw i64 %i.pq to i32
  %i.ps = trunc i64 %.sroa.014.0 to i32
  %i.pt = select i1 %.0149.in, ptr @.str.34, ptr @.str.35
  %i.pu = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.33, i32 noundef %i.pr, i32 noundef %i.ps, ptr noundef nonnull %i.pt) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 830, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.pv = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.pv, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.pw = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.36, i64 noundef %.sroa.2339.0, i32 noundef %.sroa.25.0) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 834, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.px = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.px, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.py = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.37, i32 noundef %.sroa.26.0, i64 noundef %.sroa.27.0) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 837, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.pz = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.pz, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.qa = extractelement <4 x i32> %i.nn, i64 0
  %i.qb = extractelement <4 x i32> %i.nn, i64 1
  %i.qc = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.38, i32 noundef %i.qa, i32 noundef %i.qb) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 840, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.qd = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.qd, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.qe = extractelement <4 x i32> %i.nn, i64 2
  %i.qf = extractelement <4 x i32> %i.nn, i64 3
  %i.qg = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.39, i32 noundef %i.qe, i32 noundef %i.qf) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 843, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.qh = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.qh, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.qi = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.40, i32 noundef %.sroa.3277.0, i32 noundef %.sroa.33.0) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 847, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.qj = trunc i64 %.sroa.2339.0 to i32
  %i.qk = icmp ugt i32 %i.qj, 2
  br i1 %i.qk, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ql = call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #19 ; 0 uses
  %i.qm = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 850, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.es:                                            ; preds = %bb.eq
  %i.qn = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.qo = icmp ugt i64 %.sroa.014.0, %i.qn
  br i1 %i.qo, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.qp = call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #19 ; 0 uses
  %i.qq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.42) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 855, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.eu:                                            ; preds = %bb.es
  %i.qr = icmp ult i64 %.sroa.014.0, %i.qn
  br i1 %i.qr, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  br i1 %.0149.in, label %bb.ew, label %.thread

bb.ew:                                            ; preds = %bb.ev
  %i.qs = call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #19 ; 0 uses
  %i.qt = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.43) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 866, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.ex:                                            ; preds = %bb.eu
  %i.qu = load i32, ptr %i.m, align 8
  %.not174 = icmp ne i32 %i.qu, 1
  %i.qv = load i8, ptr @ArchiveRecoveryRequested, align 1, !range !5
  %i.qw = trunc nuw i8 %i.qv to i1
  %or.cond = select i1 %.not174, i1 true, i1 %i.qw
  br i1 %or.cond, label %.thread, label %bb.ey

.thread:                                          ; preds = %bb.ex, %bb.ev
  store i8 1, ptr @InRecovery, align 1
  %.pre226245 = load i8, ptr @InArchiveRecovery, align 1, !range !5
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %.pre225 = load i8, ptr @InRecovery, align 1, !range !5
  %i.qx = trunc nuw i8 %.pre225 to i1
  %.pre226 = load i8, ptr @InArchiveRecovery, align 1, !range !5 ; 2 uses
  br i1 %i.qx, label %bb.ez, label %bb.fn

bb.ez:                                            ; preds = %.thread, %bb.ey
  %.pre226246 = phi i8 [ %.pre226245, %.thread ], [ %.pre226, %bb.ey ]
  %i.qy = trunc nuw i8 %.pre226246 to i1
  br i1 %i.qy, label %bb.ff, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.qz = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.qz, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.ra = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.44) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 896, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.rb = load i32, ptr @recoveryTargetTLI, align 4
  %i.rc = load i32, ptr %i.r, align 8
  %i.rd = icmp ugt i32 %i.rb, %i.rc
  br i1 %i.rd, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.re = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.re, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.rf = load i32, ptr %i.r, align 8
  %i.rg = load i32, ptr @recoveryTargetTLI, align 4
  %i.rh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.45, i32 noundef %i.rf, i32 noundef %i.rg) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 902, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fc, %bb.fe, %bb.fd, %bb.ez
  %storemerge175 = phi i32 [ 5, %bb.ez ], [ 4, %bb.fd ], [ 4, %bb.fe ], [ 4, %bb.fc ]
  store i32 %storemerge175, ptr %i.m, align 8
  %i.ri = load i64, ptr @CheckPointLoc, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ri, ptr %i.rj, align 8
  store i64 %.sroa.014.0, ptr %i.q, align 8
  store i32 %.sroa.20.0, ptr %i.r, align 8
  %.sroa.23.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.23.0..sroa_idx38, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.23, i64 20, i1 false)
  %.sroa.2339.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.2339.0, ptr %.sroa.2339.0..sroa_idx42, align 8
  %.sroa.25.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sroa.25.0, ptr %.sroa.25.0..sroa_idx47, align 8
  %.sroa.26.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %.sroa.26.0, ptr %.sroa.26.0..sroa_idx51, align 4
  %.sroa.27.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.27.0, ptr %.sroa.27.0..sroa_idx55, align 8
  %.sroa.28.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> %i.nn, ptr %.sroa.28.0..sroa_idx59, align 8
  %.sroa.32.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.32.0, ptr %.sroa.32.0..sroa_idx75, align 8
  %.sroa.3277.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %.sroa.3277.0, ptr %.sroa.3277.0..sroa_idx80, align 8
  %.sroa.33.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %.sroa.33.0, ptr %.sroa.33.0..sroa_idx84, align 4
  %.sroa.34.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.34.sroa.0.0, ptr %.sroa.34.0..sroa_idx87, align 8
  %i.rk = load i8, ptr @InArchiveRecovery, align 1, !range !5, !noundef !6 ; 4 uses
  %i.rl = trunc nuw i8 %i.rk to i1
  br i1 %i.rl, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.rm = load i64, ptr %i.pb, align 8
  %i.rn = icmp ult i64 %i.rm, %.sroa.014.0
  br i1 %i.rn, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store i64 %.sroa.014.0, ptr %i.pb, align 8
  store i32 %.sroa.20.0, ptr %i.o, align 8
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fg, %bb.fh, %bb.ff
  br i1 %.not.i177, label %bb.fj, label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.014.0, ptr %i.ro, align 8
  %i.rp = load i8, ptr @backupEndRequired, align 1, !range !5, !noundef !6
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.rp, ptr %i.rq, align 8
  br i1 %.1184186, label %bb.fk, label %bb.fn

bb.fk:                                            ; preds = %bb.fj
  switch i32 %i.n, label %bb.fl [
    i32 5, label %bb.fm
    i32 2, label %bb.fm
  ]

bb.fl:                                            ; preds = %bb.fk
  %i.rr = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.rs = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46) #18 ; 0 uses
  %i.rt = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.47) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 944, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.fm:                                            ; preds = %bb.fk, %bb.fk
  %i.ru = load i64, ptr %i.pb, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.ru, ptr %i.rv, align 8
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fi, %bb.fm, %bb.fj, %bb.ey
  %i.rw = phi i8 [ %i.rk, %bb.fi ], [ %i.rk, %bb.fm ], [ %i.rk, %bb.fj ], [ %.pre226, %bb.ey ]
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ry = load i64, ptr %i.rx, align 8
  store i64 %i.ry, ptr @backupStartPoint, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.sa = load i8, ptr %i.rz, align 8, !range !5, !noundef !6
  store i8 %i.sa, ptr @backupEndRequired, align 1
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.sc = load i64, ptr %i.sb, align 8
  store i64 %i.sc, ptr @backupEndPoint, align 8
  %i.sd = trunc nuw i8 %i.rw to i1
  br i1 %i.sd, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.se = load i64, ptr %i.pb, align 8
  %i.sf = load i32, ptr %i.o, align 8
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink = phi i64 [ %i.se, %bb.fo ], [ 0, %bb.fn ]
  %storemerge176 = phi i32 [ %i.sf, %bb.fo ], [ 0, %bb.fn ]
  store i64 %.sink, ptr @minRecoveryPoint, align 8
  store i32 %storemerge176, ptr @minRecoveryPointTLI, align 4
  store i64 0, ptr @abortedRecPtr, align 8
  store i64 0, ptr @missingContrecPtr, align 8
  %i.sg = zext i1 %.0149.in to i8
  store i8 %i.sg, ptr %1, align 1
  %i.sh = zext i1 %.not.i177 to i8
  store i8 %i.sh, ptr %2, align 1
  store i8 %.1, ptr %3, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @OwnLatch(ptr noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

declare ptr @XLogReaderAllocate(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @XLogPageRead(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = load i32, ptr %i.e, align 4              ; 4 uses
  %i.g = load i32, ptr @wal_segment_size, align 4 ; 4 uses
  %i.h = add i32 %i.g, -1
  %i.i = trunc i64 %1 to i32                      ; 3 uses
  %i.j = and i32 %i.h, %i.i                       ; 2 uses
  %i.k = load i32, ptr @readFile, align 4
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %i.g to i64
  %i.n = udiv i64 %1, %i.m
  %i.o = load i64, ptr @readSegNo, align 8        ; 2 uses
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr @ArchiveRecoveryRequested, align 1, !range !5, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i8, ptr @IsUnderPostmaster, align 1, !range !5
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = tail call zeroext i1 @XLogCheckpointNeeded(i64 noundef %i.o) #18
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 @GetRedoRecPtr() #18       ; 0 uses
  %i.w = load i64, ptr @readSegNo, align 8
  %i.x = tail call zeroext i1 @XLogCheckpointNeeded(i64 noundef %i.w) #18
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @RequestCheckpoint(i32 noundef 128) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c
  %i.y = load i32, ptr @readFile, align 4
  %i.z = tail call i32 @close(i32 noundef %i.y) #18 ; 0 uses
  store i32 -1, ptr @readFile, align 4
  store i32 0, ptr @readSource, align 4
  %.pre = load i32, ptr @wal_segment_size, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.a
  %.pr = phi i1 [ true, %bb.g ], [ false, %bb.b ], [ true, %bb.a ]
  %i.aa = phi i32 [ %.pre, %bb.g ], [ %i.g, %bb.b ], [ %i.g, %bb.a ]
  %i.ab = sext i32 %i.aa to i64
  %i.ac = udiv i64 %1, %i.ab
  store i64 %i.ac, ptr @readSegNo, align 8
  %i.ad = sext i32 %2 to i64
  %i.ae = add i64 %1, %i.ad                       ; 11 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1313 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = lshr i64 %i.ae, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %i.am = trunc i64 %i.ae to i32
  %i.an = icmp eq i32 %i.f, 15                    ; 3 uses
  %i.ao = lshr i64 %1, 32
  %i.ap = trunc nuw i64 %i.ao to i32              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  br i1 %.pr, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.dl, %bb.h
  %.pre113 = load i8, ptr %i.af, align 1, !range !5
  %i.as = trunc nuw i8 %.pre113 to i1
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr @readSource, align 4
  %i.au = icmp eq i32 %i.at, 3
  br i1 %i.au, label %bb.j, label %.thread76

bb.j:                                             ; preds = %bb.i
  %i.av = load i64, ptr @flushedUpto, align 8
  %i.aw = icmp ult i64 %i.av, %i.ae
  br i1 %i.aw, label %bb.k, label %WaitForWALToBecomeAvailable.exit.thread73.thread146

bb.k:                                             ; preds = %bb.j
  %i.ax = load i8, ptr %i.af, align 1, !range !5, !noundef !6
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %WaitForWALToBecomeAvailable.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.az = phi i1 [ %i.as, %._crit_edge ], [ false, %bb.k ] ; 2 uses
  %i.ba = load i8, ptr %i.ag, align 1, !range !5, !noundef !6
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = load i8, ptr %i.ah, align 4, !range !5, !noundef !6
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.bf = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.bg = load i8, ptr @InArchiveRecovery, align 1, !range !5, !noundef !6
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.m, label %.sink.split.i

bb.m:                                             ; preds = %bb.l
  %i.bi = load i32, ptr @currentSource, align 4   ; 3 uses
end_hunk_0
