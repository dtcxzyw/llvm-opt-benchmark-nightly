inline.NumInlined: 8
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [59 x i8] c"OpenSSL build is not ASYNC capable - skipping async tests\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"test_ASYNC_init_thread() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"test_ASYNC_callback_status() failed\0A\00", align 1
@ctr = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"test_ASYNC_start_job() failed\0A\00", align 1
@currjob = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"test_ASYNC_get_current_job() failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"test_ASYNC_get_wait_fd() failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"test_ASYNC_block_pause() failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"test_ASYNC_start_job_ex() failed to create libctx\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"test_ASYNC_start_job_ex() failed to start job\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"test_ASYNC_start_job_ex() failed - unexpected libctx\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"test_ASYNC_start_job_ex() - restarting job failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"test_ASYNC_start_job_ex() - finishing job failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"test_ASYNC_start_job_ex() failed - global libctx check failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [82 x i8] c"test_ASYNC_set_mem_functions() - setting and retrieving custom allocators failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"test_ASYNC_set_mem_functions() - failed initialising ctx pool\0A\00", align 1
@custom_alloc_used = internal unnamed_addr global i1 false, align 4
@custom_free_used = internal unnamed_addr global i1 false, align 4
@.str.17 = private unnamed_addr constant [71 x i8] c"test_ASYNC_set_mem_functions() - custom allocation functions not used\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"test/asynctest.c\00", align 1
@str = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@str.1 = private unnamed_addr constant [19 x i8] c"callback test pass\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 22 uses
  %i.l = alloca i64, align 8                      ; 13 uses
  %i.m = alloca ptr, align 8                      ; 7 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca ptr, align 8                      ; 6 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %i.t = alloca ptr, align 8                      ; 6 uses
  %i.u = alloca ptr, align 8                      ; 6 uses
  %i.v = alloca ptr, align 8                      ; 7 uses
  %i.w = alloca i32, align 4                      ; 6 uses
  %i.x = alloca i32, align 4                      ; 6 uses
  %i.y = alloca i32, align 4                      ; 7 uses
  %i.z = tail call i32 @ASYNC_is_capable() #5
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ab = tail call i64 @fwrite(ptr nonnull @.str, i64 58, i64 1, ptr %i.aa) #6 ; 0 uses
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #5
  store ptr null, ptr %i.t, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #5
  store ptr null, ptr %i.u, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #5
  store ptr null, ptr %i.v, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #5
  %i.ac = tail call i32 @ASYNC_init_thread(i64 noundef 2, i64 noundef 0) #5
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = tail call ptr @ASYNC_WAIT_CTX_new() #5  ; 16 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = call i32 @ASYNC_start_job(ptr noundef nonnull %i.t, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.w, ptr noundef nonnull @only_pause, ptr noundef null, i64 noundef 0) #5
  %.not16.i = icmp eq i32 %i.af, 2
  br i1 %.not16.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ag = call i32 @ASYNC_start_job(ptr noundef nonnull %i.u, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.x, ptr noundef nonnull @only_pause, ptr noundef null, i64 noundef 0) #5
  %.not17.i = icmp eq i32 %i.ag, 2
  br i1 %.not17.i, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ah = call i32 @ASYNC_start_job(ptr noundef nonnull %i.v, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.y, ptr noundef nonnull @only_pause, ptr noundef null, i64 noundef 0) #5
  %.not18.i = icmp eq i32 %i.ah, 1
  br i1 %.not18.i, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ai = call i32 @ASYNC_start_job(ptr noundef nonnull %i.t, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.w, ptr noundef nonnull @only_pause, ptr noundef null, i64 noundef 0) #5
  %.not19.i = icmp eq i32 %i.ai, 3
  br i1 %.not19.i, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.aj = call i32 @ASYNC_start_job(ptr noundef nonnull %i.v, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.y, ptr noundef nonnull @only_pause, ptr noundef null, i64 noundef 0) #5
  %.not20.i = icmp eq i32 %i.aj, 2
  br i1 %.not20.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ak = call i32 @ASYNC_start_job(ptr noundef nonnull %i.u, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.x, ptr noundef nonnull @only_pause, ptr noundef null, i64 noundef 0) #5
  %.not21.i = icmp eq i32 %i.ak, 3
  br i1 %.not21.i, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.al = call i32 @ASYNC_start_job(ptr noundef nonnull %i.v, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.y, ptr noundef nonnull @only_pause, ptr noundef null, i64 noundef 0) #5
  %i.am = icmp ne i32 %i.al, 3
  %i.an = load i32, ptr %i.w, align 4
  %i.ao = icmp ne i32 %i.an, 1
  %or.cond.i = select i1 %i.am, i1 true, i1 %i.ao
  %i.ap = load i32, ptr %i.x, align 4
  %i.aq = icmp ne i32 %i.ap, 1
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.aq
  %i.ar = load i32, ptr %i.y, align 4
  %i.as = icmp ne i32 %i.ar, 1
  %or.cond5.i = select i1 %or.cond3.i, i1 true, i1 %i.as
  br i1 %or.cond5.i, label %.critedge, label %test_ASYNC_init_thread.exit

