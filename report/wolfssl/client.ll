Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/client?download=true
inline.NumInlined: 45
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.251 = private unnamed_addr constant [21 x i8] c"%s tcp_select error\0A\00", align 1
@.str.252 = private unnamed_addr constant [18 x i8] c"tcp_select failed\00", align 1
@.str.253 = private unnamed_addr constant [18 x i8] c"ClientRead failed\00", align 1
@.str.254 = private unnamed_addr constant [30 x i8] c"SSL_write%s msg error %d, %s\0A\00", align 1
@.str.255 = private unnamed_addr constant [29 x i8] c"SSL_read reply error %d, %s\0A\00", align 1
@.str.256 = private unnamed_addr constant [26 x i8] c"Nonblocking read timeout\0A\00", align 1
@.str.257 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@str = private unnamed_addr constant [31 x i8] c"SSL connect ok, sending GET...\00", align 1
@str.2 = private unnamed_addr constant [18 x i8] c"reused session id\00", align 1
@str.3 = private unnamed_addr constant [11 x i8] c"SNI is: ON\00", align 1
@str.4 = private unnamed_addr constant [26 x i8] c"Disallow Encrypt-Then-MAC\00", align 1
@str.5 = private unnamed_addr constant [34 x i8] c"Load cert/key into wolfSSL object\00", align 1
@str.6 = private unnamed_addr constant [39 x i8] c"Attempting to test use supported curve\00", align 1
@str.7 = private unnamed_addr constant [33 x i8] c"Verify should not override error\00", align 1
@str.8 = private unnamed_addr constant [19 x i8] c"Verify should fail\00", align 1
@str.9 = private unnamed_addr constant [24 x i8] c"Skip exit() for testing\00", align 1
@str.10 = private unnamed_addr constant [38 x i8] c"Using default cipher list for testing\00", align 1
@str.11 = private unnamed_addr constant [83 x i8] c"\09Allowing failed certificate check, testing only (shouldn't do this in production)\00", align 1
@str.12 = private unnamed_addr constant [60 x i8] c"Overriding cert date error as example for bad clock testing\00", align 1
@str.13 = private unnamed_addr constant [29 x i8] c"... client would write block\00", align 1
@str.14 = private unnamed_addr constant [28 x i8] c"... client would read block\00", align 1
@str.15 = private unnamed_addr constant [28 x i8] c"Nonblocking connect timeout\00", align 1
@str.16 = private unnamed_addr constant [46 x i8] c"\0AwolfSSL client shutting down SMTP connection\00", align 1
@str.17 = private unnamed_addr constant [32 x i8] c"Bidirectional shutdown complete\00", align 1
@str.19 = private unnamed_addr constant [65 x i8] c"--sys-ca-certs Load system CA certs for server cert verification\00", align 1
@str.20 = private unnamed_addr constant [50 x i8] c"--onlyPskDheKe Must use DHE key exchange with PSK\00", align 1
@str.21 = private unnamed_addr constant [59 x i8] c"--files-are-der Specified files are in DER, not PEM format\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @client_test(ptr nofree noundef captures(none) initializes((16, 20)) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.fd_set, align 8             ; 6 uses
  %2 = alloca %struct.fd_set, align 8             ; 6 uses
  %3 = alloca %struct.timeval, align 8            ; 6 uses
  %i.a = alloca [80 x i8], align 16               ; 2 uses
  %4 = alloca %struct.fd_set, align 8             ; 6 uses
  %5 = alloca %struct.fd_set, align 8             ; 6 uses
  %6 = alloca %struct.timeval, align 8            ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 6 uses
  %i.c = alloca [512 x i8], align 16              ; 18 uses
  %7 = alloca %struct.sockaddr_in, align 4        ; 12 uses
  %i.d = alloca i32, align 4                      ; 26 uses
  %i.e = alloca [32 x i8], align 16               ; 12 uses
  %i.f = alloca [256 x i8], align 16              ; 5 uses
  %i.g = alloca [80 x i8], align 16               ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct.timeval, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 -1, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %i.k = load i32, ptr %0, align 8, !tbaa !47     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store i32 -1, ptr %i.n, align 8, !tbaa !49
  %i.o = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @myVerifyAction) ; 6 uses
  store i32 0, ptr %i.o, align 4, !tbaa !9
  %i.p = icmp eq ptr %i.m, null
  br i1 %i.p, label %.thread2951, label %.lr.ph

.thread2951:                                      ; preds = %bb.a
  store ptr null, ptr @myoptarg, align 8, !tbaa !14
  store i32 0, ptr @myoptind, align 4, !tbaa !9
  br label %.thread

