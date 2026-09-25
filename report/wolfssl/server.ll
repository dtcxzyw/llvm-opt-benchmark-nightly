Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/server?download=true
inline.NumInlined: 68
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ServerEchoData:bb.a
.critedge117:                                     ; preds = %bb.y, %bb.z
  %.not114 = icmp eq i32 %i.ch, %i.cg
  br i1 %.not114, label %err_sys_ex.exit129, label %bb.aa

bb.aa:                                            ; preds = %.critedge117
  %i.cl = call i32 @wolfSSL_get_error(ptr noundef %0, i32 noundef 0) #20
  %.b = load i1, ptr @quieter, align 4
  br i1 %.b, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.cn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.3, i32 noundef %i.cl) #21 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.co = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.b2.i126 = load i1, ptr @quieter, align 4
  br i1 %.b2.i126, label %err_sys_ex.exit129, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.cr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cq, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.4) #21 ; 0 uses
  %.b.pr.i127 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i127, label %err_sys_ex.exit129, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i128 = call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.cs) #22 ; 0 uses
  br label %err_sys_ex.exit129

bb.ag:                                            ; preds = %bb.ac
  call fastcc void @err_sys(ptr noundef nonnull @.str.4) #23
  unreachable

err_sys_ex.exit129:                               ; preds = %bb.af, %bb.ae, %bb.ad, %.critedge117
  br i1 %i.h, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %err_sys_ex.exit129
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ct = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #20
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.ai, label %current_time.exit130

bb.ai:                                            ; preds = %bb.ah
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.74) #23
  unreachable

current_time.exit130:                             ; preds = %bb.ah
  %i.cv = load i64, ptr %5, align 8, !tbaa !15
  %i.cw = sitofp i64 %i.cv to double
  %i.cx = load i64, ptr %i.u, align 8, !tbaa !16
  %i.cy = sitofp i64 %i.cx to double
  %i.cz = fdiv double %i.cy, 1.000000e+06
  %i.da = fadd double %i.cz, %i.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.db = fsub double %i.da, %.296
  %i.dc = fadd double %.087197, %i.db
  br label %bb.aj

bb.aj:                                            ; preds = %current_time.exit130, %err_sys_ex.exit129
  %.188 = phi double [ %i.dc, %current_time.exit130 ], [ %.087197, %err_sys_ex.exit129 ]
  %i.dd = sext i32 %.086133224 to i64
  %i.de = add i64 %.082198, %i.dd
  br label %bb.ak

bb.ak:                                            ; preds = %tcp_select.exit.thread, %bb.aj
  %.4 = phi double [ %.296, %bb.aj ], [ %.094192, %tcp_select.exit.thread ]
  %.393 = phi double [ %.191, %bb.aj ], [ %.090193, %tcp_select.exit.thread ] ; 2 uses
  %.3 = phi double [ %.188, %bb.aj ], [ %.087197, %tcp_select.exit.thread ] ; 2 uses
  %.2 = phi i64 [ %i.de, %bb.aj ], [ %.082198, %tcp_select.exit.thread ] ; 2 uses
  %i.df = icmp uge i64 %.2, %4
  %or.cond115 = select i1 %.not137, i1 %i.df, i1 %i.h
  br i1 %or.cond115, label %._crit_edge, label %.critedge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.ak, %err_sys_ex.exit
  %.090.lcssa = phi double [ 0.000000e+00, %err_sys_ex.exit ], [ %.393, %bb.ak ] ; 4 uses
  %.087.lcssa = phi double [ 0.000000e+00, %err_sys_ex.exit ], [ %.3, %bb.ak ] ; 4 uses
  br i1 %.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  call void @wolfSSL_Free(ptr noundef nonnull %i.b) #20
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge
  br i1 %i.h, label %bb.an, label %.critedge119

bb.an:                                            ; preds = %bb.am
  %i.dg = fcmp ogt double %.090.lcssa, 0.000000e+00
  %i.dh = fcmp ogt double %.087.lcssa, 0.000000e+00
  %or.cond9 = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond9, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.di = fmul nnan double %.090.lcssa, 1.000000e+03
  %i.dj = uitofp i64 %4 to double
  %i.dk = fmul nnan double %.087.lcssa, 1.000000e+03
  %i.dl = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = insertelement <2 x double> poison, double %.087.lcssa, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %.090.lcssa, i64 1
  %i.dp = fdiv nnan <2 x double> %i.dm, %i.do
  %i.dq = fmul nnan <2 x double> %i.dp, splat (double f0x3F50000000000000) ; 2 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 1
  %i.ds = fmul nnan double %i.dr, f0x3F50000000000000
  %i.dt = extractelement <2 x double> %i.dq, i64 0
  %i.du = fmul nnan double %i.dt, f0x3F50000000000000
  %i.dv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %4, double noundef %i.di, double noundef %i.ds, double noundef %i.dk, double noundef %i.du) ; 0 uses
  br label %.critedge119

bb.ap:                                            ; preds = %bb.an
  %i.dw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %.090.lcssa, double noundef %.087.lcssa) ; 0 uses
  br label %.critedge119

.critedge119:                                     ; preds = %.split171.us, %bb.u, %bb.am, %bb.ap, %bb.ao
  %.2101 = phi i32 [ 0, %bb.am ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 6, %bb.u ], [ 6, %.split171.us ]
  ret i32 %.2101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #2

declare i32 @wolfSSL_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wolfSSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @wolfSSL_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @wolfSSL_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @server_test(ptr nofree noundef captures(none) initializes((16, 20)) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.fd_set, align 8             ; 6 uses
  %2 = alloca %struct.fd_set, align 8             ; 6 uses
  %3 = alloca %struct.timeval, align 8            ; 6 uses
  %4 = alloca %struct.fd_set, align 8             ; 5 uses
  %5 = alloca %struct.fd_set, align 8             ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.fd_set, align 8             ; 5 uses
  %8 = alloca %struct.fd_set, align 8             ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %struct.sockaddr_in, align 4       ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %struct.sockaddr_in, align 4       ; 10 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca [4 x i32], align 16               ; 7 uses
  %12 = alloca %struct.sockaddr_in, align 4       ; 3 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca [32 x i8], align 16               ; 4 uses
  %i.k = alloca [80 x i8], align 16               ; 3 uses
  %i.l = alloca i32, align 4                      ; 22 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.p = load i32, ptr %0, align 8, !tbaa !35     ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  store i32 0, ptr %i.l, align 4, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 -1, ptr %i.s, align 8, !tbaa !37
  %i.t = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @myVerifyAction) ; 5 uses
  store i32 0, ptr %i.t, align 4, !tbaa !9
  %i.u = icmp eq ptr %i.r, null
  br i1 %i.u, label %.thread3013, label %.lr.ph

.thread3013:                                      ; preds = %bb.a
  store ptr null, ptr @myoptarg, align 8, !tbaa !20
  store i32 0, ptr @myoptind, align 4, !tbaa !9
  br label %err_sys_ex.exit557