.critedge:                                        ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i = phi ptr [ null, %bb.d ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ], [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %i.ad, %bb.i ], [ %i.ad, %bb.j ], [ %i.ad, %bb.k ], [ null, %bb.c ]
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.au = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %i.at) #6 ; 0 uses
  call void @ASYNC_WAIT_CTX_free(ptr noundef %.0.i) #5
  call void @ASYNC_cleanup_thread() #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  br label %bb.bl

test_ASYNC_init_thread.exit:                      ; preds = %bb.k
  call void @ASYNC_WAIT_CTX_free(ptr noundef nonnull %i.ad) #5
  call void @ASYNC_cleanup_thread() #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #5
  store i32 100, ptr %i.q, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #5
  %i.av = call i32 @ASYNC_init_thread(i64 noundef 1, i64 noundef 0) #5
  %.not.i9 = icmp eq i32 %i.av, 0
  br i1 %.not.i9, label %.critedge47, label %bb.l

bb.l:                                             ; preds = %test_ASYNC_init_thread.exit
  %i.aw = call ptr @ASYNC_WAIT_CTX_new() #5       ; 11 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.critedge47, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = call i32 @ASYNC_WAIT_CTX_set_callback(ptr noundef nonnull %i.aw, ptr noundef nonnull @test_callback, ptr noundef nonnull %i.q) #5
  %.not15.i = icmp eq i32 %i.ay, 1
  br i1 %.not15.i, label %bb.n, label %.critedge47

bb.n:                                             ; preds = %bb.m
  %i.az = call i32 @ASYNC_WAIT_CTX_get_callback(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s) #5
  %i.ba = icmp ne i32 %i.az, 1
  %i.bb = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.bc = icmp ne ptr %i.bb, @test_callback
  %or.cond.i12 = select i1 %i.ba, i1 true, i1 %i.bc
  %i.bd = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.be = icmp ne ptr %i.bd, %i.q
  %or.cond3.i13 = select i1 %or.cond.i12, i1 true, i1 %i.be
  br i1 %or.cond3.i13, label %.critedge47, label %2

2:                                                ; preds = %bb.n
  %3 = call i32 %i.bb(ptr noundef %i.bd) #5, !inline_history !15
  %.not16.i14 = icmp eq i32 %3, 1
  br i1 %.not16.i14, label %bb.o, label %.critedge47

bb.o:                                             ; preds = %2
  %i.bf = call i32 @ASYNC_WAIT_CTX_set_status(ptr noundef nonnull %i.aw, i32 noundef 1) #5
  %.not17.i14 = icmp eq i32 %i.bf, 1
  br i1 %.not17.i14, label %bb.p, label %.critedge47

bb.p:                                             ; preds = %bb.o
  %i.bg = call i32 @ASYNC_WAIT_CTX_get_status(ptr noundef nonnull %i.aw) #5
  %.not18.i15 = icmp eq i32 %i.bg, 1
  br i1 %.not18.i15, label %test_ASYNC_callback_status.exit, label %.critedge47

.critedge47:                                      ; preds = %bb.p, %bb.o, %2, %bb.n, %bb.m, %bb.l, %test_ASYNC_init_thread.exit
  %.011.i = phi ptr [ null, %bb.l ], [ %i.aw, %bb.m ], [ %i.aw, %bb.n ], [ %i.aw, %2 ], [ %i.aw, %bb.o ], [ %i.aw, %bb.p ], [ null, %test_ASYNC_init_thread.exit ]
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bi = call i64 @fwrite(ptr nonnull @.str.3, i64 36, i64 1, ptr %i.bh) #6 ; 0 uses
  call void @ASYNC_WAIT_CTX_free(ptr noundef %.011.i) #5
  call void @ASYNC_cleanup_thread() #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #5
  br label %bb.bl

test_ASYNC_callback_status.exit:                  ; preds = %bb.p
  call void @ASYNC_WAIT_CTX_free(ptr noundef nonnull %i.aw) #5
  call void @ASYNC_cleanup_thread() #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #5
  store ptr null, ptr %i.o, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #5
  store i32 0, ptr @ctr, align 4, !tbaa !14
  %i.bj = call i32 @ASYNC_init_thread(i64 noundef 1, i64 noundef 0) #5
  %.not.i16 = icmp eq i32 %i.bj, 0
  br i1 %.not.i16, label %.critedge48, label %bb.q