.lr.ph:                                           ; preds = %bb.a, %.lr.ph.backedge
  %.01759 = phi i32 [ %.01759.be, %.lr.ph.backedge ], [ 1, %bb.a ] ; 78 uses
  %.04191757 = phi i32 [ %.04191757.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04211755 = phi i8 [ %.04211755.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04231753 = phi i32 [ %.04231753.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04251751 = phi i32 [ %.04251751.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04271749 = phi ptr [ %.04271749.be, %.lr.ph.backedge ], [ null, %bb.a ] ; 78 uses
  %.04291747 = phi i32 [ %.04291747.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04311745 = phi i32 [ %.04311745.be, %.lr.ph.backedge ], [ 1, %bb.a ] ; 78 uses
  %.04331743 = phi i32 [ %.04331743.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04351741 = phi i32 [ %.04351741.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04371739 = phi i32 [ %.04371739.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04391737 = phi i32 [ %.04391737.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 76 uses
  %.04411735 = phi i32 [ %.04411735.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04431733 = phi i8 [ %.04431733.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04451731 = phi ptr [ %.04451731.be, %.lr.ph.backedge ], [ null, %bb.a ] ; 78 uses
  %.04471729 = phi i32 [ %.04471729.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04491727 = phi i32 [ %.04491727.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04511725 = phi ptr [ %.04511725.be, %.lr.ph.backedge ], [ null, %bb.a ] ; 78 uses
  %.04531723 = phi i32 [ %.04531723.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04551721 = phi ptr [ %.04551721.be, %.lr.ph.backedge ], [ @.str.16, %bb.a ] ; 78 uses
  %.04571719 = phi ptr [ %.04571719.be, %.lr.ph.backedge ], [ @.str.15, %bb.a ] ; 78 uses
  %.04591717 = phi ptr [ %.04591717.be, %.lr.ph.backedge ], [ @.str.14, %bb.a ] ; 78 uses
  %.04611715 = phi i32 [ %.04611715.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04631713 = phi i32 [ %.04631713.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04651711 = phi ptr [ %.04651711.be, %.lr.ph.backedge ], [ null, %bb.a ] ; 78 uses
  %.04671709 = phi i32 [ %.04671709.be, %.lr.ph.backedge ], [ 1024, %bb.a ] ; 78 uses
  %.04691707 = phi i32 [ %.04691707.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04711705 = phi i32 [ %.04711705.be, %.lr.ph.backedge ], [ 1, %bb.a ] ; 78 uses
  %.04811703 = phi i32 [ %.04811703.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04831701 = phi i32 [ %.04831701.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 79 uses
  %.04851699 = phi i32 [ %.04851699.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04871697 = phi i32 [ %.04871697.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 77 uses
  %.04891695 = phi i32 [ %.04891695.be, %.lr.ph.backedge ], [ 1, %bb.a ] ; 78 uses
  %.04911693 = phi i32 [ %.04911693.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04931691 = phi i32 [ %.04931691.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04951689 = phi i32 [ %.04951689.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 79 uses
  %.04971687 = phi i64 [ %.04971687.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04991685 = phi i32 [ %.04991685.be, %.lr.ph.backedge ], [ 16384, %bb.a ] ; 79 uses
  %.05021683 = phi i32 [ %.05021683.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.05041681 = phi i32 [ %.05041681.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.05061679 = phi i32 [ %.05061679.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.05081677 = phi i32 [ %.05081677.be, %.lr.ph.backedge ], [ -99, %bb.a ] ; 78 uses
  %.05101675 = phi i32 [ %.05101675.be, %.lr.ph.backedge ], [ -99, %bb.a ] ; 77 uses
  %.05131673 = phi ptr [ %.05131673.be, %.lr.ph.backedge ], [ @.str.6, %bb.a ] ; 78 uses
  %.05151671 = phi ptr [ %.05151671.be, %.lr.ph.backedge ], [ @.str.5, %bb.a ] ; 78 uses
  %.05171669 = phi i16 [ %.05171669.be, %.lr.ph.backedge ], [ 11111, %bb.a ] ; 78 uses
  %i.q = load i32, ptr @myoptind, align 4, !tbaa !9 ; 4 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.pr.i = load ptr, ptr @mygetopt_long.next, align 8, !tbaa !14 ; 3 uses
  %i.s = icmp eq ptr %.pr.i, null
  br i1 %i.s, label %.thread1.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i8, ptr %.pr.i, align 1, !tbaa !15  ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %.thread1.i, label %bb.x

bb.d:                                             ; preds = %.lr.ph
  store ptr null, ptr @mygetopt_long.next, align 8, !tbaa !14
  store i32 1, ptr @myoptind, align 4, !tbaa !9
  br label %.thread1.i

.thread1.i:                                       ; preds = %bb.d, %bb.c, %bb.b
  %i.v = phi i32 [ %i.q, %bb.b ], [ %i.q, %bb.c ], [ 1, %bb.d ] ; 6 uses
  %.not.i = icmp slt i32 %i.v, %i.k
  br i1 %.not.i, label %bb.e, label %mygetopt_long.exit.thread651.sink.split

bb.e:                                             ; preds = %.thread1.i
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.w ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14   ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !15
  %.not67.i = icmp eq i8 %i.aa, 45
  br i1 %.not67.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !15
  switch i8 %i.ac, label %bb.w [
    i8 0, label %bb.h
    i8 45, label %.tail.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store ptr null, ptr @myoptarg, align 8, !tbaa !14
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !14
  br label %mygetopt_long.exit.thread651.sink.split

.tail.i:                                          ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.tail.i
  %i.ah = add nsw i32 %i.v, 1                     ; 2 uses
  store ptr null, ptr @myoptarg, align 8, !tbaa !14
  %i.ai = icmp slt i32 %i.ah, %i.k
  br i1 %i.ai, label %bb.j, label %mygetopt_long.exit.thread651

bb.j:                                             ; preds = %bb.i
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14
  br label %mygetopt_long.exit.thread651.sink.split

bb.k:                                             ; preds = %.tail.i
  store ptr null, ptr @myoptarg, align 8, !tbaa !14
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2 ; 7 uses
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(5) @.str.7) #22
  %.not73.i = icmp eq i32 %i.ao, 0
  br i1 %.not73.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.k
  %.09.lcssa.i = phi ptr [ @client_test.long_options, %bb.k ], [ getelementptr inbounds nuw (i8, ptr @client_test.long_options, i64 16), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @client_test.long_options, i64 32), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @client_test.long_options, i64 48), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @client_test.long_options, i64 64), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @client_test.long_options, i64 80), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @client_test.long_options, i64 96), %bb.v ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51 ; 4 uses
  %i.ar = add nsw i32 %i.v, 1                     ; 3 uses
  store i32 %i.ar, ptr @myoptind, align 4, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !52 ; 3 uses
  %.not74.i = icmp eq i32 %i.at, 0
  br i1 %.not74.i, label %mygetopt_long.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = icmp slt i32 %i.ar, %i.k
  br i1 %i.au, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.av = icmp eq i32 %i.at, 1
  %.phi.trans.insert.i = sext i32 %i.ar to i64
  %.phi.trans.insert14.i = getelementptr inbounds [8 x i8], ptr %i.m, i64 %.phi.trans.insert.i
  %.pre15.i = load ptr, ptr %.phi.trans.insert14.i, align 8, !tbaa !14 ; 2 uses
  br i1 %i.av, label %._crit_edge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load i8, ptr %.pre15.i, align 1, !tbaa !15
  %.not76.i = icmp eq i8 %i.aw, 45
  br i1 %.not76.i, label %mygetopt_long.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.n
  store ptr %.pre15.i, ptr @myoptarg, align 8, !tbaa !14
  %i.ax = add nsw i32 %i.v, 2
  store i32 %i.ax, ptr @myoptind, align 4, !tbaa !9
  br label %mygetopt_long.exit

bb.p:                                             ; preds = %bb.m
  %.not75.i = icmp ne i32 %i.at, 2
  %.not.a = icmp eq i32 %i.aq, -1
  %or.cond679 = select i1 %.not75.i, i1 true, i1 %.not.a
  br i1 %or.cond679, label %mygetopt_long.exit.thread651, label %mygetopt_long.exit.thread.a

bb.q:                                             ; preds = %bb.k
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(10) @.str.8) #22
  %.not73.1.i = icmp eq i32 %i.ay, 0
  br i1 %.not73.1.i, label %bb.l, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(4) @.str.9) #22
  %.not73.2.i = icmp eq i32 %i.az, 0
  br i1 %.not73.2.i, label %bb.l, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(13) @.str.10) #22
  %.not73.3.i = icmp eq i32 %i.ba, 0
  br i1 %.not73.3.i, label %bb.l, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(13) @.str.11) #22
  %.not73.4.i = icmp eq i32 %i.bb, 0
  br i1 %.not73.4.i, label %bb.l, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(8) @.str.12) #22
  %.not73.5.i = icmp eq i32 %i.bc, 0
  br i1 %.not73.5.i, label %bb.l, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(14) @.str.13) #22
  %.not73.6.i = icmp eq i32 %i.bd, 0
  br i1 %.not73.6.i, label %bb.l, label %mygetopt_long.exit.thread651

bb.w:                                             ; preds = %bb.g
  %i.be = add nsw i32 %i.v, 1                     ; 2 uses
  store i32 %i.be, ptr @myoptind, align 4, !tbaa !9
  %.pre.i = load i8, ptr %i.ab, align 1, !tbaa !15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.c
  %i.bf = phi i32 [ %i.be, %bb.w ], [ %i.q, %bb.c ] ; 6 uses
  %i.bg = phi i8 [ %.pre.i, %bb.w ], [ %i.t, %bb.c ] ; 2 uses
  %i.bh = phi ptr [ %i.ab, %bb.w ], [ %.pr.i, %bb.c ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 5 uses
  store ptr %i.bi, ptr @mygetopt_long.next, align 8, !tbaa !14
  %i.bj = zext i8 %i.bg to i32                    ; 9 uses
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.17, i32 %i.bj, i64 91) ; 2 uses
  %i.bk = icmp eq ptr %memchr.i, null
  %i.bl = and i8 %i.bg, -2
  %i.bm = icmp eq i8 %i.bl, 58
  %or.cond3.i = select i1 %i.bk, i1 true, i1 %i.bm
  br i1 %or.cond3.i, label %mygetopt_long.exit.thread.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %memchr.i, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !15
  switch i8 %i.bo, label %mygetopt_long.exit.thread.a [
    i8 58, label %bb.z
    i8 59, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !15
  %.not71.i = icmp eq i8 %i.bp, 0
  br i1 %.not71.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.bi, ptr @myoptarg, align 8, !tbaa !14
  store ptr null, ptr @mygetopt_long.next, align 8, !tbaa !14
  br label %mygetopt_long.exit.thread.a

bb.ab:                                            ; preds = %bb.z
  %i.bq = icmp slt i32 %i.bf, %i.k
  br i1 %i.bq, label %bb.ac, label %mygetopt_long.exit.thread.thread

bb.ac:                                            ; preds = %bb.ab
  %i.br = sext i32 %i.bf to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !14
  store ptr %i.bt, ptr @myoptarg, align 8, !tbaa !14
  %i.bu = add nsw i32 %i.bf, 1
  store i32 %i.bu, ptr @myoptind, align 4, !tbaa !9
  br label %mygetopt_long.exit.thread.a

bb.ad:                                            ; preds = %bb.y
  store ptr @.str.71, ptr @myoptarg, align 8, !tbaa !14
  %i.bv = load i8, ptr %i.bi, align 1, !tbaa !15
  %.not68.i = icmp eq i8 %i.bv, 0
  br i1 %.not68.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.bi, ptr @myoptarg, align 8, !tbaa !14
  store ptr null, ptr @mygetopt_long.next, align 8, !tbaa !14
  br label %mygetopt_long.exit.thread.a

bb.af:                                            ; preds = %bb.ad
  %i.bw = icmp slt i32 %i.bf, %i.k
  br i1 %i.bw, label %bb.ag, label %mygetopt_long.exit.thread.a

bb.ag:                                            ; preds = %bb.af
  %i.bx = sext i32 %i.bf to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !14 ; 3 uses
  %.not69.i = icmp eq ptr %i.bz, null
  br i1 %.not69.i, label %mygetopt_long.exit.thread.a, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !15
  %.not70.i = icmp eq i8 %i.ca, 45
  br i1 %.not70.i, label %mygetopt_long.exit.thread.a, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.bz, ptr @myoptarg, align 8, !tbaa !14
  %i.cb = add nsw i32 %i.bf, 1
  store i32 %i.cb, ptr @myoptind, align 4, !tbaa !9
  br label %mygetopt_long.exit.thread.a

mygetopt_long.exit:                               ; preds = %bb.l, %bb.o, %._crit_edge.i
  %.not.old = icmp eq i32 %i.aq, -1
  br i1 %.not.old, label %mygetopt_long.exit.thread651, label %mygetopt_long.exit.thread.a

mygetopt_long.exit.thread.a:                      ; preds = %bb.p, %bb.ae, %bb.ag, %bb.ah, %bb.ai, %bb.af, %bb.y, %bb.aa, %bb.ac, %mygetopt_long.exit
  %.1.i649 = phi i32 [ %i.aq, %mygetopt_long.exit ], [ %i.bj, %bb.ae ], [ %i.bj, %bb.ag ], [ %i.bj, %bb.ah ], [ %i.bj, %bb.ai ], [ %i.bj, %bb.af ], [ %i.bj, %bb.y ], [ %i.bj, %bb.aa ], [ %i.bj, %bb.ac ], [ %i.aq, %bb.p ]
  switch i32 %.1.i649, label %bb.df [
    i32 63, label %mygetopt_long.exit.thread.thread
    i32 257, label %bb.al
    i32 258, label %bb.am
    i32 103, label %bb.an
    i32 100, label %bb.ao
    i32 101, label %bb.ap
    i32 68, label %bb.aq
    i32 67, label %.lr.ph.backedge
    i32 117, label %bb.ar
    i32 71, label %.lr.ph.backedge
    i32 115, label %bb.as
    i32 109, label %bb.at
    i32 120, label %bb.au
    i32 88, label %.lr.ph.backedge
    i32 102, label %bb.av
    i32 85, label %.lr.ph.backedge
    i32 80, label %.lr.ph.backedge
    i32 104, label %bb.aw
    i32 112, label %bb.ax
    i32 118, label %bb.ay
    i32 86, label %bb.bb
    i32 108, label %bb.bc
    i32 72, label %bb.bd
    i32 65, label %bb.bs
    i32 99, label %bb.bt
    i32 107, label %bb.bu
    i32 90, label %bb.bv
    i32 98, label %bb.bx
    i32 66, label %bb.bz
    i32 78, label %bb.ce
    i32 114, label %bb.cf
    i32 119, label %bb.cg
    i32 82, label %.lr.ph.backedge
    i32 105, label %.lr.ph.backedge
    i32 122, label %bb.ch
    i32 83, label %bb.ci
    i32 70, label %.lr.ph.backedge
    i32 84, label %.lr.ph.backedge
    i32 110, label %bb.ck
    i32 87, label %.lr.ph.backedge
    i32 111, label %.lr.ph.backedge
    i32 79, label %.lr.ph.backedge
    i32 97, label %.lr.ph.backedge
    i32 76, label %.lr.ph.backedge
    i32 77, label %bb.cl
    i32 113, label %.lr.ph.backedge
    i32 74, label %bb.cn
    i32 75, label %bb.co
    i32 73, label %bb.cp
    i32 121, label %bb.cq
    i32 89, label %bb.cr
    i32 106, label %bb.cs
    i32 116, label %.lr.ph.backedge
    i32 81, label %.lr.ph.backedge
    i32 48, label %.lr.ph.backedge
    i32 49, label %bb.ct
    i32 50, label %bb.cu
    i32 51, label %.lr.ph.backedge
    i32 52, label %.lr.ph.backedge
    i32 53, label %.lr.ph.backedge
    i32 54, label %bb.cv
    i32 55, label %bb.cw
    i32 56, label %.lr.ph.backedge
    i32 57, label %.lr.ph.backedge
    i32 64, label %bb.cy
    i32 35, label %bb.cz
    i32 259, label %bb.da
    i32 263, label %bb.db
    i32 264, label %bb.dc
    i32 265, label %.lr.ph.backedge
    i32 266, label %bb.dd
    i32 267, label %.lr.ph.backedge
    i32 268, label %bb.de
    i32 269, label %.lr.ph.backedge
  ]

.lr.ph.backedge:                                  ; preds = %bb.ci, %bb.ay, %bb.ct, %bb.cw, %bb.cl, %.loopexit, %bb.bx, %bb.bv, %bb.be, %bb.bi, %bb.bm, %bb.bq, %bb.bo, %bb.bk, %bb.bg, %bb.az, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cv, %bb.cu, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.ck, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.bu, %bb.bt, %bb.bs, %bb.bc, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao, %bb.an, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a
  %.01759.be = phi i32 [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %bb.an ], [ %.01759, %bb.ao ], [ %.01759, %bb.aq ], [ %.01759, %bb.ar ], [ %.01759, %bb.as ], [ %.01759, %bb.at ], [ %.01759, %bb.au ], [ %.01759, %bb.ci ], [ %.01759, %bb.av ], [ %.01759, %bb.aw ], [ %.01759, %bb.ax ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %bb.az ], [ %.01759, %bb.bc ], [ %.01759, %bb.be ], [ %.01759, %bb.bg ], [ %.01759, %bb.bi ], [ %.01759, %bb.bk ], [ %.01759, %bb.bm ], [ %.01759, %bb.bo ], [ %.01759, %bb.bq ], [ %.01759, %bb.bs ], [ %.01759, %bb.bt ], [ %.01759, %bb.bu ], [ %.01759, %bb.bv ], [ %.01759, %bb.bx ], [ %.01759, %.loopexit ], [ %.01759, %bb.ce ], [ %.01759, %bb.cf ], [ %.01759, %bb.cg ], [ %.01759, %bb.ch ], [ %.01759, %bb.ay ], [ %.01759, %bb.ck ], [ %.01759, %bb.cl ], [ %.01759, %bb.cn ], [ %.01759, %bb.co ], [ %.01759, %bb.cp ], [ %.01759, %bb.cq ], [ %.01759, %bb.cr ], [ %.01759, %bb.cs ], [ %.01759, %bb.ct ], [ %.01759, %bb.cu ], [ %.01759, %bb.cv ], [ %.01759, %bb.cw ], [ %.01759, %bb.da ], [ %.01759, %bb.db ], [ %.01759, %bb.dc ], [ %.01759, %bb.dd ], [ 2, %bb.de ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ], [ %.01759, %mygetopt_long.exit.thread.a ]
  %.04191757.be = phi i32 [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %bb.an ], [ %.04191757, %bb.ao ], [ %.04191757, %bb.aq ], [ %.04191757, %bb.ar ], [ %.04191757, %bb.as ], [ %.04191757, %bb.at ], [ %.04191757, %bb.au ], [ %.04191757, %bb.ci ], [ %.04191757, %bb.av ], [ %.04191757, %bb.aw ], [ %.04191757, %bb.ax ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %bb.az ], [ %.04191757, %bb.bc ], [ %.04191757, %bb.be ], [ %.04191757, %bb.bg ], [ %.04191757, %bb.bi ], [ %.04191757, %bb.bk ], [ %.04191757, %bb.bm ], [ %.04191757, %bb.bo ], [ 1, %bb.bq ], [ %.04191757, %bb.bs ], [ %.04191757, %bb.bt ], [ %.04191757, %bb.bu ], [ %.04191757, %bb.bv ], [ %.04191757, %bb.bx ], [ %.04191757, %.loopexit ], [ %.04191757, %bb.ce ], [ %.04191757, %bb.cf ], [ %.04191757, %bb.cg ], [ %.04191757, %bb.ch ], [ %.04191757, %bb.ay ], [ %.04191757, %bb.ck ], [ %.04191757, %bb.cl ], [ %.04191757, %bb.cn ], [ %.04191757, %bb.co ], [ %.04191757, %bb.cp ], [ %.04191757, %bb.cq ], [ %.04191757, %bb.cr ], [ %.04191757, %bb.cs ], [ %.04191757, %bb.ct ], [ %.04191757, %bb.cu ], [ %.04191757, %bb.cv ], [ %.04191757, %bb.cw ], [ %.04191757, %bb.da ], [ %.04191757, %bb.db ], [ %.04191757, %bb.dc ], [ %.04191757, %bb.dd ], [ %.04191757, %bb.de ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ], [ %.04191757, %mygetopt_long.exit.thread.a ]
  %.04211755.be = phi i8 [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %bb.an ], [ %.04211755, %bb.ao ], [ %.04211755, %bb.aq ], [ %.04211755, %bb.ar ], [ %.04211755, %bb.as ], [ %.04211755, %bb.at ], [ %.04211755, %bb.au ], [ %.04211755, %bb.ci ], [ %.04211755, %bb.av ], [ %.04211755, %bb.aw ], [ %.04211755, %bb.ax ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %bb.az ], [ %.04211755, %bb.bc ], [ %.04211755, %bb.be ], [ %.04211755, %bb.bg ], [ %.04211755, %bb.bi ], [ %.04211755, %bb.bk ], [ %.04211755, %bb.bm ], [ %.04211755, %bb.bo ], [ %.04211755, %bb.bq ], [ %.04211755, %bb.bs ], [ %.04211755, %bb.bt ], [ %.04211755, %bb.bu ], [ %.04211755, %bb.bv ], [ %.04211755, %bb.bx ], [ %.04211755, %.loopexit ], [ %.04211755, %bb.ce ], [ %.04211755, %bb.cf ], [ %.04211755, %bb.cg ], [ %.04211755, %bb.ch ], [ %.04211755, %bb.ay ], [ %.04211755, %bb.ck ], [ %.04211755, %bb.cl ], [ %.04211755, %bb.cn ], [ %.04211755, %bb.co ], [ %.04211755, %bb.cp ], [ %.04211755, %bb.cq ], [ %.04211755, %bb.cr ], [ %.04211755, %bb.cs ], [ %.04211755, %bb.ct ], [ %.04211755, %bb.cu ], [ %.04211755, %bb.cv ], [ %.04211755, %bb.cw ], [ %.04211755, %bb.da ], [ 1, %bb.db ], [ %.04211755, %bb.dc ], [ %.04211755, %bb.dd ], [ %.04211755, %bb.de ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ], [ %.04211755, %mygetopt_long.exit.thread.a ]
  %.04231753.be = phi i32 [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %bb.an ], [ %.04231753, %bb.ao ], [ %.04231753, %bb.aq ], [ %.04231753, %bb.ar ], [ %.04231753, %bb.as ], [ %.04231753, %bb.at ], [ %.04231753, %bb.au ], [ %.04231753, %bb.ci ], [ %.04231753, %bb.av ], [ %.04231753, %bb.aw ], [ %.04231753, %bb.ax ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %bb.az ], [ %.04231753, %bb.bc ], [ %.04231753, %bb.be ], [ %.04231753, %bb.bg ], [ %.04231753, %bb.bi ], [ %.04231753, %bb.bk ], [ %.04231753, %bb.bm ], [ 1, %bb.bo ], [ %.04231753, %bb.bq ], [ %.04231753, %bb.bs ], [ %.04231753, %bb.bt ], [ %.04231753, %bb.bu ], [ %.04231753, %bb.bv ], [ %.04231753, %bb.bx ], [ %.04231753, %.loopexit ], [ %.04231753, %bb.ce ], [ %.04231753, %bb.cf ], [ %.04231753, %bb.cg ], [ %.04231753, %bb.ch ], [ %.04231753, %bb.ay ], [ %.04231753, %bb.ck ], [ %.04231753, %bb.cl ], [ %.04231753, %bb.cn ], [ %.04231753, %bb.co ], [ %.04231753, %bb.cp ], [ %.04231753, %bb.cq ], [ %.04231753, %bb.cr ], [ %.04231753, %bb.cs ], [ %.04231753, %bb.ct ], [ %.04231753, %bb.cu ], [ %.04231753, %bb.cv ], [ %.04231753, %bb.cw ], [ %.04231753, %bb.da ], [ %.04231753, %bb.db ], [ %.04231753, %bb.dc ], [ %.04231753, %bb.dd ], [ %.04231753, %bb.de ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ], [ %.04231753, %mygetopt_long.exit.thread.a ]
  %.04251751.be = phi i32 [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %bb.an ], [ %.04251751, %bb.ao ], [ %.04251751, %bb.aq ], [ %.04251751, %bb.ar ], [ %.04251751, %bb.as ], [ %.04251751, %bb.at ], [ %.04251751, %bb.au ], [ %.04251751, %bb.ci ], [ %.04251751, %bb.av ], [ %.04251751, %bb.aw ], [ %.04251751, %bb.ax ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %bb.az ], [ %.04251751, %bb.bc ], [ %.04251751, %bb.be ], [ 1, %bb.bg ], [ %.04251751, %bb.bi ], [ %.04251751, %bb.bk ], [ %.04251751, %bb.bm ], [ %.04251751, %bb.bo ], [ %.04251751, %bb.bq ], [ %.04251751, %bb.bs ], [ %.04251751, %bb.bt ], [ %.04251751, %bb.bu ], [ %.04251751, %bb.bv ], [ %.04251751, %bb.bx ], [ %.04251751, %.loopexit ], [ %.04251751, %bb.ce ], [ %.04251751, %bb.cf ], [ %.04251751, %bb.cg ], [ %.04251751, %bb.ch ], [ %.04251751, %bb.ay ], [ %.04251751, %bb.ck ], [ %.04251751, %bb.cl ], [ %.04251751, %bb.cn ], [ %.04251751, %bb.co ], [ %.04251751, %bb.cp ], [ %.04251751, %bb.cq ], [ %.04251751, %bb.cr ], [ %.04251751, %bb.cs ], [ %.04251751, %bb.ct ], [ %.04251751, %bb.cu ], [ %.04251751, %bb.cv ], [ %.04251751, %bb.cw ], [ %.04251751, %bb.da ], [ %.04251751, %bb.db ], [ %.04251751, %bb.dc ], [ %.04251751, %bb.dd ], [ %.04251751, %bb.de ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ], [ %.04251751, %mygetopt_long.exit.thread.a ]
  %.04271749.be = phi ptr [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %bb.an ], [ %.04271749, %bb.ao ], [ %.04271749, %bb.aq ], [ %.04271749, %bb.ar ], [ %.04271749, %bb.as ], [ %.04271749, %bb.at ], [ %.04271749, %bb.au ], [ %.04271749, %bb.ci ], [ %.04271749, %bb.av ], [ %.04271749, %bb.aw ], [ %.04271749, %bb.ax ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %bb.az ], [ %.04271749, %bb.bc ], [ %.04271749, %bb.be ], [ %.04271749, %bb.bg ], [ %.04271749, %bb.bi ], [ %.04271749, %bb.bk ], [ %.04271749, %bb.bm ], [ %.04271749, %bb.bo ], [ %.04271749, %bb.bq ], [ %.04271749, %bb.bs ], [ %.04271749, %bb.bt ], [ %.04271749, %bb.bu ], [ %.04271749, %bb.bv ], [ %.04271749, %bb.bx ], [ %.04271749, %.loopexit ], [ %.04271749, %bb.ce ], [ %.04271749, %bb.cf ], [ %.04271749, %bb.cg ], [ %.04271749, %bb.ch ], [ %.04271749, %bb.ay ], [ %.04271749, %bb.ck ], [ %.04271749, %bb.cl ], [ %.04271749, %bb.cn ], [ %.04271749, %bb.co ], [ %.04271749, %bb.cp ], [ %.04271749, %bb.cq ], [ %.04271749, %bb.cr ], [ %.04271749, %bb.cs ], [ %.04271749, %bb.ct ], [ %.04271749, %bb.cu ], [ %.04271749, %bb.cv ], [ %.04271749, %bb.cw ], [ %i.em, %bb.da ], [ %.04271749, %bb.db ], [ %.04271749, %bb.dc ], [ %.04271749, %bb.dd ], [ %.04271749, %bb.de ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ], [ %.04271749, %mygetopt_long.exit.thread.a ]
  %.04291747.be = phi i32 [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %bb.an ], [ %.04291747, %bb.ao ], [ %.04291747, %bb.aq ], [ %.04291747, %bb.ar ], [ %.04291747, %bb.as ], [ %.04291747, %bb.at ], [ %.04291747, %bb.au ], [ %.04291747, %bb.ci ], [ %.04291747, %bb.av ], [ %.04291747, %bb.aw ], [ %.04291747, %bb.ax ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %bb.az ], [ %.04291747, %bb.bc ], [ %.04291747, %bb.be ], [ %.04291747, %bb.bg ], [ %.04291747, %bb.bi ], [ %.04291747, %bb.bk ], [ %.04291747, %bb.bm ], [ %.04291747, %bb.bo ], [ %.04291747, %bb.bq ], [ %.04291747, %bb.bs ], [ %.04291747, %bb.bt ], [ %.04291747, %bb.bu ], [ %.04291747, %bb.bv ], [ %.04291747, %bb.bx ], [ %.04291747, %.loopexit ], [ %.04291747, %bb.ce ], [ %.04291747, %bb.cf ], [ %.04291747, %bb.cg ], [ %.04291747, %bb.ch ], [ %.04291747, %bb.ay ], [ %.04291747, %bb.ck ], [ %.04291747, %bb.cl ], [ %.04291747, %bb.cn ], [ %.04291747, %bb.co ], [ %.04291747, %bb.cp ], [ %.04291747, %bb.cq ], [ %.04291747, %bb.cr ], [ %.04291747, %bb.cs ], [ %.04291747, %bb.ct ], [ %.04291747, %bb.cu ], [ %.04291747, %bb.cv ], [ %.04291747, %bb.cw ], [ 1, %bb.da ], [ %.04291747, %bb.db ], [ %.04291747, %bb.dc ], [ %.04291747, %bb.dd ], [ %.04291747, %bb.de ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ], [ %.04291747, %mygetopt_long.exit.thread.a ]
  %.04311745.be = phi i32 [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %bb.an ], [ %.04311745, %bb.ao ], [ %.04311745, %bb.aq ], [ %.04311745, %bb.ar ], [ %.04311745, %bb.as ], [ %.04311745, %bb.at ], [ %.04311745, %bb.au ], [ %.04311745, %bb.ci ], [ %.04311745, %bb.av ], [ %.04311745, %bb.aw ], [ %.04311745, %bb.ax ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %bb.az ], [ %.04311745, %bb.bc ], [ %.04311745, %bb.be ], [ %.04311745, %bb.bg ], [ %.04311745, %bb.bi ], [ %.04311745, %bb.bk ], [ %.04311745, %bb.bm ], [ %.04311745, %bb.bo ], [ %.04311745, %bb.bq ], [ %.04311745, %bb.bs ], [ %.04311745, %bb.bt ], [ %.04311745, %bb.bu ], [ %.04311745, %bb.bv ], [ %.04311745, %bb.bx ], [ %.04311745, %.loopexit ], [ %.04311745, %bb.ce ], [ %.04311745, %bb.cf ], [ %.04311745, %bb.cg ], [ %.04311745, %bb.ch ], [ %.04311745, %bb.ay ], [ %.04311745, %bb.ck ], [ %.04311745, %bb.cl ], [ %.04311745, %bb.cn ], [ %.04311745, %bb.co ], [ %.04311745, %bb.cp ], [ %.04311745, %bb.cq ], [ %.04311745, %bb.cr ], [ %.04311745, %bb.cs ], [ %.04311745, %bb.ct ], [ 0, %bb.cu ], [ %.04311745, %bb.cv ], [ %.04311745, %bb.cw ], [ %.04311745, %bb.da ], [ %.04311745, %bb.db ], [ %.04311745, %bb.dc ], [ %.04311745, %bb.dd ], [ %.04311745, %bb.de ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ], [ %.04311745, %mygetopt_long.exit.thread.a ]
  %.04331743.be = phi i32 [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %bb.an ], [ %.04331743, %bb.ao ], [ %.04331743, %bb.aq ], [ %.04331743, %bb.ar ], [ %.04331743, %bb.as ], [ %.04331743, %bb.at ], [ %.04331743, %bb.au ], [ %.04331743, %bb.ci ], [ %.04331743, %bb.av ], [ %.04331743, %bb.aw ], [ %.04331743, %bb.ax ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %bb.az ], [ %.04331743, %bb.bc ], [ %.04331743, %bb.be ], [ %.04331743, %bb.bg ], [ %.04331743, %bb.bi ], [ %.04331743, %bb.bk ], [ %.04331743, %bb.bm ], [ %.04331743, %bb.bo ], [ %.04331743, %bb.bq ], [ %.04331743, %bb.bs ], [ %.04331743, %bb.bt ], [ %.04331743, %bb.bu ], [ %.04331743, %bb.bv ], [ %.04331743, %bb.bx ], [ %.04331743, %.loopexit ], [ %.04331743, %bb.ce ], [ %.04331743, %bb.cf ], [ %.04331743, %bb.cg ], [ %.04331743, %bb.ch ], [ %.04331743, %bb.ay ], [ %.04331743, %bb.ck ], [ %.04331743, %bb.cl ], [ %.04331743, %bb.cn ], [ %.04331743, %bb.co ], [ 1, %bb.cp ], [ %.04331743, %bb.cq ], [ %.04331743, %bb.cr ], [ %.04331743, %bb.cs ], [ %.04331743, %bb.ct ], [ %.04331743, %bb.cu ], [ %.04331743, %bb.cv ], [ %.04331743, %bb.cw ], [ %.04331743, %bb.da ], [ %.04331743, %bb.db ], [ %.04331743, %bb.dc ], [ %.04331743, %bb.dd ], [ %.04331743, %bb.de ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ], [ %.04331743, %mygetopt_long.exit.thread.a ]
  %.04351741.be = phi i32 [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %bb.an ], [ %.04351741, %bb.ao ], [ %.04351741, %bb.aq ], [ %.04351741, %bb.ar ], [ %.04351741, %bb.as ], [ %.04351741, %bb.at ], [ %.04351741, %bb.au ], [ %.04351741, %bb.ci ], [ %.04351741, %bb.av ], [ %.04351741, %bb.aw ], [ %.04351741, %bb.ax ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %bb.az ], [ %.04351741, %bb.bc ], [ %.04351741, %bb.be ], [ %.04351741, %bb.bg ], [ %.04351741, %bb.bi ], [ %.04351741, %bb.bk ], [ %.04351741, %bb.bm ], [ %.04351741, %bb.bo ], [ %.04351741, %bb.bq ], [ %.04351741, %bb.bs ], [ %.04351741, %bb.bt ], [ %.04351741, %bb.bu ], [ %.04351741, %bb.bv ], [ %.04351741, %bb.bx ], [ %.04351741, %.loopexit ], [ %.04351741, %bb.ce ], [ %.04351741, %bb.cf ], [ %.04351741, %bb.cg ], [ %.04351741, %bb.ch ], [ %.04351741, %bb.ay ], [ %.04351741, %bb.ck ], [ %.04351741, %bb.cl ], [ %.04351741, %bb.cn ], [ %.04351741, %bb.co ], [ %.04351741, %bb.cp ], [ %.04351741, %bb.cq ], [ %.04351741, %bb.cr ], [ %.04351741, %bb.cs ], [ %.04351741, %bb.ct ], [ %.04351741, %bb.cu ], [ %.04351741, %bb.cv ], [ %.04351741, %bb.cw ], [ %.04351741, %bb.da ], [ %.04351741, %bb.db ], [ 1, %bb.dc ], [ %.04351741, %bb.dd ], [ %.04351741, %bb.de ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ], [ %.04351741, %mygetopt_long.exit.thread.a ]
  %.04371739.be = phi i32 [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %bb.an ], [ %.04371739, %bb.ao ], [ %.04371739, %bb.aq ], [ %.04371739, %bb.ar ], [ %.04371739, %bb.as ], [ %.04371739, %bb.at ], [ %.04371739, %bb.au ], [ %.04371739, %bb.ci ], [ %.04371739, %bb.av ], [ %.04371739, %bb.aw ], [ %.04371739, %bb.ax ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %bb.az ], [ %.04371739, %bb.bc ], [ %.04371739, %bb.be ], [ %.04371739, %bb.bg ], [ %.04371739, %bb.bi ], [ %.04371739, %bb.bk ], [ %.04371739, %bb.bm ], [ %.04371739, %bb.bo ], [ %.04371739, %bb.bq ], [ %.04371739, %bb.bs ], [ %.04371739, %bb.bt ], [ %.04371739, %bb.bu ], [ %.04371739, %bb.bv ], [ %.04371739, %bb.bx ], [ %.04371739, %.loopexit ], [ %.04371739, %bb.ce ], [ %.04371739, %bb.cf ], [ %.04371739, %bb.cg ], [ %.04371739, %bb.ch ], [ %.04371739, %bb.ay ], [ %.04371739, %bb.ck ], [ %.04371739, %bb.cl ], [ %.04371739, %bb.cn ], [ 1, %bb.co ], [ %.04371739, %bb.cp ], [ %.04371739, %bb.cq ], [ %.04371739, %bb.cr ], [ %.04371739, %bb.cs ], [ %.04371739, %bb.ct ], [ %.04371739, %bb.cu ], [ %.04371739, %bb.cv ], [ %.04371739, %bb.cw ], [ %.04371739, %bb.da ], [ %.04371739, %bb.db ], [ %.04371739, %bb.dc ], [ %.04371739, %bb.dd ], [ %.04371739, %bb.de ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ], [ %.04371739, %mygetopt_long.exit.thread.a ]
  %.04391737.be = phi i32 [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %bb.an ], [ %.04391737, %bb.ao ], [ %.04391737, %bb.aq ], [ %.04391737, %bb.ar ], [ %.04391737, %bb.as ], [ %.04391737, %bb.at ], [ %.04391737, %bb.au ], [ %.04391737, %bb.ci ], [ %.04391737, %bb.av ], [ %.04391737, %bb.aw ], [ %.04391737, %bb.ax ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %bb.az ], [ %.04391737, %bb.bc ], [ %.04391737, %bb.be ], [ %.04391737, %bb.bg ], [ %.04391737, %bb.bi ], [ %.04391737, %bb.bk ], [ %.04391737, %bb.bm ], [ %.04391737, %bb.bo ], [ %.04391737, %bb.bq ], [ %.04391737, %bb.bs ], [ %.04391737, %bb.bt ], [ %.04391737, %bb.bu ], [ %.04391737, %bb.bv ], [ %.04391737, %bb.bx ], [ %.04391737, %.loopexit ], [ %.04391737, %bb.ce ], [ %.04391737, %bb.cf ], [ %.04391737, %bb.cg ], [ %.04391737, %bb.ch ], [ %.04391737, %bb.ay ], [ %.04391737, %bb.ck ], [ %.04391737, %bb.cl ], [ %.04391737, %bb.cn ], [ %.04391737, %bb.co ], [ %.04391737, %bb.cp ], [ 1, %bb.cq ], [ 2, %bb.cr ], [ %.04391737, %bb.cs ], [ %.04391737, %bb.ct ], [ %.04391737, %bb.cu ], [ %.04391737, %bb.cv ], [ %.04391737, %bb.cw ], [ 3, %bb.da ], [ %.04391737, %bb.db ], [ %.04391737, %bb.dc ], [ %.04391737, %bb.dd ], [ %.04391737, %bb.de ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ], [ %.04391737, %mygetopt_long.exit.thread.a ]
  %.04411735.be = phi i32 [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %bb.an ], [ %.04411735, %bb.ao ], [ %.04411735, %bb.aq ], [ %.04411735, %bb.ar ], [ %.04411735, %bb.as ], [ %.04411735, %bb.at ], [ %.04411735, %bb.au ], [ %.04411735, %bb.ci ], [ %.04411735, %bb.av ], [ %.04411735, %bb.aw ], [ %.04411735, %bb.ax ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %bb.az ], [ %.04411735, %bb.bc ], [ %.04411735, %bb.be ], [ %.04411735, %bb.bg ], [ %.04411735, %bb.bi ], [ %.04411735, %bb.bk ], [ %.04411735, %bb.bm ], [ %.04411735, %bb.bo ], [ %.04411735, %bb.bq ], [ %.04411735, %bb.bs ], [ %.04411735, %bb.bt ], [ %.04411735, %bb.bu ], [ %.04411735, %bb.bv ], [ %.04411735, %bb.bx ], [ %.04411735, %.loopexit ], [ %.04411735, %bb.ce ], [ %.04411735, %bb.cf ], [ %.04411735, %bb.cg ], [ %.04411735, %bb.ch ], [ %.04411735, %bb.ay ], [ %.04411735, %bb.ck ], [ %.04411735, %bb.cl ], [ 1, %bb.cn ], [ %.04411735, %bb.co ], [ %.04411735, %bb.cp ], [ %.04411735, %bb.cq ], [ %.04411735, %bb.cr ], [ %.04411735, %bb.cs ], [ %.04411735, %bb.ct ], [ %.04411735, %bb.cu ], [ %.04411735, %bb.cv ], [ %.04411735, %bb.cw ], [ %.04411735, %bb.da ], [ %.04411735, %bb.db ], [ %.04411735, %bb.dc ], [ %.04411735, %bb.dd ], [ %.04411735, %bb.de ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ], [ %.04411735, %mygetopt_long.exit.thread.a ]
  %.04431733.be = phi i8 [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %bb.an ], [ %.04431733, %bb.ao ], [ %.04431733, %bb.aq ], [ %.04431733, %bb.ar ], [ %.04431733, %bb.as ], [ %.04431733, %bb.at ], [ %.04431733, %bb.au ], [ %.04431733, %bb.ci ], [ %.04431733, %bb.av ], [ %.04431733, %bb.aw ], [ %.04431733, %bb.ax ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %bb.az ], [ %.04431733, %bb.bc ], [ %.04431733, %bb.be ], [ %.04431733, %bb.bg ], [ %.04431733, %bb.bi ], [ %.04431733, %bb.bk ], [ %.04431733, %bb.bm ], [ %.04431733, %bb.bo ], [ %.04431733, %bb.bq ], [ %.04431733, %bb.bs ], [ %.04431733, %bb.bt ], [ %.04431733, %bb.bu ], [ %.04431733, %bb.bv ], [ %.04431733, %bb.bx ], [ %.04431733, %.loopexit ], [ %.04431733, %bb.ce ], [ %.04431733, %bb.cf ], [ %.04431733, %bb.cg ], [ %.04431733, %bb.ch ], [ %.04431733, %bb.ay ], [ 1, %bb.ck ], [ %.04431733, %bb.cl ], [ %.04431733, %bb.cn ], [ %.04431733, %bb.co ], [ %.04431733, %bb.cp ], [ %.04431733, %bb.cq ], [ %.04431733, %bb.cr ], [ %.04431733, %bb.cs ], [ %.04431733, %bb.ct ], [ %.04431733, %bb.cu ], [ %.04431733, %bb.cv ], [ %.04431733, %bb.cw ], [ %.04431733, %bb.da ], [ %.04431733, %bb.db ], [ %.04431733, %bb.dc ], [ %.04431733, %bb.dd ], [ %.04431733, %bb.de ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ], [ %.04431733, %mygetopt_long.exit.thread.a ]
  %.04451731.be = phi ptr [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %bb.an ], [ %.04451731, %bb.ao ], [ %.04451731, %bb.aq ], [ %.04451731, %bb.ar ], [ %.04451731, %bb.as ], [ %.04451731, %bb.at ], [ %.04451731, %bb.au ], [ %i.dz, %bb.ci ], [ %.04451731, %bb.av ], [ %.04451731, %bb.aw ], [ %.04451731, %bb.ax ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %bb.az ], [ %.04451731, %bb.bc ], [ %.04451731, %bb.be ], [ %.04451731, %bb.bg ], [ %.04451731, %bb.bi ], [ %.04451731, %bb.bk ], [ %.04451731, %bb.bm ], [ %.04451731, %bb.bo ], [ %.04451731, %bb.bq ], [ %.04451731, %bb.bs ], [ %.04451731, %bb.bt ], [ %.04451731, %bb.bu ], [ %.04451731, %bb.bv ], [ %.04451731, %bb.bx ], [ %.04451731, %.loopexit ], [ %.04451731, %bb.ce ], [ %.04451731, %bb.cf ], [ %.04451731, %bb.cg ], [ %.04451731, %bb.ch ], [ %.04451731, %bb.ay ], [ %.04451731, %bb.ck ], [ %.04451731, %bb.cl ], [ %.04451731, %bb.cn ], [ %.04451731, %bb.co ], [ %.04451731, %bb.cp ], [ %.04451731, %bb.cq ], [ %.04451731, %bb.cr ], [ %.04451731, %bb.cs ], [ %.04451731, %bb.ct ], [ %.04451731, %bb.cu ], [ %.04451731, %bb.cv ], [ %.04451731, %bb.cw ], [ %.04451731, %bb.da ], [ %.04451731, %bb.db ], [ %.04451731, %bb.dc ], [ %.04451731, %bb.dd ], [ %.04451731, %bb.de ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ], [ %.04451731, %mygetopt_long.exit.thread.a ]
  %.04471729.be = phi i32 [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %bb.an ], [ %.04471729, %bb.ao ], [ %.04471729, %bb.aq ], [ %.04471729, %bb.ar ], [ %.04471729, %bb.as ], [ %.04471729, %bb.at ], [ %.04471729, %bb.au ], [ %.04471729, %bb.ci ], [ %.04471729, %bb.av ], [ %.04471729, %bb.aw ], [ %.04471729, %bb.ax ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %bb.az ], [ %.04471729, %bb.bc ], [ %.04471729, %bb.be ], [ %.04471729, %bb.bg ], [ %.04471729, %bb.bi ], [ %.04471729, %bb.bk ], [ 1, %bb.bm ], [ %.04471729, %bb.bo ], [ %.04471729, %bb.bq ], [ %.04471729, %bb.bs ], [ %.04471729, %bb.bt ], [ %.04471729, %bb.bu ], [ %.04471729, %bb.bv ], [ %.04471729, %bb.bx ], [ %.04471729, %.loopexit ], [ %.04471729, %bb.ce ], [ %.04471729, %bb.cf ], [ %.04471729, %bb.cg ], [ %.04471729, %bb.ch ], [ %.04471729, %bb.ay ], [ %.04471729, %bb.ck ], [ %.04471729, %bb.cl ], [ %.04471729, %bb.cn ], [ %.04471729, %bb.co ], [ %.04471729, %bb.cp ], [ %.04471729, %bb.cq ], [ %.04471729, %bb.cr ], [ %.04471729, %bb.cs ], [ %.04471729, %bb.ct ], [ %.04471729, %bb.cu ], [ %.04471729, %bb.cv ], [ %.04471729, %bb.cw ], [ %.04471729, %bb.da ], [ %.04471729, %bb.db ], [ %.04471729, %bb.dc ], [ %.04471729, %bb.dd ], [ %.04471729, %bb.de ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ], [ %.04471729, %mygetopt_long.exit.thread.a ]
  %.04491727.be = phi i32 [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %bb.an ], [ %.04491727, %bb.ao ], [ %.04491727, %bb.aq ], [ %.04491727, %bb.ar ], [ %.04491727, %bb.as ], [ %.04491727, %bb.at ], [ %.04491727, %bb.au ], [ %.04491727, %bb.ci ], [ %.04491727, %bb.av ], [ %.04491727, %bb.aw ], [ %.04491727, %bb.ax ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %bb.az ], [ %.04491727, %bb.bc ], [ %.04491727, %bb.be ], [ %.04491727, %bb.bg ], [ %.04491727, %bb.bi ], [ %.04491727, %bb.bk ], [ %.04491727, %bb.bm ], [ %.04491727, %bb.bo ], [ %.04491727, %bb.bq ], [ %.04491727, %bb.bs ], [ %.04491727, %bb.bt ], [ %.04491727, %bb.bu ], [ %.04491727, %bb.bv ], [ %.04491727, %bb.bx ], [ %.04491727, %.loopexit ], [ %.04491727, %bb.ce ], [ %.04491727, %bb.cf ], [ %.04491727, %bb.cg ], [ %.04491727, %bb.ch ], [ %.04491727, %bb.ay ], [ %.04491727, %bb.ck ], [ %.04491727, %bb.cl ], [ %.04491727, %bb.cn ], [ %.04491727, %bb.co ], [ %.04491727, %bb.cp ], [ %.04491727, %bb.cq ], [ %.04491727, %bb.cr ], [ 1, %bb.cs ], [ %.04491727, %bb.ct ], [ %.04491727, %bb.cu ], [ %.04491727, %bb.cv ], [ %.04491727, %bb.cw ], [ %.04491727, %bb.da ], [ %.04491727, %bb.db ], [ %.04491727, %bb.dc ], [ %.04491727, %bb.dd ], [ %.04491727, %bb.de ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ], [ %.04491727, %mygetopt_long.exit.thread.a ]
  %.04511725.be = phi ptr [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %bb.an ], [ %.04511725, %bb.ao ], [ %.04511725, %bb.aq ], [ %.04511725, %bb.ar ], [ %.04511725, %bb.as ], [ %.04511725, %bb.at ], [ %.04511725, %bb.au ], [ %.04511725, %bb.ci ], [ %.04511725, %bb.av ], [ %.04511725, %bb.aw ], [ %.04511725, %bb.ax ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %bb.az ], [ %.04511725, %bb.bc ], [ %.04511725, %bb.be ], [ %.04511725, %bb.bg ], [ %.04511725, %bb.bi ], [ %.04511725, %bb.bk ], [ %.04511725, %bb.bm ], [ %.04511725, %bb.bo ], [ %.04511725, %bb.bq ], [ %.04511725, %bb.bs ], [ %.04511725, %bb.bt ], [ %.04511725, %bb.bu ], [ %.04511725, %bb.bv ], [ %.04511725, %bb.bx ], [ %.04511725, %.loopexit ], [ %.04511725, %bb.ce ], [ %.04511725, %bb.cf ], [ %.04511725, %bb.cg ], [ %.04511725, %bb.ch ], [ %.04511725, %bb.ay ], [ %.04511725, %bb.ck ], [ %i.ec, %bb.cl ], [ %.04511725, %bb.cn ], [ %.04511725, %bb.co ], [ %.04511725, %bb.cp ], [ %.04511725, %bb.cq ], [ %.04511725, %bb.cr ], [ %.04511725, %bb.cs ], [ %.04511725, %bb.ct ], [ %.04511725, %bb.cu ], [ %.04511725, %bb.cv ], [ %.04511725, %bb.cw ], [ %.04511725, %bb.da ], [ %.04511725, %bb.db ], [ %.04511725, %bb.dc ], [ %.04511725, %bb.dd ], [ %.04511725, %bb.de ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ], [ %.04511725, %mygetopt_long.exit.thread.a ]
  %.04531723.be = phi i32 [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %bb.an ], [ %.04531723, %bb.ao ], [ %.04531723, %bb.aq ], [ %.04531723, %bb.ar ], [ %.04531723, %bb.as ], [ %.04531723, %bb.at ], [ %.04531723, %bb.au ], [ %.04531723, %bb.ci ], [ %.04531723, %bb.av ], [ %.04531723, %bb.aw ], [ %.04531723, %bb.ax ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %bb.az ], [ %.04531723, %bb.bc ], [ %.04531723, %bb.be ], [ %.04531723, %bb.bg ], [ %.04531723, %bb.bi ], [ %.04531723, %bb.bk ], [ %.04531723, %bb.bm ], [ %.04531723, %bb.bo ], [ %.04531723, %bb.bq ], [ %.04531723, %bb.bs ], [ %.04531723, %bb.bt ], [ %.04531723, %bb.bu ], [ %.04531723, %bb.bv ], [ %.04531723, %bb.bx ], [ %.04531723, %.loopexit ], [ %.04531723, %bb.ce ], [ %.04531723, %bb.cf ], [ %.04531723, %bb.cg ], [ %.04531723, %bb.ch ], [ %.04531723, %bb.ay ], [ %.04531723, %bb.ck ], [ 1, %bb.cl ], [ %.04531723, %bb.cn ], [ %.04531723, %bb.co ], [ %.04531723, %bb.cp ], [ %.04531723, %bb.cq ], [ %.04531723, %bb.cr ], [ %.04531723, %bb.cs ], [ %.04531723, %bb.ct ], [ %.04531723, %bb.cu ], [ %.04531723, %bb.cv ], [ %.04531723, %bb.cw ], [ %.04531723, %bb.da ], [ %.04531723, %bb.db ], [ %.04531723, %bb.dc ], [ %.04531723, %bb.dd ], [ %.04531723, %bb.de ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ], [ %.04531723, %mygetopt_long.exit.thread.a ]
  %.04551721.be = phi ptr [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %bb.an ], [ %.04551721, %bb.ao ], [ %.04551721, %bb.aq ], [ %.04551721, %bb.ar ], [ %.04551721, %bb.as ], [ %.04551721, %bb.at ], [ %.04551721, %bb.au ], [ %.04551721, %bb.ci ], [ %.04551721, %bb.av ], [ %.04551721, %bb.aw ], [ %.04551721, %bb.ax ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %bb.az ], [ %.04551721, %bb.bc ], [ %.04551721, %bb.be ], [ %.04551721, %bb.bg ], [ %.04551721, %bb.bi ], [ %.04551721, %bb.bk ], [ %.04551721, %bb.bm ], [ %.04551721, %bb.bo ], [ %.04551721, %bb.bq ], [ %.04551721, %bb.bs ], [ %.04551721, %bb.bt ], [ %i.dg, %bb.bu ], [ %.04551721, %bb.bv ], [ %.04551721, %bb.bx ], [ %.04551721, %.loopexit ], [ %.04551721, %bb.ce ], [ %.04551721, %bb.cf ], [ %.04551721, %bb.cg ], [ %.04551721, %bb.ch ], [ %.04551721, %bb.ay ], [ %.04551721, %bb.ck ], [ %.04551721, %bb.cl ], [ %.04551721, %bb.cn ], [ %.04551721, %bb.co ], [ %.04551721, %bb.cp ], [ %.04551721, %bb.cq ], [ %.04551721, %bb.cr ], [ %.04551721, %bb.cs ], [ %.04551721, %bb.ct ], [ %.04551721, %bb.cu ], [ %.04551721, %bb.cv ], [ %.04551721, %bb.cw ], [ %.04551721, %bb.da ], [ %.04551721, %bb.db ], [ %.04551721, %bb.dc ], [ %.04551721, %bb.dd ], [ %.04551721, %bb.de ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ], [ %.04551721, %mygetopt_long.exit.thread.a ]
  %.04571719.be = phi ptr [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %bb.an ], [ %.04571719, %bb.ao ], [ %.04571719, %bb.aq ], [ %.04571719, %bb.ar ], [ %.04571719, %bb.as ], [ %.04571719, %bb.at ], [ %.04571719, %bb.au ], [ %.04571719, %bb.ci ], [ %.04571719, %bb.av ], [ %.04571719, %bb.aw ], [ %.04571719, %bb.ax ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %bb.az ], [ %.04571719, %bb.bc ], [ %.04571719, %bb.be ], [ %.04571719, %bb.bg ], [ %.04571719, %bb.bi ], [ %.04571719, %bb.bk ], [ %.04571719, %bb.bm ], [ %.04571719, %bb.bo ], [ %.04571719, %bb.bq ], [ %.04571719, %bb.bs ], [ %i.df, %bb.bt ], [ %.04571719, %bb.bu ], [ %.04571719, %bb.bv ], [ %.04571719, %bb.bx ], [ %.04571719, %.loopexit ], [ %.04571719, %bb.ce ], [ %.04571719, %bb.cf ], [ %.04571719, %bb.cg ], [ %.04571719, %bb.ch ], [ %.04571719, %bb.ay ], [ %.04571719, %bb.ck ], [ %.04571719, %bb.cl ], [ %.04571719, %bb.cn ], [ %.04571719, %bb.co ], [ %.04571719, %bb.cp ], [ %.04571719, %bb.cq ], [ %.04571719, %bb.cr ], [ %.04571719, %bb.cs ], [ %.04571719, %bb.ct ], [ %.04571719, %bb.cu ], [ %.04571719, %bb.cv ], [ %.04571719, %bb.cw ], [ %.04571719, %bb.da ], [ %.04571719, %bb.db ], [ %.04571719, %bb.dc ], [ %.04571719, %bb.dd ], [ %.04571719, %bb.de ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ], [ %.04571719, %mygetopt_long.exit.thread.a ]
  %.04591717.be = phi ptr [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %bb.an ], [ %.04591717, %bb.ao ], [ %.04591717, %bb.aq ], [ %.04591717, %bb.ar ], [ %.04591717, %bb.as ], [ %.04591717, %bb.at ], [ %.04591717, %bb.au ], [ %.04591717, %bb.ci ], [ %.04591717, %bb.av ], [ %.04591717, %bb.aw ], [ %.04591717, %bb.ax ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %bb.az ], [ %.04591717, %bb.bc ], [ %.04591717, %bb.be ], [ %.04591717, %bb.bg ], [ %.04591717, %bb.bi ], [ %.04591717, %bb.bk ], [ %.04591717, %bb.bm ], [ %.04591717, %bb.bo ], [ %.04591717, %bb.bq ], [ %i.de, %bb.bs ], [ %.04591717, %bb.bt ], [ %.04591717, %bb.bu ], [ %.04591717, %bb.bv ], [ %.04591717, %bb.bx ], [ %.04591717, %.loopexit ], [ %.04591717, %bb.ce ], [ %.04591717, %bb.cf ], [ %.04591717, %bb.cg ], [ %.04591717, %bb.ch ], [ %.04591717, %bb.ay ], [ %.04591717, %bb.ck ], [ %.04591717, %bb.cl ], [ %.04591717, %bb.cn ], [ %.04591717, %bb.co ], [ %.04591717, %bb.cp ], [ %.04591717, %bb.cq ], [ %.04591717, %bb.cr ], [ %.04591717, %bb.cs ], [ %.04591717, %bb.ct ], [ %.04591717, %bb.cu ], [ %.04591717, %bb.cv ], [ %.04591717, %bb.cw ], [ %.04591717, %bb.da ], [ %.04591717, %bb.db ], [ %.04591717, %bb.dc ], [ %.04591717, %bb.dd ], [ %.04591717, %bb.de ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ], [ %.04591717, %mygetopt_long.exit.thread.a ]
  %.04611715.be = phi i32 [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %bb.an ], [ %.04611715, %bb.ao ], [ %.04611715, %bb.aq ], [ %.04611715, %bb.ar ], [ %.04611715, %bb.as ], [ %.04611715, %bb.at ], [ %.04611715, %bb.au ], [ %.04611715, %bb.ci ], [ %.04611715, %bb.av ], [ %.04611715, %bb.aw ], [ %.04611715, %bb.ax ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %bb.az ], [ %.04611715, %bb.bc ], [ %.04611715, %bb.be ], [ %.04611715, %bb.bg ], [ %.04611715, %bb.bi ], [ %.04611715, %bb.bk ], [ %.04611715, %bb.bm ], [ %.04611715, %bb.bo ], [ %.04611715, %bb.bq ], [ 1, %bb.bs ], [ %.04611715, %bb.bt ], [ %.04611715, %bb.bu ], [ %.04611715, %bb.bv ], [ %.04611715, %bb.bx ], [ %.04611715, %.loopexit ], [ %.04611715, %bb.ce ], [ %.04611715, %bb.cf ], [ %.04611715, %bb.cg ], [ %.04611715, %bb.ch ], [ %.04611715, %bb.ay ], [ %.04611715, %bb.ck ], [ %.04611715, %bb.cl ], [ %.04611715, %bb.cn ], [ %.04611715, %bb.co ], [ %.04611715, %bb.cp ], [ %.04611715, %bb.cq ], [ %.04611715, %bb.cr ], [ %.04611715, %bb.cs ], [ %.04611715, %bb.ct ], [ %.04611715, %bb.cu ], [ %.04611715, %bb.cv ], [ %.04611715, %bb.cw ], [ %.04611715, %bb.da ], [ %.04611715, %bb.db ], [ %.04611715, %bb.dc ], [ %.04611715, %bb.dd ], [ %.04611715, %bb.de ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ], [ %.04611715, %mygetopt_long.exit.thread.a ]
  %.04631713.be = phi i32 [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %bb.an ], [ %.04631713, %bb.ao ], [ %.04631713, %bb.aq ], [ %.04631713, %bb.ar ], [ %.04631713, %bb.as ], [ %.04631713, %bb.at ], [ %.04631713, %bb.au ], [ %.04631713, %bb.ci ], [ %.04631713, %bb.av ], [ %.04631713, %bb.aw ], [ %.04631713, %bb.ax ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %bb.az ], [ %.04631713, %bb.bc ], [ 1, %bb.be ], [ %.04631713, %bb.bg ], [ %.04631713, %bb.bi ], [ %.04631713, %bb.bk ], [ %.04631713, %bb.bm ], [ %.04631713, %bb.bo ], [ %.04631713, %bb.bq ], [ %.04631713, %bb.bs ], [ %.04631713, %bb.bt ], [ %.04631713, %bb.bu ], [ %.04631713, %bb.bv ], [ %.04631713, %bb.bx ], [ %.04631713, %.loopexit ], [ %.04631713, %bb.ce ], [ %.04631713, %bb.cf ], [ %.04631713, %bb.cg ], [ %.04631713, %bb.ch ], [ %.04631713, %bb.ay ], [ %.04631713, %bb.ck ], [ %.04631713, %bb.cl ], [ %.04631713, %bb.cn ], [ %.04631713, %bb.co ], [ %.04631713, %bb.cp ], [ %.04631713, %bb.cq ], [ %.04631713, %bb.cr ], [ %.04631713, %bb.cs ], [ %.04631713, %bb.ct ], [ %.04631713, %bb.cu ], [ %.04631713, %bb.cv ], [ %.04631713, %bb.cw ], [ %.04631713, %bb.da ], [ %.04631713, %bb.db ], [ %.04631713, %bb.dc ], [ %.04631713, %bb.dd ], [ %.04631713, %bb.de ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ], [ %.04631713, %mygetopt_long.exit.thread.a ]
  %.04651711.be = phi ptr [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %bb.an ], [ %.04651711, %bb.ao ], [ %.04651711, %bb.aq ], [ %.04651711, %bb.ar ], [ %.04651711, %bb.as ], [ %.04651711, %bb.at ], [ %.04651711, %bb.au ], [ %.04651711, %bb.ci ], [ %.04651711, %bb.av ], [ %.04651711, %bb.aw ], [ %.04651711, %bb.ax ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %bb.az ], [ %i.co, %bb.bc ], [ %.04651711, %bb.be ], [ %.04651711, %bb.bg ], [ %.04651711, %bb.bi ], [ %.04651711, %bb.bk ], [ %.04651711, %bb.bm ], [ %.04651711, %bb.bo ], [ %.04651711, %bb.bq ], [ %.04651711, %bb.bs ], [ %.04651711, %bb.bt ], [ %.04651711, %bb.bu ], [ %.04651711, %bb.bv ], [ %.04651711, %bb.bx ], [ %.04651711, %.loopexit ], [ %.04651711, %bb.ce ], [ %.04651711, %bb.cf ], [ %.04651711, %bb.cg ], [ %.04651711, %bb.ch ], [ %.04651711, %bb.ay ], [ %.04651711, %bb.ck ], [ %.04651711, %bb.cl ], [ %.04651711, %bb.cn ], [ %.04651711, %bb.co ], [ %.04651711, %bb.cp ], [ %.04651711, %bb.cq ], [ %.04651711, %bb.cr ], [ %.04651711, %bb.cs ], [ %.04651711, %bb.ct ], [ %.04651711, %bb.cu ], [ %.04651711, %bb.cv ], [ %.04651711, %bb.cw ], [ %.04651711, %bb.da ], [ %.04651711, %bb.db ], [ %.04651711, %bb.dc ], [ %.04651711, %bb.dd ], [ %.04651711, %bb.de ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ], [ %.04651711, %mygetopt_long.exit.thread.a ]
  %.04671709.be = phi i32 [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %bb.an ], [ %.04671709, %bb.ao ], [ %.04671709, %bb.aq ], [ %.04671709, %bb.ar ], [ %.04671709, %bb.as ], [ %.04671709, %bb.at ], [ %.04671709, %bb.au ], [ %.04671709, %bb.ci ], [ %.04671709, %bb.av ], [ %.04671709, %bb.aw ], [ %.04671709, %bb.ax ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %bb.az ], [ %.04671709, %bb.bc ], [ %.04671709, %bb.be ], [ %.04671709, %bb.bg ], [ %.04671709, %bb.bi ], [ %.04671709, %bb.bk ], [ %.04671709, %bb.bm ], [ %.04671709, %bb.bo ], [ %.04671709, %bb.bq ], [ %.04671709, %bb.bs ], [ %.04671709, %bb.bt ], [ %.04671709, %bb.bu ], [ %i.dj, %bb.bv ], [ %.04671709, %bb.bx ], [ %.04671709, %.loopexit ], [ %.04671709, %bb.ce ], [ %.04671709, %bb.cf ], [ %.04671709, %bb.cg ], [ %.04671709, %bb.ch ], [ %.04671709, %bb.ay ], [ %.04671709, %bb.ck ], [ %.04671709, %bb.cl ], [ %.04671709, %bb.cn ], [ %.04671709, %bb.co ], [ %.04671709, %bb.cp ], [ %.04671709, %bb.cq ], [ %.04671709, %bb.cr ], [ %.04671709, %bb.cs ], [ %.04671709, %bb.ct ], [ %.04671709, %bb.cu ], [ %.04671709, %bb.cv ], [ %.04671709, %bb.cw ], [ %.04671709, %bb.da ], [ %.04671709, %bb.db ], [ %.04671709, %bb.dc ], [ %.04671709, %bb.dd ], [ %.04671709, %bb.de ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ], [ %.04671709, %mygetopt_long.exit.thread.a ]
  %.04691707.be = phi i32 [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %bb.an ], [ %.04691707, %bb.ao ], [ %.04691707, %bb.aq ], [ %.04691707, %bb.ar ], [ %.04691707, %bb.as ], [ %.04691707, %bb.at ], [ %.04691707, %bb.au ], [ %.04691707, %bb.ci ], [ 1, %bb.av ], [ %.04691707, %bb.aw ], [ %.04691707, %bb.ax ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %bb.az ], [ %.04691707, %bb.bc ], [ %.04691707, %bb.be ], [ %.04691707, %bb.bg ], [ %.04691707, %bb.bi ], [ %.04691707, %bb.bk ], [ %.04691707, %bb.bm ], [ %.04691707, %bb.bo ], [ %.04691707, %bb.bq ], [ %.04691707, %bb.bs ], [ %.04691707, %bb.bt ], [ %.04691707, %bb.bu ], [ %.04691707, %bb.bv ], [ %.04691707, %bb.bx ], [ %.04691707, %.loopexit ], [ %.04691707, %bb.ce ], [ %.04691707, %bb.cf ], [ %.04691707, %bb.cg ], [ %.04691707, %bb.ch ], [ %.04691707, %bb.ay ], [ %.04691707, %bb.ck ], [ %.04691707, %bb.cl ], [ %.04691707, %bb.cn ], [ %.04691707, %bb.co ], [ %.04691707, %bb.cp ], [ %.04691707, %bb.cq ], [ %.04691707, %bb.cr ], [ %.04691707, %bb.cs ], [ %.04691707, %bb.ct ], [ %.04691707, %bb.cu ], [ %.04691707, %bb.cv ], [ %.04691707, %bb.cw ], [ %.04691707, %bb.da ], [ %.04691707, %bb.db ], [ %.04691707, %bb.dc ], [ %.04691707, %bb.dd ], [ %.04691707, %bb.de ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ], [ %.04691707, %mygetopt_long.exit.thread.a ]
  %.04711705.be = phi i32 [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %bb.an ], [ %.04711705, %bb.ao ], [ %.04711705, %bb.aq ], [ %.04711705, %bb.ar ], [ %.04711705, %bb.as ], [ %.04711705, %bb.at ], [ 0, %bb.au ], [ %.04711705, %bb.ci ], [ %.04711705, %bb.av ], [ %.04711705, %bb.aw ], [ %.04711705, %bb.ax ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %bb.az ], [ %.04711705, %bb.bc ], [ %.04711705, %bb.be ], [ %.04711705, %bb.bg ], [ %.04711705, %bb.bi ], [ %.04711705, %bb.bk ], [ %.04711705, %bb.bm ], [ %.04711705, %bb.bo ], [ %.04711705, %bb.bq ], [ %.04711705, %bb.bs ], [ %.04711705, %bb.bt ], [ %.04711705, %bb.bu ], [ %.04711705, %bb.bv ], [ %.04711705, %bb.bx ], [ %.04711705, %.loopexit ], [ %.04711705, %bb.ce ], [ %.04711705, %bb.cf ], [ %.04711705, %bb.cg ], [ %.04711705, %bb.ch ], [ %.04711705, %bb.ay ], [ %.04711705, %bb.ck ], [ %.04711705, %bb.cl ], [ %.04711705, %bb.cn ], [ %.04711705, %bb.co ], [ %.04711705, %bb.cp ], [ %.04711705, %bb.cq ], [ %.04711705, %bb.cr ], [ %.04711705, %bb.cs ], [ %.04711705, %bb.ct ], [ %.04711705, %bb.cu ], [ %.04711705, %bb.cv ], [ %.04711705, %bb.cw ], [ %.04711705, %bb.da ], [ %.04711705, %bb.db ], [ %.04711705, %bb.dc ], [ %.04711705, %bb.dd ], [ %.04711705, %bb.de ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ], [ %.04711705, %mygetopt_long.exit.thread.a ]
  %.04811703.be = phi i32 [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %bb.an ], [ %.04811703, %bb.ao ], [ %.04811703, %bb.aq ], [ %.04811703, %bb.ar ], [ %.04811703, %bb.as ], [ %.04811703, %bb.at ], [ %.04811703, %bb.au ], [ %.04811703, %bb.ci ], [ %.04811703, %bb.av ], [ %.04811703, %bb.aw ], [ %.04811703, %bb.ax ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %bb.az ], [ %.04811703, %bb.bc ], [ %.04811703, %bb.be ], [ %.04811703, %bb.bg ], [ %.04811703, %bb.bi ], [ %.04811703, %bb.bk ], [ %.04811703, %bb.bm ], [ %.04811703, %bb.bo ], [ %.04811703, %bb.bq ], [ %.04811703, %bb.bs ], [ %.04811703, %bb.bt ], [ %.04811703, %bb.bu ], [ %.04811703, %bb.bv ], [ %.04811703, %bb.bx ], [ %.04811703, %.loopexit ], [ %.04811703, %bb.ce ], [ %.04811703, %bb.cf ], [ 1, %bb.cg ], [ %.04811703, %bb.ch ], [ %.04811703, %bb.ay ], [ %.04811703, %bb.ck ], [ %.04811703, %bb.cl ], [ %.04811703, %bb.cn ], [ %.04811703, %bb.co ], [ %.04811703, %bb.cp ], [ %.04811703, %bb.cq ], [ %.04811703, %bb.cr ], [ %.04811703, %bb.cs ], [ %.04811703, %bb.ct ], [ %.04811703, %bb.cu ], [ %.04811703, %bb.cv ], [ %.04811703, %bb.cw ], [ %.04811703, %bb.da ], [ %.04811703, %bb.db ], [ %.04811703, %bb.dc ], [ %.04811703, %bb.dd ], [ %.04811703, %bb.de ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ], [ %.04811703, %mygetopt_long.exit.thread.a ]
  %.04831701.be = phi i32 [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %bb.an ], [ %.04831701, %bb.ao ], [ %.04831701, %bb.aq ], [ %.04831701, %bb.ar ], [ %.04831701, %bb.as ], [ %.04831701, %bb.at ], [ %.04831701, %bb.au ], [ %.04831701, %bb.ci ], [ %.04831701, %bb.av ], [ %.04831701, %bb.aw ], [ %.04831701, %bb.ax ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %bb.az ], [ %.04831701, %bb.bc ], [ %.04831701, %bb.be ], [ %.04831701, %bb.bg ], [ %.04831701, %bb.bi ], [ %.04831701, %bb.bk ], [ %.04831701, %bb.bm ], [ %.04831701, %bb.bo ], [ %.04831701, %bb.bq ], [ %.04831701, %bb.bs ], [ %.04831701, %bb.bt ], [ %.04831701, %bb.bu ], [ %.04831701, %bb.bv ], [ %.04831701, %bb.bx ], [ %.04831701, %.loopexit ], [ %.04831701, %bb.ce ], [ 1, %bb.cf ], [ %.04831701, %bb.cg ], [ %.04831701, %bb.ch ], [ %.04831701, %bb.ay ], [ %.04831701, %bb.ck ], [ %.04831701, %bb.cl ], [ %.04831701, %bb.cn ], [ %.04831701, %bb.co ], [ %.04831701, %bb.cp ], [ %.04831701, %bb.cq ], [ %.04831701, %bb.cr ], [ %.04831701, %bb.cs ], [ %.04831701, %bb.ct ], [ %.04831701, %bb.cu ], [ %.04831701, %bb.cv ], [ %.04831701, %bb.cw ], [ %.04831701, %bb.da ], [ %.04831701, %bb.db ], [ %.04831701, %bb.dc ], [ %.04831701, %bb.dd ], [ %.04831701, %bb.de ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ], [ %.04831701, %mygetopt_long.exit.thread.a ]
  %.04851699.be = phi i32 [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %bb.an ], [ %.04851699, %bb.ao ], [ %.04851699, %bb.aq ], [ %.04851699, %bb.ar ], [ %.04851699, %bb.as ], [ %.04851699, %bb.at ], [ %.04851699, %bb.au ], [ %.04851699, %bb.ci ], [ %.04851699, %bb.av ], [ %.04851699, %bb.aw ], [ %.04851699, %bb.ax ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %bb.az ], [ %.04851699, %bb.bc ], [ %.04851699, %bb.be ], [ %.04851699, %bb.bg ], [ %.04851699, %bb.bi ], [ %.04851699, %bb.bk ], [ %.04851699, %bb.bm ], [ %.04851699, %bb.bo ], [ %.04851699, %bb.bq ], [ %.04851699, %bb.bs ], [ %.04851699, %bb.bt ], [ %.04851699, %bb.bu ], [ %.04851699, %bb.bv ], [ %.04851699, %bb.bx ], [ %.04851699, %.loopexit ], [ %.04851699, %bb.ce ], [ %.04851699, %bb.cf ], [ %.04851699, %bb.cg ], [ %.04851699, %bb.ch ], [ %.04851699, %bb.ay ], [ %.04851699, %bb.ck ], [ %.04851699, %bb.cl ], [ %.04851699, %bb.cn ], [ %.04851699, %bb.co ], [ %.04851699, %bb.cp ], [ %.04851699, %bb.cq ], [ %.04851699, %bb.cr ], [ %.04851699, %bb.cs ], [ %.04851699, %bb.ct ], [ %.04851699, %bb.cu ], [ 1, %bb.cv ], [ %.04851699, %bb.cw ], [ %.04851699, %bb.da ], [ %.04851699, %bb.db ], [ %.04851699, %bb.dc ], [ %.04851699, %bb.dd ], [ %.04851699, %bb.de ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ], [ %.04851699, %mygetopt_long.exit.thread.a ]
  %.04871697.be = phi i32 [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %bb.an ], [ %.04871697, %bb.ao ], [ %.04871697, %bb.aq ], [ %.04871697, %bb.ar ], [ %.04871697, %bb.as ], [ %.04871697, %bb.at ], [ %.04871697, %bb.au ], [ %.04871697, %bb.ci ], [ %.04871697, %bb.av ], [ %.04871697, %bb.aw ], [ %.04871697, %bb.ax ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %bb.az ], [ %.04871697, %bb.bc ], [ %.04871697, %bb.be ], [ %.04871697, %bb.bg ], [ %.04871697, %bb.bi ], [ %.04871697, %bb.bk ], [ %.04871697, %bb.bm ], [ %.04871697, %bb.bo ], [ %.04871697, %bb.bq ], [ %.04871697, %bb.bs ], [ %.04871697, %bb.bt ], [ %.04871697, %bb.bu ], [ %.04871697, %bb.bv ], [ %.04871697, %bb.bx ], [ %.04871697, %.loopexit ], [ 1, %bb.ce ], [ %.04871697, %bb.cf ], [ %.04871697, %bb.cg ], [ %.04871697, %bb.ch ], [ %.04871697, %bb.ay ], [ %.04871697, %bb.ck ], [ %.04871697, %bb.cl ], [ %.04871697, %bb.cn ], [ %.04871697, %bb.co ], [ %.04871697, %bb.cp ], [ %.04871697, %bb.cq ], [ %.04871697, %bb.cr ], [ %.04871697, %bb.cs ], [ %.04871697, %bb.ct ], [ %.04871697, %bb.cu ], [ 1, %bb.cv ], [ %.04871697, %bb.cw ], [ %.04871697, %bb.da ], [ %.04871697, %bb.db ], [ %.04871697, %bb.dc ], [ %.04871697, %bb.dd ], [ %.04871697, %bb.de ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ], [ %.04871697, %mygetopt_long.exit.thread.a ]
  %.04891695.be = phi i32 [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %bb.an ], [ 0, %bb.ao ], [ %.04891695, %bb.aq ], [ %.04891695, %bb.ar ], [ %.04891695, %bb.as ], [ %.04891695, %bb.at ], [ %.04891695, %bb.au ], [ %.04891695, %bb.ci ], [ %.04891695, %bb.av ], [ %.04891695, %bb.aw ], [ %.04891695, %bb.ax ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %bb.az ], [ %.04891695, %bb.bc ], [ %.04891695, %bb.be ], [ %.04891695, %bb.bg ], [ %.04891695, %bb.bi ], [ %.04891695, %bb.bk ], [ %.04891695, %bb.bm ], [ %.04891695, %bb.bo ], [ %.04891695, %bb.bq ], [ %.04891695, %bb.bs ], [ %.04891695, %bb.bt ], [ %.04891695, %bb.bu ], [ %.04891695, %bb.bv ], [ %.04891695, %bb.bx ], [ %.04891695, %.loopexit ], [ %.04891695, %bb.ce ], [ %.04891695, %bb.cf ], [ %.04891695, %bb.cg ], [ %.04891695, %bb.ch ], [ %.04891695, %bb.ay ], [ %.04891695, %bb.ck ], [ %.04891695, %bb.cl ], [ %.04891695, %bb.cn ], [ %.04891695, %bb.co ], [ %.04891695, %bb.cp ], [ %.04891695, %bb.cq ], [ %.04891695, %bb.cr ], [ %.04891695, %bb.cs ], [ %.04891695, %bb.ct ], [ %.04891695, %bb.cu ], [ %.04891695, %bb.cv ], [ %.04891695, %bb.cw ], [ %.04891695, %bb.da ], [ %.04891695, %bb.db ], [ %.04891695, %bb.dc ], [ %.04891695, %bb.dd ], [ %.04891695, %bb.de ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ], [ %.04891695, %mygetopt_long.exit.thread.a ]
  %.04911693.be = phi i32 [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %bb.an ], [ %.04911693, %bb.ao ], [ %.04911693, %bb.aq ], [ %.04911693, %bb.ar ], [ %.04911693, %bb.as ], [ 1, %bb.at ], [ %.04911693, %bb.au ], [ %.04911693, %bb.ci ], [ %.04911693, %bb.av ], [ %.04911693, %bb.aw ], [ %.04911693, %bb.ax ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %bb.az ], [ %.04911693, %bb.bc ], [ %.04911693, %bb.be ], [ %.04911693, %bb.bg ], [ %.04911693, %bb.bi ], [ %.04911693, %bb.bk ], [ %.04911693, %bb.bm ], [ %.04911693, %bb.bo ], [ %.04911693, %bb.bq ], [ %.04911693, %bb.bs ], [ %.04911693, %bb.bt ], [ %.04911693, %bb.bu ], [ %.04911693, %bb.bv ], [ %.04911693, %bb.bx ], [ %.04911693, %.loopexit ], [ %.04911693, %bb.ce ], [ %.04911693, %bb.cf ], [ %.04911693, %bb.cg ], [ %.04911693, %bb.ch ], [ %.04911693, %bb.ay ], [ %.04911693, %bb.ck ], [ %.04911693, %bb.cl ], [ %.04911693, %bb.cn ], [ %.04911693, %bb.co ], [ %.04911693, %bb.cp ], [ %.04911693, %bb.cq ], [ %.04911693, %bb.cr ], [ %.04911693, %bb.cs ], [ %.04911693, %bb.ct ], [ %.04911693, %bb.cu ], [ %.04911693, %bb.cv ], [ %.04911693, %bb.cw ], [ %.04911693, %bb.da ], [ %.04911693, %bb.db ], [ %.04911693, %bb.dc ], [ %.04911693, %bb.dd ], [ %.04911693, %bb.de ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ], [ %.04911693, %mygetopt_long.exit.thread.a ]
  %.04931691.be = phi i32 [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %bb.an ], [ %.04931691, %bb.ao ], [ %.04931691, %bb.aq ], [ 1, %bb.ar ], [ %.04931691, %bb.as ], [ %.04931691, %bb.at ], [ %.04931691, %bb.au ], [ %.04931691, %bb.ci ], [ %.04931691, %bb.av ], [ %.04931691, %bb.aw ], [ %.04931691, %bb.ax ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %bb.az ], [ %.04931691, %bb.bc ], [ %.04931691, %bb.be ], [ %.04931691, %bb.bg ], [ %.04931691, %bb.bi ], [ %.04931691, %bb.bk ], [ %.04931691, %bb.bm ], [ %.04931691, %bb.bo ], [ %.04931691, %bb.bq ], [ %.04931691, %bb.bs ], [ %.04931691, %bb.bt ], [ %.04931691, %bb.bu ], [ %.04931691, %bb.bv ], [ %.04931691, %bb.bx ], [ %.04931691, %.loopexit ], [ %.04931691, %bb.ce ], [ %.04931691, %bb.cf ], [ %.04931691, %bb.cg ], [ %.04931691, %bb.ch ], [ %.04931691, %bb.ay ], [ %.04931691, %bb.ck ], [ %.04931691, %bb.cl ], [ %.04931691, %bb.cn ], [ %.04931691, %bb.co ], [ %.04931691, %bb.cp ], [ %.04931691, %bb.cq ], [ %.04931691, %bb.cr ], [ %.04931691, %bb.cs ], [ %.04931691, %bb.ct ], [ %.04931691, %bb.cu ], [ %.04931691, %bb.cv ], [ %.04931691, %bb.cw ], [ %.04931691, %bb.da ], [ %.04931691, %bb.db ], [ %.04931691, %bb.dc ], [ %.04931691, %bb.dd ], [ %.04931691, %bb.de ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ], [ %.04931691, %mygetopt_long.exit.thread.a ]
  %.04951689.be = phi i32 [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %bb.an ], [ %.04951689, %bb.ao ], [ %.04951689, %bb.aq ], [ 1, %bb.ar ], [ %.04951689, %bb.as ], [ %.04951689, %bb.at ], [ %.04951689, %bb.au ], [ %.04951689, %bb.ci ], [ %.04951689, %bb.av ], [ %.04951689, %bb.aw ], [ %.04951689, %bb.ax ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %bb.az ], [ %.04951689, %bb.bc ], [ %.04951689, %bb.be ], [ %.04951689, %bb.bg ], [ %.04951689, %bb.bi ], [ %.04951689, %bb.bk ], [ %.04951689, %bb.bm ], [ %.04951689, %bb.bo ], [ %.04951689, %bb.bq ], [ %.04951689, %bb.bs ], [ %.04951689, %bb.bt ], [ %.04951689, %bb.bu ], [ %.04951689, %bb.bv ], [ %.04951689, %bb.bx ], [ %.04951689, %.loopexit ], [ %.04951689, %bb.ce ], [ %.04951689, %bb.cf ], [ %.04951689, %bb.cg ], [ %.04951689, %bb.ch ], [ %.04951689, %bb.ay ], [ %.04951689, %bb.ck ], [ %.04951689, %bb.cl ], [ %.04951689, %bb.cn ], [ %.04951689, %bb.co ], [ %.04951689, %bb.cp ], [ %.04951689, %bb.cq ], [ %.04951689, %bb.cr ], [ %.04951689, %bb.cs ], [ %.04951689, %bb.ct ], [ %.04951689, %bb.cu ], [ %.04951689, %bb.cv ], [ %.04951689, %bb.cw ], [ %.04951689, %bb.da ], [ %.04951689, %bb.db ], [ %.04951689, %bb.dc ], [ %.04951689, %bb.dd ], [ %.04951689, %bb.de ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ], [ %.04951689, %mygetopt_long.exit.thread.a ]
  %.04971687.be = phi i64 [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %bb.an ], [ %.04971687, %bb.ao ], [ %.04971687, %bb.aq ], [ %.04971687, %bb.ar ], [ %.04971687, %bb.as ], [ %.04971687, %bb.at ], [ %.04971687, %bb.au ], [ %.04971687, %bb.ci ], [ %.04971687, %bb.av ], [ %.04971687, %bb.aw ], [ %.04971687, %bb.ax ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %bb.az ], [ %.04971687, %bb.bc ], [ %.04971687, %bb.be ], [ %.04971687, %bb.bg ], [ %.04971687, %bb.bi ], [ %.04971687, %bb.bk ], [ %.04971687, %bb.bm ], [ %.04971687, %bb.bo ], [ %.04971687, %bb.bq ], [ %.04971687, %bb.bs ], [ %.04971687, %bb.bt ], [ %.04971687, %bb.bu ], [ %.04971687, %bb.bv ], [ %.04971687, %bb.bx ], [ %i.dp, %.loopexit ], [ %.04971687, %bb.ce ], [ %.04971687, %bb.cf ], [ %.04971687, %bb.cg ], [ %.04971687, %bb.ch ], [ %.04971687, %bb.ay ], [ %.04971687, %bb.ck ], [ %.04971687, %bb.cl ], [ %.04971687, %bb.cn ], [ %.04971687, %bb.co ], [ %.04971687, %bb.cp ], [ %.04971687, %bb.cq ], [ %.04971687, %bb.cr ], [ %.04971687, %bb.cs ], [ %.04971687, %bb.ct ], [ %.04971687, %bb.cu ], [ %.04971687, %bb.cv ], [ %.04971687, %bb.cw ], [ %.04971687, %bb.da ], [ %.04971687, %bb.db ], [ %.04971687, %bb.dc ], [ %.04971687, %bb.dd ], [ %.04971687, %bb.de ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ], [ %.04971687, %mygetopt_long.exit.thread.a ]
  %.04991685.be = phi i32 [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %bb.an ], [ %.04991685, %bb.ao ], [ %.04991685, %bb.aq ], [ %.04991685, %bb.ar ], [ %.04991685, %bb.as ], [ %.04991685, %bb.at ], [ %.04991685, %bb.au ], [ %.04991685, %bb.ci ], [ %.04991685, %bb.av ], [ %.04991685, %bb.aw ], [ %.04991685, %bb.ax ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %bb.az ], [ %.04991685, %bb.bc ], [ %.04991685, %bb.be ], [ %.04991685, %bb.bg ], [ %.04991685, %bb.bi ], [ %.04991685, %bb.bk ], [ %.04991685, %bb.bm ], [ %.04991685, %bb.bo ], [ %.04991685, %bb.bq ], [ %.04991685, %bb.bs ], [ %.04991685, %bb.bt ], [ %.04991685, %bb.bu ], [ %.04991685, %bb.bv ], [ %.04991685, %bb.bx ], [ %.1500, %.loopexit ], [ %.04991685, %bb.ce ], [ %.04991685, %bb.cf ], [ %.04991685, %bb.cg ], [ %.04991685, %bb.ch ], [ %.04991685, %bb.ay ], [ %.04991685, %bb.ck ], [ %.04991685, %bb.cl ], [ %.04991685, %bb.cn ], [ %.04991685, %bb.co ], [ %.04991685, %bb.cp ], [ %.04991685, %bb.cq ], [ %.04991685, %bb.cr ], [ %.04991685, %bb.cs ], [ %.04991685, %bb.ct ], [ %.04991685, %bb.cu ], [ %.04991685, %bb.cv ], [ %.04991685, %bb.cw ], [ %.04991685, %bb.da ], [ %.04991685, %bb.db ], [ %.04991685, %bb.dc ], [ %.04991685, %bb.dd ], [ %.04991685, %bb.de ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ], [ %.04991685, %mygetopt_long.exit.thread.a ]
  %.05021683.be = phi i32 [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %bb.an ], [ %.05021683, %bb.ao ], [ %.05021683, %bb.aq ], [ %.05021683, %bb.ar ], [ %.05021683, %bb.as ], [ %.05021683, %bb.at ], [ %.05021683, %bb.au ], [ %.05021683, %bb.ci ], [ %.05021683, %bb.av ], [ %.05021683, %bb.aw ], [ %.05021683, %bb.ax ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %bb.az ], [ %.05021683, %bb.bc ], [ %.05021683, %bb.be ], [ %.05021683, %bb.bg ], [ %.05021683, %bb.bi ], [ %.05021683, %bb.bk ], [ %.05021683, %bb.bm ], [ %.05021683, %bb.bo ], [ %.05021683, %bb.bq ], [ %.05021683, %bb.bs ], [ %.05021683, %bb.bt ], [ %.05021683, %bb.bu ], [ %.05021683, %bb.bv ], [ %i.dn, %bb.bx ], [ %.05021683, %.loopexit ], [ %.05021683, %bb.ce ], [ %.05021683, %bb.cf ], [ %.05021683, %bb.cg ], [ %.05021683, %bb.ch ], [ %.05021683, %bb.ay ], [ %.05021683, %bb.ck ], [ %.05021683, %bb.cl ], [ %.05021683, %bb.cn ], [ %.05021683, %bb.co ], [ %.05021683, %bb.cp ], [ %.05021683, %bb.cq ], [ %.05021683, %bb.cr ], [ %.05021683, %bb.cs ], [ %.05021683, %bb.ct ], [ %.05021683, %bb.cu ], [ %.05021683, %bb.cv ], [ %.05021683, %bb.cw ], [ %.05021683, %bb.da ], [ %.05021683, %bb.db ], [ %.05021683, %bb.dc ], [ %.05021683, %bb.dd ], [ %.05021683, %bb.de ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ], [ %.05021683, %mygetopt_long.exit.thread.a ]
  %.05041681.be = phi i32 [ %.05041681, %mygetopt_long.exit.thread.a ], [ 1, %bb.an ], [ %.05041681, %bb.ao ], [ %.05041681, %bb.aq ], [ %.05041681, %bb.ar ], [ %.05041681, %bb.as ], [ %.05041681, %bb.at ], [ %.05041681, %bb.au ], [ %.05041681, %bb.ci ], [ %.05041681, %bb.av ], [ %.05041681, %bb.aw ], [ %.05041681, %bb.ax ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %bb.az ], [ %.05041681, %bb.bc ], [ %.05041681, %bb.be ], [ %.05041681, %bb.bg ], [ %.05041681, %bb.bi ], [ %.05041681, %bb.bk ], [ %.05041681, %bb.bm ], [ %.05041681, %bb.bo ], [ %.05041681, %bb.bq ], [ %.05041681, %bb.bs ], [ %.05041681, %bb.bt ], [ %.05041681, %bb.bu ], [ %.05041681, %bb.bv ], [ %.05041681, %bb.bx ], [ %.05041681, %.loopexit ], [ %.05041681, %bb.ce ], [ %.05041681, %bb.cf ], [ %.05041681, %bb.cg ], [ %.05041681, %bb.ch ], [ %.05041681, %bb.ay ], [ %.05041681, %bb.ck ], [ %.05041681, %bb.cl ], [ %.05041681, %bb.cn ], [ %.05041681, %bb.co ], [ %.05041681, %bb.cp ], [ %.05041681, %bb.cq ], [ %.05041681, %bb.cr ], [ %.05041681, %bb.cs ], [ %.05041681, %bb.ct ], [ %.05041681, %bb.cu ], [ %.05041681, %bb.cv ], [ %.05041681, %bb.cw ], [ %.05041681, %bb.da ], [ %.05041681, %bb.db ], [ %.05041681, %bb.dc ], [ %.05041681, %bb.dd ], [ %.05041681, %bb.de ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ], [ %.05041681, %mygetopt_long.exit.thread.a ]
  %.05061679.be = phi i32 [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %bb.an ], [ %.05061679, %bb.ao ], [ %.05061679, %bb.aq ], [ %.05061679, %bb.ar ], [ 1, %bb.as ], [ %.05061679, %bb.at ], [ %.05061679, %bb.au ], [ %.05061679, %bb.ci ], [ %.05061679, %bb.av ], [ %.05061679, %bb.aw ], [ %.05061679, %bb.ax ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %bb.az ], [ %.05061679, %bb.bc ], [ %.05061679, %bb.be ], [ %.05061679, %bb.bg ], [ %.05061679, %bb.bi ], [ %.05061679, %bb.bk ], [ %.05061679, %bb.bm ], [ %.05061679, %bb.bo ], [ %.05061679, %bb.bq ], [ %.05061679, %bb.bs ], [ %.05061679, %bb.bt ], [ %.05061679, %bb.bu ], [ %.05061679, %bb.bv ], [ %.05061679, %bb.bx ], [ %.05061679, %.loopexit ], [ %.05061679, %bb.ce ], [ %.05061679, %bb.cf ], [ %.05061679, %bb.cg ], [ %.05061679, %bb.ch ], [ %.05061679, %bb.ay ], [ %.05061679, %bb.ck ], [ %.05061679, %bb.cl ], [ %.05061679, %bb.cn ], [ %.05061679, %bb.co ], [ %.05061679, %bb.cp ], [ %.05061679, %bb.cq ], [ %.05061679, %bb.cr ], [ %.05061679, %bb.cs ], [ %.05061679, %bb.ct ], [ %.05061679, %bb.cu ], [ %.05061679, %bb.cv ], [ %.05061679, %bb.cw ], [ %.05061679, %bb.da ], [ %.05061679, %bb.db ], [ %.05061679, %bb.dc ], [ %.05061679, %bb.dd ], [ %.05061679, %bb.de ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ], [ %.05061679, %mygetopt_long.exit.thread.a ]
  %.05081677.be = phi i32 [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %bb.an ], [ %.05081677, %bb.ao ], [ %.05081677, %bb.aq ], [ %.05081677, %bb.ar ], [ %.05081677, %bb.as ], [ %.05081677, %bb.at ], [ %.05081677, %bb.au ], [ %.05081677, %bb.ci ], [ %.05081677, %bb.av ], [ %.05081677, %bb.aw ], [ %.05081677, %bb.ax ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %bb.az ], [ %.05081677, %bb.bc ], [ %.05081677, %bb.be ], [ %.05081677, %bb.bg ], [ %.05081677, %bb.bi ], [ %.05081677, %bb.bk ], [ %.05081677, %bb.bm ], [ %.05081677, %bb.bo ], [ %.05081677, %bb.bq ], [ %.05081677, %bb.bs ], [ %.05081677, %bb.bt ], [ %.05081677, %bb.bu ], [ %.05081677, %bb.bv ], [ %.05081677, %bb.bx ], [ %.05081677, %.loopexit ], [ %.05081677, %bb.ce ], [ %.05081677, %bb.cf ], [ %.05081677, %bb.cg ], [ %.05081677, %bb.ch ], [ %.05081677, %bb.ay ], [ %.05081677, %bb.ck ], [ %.05081677, %bb.cl ], [ %.05081677, %bb.cn ], [ %.05081677, %bb.co ], [ %.05081677, %bb.cp ], [ %.05081677, %bb.cq ], [ %.05081677, %bb.cr ], [ %.05081677, %bb.cs ], [ %.05081677, %bb.ct ], [ %.05081677, %bb.cu ], [ %.05081677, %bb.cv ], [ %i.ej, %bb.cw ], [ %.05081677, %bb.da ], [ %.05081677, %bb.db ], [ %.05081677, %bb.dc ], [ %.05081677, %bb.dd ], [ %.05081677, %bb.de ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ], [ %.05081677, %mygetopt_long.exit.thread.a ]
  %.05101675.be = phi i32 [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %bb.an ], [ %.05101675, %bb.ao ], [ %.05101675, %bb.aq ], [ %.05101675, %bb.ar ], [ %.05101675, %bb.as ], [ %.05101675, %bb.at ], [ %.05101675, %bb.au ], [ %.05101675, %bb.ci ], [ %.05101675, %bb.av ], [ %.05101675, %bb.aw ], [ %.05101675, %bb.ax ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %i.cn, %bb.az ], [ %.05101675, %bb.bc ], [ %.05101675, %bb.be ], [ %.05101675, %bb.bg ], [ %.05101675, %bb.bi ], [ %.05101675, %bb.bk ], [ %.05101675, %bb.bm ], [ %.05101675, %bb.bo ], [ %.05101675, %bb.bq ], [ %.05101675, %bb.bs ], [ %.05101675, %bb.bt ], [ %.05101675, %bb.bu ], [ %.05101675, %bb.bv ], [ %.05101675, %bb.bx ], [ %.05101675, %.loopexit ], [ %.05101675, %bb.ce ], [ %.05101675, %bb.cf ], [ %.05101675, %bb.cg ], [ %.05101675, %bb.ch ], [ -98, %bb.ay ], [ %.05101675, %bb.ck ], [ %.05101675, %bb.cl ], [ %.05101675, %bb.cn ], [ %.05101675, %bb.co ], [ %.05101675, %bb.cp ], [ %.05101675, %bb.cq ], [ %.05101675, %bb.cr ], [ %.05101675, %bb.cs ], [ %.05101675, %bb.ct ], [ %.05101675, %bb.cu ], [ %.05101675, %bb.cv ], [ %.05101675, %bb.cw ], [ %.05101675, %bb.da ], [ %.05101675, %bb.db ], [ %.05101675, %bb.dc ], [ %.05101675, %bb.dd ], [ %.05101675, %bb.de ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ], [ %.05101675, %mygetopt_long.exit.thread.a ]
  %.05131673.be = phi ptr [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %bb.an ], [ %.05131673, %bb.ao ], [ %.05131673, %bb.aq ], [ %.05131673, %bb.ar ], [ %.05131673, %bb.as ], [ %.05131673, %bb.at ], [ %.05131673, %bb.au ], [ %.05131673, %bb.ci ], [ %.05131673, %bb.av ], [ %i.cf, %bb.aw ], [ %.05131673, %bb.ax ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %bb.az ], [ %.05131673, %bb.bc ], [ %.05131673, %bb.be ], [ %.05131673, %bb.bg ], [ %.05131673, %bb.bi ], [ %.05131673, %bb.bk ], [ %.05131673, %bb.bm ], [ %.05131673, %bb.bo ], [ %.05131673, %bb.bq ], [ %.05131673, %bb.bs ], [ %.05131673, %bb.bt ], [ %.05131673, %bb.bu ], [ %.05131673, %bb.bv ], [ %.05131673, %bb.bx ], [ %.05131673, %.loopexit ], [ %.05131673, %bb.ce ], [ %.05131673, %bb.cf ], [ %.05131673, %bb.cg ], [ %.05131673, %bb.ch ], [ %.05131673, %bb.ay ], [ %.05131673, %bb.ck ], [ %.05131673, %bb.cl ], [ %.05131673, %bb.cn ], [ %.05131673, %bb.co ], [ %.05131673, %bb.cp ], [ %.05131673, %bb.cq ], [ %.05131673, %bb.cr ], [ %.05131673, %bb.cs ], [ %.05131673, %bb.ct ], [ %.05131673, %bb.cu ], [ %.05131673, %bb.cv ], [ %.05131673, %bb.cw ], [ %.05131673, %bb.da ], [ %.05131673, %bb.db ], [ %.05131673, %bb.dc ], [ %.05131673, %bb.dd ], [ %.05131673, %bb.de ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ], [ %.05131673, %mygetopt_long.exit.thread.a ]
  %.05151671.be = phi ptr [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %bb.an ], [ %.05151671, %bb.ao ], [ %.05151671, %bb.aq ], [ %.05151671, %bb.ar ], [ %.05151671, %bb.as ], [ %.05151671, %bb.at ], [ %.05151671, %bb.au ], [ %.05151671, %bb.ci ], [ %.05151671, %bb.av ], [ %i.cf, %bb.aw ], [ %.05151671, %bb.ax ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %bb.az ], [ %.05151671, %bb.bc ], [ %.05151671, %bb.be ], [ %.05151671, %bb.bg ], [ %.05151671, %bb.bi ], [ %.05151671, %bb.bk ], [ %.05151671, %bb.bm ], [ %.05151671, %bb.bo ], [ %.05151671, %bb.bq ], [ %.05151671, %bb.bs ], [ %.05151671, %bb.bt ], [ %.05151671, %bb.bu ], [ %.05151671, %bb.bv ], [ %.05151671, %bb.bx ], [ %.05151671, %.loopexit ], [ %.05151671, %bb.ce ], [ %.05151671, %bb.cf ], [ %.05151671, %bb.cg ], [ %.05151671, %bb.ch ], [ %.05151671, %bb.ay ], [ %.05151671, %bb.ck ], [ %.05151671, %bb.cl ], [ %.05151671, %bb.cn ], [ %.05151671, %bb.co ], [ %.05151671, %bb.cp ], [ %.05151671, %bb.cq ], [ %.05151671, %bb.cr ], [ %.05151671, %bb.cs ], [ %.05151671, %bb.ct ], [ %.05151671, %bb.cu ], [ %.05151671, %bb.cv ], [ %.05151671, %bb.cw ], [ %.05151671, %bb.da ], [ %.05151671, %bb.db ], [ %.05151671, %bb.dc ], [ %.05151671, %bb.dd ], [ %.05151671, %bb.de ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ], [ %.05151671, %mygetopt_long.exit.thread.a ]
  %.05171669.be = phi i16 [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %bb.an ], [ %.05171669, %bb.ao ], [ %.05171669, %bb.aq ], [ %.05171669, %bb.ar ], [ %.05171669, %bb.as ], [ %.05171669, %bb.at ], [ %.05171669, %bb.au ], [ %.05171669, %bb.ci ], [ %.05171669, %bb.av ], [ %.05171669, %bb.aw ], [ %i.ci, %bb.ax ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %bb.az ], [ %.05171669, %bb.bc ], [ %.05171669, %bb.be ], [ %.05171669, %bb.bg ], [ %.05171669, %bb.bi ], [ %.05171669, %bb.bk ], [ %.05171669, %bb.bm ], [ %.05171669, %bb.bo ], [ %.05171669, %bb.bq ], [ %.05171669, %bb.bs ], [ %.05171669, %bb.bt ], [ %.05171669, %bb.bu ], [ %.05171669, %bb.bv ], [ %.05171669, %bb.bx ], [ %.05171669, %.loopexit ], [ %.05171669, %bb.ce ], [ %.05171669, %bb.cf ], [ %.05171669, %bb.cg ], [ %.05171669, %bb.ch ], [ %.05171669, %bb.ay ], [ %.05171669, %bb.ck ], [ %.05171669, %bb.cl ], [ %.05171669, %bb.cn ], [ %.05171669, %bb.co ], [ %.05171669, %bb.cp ], [ %.05171669, %bb.cq ], [ %.05171669, %bb.cr ], [ %.05171669, %bb.cs ], [ %.05171669, %bb.ct ], [ %.05171669, %bb.cu ], [ %.05171669, %bb.cv ], [ %.05171669, %bb.cw ], [ %.05171669, %bb.da ], [ %.05171669, %bb.db ], [ %.05171669, %bb.dc ], [ %.05171669, %bb.dd ], [ %.05171669, %bb.de ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ], [ %.05171669, %mygetopt_long.exit.thread.a ]
  br label %.lr.ph

mygetopt_long.exit.thread.thread:                 ; preds = %bb.x, %bb.ab, %mygetopt_long.exit.thread.a
  %i.cc = load ptr, ptr @myoptarg, align 8, !tbaa !14 ; 2 uses
  %.not630 = icmp eq ptr %i.cc, null
  br i1 %.not630, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %mygetopt_long.exit.thread.thread
  %i.cd = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.cc, ptr noundef null, i32 noundef 10) #21, !inline_history !36
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %or.cond = icmp ugt i32 %i.ce, 1
  %spec.store.select78 = select i1 %or.cond, i32 0, i32 %i.ce
  store i32 %spec.store.select78, ptr @lng_index, align 4, !tbaa !9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %mygetopt_long.exit.thread.thread
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 0) #23
  unreachable

bb.al:                                            ; preds = %mygetopt_long.exit.thread.a
  store i32 0, ptr @lng_index, align 4, !tbaa !9
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 0) #23
  unreachable

bb.am:                                            ; preds = %mygetopt_long.exit.thread.a
  store i32 1, ptr @lng_index, align 4, !tbaa !9
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 0) #23
  unreachable

bb.an:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.ao:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.ap:                                            ; preds = %mygetopt_long.exit.thread.a
  tail call fastcc void @ShowCiphers()
  tail call void @exit(i32 noundef 0) #23
  unreachable

bb.aq:                                            ; preds = %mygetopt_long.exit.thread.a
  store i32 3, ptr %i.o, align 4, !tbaa !9
  br label %.lr.ph.backedge

bb.ar:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.as:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.at:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.au:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.av:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.aw:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.cf = load ptr, ptr @myoptarg, align 8, !tbaa !14 ; 2 uses
  br label %.lr.ph.backedge

bb.ax:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.cg = load ptr, ptr @myoptarg, align 8, !tbaa !14
  %i.ch = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.cg, ptr noundef null, i32 noundef 10) #21, !inline_history !36
  %i.ci = trunc i64 %i.ch to i16
  br label %.lr.ph.backedge

bb.ay:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.cj = load ptr, ptr @myoptarg, align 8, !tbaa !14 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !15
  %i.cl = icmp eq i8 %i.ck, 100
  br i1 %i.cl, label %.lr.ph.backedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cm = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.cj, ptr noundef null, i32 noundef 10) #21, !inline_history !36
  %i.cn = trunc i64 %i.cm to i32                  ; 2 uses
  %or.cond3 = icmp ugt i32 %i.cn, 4
  br i1 %or.cond3, label %bb.ba, label %.lr.ph.backedge

bb.ba:                                            ; preds = %bb.az
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.bb:                                            ; preds = %mygetopt_long.exit.thread.a
  tail call fastcc void @ShowVersions()
  tail call void @exit(i32 noundef 0) #23
  unreachable

bb.bc:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.co = load ptr, ptr @myoptarg, align 8, !tbaa !14
  br label %.lr.ph.backedge

bb.bd:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.cp = load ptr, ptr @myoptarg, align 8, !tbaa !14 ; 7 uses
  %i.cq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cp, ptr noundef nonnull dereferenceable(14) @.str.18) #22
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %puts629 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  br label %.lr.ph.backedge

bb.bf:                                            ; preds = %bb.bd
  %i.cs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cp, ptr noundef nonnull dereferenceable(12) @.str.20) #22
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %puts628 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %.lr.ph.backedge

bb.bh:                                            ; preds = %bb.bf
  %i.cu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cp, ptr noundef nonnull dereferenceable(11) @.str.22) #22
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %puts627 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  store i32 1, ptr %i.o, align 4, !tbaa !9
  br label %.lr.ph.backedge

bb.bj:                                            ; preds = %bb.bh
  %i.cw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cp, ptr noundef nonnull dereferenceable(11) @.str.24) #22
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %puts626 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  store i32 2, ptr %i.o, align 4, !tbaa !9
  br label %.lr.ph.backedge

bb.bl:                                            ; preds = %bb.bj
  %i.cy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cp, ptr noundef nonnull dereferenceable(12) @.str.26) #22
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %puts625 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %.lr.ph.backedge

bb.bn:                                            ; preds = %bb.bl
  %i.da = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cp, ptr noundef nonnull dereferenceable(8) @.str.28) #22
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %puts624 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %.lr.ph.backedge

bb.bp:                                            ; preds = %bb.bn
  %i.dc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cp, ptr noundef nonnull dereferenceable(12) @.str.30) #22
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %puts623 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %.lr.ph.backedge

bb.br:                                            ; preds = %bb.bp
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.bs:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.de = load ptr, ptr @myoptarg, align 8, !tbaa !14
  br label %.lr.ph.backedge

bb.bt:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.df = load ptr, ptr @myoptarg, align 8, !tbaa !14
  br label %.lr.ph.backedge

bb.bu:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.dg = load ptr, ptr @myoptarg, align 8, !tbaa !14
  br label %.lr.ph.backedge

bb.bv:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.dh = load ptr, ptr @myoptarg, align 8, !tbaa !14
  %i.di = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.dh, ptr noundef null, i32 noundef 10) #21, !inline_history !36
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = add i32 %i.dj, -16001
  %or.cond5 = icmp ult i32 %i.dk, -16000
  br i1 %or.cond5, label %bb.bw, label %.lr.ph.backedge

bb.bw:                                            ; preds = %bb.bv
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.bx:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.dl = load ptr, ptr @myoptarg, align 8, !tbaa !14
  %i.dm = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.dl, ptr noundef null, i32 noundef 10) #21, !inline_history !36
  %i.dn = trunc i64 %i.dm to i32                  ; 2 uses
  %or.cond7 = icmp ugt i32 %i.dn, 1000000
  br i1 %or.cond7, label %bb.by, label %.lr.ph.backedge

bb.by:                                            ; preds = %bb.bx
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.bz:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.do = load ptr, ptr @myoptarg, align 8, !tbaa !14
  %i.dp = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.do, ptr noundef null, i32 noundef 10) #21, !inline_history !37 ; 2 uses
  %myoptarg.promoted = load ptr, ptr @myoptarg, align 8, !tbaa !14
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cc, %bb.bz
  %i.dq = phi ptr [ %i.dv, %bb.cc ], [ %myoptarg.promoted, %bb.bz ] ; 3 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !15
  switch i8 %i.dr, label %bb.cc [
    i8 0, label %.loopexit
    i8 44, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dt = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ds, ptr noundef null, i32 noundef 10) #21, !inline_history !36
  %i.du = trunc i64 %i.dt to i32
  br label %.loopexit

bb.cc:                                            ; preds = %bb.ca
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 1 ; 2 uses
  store ptr %i.dv, ptr @myoptarg, align 8, !tbaa !14
  br label %bb.ca, !llvm.loop !38

.loopexit:                                        ; preds = %bb.ca, %bb.cb
  %.1500 = phi i32 [ %i.du, %bb.cb ], [ %.04991685, %bb.ca ] ; 2 uses
  %i.dw = icmp eq i64 %i.dp, 0
  %i.dx = icmp slt i32 %.1500, 1
  %or.cond9 = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond9, label %bb.cd, label %.lr.ph.backedge

bb.cd:                                            ; preds = %.loopexit
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.ce:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.cf:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.cg:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.ch:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.dy = tail call i32 @wolfSSL_GetObjectSize() #21 ; 0 uses
  br label %.lr.ph.backedge

bb.ci:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.dz = load ptr, ptr @myoptarg, align 8, !tbaa !14 ; 2 uses
  %i.ea = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dz, ptr noundef nonnull dereferenceable(6) @.str.32) #22
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.cj, label %.lr.ph.backedge

bb.cj:                                            ; preds = %bb.ci
  %puts621 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @exit(i32 noundef 0) #23
  unreachable

bb.ck:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.cl:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.ec = load ptr, ptr @myoptarg, align 8, !tbaa !14 ; 2 uses
  %i.ed = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(5) @.str.34) #22
  %.not620 = icmp eq i32 %i.ed, 0
  br i1 %.not620, label %.lr.ph.backedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.cn:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.co:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.cp:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.cq:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.cr:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.cs:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.ct:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.ee = load ptr, ptr @myoptarg, align 8, !tbaa !14
  %i.ef = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ee, ptr noundef null, i32 noundef 10) #21, !inline_history !36
  %i.eg = trunc i64 %i.ef to i32                  ; 2 uses
  %or.cond11 = icmp ugt i32 %i.eg, 1
  %spec.store.select79 = select i1 %or.cond11, i32 0, i32 %i.eg
  store i32 %spec.store.select79, ptr @lng_index, align 4, !tbaa !9
  br label %.lr.ph.backedge