.lr.ph:                                           ; preds = %bb.a, %.lr.ph.backedge
  %.03521605 = phi i32 [ %.03521605.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03541603 = phi i32 [ %.03541603.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 77 uses
  %.03561601 = phi i32 [ %.03561601.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03581599 = phi ptr [ %.03581599.be, %.lr.ph.backedge ], [ null, %bb.a ] ; 78 uses
  %.03601597 = phi i32 [ %.03601597.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 70 uses
  %.03621595 = phi i32 [ %.03621595.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 76 uses
  %.03641593 = phi i32 [ %.03641593.be, %.lr.ph.backedge ], [ 1, %bb.a ] ; 78 uses
  %.03661591 = phi i32 [ %.03661591.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03681589 = phi i32 [ %.03681589.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03701587 = phi i32 [ %.03701587.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03721585 = phi i32 [ %.03721585.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03741583 = phi ptr [ %.03741583.be, %.lr.ph.backedge ], [ null, %bb.a ] ; 78 uses
  %.03761581 = phi ptr [ %.03761581.be, %.lr.ph.backedge ], [ @.str.13, %bb.a ] ; 78 uses
  %.03781579 = phi ptr [ %.03781579.be, %.lr.ph.backedge ], [ @.str.16, %bb.a ] ; 78 uses
  %.03801577 = phi ptr [ %.03801577.be, %.lr.ph.backedge ], [ @.str.15, %bb.a ] ; 78 uses
  %.03821575 = phi ptr [ %.03821575.be, %.lr.ph.backedge ], [ @.str.14, %bb.a ] ; 78 uses
  %.03841573 = phi i32 [ %.03841573.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03861571 = phi ptr [ %.03861571.be, %.lr.ph.backedge ], [ null, %bb.a ] ; 78 uses
  %.03881569 = phi ptr [ %.03881569.be, %.lr.ph.backedge ], [ null, %bb.a ] ; 78 uses
  %.03961567 = phi i32 [ %.03961567.be, %.lr.ph.backedge ], [ 1024, %bb.a ] ; 78 uses
  %.03981565 = phi i64 [ %.03981565.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04001563 = phi i32 [ %.04001563.be, %.lr.ph.backedge ], [ 16384, %bb.a ] ; 79 uses
  %.04031561 = phi i32 [ %.04031561.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04061559 = phi i32 [ %.04061559.be, %.lr.ph.backedge ], [ 1, %bb.a ] ; 77 uses
  %.04111557 = phi i32 [ %.04111557.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 79 uses
  %.04131555 = phi i32 [ %.04131555.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04151553 = phi i32 [ %.04151553.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04171551 = phi i32 [ %.04171551.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04191549 = phi i32 [ %.04191549.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 77 uses
  %.04211547 = phi i32 [ %.04211547.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04231545 = phi i32 [ %.04231545.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 75 uses
  %.04251543 = phi i32 [ %.04251543.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04271541 = phi i32 [ %.04271541.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04291539 = phi i32 [ %.04291539.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04311537 = phi i32 [ %.04311537.be, %.lr.ph.backedge ], [ 1, %bb.a ] ; 78 uses
  %.04331535 = phi i32 [ %.04331535.be, %.lr.ph.backedge ], [ 3, %bb.a ] ; 72 uses
  %.04361533 = phi i32 [ %.04361533.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04381531 = phi i32 [ %.04381531.be, %.lr.ph.backedge ], [ -99, %bb.a ] ; 78 uses
  %.01529 = phi i16 [ %.01529.be, %.lr.ph.backedge ], [ 11111, %bb.a ] ; 78 uses
  %i.v = phi i32 [ %.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 69 uses
  %i.w = load i32, ptr @myoptind, align 4, !tbaa !9 ; 4 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.pr.i = load ptr, ptr @mygetopt_long.next, align 8, !tbaa !20 ; 3 uses
  %i.y = icmp eq ptr %.pr.i, null
  br i1 %i.y, label %.thread1.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load i8, ptr %.pr.i, align 1, !tbaa !21  ; 2 uses
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %.thread1.i, label %bb.w

bb.d:                                             ; preds = %.lr.ph
  store ptr null, ptr @mygetopt_long.next, align 8, !tbaa !20
  store i32 1, ptr @myoptind, align 4, !tbaa !9
  br label %.thread1.i

.thread1.i:                                       ; preds = %bb.d, %bb.c, %bb.b
  %i.ab = phi i32 [ %i.w, %bb.b ], [ %i.w, %bb.c ], [ 1, %bb.d ] ; 6 uses
  %.not.i = icmp slt i32 %i.ab, %i.p
  br i1 %.not.i, label %bb.e, label %mygetopt_long.exit.thread677.sink.split

bb.e:                                             ; preds = %.thread1.i
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ac ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !21
  %.not67.i = icmp eq i8 %i.ag, 45
  br i1 %.not67.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !21
  switch i8 %i.ai, label %bb.v [
    i8 0, label %bb.h
    i8 45, label %.tail.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store ptr null, ptr @myoptarg, align 8, !tbaa !20
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !20
  br label %mygetopt_long.exit.thread677.sink.split

.tail.i:                                          ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.tail.i
  %i.an = add nsw i32 %i.ab, 1                    ; 2 uses
  store ptr null, ptr @myoptarg, align 8, !tbaa !20
  %i.ao = icmp slt i32 %i.an, %i.p
  br i1 %i.ao, label %bb.j, label %mygetopt_long.exit.thread677

bb.j:                                             ; preds = %bb.i
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  br label %mygetopt_long.exit.thread677.sink.split

bb.k:                                             ; preds = %.tail.i
  store ptr null, ptr @myoptarg, align 8, !tbaa !20
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 6 uses
  %i.au = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(5) @.str.7) #24
  %.not73.i = icmp eq i32 %i.au, 0
  br i1 %.not73.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.k
  %.09.lcssa.i = phi ptr [ @server_test.long_options, %bb.k ], [ getelementptr inbounds nuw (i8, ptr @server_test.long_options, i64 16), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @server_test.long_options, i64 32), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @server_test.long_options, i64 48), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @server_test.long_options, i64 64), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @server_test.long_options, i64 80), %bb.u ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !39 ; 4 uses
  %i.ax = add nsw i32 %i.ab, 1                    ; 3 uses
  store i32 %i.ax, ptr @myoptind, align 4, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !40 ; 3 uses
  %.not74.i = icmp eq i32 %i.az, 0
  br i1 %.not74.i, label %mygetopt_long.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp slt i32 %i.ax, %i.p
  br i1 %i.ba, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bb = icmp eq i32 %i.az, 1
  %.phi.trans.insert.i = sext i32 %i.ax to i64
  %.phi.trans.insert14.i = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.phi.trans.insert.i
  %.pre15.i = load ptr, ptr %.phi.trans.insert14.i, align 8, !tbaa !20 ; 2 uses
  br i1 %i.bb, label %._crit_edge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = load i8, ptr %.pre15.i, align 1, !tbaa !21
  %.not76.i = icmp eq i8 %i.bc, 45
  br i1 %.not76.i, label %mygetopt_long.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.n
  store ptr %.pre15.i, ptr @myoptarg, align 8, !tbaa !20
  %i.bd = add nsw i32 %i.ab, 2
  store i32 %i.bd, ptr @myoptind, align 4, !tbaa !9
  br label %mygetopt_long.exit

bb.p:                                             ; preds = %bb.m
  %.not75.i = icmp ne i32 %i.az, 2
  %.not = icmp eq i32 %i.aw, -1
  %or.cond713 = select i1 %.not75.i, i1 true, i1 %.not
  br i1 %or.cond713, label %mygetopt_long.exit.thread677, label %mygetopt_long.exit.thread

bb.q:                                             ; preds = %bb.k
  %i.be = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(10) @.str.8) #24
  %.not73.1.i = icmp eq i32 %i.be, 0
  br i1 %.not73.1.i, label %bb.l, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(4) @.str.9) #24
  %.not73.2.i = icmp eq i32 %i.bf, 0
  br i1 %.not73.2.i, label %bb.l, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(12) @.str.10) #24
  %.not73.3.i = icmp eq i32 %i.bg, 0
  br i1 %.not73.3.i, label %bb.l, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(13) @.str.11) #24
  %.not73.4.i = icmp eq i32 %i.bh, 0
  br i1 %.not73.4.i, label %bb.l, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(8) @.str.12) #24
  %.not73.5.i = icmp eq i32 %i.bi, 0
  br i1 %.not73.5.i, label %bb.l, label %mygetopt_long.exit.thread677

bb.v:                                             ; preds = %bb.g
  %i.bj = add nsw i32 %i.ab, 1                    ; 2 uses
  store i32 %i.bj, ptr @myoptind, align 4, !tbaa !9
  %.pre.i = load i8, ptr %i.ah, align 1, !tbaa !21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.c
  %i.bk = phi i32 [ %i.bj, %bb.v ], [ %i.w, %bb.c ] ; 6 uses
  %i.bl = phi i8 [ %.pre.i, %bb.v ], [ %i.z, %bb.c ] ; 2 uses
  %i.bm = phi ptr [ %i.ah, %bb.v ], [ %.pr.i, %bb.c ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 5 uses
  store ptr %i.bn, ptr @mygetopt_long.next, align 8, !tbaa !20
  %i.bo = zext i8 %i.bl to i32                    ; 9 uses
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.17, i32 %i.bo, i64 86) ; 2 uses
  %i.bp = icmp eq ptr %memchr.i, null
  %i.bq = and i8 %i.bl, -2
  %i.br = icmp eq i8 %i.bq, 58
  %or.cond3.i = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond3.i, label %mygetopt_long.exit.thread.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %memchr.i, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !21
  switch i8 %i.bt, label %mygetopt_long.exit.thread [
    i8 58, label %bb.y
    i8 59, label %bb.ac
end_hunk_0
begin_hunk_1_@server_test:bb.a
  br i1 %i.ix, label %bb.es, label %.preheader718.12

bb.es:                                            ; preds = %.preheader718.11
  store i32 26, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.12

.preheader718.12:                                 ; preds = %bb.es, %.preheader718.11
  %i.iy = phi i32 [ %i.iv, %.preheader718.11 ], [ 26, %bb.es ]
  %i.iz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.177, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.et, label %.preheader718.13

bb.et:                                            ; preds = %.preheader718.12
  store i32 27, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.13

.preheader718.13:                                 ; preds = %bb.et, %.preheader718.12
  %i.jb = phi i32 [ %i.iy, %.preheader718.12 ], [ 27, %bb.et ]
  %i.jc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.178, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.eu, label %.preheader718.14

bb.eu:                                            ; preds = %.preheader718.13
  store i32 28, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.14

.preheader718.14:                                 ; preds = %bb.eu, %.preheader718.13
  %i.je = phi i32 [ %i.jb, %.preheader718.13 ], [ 28, %bb.eu ]
  %i.jf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.179, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.ev, label %.preheader718.15

bb.ev:                                            ; preds = %.preheader718.14
  store i32 31, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.15

.preheader718.15:                                 ; preds = %bb.ev, %.preheader718.14
  %i.jh = phi i32 [ %i.je, %.preheader718.14 ], [ 31, %bb.ev ]
  %i.ji = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.180, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.ew, label %.preheader718.16

bb.ew:                                            ; preds = %.preheader718.15
  store i32 32, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.16

.preheader718.16:                                 ; preds = %bb.ew, %.preheader718.15
  %i.jk = phi i32 [ %i.jh, %.preheader718.15 ], [ 32, %bb.ew ] ; 2 uses
  %i.jl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.181, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %.thread, label %bb.ex

.thread:                                          ; preds = %.preheader718.16
  store i32 33, ptr %i.l, align 4, !tbaa !9
  br label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.thread, %bb.ex, %bb.ax, %bb.cp, %bb.cs, %.loopexit, %bb.cb, %bb.bw, %bb.bc, %bb.bg, %bb.bk, %bb.bo, %bb.bq, %bb.bm, %bb.bi, %bb.be, %bb.ay, %bb.fb, %bb.fa, %bb.cw, %bb.cr, %bb.cq, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.cd, %bb.ca, %bb.bz, %bb.by, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.ba, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread, %mygetopt_long.exit.thread
  %.03521605.be = phi i32 [ %.03521605, %.thread ], [ %.03521605, %bb.am ], [ %.03521605, %bb.an ], [ %.03521605, %bb.ao ], [ %.03521605, %bb.ap ], [ %.03521605, %bb.aq ], [ %.03521605, %bb.ar ], [ %.03521605, %bb.as ], [ %.03521605, %bb.at ], [ %.03521605, %bb.au ], [ %.03521605, %bb.av ], [ %.03521605, %bb.aw ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %bb.ay ], [ %.03521605, %bb.ba ], [ %.03521605, %bb.bc ], [ %.03521605, %bb.be ], [ %.03521605, %bb.bg ], [ %.03521605, %bb.bi ], [ %.03521605, %bb.bk ], [ %.03521605, %bb.bm ], [ 1, %bb.bo ], [ %.03521605, %bb.bq ], [ %.03521605, %bb.bs ], [ %.03521605, %bb.bt ], [ %.03521605, %bb.bu ], [ %.03521605, %bb.bv ], [ %.03521605, %bb.bw ], [ %.03521605, %bb.by ], [ %.03521605, %bb.bz ], [ %.03521605, %bb.ca ], [ %.03521605, %bb.cb ], [ %.03521605, %bb.cd ], [ %.03521605, %.loopexit ], [ %.03521605, %bb.cj ], [ %.03521605, %bb.ck ], [ %.03521605, %bb.cl ], [ %.03521605, %bb.cm ], [ %.03521605, %bb.cn ], [ %.03521605, %bb.co ], [ %.03521605, %bb.cp ], [ %.03521605, %bb.cq ], [ %.03521605, %bb.cr ], [ %.03521605, %bb.cs ], [ %.03521605, %bb.cw ], [ %.03521605, %bb.ax ], [ %.03521605, %bb.fa ], [ %.03521605, %bb.fb ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %mygetopt_long.exit.thread ], [ %.03521605, %bb.ex ]
  %.03541603.be = phi i32 [ %.03541603, %.thread ], [ %.03541603, %bb.am ], [ %.03541603, %bb.an ], [ %.03541603, %bb.ao ], [ %.03541603, %bb.ap ], [ %.03541603, %bb.aq ], [ %.03541603, %bb.ar ], [ %.03541603, %bb.as ], [ %.03541603, %bb.at ], [ %.03541603, %bb.au ], [ %.03541603, %bb.av ], [ %.03541603, %bb.aw ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %bb.ay ], [ %.03541603, %bb.ba ], [ %.03541603, %bb.bc ], [ %.03541603, %bb.be ], [ %.03541603, %bb.bg ], [ %.03541603, %bb.bi ], [ 2, %bb.bk ], [ 1, %bb.bm ], [ %.03541603, %bb.bo ], [ %.03541603, %bb.bq ], [ %.03541603, %bb.bs ], [ %.03541603, %bb.bt ], [ %.03541603, %bb.bu ], [ %.03541603, %bb.bv ], [ %.03541603, %bb.bw ], [ %.03541603, %bb.by ], [ %.03541603, %bb.bz ], [ %.03541603, %bb.ca ], [ %.03541603, %bb.cb ], [ %.03541603, %bb.cd ], [ %.03541603, %.loopexit ], [ %.03541603, %bb.cj ], [ %.03541603, %bb.ck ], [ %.03541603, %bb.cl ], [ %.03541603, %bb.cm ], [ %.03541603, %bb.cn ], [ %.03541603, %bb.co ], [ %.03541603, %bb.cp ], [ %.03541603, %bb.cq ], [ %.03541603, %bb.cr ], [ %.03541603, %bb.cs ], [ %.03541603, %bb.cw ], [ %.03541603, %bb.ax ], [ %.03541603, %bb.fa ], [ %.03541603, %bb.fb ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %mygetopt_long.exit.thread ], [ %.03541603, %bb.ex ]
  %.03561601.be = phi i32 [ %.03561601, %.thread ], [ %.03561601, %bb.am ], [ %.03561601, %bb.an ], [ %.03561601, %bb.ao ], [ %.03561601, %bb.ap ], [ %.03561601, %bb.aq ], [ %.03561601, %bb.ar ], [ %.03561601, %bb.as ], [ %.03561601, %bb.at ], [ %.03561601, %bb.au ], [ %.03561601, %bb.av ], [ %.03561601, %bb.aw ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %bb.ay ], [ %.03561601, %bb.ba ], [ %.03561601, %bb.bc ], [ 1, %bb.be ], [ %.03561601, %bb.bg ], [ %.03561601, %bb.bi ], [ %.03561601, %bb.bk ], [ %.03561601, %bb.bm ], [ %.03561601, %bb.bo ], [ %.03561601, %bb.bq ], [ %.03561601, %bb.bs ], [ %.03561601, %bb.bt ], [ %.03561601, %bb.bu ], [ %.03561601, %bb.bv ], [ %.03561601, %bb.bw ], [ %.03561601, %bb.by ], [ %.03561601, %bb.bz ], [ %.03561601, %bb.ca ], [ %.03561601, %bb.cb ], [ %.03561601, %bb.cd ], [ %.03561601, %.loopexit ], [ %.03561601, %bb.cj ], [ %.03561601, %bb.ck ], [ %.03561601, %bb.cl ], [ %.03561601, %bb.cm ], [ %.03561601, %bb.cn ], [ %.03561601, %bb.co ], [ %.03561601, %bb.cp ], [ %.03561601, %bb.cq ], [ %.03561601, %bb.cr ], [ %.03561601, %bb.cs ], [ %.03561601, %bb.cw ], [ %.03561601, %bb.ax ], [ %.03561601, %bb.fa ], [ %.03561601, %bb.fb ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %mygetopt_long.exit.thread ], [ %.03561601, %bb.ex ]
  %.03581599.be = phi ptr [ %.03581599, %.thread ], [ %.03581599, %bb.am ], [ %.03581599, %bb.an ], [ %.03581599, %bb.ao ], [ %.03581599, %bb.ap ], [ %.03581599, %bb.aq ], [ %.03581599, %bb.ar ], [ %.03581599, %bb.as ], [ %.03581599, %bb.at ], [ %.03581599, %bb.au ], [ %.03581599, %bb.av ], [ %.03581599, %bb.aw ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %bb.ay ], [ %.03581599, %bb.ba ], [ %.03581599, %bb.bc ], [ %.03581599, %bb.be ], [ %.03581599, %bb.bg ], [ %.03581599, %bb.bi ], [ %.03581599, %bb.bk ], [ %.03581599, %bb.bm ], [ %.03581599, %bb.bo ], [ %.03581599, %bb.bq ], [ %.03581599, %bb.bs ], [ %.03581599, %bb.bt ], [ %.03581599, %bb.bu ], [ %.03581599, %bb.bv ], [ %.03581599, %bb.bw ], [ %.03581599, %bb.by ], [ %.03581599, %bb.bz ], [ %.03581599, %bb.ca ], [ %.03581599, %bb.cb ], [ %.03581599, %bb.cd ], [ %.03581599, %.loopexit ], [ %.03581599, %bb.cj ], [ %.03581599, %bb.ck ], [ %.03581599, %bb.cl ], [ %.03581599, %bb.cm ], [ %.03581599, %bb.cn ], [ %.03581599, %bb.co ], [ %.03581599, %bb.cp ], [ %.03581599, %bb.cq ], [ %.03581599, %bb.cr ], [ %.03581599, %bb.cs ], [ %i.eq, %bb.cw ], [ %.03581599, %bb.ax ], [ %.03581599, %bb.fa ], [ %.03581599, %bb.fb ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %mygetopt_long.exit.thread ], [ %.03581599, %bb.ex ]
  %.03601597.be = phi i32 [ %.03601597, %.thread ], [ %.03601597, %bb.am ], [ %.03601597, %bb.an ], [ %.03601597, %bb.ao ], [ %.03601597, %bb.ap ], [ %.03601597, %bb.aq ], [ %.03601597, %bb.ar ], [ %.03601597, %bb.as ], [ %.03601597, %bb.at ], [ %.03601597, %bb.au ], [ %.03601597, %bb.av ], [ %.03601597, %bb.aw ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %bb.ay ], [ %.03601597, %bb.ba ], [ %.03601597, %bb.bc ], [ %.03601597, %bb.be ], [ %.03601597, %bb.bg ], [ %.03601597, %bb.bi ], [ %.03601597, %bb.bk ], [ %.03601597, %bb.bm ], [ %.03601597, %bb.bo ], [ %.03601597, %bb.bq ], [ %.03601597, %bb.bs ], [ %.03601597, %bb.bt ], [ %.03601597, %bb.bu ], [ %.03601597, %bb.bv ], [ %.03601597, %bb.bw ], [ %.03601597, %bb.by ], [ %.03601597, %bb.bz ], [ %.03601597, %bb.ca ], [ %.03601597, %bb.cb ], [ %.03601597, %bb.cd ], [ %.03601597, %.loopexit ], [ %.03601597, %bb.cj ], [ %.03601597, %bb.ck ], [ %.03601597, %bb.cl ], [ %.03601597, %bb.cm ], [ %.03601597, %bb.cn ], [ %.03601597, %bb.co ], [ %.03601597, %bb.cp ], [ %.03601597, %bb.cq ], [ %.03601597, %bb.cr ], [ %.03601597, %bb.cs ], [ 1, %bb.cw ], [ %.03601597, %bb.ax ], [ %.03601597, %bb.fa ], [ %.03601597, %bb.fb ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %mygetopt_long.exit.thread ], [ %.03601597, %bb.ex ]
  %.03621595.be = phi i32 [ %.03621595, %.thread ], [ %.03621595, %bb.am ], [ %.03621595, %bb.an ], [ %.03621595, %bb.ao ], [ %.03621595, %bb.ap ], [ %.03621595, %bb.aq ], [ %.03621595, %bb.ar ], [ %.03621595, %bb.as ], [ %.03621595, %bb.at ], [ %.03621595, %bb.au ], [ %.03621595, %bb.av ], [ %.03621595, %bb.aw ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %bb.ay ], [ %.03621595, %bb.ba ], [ %.03621595, %bb.bc ], [ %.03621595, %bb.be ], [ %.03621595, %bb.bg ], [ %.03621595, %bb.bi ], [ %.03621595, %bb.bk ], [ %.03621595, %bb.bm ], [ %.03621595, %bb.bo ], [ %.03621595, %bb.bq ], [ %.03621595, %bb.bs ], [ %.03621595, %bb.bt ], [ %.03621595, %bb.bu ], [ %.03621595, %bb.bv ], [ %.03621595, %bb.bw ], [ %.03621595, %bb.by ], [ %.03621595, %bb.bz ], [ %.03621595, %bb.ca ], [ %.03621595, %bb.cb ], [ %.03621595, %bb.cd ], [ %.03621595, %.loopexit ], [ %.03621595, %bb.cj ], [ 1, %bb.ck ], [ 2, %bb.cl ], [ %.03621595, %bb.cm ], [ %.03621595, %bb.cn ], [ %.03621595, %bb.co ], [ %.03621595, %bb.cp ], [ %.03621595, %bb.cq ], [ %.03621595, %bb.cr ], [ %.03621595, %bb.cs ], [ 2, %bb.cw ], [ %.03621595, %bb.ax ], [ %.03621595, %bb.fa ], [ %.03621595, %bb.fb ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %mygetopt_long.exit.thread ], [ %.03621595, %bb.ex ]
  %.03641593.be = phi i32 [ %.03641593, %.thread ], [ %.03641593, %bb.am ], [ %.03641593, %bb.an ], [ %.03641593, %bb.ao ], [ %.03641593, %bb.ap ], [ %.03641593, %bb.aq ], [ %.03641593, %bb.ar ], [ %.03641593, %bb.as ], [ %.03641593, %bb.at ], [ %.03641593, %bb.au ], [ %.03641593, %bb.av ], [ %.03641593, %bb.aw ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %bb.ay ], [ %.03641593, %bb.ba ], [ %.03641593, %bb.bc ], [ %.03641593, %bb.be ], [ %.03641593, %bb.bg ], [ %.03641593, %bb.bi ], [ %.03641593, %bb.bk ], [ %.03641593, %bb.bm ], [ %.03641593, %bb.bo ], [ %.03641593, %bb.bq ], [ %.03641593, %bb.bs ], [ %.03641593, %bb.bt ], [ %.03641593, %bb.bu ], [ %.03641593, %bb.bv ], [ %.03641593, %bb.bw ], [ %.03641593, %bb.by ], [ %.03641593, %bb.bz ], [ %.03641593, %bb.ca ], [ %.03641593, %bb.cb ], [ %.03641593, %bb.cd ], [ %.03641593, %.loopexit ], [ %.03641593, %bb.cj ], [ %.03641593, %bb.ck ], [ %.03641593, %bb.cl ], [ %.03641593, %bb.cm ], [ %.03641593, %bb.cn ], [ %.03641593, %bb.co ], [ %.03641593, %bb.cp ], [ 0, %bb.cq ], [ %.03641593, %bb.cr ], [ %.03641593, %bb.cs ], [ %.03641593, %bb.cw ], [ %.03641593, %bb.ax ], [ %.03641593, %bb.fa ], [ %.03641593, %bb.fb ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %mygetopt_long.exit.thread ], [ %.03641593, %bb.ex ]
  %.03661591.be = phi i32 [ %.03661591, %.thread ], [ %.03661591, %bb.am ], [ %.03661591, %bb.an ], [ %.03661591, %bb.ao ], [ %.03661591, %bb.ap ], [ %.03661591, %bb.aq ], [ %.03661591, %bb.ar ], [ %.03661591, %bb.as ], [ %.03661591, %bb.at ], [ %.03661591, %bb.au ], [ %.03661591, %bb.av ], [ %.03661591, %bb.aw ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %bb.ay ], [ %.03661591, %bb.ba ], [ %.03661591, %bb.bc ], [ %.03661591, %bb.be ], [ %.03661591, %bb.bg ], [ %.03661591, %bb.bi ], [ %.03661591, %bb.bk ], [ %.03661591, %bb.bm ], [ %.03661591, %bb.bo ], [ %.03661591, %bb.bq ], [ %.03661591, %bb.bs ], [ %.03661591, %bb.bt ], [ %.03661591, %bb.bu ], [ %.03661591, %bb.bv ], [ %.03661591, %bb.bw ], [ %.03661591, %bb.by ], [ %.03661591, %bb.bz ], [ %.03661591, %bb.ca ], [ %.03661591, %bb.cb ], [ %.03661591, %bb.cd ], [ %.03661591, %.loopexit ], [ %.03661591, %bb.cj ], [ %.03661591, %bb.ck ], [ %.03661591, %bb.cl ], [ %.03661591, %bb.cm ], [ %.03661591, %bb.cn ], [ 1, %bb.co ], [ %.03661591, %bb.cp ], [ %.03661591, %bb.cq ], [ %.03661591, %bb.cr ], [ %.03661591, %bb.cs ], [ %.03661591, %bb.cw ], [ %.03661591, %bb.ax ], [ %.03661591, %bb.fa ], [ %.03661591, %bb.fb ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %mygetopt_long.exit.thread ], [ %.03661591, %bb.ex ]
  %.03681589.be = phi i32 [ %.03681589, %.thread ], [ %.03681589, %bb.am ], [ %.03681589, %bb.an ], [ %.03681589, %bb.ao ], [ %.03681589, %bb.ap ], [ %.03681589, %bb.aq ], [ %.03681589, %bb.ar ], [ %.03681589, %bb.as ], [ %.03681589, %bb.at ], [ %.03681589, %bb.au ], [ %.03681589, %bb.av ], [ %.03681589, %bb.aw ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %bb.ay ], [ %.03681589, %bb.ba ], [ %.03681589, %bb.bc ], [ %.03681589, %bb.be ], [ %.03681589, %bb.bg ], [ %.03681589, %bb.bi ], [ %.03681589, %bb.bk ], [ %.03681589, %bb.bm ], [ %.03681589, %bb.bo ], [ %.03681589, %bb.bq ], [ %.03681589, %bb.bs ], [ %.03681589, %bb.bt ], [ %.03681589, %bb.bu ], [ %.03681589, %bb.bv ], [ %.03681589, %bb.bw ], [ %.03681589, %bb.by ], [ %.03681589, %bb.bz ], [ %.03681589, %bb.ca ], [ %.03681589, %bb.cb ], [ %.03681589, %bb.cd ], [ %.03681589, %.loopexit ], [ %.03681589, %bb.cj ], [ %.03681589, %bb.ck ], [ %.03681589, %bb.cl ], [ %.03681589, %bb.cm ], [ 1, %bb.cn ], [ %.03681589, %bb.co ], [ %.03681589, %bb.cp ], [ %.03681589, %bb.cq ], [ %.03681589, %bb.cr ], [ %.03681589, %bb.cs ], [ %.03681589, %bb.cw ], [ %.03681589, %bb.ax ], [ %.03681589, %bb.fa ], [ %.03681589, %bb.fb ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %mygetopt_long.exit.thread ], [ %.03681589, %bb.ex ]
  %.03701587.be = phi i32 [ %.03701587, %.thread ], [ %.03701587, %bb.am ], [ %.03701587, %bb.an ], [ %.03701587, %bb.ao ], [ %.03701587, %bb.ap ], [ %.03701587, %bb.aq ], [ %.03701587, %bb.ar ], [ %.03701587, %bb.as ], [ %.03701587, %bb.at ], [ %.03701587, %bb.au ], [ %.03701587, %bb.av ], [ %.03701587, %bb.aw ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %bb.ay ], [ %.03701587, %bb.ba ], [ %.03701587, %bb.bc ], [ %.03701587, %bb.be ], [ %.03701587, %bb.bg ], [ %.03701587, %bb.bi ], [ %.03701587, %bb.bk ], [ %.03701587, %bb.bm ], [ %.03701587, %bb.bo ], [ %.03701587, %bb.bq ], [ %.03701587, %bb.bs ], [ %.03701587, %bb.bt ], [ %.03701587, %bb.bu ], [ %.03701587, %bb.bv ], [ %.03701587, %bb.bw ], [ %.03701587, %bb.by ], [ %.03701587, %bb.bz ], [ %.03701587, %bb.ca ], [ %.03701587, %bb.cb ], [ %.03701587, %bb.cd ], [ %.03701587, %.loopexit ], [ %.03701587, %bb.cj ], [ %.03701587, %bb.ck ], [ %.03701587, %bb.cl ], [ %.03701587, %bb.cm ], [ %.03701587, %bb.cn ], [ %.03701587, %bb.co ], [ %.03701587, %bb.cp ], [ %.03701587, %bb.cq ], [ %.03701587, %bb.cr ], [ %.03701587, %bb.cs ], [ %.03701587, %bb.cw ], [ %.03701587, %bb.ax ], [ 1, %bb.fa ], [ %.03701587, %bb.fb ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %mygetopt_long.exit.thread ], [ %.03701587, %bb.ex ]
  %.03721585.be = phi i32 [ %.03721585, %.thread ], [ %.03721585, %bb.am ], [ %.03721585, %bb.an ], [ %.03721585, %bb.ao ], [ %.03721585, %bb.ap ], [ %.03721585, %bb.aq ], [ %.03721585, %bb.ar ], [ %.03721585, %bb.as ], [ %.03721585, %bb.at ], [ %.03721585, %bb.au ], [ %.03721585, %bb.av ], [ %.03721585, %bb.aw ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %bb.ay ], [ %.03721585, %bb.ba ], [ %.03721585, %bb.bc ], [ %.03721585, %bb.be ], [ %.03721585, %bb.bg ], [ %.03721585, %bb.bi ], [ %.03721585, %bb.bk ], [ %.03721585, %bb.bm ], [ %.03721585, %bb.bo ], [ %.03721585, %bb.bq ], [ %.03721585, %bb.bs ], [ %.03721585, %bb.bt ], [ %.03721585, %bb.bu ], [ %.03721585, %bb.bv ], [ %.03721585, %bb.bw ], [ %.03721585, %bb.by ], [ %.03721585, %bb.bz ], [ %.03721585, %bb.ca ], [ %.03721585, %bb.cb ], [ %.03721585, %bb.cd ], [ %.03721585, %.loopexit ], [ %.03721585, %bb.cj ], [ %.03721585, %bb.ck ], [ %.03721585, %bb.cl ], [ 1, %bb.cm ], [ %.03721585, %bb.cn ], [ %.03721585, %bb.co ], [ %.03721585, %bb.cp ], [ %.03721585, %bb.cq ], [ %.03721585, %bb.cr ], [ %.03721585, %bb.cs ], [ %.03721585, %bb.cw ], [ %.03721585, %bb.ax ], [ %.03721585, %bb.fa ], [ %.03721585, %bb.fb ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %mygetopt_long.exit.thread ], [ %.03721585, %bb.ex ]
  %.03741583.be = phi ptr [ %.03741583, %.thread ], [ %.03741583, %bb.am ], [ %.03741583, %bb.an ], [ %.03741583, %bb.ao ], [ %.03741583, %bb.ap ], [ %.03741583, %bb.aq ], [ %.03741583, %bb.ar ], [ %.03741583, %bb.as ], [ %.03741583, %bb.at ], [ %.03741583, %bb.au ], [ %.03741583, %bb.av ], [ %.03741583, %bb.aw ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %bb.ay ], [ %.03741583, %bb.ba ], [ %.03741583, %bb.bc ], [ %.03741583, %bb.be ], [ %.03741583, %bb.bg ], [ %.03741583, %bb.bi ], [ %.03741583, %bb.bk ], [ %.03741583, %bb.bm ], [ %.03741583, %bb.bo ], [ %.03741583, %bb.bq ], [ %.03741583, %bb.bs ], [ %.03741583, %bb.bt ], [ %.03741583, %bb.bu ], [ %.03741583, %bb.bv ], [ %.03741583, %bb.bw ], [ %.03741583, %bb.by ], [ %i.dt, %bb.bz ], [ %.03741583, %bb.ca ], [ %.03741583, %bb.cb ], [ %.03741583, %bb.cd ], [ %.03741583, %.loopexit ], [ %.03741583, %bb.cj ], [ %.03741583, %bb.ck ], [ %.03741583, %bb.cl ], [ %.03741583, %bb.cm ], [ %.03741583, %bb.cn ], [ %.03741583, %bb.co ], [ %.03741583, %bb.cp ], [ %.03741583, %bb.cq ], [ %.03741583, %bb.cr ], [ %.03741583, %bb.cs ], [ %.03741583, %bb.cw ], [ %.03741583, %bb.ax ], [ %.03741583, %bb.fa ], [ %.03741583, %bb.fb ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %mygetopt_long.exit.thread ], [ %.03741583, %bb.ex ]
  %.03761581.be = phi ptr [ %.03761581, %.thread ], [ %.03761581, %bb.am ], [ %.03761581, %bb.an ], [ %.03761581, %bb.ao ], [ %.03761581, %bb.ap ], [ %.03761581, %bb.aq ], [ %.03761581, %bb.ar ], [ %.03761581, %bb.as ], [ %.03761581, %bb.at ], [ %.03761581, %bb.au ], [ %.03761581, %bb.av ], [ %.03761581, %bb.aw ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %bb.ay ], [ %.03761581, %bb.ba ], [ %.03761581, %bb.bc ], [ %.03761581, %bb.be ], [ %.03761581, %bb.bg ], [ %.03761581, %bb.bi ], [ %.03761581, %bb.bk ], [ %.03761581, %bb.bm ], [ %.03761581, %bb.bo ], [ %.03761581, %bb.bq ], [ %.03761581, %bb.bs ], [ %.03761581, %bb.bt ], [ %.03761581, %bb.bu ], [ %i.do, %bb.bv ], [ %.03761581, %bb.bw ], [ %.03761581, %bb.by ], [ %.03761581, %bb.bz ], [ %.03761581, %bb.ca ], [ %.03761581, %bb.cb ], [ %.03761581, %bb.cd ], [ %.03761581, %.loopexit ], [ %.03761581, %bb.cj ], [ %.03761581, %bb.ck ], [ %.03761581, %bb.cl ], [ %.03761581, %bb.cm ], [ %.03761581, %bb.cn ], [ %.03761581, %bb.co ], [ %.03761581, %bb.cp ], [ %.03761581, %bb.cq ], [ %.03761581, %bb.cr ], [ %.03761581, %bb.cs ], [ %.03761581, %bb.cw ], [ %.03761581, %bb.ax ], [ %.03761581, %bb.fa ], [ %.03761581, %bb.fb ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %mygetopt_long.exit.thread ], [ %.03761581, %bb.ex ]
  %.03781579.be = phi ptr [ %.03781579, %.thread ], [ %.03781579, %bb.am ], [ %.03781579, %bb.an ], [ %.03781579, %bb.ao ], [ %.03781579, %bb.ap ], [ %.03781579, %bb.aq ], [ %.03781579, %bb.ar ], [ %.03781579, %bb.as ], [ %.03781579, %bb.at ], [ %.03781579, %bb.au ], [ %.03781579, %bb.av ], [ %.03781579, %bb.aw ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %bb.ay ], [ %.03781579, %bb.ba ], [ %.03781579, %bb.bc ], [ %.03781579, %bb.be ], [ %.03781579, %bb.bg ], [ %.03781579, %bb.bi ], [ %.03781579, %bb.bk ], [ %.03781579, %bb.bm ], [ %.03781579, %bb.bo ], [ %.03781579, %bb.bq ], [ %.03781579, %bb.bs ], [ %.03781579, %bb.bt ], [ %i.dn, %bb.bu ], [ %.03781579, %bb.bv ], [ %.03781579, %bb.bw ], [ %.03781579, %bb.by ], [ %.03781579, %bb.bz ], [ %.03781579, %bb.ca ], [ %.03781579, %bb.cb ], [ %.03781579, %bb.cd ], [ %.03781579, %.loopexit ], [ %.03781579, %bb.cj ], [ %.03781579, %bb.ck ], [ %.03781579, %bb.cl ], [ %.03781579, %bb.cm ], [ %.03781579, %bb.cn ], [ %.03781579, %bb.co ], [ %.03781579, %bb.cp ], [ %.03781579, %bb.cq ], [ %.03781579, %bb.cr ], [ %.03781579, %bb.cs ], [ %.03781579, %bb.cw ], [ %.03781579, %bb.ax ], [ %.03781579, %bb.fa ], [ %.03781579, %bb.fb ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %mygetopt_long.exit.thread ], [ %.03781579, %bb.ex ]
  %.03801577.be = phi ptr [ %.03801577, %.thread ], [ %.03801577, %bb.am ], [ %.03801577, %bb.an ], [ %.03801577, %bb.ao ], [ %.03801577, %bb.ap ], [ %.03801577, %bb.aq ], [ %.03801577, %bb.ar ], [ %.03801577, %bb.as ], [ %.03801577, %bb.at ], [ %.03801577, %bb.au ], [ %.03801577, %bb.av ], [ %.03801577, %bb.aw ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %bb.ay ], [ %.03801577, %bb.ba ], [ %.03801577, %bb.bc ], [ %.03801577, %bb.be ], [ %.03801577, %bb.bg ], [ %.03801577, %bb.bi ], [ %.03801577, %bb.bk ], [ %.03801577, %bb.bm ], [ %.03801577, %bb.bo ], [ %.03801577, %bb.bq ], [ %.03801577, %bb.bs ], [ %i.dm, %bb.bt ], [ %.03801577, %bb.bu ], [ %.03801577, %bb.bv ], [ %.03801577, %bb.bw ], [ %.03801577, %bb.by ], [ %.03801577, %bb.bz ], [ %.03801577, %bb.ca ], [ %.03801577, %bb.cb ], [ %.03801577, %bb.cd ], [ %.03801577, %.loopexit ], [ %.03801577, %bb.cj ], [ %.03801577, %bb.ck ], [ %.03801577, %bb.cl ], [ %.03801577, %bb.cm ], [ %.03801577, %bb.cn ], [ %.03801577, %bb.co ], [ %.03801577, %bb.cp ], [ %.03801577, %bb.cq ], [ %.03801577, %bb.cr ], [ %.03801577, %bb.cs ], [ %.03801577, %bb.cw ], [ %.03801577, %bb.ax ], [ %.03801577, %bb.fa ], [ %.03801577, %bb.fb ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %mygetopt_long.exit.thread ], [ %.03801577, %bb.ex ]
  %.03821575.be = phi ptr [ %.03821575, %.thread ], [ %.03821575, %bb.am ], [ %.03821575, %bb.an ], [ %.03821575, %bb.ao ], [ %.03821575, %bb.ap ], [ %.03821575, %bb.aq ], [ %.03821575, %bb.ar ], [ %.03821575, %bb.as ], [ %.03821575, %bb.at ], [ %.03821575, %bb.au ], [ %.03821575, %bb.av ], [ %.03821575, %bb.aw ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %bb.ay ], [ %.03821575, %bb.ba ], [ %.03821575, %bb.bc ], [ %.03821575, %bb.be ], [ %.03821575, %bb.bg ], [ %.03821575, %bb.bi ], [ %.03821575, %bb.bk ], [ %.03821575, %bb.bm ], [ %.03821575, %bb.bo ], [ %.03821575, %bb.bq ], [ %i.dl, %bb.bs ], [ %.03821575, %bb.bt ], [ %.03821575, %bb.bu ], [ %.03821575, %bb.bv ], [ %.03821575, %bb.bw ], [ %.03821575, %bb.by ], [ %.03821575, %bb.bz ], [ %.03821575, %bb.ca ], [ %.03821575, %bb.cb ], [ %.03821575, %bb.cd ], [ %.03821575, %.loopexit ], [ %.03821575, %bb.cj ], [ %.03821575, %bb.ck ], [ %.03821575, %bb.cl ], [ %.03821575, %bb.cm ], [ %.03821575, %bb.cn ], [ %.03821575, %bb.co ], [ %.03821575, %bb.cp ], [ %.03821575, %bb.cq ], [ %.03821575, %bb.cr ], [ %.03821575, %bb.cs ], [ %.03821575, %bb.cw ], [ %.03821575, %bb.ax ], [ %.03821575, %bb.fa ], [ %.03821575, %bb.fb ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %mygetopt_long.exit.thread ], [ %.03821575, %bb.ex ]
  %.03841573.be = phi i32 [ %.03841573, %.thread ], [ %.03841573, %bb.am ], [ %.03841573, %bb.an ], [ %.03841573, %bb.ao ], [ %.03841573, %bb.ap ], [ %.03841573, %bb.aq ], [ %.03841573, %bb.ar ], [ %.03841573, %bb.as ], [ %.03841573, %bb.at ], [ %.03841573, %bb.au ], [ %.03841573, %bb.av ], [ %.03841573, %bb.aw ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %bb.ay ], [ %.03841573, %bb.ba ], [ 1, %bb.bc ], [ %.03841573, %bb.be ], [ %.03841573, %bb.bg ], [ %.03841573, %bb.bi ], [ %.03841573, %bb.bk ], [ %.03841573, %bb.bm ], [ %.03841573, %bb.bo ], [ %.03841573, %bb.bq ], [ %.03841573, %bb.bs ], [ %.03841573, %bb.bt ], [ %.03841573, %bb.bu ], [ %.03841573, %bb.bv ], [ %.03841573, %bb.bw ], [ %.03841573, %bb.by ], [ %.03841573, %bb.bz ], [ %.03841573, %bb.ca ], [ %.03841573, %bb.cb ], [ %.03841573, %bb.cd ], [ %.03841573, %.loopexit ], [ %.03841573, %bb.cj ], [ %.03841573, %bb.ck ], [ %.03841573, %bb.cl ], [ %.03841573, %bb.cm ], [ %.03841573, %bb.cn ], [ %.03841573, %bb.co ], [ %.03841573, %bb.cp ], [ %.03841573, %bb.cq ], [ %.03841573, %bb.cr ], [ %.03841573, %bb.cs ], [ %.03841573, %bb.cw ], [ %.03841573, %bb.ax ], [ %.03841573, %bb.fa ], [ %.03841573, %bb.fb ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %mygetopt_long.exit.thread ], [ %.03841573, %bb.ex ]
  %.03861571.be = phi ptr [ %.03861571, %.thread ], [ %.03861571, %bb.am ], [ %.03861571, %bb.an ], [ %.03861571, %bb.ao ], [ %.03861571, %bb.ap ], [ %.03861571, %bb.aq ], [ %.03861571, %bb.ar ], [ %.03861571, %bb.as ], [ %.03861571, %bb.at ], [ %.03861571, %bb.au ], [ %.03861571, %bb.av ], [ %.03861571, %bb.aw ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %bb.ay ], [ %i.ct, %bb.ba ], [ %.03861571, %bb.bc ], [ %.03861571, %bb.be ], [ %.03861571, %bb.bg ], [ %.03861571, %bb.bi ], [ %.03861571, %bb.bk ], [ %.03861571, %bb.bm ], [ %.03861571, %bb.bo ], [ %.03861571, %bb.bq ], [ %.03861571, %bb.bs ], [ %.03861571, %bb.bt ], [ %.03861571, %bb.bu ], [ %.03861571, %bb.bv ], [ %.03861571, %bb.bw ], [ %.03861571, %bb.by ], [ %.03861571, %bb.bz ], [ %.03861571, %bb.ca ], [ %.03861571, %bb.cb ], [ %.03861571, %bb.cd ], [ %.03861571, %.loopexit ], [ %.03861571, %bb.cj ], [ %.03861571, %bb.ck ], [ %.03861571, %bb.cl ], [ %.03861571, %bb.cm ], [ %.03861571, %bb.cn ], [ %.03861571, %bb.co ], [ %.03861571, %bb.cp ], [ %.03861571, %bb.cq ], [ %.03861571, %bb.cr ], [ %.03861571, %bb.cs ], [ %.03861571, %bb.cw ], [ %.03861571, %bb.ax ], [ %.03861571, %bb.fa ], [ %.03861571, %bb.fb ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %mygetopt_long.exit.thread ], [ %.03861571, %bb.ex ]
  %.03881569.be = phi ptr [ %.03881569, %.thread ], [ %.03881569, %bb.am ], [ %.03881569, %bb.an ], [ %.03881569, %bb.ao ], [ %.03881569, %bb.ap ], [ %.03881569, %bb.aq ], [ %.03881569, %bb.ar ], [ %.03881569, %bb.as ], [ %i.ck, %bb.at ], [ %.03881569, %bb.au ], [ %.03881569, %bb.av ], [ %.03881569, %bb.aw ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %bb.ay ], [ %.03881569, %bb.ba ], [ %.03881569, %bb.bc ], [ %.03881569, %bb.be ], [ %.03881569, %bb.bg ], [ %.03881569, %bb.bi ], [ %.03881569, %bb.bk ], [ %.03881569, %bb.bm ], [ %.03881569, %bb.bo ], [ %.03881569, %bb.bq ], [ %.03881569, %bb.bs ], [ %.03881569, %bb.bt ], [ %.03881569, %bb.bu ], [ %.03881569, %bb.bv ], [ %.03881569, %bb.bw ], [ %.03881569, %bb.by ], [ %.03881569, %bb.bz ], [ %.03881569, %bb.ca ], [ %.03881569, %bb.cb ], [ %.03881569, %bb.cd ], [ %.03881569, %.loopexit ], [ %.03881569, %bb.cj ], [ %.03881569, %bb.ck ], [ %.03881569, %bb.cl ], [ %.03881569, %bb.cm ], [ %.03881569, %bb.cn ], [ %.03881569, %bb.co ], [ %.03881569, %bb.cp ], [ %.03881569, %bb.cq ], [ %.03881569, %bb.cr ], [ %.03881569, %bb.cs ], [ %.03881569, %bb.cw ], [ %.03881569, %bb.ax ], [ %.03881569, %bb.fa ], [ %.03881569, %bb.fb ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %mygetopt_long.exit.thread ], [ %.03881569, %bb.ex ]
  %.03961567.be = phi i32 [ %.03961567, %.thread ], [ %.03961567, %bb.am ], [ %.03961567, %bb.an ], [ %.03961567, %bb.ao ], [ %.03961567, %bb.ap ], [ %.03961567, %bb.aq ], [ %.03961567, %bb.ar ], [ %.03961567, %bb.as ], [ %.03961567, %bb.at ], [ %.03961567, %bb.au ], [ %.03961567, %bb.av ], [ %.03961567, %bb.aw ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %bb.ay ], [ %.03961567, %bb.ba ], [ %.03961567, %bb.bc ], [ %.03961567, %bb.be ], [ %.03961567, %bb.bg ], [ %.03961567, %bb.bi ], [ %.03961567, %bb.bk ], [ %.03961567, %bb.bm ], [ %.03961567, %bb.bo ], [ %.03961567, %bb.bq ], [ %.03961567, %bb.bs ], [ %.03961567, %bb.bt ], [ %.03961567, %bb.bu ], [ %.03961567, %bb.bv ], [ %i.dr, %bb.bw ], [ %.03961567, %bb.by ], [ %.03961567, %bb.bz ], [ %.03961567, %bb.ca ], [ %.03961567, %bb.cb ], [ %.03961567, %bb.cd ], [ %.03961567, %.loopexit ], [ %.03961567, %bb.cj ], [ %.03961567, %bb.ck ], [ %.03961567, %bb.cl ], [ %.03961567, %bb.cm ], [ %.03961567, %bb.cn ], [ %.03961567, %bb.co ], [ %.03961567, %bb.cp ], [ %.03961567, %bb.cq ], [ %.03961567, %bb.cr ], [ %.03961567, %bb.cs ], [ %.03961567, %bb.cw ], [ %.03961567, %bb.ax ], [ %.03961567, %bb.fa ], [ %.03961567, %bb.fb ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %mygetopt_long.exit.thread ], [ %.03961567, %bb.ex ]
  %.03981565.be = phi i64 [ %.03981565, %.thread ], [ %.03981565, %bb.am ], [ %.03981565, %bb.an ], [ %.03981565, %bb.ao ], [ %.03981565, %bb.ap ], [ %.03981565, %bb.aq ], [ %.03981565, %bb.ar ], [ %.03981565, %bb.as ], [ %.03981565, %bb.at ], [ %.03981565, %bb.au ], [ %.03981565, %bb.av ], [ %.03981565, %bb.aw ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %bb.ay ], [ %.03981565, %bb.ba ], [ %.03981565, %bb.bc ], [ %.03981565, %bb.be ], [ %.03981565, %bb.bg ], [ %.03981565, %bb.bi ], [ %.03981565, %bb.bk ], [ %.03981565, %bb.bm ], [ %.03981565, %bb.bo ], [ %.03981565, %bb.bq ], [ %.03981565, %bb.bs ], [ %.03981565, %bb.bt ], [ %.03981565, %bb.bu ], [ %.03981565, %bb.bv ], [ %.03981565, %bb.bw ], [ %.03981565, %bb.by ], [ %.03981565, %bb.bz ], [ %.03981565, %bb.ca ], [ %.03981565, %bb.cb ], [ %.03981565, %bb.cd ], [ %i.dz, %.loopexit ], [ %.03981565, %bb.cj ], [ %.03981565, %bb.ck ], [ %.03981565, %bb.cl ], [ %.03981565, %bb.cm ], [ %.03981565, %bb.cn ], [ %.03981565, %bb.co ], [ %.03981565, %bb.cp ], [ %.03981565, %bb.cq ], [ %.03981565, %bb.cr ], [ %.03981565, %bb.cs ], [ %.03981565, %bb.cw ], [ %.03981565, %bb.ax ], [ %.03981565, %bb.fa ], [ %.03981565, %bb.fb ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %mygetopt_long.exit.thread ], [ %.03981565, %bb.ex ]
  %.04001563.be = phi i32 [ %.04001563, %.thread ], [ %.04001563, %bb.am ], [ %.04001563, %bb.an ], [ %.04001563, %bb.ao ], [ %.04001563, %bb.ap ], [ %.04001563, %bb.aq ], [ %.04001563, %bb.ar ], [ %.04001563, %bb.as ], [ %.04001563, %bb.at ], [ %.04001563, %bb.au ], [ %.04001563, %bb.av ], [ %.04001563, %bb.aw ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %bb.ay ], [ %.04001563, %bb.ba ], [ %.04001563, %bb.bc ], [ %.04001563, %bb.be ], [ %.04001563, %bb.bg ], [ %.04001563, %bb.bi ], [ %.04001563, %bb.bk ], [ %.04001563, %bb.bm ], [ %.04001563, %bb.bo ], [ %.04001563, %bb.bq ], [ %.04001563, %bb.bs ], [ %.04001563, %bb.bt ], [ %.04001563, %bb.bu ], [ %.04001563, %bb.bv ], [ %.04001563, %bb.bw ], [ %.04001563, %bb.by ], [ %.04001563, %bb.bz ], [ %.04001563, %bb.ca ], [ %.04001563, %bb.cb ], [ %.04001563, %bb.cd ], [ %.1401, %.loopexit ], [ %.04001563, %bb.cj ], [ %.04001563, %bb.ck ], [ %.04001563, %bb.cl ], [ %.04001563, %bb.cm ], [ %.04001563, %bb.cn ], [ %.04001563, %bb.co ], [ %.04001563, %bb.cp ], [ %.04001563, %bb.cq ], [ %.04001563, %bb.cr ], [ %.04001563, %bb.cs ], [ %.04001563, %bb.cw ], [ %.04001563, %bb.ax ], [ %.04001563, %bb.fa ], [ %.04001563, %bb.fb ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %mygetopt_long.exit.thread ], [ %.04001563, %bb.ex ]
  %.04031561.be = phi i32 [ %.04031561, %.thread ], [ %.04031561, %bb.am ], [ %.04031561, %bb.an ], [ %.04031561, %bb.ao ], [ %.04031561, %bb.ap ], [ %.04031561, %bb.aq ], [ %.04031561, %bb.ar ], [ %.04031561, %bb.as ], [ %.04031561, %bb.at ], [ %.04031561, %bb.au ], [ %.04031561, %bb.av ], [ %.04031561, %bb.aw ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %bb.ay ], [ %.04031561, %bb.ba ], [ %.04031561, %bb.bc ], [ %.04031561, %bb.be ], [ %.04031561, %bb.bg ], [ %.04031561, %bb.bi ], [ %.04031561, %bb.bk ], [ %.04031561, %bb.bm ], [ %.04031561, %bb.bo ], [ %.04031561, %bb.bq ], [ %.04031561, %bb.bs ], [ %.04031561, %bb.bt ], [ %.04031561, %bb.bu ], [ %.04031561, %bb.bv ], [ %.04031561, %bb.bw ], [ %.04031561, %bb.by ], [ %.04031561, %bb.bz ], [ %.04031561, %bb.ca ], [ %.04031561, %bb.cb ], [ 1, %bb.cd ], [ %.04031561, %.loopexit ], [ %.04031561, %bb.cj ], [ %.04031561, %bb.ck ], [ %.04031561, %bb.cl ], [ %.04031561, %bb.cm ], [ %.04031561, %bb.cn ], [ %.04031561, %bb.co ], [ %.04031561, %bb.cp ], [ %.04031561, %bb.cq ], [ %.04031561, %bb.cr ], [ %.04031561, %bb.cs ], [ %.04031561, %bb.cw ], [ %.04031561, %bb.ax ], [ %.04031561, %bb.fa ], [ %.04031561, %bb.fb ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %mygetopt_long.exit.thread ], [ %.04031561, %bb.ex ]
  %.04061559.be = phi i32 [ %.04061559, %.thread ], [ %.04061559, %bb.am ], [ %.04061559, %bb.an ], [ %.04061559, %bb.ao ], [ %.04061559, %bb.ap ], [ %.04061559, %bb.aq ], [ %.04061559, %bb.ar ], [ %.04061559, %bb.as ], [ %.04061559, %bb.at ], [ %.04061559, %bb.au ], [ %.04061559, %bb.av ], [ %.04061559, %bb.aw ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %bb.ay ], [ %.04061559, %bb.ba ], [ %.04061559, %bb.bc ], [ %.04061559, %bb.be ], [ %.04061559, %bb.bg ], [ %.04061559, %bb.bi ], [ %.04061559, %bb.bk ], [ %.04061559, %bb.bm ], [ %.04061559, %bb.bo ], [ %.04061559, %bb.bq ], [ %.04061559, %bb.bs ], [ %.04061559, %bb.bt ], [ %.04061559, %bb.bu ], [ %.04061559, %bb.bv ], [ %.04061559, %bb.bw ], [ %.04061559, %bb.by ], [ %.04061559, %bb.bz ], [ -1, %bb.ca ], [ %i.dw, %bb.cb ], [ %.04061559, %bb.cd ], [ %.04061559, %.loopexit ], [ %.04061559, %bb.cj ], [ %.04061559, %bb.ck ], [ %.04061559, %bb.cl ], [ %.04061559, %bb.cm ], [ %.04061559, %bb.cn ], [ %.04061559, %bb.co ], [ %.04061559, %bb.cp ], [ %.04061559, %bb.cq ], [ %.04061559, %bb.cr ], [ %.04061559, %bb.cs ], [ %.04061559, %bb.cw ], [ %.04061559, %bb.ax ], [ %.04061559, %bb.fa ], [ %.04061559, %bb.fb ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %mygetopt_long.exit.thread ], [ %.04061559, %bb.ex ]
  %.04111557.be = phi i32 [ %.04111557, %.thread ], [ %.04111557, %bb.am ], [ %.04111557, %bb.an ], [ %.04111557, %bb.ao ], [ %.04111557, %bb.ap ], [ %.04111557, %bb.aq ], [ %.04111557, %bb.ar ], [ %.04111557, %bb.as ], [ %.04111557, %bb.at ], [ 1, %bb.au ], [ %.04111557, %bb.av ], [ %.04111557, %bb.aw ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %bb.ay ], [ %.04111557, %bb.ba ], [ %.04111557, %bb.bc ], [ %.04111557, %bb.be ], [ %.04111557, %bb.bg ], [ %.04111557, %bb.bi ], [ %.04111557, %bb.bk ], [ %.04111557, %bb.bm ], [ %.04111557, %bb.bo ], [ %.04111557, %bb.bq ], [ %.04111557, %bb.bs ], [ %.04111557, %bb.bt ], [ %.04111557, %bb.bu ], [ %.04111557, %bb.bv ], [ %.04111557, %bb.bw ], [ %.04111557, %bb.by ], [ %.04111557, %bb.bz ], [ %.04111557, %bb.ca ], [ %.04111557, %bb.cb ], [ %.04111557, %bb.cd ], [ %.04111557, %.loopexit ], [ %.04111557, %bb.cj ], [ %.04111557, %bb.ck ], [ %.04111557, %bb.cl ], [ %.04111557, %bb.cm ], [ %.04111557, %bb.cn ], [ %.04111557, %bb.co ], [ %.04111557, %bb.cp ], [ %.04111557, %bb.cq ], [ %.04111557, %bb.cr ], [ %.04111557, %bb.cs ], [ %.04111557, %bb.cw ], [ %.04111557, %bb.ax ], [ %.04111557, %bb.fa ], [ %.04111557, %bb.fb ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %mygetopt_long.exit.thread ], [ %.04111557, %bb.ex ]
  %.04131555.be = phi i32 [ %.04131555, %.thread ], [ %.04131555, %bb.am ], [ %.04131555, %bb.an ], [ %.04131555, %bb.ao ], [ %.04131555, %bb.ap ], [ %.04131555, %bb.aq ], [ %.04131555, %bb.ar ], [ %.04131555, %bb.as ], [ %.04131555, %bb.at ], [ %.04131555, %bb.au ], [ %.04131555, %bb.av ], [ 1, %bb.aw ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %bb.ay ], [ %.04131555, %bb.ba ], [ %.04131555, %bb.bc ], [ %.04131555, %bb.be ], [ %.04131555, %bb.bg ], [ %.04131555, %bb.bi ], [ %.04131555, %bb.bk ], [ %.04131555, %bb.bm ], [ %.04131555, %bb.bo ], [ %.04131555, %bb.bq ], [ %.04131555, %bb.bs ], [ %.04131555, %bb.bt ], [ %.04131555, %bb.bu ], [ %.04131555, %bb.bv ], [ %.04131555, %bb.bw ], [ %.04131555, %bb.by ], [ %.04131555, %bb.bz ], [ %.04131555, %bb.ca ], [ %.04131555, %bb.cb ], [ %.04131555, %bb.cd ], [ %.04131555, %.loopexit ], [ %.04131555, %bb.cj ], [ %.04131555, %bb.ck ], [ %.04131555, %bb.cl ], [ %.04131555, %bb.cm ], [ %.04131555, %bb.cn ], [ %.04131555, %bb.co ], [ %.04131555, %bb.cp ], [ %.04131555, %bb.cq ], [ %.04131555, %bb.cr ], [ %.04131555, %bb.cs ], [ %.04131555, %bb.cw ], [ %.04131555, %bb.ax ], [ %.04131555, %bb.fa ], [ %.04131555, %bb.fb ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %mygetopt_long.exit.thread ], [ %.04131555, %bb.ex ]
  %.04151553.be = phi i32 [ %.04151553, %.thread ], [ %.04151553, %bb.am ], [ %.04151553, %bb.an ], [ %.04151553, %bb.ao ], [ %.04151553, %bb.ap ], [ %.04151553, %bb.aq ], [ %.04151553, %bb.ar ], [ 1, %bb.as ], [ %.04151553, %bb.at ], [ %.04151553, %bb.au ], [ %.04151553, %bb.av ], [ %.04151553, %bb.aw ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %bb.ay ], [ %.04151553, %bb.ba ], [ %.04151553, %bb.bc ], [ %.04151553, %bb.be ], [ %.04151553, %bb.bg ], [ %.04151553, %bb.bi ], [ %.04151553, %bb.bk ], [ %.04151553, %bb.bm ], [ %.04151553, %bb.bo ], [ %.04151553, %bb.bq ], [ %.04151553, %bb.bs ], [ %.04151553, %bb.bt ], [ %.04151553, %bb.bu ], [ %.04151553, %bb.bv ], [ %.04151553, %bb.bw ], [ %.04151553, %bb.by ], [ %.04151553, %bb.bz ], [ %.04151553, %bb.ca ], [ %.04151553, %bb.cb ], [ %.04151553, %bb.cd ], [ %.04151553, %.loopexit ], [ %.04151553, %bb.cj ], [ %.04151553, %bb.ck ], [ %.04151553, %bb.cl ], [ %.04151553, %bb.cm ], [ %.04151553, %bb.cn ], [ %.04151553, %bb.co ], [ %.04151553, %bb.cp ], [ %.04151553, %bb.cq ], [ %.04151553, %bb.cr ], [ %.04151553, %bb.cs ], [ %.04151553, %bb.cw ], [ %.04151553, %bb.ax ], [ %.04151553, %bb.fa ], [ %.04151553, %bb.fb ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %mygetopt_long.exit.thread ], [ %.04151553, %bb.ex ]
  %.04171551.be = phi i32 [ %.04171551, %.thread ], [ %.04171551, %bb.am ], [ %.04171551, %bb.an ], [ %.04171551, %bb.ao ], [ %.04171551, %bb.ap ], [ %.04171551, %bb.aq ], [ %.04171551, %bb.ar ], [ %.04171551, %bb.as ], [ %.04171551, %bb.at ], [ %.04171551, %bb.au ], [ %.04171551, %bb.av ], [ %.04171551, %bb.aw ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %bb.ay ], [ %.04171551, %bb.ba ], [ %.04171551, %bb.bc ], [ %.04171551, %bb.be ], [ %.04171551, %bb.bg ], [ %.04171551, %bb.bi ], [ %.04171551, %bb.bk ], [ %.04171551, %bb.bm ], [ %.04171551, %bb.bo ], [ %.04171551, %bb.bq ], [ %.04171551, %bb.bs ], [ %.04171551, %bb.bt ], [ %.04171551, %bb.bu ], [ %.04171551, %bb.bv ], [ %.04171551, %bb.bw ], [ %.04171551, %bb.by ], [ %.04171551, %bb.bz ], [ %.04171551, %bb.ca ], [ %.04171551, %bb.cb ], [ %.04171551, %bb.cd ], [ %.04171551, %.loopexit ], [ %.04171551, %bb.cj ], [ %.04171551, %bb.ck ], [ %.04171551, %bb.cl ], [ %.04171551, %bb.cm ], [ %.04171551, %bb.cn ], [ %.04171551, %bb.co ], [ %.04171551, %bb.cp ], [ %.04171551, %bb.cq ], [ 1, %bb.cr ], [ %.04171551, %bb.cs ], [ %.04171551, %bb.cw ], [ %.04171551, %bb.ax ], [ %.04171551, %bb.fa ], [ %.04171551, %bb.fb ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %mygetopt_long.exit.thread ], [ %.04171551, %bb.ex ]
  %.04191549.be = phi i32 [ %.04191549, %.thread ], [ %.04191549, %bb.am ], [ %.04191549, %bb.an ], [ %.04191549, %bb.ao ], [ %.04191549, %bb.ap ], [ %.04191549, %bb.aq ], [ %.04191549, %bb.ar ], [ %.04191549, %bb.as ], [ %.04191549, %bb.at ], [ %.04191549, %bb.au ], [ %.04191549, %bb.av ], [ %.04191549, %bb.aw ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %bb.ay ], [ %.04191549, %bb.ba ], [ %.04191549, %bb.bc ], [ %.04191549, %bb.be ], [ %.04191549, %bb.bg ], [ %.04191549, %bb.bi ], [ %.04191549, %bb.bk ], [ %.04191549, %bb.bm ], [ %.04191549, %bb.bo ], [ %.04191549, %bb.bq ], [ %.04191549, %bb.bs ], [ %.04191549, %bb.bt ], [ %.04191549, %bb.bu ], [ %.04191549, %bb.bv ], [ %.04191549, %bb.bw ], [ 1, %bb.by ], [ %.04191549, %bb.bz ], [ %.04191549, %bb.ca ], [ %.04191549, %bb.cb ], [ %.04191549, %bb.cd ], [ %.04191549, %.loopexit ], [ %.04191549, %bb.cj ], [ %.04191549, %bb.ck ], [ %.04191549, %bb.cl ], [ %.04191549, %bb.cm ], [ %.04191549, %bb.cn ], [ %.04191549, %bb.co ], [ %.04191549, %bb.cp ], [ %.04191549, %bb.cq ], [ 1, %bb.cr ], [ %.04191549, %bb.cs ], [ %.04191549, %bb.cw ], [ %.04191549, %bb.ax ], [ %.04191549, %bb.fa ], [ %.04191549, %bb.fb ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %mygetopt_long.exit.thread ], [ %.04191549, %bb.ex ]
  %.04211547.be = phi i32 [ %.04211547, %.thread ], [ %.04211547, %bb.am ], [ %.04211547, %bb.an ], [ %.04211547, %bb.ao ], [ %.04211547, %bb.ap ], [ %.04211547, %bb.aq ], [ 1, %bb.ar ], [ %.04211547, %bb.as ], [ %.04211547, %bb.at ], [ %.04211547, %bb.au ], [ %.04211547, %bb.av ], [ %.04211547, %bb.aw ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %bb.ay ], [ %.04211547, %bb.ba ], [ %.04211547, %bb.bc ], [ %.04211547, %bb.be ], [ %.04211547, %bb.bg ], [ %.04211547, %bb.bi ], [ %.04211547, %bb.bk ], [ %.04211547, %bb.bm ], [ %.04211547, %bb.bo ], [ %.04211547, %bb.bq ], [ %.04211547, %bb.bs ], [ %.04211547, %bb.bt ], [ %.04211547, %bb.bu ], [ %.04211547, %bb.bv ], [ %.04211547, %bb.bw ], [ %.04211547, %bb.by ], [ %.04211547, %bb.bz ], [ %.04211547, %bb.ca ], [ %.04211547, %bb.cb ], [ %.04211547, %bb.cd ], [ %.04211547, %.loopexit ], [ %.04211547, %bb.cj ], [ %.04211547, %bb.ck ], [ %.04211547, %bb.cl ], [ %.04211547, %bb.cm ], [ %.04211547, %bb.cn ], [ %.04211547, %bb.co ], [ %.04211547, %bb.cp ], [ %.04211547, %bb.cq ], [ %.04211547, %bb.cr ], [ %.04211547, %bb.cs ], [ %.04211547, %bb.cw ], [ %.04211547, %bb.ax ], [ %.04211547, %bb.fa ], [ %.04211547, %bb.fb ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %mygetopt_long.exit.thread ], [ %.04211547, %bb.ex ]
  %.04231545.be = phi i32 [ %.04231545, %.thread ], [ %.04231545, %bb.am ], [ %.04231545, %bb.an ], [ %.04231545, %bb.ao ], [ %.04231545, %bb.ap ], [ %.04231545, %bb.aq ], [ 1, %bb.ar ], [ %.04231545, %bb.as ], [ %.04231545, %bb.at ], [ %.04231545, %bb.au ], [ %.04231545, %bb.av ], [ %.04231545, %bb.aw ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %bb.ay ], [ %.04231545, %bb.ba ], [ %.04231545, %bb.bc ], [ %.04231545, %bb.be ], [ %.04231545, %bb.bg ], [ %.04231545, %bb.bi ], [ %.04231545, %bb.bk ], [ %.04231545, %bb.bm ], [ %.04231545, %bb.bo ], [ %.04231545, %bb.bq ], [ %.04231545, %bb.bs ], [ %.04231545, %bb.bt ], [ %.04231545, %bb.bu ], [ %.04231545, %bb.bv ], [ %.04231545, %bb.bw ], [ %.04231545, %bb.by ], [ %.04231545, %bb.bz ], [ %.04231545, %bb.ca ], [ %.04231545, %bb.cb ], [ %.04231545, %bb.cd ], [ %.04231545, %.loopexit ], [ %.04231545, %bb.cj ], [ %.04231545, %bb.ck ], [ %.04231545, %bb.cl ], [ %.04231545, %bb.cm ], [ %.04231545, %bb.cn ], [ %.04231545, %bb.co ], [ %.04231545, %bb.cp ], [ %.04231545, %bb.cq ], [ %.04231545, %bb.cr ], [ %.04231545, %bb.cs ], [ %.04231545, %bb.cw ], [ %.04231545, %bb.ax ], [ %.04231545, %bb.fa ], [ %.04231545, %bb.fb ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %mygetopt_long.exit.thread ], [ %.04231545, %bb.ex ]
  %.04251543.be = phi i32 [ %.04251543, %.thread ], [ %.04251543, %bb.am ], [ %.04251543, %bb.an ], [ %.04251543, %bb.ao ], [ %.04251543, %bb.ap ], [ 1, %bb.aq ], [ %.04251543, %bb.ar ], [ %.04251543, %bb.as ], [ %.04251543, %bb.at ], [ %.04251543, %bb.au ], [ %.04251543, %bb.av ], [ %.04251543, %bb.aw ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %bb.ay ], [ %.04251543, %bb.ba ], [ %.04251543, %bb.bc ], [ %.04251543, %bb.be ], [ %.04251543, %bb.bg ], [ %.04251543, %bb.bi ], [ %.04251543, %bb.bk ], [ %.04251543, %bb.bm ], [ %.04251543, %bb.bo ], [ %.04251543, %bb.bq ], [ %.04251543, %bb.bs ], [ %.04251543, %bb.bt ], [ %.04251543, %bb.bu ], [ %.04251543, %bb.bv ], [ %.04251543, %bb.bw ], [ %.04251543, %bb.by ], [ %.04251543, %bb.bz ], [ %.04251543, %bb.ca ], [ %.04251543, %bb.cb ], [ %.04251543, %bb.cd ], [ %.04251543, %.loopexit ], [ %.04251543, %bb.cj ], [ %.04251543, %bb.ck ], [ %.04251543, %bb.cl ], [ %.04251543, %bb.cm ], [ %.04251543, %bb.cn ], [ %.04251543, %bb.co ], [ %.04251543, %bb.cp ], [ %.04251543, %bb.cq ], [ %.04251543, %bb.cr ], [ %.04251543, %bb.cs ], [ %.04251543, %bb.cw ], [ %.04251543, %bb.ax ], [ %.04251543, %bb.fa ], [ %.04251543, %bb.fb ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %mygetopt_long.exit.thread ], [ %.04251543, %bb.ex ]
  %.04271541.be = phi i32 [ %.04271541, %.thread ], [ %.04271541, %bb.am ], [ %.04271541, %bb.an ], [ %.04271541, %bb.ao ], [ 1, %bb.ap ], [ %.04271541, %bb.aq ], [ %.04271541, %bb.ar ], [ %.04271541, %bb.as ], [ %.04271541, %bb.at ], [ %.04271541, %bb.au ], [ %.04271541, %bb.av ], [ %.04271541, %bb.aw ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %bb.ay ], [ %.04271541, %bb.ba ], [ %.04271541, %bb.bc ], [ %.04271541, %bb.be ], [ %.04271541, %bb.bg ], [ %.04271541, %bb.bi ], [ %.04271541, %bb.bk ], [ %.04271541, %bb.bm ], [ %.04271541, %bb.bo ], [ %.04271541, %bb.bq ], [ %.04271541, %bb.bs ], [ %.04271541, %bb.bt ], [ %.04271541, %bb.bu ], [ %.04271541, %bb.bv ], [ %.04271541, %bb.bw ], [ %.04271541, %bb.by ], [ %.04271541, %bb.bz ], [ %.04271541, %bb.ca ], [ %.04271541, %bb.cb ], [ %.04271541, %bb.cd ], [ %.04271541, %.loopexit ], [ %.04271541, %bb.cj ], [ %.04271541, %bb.ck ], [ %.04271541, %bb.cl ], [ %.04271541, %bb.cm ], [ %.04271541, %bb.cn ], [ %.04271541, %bb.co ], [ %.04271541, %bb.cp ], [ %.04271541, %bb.cq ], [ %.04271541, %bb.cr ], [ %.04271541, %bb.cs ], [ %.04271541, %bb.cw ], [ %.04271541, %bb.ax ], [ %.04271541, %bb.fa ], [ %.04271541, %bb.fb ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %mygetopt_long.exit.thread ], [ %.04271541, %bb.ex ]
  %.04291539.be = phi i32 [ %.04291539, %.thread ], [ %.04291539, %bb.am ], [ %.04291539, %bb.an ], [ 1, %bb.ao ], [ %.04291539, %bb.ap ], [ %.04291539, %bb.aq ], [ %.04291539, %bb.ar ], [ %.04291539, %bb.as ], [ %.04291539, %bb.at ], [ %.04291539, %bb.au ], [ %.04291539, %bb.av ], [ %.04291539, %bb.aw ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %bb.ay ], [ %.04291539, %bb.ba ], [ %.04291539, %bb.bc ], [ %.04291539, %bb.be ], [ %.04291539, %bb.bg ], [ %.04291539, %bb.bi ], [ %.04291539, %bb.bk ], [ %.04291539, %bb.bm ], [ %.04291539, %bb.bo ], [ %.04291539, %bb.bq ], [ %.04291539, %bb.bs ], [ %.04291539, %bb.bt ], [ %.04291539, %bb.bu ], [ %.04291539, %bb.bv ], [ %.04291539, %bb.bw ], [ %.04291539, %bb.by ], [ %.04291539, %bb.bz ], [ %.04291539, %bb.ca ], [ %.04291539, %bb.cb ], [ %.04291539, %bb.cd ], [ %.04291539, %.loopexit ], [ %.04291539, %bb.cj ], [ %.04291539, %bb.ck ], [ %.04291539, %bb.cl ], [ %.04291539, %bb.cm ], [ %.04291539, %bb.cn ], [ %.04291539, %bb.co ], [ %.04291539, %bb.cp ], [ %.04291539, %bb.cq ], [ %.04291539, %bb.cr ], [ %.04291539, %bb.cs ], [ %.04291539, %bb.cw ], [ %.04291539, %bb.ax ], [ %.04291539, %bb.fa ], [ %.04291539, %bb.fb ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %mygetopt_long.exit.thread ], [ %.04291539, %bb.ex ]
  %.04311537.be = phi i32 [ %.04311537, %.thread ], [ %.04311537, %bb.am ], [ 0, %bb.an ], [ %.04311537, %bb.ao ], [ %.04311537, %bb.ap ], [ %.04311537, %bb.aq ], [ %.04311537, %bb.ar ], [ %.04311537, %bb.as ], [ %.04311537, %bb.at ], [ %.04311537, %bb.au ], [ %.04311537, %bb.av ], [ %.04311537, %bb.aw ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %bb.ay ], [ %.04311537, %bb.ba ], [ %.04311537, %bb.bc ], [ %.04311537, %bb.be ], [ %.04311537, %bb.bg ], [ %.04311537, %bb.bi ], [ %.04311537, %bb.bk ], [ %.04311537, %bb.bm ], [ %.04311537, %bb.bo ], [ %.04311537, %bb.bq ], [ %.04311537, %bb.bs ], [ %.04311537, %bb.bt ], [ %.04311537, %bb.bu ], [ %.04311537, %bb.bv ], [ %.04311537, %bb.bw ], [ %.04311537, %bb.by ], [ %.04311537, %bb.bz ], [ %.04311537, %bb.ca ], [ %.04311537, %bb.cb ], [ %.04311537, %bb.cd ], [ %.04311537, %.loopexit ], [ %.04311537, %bb.cj ], [ %.04311537, %bb.ck ], [ %.04311537, %bb.cl ], [ %.04311537, %bb.cm ], [ %.04311537, %bb.cn ], [ %.04311537, %bb.co ], [ %.04311537, %bb.cp ], [ %.04311537, %bb.cq ], [ %.04311537, %bb.cr ], [ %.04311537, %bb.cs ], [ %.04311537, %bb.cw ], [ %.04311537, %bb.ax ], [ %.04311537, %bb.fa ], [ %.04311537, %bb.fb ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %mygetopt_long.exit.thread ], [ %.04311537, %bb.ex ]
  %.04331535.be = phi i32 [ %.04331535, %.thread ], [ %.04331535, %bb.am ], [ %.04331535, %bb.an ], [ %.04331535, %bb.ao ], [ %.04331535, %bb.ap ], [ %.04331535, %bb.aq ], [ %.04331535, %bb.ar ], [ %.04331535, %bb.as ], [ %.04331535, %bb.at ], [ %.04331535, %bb.au ], [ %.04331535, %bb.av ], [ %.04331535, %bb.aw ], [ %.04331535, %mygetopt_long.exit.thread ], [ %i.cs, %bb.ay ], [ %.04331535, %bb.ba ], [ %.04331535, %bb.bc ], [ %.04331535, %bb.be ], [ %.04331535, %bb.bg ], [ %.04331535, %bb.bi ], [ %.04331535, %bb.bk ], [ %.04331535, %bb.bm ], [ %.04331535, %bb.bo ], [ %.04331535, %bb.bq ], [ %.04331535, %bb.bs ], [ %.04331535, %bb.bt ], [ %.04331535, %bb.bu ], [ %.04331535, %bb.bv ], [ %.04331535, %bb.bw ], [ %.04331535, %bb.by ], [ %.04331535, %bb.bz ], [ %.04331535, %bb.ca ], [ %.04331535, %bb.cb ], [ %.04331535, %bb.cd ], [ %.04331535, %.loopexit ], [ %.04331535, %bb.cj ], [ %.04331535, %bb.ck ], [ %.04331535, %bb.cl ], [ %.04331535, %bb.cm ], [ %.04331535, %bb.cn ], [ %.04331535, %bb.co ], [ %.04331535, %bb.cp ], [ %.04331535, %bb.cq ], [ %.04331535, %bb.cr ], [ %.04331535, %bb.cs ], [ %.04331535, %bb.cw ], [ -98, %bb.ax ], [ %.04331535, %bb.fa ], [ %.04331535, %bb.fb ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %mygetopt_long.exit.thread ], [ %.04331535, %bb.ex ]
  %.04361533.be = phi i32 [ %.04361533, %.thread ], [ %.04361533, %bb.am ], [ %.04361533, %bb.an ], [ %.04361533, %bb.ao ], [ %.04361533, %bb.ap ], [ %.04361533, %bb.aq ], [ %.04361533, %bb.ar ], [ %.04361533, %bb.as ], [ %.04361533, %bb.at ], [ %.04361533, %bb.au ], [ %.04361533, %bb.av ], [ %.04361533, %bb.aw ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %bb.ay ], [ %.04361533, %bb.ba ], [ %.04361533, %bb.bc ], [ %.04361533, %bb.be ], [ %.04361533, %bb.bg ], [ %.04361533, %bb.bi ], [ %.04361533, %bb.bk ], [ %.04361533, %bb.bm ], [ %.04361533, %bb.bo ], [ %.04361533, %bb.bq ], [ %.04361533, %bb.bs ], [ %.04361533, %bb.bt ], [ %.04361533, %bb.bu ], [ %.04361533, %bb.bv ], [ %.04361533, %bb.bw ], [ %.04361533, %bb.by ], [ %.04361533, %bb.bz ], [ %.04361533, %bb.ca ], [ %.04361533, %bb.cb ], [ %.04361533, %bb.cd ], [ %.04361533, %.loopexit ], [ 1, %bb.cj ], [ %.04361533, %bb.ck ], [ %.04361533, %bb.cl ], [ %.04361533, %bb.cm ], [ %.04361533, %bb.cn ], [ %.04361533, %bb.co ], [ %.04361533, %bb.cp ], [ %.04361533, %bb.cq ], [ %.04361533, %bb.cr ], [ %.04361533, %bb.cs ], [ %.04361533, %bb.cw ], [ %.04361533, %bb.ax ], [ %.04361533, %bb.fa ], [ %.04361533, %bb.fb ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %mygetopt_long.exit.thread ], [ %.04361533, %bb.ex ]
  %.04381531.be = phi i32 [ %.04381531, %.thread ], [ %.04381531, %bb.am ], [ %.04381531, %bb.an ], [ %.04381531, %bb.ao ], [ %.04381531, %bb.ap ], [ %.04381531, %bb.aq ], [ %.04381531, %bb.ar ], [ %.04381531, %bb.as ], [ %.04381531, %bb.at ], [ %.04381531, %bb.au ], [ %.04381531, %bb.av ], [ %.04381531, %bb.aw ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %bb.ay ], [ %.04381531, %bb.ba ], [ %.04381531, %bb.bc ], [ %.04381531, %bb.be ], [ %.04381531, %bb.bg ], [ %.04381531, %bb.bi ], [ %.04381531, %bb.bk ], [ %.04381531, %bb.bm ], [ %.04381531, %bb.bo ], [ %.04381531, %bb.bq ], [ %.04381531, %bb.bs ], [ %.04381531, %bb.bt ], [ %.04381531, %bb.bu ], [ %.04381531, %bb.bv ], [ %.04381531, %bb.bw ], [ %.04381531, %bb.by ], [ %.04381531, %bb.bz ], [ %.04381531, %bb.ca ], [ %.04381531, %bb.cb ], [ %.04381531, %bb.cd ], [ %.04381531, %.loopexit ], [ %.04381531, %bb.cj ], [ %.04381531, %bb.ck ], [ %.04381531, %bb.cl ], [ %.04381531, %bb.cm ], [ %.04381531, %bb.cn ], [ %.04381531, %bb.co ], [ %.04381531, %bb.cp ], [ %.04381531, %bb.cq ], [ %.04381531, %bb.cr ], [ %i.en, %bb.cs ], [ %.04381531, %bb.cw ], [ %.04381531, %bb.ax ], [ %.04381531, %bb.fa ], [ %.04381531, %bb.fb ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %mygetopt_long.exit.thread ], [ %.04381531, %bb.ex ]
  %.01529.be = phi i16 [ %.01529, %.thread ], [ %.01529, %bb.am ], [ %.01529, %bb.an ], [ %.01529, %bb.ao ], [ %.01529, %bb.ap ], [ %.01529, %bb.aq ], [ %.01529, %bb.ar ], [ %.01529, %bb.as ], [ %.01529, %bb.at ], [ %.01529, %bb.au ], [ %i.cn, %bb.av ], [ %.01529, %bb.aw ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %bb.ay ], [ %.01529, %bb.ba ], [ %.01529, %bb.bc ], [ %.01529, %bb.be ], [ %.01529, %bb.bg ], [ %.01529, %bb.bi ], [ %.01529, %bb.bk ], [ %.01529, %bb.bm ], [ %.01529, %bb.bo ], [ %.01529, %bb.bq ], [ %.01529, %bb.bs ], [ %.01529, %bb.bt ], [ %.01529, %bb.bu ], [ %.01529, %bb.bv ], [ %.01529, %bb.bw ], [ %.01529, %bb.by ], [ %.01529, %bb.bz ], [ %.01529, %bb.ca ], [ %.01529, %bb.cb ], [ %.01529, %bb.cd ], [ %.01529, %.loopexit ], [ %.01529, %bb.cj ], [ %.01529, %bb.ck ], [ %.01529, %bb.cl ], [ %.01529, %bb.cm ], [ %.01529, %bb.cn ], [ %.01529, %bb.co ], [ %.01529, %bb.cp ], [ %.01529, %bb.cq ], [ %.01529, %bb.cr ], [ %.01529, %bb.cs ], [ %.01529, %bb.cw ], [ %.01529, %bb.ax ], [ %.01529, %bb.fa ], [ %.01529, %bb.fb ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %mygetopt_long.exit.thread ], [ %.01529, %bb.ex ]
  %.be = phi i32 [ 33, %.thread ], [ %i.v, %bb.am ], [ %i.v, %bb.an ], [ %i.v, %bb.ao ], [ %i.v, %bb.ap ], [ %i.v, %bb.aq ], [ %i.v, %bb.ar ], [ %i.v, %bb.as ], [ %i.v, %bb.at ], [ %i.v, %bb.au ], [ %i.v, %bb.av ], [ %i.v, %bb.aw ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %bb.ay ], [ %i.v, %bb.ba ], [ %i.v, %bb.bc ], [ %i.v, %bb.be ], [ %i.v, %bb.bg ], [ %i.v, %bb.bi ], [ %i.v, %bb.bk ], [ %i.v, %bb.bm ], [ %i.v, %bb.bo ], [ %i.v, %bb.bq ], [ %i.v, %bb.bs ], [ %i.v, %bb.bt ], [ %i.v, %bb.bu ], [ %i.v, %bb.bv ], [ %i.v, %bb.bw ], [ %i.v, %bb.by ], [ %i.v, %bb.bz ], [ %i.v, %bb.ca ], [ %i.v, %bb.cb ], [ %i.v, %bb.cd ], [ %i.v, %.loopexit ], [ %i.v, %bb.cj ], [ %i.v, %bb.ck ], [ %i.v, %bb.cl ], [ %i.v, %bb.cm ], [ %i.v, %bb.cn ], [ %i.v, %bb.co ], [ %i.v, %bb.cp ], [ %i.v, %bb.cq ], [ %i.v, %bb.cr ], [ %i.v, %bb.cs ], [ %i.v, %bb.cw ], [ %i.v, %bb.ax ], [ %i.v, %bb.fa ], [ %i.v, %bb.fb ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.v, %mygetopt_long.exit.thread ], [ %i.jk, %bb.ex ]
  br label %.lr.ph

bb.ex:                                            ; preds = %.preheader718.16
  %i.jn = icmp slt i32 %i.jk, 1
  br i1 %i.jn, label %bb.ey, label %.lr.ph.backedge

bb.ey:                                            ; preds = %bb.ex
  %.b470 = load i1, ptr @quieter, align 4
  br i1 %.b470, label %bb.ez, label %.sink.split

.sink.split:                                      ; preds = %bb.ey
  %i.jo = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.jp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jo, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.er) #21 ; 0 uses
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.sink.split
  tail call void @exit(i32 noundef 1) #26
  unreachable

bb.fa:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.fb:                                            ; preds = %mygetopt_long.exit.thread
  store i1 true, ptr @quieter, align 4
  br label %.lr.ph.backedge

bb.fc:                                            ; preds = %mygetopt_long.exit.thread
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #26
  unreachable

mygetopt_long.exit.thread677.sink.split:          ; preds = %.thread1.i, %bb.h, %bb.j
  %.sink = phi ptr [ %i.ar, %bb.j ], [ %i.aj, %bb.h ], [ null, %.thread1.i ]
  store ptr %.sink, ptr @myoptarg, align 8, !tbaa !20
  br label %mygetopt_long.exit.thread677

mygetopt_long.exit.thread677:                     ; preds = %bb.p, %bb.u, %mygetopt_long.exit, %mygetopt_long.exit.thread677.sink.split, %bb.i
  store i32 0, ptr @myoptind, align 4, !tbaa !9
  %i.jq = icmp eq i32 %.04331535, -99
  %.not475 = icmp eq i32 %.04231545, 0            ; 2 uses
  br i1 %i.jq, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %mygetopt_long.exit.thread677
  %. = select i1 %.not475, i32 3, i32 -2
  br label %err_sys_ex.exit.thread

bb.fe:                                            ; preds = %mygetopt_long.exit.thread677
  br i1 %.not475, label %err_sys_ex.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  switch i32 %.04331535, label %err_sys_ex.exit [
    i32 3, label %err_sys_ex.exit.thread
    i32 4, label %bb.fg
    i32 2, label %switch.edge
  ]

bb.fg:                                            ; preds = %bb.ff
  %i.jr = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.js = icmp eq i32 %i.jr, 1
  br i1 %i.js, label %bb.fh, label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  %.b2.i = load i1, ptr @quieter, align 4
  br i1 %.b2.i, label %err_sys_ex.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.jt = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ju = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jt, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.39) #21 ; 0 uses
  %.b.pr.i = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i, label %err_sys_ex.exit, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.jv = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.jv) #22 ; 0 uses
  br label %err_sys_ex.exit

bb.fk:                                            ; preds = %bb.fg
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.39) #23
  unreachable

switch.edge:                                      ; preds = %bb.ff
  br label %err_sys_ex.exit.thread

err_sys_ex.exit:                                  ; preds = %bb.ff, %bb.fj, %bb.fi, %bb.fh, %bb.fe
  %.0433146925172664 = phi i32 [ %.04331535, %bb.fe ], [ %.04331535, %bb.ff ], [ 4, %bb.fj ], [ 4, %bb.fi ], [ 4, %bb.fh ] ; 3 uses
  %.0423137425262659 = phi i32 [ 0, %bb.fe ], [ %.04231545, %bb.ff ], [ %.04231545, %bb.fj ], [ %.04231545, %bb.fi ], [ %.04231545, %bb.fh ] ; 2 uses
  %i.jw = icmp sgt i32 %.0433146925172664, 3      ; 2 uses
  %i.jx = icmp eq i32 %.04111557, 0
  %not. = xor i1 %i.jw, true
  %or.cond15 = or i1 %i.jx, %not.
  %.b465 = load i1, ptr @quieter, align 4
  %or.cond95 = select i1 %or.cond15, i1 true, i1 %.b465
  br i1 %or.cond95, label %err_sys_ex.exit.thread, label %bb.fl

bb.fl:                                            ; preds = %err_sys_ex.exit
  %i.jy = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.40, i64 51, i64 1, ptr %i.jy) #22 ; 0 uses
  br label %err_sys_ex.exit.thread

err_sys_ex.exit.thread:                           ; preds = %bb.ff, %switch.edge, %bb.fd, %bb.fl, %err_sys_ex.exit
  %.042313742527 = phi i32 [ %.0423137425262659, %err_sys_ex.exit ], [ %.0423137425262659, %bb.fl ], [ %.04231545, %bb.fd ], [ 1, %switch.edge ], [ 1, %bb.ff ]
  %i.jz = phi i1 [ %i.jw, %err_sys_ex.exit ], [ true, %bb.fl ], [ false, %bb.fd ], [ false, %switch.edge ], [ false, %bb.ff ] ; 9 uses
  %.2435686 = phi i32 [ %.0433146925172664, %err_sys_ex.exit ], [ %.0433146925172664, %bb.fl ], [ %., %bb.fd ], [ -1, %switch.edge ], [ -2, %bb.ff ] ; 3 uses
  %.not476 = icmp eq i32 %.03601597, 0            ; 8 uses
  br i1 %.not476, label %bb.fr, label %bb.fm

bb.fm:                                            ; preds = %err_sys_ex.exit.thread
  %i.ka = and i32 %.2435686, -2
  %or.cond17 = icmp eq i32 %i.ka, -98
  br i1 %or.cond17, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %.b468 = load i1, ptr @quieter, align 4
  br i1 %.b468, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.kb = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite477 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 96, i64 1, ptr %i.kb) #22 ; 0 uses
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fm
  switch i32 %.2435686, label %bb.fq [
    i32 4, label %err_sys_ex.exit557
    i32 -4, label %bb.fy
  ]

bb.fq:                                            ; preds = %bb.fp
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.42) #23
  unreachable

bb.fr:                                            ; preds = %bb.fo, %bb.fn, %err_sys_ex.exit.thread
  switch i32 %.2435686, label %bb.fy [
    i32 3, label %err_sys_ex.exit557
    i32 4, label %bb.fs
    i32 -98, label %bb.ft
  ]

bb.fs:                                            ; preds = %bb.fr
  br label %err_sys_ex.exit557

bb.ft:                                            ; preds = %bb.fr
  %.not478 = icmp eq i32 %.042313742527, 0
  br i1 %.not478, label %err_sys_ex.exit557, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.kc = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.kd = icmp eq i32 %i.kc, 1
  br i1 %i.kd, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %bb.fu
  %.b2.i546 = load i1, ptr @quieter, align 4
  br i1 %.b2.i546, label %err_sys_ex.exit557.thread, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ke = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.kf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ke, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.43) #21 ; 0 uses
  %.b.pr.i547 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i547, label %.critedge545, label %.critedge545.sink.split

bb.fx:                                            ; preds = %bb.fu
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.43) #23
  unreachable

bb.fy:                                            ; preds = %bb.fp, %bb.fr
  %.not4763012 = phi i1 [ false, %bb.fp ], [ %.not476, %bb.fr ] ; 3 uses
  %i.kg = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.kh = icmp eq i32 %i.kg, 1
  br i1 %i.kh, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %.b2.i550 = load i1, ptr @quieter, align 4
  br i1 %.b2.i550, label %err_sys_ex.exit557.thread, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ki = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.kj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ki, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.44) #21 ; 0 uses
  %.b.pr.i551 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i551, label %.critedge545, label %.critedge545.sink.split

bb.gb:                                            ; preds = %bb.fy
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.44) #23
  unreachable

.critedge545.sink.split:                          ; preds = %bb.ga, %bb.fw
  %.not4763007.ph = phi i1 [ %.not476, %bb.fw ], [ %.not4763012, %bb.ga ]
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i552 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.kk) #22 ; 0 uses
  br label %.critedge545

.critedge545:                                     ; preds = %.critedge545.sink.split, %bb.ga, %bb.fw
  %.not4763007 = phi i1 [ %.not476, %bb.fw ], [ %.not4763012, %bb.ga ], [ %.not4763007.ph, %.critedge545.sink.split ] ; 3 uses
  %.pr = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.kl = icmp eq i32 %.pr, 1
  br i1 %i.kl, label %.critedge545.thread, label %bb.ge

.critedge545.thread:                              ; preds = %.critedge545
  %.b2.i554.pr = load i1, ptr @quieter, align 4
  br i1 %.b2.i554.pr, label %err_sys_ex.exit557.thread, label %bb.gc

bb.gc:                                            ; preds = %.critedge545.thread
  %i.km = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.kn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.km, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.45) #21 ; 0 uses
  %.b.pr.i555 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i555, label %err_sys_ex.exit557.thread, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ko = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i556 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.ko) #22 ; 0 uses
  br label %err_sys_ex.exit557.thread

bb.ge:                                            ; preds = %.critedge545
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.45) #23
  unreachable

err_sys_ex.exit557:                               ; preds = %bb.fp, %.thread3013, %bb.ft, %bb.fr, %bb.fs
  %.not4763011 = phi i1 [ %.not476, %bb.ft ], [ %.not476, %bb.fr ], [ true, %.thread3013 ], [ false, %bb.fp ], [ %.not476, %bb.fs ] ; 2 uses
  %i.kp = phi i1 [ %i.jz, %bb.ft ], [ %i.jz, %bb.fr ], [ false, %.thread3013 ], [ %i.jz, %bb.fp ], [ %i.jz, %bb.fs ] ; 2 uses
  %.0152625113009 = phi i16 [ %.01529, %bb.ft ], [ %.01529, %bb.fr ], [ 11111, %.thread3013 ], [ %.01529, %bb.fp ], [ %.01529, %bb.fs ] ; 2 uses
  %.0438150725133002 = phi i32 [ %.04381531, %bb.ft ], [ %.04381531, %bb.fr ], [ -99, %.thread3013 ], [ %.04381531, %bb.fp ], [ %.04381531, %bb.fs ] ; 2 uses
  %.0436148825152995 = phi i32 [ %.04361533, %bb.ft ], [ %.04361533, %bb.fr ], [ 0, %.thread3013 ], [ %.04361533, %bb.fp ], [ %.04361533, %bb.fs ] ; 2 uses
  %.0431145025182988 = phi i32 [ %.04311537, %bb.ft ], [ %.04311537, %bb.fr ], [ 1, %.thread3013 ], [ %.04311537, %bb.fp ], [ %.04311537, %bb.fs ] ; 2 uses
  %.0429143125202981 = phi i32 [ %.04291539, %bb.ft ], [ %.04291539, %bb.fr ], [ 0, %.thread3013 ], [ %.04291539, %bb.fp ], [ %.04291539, %bb.fs ] ; 2 uses
  %.0427141225222974 = phi i32 [ %.04271541, %bb.ft ], [ %.04271541, %bb.fr ], [ 0, %.thread3013 ], [ %.04271541, %bb.fp ], [ %.04271541, %bb.fs ] ; 2 uses
  %.0425139325242967 = phi i32 [ %.04251543, %bb.ft ], [ %.04251543, %bb.fr ], [ 0, %.thread3013 ], [ %.04251543, %bb.fp ], [ %.04251543, %bb.fs ] ; 2 uses
  %.0421135525282959 = phi i32 [ %.04211547, %bb.ft ], [ %.04211547, %bb.fr ], [ 0, %.thread3013 ], [ %.04211547, %bb.fp ], [ %.04211547, %bb.fs ] ; 2 uses
  %.0419133625302952 = phi i32 [ %.04191549, %bb.ft ], [ %.04191549, %bb.fr ], [ 0, %.thread3013 ], [ %.04191549, %bb.fp ], [ %.04191549, %bb.fs ] ; 2 uses
  %.0417131725322945 = phi i32 [ %.04171551, %bb.ft ], [ %.04171551, %bb.fr ], [ 0, %.thread3013 ], [ %.04171551, %bb.fp ], [ %.04171551, %bb.fs ] ; 2 uses
  %.0415129825342938 = phi i32 [ %.04151553, %bb.ft ], [ %.04151553, %bb.fr ], [ 0, %.thread3013 ], [ %.04151553, %bb.fp ], [ %.04151553, %bb.fs ] ; 2 uses
  %.0413127925362931 = phi i32 [ %.04131555, %bb.ft ], [ %.04131555, %bb.fr ], [ 0, %.thread3013 ], [ %.04131555, %bb.fp ], [ %.04131555, %bb.fs ] ; 2 uses
  %.0411126025382924 = phi i32 [ %.04111557, %bb.ft ], [ %.04111557, %bb.fr ], [ 0, %.thread3013 ], [ %.04111557, %bb.fp ], [ %.04111557, %bb.fs ] ; 2 uses
  %.0406124125402917 = phi i32 [ %.04061559, %bb.ft ], [ %.04061559, %bb.fr ], [ 1, %.thread3013 ], [ %.04061559, %bb.fp ], [ %.04061559, %bb.fs ] ; 2 uses
  %.0403122225422910 = phi i32 [ %.04031561, %bb.ft ], [ %.04031561, %bb.fr ], [ 0, %.thread3013 ], [ %.04031561, %bb.fp ], [ %.04031561, %bb.fs ] ; 2 uses
  %.0400120325442903 = phi i32 [ %.04001563, %bb.ft ], [ %.04001563, %bb.fr ], [ 16384, %.thread3013 ], [ %.04001563, %bb.fp ], [ %.04001563, %bb.fs ] ; 2 uses
  %.0398118425462896 = phi i64 [ %.03981565, %bb.ft ], [ %.03981565, %bb.fr ], [ 0, %.thread3013 ], [ %.03981565, %bb.fp ], [ %.03981565, %bb.fs ] ; 2 uses
  %.0396116525482889 = phi i32 [ %.03961567, %bb.ft ], [ %.03961567, %bb.fr ], [ 1024, %.thread3013 ], [ %.03961567, %bb.fp ], [ %.03961567, %bb.fs ] ; 2 uses
  %.0388114625502882 = phi ptr [ %.03881569, %bb.ft ], [ %.03881569, %bb.fr ], [ null, %.thread3013 ], [ %.03881569, %bb.fp ], [ %.03881569, %bb.fs ] ; 2 uses
  %.0386112725522875 = phi ptr [ %.03861571, %bb.ft ], [ %.03861571, %bb.fr ], [ null, %.thread3013 ], [ %.03861571, %bb.fp ], [ %.03861571, %bb.fs ] ; 2 uses
  %.0384110825542868 = phi i32 [ %.03841573, %bb.ft ], [ %.03841573, %bb.fr ], [ 0, %.thread3013 ], [ %.03841573, %bb.fp ], [ %.03841573, %bb.fs ] ; 2 uses
  %.0382108925562861 = phi ptr [ %.03821575, %bb.ft ], [ %.03821575, %bb.fr ], [ @.str.14, %.thread3013 ], [ %.03821575, %bb.fp ], [ %.03821575, %bb.fs ] ; 2 uses
  %.0380107025582854 = phi ptr [ %.03801577, %bb.ft ], [ %.03801577, %bb.fr ], [ @.str.15, %.thread3013 ], [ %.03801577, %bb.fp ], [ %.03801577, %bb.fs ] ; 2 uses
  %.0378105125602847 = phi ptr [ %.03781579, %bb.ft ], [ %.03781579, %bb.fr ], [ @.str.16, %.thread3013 ], [ %.03781579, %bb.fp ], [ %.03781579, %bb.fs ] ; 2 uses
  %.0376103225622840 = phi ptr [ %.03761581, %bb.ft ], [ %.03761581, %bb.fr ], [ @.str.13, %.thread3013 ], [ %.03761581, %bb.fp ], [ %.03761581, %bb.fs ] ; 2 uses
  %.0374101325642833 = phi ptr [ %.03741583, %bb.ft ], [ %.03741583, %bb.fr ], [ null, %.thread3013 ], [ %.03741583, %bb.fp ], [ %.03741583, %bb.fs ] ; 2 uses
  %.037299425662826 = phi i32 [ %.03721585, %bb.ft ], [ %.03721585, %bb.fr ], [ 0, %.thread3013 ], [ %.03721585, %bb.fp ], [ %.03721585, %bb.fs ] ; 2 uses
  %.037097525682819 = phi i32 [ %.03701587, %bb.ft ], [ %.03701587, %bb.fr ], [ 0, %.thread3013 ], [ %.03701587, %bb.fp ], [ %.03701587, %bb.fs ] ; 2 uses
  %.036895625702812 = phi i32 [ %.03681589, %bb.ft ], [ %.03681589, %bb.fr ], [ 0, %.thread3013 ], [ %.03681589, %bb.fp ], [ %.03681589, %bb.fs ] ; 2 uses
  %.036693725722805 = phi i32 [ %.03661591, %bb.ft ], [ %.03661591, %bb.fr ], [ 0, %.thread3013 ], [ %.03661591, %bb.fp ], [ %.03661591, %bb.fs ] ; 2 uses
  %.036491825742798 = phi i32 [ %.03641593, %bb.ft ], [ %.03641593, %bb.fr ], [ 1, %.thread3013 ], [ %.03641593, %bb.fp ], [ %.03641593, %bb.fs ] ; 2 uses
  %.036289925762791 = phi i32 [ %.03621595, %bb.ft ], [ %.03621595, %bb.fr ], [ 0, %.thread3013 ], [ %.03621595, %bb.fp ], [ %.03621595, %bb.fs ] ; 2 uses
  %.035886125802777 = phi ptr [ %.03581599, %bb.ft ], [ %.03581599, %bb.fr ], [ null, %.thread3013 ], [ %.03581599, %bb.fp ], [ %.03581599, %bb.fs ] ; 2 uses
  %.035684225822770 = phi i32 [ %.03561601, %bb.ft ], [ %.03561601, %bb.fr ], [ 0, %.thread3013 ], [ %.03561601, %bb.fp ], [ %.03561601, %bb.fs ] ; 2 uses
  %.035482325842763 = phi i32 [ %.03541603, %bb.ft ], [ %.03541603, %bb.fr ], [ 0, %.thread3013 ], [ %.03541603, %bb.fp ], [ %.03541603, %bb.fs ] ; 2 uses
  %.035280425862756 = phi i32 [ %.03521605, %bb.ft ], [ %.03521605, %bb.fr ], [ 0, %.thread3013 ], [ %.03521605, %bb.fp ], [ %.03521605, %bb.fs ] ; 2 uses
  %.0446 = phi ptr [ @wolfSSLv23_server_method_ex, %bb.ft ], [ @wolfTLSv1_2_server_method_ex, %bb.fr ], [ @wolfTLSv1_2_server_method_ex, %.thread3013 ], [ @wolfTLSv1_3_server_method_ex, %bb.fp ], [ @wolfTLSv1_3_server_method_ex, %bb.fs ]
  %i.kq = tail call ptr %.0446(ptr noundef null) #20, !callees !41
  %i.kr = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.kq) #20 ; 2 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %err_sys_ex.exit557.thread, label %err_sys_ex.exit561

err_sys_ex.exit557.thread:                        ; preds = %bb.fz, %bb.fv, %bb.gd, %bb.gc, %.critedge545.thread, %err_sys_ex.exit557
  %.not4763009 = phi i1 [ %.not4763012, %bb.fz ], [ %.not476, %bb.fv ], [ %.not4763007, %bb.gd ], [ %.not4763007, %bb.gc ], [ %.not4763007, %.critedge545.thread ], [ %.not4763011, %err_sys_ex.exit557 ] ; 3 uses
  %i.kt = phi i1 [ %i.jz, %bb.fz ], [ %i.jz, %bb.fv ], [ %i.jz, %bb.gd ], [ %i.jz, %bb.gc ], [ %i.jz, %.critedge545.thread ], [ %i.kp, %err_sys_ex.exit557 ] ; 3 uses
  %.0152625113007 = phi i16 [ %.01529, %bb.fz ], [ %.01529, %bb.fv ], [ %.01529, %bb.gd ], [ %.01529, %bb.gc ], [ %.01529, %.critedge545.thread ], [ %.0152625113009, %err_sys_ex.exit557 ] ; 3 uses
  %.0438150725133000 = phi i32 [ %.04381531, %bb.fz ], [ %.04381531, %bb.fv ], [ %.04381531, %bb.gd ], [ %.04381531, %bb.gc ], [ %.04381531, %.critedge545.thread ], [ %.0438150725133002, %err_sys_ex.exit557 ] ; 3 uses
  %.0436148825152993 = phi i32 [ %.04361533, %bb.fz ], [ %.04361533, %bb.fv ], [ %.04361533, %bb.gd ], [ %.04361533, %bb.gc ], [ %.04361533, %.critedge545.thread ], [ %.0436148825152995, %err_sys_ex.exit557 ] ; 3 uses
  %.0431145025182986 = phi i32 [ %.04311537, %bb.fz ], [ %.04311537, %bb.fv ], [ %.04311537, %bb.gd ], [ %.04311537, %bb.gc ], [ %.04311537, %.critedge545.thread ], [ %.0431145025182988, %err_sys_ex.exit557 ] ; 3 uses
  %.0429143125202979 = phi i32 [ %.04291539, %bb.fz ], [ %.04291539, %bb.fv ], [ %.04291539, %bb.gd ], [ %.04291539, %bb.gc ], [ %.04291539, %.critedge545.thread ], [ %.0429143125202981, %err_sys_ex.exit557 ] ; 3 uses
  %.0427141225222972 = phi i32 [ %.04271541, %bb.fz ], [ %.04271541, %bb.fv ], [ %.04271541, %bb.gd ], [ %.04271541, %bb.gc ], [ %.04271541, %.critedge545.thread ], [ %.0427141225222974, %err_sys_ex.exit557 ] ; 3 uses
  %.0425139325242965 = phi i32 [ %.04251543, %bb.fz ], [ %.04251543, %bb.fv ], [ %.04251543, %bb.gd ], [ %.04251543, %bb.gc ], [ %.04251543, %.critedge545.thread ], [ %.0425139325242967, %err_sys_ex.exit557 ] ; 3 uses
  %.0421135525282957 = phi i32 [ %.04211547, %bb.fz ], [ %.04211547, %bb.fv ], [ %.04211547, %bb.gd ], [ %.04211547, %bb.gc ], [ %.04211547, %.critedge545.thread ], [ %.0421135525282959, %err_sys_ex.exit557 ] ; 3 uses
  %.0419133625302950 = phi i32 [ %.04191549, %bb.fz ], [ %.04191549, %bb.fv ], [ %.04191549, %bb.gd ], [ %.04191549, %bb.gc ], [ %.04191549, %.critedge545.thread ], [ %.0419133625302952, %err_sys_ex.exit557 ] ; 3 uses
  %.0417131725322943 = phi i32 [ %.04171551, %bb.fz ], [ %.04171551, %bb.fv ], [ %.04171551, %bb.gd ], [ %.04171551, %bb.gc ], [ %.04171551, %.critedge545.thread ], [ %.0417131725322945, %err_sys_ex.exit557 ] ; 3 uses
  %.0415129825342936 = phi i32 [ %.04151553, %bb.fz ], [ %.04151553, %bb.fv ], [ %.04151553, %bb.gd ], [ %.04151553, %bb.gc ], [ %.04151553, %.critedge545.thread ], [ %.0415129825342938, %err_sys_ex.exit557 ] ; 3 uses
  %.0413127925362929 = phi i32 [ %.04131555, %bb.fz ], [ %.04131555, %bb.fv ], [ %.04131555, %bb.gd ], [ %.04131555, %bb.gc ], [ %.04131555, %.critedge545.thread ], [ %.0413127925362931, %err_sys_ex.exit557 ] ; 3 uses
  %.0411126025382922 = phi i32 [ %.04111557, %bb.fz ], [ %.04111557, %bb.fv ], [ %.04111557, %bb.gd ], [ %.04111557, %bb.gc ], [ %.04111557, %.critedge545.thread ], [ %.0411126025382924, %err_sys_ex.exit557 ] ; 3 uses
  %.0406124125402915 = phi i32 [ %.04061559, %bb.fz ], [ %.04061559, %bb.fv ], [ %.04061559, %bb.gd ], [ %.04061559, %bb.gc ], [ %.04061559, %.critedge545.thread ], [ %.0406124125402917, %err_sys_ex.exit557 ] ; 3 uses
  %.0403122225422908 = phi i32 [ %.04031561, %bb.fz ], [ %.04031561, %bb.fv ], [ %.04031561, %bb.gd ], [ %.04031561, %bb.gc ], [ %.04031561, %.critedge545.thread ], [ %.0403122225422910, %err_sys_ex.exit557 ] ; 3 uses
  %.0400120325442901 = phi i32 [ %.04001563, %bb.fz ], [ %.04001563, %bb.fv ], [ %.04001563, %bb.gd ], [ %.04001563, %bb.gc ], [ %.04001563, %.critedge545.thread ], [ %.0400120325442903, %err_sys_ex.exit557 ] ; 3 uses
  %.0398118425462894 = phi i64 [ %.03981565, %bb.fz ], [ %.03981565, %bb.fv ], [ %.03981565, %bb.gd ], [ %.03981565, %bb.gc ], [ %.03981565, %.critedge545.thread ], [ %.0398118425462896, %err_sys_ex.exit557 ] ; 3 uses
  %.0396116525482887 = phi i32 [ %.03961567, %bb.fz ], [ %.03961567, %bb.fv ], [ %.03961567, %bb.gd ], [ %.03961567, %bb.gc ], [ %.03961567, %.critedge545.thread ], [ %.0396116525482889, %err_sys_ex.exit557 ] ; 3 uses
  %.0388114625502880 = phi ptr [ %.03881569, %bb.fz ], [ %.03881569, %bb.fv ], [ %.03881569, %bb.gd ], [ %.03881569, %bb.gc ], [ %.03881569, %.critedge545.thread ], [ %.0388114625502882, %err_sys_ex.exit557 ] ; 3 uses
  %.0386112725522873 = phi ptr [ %.03861571, %bb.fz ], [ %.03861571, %bb.fv ], [ %.03861571, %bb.gd ], [ %.03861571, %bb.gc ], [ %.03861571, %.critedge545.thread ], [ %.0386112725522875, %err_sys_ex.exit557 ] ; 3 uses
  %.0384110825542866 = phi i32 [ %.03841573, %bb.fz ], [ %.03841573, %bb.fv ], [ %.03841573, %bb.gd ], [ %.03841573, %bb.gc ], [ %.03841573, %.critedge545.thread ], [ %.0384110825542868, %err_sys_ex.exit557 ] ; 3 uses
  %.0382108925562859 = phi ptr [ %.03821575, %bb.fz ], [ %.03821575, %bb.fv ], [ %.03821575, %bb.gd ], [ %.03821575, %bb.gc ], [ %.03821575, %.critedge545.thread ], [ %.0382108925562861, %err_sys_ex.exit557 ] ; 3 uses
  %.0380107025582852 = phi ptr [ %.03801577, %bb.fz ], [ %.03801577, %bb.fv ], [ %.03801577, %bb.gd ], [ %.03801577, %bb.gc ], [ %.03801577, %.critedge545.thread ], [ %.0380107025582854, %err_sys_ex.exit557 ] ; 3 uses
  %.0378105125602845 = phi ptr [ %.03781579, %bb.fz ], [ %.03781579, %bb.fv ], [ %.03781579, %bb.gd ], [ %.03781579, %bb.gc ], [ %.03781579, %.critedge545.thread ], [ %.0378105125602847, %err_sys_ex.exit557 ] ; 3 uses
  %.0376103225622838 = phi ptr [ %.03761581, %bb.fz ], [ %.03761581, %bb.fv ], [ %.03761581, %bb.gd ], [ %.03761581, %bb.gc ], [ %.03761581, %.critedge545.thread ], [ %.0376103225622840, %err_sys_ex.exit557 ] ; 3 uses
  %.0374101325642831 = phi ptr [ %.03741583, %bb.fz ], [ %.03741583, %bb.fv ], [ %.03741583, %bb.gd ], [ %.03741583, %bb.gc ], [ %.03741583, %.critedge545.thread ], [ %.0374101325642833, %err_sys_ex.exit557 ] ; 3 uses
  %.037299425662824 = phi i32 [ %.03721585, %bb.fz ], [ %.03721585, %bb.fv ], [ %.03721585, %bb.gd ], [ %.03721585, %bb.gc ], [ %.03721585, %.critedge545.thread ], [ %.037299425662826, %err_sys_ex.exit557 ] ; 3 uses
  %.037097525682817 = phi i32 [ %.03701587, %bb.fz ], [ %.03701587, %bb.fv ], [ %.03701587, %bb.gd ], [ %.03701587, %bb.gc ], [ %.03701587, %.critedge545.thread ], [ %.037097525682819, %err_sys_ex.exit557 ] ; 3 uses
  %.036895625702810 = phi i32 [ %.03681589, %bb.fz ], [ %.03681589, %bb.fv ], [ %.03681589, %bb.gd ], [ %.03681589, %bb.gc ], [ %.03681589, %.critedge545.thread ], [ %.036895625702812, %err_sys_ex.exit557 ] ; 3 uses
  %.036693725722803 = phi i32 [ %.03661591, %bb.fz ], [ %.03661591, %bb.fv ], [ %.03661591, %bb.gd ], [ %.03661591, %bb.gc ], [ %.03661591, %.critedge545.thread ], [ %.036693725722805, %err_sys_ex.exit557 ] ; 3 uses
  %.036491825742796 = phi i32 [ %.03641593, %bb.fz ], [ %.03641593, %bb.fv ], [ %.03641593, %bb.gd ], [ %.03641593, %bb.gc ], [ %.03641593, %.critedge545.thread ], [ %.036491825742798, %err_sys_ex.exit557 ] ; 3 uses
  %.036289925762789 = phi i32 [ %.03621595, %bb.fz ], [ %.03621595, %bb.fv ], [ %.03621595, %bb.gd ], [ %.03621595, %bb.gc ], [ %.03621595, %.critedge545.thread ], [ %.036289925762791, %err_sys_ex.exit557 ] ; 3 uses
  %.035886125802775 = phi ptr [ %.03581599, %bb.fz ], [ %.03581599, %bb.fv ], [ %.03581599, %bb.gd ], [ %.03581599, %bb.gc ], [ %.03581599, %.critedge545.thread ], [ %.035886125802777, %err_sys_ex.exit557 ] ; 3 uses
  %.035684225822768 = phi i32 [ %.03561601, %bb.fz ], [ %.03561601, %bb.fv ], [ %.03561601, %bb.gd ], [ %.03561601, %bb.gc ], [ %.03561601, %.critedge545.thread ], [ %.035684225822770, %err_sys_ex.exit557 ] ; 3 uses
  %.035482325842761 = phi i32 [ %.03541603, %bb.fz ], [ %.03541603, %bb.fv ], [ %.03541603, %bb.gd ], [ %.03541603, %bb.gc ], [ %.03541603, %.critedge545.thread ], [ %.035482325842763, %err_sys_ex.exit557 ] ; 3 uses
  %.035280425862754 = phi i32 [ %.03521605, %bb.fz ], [ %.03521605, %bb.fv ], [ %.03521605, %bb.gd ], [ %.03521605, %bb.gc ], [ %.03521605, %.critedge545.thread ], [ %.035280425862756, %err_sys_ex.exit557 ] ; 3 uses
  %i.ku = load i32, ptr @catastrophic, align 4, !tbaa !9
  %i.kv = icmp eq i32 %i.ku, 1
  br i1 %i.kv, label %bb.gf, label %bb.gi

bb.gf:                                            ; preds = %err_sys_ex.exit557.thread
  %.b2.i558 = load i1, ptr @quieter, align 4
  br i1 %.b2.i558, label %err_sys_ex.exit561, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.kw = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.kx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kw, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.46) #21 ; 0 uses
  %.b.pr.i559 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i559, label %err_sys_ex.exit561, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ky = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i560 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.ky) #22 ; 0 uses
  br label %err_sys_ex.exit561