bb.q:                                             ; preds = %test_ASYNC_callback_status.exit
  %i.bk = call ptr @ASYNC_WAIT_CTX_new() #5       ; 6 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.critedge48, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = call i32 @ASYNC_start_job(ptr noundef nonnull %i.o, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.p, ptr noundef nonnull @add_two, ptr noundef null, i64 noundef 0) #5
  %i.bn = icmp ne i32 %i.bm, 2
  %i.bo = load i32, ptr @ctr, align 4
  %i.bp = icmp ne i32 %i.bo, 1
  %or.cond.i17 = select i1 %i.bn, i1 true, i1 %i.bp
  br i1 %or.cond.i17, label %.critedge48, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = call i32 @ASYNC_start_job(ptr noundef nonnull %i.o, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.p, ptr noundef nonnull @add_two, ptr noundef null, i64 noundef 0) #5
  %i.br = icmp ne i32 %i.bq, 3
  %i.bs = load i32, ptr @ctr, align 4
  %i.bt = icmp ne i32 %i.bs, 2
  %or.cond3.i18 = select i1 %i.br, i1 true, i1 %i.bt
  %i.bu = load i32, ptr %i.p, align 4
  %i.bv = icmp ne i32 %i.bu, 2
  %or.cond5.i19 = select i1 %or.cond3.i18, i1 true, i1 %i.bv
  br i1 %or.cond5.i19, label %.critedge48, label %test_ASYNC_start_job.exit

.critedge48:                                      ; preds = %bb.s, %bb.r, %bb.q, %test_ASYNC_callback_status.exit
  %.0.i21 = phi ptr [ null, %bb.q ], [ %i.bk, %bb.r ], [ %i.bk, %bb.s ], [ null, %test_ASYNC_callback_status.exit ]
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bx = call i64 @fwrite(ptr nonnull @.str.5, i64 30, i64 1, ptr %i.bw) #6 ; 0 uses
  call void @ASYNC_WAIT_CTX_free(ptr noundef %.0.i21) #5
  call void @ASYNC_cleanup_thread() #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  br label %bb.bl

test_ASYNC_start_job.exit:                        ; preds = %bb.s
  call void @ASYNC_WAIT_CTX_free(ptr noundef nonnull %i.bk) #5
  call void @ASYNC_cleanup_thread() #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  store ptr null, ptr %i.m, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #5
  store ptr null, ptr @currjob, align 8, !tbaa !12
  %i.by = call i32 @ASYNC_init_thread(i64 noundef 1, i64 noundef 0) #5
  %.not.i22 = icmp eq i32 %i.by, 0
  br i1 %.not.i22, label %.critedge49, label %bb.t

bb.t:                                             ; preds = %test_ASYNC_start_job.exit
  %i.bz = call ptr @ASYNC_WAIT_CTX_new() #5       ; 7 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.critedge49, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = call i32 @ASYNC_start_job(ptr noundef nonnull %i.m, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.n, ptr noundef nonnull @save_current, ptr noundef null, i64 noundef 0) #5
  %.not7.i = icmp eq i32 %i.cb, 2
  br i1 %.not7.i, label %bb.v, label %.critedge49

bb.v:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr @currjob, align 8, !tbaa !12
  %i.cd = load ptr, ptr %i.m, align 8, !tbaa !12
  %.not8.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not8.i, label %bb.w, label %.critedge49

bb.w:                                             ; preds = %bb.v
  %i.ce = call i32 @ASYNC_start_job(ptr noundef nonnull %i.m, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.n, ptr noundef nonnull @save_current, ptr noundef null, i64 noundef 0) #5
  %i.cf = icmp ne i32 %i.ce, 3
  %i.cg = load i32, ptr %i.n, align 4
  %i.ch = icmp ne i32 %i.cg, 1
  %or.cond.i25 = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %or.cond.i25, label %.critedge49, label %test_ASYNC_get_current_job.exit

.critedge49:                                      ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %test_ASYNC_start_job.exit
  %.0.i23 = phi ptr [ null, %bb.t ], [ %i.bz, %bb.u ], [ %i.bz, %bb.v ], [ %i.bz, %bb.w ], [ null, %test_ASYNC_start_job.exit ]
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.cj = call i64 @fwrite(ptr nonnull @.str.6, i64 36, i64 1, ptr %i.ci) #6 ; 0 uses
  call void @ASYNC_WAIT_CTX_free(ptr noundef %.0.i23) #5
  call void @ASYNC_cleanup_thread() #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  br label %bb.bl

test_ASYNC_get_current_job.exit:                  ; preds = %bb.w
  call void @ASYNC_WAIT_CTX_free(ptr noundef nonnull %i.bz) #5
  call void @ASYNC_cleanup_thread() #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store ptr null, ptr %i.g, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  store i32 -1, ptr %i.i, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  store i32 -1, ptr %i.j, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  %i.ck = call i32 @ASYNC_init_thread(i64 noundef 1, i64 noundef 0) #5
  %.not.i26 = icmp eq i32 %i.ck, 0
  br i1 %.not.i26, label %.critedge50, label %bb.x

