inline.NumInlined: 93
inline.NumDeleted: 12
begin_hunk_0_@logStackContent:bb.a
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = add i64 %i.b, 2
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.300, i64 noundef %i.bw, i64 noundef %i.bv) #24
  %.pre22 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.bx = icmp sgt i32 %.pre22, 3
  br i1 %i.bx, label %.loopexit, label %.preheader.split.15

.preheader.split.15:                              ; preds = %.preheader.split.14
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !158
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = add i64 %i.b, 1
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.300, i64 noundef %i.cb, i64 noundef %i.ca) #24
  %.pre23 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.cc = icmp sgt i32 %.pre23, 3
  br i1 %i.cc, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader.split.15
  %i.cd = load ptr, ptr %0, align 8, !tbaa !158
  %i.ce = ptrtoint ptr %i.cd to i64
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.300, i64 noundef %i.b, i64 noundef %i.ce) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.split.1, %.preheader.split.2, %.preheader.split.3, %.preheader.split.4, %.preheader.split.5, %.preheader.split.6, %.preheader.split.7, %.preheader.split.8, %.preheader.split.9, %.preheader.split.10, %.preheader.split.11, %.preheader.split.12, %.preheader.split.13, %.preheader.split.14, %.preheader.split.15, %bb.d, %.preheader, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @logRegisters(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.b = icmp sgt i32 %i.a, 3
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 1027, ptr noundef nonnull @.str.301) #24
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.c = icmp sgt i32 %.pr, 3
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load i64, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27
  %i.u = load i64, ptr %i.d, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.am = load i64, ptr %i.al, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !27
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.302, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.l, i64 noundef %i.n, i64 noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, i64 noundef %i.u, i64 noundef %i.w, i64 noundef %i.y, i64 noundef %i.aa, i64 noundef %i.ac, i64 noundef %i.ae, i64 noundef %i.ag, i64 noundef %i.ai, i64 noundef %i.ak, i64 noundef %i.am, i64 noundef %i.ao) #24
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !27
  %i.ar = inttoptr i64 %i.aq to ptr
  tail call void @logStackContent(ptr noundef %i.ar)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @openDirectLogFiledes() local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7096), align 8, !tbaa !180 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.a, i32 noundef 1089, i32 noundef 420) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local void @closeDirectLogFiledes(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7096), align 8, !tbaa !180
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @close(i32 noundef %0) #24 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @backtrace_symbols_fd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @writeCurrentThreadsStackTrace(i32 noundef range(i32 0, -1) %0, i32 noundef range(i32 -2147483646, -2147483648) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [100 x ptr], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = call i32 @backtrace(ptr noundef nonnull %i.a, i32 noundef 100) #24
  %i.c = call i64 @write(i32 noundef %0, ptr noundef nonnull @.str.349, i64 noundef 12) #24 ; 0 uses
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.d
  %i.f = sub nsw i32 %i.b, %1
  call void @backtrace_symbols_fd(ptr noundef nonnull %i.e, i32 noundef %i.f, i32 noundef %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @writeStacktraces(i32 noundef range(i32 0, -1) %0, i32 noundef range(i32 -2147483646, -2147483648) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [4096 x i8], align 16             ; 7 uses
  %i.e = alloca [4096 x i8], align 16             ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca [50 x i32], align 16              ; 6 uses
  %i.h = alloca [4096 x i8], align 16             ; 9 uses
  %2 = alloca %struct.stacktrace_data, align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.i = tail call i32 @getpid() #24
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf_async_signal_safe(ptr noundef nonnull %i.d, i64 noundef 4096, ptr noundef nonnull @.str.354, i32 noundef %i.i) #24 ; 0 uses
  %i.k = call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.d, i32 noundef 65536) #24 ; 4 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call i64 (i64, ...) @syscall(i64 noundef 186) #24 ; 2 uses
  %i.n = trunc i64 %i.m to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %sext.i = shl i64 %i.m, 32
  %i.p = ashr exact i64 %sext.i, 32
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.b
  %.037.i = phi i32 [ -1, %bb.b ], [ %.542.i, %._crit_edge.i ] ; 3 uses
  %.035.i = phi i64 [ 0, %bb.b ], [ %.4.i, %._crit_edge.i ] ; 3 uses
  %i.q = call i64 (i64, ...) @syscall(i64 noundef 217, i32 noundef %i.k, ptr noundef nonnull %i.e, i32 noundef 4096) #24 ; 3 uses
  switch i64 %i.q, label %.preheader.i [
    i64 0, label %.loopexit.i
    i64 -1, label %get_ready_to_signal_threads_tids.exit.thread21
  ]

.preheader.i:                                     ; preds = %bb.c
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %sub_0.i, label %._crit_edge.i

get_ready_to_signal_threads_tids.exit.thread21:   ; preds = %bb.c
  %i.s = call i32 @close(i32 noundef %i.k) #24    ; 0 uses
  call void @serverLogRawFromHandler(i32 noundef 3, ptr noundef nonnull @.str.355) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.sink.split

sub_0.i:                                          ; preds = %.preheader.i, %.backedge.i
  %.03457.i = phi i64 [ %i.x, %.backedge.i ], [ 0, %.preheader.i ] ; 2 uses
  %.13656.i = phi i64 [ %.374.i, %.backedge.i ], [ %.035.i, %.preheader.i ] ; 6 uses
  %.13855.i = phi i32 [ %.44172.i, %.backedge.i ], [ %.037.i, %.preheader.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %.03457.i ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i16, ptr %i.u, align 8, !tbaa !199
  %i.w = zext i16 %i.v to i64
  %i.x = add nuw nsw i64 %.03457.i, %i.w          ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 19 ; 7 uses
  %i.z = load i8, ptr %i.y, align 1
  %.not.i = icmp eq i8 %i.z, 46
  br i1 %.not.i, label %.tail.i, label %.tail51.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.ab = load i8, ptr %i.aa, align 4
  switch i8 %i.ab, label %.tail51.thread.i [
    i8 0, label %.backedge.i
    i8 46, label %.tail51.i
  ]

.tail51.i:                                        ; preds = %.tail.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 21
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %.backedge.i, label %.tail51.thread.i, !llvm.loop !201

.tail51.thread.i:                                 ; preds = %.tail.i, %.tail51.i, %sub_0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #25
  %i.ag = call i32 @string2l(ptr noundef nonnull %i.y, i64 noundef %i.af, ptr noundef nonnull %i.f) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf_async_signal_safe(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef nonnull @.str.358, ptr noundef nonnull %i.d, ptr noundef nonnull %i.y) #24 ; 0 uses
  %i.ai = call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.a, i32 noundef 0) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.d, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.tail51.thread.i
  %i.ak = call ptr @fgets_async_signal_safe(ptr noundef nonnull %i.b, i32 noundef 4096, i32 noundef %i.ai) #24
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %.preheader.i.i
  %i.al = call i32 @close(i32 noundef %i.ai) #24  ; 0 uses
  br label %bb.j

bb.d:                                             ; preds = %.tail51.thread.i
  call void (i32, ptr, ...) @serverLogFromHandler(i32 noundef 3, ptr noundef nonnull @.str.359, ptr noundef nonnull %i.y, ptr noundef nonnull %i.a) #24
  br label %is_thread_ready_to_signal.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.i
  %.039.i.i = phi i64 [ %.2.i.i, %bb.i ], [ 2, %.preheader.i.i ] ; 2 uses
  %lhsv.i.i = load i64, ptr %i.b, align 16
  switch i64 %lhsv.i.i, label %bb.i [
    i64 664965284882770259, label %bb.e
    i64 664962007705282899, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.am = call i32 @string2ul_base16_async_signal_safe(ptr noundef nonnull %i.o, i64 noundef 4096, ptr noundef nonnull %i.c) #24
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @serverLogRawFromHandler(i32 noundef 3, ptr noundef nonnull @.str.362) #24
  br label %.thread34.i.i

bb.g:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !19
  %i.ap = and i64 %i.ao, 2048
  %.not30.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not30.i.i, label %bb.h, label %.thread34.i.i

.thread34.i.i:                                    ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.aq = call i32 @close(i32 noundef %i.ai) #24  ; 0 uses
  br label %is_thread_ready_to_signal.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.ar = add nsw i64 %.039.i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.2.i.i = phi i64 [ %.039.i.i, %.lr.ph.i.i ], [ %i.ar, %bb.h ] ; 2 uses
  %i.as = call ptr @fgets_async_signal_safe(ptr noundef nonnull %i.b, i32 noundef 4096, i32 noundef %i.ai) #24 ; 2 uses
  %i.at = icmp ne ptr %i.as, null
  %i.au = icmp ne i64 %.2.i.i, 0
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !202

._crit_edge.i.i:                                  ; preds = %bb.i
  %i.aw = icmp eq ptr %i.as, null
  %i.ax = call i32 @close(i32 noundef %i.ai) #24  ; 0 uses
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  call void (i32, ptr, ...) @serverLogFromHandler(i32 noundef 3, ptr noundef nonnull @.str.363, ptr noundef nonnull %i.y, ptr noundef nonnull %i.d, ptr noundef nonnull %i.y) #24
  br label %is_thread_ready_to_signal.exit.thread.i

is_thread_ready_to_signal.exit.thread.i:          ; preds = %bb.j, %.thread34.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.thread77.i

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !19  ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.p
  %i.ba = trunc i64 %.13656.i to i32
  %spec.select.i = select i1 %i.az, i32 %i.ba, i32 %.13855.i ; 2 uses
  %i.bb = trunc i64 %i.ay to i32
  %i.bc = add i64 %.13656.i, 1                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.13656.i
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !9
  %i.be = icmp eq i64 %i.bc, 50
  br i1 %i.be, label %._crit_edge.thread.i, label %.thread77.i

.thread77.i:                                      ; preds = %bb.k, %is_thread_ready_to_signal.exit.thread.i
  %.340.ph.i = phi i32 [ %spec.select.i, %bb.k ], [ %.13855.i, %is_thread_ready_to_signal.exit.thread.i ]
  %.2.ph.i = phi i64 [ %i.bc, %bb.k ], [ %.13656.i, %is_thread_ready_to_signal.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.backedge.i

._crit_edge.thread.i:                             ; preds = %bb.k
  call void @serverLogRawFromHandler(i32 noundef 3, ptr noundef nonnull @.str.357) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.loopexit.i

.backedge.i:                                      ; preds = %.tail.i, %.thread77.i, %.tail51.i
  %.374.i = phi i64 [ %.2.ph.i, %.thread77.i ], [ %.13656.i, %.tail51.i ], [ %.13656.i, %.tail.i ] ; 2 uses
  %.44172.i = phi i32 [ %.340.ph.i, %.thread77.i ], [ %.13855.i, %.tail51.i ], [ %.13855.i, %.tail.i ] ; 2 uses
  %i.bf = icmp slt i64 %i.x, %i.q
  br i1 %i.bf, label %sub_0.i, label %._crit_edge.i, !llvm.loop !201

._crit_edge.i:                                    ; preds = %.backedge.i, %.preheader.i
  %.542.i = phi i32 [ %.037.i, %.preheader.i ], [ %.44172.i, %.backedge.i ] ; 2 uses
  %.4.i = phi i64 [ %.035.i, %.preheader.i ], [ %.374.i, %.backedge.i ] ; 2 uses
  %i.bg = icmp eq i64 %.4.i, 50
  br i1 %i.bg, label %.loopexit.i, label %bb.c, !llvm.loop !203

.loopexit.i:                                      ; preds = %._crit_edge.i, %bb.c, %._crit_edge.thread.i
  %.6.i = phi i32 [ %spec.select.i, %._crit_edge.thread.i ], [ %.542.i, %._crit_edge.i ], [ %.037.i, %bb.c ] ; 2 uses
  %.5.i = phi i64 [ 50, %._crit_edge.thread.i ], [ 50, %._crit_edge.i ], [ %.035.i, %bb.c ] ; 3 uses
  %.not48.i = icmp eq i32 %.6.i, -1
  br i1 %.not48.i, label %get_ready_to_signal_threads_tids.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.bh = getelementptr [4 x i8], ptr %i.g, i64 %.5.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4     ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !9
  store i32 %i.n, ptr %i.bi, align 4, !tbaa !9
  %i.bk = sext i32 %.6.i to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bk
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !9
  br label %get_ready_to_signal_threads_tids.exit

get_ready_to_signal_threads_tids.exit:            ; preds = %.loopexit.i, %bb.l
  %i.bm = call i32 @close(i32 noundef %i.k) #24   ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %.not = icmp eq i64 %.5.i, 0
  br i1 %.not, label %bb.m, label %bb.n

.sink.split:                                      ; preds = %bb.a, %get_ready_to_signal_threads_tids.exit.thread21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %get_ready_to_signal_threads_tids.exit
  call void @serverLogRawFromHandler(i32 noundef 3, ptr noundef nonnull @.str.350) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %get_ready_to_signal_threads_tids.exit
  %.1.i19 = phi i64 [ 0, %bb.m ], [ %.5.i, %get_ready_to_signal_threads_tids.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %i.bn = load i32, ptr @stacktrace_pipe, align 4, !tbaa !9
  %i.bo = call i64 @read(i32 noundef %i.bn, ptr noundef nonnull %i.h, i64 noundef 4096) #24
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %bb.o, label %bb.p, !llvm.loop !204

bb.p:                                             ; preds = %bb.o
  %i.bq = call i32 @ThreadsManager_runOnThreads(ptr noundef nonnull %i.g, i64 noundef %.1.i19, ptr noundef nonnull @collect_stacktrace_data) #24
  %.not16 = icmp eq i32 %i.bq, 0
  br i1 %.not16, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = call i64 (i64, ...) @syscall(i64 noundef 186) #24
  %i.bs = trunc i64 %i.br to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(824) %2, i8 0, i64 824, i1 false)
  %i.bt = load i32, ptr @stacktrace_pipe, align 4, !tbaa !9
  %i.bu = call i64 @read(i32 noundef %i.bt, ptr noundef nonnull %2, i64 noundef 824) #24
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bx = add nsw i32 %1, 5
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %.01524 = phi i64 [ 0, %.lr.ph ], [ %i.cm, %bb.u ]
  %i.ca = load i32, ptr %i.bw, align 4, !tbaa !205
  %i.cb = call i32 (ptr, i64, ptr, ...) @snprintf_async_signal_safe(ptr noundef nonnull %i.h, i64 noundef 4096, ptr noundef nonnull @.str.351, i32 noundef %i.ca, ptr noundef nonnull %2) #24 ; 0 uses
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #25
  %i.cd = call i64 @write(i32 noundef %0, ptr noundef nonnull %i.h, i64 noundef %i.cc) #24 ; 0 uses
  %i.ce = load i32, ptr %i.bw, align 4, !tbaa !205
  %i.cf = icmp eq i32 %i.ce, %i.bs
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = call i64 @write(i32 noundef %0, ptr noundef nonnull @.str.352, i64 noundef 3) #24 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ch = call i64 @write(i32 noundef %0, ptr noundef nonnull @.str.332, i64 noundef 1) #24 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0 = phi i32 [ %i.bx, %bb.s ], [ 3, %bb.t ]    ; 2 uses
  %i.ci = sext i32 %.0 to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.ci
  %i.ck = load i32, ptr %i.bz, align 8, !tbaa !207
  %i.cl = sub nsw i32 %i.ck, %.0
  call void @backtrace_symbols_fd(ptr noundef nonnull %i.cj, i32 noundef %i.cl, i32 noundef %0) #24
  %i.cm = add i64 %.01524, 1                      ; 2 uses
  %i.cn = load i32, ptr @stacktrace_pipe, align 4, !tbaa !9
  %i.co = call i64 @read(i32 noundef %i.cn, ptr noundef nonnull %2, i64 noundef 824) #24
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %bb.r, label %._crit_edge, !llvm.loop !208

._crit_edge:                                      ; preds = %bb.u, %bb.q
  %.015.lcssa = phi i64 [ 0, %bb.q ], [ %i.cm, %bb.u ]
  %i.cq = call i32 (ptr, i64, ptr, ...) @snprintf_async_signal_safe(ptr noundef nonnull %i.h, i64 noundef 4096, ptr noundef nonnull @.str.353, i64 noundef %.015.lcssa, i64 noundef %.1.i19) #24 ; 0 uses
  %i.cr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #25
  %i.cs = call i64 @write(i32 noundef %0, ptr noundef nonnull %i.h, i64 noundef %i.cr) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @genClusterDebugString(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @genClusterInfoString() #24 ; 2 uses
  %i.b = tail call ptr @clusterGenNodesDescription(ptr noundef null, i32 noundef 0, i32 noundef 0) #24 ; 2 uses
  %i.c = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %0, ptr noundef nonnull @.str.306) #24
  %i.d = tail call ptr @sdscatsds(ptr noundef %i.c, ptr noundef %i.a) #24
  %i.e = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.d, ptr noundef nonnull @.str.307) #24
  %i.f = tail call ptr @sdscatsds(ptr noundef %i.e, ptr noundef %i.b) #24
  tail call void @sdsfree(ptr noundef %i.a) #24
  tail call void @sdsfree(ptr noundef %i.b) #24
  ret ptr %i.f
}

declare ptr @genClusterInfoString() local_unnamed_addr #2

declare ptr @clusterGenNodesDescription(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @logServerInfo() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [1 x ptr], align 8                ; 5 uses
  tail call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull @.str.308) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = tail call ptr @createStringObject(ptr noundef nonnull @.str.309, i64 noundef 3) #24
  store ptr %i.d, ptr %i.c, align 8, !tbaa !103
  %i.e = call ptr @genInfoSectionDict(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #24 ; 2 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !9
  %i.g = load i32, ptr %i.b, align 4, !tbaa !9
  %i.h = call ptr @genRedisInfoString(ptr noundef %i.e, i32 noundef %i.f, i32 noundef %i.g) #24 ; 2 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !209
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @genClusterInfoString() #24     ; 2 uses
  %i.k = call ptr @clusterGenNodesDescription(ptr noundef null, i32 noundef 0, i32 noundef 0) #24 ; 2 uses
  %i.l = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.h, ptr noundef nonnull @.str.306) #24
  %i.m = call ptr @sdscatsds(ptr noundef %i.l, ptr noundef %i.j) #24
  %i.n = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.m, ptr noundef nonnull @.str.307) #24
  %i.o = call ptr @sdscatsds(ptr noundef %i.n, ptr noundef %i.k) #24
  call void @sdsfree(ptr noundef %i.j) #24
  call void @sdsfree(ptr noundef %i.k) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.o, %bb.b ], [ %i.h, %bb.a ]  ; 2 uses
  call void @serverLogRaw(i32 noundef 1027, ptr noundef %.0) #24
  call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull @.str.310) #24
  %i.p = call ptr @getAllClientsInfoString(i32 noundef -1) #24 ; 2 uses
  call void @serverLogRaw(i32 noundef 1027, ptr noundef %i.p) #24
  call void @sdsfree(ptr noundef %.0) #24
  call void @sdsfree(ptr noundef %i.p) #24
  call void @releaseInfoSectionDict(ptr noundef %i.e) #24
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !103
  call void @decrRefCount(ptr noundef %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare ptr @genInfoSectionDict(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @genRedisInfoString(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @getAllClientsInfoString(i32 noundef) local_unnamed_addr #2

declare void @releaseInfoSectionDict(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @logConfigDebugInfo() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getConfigDebugInfo() #24  ; 2 uses
  tail call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull @.str.311) #24
  tail call void @serverLogRaw(i32 noundef 1027, ptr noundef %i.a) #24
  tail call void @sdsfree(ptr noundef %i.a) #24
  ret void
}

declare ptr @getConfigDebugInfo() local_unnamed_addr #2

end_hunk_0