bb.cu:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.cv:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.cw:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.eh = load ptr, ptr @myoptarg, align 8, !tbaa !14
  %i.ei = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.eh, ptr noundef null, i32 noundef 10) #21, !inline_history !36
  %i.ej = trunc i64 %i.ei to i32                  ; 2 uses
  %or.cond13 = icmp ugt i32 %i.ej, 4
  br i1 %or.cond13, label %bb.cx, label %.lr.ph.backedge

bb.cx:                                            ; preds = %bb.cw
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.cy:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.ek = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite619 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 38, i64 1, ptr %i.ek) #25 ; 0 uses
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.cz:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite618 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 38, i64 1, ptr %i.el) #25 ; 0 uses
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.da:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.em = load ptr, ptr @myoptarg, align 8, !tbaa !14
  br label %.lr.ph.backedge

bb.db:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.dc:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.dd:                                            ; preds = %mygetopt_long.exit.thread.a
  store i1 true, ptr @quieter, align 4
  br label %.lr.ph.backedge

bb.de:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.df:                                            ; preds = %mygetopt_long.exit.thread.a
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

mygetopt_long.exit.thread651.sink.split:          ; preds = %.thread1.i, %bb.h, %bb.j
  %.sink = phi ptr [ %i.al, %bb.j ], [ %i.ad, %bb.h ], [ null, %.thread1.i ]
  store ptr %.sink, ptr @myoptarg, align 8, !tbaa !14
  br label %mygetopt_long.exit.thread651