bb.x:                                             ; preds = %test_ASYNC_get_current_job.exit
  %i.cl = call ptr @ASYNC_WAIT_CTX_new() #5       ; 32 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.critedge50, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = call i32 @ASYNC_start_job(ptr noundef nonnull %i.g, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.h, ptr noundef nonnull @waitfd, ptr noundef null, i64 noundef 0) #5
  %.not50.i = icmp eq i32 %i.cn, 2
  br i1 %.not50.i, label %bb.z, label %.critedge50

bb.z:                                             ; preds = %bb.y
  %i.co = call i32 @ASYNC_WAIT_CTX_get_all_fds(ptr noundef nonnull %i.cl, ptr noundef null, ptr noundef nonnull %i.k) #5
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = load i64, ptr %i.k, align 8
  %i.cr = icmp ne i64 %i.cq, 0
  %or.cond.i29 = select i1 %i.cp, i1 true, i1 %i.cr
  br i1 %or.cond.i29, label %.critedge50, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = call i32 @ASYNC_WAIT_CTX_get_changed_fds(ptr noundef nonnull %i.cl, ptr noundef null, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef nonnull %i.l) #5
  %i.ct = icmp eq i32 %i.cs, 0
  %i.cu = load i64, ptr %i.k, align 8
  %i.cv = icmp ne i64 %i.cu, 0
  %or.cond3.i30 = select i1 %i.ct, i1 true, i1 %i.cv
  %i.cw = load i64, ptr %i.l, align 8
  %i.cx = icmp ne i64 %i.cw, 0
  %or.cond5.i31 = select i1 %or.cond3.i30, i1 true, i1 %i.cx
  br i1 %or.cond5.i31, label %.critedge50, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = call i32 @ASYNC_start_job(ptr noundef nonnull %i.g, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.h, ptr noundef nonnull @waitfd, ptr noundef null, i64 noundef 0) #5
  %.not51.i = icmp eq i32 %i.cy, 2
  br i1 %.not51.i, label %bb.ac, label %.critedge50

bb.ac:                                            ; preds = %bb.ab
  %i.cz = call i32 @ASYNC_WAIT_CTX_get_all_fds(ptr noundef nonnull %i.cl, ptr noundef null, ptr noundef nonnull %i.k) #5
  %i.da = icmp eq i32 %i.cz, 0
  %i.db = load i64, ptr %i.k, align 8
  %i.dc = icmp ne i64 %i.db, 1
  %or.cond7.i = select i1 %i.da, i1 true, i1 %i.dc
  br i1 %or.cond7.i, label %.critedge50, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = call i32 @ASYNC_WAIT_CTX_get_all_fds(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k) #5
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = load i32, ptr %i.i, align 4
  %i.dg = icmp ne i32 %i.df, 99
  %or.cond9.i = select i1 %i.de, i1 true, i1 %i.dg
  br i1 %or.cond9.i, label %.critedge50, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 -1, ptr %i.i, align 4, !tbaa !14
  %i.dh = call i32 @ASYNC_WAIT_CTX_get_changed_fds(ptr noundef nonnull %i.cl, ptr noundef null, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef nonnull %i.l) #5
  %i.di = icmp eq i32 %i.dh, 0
  %i.dj = load i64, ptr %i.k, align 8
  %i.dk = icmp ne i64 %i.dj, 1
  %or.cond11.i = select i1 %i.di, i1 true, i1 %i.dk
  %i.dl = load i64, ptr %i.l, align 8
  %i.dm = icmp ne i64 %i.dl, 0
  %or.cond13.i = select i1 %or.cond11.i, i1 true, i1 %i.dm
  br i1 %or.cond13.i, label %.critedge50, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = call i32 @ASYNC_WAIT_CTX_get_changed_fds(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef nonnull %i.l) #5
  %i.do = icmp eq i32 %i.dn, 0
  %i.dp = load i32, ptr %i.i, align 4
  %i.dq = icmp ne i32 %i.dp, 99
  %or.cond15.i = select i1 %i.do, i1 true, i1 %i.dq
  br i1 %or.cond15.i, label %.critedge50, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dr = call i32 @ASYNC_start_job(ptr noundef nonnull %i.g, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.h, ptr noundef nonnull @waitfd, ptr noundef null, i64 noundef 0) #5
  %.not52.i = icmp eq i32 %i.dr, 2
  br i1 %.not52.i, label %bb.ah, label %.critedge50