bb.gi:                                            ; preds = %err_sys_ex.exit557.thread
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.46) #23
  unreachable

err_sys_ex.exit561:                               ; preds = %bb.gh, %bb.gg, %bb.gf, %err_sys_ex.exit557
  %.not4763008 = phi i1 [ %.not4763011, %err_sys_ex.exit557 ], [ %.not4763009, %bb.gf ], [ %.not4763009, %bb.gg ], [ %.not4763009, %bb.gh ]
  %i.kz = phi i1 [ %i.kp, %err_sys_ex.exit557 ], [ %i.kt, %bb.gf ], [ %i.kt, %bb.gg ], [ %i.kt, %bb.gh ]
  %.0152625113006 = phi i16 [ %.0152625113009, %err_sys_ex.exit557 ], [ %.0152625113007, %bb.gf ], [ %.0152625113007, %bb.gg ], [ %.0152625113007, %bb.gh ]
  %.0438150725132999 = phi i32 [ %.0438150725133002, %err_sys_ex.exit557 ], [ %.0438150725133000, %bb.gf ], [ %.0438150725133000, %bb.gg ], [ %.0438150725133000, %bb.gh ] ; 2 uses
  %.0436148825152992 = phi i32 [ %.0436148825152995, %err_sys_ex.exit557 ], [ %.0436148825152993, %bb.gf ], [ %.0436148825152993, %bb.gg ], [ %.0436148825152993, %bb.gh ]
  %.0431145025182985 = phi i32 [ %.0431145025182988, %err_sys_ex.exit557 ], [ %.0431145025182986, %bb.gf ], [ %.0431145025182986, %bb.gg ], [ %.0431145025182986, %bb.gh ]
  %.0429143125202978 = phi i32 [ %.0429143125202981, %err_sys_ex.exit557 ], [ %.0429143125202979, %bb.gf ], [ %.0429143125202979, %bb.gg ], [ %.0429143125202979, %bb.gh ]
  %.0427141225222971 = phi i32 [ %.0427141225222974, %err_sys_ex.exit557 ], [ %.0427141225222972, %bb.gf ], [ %.0427141225222972, %bb.gg ], [ %.0427141225222972, %bb.gh ]
  %.0425139325242964 = phi i32 [ %.0425139325242967, %err_sys_ex.exit557 ], [ %.0425139325242965, %bb.gf ], [ %.0425139325242965, %bb.gg ], [ %.0425139325242965, %bb.gh ]
  %.0421135525282956 = phi i32 [ %.0421135525282959, %err_sys_ex.exit557 ], [ %.0421135525282957, %bb.gf ], [ %.0421135525282957, %bb.gg ], [ %.0421135525282957, %bb.gh ]
  %.0419133625302949 = phi i32 [ %.0419133625302952, %err_sys_ex.exit557 ], [ %.0419133625302950, %bb.gf ], [ %.0419133625302950, %bb.gg ], [ %.0419133625302950, %bb.gh ]
  %.0417131725322942 = phi i32 [ %.0417131725322945, %err_sys_ex.exit557 ], [ %.0417131725322943, %bb.gf ], [ %.0417131725322943, %bb.gg ], [ %.0417131725322943, %bb.gh ]
  %.0415129825342935 = phi i32 [ %.0415129825342938, %err_sys_ex.exit557 ], [ %.0415129825342936, %bb.gf ], [ %.0415129825342936, %bb.gg ], [ %.0415129825342936, %bb.gh ]
  %.0413127925362928 = phi i32 [ %.0413127925362931, %err_sys_ex.exit557 ], [ %.0413127925362929, %bb.gf ], [ %.0413127925362929, %bb.gg ], [ %.0413127925362929, %bb.gh ]
  %.0411126025382921 = phi i32 [ %.0411126025382924, %err_sys_ex.exit557 ], [ %.0411126025382922, %bb.gf ], [ %.0411126025382922, %bb.gg ], [ %.0411126025382922, %bb.gh ]
  %.0406124125402914 = phi i32 [ %.0406124125402917, %err_sys_ex.exit557 ], [ %.0406124125402915, %bb.gf ], [ %.0406124125402915, %bb.gg ], [ %.0406124125402915, %bb.gh ]
  %.0403122225422907 = phi i32 [ %.0403122225422910, %err_sys_ex.exit557 ], [ %.0403122225422908, %bb.gf ], [ %.0403122225422908, %bb.gg ], [ %.0403122225422908, %bb.gh ] ; 3 uses
  %.0400120325442900 = phi i32 [ %.0400120325442903, %err_sys_ex.exit557 ], [ %.0400120325442901, %bb.gf ], [ %.0400120325442901, %bb.gg ], [ %.0400120325442901, %bb.gh ]
  %.0398118425462893 = phi i64 [ %.0398118425462896, %err_sys_ex.exit557 ], [ %.0398118425462894, %bb.gf ], [ %.0398118425462894, %bb.gg ], [ %.0398118425462894, %bb.gh ] ; 2 uses
  %.0396116525482886 = phi i32 [ %.0396116525482889, %err_sys_ex.exit557 ], [ %.0396116525482887, %bb.gf ], [ %.0396116525482887, %bb.gg ], [ %.0396116525482887, %bb.gh ]
  %.0388114625502879 = phi ptr [ %.0388114625502882, %err_sys_ex.exit557 ], [ %.0388114625502880, %bb.gf ], [ %.0388114625502880, %bb.gg ], [ %.0388114625502880, %bb.gh ] ; 2 uses
  %.0386112725522872 = phi ptr [ %.0386112725522875, %err_sys_ex.exit557 ], [ %.0386112725522873, %bb.gf ], [ %.0386112725522873, %bb.gg ], [ %.0386112725522873, %bb.gh ] ; 7 uses
  %.0384110825542865 = phi i32 [ %.0384110825542868, %err_sys_ex.exit557 ], [ %.0384110825542866, %bb.gf ], [ %.0384110825542866, %bb.gg ], [ %.0384110825542866, %bb.gh ]
  %.0382108925562858 = phi ptr [ %.0382108925562861, %err_sys_ex.exit557 ], [ %.0382108925562859, %bb.gf ], [ %.0382108925562859, %bb.gg ], [ %.0382108925562859, %bb.gh ]
  %.0380107025582851 = phi ptr [ %.0380107025582854, %err_sys_ex.exit557 ], [ %.0380107025582852, %bb.gf ], [ %.0380107025582852, %bb.gg ], [ %.0380107025582852, %bb.gh ] ; 2 uses
  %.0378105125602844 = phi ptr [ %.0378105125602847, %err_sys_ex.exit557 ], [ %.0378105125602845, %bb.gf ], [ %.0378105125602845, %bb.gg ], [ %.0378105125602845, %bb.gh ] ; 2 uses
  %.0376103225622837 = phi ptr [ %.0376103225622840, %err_sys_ex.exit557 ], [ %.0376103225622838, %bb.gf ], [ %.0376103225622838, %bb.gg ], [ %.0376103225622838, %bb.gh ]
  %.0374101325642830 = phi ptr [ %.0374101325642833, %err_sys_ex.exit557 ], [ %.0374101325642831, %bb.gf ], [ %.0374101325642831, %bb.gg ], [ %.0374101325642831, %bb.gh ] ; 3 uses
  %.037299425662823 = phi i32 [ %.037299425662826, %err_sys_ex.exit557 ], [ %.037299425662824, %bb.gf ], [ %.037299425662824, %bb.gg ], [ %.037299425662824, %bb.gh ]
  %.037097525682816 = phi i32 [ %.037097525682819, %err_sys_ex.exit557 ], [ %.037097525682817, %bb.gf ], [ %.037097525682817, %bb.gg ], [ %.037097525682817, %bb.gh ]
  %.036895625702809 = phi i32 [ %.036895625702812, %err_sys_ex.exit557 ], [ %.036895625702810, %bb.gf ], [ %.036895625702810, %bb.gg ], [ %.036895625702810, %bb.gh ]
  %.036693725722802 = phi i32 [ %.036693725722805, %err_sys_ex.exit557 ], [ %.036693725722803, %bb.gf ], [ %.036693725722803, %bb.gg ], [ %.036693725722803, %bb.gh ]
  %.036491825742795 = phi i32 [ %.036491825742798, %err_sys_ex.exit557 ], [ %.036491825742796, %bb.gf ], [ %.036491825742796, %bb.gg ], [ %.036491825742796, %bb.gh ]
  %.036289925762788 = phi i32 [ %.036289925762791, %err_sys_ex.exit557 ], [ %.036289925762789, %bb.gf ], [ %.036289925762789, %bb.gg ], [ %.036289925762789, %bb.gh ]
  %.035886125802774 = phi ptr [ %.035886125802777, %err_sys_ex.exit557 ], [ %.035886125802775, %bb.gf ], [ %.035886125802775, %bb.gg ], [ %.035886125802775, %bb.gh ] ; 3 uses
  %.035684225822767 = phi i32 [ %.035684225822770, %err_sys_ex.exit557 ], [ %.035684225822768, %bb.gf ], [ %.035684225822768, %bb.gg ], [ %.035684225822768, %bb.gh ]
  %.035482325842760 = phi i32 [ %.035482325842763, %err_sys_ex.exit557 ], [ %.035482325842761, %bb.gf ], [ %.035482325842761, %bb.gg ], [ %.035482325842761, %bb.gh ] ; 2 uses
  %.035280425862753 = phi i32 [ %.035280425862756, %err_sys_ex.exit557 ], [ %.035280425862754, %bb.gf ], [ %.035280425862754, %bb.gg ], [ %.035280425862754, %bb.gh ]
  %.0442688 = phi ptr [ %i.kr, %err_sys_ex.exit557 ], [ null, %bb.gf ], [ null, %bb.gg ], [ null, %bb.gh ] ; 17 uses
  %.not480 = icmp eq i32 %.0438150725132999, -99
  br i1 %.not480, label %err_sys_ex.exit565, label %bb.gj