mygetopt_long.exit.thread651:                     ; preds = %bb.p, %bb.v, %mygetopt_long.exit, %mygetopt_long.exit.thread651.sink.split, %bb.i
  store i32 0, ptr @myoptind, align 4, !tbaa !9
  %i.en = icmp eq i32 %.05101675, -99
  %.not558 = icmp eq i32 %.04951689, 0            ; 2 uses
  br i1 %i.en, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %mygetopt_long.exit.thread651
  %spec.select = select i1 %.not558, i32 3, i32 -2
  br label %.thread

bb.dh:                                            ; preds = %mygetopt_long.exit.thread651
  br i1 %.not558, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  switch i32 %.05101675, label %bb.dk [
    i32 3, label %.thread
    i32 4, label %bb.dj
    i32 2, label %switch.edge
  ]

bb.dj:                                            ; preds = %bb.di
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.38) #26
  unreachable

switch.edge:                                      ; preds = %bb.di
  br label %.thread

.thread:                                          ; preds = %bb.dg, %.thread2951, %bb.di, %switch.edge
  %.07192949 = phi i32 [ %.01759, %switch.edge ], [ %.01759, %bb.di ], [ %.01759, %bb.dg ], [ 1, %.thread2951 ]
  %.04197402946 = phi i32 [ %.04191757, %switch.edge ], [ %.04191757, %bb.di ], [ %.04191757, %bb.dg ], [ 0, %.thread2951 ]
  %.04217612943 = phi i8 [ %.04211755, %switch.edge ], [ %.04211755, %bb.di ], [ %.04211755, %bb.dg ], [ 0, %.thread2951 ]
  %.04237822940 = phi i32 [ %.04231753, %switch.edge ], [ %.04231753, %bb.di ], [ %.04231753, %bb.dg ], [ 0, %.thread2951 ]
  %.04258032937 = phi i32 [ %.04251751, %switch.edge ], [ %.04251751, %bb.di ], [ %.04251751, %bb.dg ], [ 0, %.thread2951 ]
  %.04278242934 = phi ptr [ %.04271749, %switch.edge ], [ %.04271749, %bb.di ], [ %.04271749, %bb.dg ], [ null, %.thread2951 ]
  %.04298452931 = phi i32 [ %.04291747, %switch.edge ], [ %.04291747, %bb.di ], [ %.04291747, %bb.dg ], [ 0, %.thread2951 ]
  %.04318662928 = phi i32 [ %.04311745, %switch.edge ], [ %.04311745, %bb.di ], [ %.04311745, %bb.dg ], [ 1, %.thread2951 ]
  %.04338872925 = phi i32 [ %.04331743, %switch.edge ], [ %.04331743, %bb.di ], [ %.04331743, %bb.dg ], [ 0, %.thread2951 ]
  %.04359082922 = phi i32 [ %.04351741, %switch.edge ], [ %.04351741, %bb.di ], [ %.04351741, %bb.dg ], [ 0, %.thread2951 ]
  %.04379292919 = phi i32 [ %.04371739, %switch.edge ], [ %.04371739, %bb.di ], [ %.04371739, %bb.dg ], [ 0, %.thread2951 ]
  %.04399502916 = phi i32 [ %.04391737, %switch.edge ], [ %.04391737, %bb.di ], [ %.04391737, %bb.dg ], [ 0, %.thread2951 ]
  %.04419712913 = phi i32 [ %.04411735, %switch.edge ], [ %.04411735, %bb.di ], [ %.04411735, %bb.dg ], [ 0, %.thread2951 ]
  %.04439922910 = phi i8 [ %.04431733, %switch.edge ], [ %.04431733, %bb.di ], [ %.04431733, %bb.dg ], [ 0, %.thread2951 ]
  %.044510132907 = phi ptr [ %.04451731, %switch.edge ], [ %.04451731, %bb.di ], [ %.04451731, %bb.dg ], [ null, %.thread2951 ]
  %.044710342904 = phi i32 [ %.04471729, %switch.edge ], [ %.04471729, %bb.di ], [ %.04471729, %bb.dg ], [ 0, %.thread2951 ]
  %.044910552901 = phi i32 [ %.04491727, %switch.edge ], [ %.04491727, %bb.di ], [ %.04491727, %bb.dg ], [ 0, %.thread2951 ]
  %.045110762898 = phi ptr [ %.04511725, %switch.edge ], [ %.04511725, %bb.di ], [ %.04511725, %bb.dg ], [ null, %.thread2951 ]
  %.045310972895 = phi i32 [ %.04531723, %switch.edge ], [ %.04531723, %bb.di ], [ %.04531723, %bb.dg ], [ 0, %.thread2951 ]
  %.045511182892 = phi ptr [ %.04551721, %switch.edge ], [ %.04551721, %bb.di ], [ %.04551721, %bb.dg ], [ @.str.16, %.thread2951 ]
  %.045711392889 = phi ptr [ %.04571719, %switch.edge ], [ %.04571719, %bb.di ], [ %.04571719, %bb.dg ], [ @.str.15, %.thread2951 ]
  %.045911602886 = phi ptr [ %.04591717, %switch.edge ], [ %.04591717, %bb.di ], [ %.04591717, %bb.dg ], [ @.str.14, %.thread2951 ]
  %.046111812883 = phi i32 [ %.04611715, %switch.edge ], [ %.04611715, %bb.di ], [ %.04611715, %bb.dg ], [ 0, %.thread2951 ]
  %.046312022880 = phi i32 [ %.04631713, %switch.edge ], [ %.04631713, %bb.di ], [ %.04631713, %bb.dg ], [ 0, %.thread2951 ]
  %.046512232877 = phi ptr [ %.04651711, %switch.edge ], [ %.04651711, %bb.di ], [ %.04651711, %bb.dg ], [ null, %.thread2951 ]
  %.046712442874 = phi i32 [ %.04671709, %switch.edge ], [ %.04671709, %bb.di ], [ %.04671709, %bb.dg ], [ 1024, %.thread2951 ]
  %.046912652871 = phi i32 [ %.04691707, %switch.edge ], [ %.04691707, %bb.di ], [ %.04691707, %bb.dg ], [ 0, %.thread2951 ]
  %.047112862868 = phi i32 [ %.04711705, %switch.edge ], [ %.04711705, %bb.di ], [ %.04711705, %bb.dg ], [ 1, %.thread2951 ]
  %.048113072865 = phi i32 [ %.04811703, %switch.edge ], [ %.04811703, %bb.di ], [ %.04811703, %bb.dg ], [ 0, %.thread2951 ]
  %.048313282861 = phi i32 [ %.04831701, %switch.edge ], [ %.04831701, %bb.di ], [ %.04831701, %bb.dg ], [ 0, %.thread2951 ] ; 2 uses
  %.048513502859 = phi i32 [ %.04851699, %switch.edge ], [ %.04851699, %bb.di ], [ %.04851699, %bb.dg ], [ 0, %.thread2951 ]
  %.048713712856 = phi i32 [ %.04871697, %switch.edge ], [ %.04871697, %bb.di ], [ %.04871697, %bb.dg ], [ 0, %.thread2951 ]
  %.048913922853 = phi i32 [ %.04891695, %switch.edge ], [ %.04891695, %bb.di ], [ %.04891695, %bb.dg ], [ 1, %.thread2951 ]
  %.049114132850 = phi i32 [ %.04911693, %switch.edge ], [ %.04911693, %bb.di ], [ %.04911693, %bb.dg ], [ 0, %.thread2951 ]
  %.049314342847 = phi i32 [ %.04931691, %switch.edge ], [ %.04931691, %bb.di ], [ %.04931691, %bb.dg ], [ 0, %.thread2951 ]
  %.049514552845 = phi i32 [ %.04951689, %switch.edge ], [ %.04951689, %bb.di ], [ %.04951689, %bb.dg ], [ 0, %.thread2951 ]
  %.049714772841 = phi i64 [ %.04971687, %switch.edge ], [ %.04971687, %bb.di ], [ %.04971687, %bb.dg ], [ 0, %.thread2951 ]
  %.049914982838 = phi i32 [ %.04991685, %switch.edge ], [ %.04991685, %bb.di ], [ %.04991685, %bb.dg ], [ 16384, %.thread2951 ]
  %.050215192835 = phi i32 [ %.05021683, %switch.edge ], [ %.05021683, %bb.di ], [ %.05021683, %bb.dg ], [ 0, %.thread2951 ]
  %.050415402832 = phi i32 [ %.05041681, %switch.edge ], [ %.05041681, %bb.di ], [ %.05041681, %bb.dg ], [ 0, %.thread2951 ]
  %.050615612829 = phi i32 [ %.05061679, %switch.edge ], [ %.05061679, %bb.di ], [ %.05061679, %bb.dg ], [ 0, %.thread2951 ]
  %.050815822826 = phi i32 [ %.05081677, %switch.edge ], [ %.05081677, %bb.di ], [ %.05081677, %bb.dg ], [ -99, %.thread2951 ]
  %.051316242823 = phi ptr [ %.05131673, %switch.edge ], [ %.05131673, %bb.di ], [ %.05131673, %bb.dg ], [ @.str.6, %.thread2951 ]
  %.051516452820 = phi ptr [ %.05151671, %switch.edge ], [ %.05151671, %bb.di ], [ %.05151671, %bb.dg ], [ @.str.5, %.thread2951 ]
  %.051716672816 = phi i16 [ %.05171669, %switch.edge ], [ %.05171669, %bb.di ], [ %.05171669, %bb.dg ], [ 11111, %.thread2951 ]
  %.2512.ph = phi i32 [ -1, %switch.edge ], [ -2, %bb.di ], [ %spec.select, %bb.dg ], [ 3, %.thread2951 ]
  %i.eo = icmp ne i32 %.048313282861, 0
  br label %bb.dm