bb.ah:                                            ; preds = %bb.ag
  %i.ds = call i32 @ASYNC_WAIT_CTX_get_all_fds(ptr noundef nonnull %i.cl, ptr noundef null, ptr noundef nonnull %i.k) #5
  %i.dt = icmp eq i32 %i.ds, 0
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.ea = load i64, ptr %i.l, align 8
  %i.eb = icmp ne i64 %i.ea, 1
  %or.cond21.i = select i1 %or.cond19.i, i1 true, i1 %i.eb
  br i1 %or.cond21.i, label %.critedge50, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ec = call i32 @ASYNC_WAIT_CTX_get_changed_fds(ptr noundef nonnull %i.cl, ptr noundef null, ptr noundef nonnull %i.k, ptr noundef nonnull %i.j, ptr noundef nonnull %i.l) #5
  %i.ed = icmp eq i32 %i.ec, 0
  %i.ee = load i32, ptr %i.j, align 4
  %i.ef = icmp ne i32 %i.ee, 99
  %or.cond23.i = select i1 %i.ed, i1 true, i1 %i.ef
  br i1 %or.cond23.i, label %.critedge50, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eg = call i32 @ASYNC_start_job(ptr noundef nonnull %i.g, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.h, ptr noundef nonnull @waitfd, ptr noundef null, i64 noundef 0) #5
  %.not53.i = icmp eq i32 %i.eg, 3
  br i1 %.not53.i, label %bb.al, label %.critedge50

bb.al:                                            ; preds = %bb.ak
  %i.eh = call i32 @ASYNC_WAIT_CTX_get_all_fds(ptr noundef nonnull %i.cl, ptr noundef null, ptr noundef nonnull %i.k) #5
  %i.ei = icmp eq i32 %i.eh, 0
  %i.ej = load i64, ptr %i.k, align 8
  %i.ek = icmp ne i64 %i.ej, 0
  %or.cond25.i = select i1 %i.ei, i1 true, i1 %i.ek
  br i1 %or.cond25.i, label %.critedge50, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = call i32 @ASYNC_WAIT_CTX_get_changed_fds(ptr noundef nonnull %i.cl, ptr noundef null, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef nonnull %i.l) #5
  %i.em = icmp eq i32 %i.el, 0
  %i.en = load i64, ptr %i.k, align 8
  %i.eo = icmp ne i64 %i.en, 0
  %or.cond27.i = select i1 %i.em, i1 true, i1 %i.eo
  %i.ep = load i64, ptr %i.l, align 8
  %i.eq = icmp ne i64 %i.ep, 0
  %or.cond29.i = select i1 %or.cond27.i, i1 true, i1 %i.eq
  %i.er = load i32, ptr %i.h, align 4
  %i.es = icmp ne i32 %i.er, 1
  %or.cond31.i = select i1 %or.cond29.i, i1 true, i1 %i.es
  br i1 %or.cond31.i, label %.critedge50, label %test_ASYNC_WAIT_CTX_get_all_fds.exit

.critedge50:                                      ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %test_ASYNC_get_current_job.exit
  %.0.i27 = phi ptr [ null, %bb.x ], [ %i.cl, %bb.y ], [ %i.cl, %bb.z ], [ %i.cl, %bb.aa ], [ %i.cl, %bb.ab ], [ %i.cl, %bb.ac ], [ %i.cl, %bb.ad ], [ %i.cl, %bb.ae ], [ %i.cl, %bb.af ], [ %i.cl, %bb.ag ], [ %i.cl, %bb.ah ], [ %i.cl, %bb.ai ], [ %i.cl, %bb.aj ], [ %i.cl, %bb.ak ], [ %i.cl, %bb.al ], [ %i.cl, %bb.am ], [ null, %test_ASYNC_get_current_job.exit ]
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.eu = call i64 @fwrite(ptr nonnull @.str.7, i64 32, i64 1, ptr %i.et) #6 ; 0 uses
  call void @ASYNC_WAIT_CTX_free(ptr noundef %.0.i27) #5
  call void @ASYNC_cleanup_thread() #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %bb.bl

test_ASYNC_WAIT_CTX_get_all_fds.exit:             ; preds = %bb.am
  call void @ASYNC_WAIT_CTX_free(ptr noundef nonnull %i.cl) #5
  call void @ASYNC_cleanup_thread() #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store ptr null, ptr %i.e, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.ev = call i32 @ASYNC_init_thread(i64 noundef 1, i64 noundef 0) #5
  %.not.i32 = icmp eq i32 %i.ev, 0
  br i1 %.not.i32, label %.critedge51, label %bb.an

bb.an:                                            ; preds = %test_ASYNC_WAIT_CTX_get_all_fds.exit
  %i.ew = call ptr @ASYNC_WAIT_CTX_new() #5       ; 6 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %.critedge51, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ey = call i32 @ASYNC_start_job(ptr noundef nonnull %i.e, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.f, ptr noundef nonnull @blockpause, ptr noundef null, i64 noundef 0) #5
  %.not7.i33 = icmp eq i32 %i.ey, 2
  br i1 %.not7.i33, label %bb.ap, label %.critedge51