bb.gj:                                            ; preds = %err_sys_ex.exit561
  %i.la = tail call i32 @wolfSSL_CTX_SetMinVersion(ptr noundef %.0442688, i32 noundef %.0438150725132999) #20
  %.not481 = icmp eq i32 %i.la, 1
  br i1 %.not481, label %err_sys_ex.exit565, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.lb = load i32, ptr @catastrophic, align 4, !tbaa !9
  %i.lc = icmp eq i32 %i.lb, 1
  br i1 %i.lc, label %bb.gl, label %bb.go

bb.gl:                                            ; preds = %bb.gk
  %.b2.i562 = load i1, ptr @quieter, align 4
  br i1 %.b2.i562, label %err_sys_ex.exit565, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ld = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.le = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ld, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.47) #21 ; 0 uses
  %.b.pr.i563 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i563, label %err_sys_ex.exit565, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.lf = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i564 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.lf) #22 ; 0 uses
  br label %err_sys_ex.exit565

bb.go:                                            ; preds = %bb.gk
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.47) #23
  unreachable

err_sys_ex.exit565:                               ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gj, %err_sys_ex.exit561
  %.not482 = icmp eq i32 %.0417131725322942, 0
  br i1 %.not482, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %err_sys_ex.exit565
  tail call void @wolfSSL_CTX_SetIOSend(ptr noundef %.0442688, ptr noundef nonnull @SimulateWantWriteIOSendCb) #20
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %err_sys_ex.exit565
  %i.lg = icmp eq ptr %.0386112725522872, null
  %i.lh = icmp ne i32 %.0384110825542865, 0
  %or.cond21 = or i1 %i.lg, %i.lh                 ; 2 uses
  br i1 %or.cond21, label %err_sys_ex.exit569, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.li = tail call i32 @wolfSSL_CTX_set_cipher_list(ptr noundef %.0442688, ptr noundef nonnull %.0386112725522872) #20
  %.not483 = icmp eq i32 %i.li, 1
  br i1 %.not483, label %err_sys_ex.exit569, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.lj = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.lk = icmp eq i32 %i.lj, 1
  br i1 %i.lk, label %bb.gt, label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  %.b2.i566 = load i1, ptr @quieter, align 4
  br i1 %.b2.i566, label %err_sys_ex.exit569, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ll = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.lm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ll, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.48) #21 ; 0 uses
  %.b.pr.i567 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i567, label %err_sys_ex.exit569, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ln = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i568 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.ln) #22 ; 0 uses
  br label %err_sys_ex.exit569

