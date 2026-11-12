Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/easy?download=true
inline.NumInlined: 35
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@curl_global_trace:bb.a
  tail call void @llvm.x86.sse2.pause()
  %i.d = load atomic i32, ptr @s_lock monotonic, align 4
  %.not4.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !0

curl_simple_lock_lock.exit:                       ; preds = %.loopexit.i, %bb.a
  %i.e = tail call i32 @Curl_trc_opt(ptr noundef %0) #12
  store atomic i32 0, ptr @s_lock release, align 4
  ret i32 %i.e
}

declare i32 @Curl_trc_opt(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i32 @curl_global_sslset(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = atomicrmw xchg ptr @s_lock, i32 1 acquire, align 4
  %.not2.i = icmp eq i32 %i.a, 0
  br i1 %.not2.i, label %curl_simple_lock_lock.exit, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %i.b = atomicrmw xchg ptr @s_lock, i32 1 acquire, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %curl_simple_lock_lock.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.loopexit.i
  %i.c = load atomic i32, ptr @s_lock monotonic, align 4
  %.not41.i = icmp eq i32 %i.c, 0
  br i1 %.not41.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void @llvm.x86.sse2.pause()
  %i.d = load atomic i32, ptr @s_lock monotonic, align 4
  %.not4.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !0

curl_simple_lock_lock.exit:                       ; preds = %.loopexit.i, %bb.a
  %i.e = tail call i32 @Curl_init_sslset_nolock(i32 noundef %0, ptr noundef %1, ptr noundef %2) #12
  store atomic i32 0, ptr @s_lock release, align 4
  ret i32 %i.e
}

declare i32 @Curl_init_sslset_nolock(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define ptr @curl_easy_init() local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = atomicrmw xchg ptr @s_lock, i32 1 acquire, align 4
  %.not2.i = icmp eq i32 %i.b, 0
  br i1 %.not2.i, label %curl_simple_lock_lock.exit, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %i.c = atomicrmw xchg ptr @s_lock, i32 1 acquire, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %curl_simple_lock_lock.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.loopexit.i
  %i.d = load atomic i32, ptr @s_lock monotonic, align 4
  %.not41.i = icmp eq i32 %i.d, 0
  br i1 %.not41.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void @llvm.x86.sse2.pause()
  %i.e = load atomic i32, ptr @s_lock monotonic, align 4
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !0

curl_simple_lock_lock.exit:                       ; preds = %.loopexit.i, %bb.a
  %i.f = load i32, ptr @initialized, align 4, !tbaa !10
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %global_init.exit.thread

bb.b:                                             ; preds = %curl_simple_lock_lock.exit
  store i32 1, ptr @initialized, align 4, !tbaa !10
  store ptr @malloc, ptr @Curl_cmalloc, align 8, !tbaa !12
  store ptr @free, ptr @Curl_cfree, align 8, !tbaa !12
  store ptr @realloc, ptr @Curl_crealloc, align 8, !tbaa !12
  store ptr @strdup, ptr @Curl_cstrdup, align 8, !tbaa !12
  store ptr @calloc, ptr @Curl_ccalloc, align 8, !tbaa !12
  %i.g = tail call i32 @Curl_trc_init() #12
  %.not3.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @Curl_ssl_init() #12
  %.not4.i5 = icmp eq i32 %i.h, 0
  br i1 %.not4.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @Curl_async_global_init() #12
  %.not5.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i, label %global_init.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.j = load i32, ptr @initialized, align 4, !tbaa !10
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @initialized, align 4, !tbaa !10
  store atomic i32 0, ptr @s_lock release, align 4
  br label %bb.f

global_init.exit.thread:                          ; preds = %bb.d, %curl_simple_lock_lock.exit
  store atomic i32 0, ptr @s_lock release, align 4
  %i.l = call i32 @Curl_open(ptr noundef nonnull %i.a) #12
  %.not3 = icmp eq i32 %i.l, 0
  %i.m = load ptr, ptr %i.a, align 8
  %spec.select = select i1 %.not3, ptr %i.m, ptr null
  br label %bb.f

bb.f:                                             ; preds = %global_init.exit.thread, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %spec.select, %global_init.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0
}

declare i32 @Curl_open(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i32 @curl_easy_perform(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.sigaction, align 8          ; 6 uses
  %2 = alloca %struct.Curl_sigpipe_ctx, align 8   ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %easy_perform.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86   ; 2 uses
  %.not41.i = icmp eq ptr %i.e, null
  br i1 %.not41.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.e, align 1, !tbaa !75
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2880
  store i32 0, ptr %i.f, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %.not42.i = icmp eq ptr %i.h, null
  br i1 %.not42.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str) #12
  br label %easy_perform.exit

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77
  %.not43.i = icmp eq ptr %i.j, null
  br i1 %.not43.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  tail call void @Curl_detach_connection(ptr noundef nonnull %0) #12
  %i.k = call i32 @Curl_getconnectinfo(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #12
  %i.l = icmp ne i32 %i.k, -1
  %i.m = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.n = icmp ne ptr %i.m, null
  %or.cond.i = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @Curl_conn_terminate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i1 noundef zeroext true) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88   ; 2 uses
  %.not44.i = icmp eq ptr %i.p, null
  br i1 %.not44.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.q = call ptr @Curl_multi_handle(i32 noundef 16, i64 noundef 1, i64 noundef 3, i64 noundef 7, i64 noundef 3) #12 ; 2 uses
  %.not45.i = icmp eq ptr %i.q, null
  br i1 %.not45.i, label %easy_perform.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.034.i = phi ptr [ %i.q, %bb.k ], [ %i.p, %bb.j ] ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.034.i, i64 744
  %i.s = load i16, ptr %i.r, align 8
  %i.t = and i16 %i.s, 8
  %.not46.i = icmp eq i16 %i.t, 0
  br i1 %.not46.i, label %bb.m, label %easy_perform.exit

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.v = load i32, ptr %i.u, align 8, !tbaa !89
  %i.w = zext i32 %i.v to i64
  %i.x = call i32 (ptr, i32, ...) @curl_multi_setopt(ptr noundef nonnull %.034.i, i32 noundef 6, i64 noundef %i.w) #12 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.z = load i64, ptr %i.y, align 1
  %i.aa = lshr i64 %i.z, 9
  %i.ab = and i64 %i.aa, 1
  %i.ac = call i32 (ptr, i32, ...) @curl_multi_setopt(ptr noundef nonnull %.034.i, i32 noundef 21, i64 noundef %i.ab) #12 ; 0 uses
  store ptr null, ptr %i.o, align 8, !tbaa !88
  %i.ad = call i32 @curl_multi_add_handle(ptr noundef nonnull %.034.i, ptr noundef nonnull %0) #12 ; 2 uses
  %.not47.i = icmp eq i32 %i.ad, 0
  br i1 %.not47.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = call i32 @curl_multi_cleanup(ptr noundef nonnull %.034.i) #12 ; 0 uses
  %i.af = icmp eq i32 %i.ad, 3
  %..i = select i1 %i.af, i32 27, i32 2
  br label %easy_perform.exit

bb.o:                                             ; preds = %bb.m
  store ptr %.034.i, ptr %i.o, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, i8 0, i64 160, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  store i8 1, ptr %i.ag, align 8
  %3 = load i64, ptr %i.y, align 1
  %4 = and i64 %3, 4294967296
  %.not.i.not.i = icmp eq i64 %4, 0
  br i1 %.not.i.not.i, label %bb.p, label %sigpipe_apply.exit.i

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.ah = call i32 @sigaction(i32 noundef 13, ptr noundef null, ptr noundef nonnull %2) #12 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 152, i1 false), !tbaa.struct !78
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !81
  %i.ak = and i32 %i.aj, -5
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !81
  %i.al = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %1, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %sigpipe_apply.exit.i

sigpipe_apply.exit.i:                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.am = call i32 @curl_multi_poll(ptr noundef nonnull %.034.i, ptr noundef null, i32 noundef 0, i32 noundef 1000, ptr noundef null) #12 ; 2 uses
  %.not19.i.i6 = icmp eq i32 %i.am, 0
  br i1 %.not19.i.i6, label %.lr.ph, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.backedge.i, %sigpipe_apply.exit.i
  %.lcssa2 = phi i32 [ %i.am, %sigpipe_apply.exit.i ], [ %i.au, %.backedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.an = icmp eq i32 %.lcssa2, 3
  %i.ao = select i1 %i.an, i32 27, i32 43
  br label %easy_transfer.exit.i

.lr.ph:                                           ; preds = %sigpipe_apply.exit.i, %.backedge.i
  %i.ap = call i32 @curl_multi_perform(ptr noundef nonnull %.034.i, ptr noundef nonnull %i.a) #12
  %.fr.i.i = freeze i32 %i.ap                     ; 2 uses
  %i.aq = icmp ne i32 %.fr.i.i, 0                 ; 2 uses
  %i.ar = load i32, ptr %i.a, align 4
  %i.as = icmp ne i32 %i.ar, 0
  %or.cond.i.i = select i1 %i.aq, i1 true, i1 %i.as
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.at = call ptr @curl_multi_info_read(ptr noundef nonnull %.034.i, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not20.i.not.i = icmp eq ptr %i.at, null
  br i1 %.not20.i.not.i, label %.split.i, label %.critedge.i.i

.split.i:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.backedge.i

.thread.i.i:                                      ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %i.aq, label %bb.r, label %.backedge.i

.backedge.i:                                      ; preds = %.thread.i.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.au = call i32 @curl_multi_poll(ptr noundef nonnull %.034.i, ptr noundef null, i32 noundef 0, i32 noundef 1000, ptr noundef null) #12 ; 2 uses
  %.not19.i.i = icmp eq i32 %i.au, 0
  br i1 %.not19.i.i, label %.lr.ph, label %.critedge.thread.i.i, !llvm.loop !85

.critedge.i.i:                                    ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %easy_transfer.exit.i

bb.r:                                             ; preds = %.thread.i.i
  %i.ax = icmp eq i32 %.fr.i.i, 3
  %i.ay = select i1 %i.ax, i32 27, i32 43
  br label %easy_transfer.exit.i

easy_transfer.exit.i:                             ; preds = %bb.r, %.critedge.i.i, %.critedge.thread.i.i
  %i.az = phi i32 [ %i.ao, %.critedge.thread.i.i ], [ %i.ay, %bb.r ], [ %i.aw, %.critedge.i.i ] ; 2 uses
  %i.ba = call i32 @curl_multi_remove_handle(ptr noundef nonnull %.034.i, ptr noundef nonnull %0) #12 ; 0 uses
  %i.bb = load i8, ptr %i.ag, align 8
  %i.bc = and i8 %i.bb, 1
  %.not.i49.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i49.i, label %bb.s, label %easy_perform.exit

bb.s:                                             ; preds = %easy_transfer.exit.i
  %i.bd = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %2, ptr noundef null) #12 ; 0 uses
  br label %easy_perform.exit

easy_perform.exit:                                ; preds = %bb.a, %bb.e, %bb.k, %bb.l, %bb.n, %easy_transfer.exit.i, %bb.s
  %.0.i = phi i32 [ 2, %bb.e ], [ 27, %bb.k ], [ %..i, %bb.n ], [ 93, %bb.l ], [ 43, %bb.a ], [ %i.az, %easy_transfer.exit.i ], [ %i.az, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define void @curl_easy_cleanup(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.Curl_sigpipe_ctx, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr %0, ptr %i.a, align 8, !tbaa !91
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !82
  %i.c = icmp eq i32 %i.b, -1059136595
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %3 = load i64, ptr %i.d, align 1                ; 2 uses
  %4 = lshr i64 %3, 32
  %i.e = trunc i64 %4 to i8
  %i.f = and i8 %i.e, 1
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  %i.g = load i8, ptr %5, align 8
  %i.h = and i8 %i.g, -2
  %i.i = or disjoint i8 %i.f, %i.h
  store i8 %i.i, ptr %5, align 8
  %6 = and i64 %3, 4294967296
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %bb.d, label %sigpipe_ignore.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.j = call i32 @sigaction(i32 noundef 13, ptr noundef null, ptr noundef nonnull %2) #12 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 152, i1 false), !tbaa.struct !78
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !81
  %i.m = and i32 %i.l, -5
  store i32 %i.m, ptr %i.k, align 8, !tbaa !81
  %i.n = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %1, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %sigpipe_ignore.exit

sigpipe_ignore.exit:                              ; preds = %bb.c, %bb.d
  %i.o = call i32 @Curl_close(ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.p = load i8, ptr %5, align 8
  %i.q = and i8 %i.p, 1
  %.not.i1 = icmp eq i8 %i.q, 0
  br i1 %.not.i1, label %bb.e, label %sigpipe_restore.exit

bb.e:                                             ; preds = %sigpipe_ignore.exit
  %i.r = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %2, ptr noundef null) #12 ; 0 uses
  br label %sigpipe_restore.exit

sigpipe_restore.exit:                             ; preds = %sigpipe_ignore.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.f

bb.f:                                             ; preds = %sigpipe_restore.exit, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare i32 @Curl_close(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i32 @curl_easy_getinfo(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !82
  %i.b = icmp eq i32 %i.a, -1059136595
  br i1 %i.b, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = load i32, ptr %2, align 16               ; 3 uses
  %i.d = icmp ult i32 %i.c, 41
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 16
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = add nuw nsw i32 %i.c, 8
  store i32 %i.i, ptr %2, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %i.h, %bb.d ], [ %i.k, %bb.e ]
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = call i32 (ptr, i32, ...) @Curl_getinfo(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.n) #12
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ 43, %bb.b ], [ 43, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

declare i32 @Curl_getinfo(ptr noundef, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

; Function Attrs: nounwind uwtable
define ptr @curl_easy_duphandle(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.at, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !82
  %i.b = icmp eq i32 %i.a, -1059136595
  br i1 %i.b, label %bb.c, label %bb.at

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !12
  %i.d = tail call ptr %i.c(i64 noundef 1, i64 noundef 4880) #12 ; 46 uses
  %.not81 = icmp eq ptr %i.d, null
  br i1 %.not81, label %bb.at, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.f = load i32, ptr %i.e, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1224
  store i32 %i.f, ptr %i.g, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  tail call void @Curl_hash_init(ptr noundef nonnull %i.h, i64 noundef 23, ptr noundef nonnull @Curl_hash_str, ptr noundef nonnull @curlx_str_key_compare, ptr noundef nonnull @dupeasy_meta_freeentry) #12
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2816 ; 2 uses
  tail call void @curlx_dyn_init(ptr noundef nonnull %i.i, i64 noundef 102400) #12
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4248 ; 3 uses
  tail call void @Curl_bufref_init(ptr noundef nonnull %i.j) #12
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4272 ; 3 uses
  tail call void @Curl_bufref_init(ptr noundef nonnull %i.k) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4512
  tail call void @Curl_netrc_init(ptr noundef nonnull %i.l) #12
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2800
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 -1, i64 16, i1 false)
  tail call void @Curl_llist_init(ptr noundef nonnull %i.o, ptr noundef null) #12
  tail call void @Curl_initinfo(ptr noundef nonnull %i.d) #12
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1776) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(1776) %i.q, i64 1776, i1 false), !tbaa.struct !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 760 ; 3 uses
  store ptr null, ptr %i.r, align 8, !tbaa !104
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 1304 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 1904
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.s, i8 0, i64 664, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 73
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.f, !llvm.loop !92

.preheader.i:                                     ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.x = tail call i32 @Curl_setblobopt(ptr noundef nonnull %i.t, ptr noundef %i.w) #12
  %.not69.i = icmp eq i32 %i.x, 0
  br i1 %.not69.i, label %bb.g, label %dupset.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !96
  %i.ab = tail call i32 @Curl_setstropt(ptr noundef nonnull %i.y, ptr noundef %i.aa) #12
  %.not70.i = icmp eq i32 %i.ab, 0
  br i1 %.not70.i, label %bb.e, label %dupset.exit.thread

bb.g:                                             ; preds = %.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 1912
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.af = tail call i32 @Curl_setblobopt(ptr noundef nonnull %i.ac, ptr noundef %i.ae) #12
  %.not69.1.i = icmp eq i32 %i.af, 0
  br i1 %.not69.1.i, label %bb.h, label %dupset.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 1920
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !100
  %i.aj = tail call i32 @Curl_setblobopt(ptr noundef nonnull %i.ag, ptr noundef %i.ai) #12
  %.not69.2.i = icmp eq i32 %i.aj, 0
  br i1 %.not69.2.i, label %bb.i, label %dupset.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 1928
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !100
  %i.an = tail call i32 @Curl_setblobopt(ptr noundef nonnull %i.ak, ptr noundef %i.am) #12
  %.not69.3.i = icmp eq i32 %i.an, 0
  br i1 %.not69.3.i, label %bb.j, label %dupset.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 1936
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !100
  %i.ar = tail call i32 @Curl_setblobopt(ptr noundef nonnull %i.ao, ptr noundef %i.aq) #12
  %.not69.4.i = icmp eq i32 %i.ar, 0
  br i1 %.not69.4.i, label %bb.k, label %dupset.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 1944
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100
  %i.av = tail call i32 @Curl_setblobopt(ptr noundef nonnull %i.as, ptr noundef %i.au) #12
  %.not69.5.i = icmp eq i32 %i.av, 0
  br i1 %.not69.5.i, label %bb.l, label %dupset.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 1952
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !100
  %i.az = tail call i32 @Curl_setblobopt(ptr noundef nonnull %i.aw, ptr noundef %i.ay) #12
  %.not69.6.i = icmp eq i32 %i.az, 0
  br i1 %.not69.6.i, label %bb.m, label %dupset.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 1960
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !100
  %i.bd = tail call i32 @Curl_setblobopt(ptr noundef nonnull %i.ba, ptr noundef %i.bc) #12
  %.not69.7.i = icmp eq i32 %i.bd, 0
end_hunk_0
begin_hunk_1_@curl_easy_pause:bb.a
  store i64 0, ptr %i.t, align 8, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !76
  %.not55 = icmp eq ptr %i.v, null
  br i1 %.not55, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @Curl_multi_mark_dirty(ptr noundef nonnull %0) #12
  %i.w = trunc nuw i8 %.1 to i1
  br i1 %i.w, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.y = tail call i32 @Curl_update_timer(ptr noundef %i.x) #12
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = icmp ne i32 %.146, 0
  %or.cond = select i1 %i.z, i1 true, i1 %i.aa
  %spec.store.select = select i1 %or.cond, i32 %.146, i32 42
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i
  %.2 = phi i32 [ %.146, %bb.i ], [ %spec.store.select, %bb.l ], [ %.146, %bb.j ] ; 2 uses
  %i.ab = icmp eq i32 %.2, 0
  %i.ac = trunc nuw i8 %.1 to i1
  %or.cond3 = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond3, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4628
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 1024
  %.not56 = icmp eq i32 %i.af, 0
  br i1 %.not56, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 2 uses
  %.not57 = icmp eq ptr %i.ah, null
  br i1 %.not57, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = tail call i32 @Curl_multi_ev_assess_xfer(ptr noundef nonnull %i.ah, ptr noundef nonnull %0) #12
  %i.aj = icmp eq i32 %i.ai, 0
  %spec.store.select6 = select i1 %i.aj, i32 0, i32 42
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.p, %bb.o, %bb.n, %bb.m
  %.3 = phi i32 [ 0, %bb.n ], [ %spec.store.select6, %bb.p ], [ 0, %bb.o ], [ %.2, %bb.m ], [ %.146, %bb.k ] ; 2 uses
  br i1 %i.e, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext true) #12
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q, %bb.a, %bb.b, %bb.c
  %.047 = phi i32 [ 43, %bb.a ], [ 43, %bb.c ], [ 43, %bb.b ], [ %.3, %bb.q ], [ %.3, %.thread ]
  ret i32 %.047
}

declare zeroext i1 @Curl_is_in_callback(ptr noundef) local_unnamed_addr #7

declare zeroext i1 @Curl_xfer_recv_is_paused(ptr noundef) local_unnamed_addr #7

declare zeroext i1 @Curl_xfer_send_is_paused(ptr noundef) local_unnamed_addr #7

declare zeroext i1 @Curl_creader_is_paused(ptr noundef) local_unnamed_addr #7

declare i32 @Curl_1st_fatal(i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @Curl_xfer_pause_send(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

declare i32 @Curl_xfer_pause_recv(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

declare zeroext i1 @Curl_xfer_is_blocked(ptr noundef) local_unnamed_addr #7

declare void @Curl_multi_mark_dirty(ptr noundef) local_unnamed_addr #7

declare i32 @Curl_update_timer(ptr noundef) local_unnamed_addr #7

declare i32 @Curl_multi_ev_assess_xfer(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @Curl_set_in_callback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i32 @curl_easy_recv(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !82
  %i.c = icmp eq i32 %i.b, -1059136595
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @Curl_is_in_callback(ptr noundef nonnull %0) #12
  br i1 %i.d, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.f = load i64, ptr %i.e, align 1
  %i.g = and i64 %i.f, 1
  %.not8.i = icmp eq i64 %i.g, 0
  br i1 %.not8.i, label %easy_connection.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 @Curl_getconnectinfo(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %easy_connection.exit, label %bb.f

easy_connection.exit:                             ; preds = %bb.d, %bb.e
  %.str.2.sink.i = phi ptr [ @.str.1, %bb.d ], [ @.str.2, %bb.e ]
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull %.str.2.sink.i) #12
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  %.not17 = icmp eq ptr %i.k, null
  br i1 %.not17, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !84
  call void @Curl_attach_connection(ptr noundef nonnull %0, ptr noundef %i.l) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i64 0, ptr %3, align 8, !tbaa !83
  %i.m = call i32 @Curl_conn_recv(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3) #12
  br label %bb.i

bb.i:                                             ; preds = %easy_connection.exit, %bb.c, %bb.a, %bb.b, %bb.h
  %.0 = phi i32 [ 43, %bb.a ], [ 93, %bb.c ], [ %i.m, %bb.h ], [ 43, %bb.b ], [ 1, %easy_connection.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

declare void @Curl_attach_connection(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @Curl_conn_recv(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 0, 44) i32 @Curl_connect_only_attach(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !84
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %easy_connection.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.c = load i64, ptr %i.b, align 1
  %i.d = and i64 %i.c, 1
  %.not8.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @Curl_getconnectinfo(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.sink.split.i, label %easy_connection.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.str.2.sink.i = phi ptr [ @.str.1, %bb.b ], [ @.str.2, %bb.c ]
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull %.str.2.sink.i) #12
  br label %easy_connection.exit.thread

easy_connection.exit:                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.d, label %easy_connection.exit.thread

bb.d:                                             ; preds = %easy_connection.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !84
  call void @Curl_attach_connection(ptr noundef nonnull %0, ptr noundef %i.i) #12
  br label %easy_connection.exit.thread

easy_connection.exit.thread:                      ; preds = %.sink.split.i, %bb.a, %easy_connection.exit, %bb.d
  %.0 = phi i32 [ 0, %easy_connection.exit ], [ 0, %bb.d ], [ 1, %.sink.split.i ], [ 43, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 82) i32 @Curl_senddata(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef initializes((0, 8)) %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.Curl_sigpipe_ctx, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store i64 0, ptr %3, align 8, !tbaa !83
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %easy_connection.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.c = load i64, ptr %i.b, align 1
  %i.d = and i64 %i.c, 1
  %.not8.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @Curl_getconnectinfo(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.sink.split.i, label %easy_connection.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.str.2.sink.i = phi ptr [ @.str.1, %bb.b ], [ @.str.2, %bb.c ]
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull %.str.2.sink.i) #12
  br label %easy_connection.exit.thread

easy_connection.exit:                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %easy_connection.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !84
  call void @Curl_attach_connection(ptr noundef nonnull %0, ptr noundef %i.i) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %easy_connection.exit
  %6 = load i64, ptr %i.b, align 1                ; 2 uses
  %7 = lshr i64 %6, 32
  %8 = trunc i64 %7 to i8
  %9 = and i8 %8, 1
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 3 uses
  %i.j = load i8, ptr %10, align 8
  %i.k = and i8 %i.j, -2
  %i.l = or disjoint i8 %9, %i.k
  store i8 %i.l, ptr %10, align 8
  %11 = and i64 %6, 4294967296
  %.not.i19 = icmp eq i64 %11, 0
  br i1 %.not.i19, label %bb.f, label %sigpipe_ignore.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.m = call i32 @sigaction(i32 noundef 13, ptr noundef null, ptr noundef nonnull %5) #12 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(152) %5, i64 152, i1 false), !tbaa.struct !78
  store ptr inttoptr (i64 1 to ptr), ptr %4, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !81
  %i.p = and i32 %i.o, -5
  store i32 %i.p, ptr %i.n, align 8, !tbaa !81
  %i.q = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %4, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %sigpipe_ignore.exit

sigpipe_ignore.exit:                              ; preds = %bb.e, %bb.f
  %i.r = call i32 @Curl_conn_send(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false, ptr noundef nonnull %3) #12 ; 2 uses
  %i.s = load i8, ptr %10, align 8
  %i.t = and i8 %i.s, 1
  %.not.i20 = icmp eq i8 %i.t, 0
  br i1 %.not.i20, label %bb.g, label %sigpipe_restore.exit

bb.g:                                             ; preds = %sigpipe_ignore.exit
  %i.u = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %5, ptr noundef null) #12 ; 0 uses
  br label %sigpipe_restore.exit

sigpipe_restore.exit:                             ; preds = %sigpipe_ignore.exit, %bb.g
  %switch.selectcmp = icmp eq i32 %i.r, 0
  %switch.select = select i1 %switch.selectcmp, i32 0, i32 55
  %switch.selectcmp17 = icmp eq i32 %i.r, 81
  %switch.select18 = select i1 %switch.selectcmp17, i32 81, i32 %switch.select
  br label %easy_connection.exit.thread

easy_connection.exit.thread:                      ; preds = %.sink.split.i, %bb.a, %sigpipe_restore.exit
  %.0 = phi i32 [ %switch.select18, %sigpipe_restore.exit ], [ 1, %.sink.split.i ], [ 43, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

declare i32 @Curl_conn_send(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 0, 94) i32 @curl_easy_send(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !83
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !82
  %i.c = icmp eq i32 %i.b, -1059136595
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @Curl_is_in_callback(ptr noundef nonnull %0) #12
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @Curl_senddata(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.f, ptr %3, align 8, !tbaa !83
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 43, %bb.a ], [ %i.e, %bb.d ], [ 43, %bb.b ], [ 93, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @curl_easy_upkeep(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !82
  %i.b = icmp eq i32 %i.a, -1059136595
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @Curl_is_in_callback(ptr noundef nonnull %0) #12
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @Curl_cpool_upkeep(ptr noundef nonnull %0) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 43, %bb.a ], [ %i.d, %bb.d ], [ 43, %bb.b ], [ 93, %bb.c ]
  ret i32 %.0
}

declare i32 @Curl_cpool_upkeep(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @curl_easy_ssls_import(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i64 noundef %3, ptr nofree noundef readnone captures(none) %4, i64 noundef %5) local_unnamed_addr #9 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @curl_easy_ssls_export(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #9 {
bb.a:
  ret i32 4
}

; Function Attrs: nounwind uwtable
define range(i32 0, 28) i32 @Curl_meta_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.c = add i64 %i.b, 1
  %i.d = tail call ptr @Curl_hash_add2(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.c, ptr noundef %2, ptr noundef %3) #12
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.f = add i64 %i.e, 1
  tail call void %3(ptr noundef nonnull %1, i64 noundef %i.f, ptr noundef %2) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 27, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @Curl_hash_add2(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define void @Curl_meta_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.c = add i64 %i.b, 1
  %i.d = tail call i32 @Curl_hash_delete(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.c) #12 ; 0 uses
  ret void
}

declare i32 @Curl_hash_delete(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define ptr @Curl_meta_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.c = add i64 %i.b, 1
  %i.d = tail call ptr @Curl_hash_pick(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.c) #12
  ret ptr %i.d
}

declare ptr @Curl_hash_pick(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #12

declare i32 @Curl_trc_init() local_unnamed_addr #7

declare i32 @Curl_ssl_init() local_unnamed_addr #7

declare i32 @Curl_async_global_init() local_unnamed_addr #7

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

declare void @Curl_detach_connection(ptr noundef) local_unnamed_addr #7

declare i32 @Curl_getconnectinfo(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @Curl_conn_terminate(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

declare ptr @Curl_multi_handle(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare i32 @curl_multi_setopt(ptr noundef, i32 noundef, ...) local_unnamed_addr #7

declare i32 @curl_multi_add_handle(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @curl_multi_cleanup(ptr noundef) local_unnamed_addr #7

declare i32 @curl_multi_remove_handle(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @curl_multi_poll(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @curl_multi_perform(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @curl_multi_info_read(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare i32 @Curl_setstropt(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @Curl_setblobopt(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @curlx_memdup(ptr noundef, i64 noundef) local_unnamed_addr #7

declare i64 @curlx_sotouz(i64 noundef) local_unnamed_addr #7

declare void @Curl_mime_initpart(ptr noundef) local_unnamed_addr #7

declare i32 @Curl_mime_duppart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