bb.ap:                                            ; preds = %bb.ao
  %i.ez = call i32 @ASYNC_start_job(ptr noundef nonnull %i.e, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.f, ptr noundef nonnull @blockpause, ptr noundef null, i64 noundef 0) #5
  %i.fa = icmp ne i32 %i.ez, 3
  %i.fb = load i32, ptr %i.f, align 4
  %i.fc = icmp ne i32 %i.fb, 1
  %or.cond.i37 = select i1 %i.fa, i1 true, i1 %i.fc
  br i1 %or.cond.i37, label %.critedge51, label %test_ASYNC_block_pause.exit

.critedge51:                                      ; preds = %bb.ap, %bb.ao, %bb.an, %test_ASYNC_WAIT_CTX_get_all_fds.exit
  %.0.i34 = phi ptr [ null, %bb.an ], [ %i.ew, %bb.ao ], [ %i.ew, %bb.ap ], [ null, %test_ASYNC_WAIT_CTX_get_all_fds.exit ]
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fe = call i64 @fwrite(ptr nonnull @.str.8, i64 32, i64 1, ptr %i.fd) #6 ; 0 uses
  call void @ASYNC_WAIT_CTX_free(ptr noundef %.0.i34) #5
  call void @ASYNC_cleanup_thread() #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %bb.bl

test_ASYNC_block_pause.exit:                      ; preds = %bb.ap
  call void @ASYNC_WAIT_CTX_free(ptr noundef nonnull %i.ew) #5
  call void @ASYNC_cleanup_thread() #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr null, ptr %i.c, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.ff = call ptr @OSSL_LIB_CTX_new() #5         ; 7 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %test_ASYNC_block_pause.exit
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fi = call i64 @fwrite(ptr nonnull @.str.9, i64 50, i64 1, ptr %i.fh) #6 ; 0 uses
  br label %.critedge52

bb.ar:                                            ; preds = %test_ASYNC_block_pause.exit
  %i.fj = call ptr @OSSL_LIB_CTX_set0_default(ptr noundef nonnull %i.ff) #5 ; 2 uses
  %i.fk = call ptr @ASYNC_WAIT_CTX_new() #5       ; 11 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fm = call i32 @ASYNC_start_job(ptr noundef nonnull %i.c, ptr noundef nonnull %i.fk, ptr noundef nonnull %i.d, ptr noundef nonnull @change_deflt_libctx, ptr noundef null, i64 noundef 0) #5
  %.not.i38 = icmp eq i32 %i.fm, 2
  br i1 %.not.i38, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fo = call i64 @fwrite(ptr nonnull @.str.10, i64 46, i64 1, ptr %i.fn) #6 ; 0 uses
  br label %.critedge52

bb.au:                                            ; preds = %bb.as
  %i.fp = call ptr @OSSL_LIB_CTX_set0_default(ptr noundef %i.fj) #5 ; 2 uses
  %i.fq = call ptr @OSSL_LIB_CTX_set0_default(ptr noundef %i.fp) #5
  %.not22.i = icmp eq ptr %i.fp, %i.ff
  br i1 %.not22.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fr = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fs = call i64 @fwrite(ptr nonnull @.str.11, i64 53, i64 1, ptr %i.fr) #6 ; 0 uses
  br label %.critedge52

bb.aw:                                            ; preds = %bb.au
  %i.ft = call i32 @ASYNC_start_job(ptr noundef nonnull %i.c, ptr noundef nonnull %i.fk, ptr noundef nonnull %i.d, ptr noundef nonnull @change_deflt_libctx, ptr noundef null, i64 noundef 0) #5
  %.not23.i = icmp eq i32 %i.ft, 2
  br i1 %.not23.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fu = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fv = call i64 @fwrite(ptr nonnull @.str.12, i64 50, i64 1, ptr %i.fu) #6 ; 0 uses
  br label %.critedge52

bb.ay:                                            ; preds = %bb.aw
  %i.fw = call ptr @OSSL_LIB_CTX_set0_default(ptr noundef %i.fq) #5
  %.not24.i = icmp eq ptr %i.fw, %i.ff
  br i1 %.not24.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fx = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fy = call i64 @fwrite(ptr nonnull @.str.11, i64 53, i64 1, ptr %i.fx) #6 ; 0 uses
  br label %.critedge52

bb.ba:                                            ; preds = %bb.ay
  %i.fz = call i32 @ASYNC_start_job(ptr noundef nonnull %i.c, ptr noundef nonnull %i.fk, ptr noundef nonnull %i.d, ptr noundef nonnull @change_deflt_libctx, ptr noundef null, i64 noundef 0) #5
  %i.ga = icmp ne i32 %i.fz, 3
  %i.gb = load i32, ptr %i.d, align 4
  %i.gc = icmp ne i32 %i.gb, 1
  %or.cond.i40 = select i1 %i.ga, i1 true, i1 %i.gc
  br i1 %or.cond.i40, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gd = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ge = call i64 @fwrite(ptr nonnull @.str.13, i64 49, i64 1, ptr %i.gd) #6 ; 0 uses
  br label %.critedge52