bb.gw:                                            ; preds = %bb.gs
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.48) #23
  unreachable

err_sys_ex.exit569:                               ; preds = %bb.gv, %bb.gu, %bb.gt, %bb.gr, %bb.gq
  %.not484 = icmp eq i32 %.0415129825342935, 0
  br i1 %.not484, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %err_sys_ex.exit569
  %i.lo = tail call i32 @wolfSSL_CTX_set_group_messages(ptr noundef %.0442688) #20 ; 0 uses
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %err_sys_ex.exit569
  %i.lp = icmp eq i32 %.0427141225222971, 0
  %i.lq = icmp ne i32 %.0425139325242964, 0       ; 2 uses
  %or.cond23 = or i1 %i.lp, %i.lq                 ; 4 uses
  %i.lr = icmp ne i32 %.035482325842760, 1
  %or.cond29.not = and i1 %or.cond23, %i.lr       ; 2 uses
  br i1 %or.cond29.not, label %bb.gz, label %err_sys_ex.exit573

bb.gz:                                            ; preds = %bb.gy
  %i.ls = tail call i32 @wolfSSL_CTX_use_certificate_chain_file(ptr noundef %.0442688, ptr noundef %.0380107025582851) #20
  %.not486 = icmp eq i32 %i.ls, 1
  br i1 %.not486, label %err_sys_ex.exit573, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.lt = load i32, ptr @catastrophic, align 4, !tbaa !9
  %i.lu = icmp eq i32 %i.lt, 1
  br i1 %i.lu, label %bb.hb, label %bb.he