bb.dk:                                            ; preds = %bb.di, %bb.dh
  %i.ep = icmp sgt i32 %.05101675, 3
  %i.eq = icmp ne i32 %.04831701, 0               ; 2 uses
  %or.cond15 = and i1 %i.ep, %i.eq
  %or.cond15.not = xor i1 %or.cond15, true
  %.b550 = load i1, ptr @quieter, align 4
  %or.cond81 = select i1 %or.cond15.not, i1 true, i1 %.b550
  br i1 %or.cond81, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.39, i64 51, i64 1, ptr %i.er) #25 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %.thread, %bb.dl, %bb.dk
  %.07192948 = phi i32 [ %.07192949, %.thread ], [ %.01759, %bb.dl ], [ %.01759, %bb.dk ] ; 4 uses
  %.04197402945 = phi i32 [ %.04197402946, %.thread ], [ %.04191757, %bb.dl ], [ %.04191757, %bb.dk ]
  %.04217612942 = phi i8 [ %.04217612943, %.thread ], [ %.04211755, %bb.dl ], [ %.04211755, %bb.dk ]
  %.04237822939 = phi i32 [ %.04237822940, %.thread ], [ %.04231753, %bb.dl ], [ %.04231753, %bb.dk ]
  %.04258032936 = phi i32 [ %.04258032937, %.thread ], [ %.04251751, %bb.dl ], [ %.04251751, %bb.dk ] ; 5 uses
  %.04278242933 = phi ptr [ %.04278242934, %.thread ], [ %.04271749, %bb.dl ], [ %.04271749, %bb.dk ] ; 3 uses
  %.04298452930 = phi i32 [ %.04298452931, %.thread ], [ %.04291747, %bb.dl ], [ %.04291747, %bb.dk ] ; 4 uses
  %.04318662927 = phi i32 [ %.04318662928, %.thread ], [ %.04311745, %bb.dl ], [ %.04311745, %bb.dk ]
  %.04338872924 = phi i32 [ %.04338872925, %.thread ], [ %.04331743, %bb.dl ], [ %.04331743, %bb.dk ]
  %.04359082921 = phi i32 [ %.04359082922, %.thread ], [ %.04351741, %bb.dl ], [ %.04351741, %bb.dk ]
  %.04379292918 = phi i32 [ %.04379292919, %.thread ], [ %.04371739, %bb.dl ], [ %.04371739, %bb.dk ]
  %.04399502915 = phi i32 [ %.04399502916, %.thread ], [ %.04391737, %bb.dl ], [ %.04391737, %bb.dk ] ; 3 uses
  %.04419712912 = phi i32 [ %.04419712913, %.thread ], [ %.04411735, %bb.dl ], [ %.04411735, %bb.dk ] ; 2 uses
  %.04439922909 = phi i8 [ %.04439922910, %.thread ], [ %.04431733, %bb.dl ], [ %.04431733, %bb.dk ]
  %.044510132906 = phi ptr [ %.044510132907, %.thread ], [ %.04451731, %bb.dl ], [ %.04451731, %bb.dk ] ; 3 uses
  %.044710342903 = phi i32 [ %.044710342904, %.thread ], [ %.04471729, %bb.dl ], [ %.04471729, %bb.dk ]
  %.044910552900 = phi i32 [ %.044910552901, %.thread ], [ %.04491727, %bb.dl ], [ %.04491727, %bb.dk ]
  %.045110762897 = phi ptr [ %.045110762898, %.thread ], [ %.04511725, %bb.dl ], [ %.04511725, %bb.dk ] ; 2 uses
  %.045310972894 = phi i32 [ %.045310972895, %.thread ], [ %.04531723, %bb.dl ], [ %.04531723, %bb.dk ]
  %.045511182891 = phi ptr [ %.045511182892, %.thread ], [ %.04551721, %bb.dl ], [ %.04551721, %bb.dk ] ; 2 uses
  %.045711392888 = phi ptr [ %.045711392889, %.thread ], [ %.04571719, %bb.dl ], [ %.04571719, %bb.dk ] ; 2 uses
  %.045911602885 = phi ptr [ %.045911602886, %.thread ], [ %.04591717, %bb.dl ], [ %.04591717, %bb.dk ]
  %.046111812882 = phi i32 [ %.046111812883, %.thread ], [ %.04611715, %bb.dl ], [ %.04611715, %bb.dk ]
  %.046312022879 = phi i32 [ %.046312022880, %.thread ], [ %.04631713, %bb.dl ], [ %.04631713, %bb.dk ]
  %.046512232876 = phi ptr [ %.046512232877, %.thread ], [ %.04651711, %bb.dl ], [ %.04651711, %bb.dk ] ; 6 uses
  %.046712442873 = phi i32 [ %.046712442874, %.thread ], [ %.04671709, %bb.dl ], [ %.04671709, %bb.dk ]
  %.046912652870 = phi i32 [ %.046912652871, %.thread ], [ %.04691707, %bb.dl ], [ %.04691707, %bb.dk ]
  %.047112862867 = phi i32 [ %.047112862868, %.thread ], [ %.04711705, %bb.dl ], [ %.04711705, %bb.dk ]
  %.048113072864 = phi i32 [ %.048113072865, %.thread ], [ %.04811703, %bb.dl ], [ %.04811703, %bb.dk ] ; 2 uses
  %.048313282863 = phi i32 [ %.048313282861, %.thread ], [ %.04831701, %bb.dl ], [ %.04831701, %bb.dk ]
  %.048513502858 = phi i32 [ %.048513502859, %.thread ], [ %.04851699, %bb.dl ], [ %.04851699, %bb.dk ]
  %.048713712855 = phi i32 [ %.048713712856, %.thread ], [ %.04871697, %bb.dl ], [ %.04871697, %bb.dk ]
  %.048913922852 = phi i32 [ %.048913922853, %.thread ], [ %.04891695, %bb.dl ], [ %.04891695, %bb.dk ] ; 2 uses
  %.049114132849 = phi i32 [ %.049114132850, %.thread ], [ %.04911693, %bb.dl ], [ %.04911693, %bb.dk ]
  %.049314342846 = phi i32 [ %.049314342847, %.thread ], [ %.04931691, %bb.dl ], [ %.04931691, %bb.dk ] ; 5 uses
  %.049514552844 = phi i32 [ %.049514552845, %.thread ], [ %.04951689, %bb.dl ], [ %.04951689, %bb.dk ]
  %.049714772840 = phi i64 [ %.049714772841, %.thread ], [ %.04971687, %bb.dl ], [ %.04971687, %bb.dk ] ; 2 uses
  %.049914982837 = phi i32 [ %.049914982838, %.thread ], [ %.04991685, %bb.dl ], [ %.04991685, %bb.dk ]
  %.050215192834 = phi i32 [ %.050215192835, %.thread ], [ %.05021683, %bb.dl ], [ %.05021683, %bb.dk ] ; 2 uses
  %.050415402831 = phi i32 [ %.050415402832, %.thread ], [ %.05041681, %bb.dl ], [ %.05041681, %bb.dk ] ; 2 uses
  %.050615612828 = phi i32 [ %.050615612829, %.thread ], [ %.05061679, %bb.dl ], [ %.05061679, %bb.dk ] ; 2 uses
  %.050815822825 = phi i32 [ %.050815822826, %.thread ], [ %.05081677, %bb.dl ], [ %.05081677, %bb.dk ] ; 2 uses
  %.051316242822 = phi ptr [ %.051316242823, %.thread ], [ %.05131673, %bb.dl ], [ %.05131673, %bb.dk ]
  %.051516452819 = phi ptr [ %.051516452820, %.thread ], [ %.05151671, %bb.dl ], [ %.05151671, %bb.dk ] ; 9 uses
  %.051716672815 = phi i16 [ %.051716672816, %.thread ], [ %.05171669, %bb.dl ], [ %.05171669, %bb.dk ] ; 8 uses
  %i.es = phi i1 [ %i.eo, %.thread ], [ true, %bb.dl ], [ %i.eq, %bb.dk ] ; 2 uses
  %.2512659 = phi i32 [ %.2512.ph, %.thread ], [ %.05101675, %bb.dl ], [ %.05101675, %bb.dk ] ; 6 uses
  %.not559 = icmp eq i32 %.04298452930, 0
  br i1 %.not559, label %bb.ds, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.et = and i32 %.2512659, -2
  %or.cond17 = icmp eq i32 %i.et, -98
  br i1 %or.cond17, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %.b555 = load i1, ptr @quieter, align 4
  br i1 %.b555, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite560 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 96, i64 1, ptr %i.eu) #25 ; 0 uses
  br label %bb.ds