bb.bc:                                            ; preds = %bb.ba
  %i.gf = call ptr @OSSL_LIB_CTX_set0_default(ptr noundef nonnull %i.ff) #5 ; 2 uses
  %i.gg = call ptr @OSSL_LIB_CTX_set0_default(ptr noundef %i.gf) #5 ; 0 uses
  %.not25.i = icmp eq ptr %i.gf, %i.fj
  br i1 %.not25.i, label %test_ASYNC_start_job_ex.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gh = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.gi = call i64 @fwrite(ptr nonnull @.str.14, i64 62, i64 1, ptr %i.gh) #6 ; 0 uses
  br label %.critedge52

test_ASYNC_start_job_ex.exit:                     ; preds = %bb.bc
  call void @ASYNC_WAIT_CTX_free(ptr noundef nonnull %i.fk) #5
  call void @ASYNC_cleanup_thread() #5
  call void @OSSL_LIB_CTX_free(ptr noundef nonnull %i.ff) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.gj = call i32 @ASYNC_set_mem_functions(ptr noundef nonnull @test_alloc_stack, ptr noundef nonnull @test_free_stack) #5
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %test_ASYNC_set_mem_functions.exit, label %bb.be

bb.be:                                            ; preds = %test_ASYNC_start_job_ex.exit
  call void @ASYNC_get_mem_functions(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.gl = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.gm = icmp ne ptr %i.gl, @test_alloc_stack
  %i.gn = load ptr, ptr %i.b, align 8
  %i.go = icmp ne ptr %i.gn, @test_free_stack
  %or.cond.i41 = select i1 %i.gm, i1 true, i1 %i.go
  br i1 %or.cond.i41, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gp = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.gq = call i64 @fwrite(ptr nonnull @.str.15, i64 81, i64 1, ptr %i.gp) #6 ; 0 uses
  br label %test_ASYNC_set_mem_functions.exit.thread

bb.bg:                                            ; preds = %bb.be
  %i.gr = call i32 @ASYNC_init_thread(i64 noundef 1, i64 noundef 1) #5
  %.not.i42 = icmp eq i32 %i.gr, 0
  br i1 %.not.i42, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.gt = call i64 @fwrite(ptr nonnull @.str.16, i64 62, i64 1, ptr %i.gs) #6 ; 0 uses
  br label %test_ASYNC_set_mem_functions.exit.thread

bb.bi:                                            ; preds = %bb.bg
  call void @ASYNC_cleanup_thread() #5
  %.b.i = load i1, ptr @custom_alloc_used, align 4
  %.b4.i = load i1, ptr @custom_free_used, align 4
  %or.cond3.i43 = select i1 %.b.i, i1 %.b4.i, i1 false
  br i1 %or.cond3.i43, label %test_ASYNC_set_mem_functions.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.gv = call i64 @fwrite(ptr nonnull @.str.17, i64 70, i64 1, ptr %i.gu) #6 ; 0 uses
  br label %test_ASYNC_set_mem_functions.exit.thread

test_ASYNC_set_mem_functions.exit.thread:         ; preds = %bb.bh, %bb.bf, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.bl

test_ASYNC_set_mem_functions.exit:                ; preds = %test_ASYNC_start_job_ex.exit, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.bk

bb.bk:                                            ; preds = %test_ASYNC_set_mem_functions.exit, %bb.b
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.bl

.critedge52:                                      ; preds = %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.aq
  %.019.i.ph = phi ptr [ %i.fk, %bb.bd ], [ %i.fk, %bb.bb ], [ %i.fk, %bb.az ], [ %i.fk, %bb.ax ], [ %i.fk, %bb.av ], [ %i.fk, %bb.at ], [ null, %bb.aq ]
  call void @ASYNC_WAIT_CTX_free(ptr noundef %.019.i.ph) #5
  call void @ASYNC_cleanup_thread() #5
  call void @OSSL_LIB_CTX_free(ptr noundef %i.ff) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %bb.bl

bb.bl:                                            ; preds = %.critedge52, %.critedge51, %.critedge50, %.critedge49, %.critedge48, %.critedge47, %.critedge, %test_ASYNC_set_mem_functions.exit.thread, %bb.bk
  %.0 = phi i32 [ 0, %bb.bk ], [ 1, %test_ASYNC_set_mem_functions.exit.thread ], [ 1, %.critedge52 ], [ 1, %.critedge51 ], [ 1, %.critedge50 ], [ 1, %.critedge49 ], [ 1, %.critedge48 ], [ 1, %.critedge47 ], [ 1, %.critedge ]
  ret i32 %.0
}