bb.hb:                                            ; preds = %bb.ha
  %.b2.i570 = load i1, ptr @quieter, align 4
  br i1 %.b2.i570, label %err_sys_ex.exit573, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.lv = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.lw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lv, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.49) #21 ; 0 uses
  %.b.pr.i571 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i571, label %err_sys_ex.exit573, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.lx = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i572 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.lx) #22 ; 0 uses
  br label %err_sys_ex.exit573

bb.he:                                            ; preds = %bb.ha
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.49) #23
  unreachable

err_sys_ex.exit573:                               ; preds = %bb.hd, %bb.hc, %bb.hb, %bb.gz, %bb.gy
  %i.ly = trunc i32 %.0396116525482886 to i16
  %i.lz = tail call i32 @wolfSSL_CTX_SetMinDhKey_Sz(ptr noundef %.0442688, i16 noundef zeroext %i.ly) #20
  %.not487 = icmp eq i32 %i.lz, 1
  br i1 %.not487, label %err_sys_ex.exit577, label %bb.hf

bb.hf:                                            ; preds = %err_sys_ex.exit573
  %i.ma = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.mb = icmp eq i32 %i.ma, 1
  br i1 %i.mb, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  %.b2.i574 = load i1, ptr @quieter, align 4
  br i1 %.b2.i574, label %err_sys_ex.exit577, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.mc = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.md = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mc, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.50) #21 ; 0 uses
  %.b.pr.i575 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i575, label %err_sys_ex.exit577, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.me = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i576 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.me) #22 ; 0 uses
  br label %err_sys_ex.exit577