bb.dq:                                            ; preds = %bb.dn
  switch i32 %.2512659, label %bb.dr [
    i32 4, label %bb.dt
    i32 -4, label %bb.dw
  ]

bb.dr:                                            ; preds = %bb.dq
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.41) #26
  unreachable

bb.ds:                                            ; preds = %bb.dp, %bb.do, %bb.dm
  switch i32 %.2512659, label %bb.dw [
    i32 3, label %bb.dx
    i32 4, label %bb.dt
    i32 -98, label %bb.du
  ]

bb.dt:                                            ; preds = %bb.dq, %bb.ds
  br label %bb.dx

bb.du:                                            ; preds = %bb.ds
  %.not561 = icmp eq i32 %.049514552844, 0
  br i1 %.not561, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.42) #26
  unreachable

bb.dw:                                            ; preds = %bb.dq, %bb.ds
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.43) #26
  unreachable

bb.dx:                                            ; preds = %bb.du, %bb.ds, %bb.dt
  %.0523 = phi ptr [ @wolfTLSv1_2_client_method_ex, %bb.ds ], [ @wolfTLSv1_3_client_method_ex, %bb.dt ], [ @wolfSSLv23_client_method_ex, %bb.du ]
  %i.ev = tail call ptr %.0523(ptr noundef null) #21, !callees !53
  %i.ew = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.ev) #21 ; 45 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.45) #26
  unreachable

bb.dz:                                            ; preds = %bb.dx
  %.not562 = icmp eq i8 %.04217612942, 0
end_hunk_0