declare i32 @ASYNC_is_capable() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @ASYNC_init_thread(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ASYNC_WAIT_CTX_new() local_unnamed_addr #1

declare i32 @ASYNC_start_job(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @only_pause(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call i32 @ASYNC_pause_job() #5      ; 0 uses
  ret i32 1
}

declare void @ASYNC_WAIT_CTX_free(ptr noundef) local_unnamed_addr #1

declare void @ASYNC_cleanup_thread() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ASYNC_pause_job() local_unnamed_addr #1

declare i32 @ASYNC_WAIT_CTX_set_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @test_callback(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  ret i32 1
}

declare i32 @ASYNC_WAIT_CTX_get_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ASYNC_WAIT_CTX_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ASYNC_WAIT_CTX_get_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_two(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr @ctr, align 4, !tbaa !14
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @ctr, align 4, !tbaa !14
  %i.c = tail call i32 @ASYNC_pause_job() #5      ; 0 uses
  %i.d = load i32, ptr @ctr, align 4, !tbaa !14
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @ctr, align 4, !tbaa !14
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @save_current(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @ASYNC_get_current_job() #5
  store ptr %i.a, ptr @currjob, align 8, !tbaa !12
  %i.b = tail call i32 @ASYNC_pause_job() #5      ; 0 uses
  ret i32 1
}

declare ptr @ASYNC_get_current_job() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @waitfd(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @ASYNC_get_current_job() #5 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ASYNC_get_wait_ctx(ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @ASYNC_pause_job() #5      ; 0 uses
  %i.f = tail call i32 @ASYNC_WAIT_CTX_set_wait_fd(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, i32 noundef 99, ptr noundef null, ptr noundef null) #5
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @ASYNC_pause_job() #5      ; 0 uses
  %i.h = tail call i32 @ASYNC_WAIT_CTX_clear_fd(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #5
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @ASYNC_pause_job() #5      ; 0 uses
  %i.j = tail call i32 @ASYNC_WAIT_CTX_set_wait_fd(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, i32 noundef 99, ptr noundef null, ptr noundef null) #5
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @ASYNC_WAIT_CTX_clear_fd(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #5
  %.not15 = icmp ne i32 %i.k, 0
  %. = zext i1 %.not15 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.e ], [ %., %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @ASYNC_WAIT_CTX_get_all_fds(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ASYNC_WAIT_CTX_get_changed_fds(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ASYNC_get_wait_ctx(ptr noundef) local_unnamed_addr #1

declare i32 @ASYNC_WAIT_CTX_set_wait_fd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ASYNC_WAIT_CTX_clear_fd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @blockpause(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  tail call void @ASYNC_block_pause() #5
  %i.a = tail call i32 @ASYNC_pause_job() #5      ; 0 uses
  tail call void @ASYNC_unblock_pause() #5
  %i.b = tail call i32 @ASYNC_pause_job() #5      ; 0 uses
  ret i32 1
}

declare void @ASYNC_block_pause() local_unnamed_addr #1

declare void @ASYNC_unblock_pause() local_unnamed_addr #1

declare ptr @OSSL_LIB_CTX_new() local_unnamed_addr #1

declare ptr @OSSL_LIB_CTX_set0_default(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @change_deflt_libctx(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @OSSL_LIB_CTX_new() #5     ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OSSL_LIB_CTX_set0_default(ptr noundef nonnull %i.a) #5
  %i.d = tail call i32 @ASYNC_pause_job() #5      ; 0 uses
  %i.e = tail call ptr @OSSL_LIB_CTX_set0_default(ptr noundef %i.c) #5
  %.not = icmp eq ptr %i.e, %i.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @OSSL_LIB_CTX_set0_default(ptr noundef nonnull %i.a) #5
  %i.g = tail call i32 @ASYNC_pause_job() #5      ; 0 uses
  %i.h = tail call ptr @OSSL_LIB_CTX_set0_default(ptr noundef %i.f) #5
  %.not13 = icmp eq ptr %i.h, %i.a
  %spec.select = zext i1 %.not13 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %spec.select, %bb.c ]
  tail call void @OSSL_LIB_CTX_free(ptr noundef nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.011 = phi i32 [ %.0, %bb.d ], [ 0, %bb.a ]
  ret i32 %.011
}

declare void @OSSL_LIB_CTX_free(ptr noundef) local_unnamed_addr #1

declare i32 @ASYNC_set_mem_functions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noalias ptr @test_alloc_stack(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  store i1 true, ptr @custom_alloc_used, align 4
  %i.a = load i64, ptr %0, align 8, !tbaa !17
  %i.b = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.a, ptr noundef nonnull @.str.18, i32 noundef 420) #5
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal void @test_free_stack(ptr noundef %0) #0 {
bb.a:
  store i1 true, ptr @custom_free_used, align 4
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef 426) #5
  ret void
}

declare void @ASYNC_get_mem_functions(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS12async_job_st", !11, i64 0}
!14 = !{!6, !6, i64 0}
!15 = distinct !{null}
!16 = !{!11, !11, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !7, i64 0}
end_hunk_1