bb.hj:                                            ; preds = %bb.hf
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.50) #23
  unreachable

err_sys_ex.exit577:                               ; preds = %bb.hi, %bb.hh, %bb.hg, %err_sys_ex.exit573
  %i.mf = tail call i32 @wolfSSL_CTX_SetMinRsaKey_Sz(ptr noundef %.0442688, i16 noundef signext 1024) #20
  %.not488 = icmp eq i32 %i.mf, 1
  br i1 %.not488, label %err_sys_ex.exit581, label %bb.hk

bb.hk:                                            ; preds = %err_sys_ex.exit577
  %i.mg = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.mh = icmp eq i32 %i.mg, 1
  br i1 %i.mh, label %bb.hl, label %bb.ho

bb.hl:                                            ; preds = %bb.hk
  %.b2.i578 = load i1, ptr @quieter, align 4
  br i1 %.b2.i578, label %err_sys_ex.exit581, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.mi = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.mj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mi, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.51) #21 ; 0 uses
  %.b.pr.i579 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i579, label %err_sys_ex.exit581, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.mk = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i580 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.mk) #22 ; 0 uses
  br label %err_sys_ex.exit581

bb.ho:                                            ; preds = %bb.hk
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.51) #23
  unreachable

err_sys_ex.exit581:                               ; preds = %bb.hn, %bb.hm, %bb.hl, %err_sys_ex.exit577
  %i.ml = tail call i32 @wolfSSL_CTX_SetMinEccKey_Sz(ptr noundef %.0442688, i16 noundef signext 224) #20
  %.not489 = icmp eq i32 %i.ml, 1
  br i1 %.not489, label %err_sys_ex.exit585, label %bb.hp

bb.hp:                                            ; preds = %err_sys_ex.exit581
  %i.mm = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.mn = icmp eq i32 %i.mm, 1
  br i1 %i.mn, label %bb.hq, label %bb.ht

bb.hq:                                            ; preds = %bb.hp
  %.b2.i582 = load i1, ptr @quieter, align 4
  br i1 %.b2.i582, label %err_sys_ex.exit585, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.mo = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.mp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mo, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.52) #21 ; 0 uses
  %.b.pr.i583 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i583, label %err_sys_ex.exit585, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.mq = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i584 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.mq) #22 ; 0 uses
  br label %err_sys_ex.exit585

bb.ht:                                            ; preds = %bb.hp
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.52) #23
  unreachable

err_sys_ex.exit585:                               ; preds = %bb.hs, %bb.hr, %bb.hq, %err_sys_ex.exit581
  br i1 %or.cond29.not, label %bb.hu, label %err_sys_ex.exit589

bb.hu:                                            ; preds = %err_sys_ex.exit585
  %i.mr = tail call i32 @wolfSSL_CTX_use_PrivateKey_file(ptr noundef %.0442688, ptr noundef %.0378105125602844, i32 noundef 1) #20
  %.not490 = icmp eq i32 %i.mr, 1
  br i1 %.not490, label %err_sys_ex.exit589, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.ms = load i32, ptr @catastrophic, align 4, !tbaa !9
  %i.mt = icmp eq i32 %i.ms, 1
  br i1 %i.mt, label %bb.hw, label %bb.hz

bb.hw:                                            ; preds = %bb.hv
  %.b2.i586 = load i1, ptr @quieter, align 4
  br i1 %.b2.i586, label %err_sys_ex.exit589, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.mu = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.mv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mu, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.53) #21 ; 0 uses
  %.b.pr.i587 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i587, label %err_sys_ex.exit589, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.mw = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i588 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.mw) #22 ; 0 uses
  br label %err_sys_ex.exit589

bb.hz:                                            ; preds = %bb.hv
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.53) #23
  unreachable

err_sys_ex.exit589:                               ; preds = %bb.hy, %bb.hx, %bb.hw, %bb.hu, %err_sys_ex.exit585
  %.not491 = icmp eq i32 %.036693725722802, 0
  br i1 %.not491, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %err_sys_ex.exit589
  %i.mx = tail call i32 @wolfSSL_CTX_mutual_auth(ptr noundef %.0442688, i32 noundef 1) #20 ; 0 uses
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %err_sys_ex.exit589
  %i.my = tail call i32 @wolfSSL_CTX_SetTmpEC_DHE_Sz(ptr noundef %.0442688, i16 noundef zeroext 0) #20
  %.not492 = icmp eq i32 %i.my, 1
  br i1 %.not492, label %err_sys_ex.exit593, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.mz = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.na = icmp eq i32 %i.mz, 1
  br i1 %i.na, label %bb.id, label %bb.ig

bb.id:                                            ; preds = %bb.ic
  %.b2.i590 = load i1, ptr @quieter, align 4
  br i1 %.b2.i590, label %err_sys_ex.exit593, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.nb = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.nc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nb, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.54) #21 ; 0 uses
  %.b.pr.i591 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i591, label %err_sys_ex.exit593, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.nd = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i592 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.nd) #22 ; 0 uses
  br label %err_sys_ex.exit593

bb.ig:                                            ; preds = %bb.ic
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.54) #23
  unreachable

err_sys_ex.exit593:                               ; preds = %bb.if, %bb.ie, %bb.id, %bb.ib
  %.not493 = icmp ne i32 %.0431145025182985, 0
  %brmerge.not = and i1 %.not493, %or.cond23
  br i1 %brmerge.not, label %bb.ih, label %err_sys_ex.exit597

bb.ih:                                            ; preds = %err_sys_ex.exit593
  %i.ne = select i1 %i.lq, i32 17, i32 3
  %i.nf = load i32, ptr %i.t, align 4, !tbaa !9
  %i.ng = and i32 %i.nf, -3
  %i.nh = icmp eq i32 %i.ng, 1
  %i.ni = select i1 %i.nh, ptr @myVerify, ptr null
  tail call void @wolfSSL_CTX_set_verify(ptr noundef %.0442688, i32 noundef %i.ne, ptr noundef %i.ni) #20
  %i.nj = tail call i32 @wolfSSL_CTX_load_verify_locations_ex(ptr noundef %.0442688, ptr noundef %.0382108925562858, ptr noundef null, i32 noundef 0) #20
  %.not494 = icmp eq i32 %i.nj, 1
  br i1 %.not494, label %err_sys_ex.exit597, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.nk = load i32, ptr @catastrophic, align 4, !tbaa !9
  %i.nl = icmp eq i32 %i.nk, 1
  br i1 %i.nl, label %bb.ij, label %bb.im

bb.ij:                                            ; preds = %bb.ii
  %.b2.i594 = load i1, ptr @quieter, align 4
  br i1 %.b2.i594, label %err_sys_ex.exit597, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.nm = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.nn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nm, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.55) #21 ; 0 uses
  %.b.pr.i595 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i595, label %err_sys_ex.exit597, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.no = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i596 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.no) #22 ; 0 uses
  br label %err_sys_ex.exit597

bb.im:                                            ; preds = %bb.ii
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.55) #23
  unreachable

err_sys_ex.exit597:                               ; preds = %bb.il, %bb.ik, %bb.ij, %bb.ih, %err_sys_ex.exit593
  %.not495 = icmp eq ptr %.0374101325642830, null
  br i1 %.not495, label %err_sys_ex.exit601, label %bb.in

bb.in:                                            ; preds = %err_sys_ex.exit597
  %i.np = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0374101325642830) #24
  %i.nq = trunc i64 %i.np to i16
  %i.nr = tail call i32 @wolfSSL_CTX_UseSNI(ptr noundef %.0442688, i8 noundef zeroext 0, ptr noundef nonnull %.0374101325642830, i16 noundef zeroext %i.nq) #20
  %.not496 = icmp eq i32 %i.nr, 1
  br i1 %.not496, label %err_sys_ex.exit601, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.ns = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.nt = icmp eq i32 %i.ns, 1
  br i1 %i.nt, label %bb.ip, label %bb.is

bb.ip:                                            ; preds = %bb.io
  %.b2.i598 = load i1, ptr @quieter, align 4
  br i1 %.b2.i598, label %err_sys_ex.exit601, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.nu = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.nv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nu, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.56) #21 ; 0 uses
  %.b.pr.i599 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i599, label %err_sys_ex.exit601, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.nw = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i600 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.nw) #22 ; 0 uses
  br label %err_sys_ex.exit601

bb.is:                                            ; preds = %bb.io
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.56) #23
  unreachable

err_sys_ex.exit601:                               ; preds = %bb.ir, %bb.iq, %bb.ip, %bb.in, %err_sys_ex.exit597
  %.not497 = icmp eq i32 %.037299425662823, 0
  br i1 %.not497, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %err_sys_ex.exit601
  %i.nx = tail call i32 @wolfSSL_CTX_no_dhe_psk(ptr noundef %.0442688) #20 ; 0 uses
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %err_sys_ex.exit601
  %.not498 = icmp eq i32 %.037097525682816, 0
  br i1 %.not498, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.ny = tail call i32 @wolfSSL_CTX_only_dhe_psk(ptr noundef %.0442688) #20 ; 0 uses
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.nz = icmp ne i32 %.035482325842760, 0
  %or.cond53 = and i1 %or.cond23, %i.nz
  %.not502 = icmp eq i32 %.035280425862753, 0
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.not504.not = icmp eq ptr %.0388114625502879, null
  %.not.i614 = icmp eq i32 %.0421135525282956, 0
  %.not.not.i.i = icmp eq i32 %.0429143125202978, 0 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %11, i64 2 ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %10, i64 2 ; 4 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.of = icmp ne ptr %.0386112725522872, null
  %or.cond69 = select i1 %or.cond23, i1 true, i1 %i.of
  %.not506 = icmp eq i32 %.036491825742795, 0
  %.not507 = icmp eq i32 %.0419133625302949, 0
  %i.og = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.oi = icmp eq i32 %.035684225822767, 0        ; 3 uses
  %i.oj = icmp eq i32 %.0403122225422907, 0
  %i.ok = icmp eq i64 %.0398118425462893, 0       ; 2 uses
  %or.cond77 = select i1 %i.oj, i1 %i.ok, i1 false
  %.not521 = icmp eq i32 %.036895625702809, 0     ; 2 uses
  %.not522 = icmp eq i32 %.0436148825152992, 0
  %i.ol = icmp ne i32 %.0413127925362928, 0
  %i.om = getelementptr inbounds nuw i8, ptr %3, i64 8
  %13 = icmp ne i32 %.0411126025382921, 0
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.qb, %bb.iw
  %.0670.ph.ph = phi i32 [ %.2672, %bb.qb ], [ -1, %bb.iw ]
  %.2472.ph.ph = phi i16 [ %.3473, %bb.qb ], [ %.0152625113006, %bb.iw ]
  %.1443.ph.ph = phi ptr [ %.3445, %bb.qb ], [ %.0442688, %bb.iw ]
  %.2408.ph.ph = phi i32 [ %i.aan, %bb.qb ], [ %.0406124125402914, %bb.iw ] ; 2 uses
  %.not47.i.ph.ph = phi i1 [ true, %bb.qb ], [ false, %bb.iw ]
  %.0390.ph.ph = phi i32 [ %.5, %bb.qb ], [ 0, %bb.iw ]
  %i.on = icmp sgt i32 %.2408.ph.ph, 0
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.qa
  %.0670.ph = phi i32 [ %.2672, %bb.qa ], [ %.0670.ph.ph, %.outer.outer ]
  %.2472.ph = phi i16 [ %.3473, %bb.qa ], [ %.2472.ph.ph, %.outer.outer ]
  %.1443.ph = phi ptr [ %.3445, %bb.qa ], [ %.1443.ph.ph, %.outer.outer ]
  %.not47.i.ph = phi i1 [ true, %bb.qa ], [ %.not47.i.ph.ph, %.outer.outer ]
  %.0390.ph = phi i32 [ %.5, %bb.qa ], [ %.0390.ph.ph, %.outer.outer ]
  br label %bb.ix

bb.ix:                                            ; preds = %.outer, %.thread3054
  %.0670 = phi i32 [ %.2672, %.thread3054 ], [ %.0670.ph, %.outer ]
  %.2472 = phi i16 [ %.3473, %.thread3054 ], [ %.2472.ph, %.outer ] ; 12 uses
  %.1443 = phi ptr [ %.3445, %.thread3054 ], [ %.1443.ph, %.outer ] ; 5 uses
  %or.cond91 = phi i1 [ false, %.thread3054 ], [ %13, %.outer ]
  %.not47.i = phi i1 [ true, %.thread3054 ], [ %.not47.i.ph, %.outer ]
  %.0390 = phi i32 [ %.5, %.thread3054 ], [ %.0390.ph, %.outer ]
  %i.oo = call ptr @wolfSSL_new(ptr noundef %.1443) #20 ; 27 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %bb.iy, label %err_sys_ex.exit605

bb.iy:                                            ; preds = %bb.ix
  %i.oq = load i32, ptr @catastrophic, align 4, !tbaa !9
  %i.or = icmp eq i32 %i.oq, 1
  br i1 %i.or, label %bb.iz, label %bb.jc

bb.iz:                                            ; preds = %bb.iy
  %.b2.i602 = load i1, ptr @quieter, align 4
  br i1 %.b2.i602, label %err_sys_ex.exit605, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.os = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ot = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.os, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.58) #21 ; 0 uses
  %.b.pr.i603 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i603, label %err_sys_ex.exit605, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.ou = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i604 = call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.ou) #22 ; 0 uses
  br label %err_sys_ex.exit605

bb.jc:                                            ; preds = %bb.iy
  call fastcc void @err_sys(ptr noundef nonnull @.str.58) #23
  unreachable

err_sys_ex.exit605:                               ; preds = %bb.jb, %bb.ja, %bb.iz, %bb.ix
  br i1 %or.cond53, label %bb.jd, label %.critedge541

bb.jd:                                            ; preds = %err_sys_ex.exit605
  %i.ov = call i32 @wolfSSL_use_certificate_chain_file(ptr noundef %i.oo, ptr noundef %.0380107025582851) #20
  %.not499 = icmp eq i32 %i.ov, 1
  br i1 %.not499, label %err_sys_ex.exit609, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.ow = load i32, ptr @catastrophic, align 4, !tbaa !9
  %i.ox = icmp eq i32 %i.ow, 1
  br i1 %i.ox, label %bb.jf, label %bb.ji

bb.jf:                                            ; preds = %bb.je
  %.b2.i606 = load i1, ptr @quieter, align 4
  br i1 %.b2.i606, label %err_sys_ex.exit609, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.oy = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.oz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oy, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.49) #21 ; 0 uses
  %.b.pr.i607 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i607, label %err_sys_ex.exit609, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.pa = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i608 = call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.pa) #22 ; 0 uses
  br label %err_sys_ex.exit609

bb.ji:                                            ; preds = %bb.je
  call fastcc void @err_sys(ptr noundef nonnull @.str.49) #23
  unreachable

err_sys_ex.exit609:                               ; preds = %bb.jd, %bb.jf, %bb.jg, %bb.jh
  %i.pb = call i32 @wolfSSL_use_PrivateKey_file(ptr noundef %i.oo, ptr noundef %.0378105125602844, i32 noundef 1) #20
  %.not500 = icmp eq i32 %i.pb, 1
  br i1 %.not500, label %.critedge541, label %bb.jj

bb.jj:                                            ; preds = %err_sys_ex.exit609
  %i.pc = load i32, ptr @catastrophic, align 4, !tbaa !9
  %i.pd = icmp eq i32 %i.pc, 1
  br i1 %i.pd, label %bb.jk, label %bb.jn

bb.jk:                                            ; preds = %bb.jj
  %.b2.i610 = load i1, ptr @quieter, align 4
  br i1 %.b2.i610, label %.critedge541, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.pe = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.pf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pe, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.59) #21 ; 0 uses
  %.b.pr.i611 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i611, label %.critedge541, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.pg = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i612 = call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.pg) #22 ; 0 uses
  br label %.critedge541

bb.jn:                                            ; preds = %bb.jj
  call fastcc void @err_sys(ptr noundef nonnull @.str.59) #23
  unreachable

.critedge541:                                     ; preds = %bb.jm, %bb.jl, %bb.jk, %err_sys_ex.exit605, %err_sys_ex.exit609
  %i.ph = call i32 @wolfSSL_SetHsDoneCb(ptr noundef %i.oo, ptr noundef nonnull @myHsDoneCb, ptr noundef null) #20 ; 0 uses
  br i1 %i.kz, label %bb.jo, label %bb.ki

bb.jo:                                            ; preds = %.critedge541
  %i.pi = load i32, ptr %i.l, align 4, !tbaa !9   ; 2 uses
  %i.pj = icmp sgt i32 %i.pi, 0
  br i1 %i.pj, label %bb.jp, label %bb.jt

bb.jp:                                            ; preds = %bb.jo
  %i.pk = trunc i32 %i.pi to i16
  %i.pl = call i32 @wolfSSL_UseKeyShare(ptr noundef %i.oo, i16 noundef zeroext %i.pk) #20
  %i.pm = icmp eq i32 %i.pl, 1
  br i1 %i.pm, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  call fastcc void @err_sys(ptr noundef nonnull @.str.60) #23
  unreachable

bb.jr:                                            ; preds = %bb.jp
  %i.pn = call i32 @wolfSSL_set_groups(ptr noundef %i.oo, ptr noundef nonnull %i.l, i32 noundef 1) #20
  %.not501 = icmp eq i32 %i.pn, 1
  br i1 %.not501, label %bb.ki, label %bb.js

bb.js:                                            ; preds = %bb.jr
  call fastcc void @err_sys(ptr noundef nonnull @.str.61) #23
  unreachable

bb.jt:                                            ; preds = %bb.jo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  switch i32 %.036289925762788, label %SetKeyShare.exit [
    i32 2, label %bb.ju
    i32 1, label %bb.ke
  ]

bb.ju:                                            ; preds = %bb.jt
  br i1 %.not4763008, label %bb.kb, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.po = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.035886125802774, ptr noundef nonnull dereferenceable(18) @.str.198) #24
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %bb.jy, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.pq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.035886125802774, ptr noundef nonnull dereferenceable(19) @.str.199) #24
  %i.pr = icmp eq i32 %i.pq, 0
  br i1 %i.pr, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call fastcc void @err_sys(ptr noundef nonnull @.str.200) #23
  unreachable

bb.jy:                                            ; preds = %bb.jw, %bb.jv
  %storemerge.i = phi i32 [ 4587, %bb.jv ], [ 4589, %bb.jw ] ; 2 uses
  store i32 %storemerge.i, ptr %i.h, align 16, !tbaa !9
  %i.ps = trunc nuw nsw i32 %storemerge.i to i16
  %i.pt = call i32 @wolfSSL_UseKeyShare(ptr noundef %i.oo, i16 noundef zeroext %i.ps) #20
  %i.pu = icmp eq i32 %i.pt, 1
  br i1 %i.pu, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.pv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.201, ptr noundef nonnull %.035886125802774) ; 0 uses
  br label %.thread.i

bb.ka:                                            ; preds = %bb.jy
  call fastcc void @err_sys(ptr noundef nonnull @.str.202) #23
  unreachable

bb.kb:                                            ; preds = %bb.ju
  %i.pw = call i32 @wolfSSL_UseKeyShare(ptr noundef %i.oo, i16 noundef zeroext 23) #20
  %i.px = icmp eq i32 %i.pw, 1
  br i1 %i.px, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  store i32 23, ptr %i.h, align 16, !tbaa !9
  br label %.thread.i

bb.kd:                                            ; preds = %bb.kb
  call fastcc void @err_sys(ptr noundef nonnull @.str.203) #23
  unreachable

bb.ke:                                            ; preds = %bb.jt
  %i.py = call i32 @wolfSSL_UseKeyShare(ptr noundef %i.oo, i16 noundef zeroext 256) #20
  %i.pz = icmp eq i32 %i.py, 1
  br i1 %i.pz, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  store i32 256, ptr %i.h, align 16, !tbaa !9
  br label %.thread.i

bb.kg:                                            ; preds = %bb.ke
  call fastcc void @err_sys(ptr noundef nonnull @.str.204) #23
  unreachable

.thread.i:                                        ; preds = %bb.kf, %bb.kc, %bb.jz
  %i.qa = call i32 @wolfSSL_set_groups(ptr noundef %i.oo, ptr noundef nonnull %i.h, i32 noundef 1) #20
  %.not32.i = icmp eq i32 %i.qa, 1
  br i1 %.not32.i, label %SetKeyShare.exit, label %bb.kh

bb.kh:                                            ; preds = %.thread.i
  call fastcc void @err_sys(ptr noundef nonnull @.str.206) #23
  unreachable

SetKeyShare.exit:                                 ; preds = %bb.jt, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %bb.ki

bb.ki:                                            ; preds = %SetKeyShare.exit, %bb.jr, %.critedge541
  br i1 %.not502, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.qb = call i32 @wolfSSL_AllowEncryptThenMac(ptr noundef %i.oo, i32 noundef 0) #20 ; 0 uses
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %i.qc = load ptr, ptr %i.oa, align 8, !tbaa !42 ; 3 uses
  %.not503 = icmp eq ptr %i.qc, null
  br i1 %.not503, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store ptr %.0388114625502879, ptr %i.qd, align 8, !tbaa !46
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  store i32 16, ptr %i.i, align 4, !tbaa !9
  br i1 %.not.i614, label %bb.lk, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br i1 %.not.not.i.i, label %bb.ko, label %bb.kr

bb.ko:                                            ; preds = %bb.kn
  %i.qe = tail call ptr @__ctype_b_loc() #27
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !48
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 98
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !49
  %i.qi = and i16 %i.qh, 1024
  %.not18.i.i.i = icmp eq i16 %i.qi, 0
  br i1 %.not18.i.i.i, label %bb.kt, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.qj = call ptr @gethostbyname(ptr noundef nonnull @.str.188) #20 ; 3 uses
  %.not19.i.i.i = icmp eq ptr %i.qj, null
  br i1 %.not19.i.i.i, label %bb.kq, label %bb.ks

bb.kq:                                            ; preds = %bb.kp
  call fastcc void @err_sys(ptr noundef nonnull @.str.195) #23
  unreachable

bb.kr:                                            ; preds = %bb.kn
  store i16 2, ptr %11, align 4, !tbaa !52
  %rev.i.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %.2472)
  store i16 %rev.i.i.i.i, ptr %i.ob, align 2, !tbaa !53
  br label %build_addr.exit.i.i

bb.ks:                                            ; preds = %bb.kp
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !55
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !20
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 20
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !56
  %i.qp = sext i32 %i.qo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.oc, ptr align 1 %i.qm, i64 %i.qp, i1 false)
  store i16 2, ptr %11, align 4, !tbaa !52
  %rev.i22.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %.2472)
  store i16 %rev.i22.i.i.i, ptr %i.ob, align 2, !tbaa !53
  br label %build_addr.exit.i.i

bb.kt:                                            ; preds = %bb.ko
  store i16 2, ptr %11, align 4, !tbaa !52
  %rev.i2226.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %.2472)
  store i16 %rev.i2226.i.i.i, ptr %i.ob, align 2, !tbaa !53
  %i.qq = call i32 @inet_addr(ptr noundef nonnull @.str.188) #20
  store i32 %i.qq, ptr %i.oc, align 4, !tbaa !57
  br label %build_addr.exit.i.i

build_addr.exit.i.i:                              ; preds = %bb.kt, %bb.ks, %bb.kr
  %i.qr = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 17) #20 ; 7 uses
  %i.qs = icmp slt i32 %i.qr, -1
  br i1 %i.qs, label %bb.ku, label %tcp_socket.exit.i.i

bb.ku:                                            ; preds = %build_addr.exit.i.i
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.196) #23
  unreachable

tcp_socket.exit.i.i:                              ; preds = %build_addr.exit.i.i
  %i.qt = call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 1, ptr %i.e, align 4, !tbaa !9
  %i.qu = call i32 @setsockopt(i32 noundef %i.qr, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.e, i32 noundef 4) #20
  %i.qv = icmp slt i32 %i.qu, 0
  br i1 %i.qv, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %tcp_socket.exit.i.i
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.189) #23
  unreachable

bb.kw:                                            ; preds = %tcp_socket.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i32 1, ptr %i.f, align 4, !tbaa !9
  %i.qw = call i32 @setsockopt(i32 noundef %i.qr, i32 noundef 1, i32 noundef 15, ptr noundef nonnull %i.f, i32 noundef 4) #20
  %i.qx = icmp slt i32 %i.qw, 0
  br i1 %i.qx, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.190) #23
  unreachable

bb.ky:                                            ; preds = %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.qy = call i32 @bind(i32 noundef %i.qr, ptr noundef nonnull %11, i32 noundef 16) #20
  %.not36.i.i = icmp eq i32 %i.qy, 0
  br i1 %.not36.i.i, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.191) #23
  unreachable

bb.la:                                            ; preds = %bb.ky
  %i.qz = icmp eq i16 %.2472, 0
  br i1 %i.qz, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 16, ptr %i.g, align 4, !tbaa !9
  %i.ra = call i32 @getsockname(i32 noundef %i.qr, ptr noundef nonnull %11, ptr noundef nonnull %i.g) #20
  %i.rb = icmp eq i32 %i.ra, 0
  %i.rc = load i16, ptr %i.ob, align 2
  %rev.i.i.i = call i16 @llvm.bswap.i16(i16 %i.rc)
  %.0.i.i = select i1 %i.rb, i16 %rev.i.i.i, i16 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.lc

bb.lc:                                            ; preds = %bb.la, %bb.lb
end_hunk_1
