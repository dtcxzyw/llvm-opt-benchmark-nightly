Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/network?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
begin_hunk_0_@ff_poll_interrupt:bb.a

.critedge.outer.preheader:                        ; preds = %bb.a
  %i.c = udiv i32 %2, 100
  br label %.critedge.outer

.critedge.outer:                                  ; preds = %.critedge.outer.preheader, %bb.g
  %.011.ph = phi i32 [ %i.p, %bb.g ], [ %i.c, %.critedge.outer.preheader ] ; 2 uses
  %i.d = tail call i32 @ff_check_interrupt(ptr noundef %3) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %.loopexit

.lr.ph:                                           ; preds = %.critedge.us.preheader, %.critedge.us
  %i.e = tail call i32 @poll(ptr noundef nonnull %0, i64 noundef %1, i32 noundef 100) #11 ; 3 uses
  %.not15.us = icmp eq i32 %i.e, 0
  br i1 %.not15.us, label %.critedge.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14   ; 2 uses
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %.critedge.us, label %.thread.loopexit.split.loop.exit

.critedge.us:                                     ; preds = %bb.c, %.lr.ph
  %i.j = tail call i32 @ff_check_interrupt(ptr noundef %3) #11
  %.not.us = icmp eq i32 %i.j, 0
  br i1 %.not.us, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %.critedge.outer
  %i.k = tail call i32 @poll(ptr noundef nonnull %0, i64 noundef %1, i32 noundef 100) #11 ; 3 uses
  %.not15 = icmp eq i32 %i.k, 0
  br i1 %.not15, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__errno_location() #12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14   ; 2 uses
  %i.o = icmp eq i32 %i.n, 4
  br i1 %i.o, label %bb.g, label %.thread.loopexit.split.loop.exit

bb.g:                                             ; preds = %bb.d, %bb.f
  %.1 = phi i32 [ -4, %bb.f ], [ 0, %bb.d ]
  %i.p = add nsw i32 %.011.ph, -1
  %i.q = icmp sgt i32 %.011.ph, 0
  br i1 %i.q, label %.critedge.outer, label %.thread, !llvm.loop !30

.thread.loopexit.split.loop.exit:                 ; preds = %bb.f, %bb.c
  %.us-phi21 = phi i32 [ %i.h, %bb.c ], [ %i.n, %bb.f ]
  %i.r = sub nsw i32 0, %.us-phi21
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %bb.b, %.thread.loopexit.split.loop.exit
  %.2 = phi i32 [ %i.e, %bb.b ], [ %i.r, %.thread.loopexit.split.loop.exit ], [ %.1, %bb.g ], [ %i.k, %bb.e ] ; 2 uses
  %.not16 = icmp eq i32 %.2, 0
  %..2 = select i1 %.not16, i32 -110, i32 %.2
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.outer, %.critedge.us, %.critedge.us.preheader, %.thread
  %.012 = phi i32 [ %..2, %.thread ], [ -1414092869, %.critedge.us.preheader ], [ -1414092869, %.critedge.us ], [ -1414092869, %.critedge.outer ]
  ret i32 %.012
}

declare i32 @accept(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_socket_nonblock(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @ff_listen_bind(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.pollfd, align 4             ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 1, ptr %i.a, align 4, !tbaa !14
  %i.b = call i32 @setsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 4) #11
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %4, i32 noundef 24, ptr noundef nonnull @.str.1) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = call i32 @bind(i32 noundef %0, ptr noundef %1, i32 noundef %2) #11
  %.not10.i = icmp eq i32 %i.c, 0
  br i1 %.not10.i, label %bb.d, label %ff_listen.exit

bb.d:                                             ; preds = %bb.c
  %i.d = call i32 @listen(i32 noundef %0, i32 noundef 1) #11
  %.not11.i = icmp eq i32 %i.d, 0
  br i1 %.not11.i, label %ff_listen.exit.thread, label %ff_listen.exit

ff_listen.exit.thread:                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.e

ff_listen.exit:                                   ; preds = %bb.c, %bb.d
  %i.e = tail call ptr @__errno_location() #12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14   ; 2 uses
  %i.g = sub nsw i32 0, %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.j, label %bb.e

bb.e:                                             ; preds = %ff_listen.exit.thread, %ff_listen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i32 %0, ptr %5, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 1, ptr %i.i, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 0, ptr %i.j, align 2, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.l = call fastcc i32 @ff_poll_interrupt(ptr noundef %5, i64 noundef 1, i32 noundef %3, ptr noundef nonnull %i.k) ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %ff_accept.exit.thread17, label %bb.f

ff_accept.exit.thread17:                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @accept(i32 noundef %0, ptr noundef null, ptr noundef null) #11 ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %ff_accept.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @ff_socket_nonblock(i32 noundef %i.n, i32 noundef 1) #11
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %ff_accept.exit.thread

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %4, i32 noundef 48, ptr noundef nonnull @.str.2) #11
  br label %ff_accept.exit.thread

ff_accept.exit.thread:                            ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.i

ff_accept.exit:                                   ; preds = %bb.f
  %i.r = tail call ptr @__errno_location() #12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14   ; 2 uses
  %i.t = sub nsw i32 0, %i.s                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.u = icmp sgt i32 %i.s, 0
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %ff_accept.exit.thread, %ff_accept.exit
  %.0.i1316 = phi i32 [ %i.n, %ff_accept.exit.thread ], [ %i.t, %ff_accept.exit ]
  %i.v = call i32 @close(i32 noundef %0) #11      ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %ff_accept.exit.thread17, %ff_accept.exit, %ff_listen.exit, %bb.i
  %.0 = phi i32 [ %.0.i1316, %bb.i ], [ %i.g, %ff_listen.exit ], [ %i.t, %ff_accept.exit ], [ %i.l, %ff_accept.exit.thread17 ]
  ret i32 %.0
}

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @ff_listen_connect(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.pollfd, align 4             ; 6 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 3 uses
  %i.d = alloca [64 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i32 %0, ptr %6, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 4, ptr %i.e, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 0, ptr %i.f, align 2, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.g = tail call i32 @ff_socket_nonblock(i32 noundef %0, i32 noundef 1) #11
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %4, i32 noundef 48, ptr noundef nonnull @.str.2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.j = tail call i32 @connect(i32 noundef %0, ptr noundef %1, i32 noundef %2) #11
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__errno_location() #12    ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  %i.m = sub nsw i32 0, %i.l                      ; 2 uses
  switch i32 %i.m, label %.loopexit22 [
    i32 -4, label %bb.f
    i32 -115, label %bb.g
    i32 -11, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @ff_check_interrupt(ptr noundef nonnull %i.i) #11
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %bb.d, label %.loopexit, !llvm.loop !31

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.o = call fastcc i32 @ff_poll_interrupt(ptr noundef %6, i64 noundef 1, i32 noundef %3, ptr noundef nonnull %i.i) ; 3 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !14
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 4, ptr %i.b, align 4, !tbaa !14
  %i.q = call i32 @getsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %.not18 = icmp eq i32 %i.q, 0
  br i1 %.not18, label %thread-pre-split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr %i.k, align 4, !tbaa !14   ; 2 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !14
  br label %bb.j

thread-pre-split:                                 ; preds = %bb.h
  %.pr = load i32, ptr %i.a, align 4, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split, %bb.i
  %i.s = phi i32 [ %.pr, %thread-pre-split ], [ %i.r, %bb.i ] ; 2 uses
  %.not19 = icmp eq i32 %i.s, 0
  br i1 %.not19, label %.loopexit22.a, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = sub nsw i32 0, %i.s                      ; 3 uses
  store i32 %i.t, ptr %i.a, align 4, !tbaa !14
  %.not20 = icmp eq i32 %5, 0
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  br i1 %.not20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.w = call i32 @av_strerror(i32 noundef %i.t, ptr noundef nonnull %i.c, i64 noundef 64) #11 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %4, i32 noundef 24, ptr noundef nonnull @.str.3, ptr noundef %i.v, ptr noundef nonnull %i.c) #11
  br label %.loopexit22.a

bb.m:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %i.x = call i32 @av_strerror(i32 noundef %i.t, ptr noundef nonnull %i.d, i64 noundef 64) #11 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull @.str.4, ptr noundef %i.v, ptr noundef nonnull %i.d) #11
  br label %.loopexit22.a

.loopexit22:                                      ; preds = %bb.e
  store i32 %i.m, ptr %i.a, align 4
  br label %.loopexit22.a

.loopexit22.a:                                    ; preds = %.loopexit22, %bb.j, %bb.m, %bb.l
  %i.y = load i32, ptr %i.a, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.f, %bb.g, %.loopexit22.a
  %.0 = phi i32 [ %i.y, %.loopexit22.a ], [ %i.o, %bb.g ], [ 0, %bb.d ], [ -1414092869, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i32 %.0
}

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define i32 @ff_connect_parallel(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 6 uses
  %i.b = alloca [20 x i8], align 16               ; 6 uses
  %i.c = alloca [100 x i8], align 16              ; 4 uses
  %i.d = alloca [20 x i8], align 16               ; 4 uses
  %7 = alloca [3 x %struct.ConnectionAttempt], align 16 ; 10 uses
  %8 = alloca [3 x %struct.pollfd], align 16      ; 6 uses
  %i.e = alloca i32, align 4                      ; 18 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [100 x i8], align 16              ; 8 uses
  %i.h = alloca [20 x i8], align 16               ; 8 uses
  %i.i = alloca [64 x i8], align 1                ; 3 uses
  %i.j = alloca [64 x i8], align 1                ; 3 uses
  %i.k = alloca [64 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.l = tail call i64 @av_gettime_relative() #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i32 -5, ptr %i.e, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 3) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 48, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5) #11
  %.not7.i = icmp eq ptr %0, null                 ; 2 uses
  br i1 %.not7.i, label %print_address_list.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi ptr [ %i.s, %.lr.ph.i ], [ %0, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !45
  %i.q = call i32 @getnameinfo(ptr noundef %i.n, i32 noundef %i.p, ptr noundef nonnull %i.c, i32 noundef 100, ptr noundef nonnull %i.d, i32 noundef 20, i32 noundef 3) #11 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 48, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %print_address_list.exit, label %.lr.ph.i, !llvm.loop !32

print_address_list.exit:                          ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 2 uses
  %.not20.i = icmp eq ptr %i.u, null
  br i1 %.not20.i, label %interleave_addrinfo.exit.thread, label %.lr.ph.i95

interleave_addrinfo.exit.thread:                  ; preds = %print_address_list.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 48, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.6) #11
  br label %.lr.ph.i98.preheader

.lr.ph.i95:                                       ; preds = %print_address_list.exit, %bb.e
  %i.v = phi ptr [ %i.aj, %bb.e ], [ %i.u, %print_address_list.exit ] ; 6 uses
  %.022.i = phi ptr [ %.1.i, %bb.e ], [ %i.t, %print_address_list.exit ] ; 2 uses
  %.01721.i = phi ptr [ %.118.i, %bb.e ], [ %0, %print_address_list.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %.01721.i, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !48
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i95
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  br label %bb.e, !llvm.loop !33

bb.c:                                             ; preds = %.lr.ph.i95
  %i.ac = getelementptr inbounds nuw i8, ptr %.01721.i, i64 40 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46
  %i.ae = icmp eq ptr %i.v, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 4 uses
  br i1 %i.ae, label %bb.e, label %bb.d, !llvm.loop !33

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46
  store ptr %i.ag, ptr %.022.i, align 8, !tbaa !47
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !46
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !46
  store ptr %i.v, ptr %i.ac, align 8, !tbaa !46
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.118.i = phi ptr [ %.01721.i, %bb.b ], [ %i.ai, %bb.d ], [ %i.v, %bb.c ]
  %.1.i = phi ptr [ %i.ab, %bb.b ], [ %.022.i, %bb.d ], [ %i.af, %bb.c ] ; 2 uses
  %i.aj = load ptr, ptr %.1.i, align 8, !tbaa !47 ; 2 uses
  %.not.i96 = icmp eq ptr %i.aj, null
  br i1 %.not.i96, label %interleave_addrinfo.exit, label %.lr.ph.i95

interleave_addrinfo.exit:                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 48, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.6) #11
  br i1 %.not7.i, label %print_address_list.exit101.thread, label %.lr.ph.i98.preheader

.lr.ph.i98.preheader:                             ; preds = %interleave_addrinfo.exit.thread, %interleave_addrinfo.exit
  br label %.lr.ph.i98

print_address_list.exit101.thread:                ; preds = %interleave_addrinfo.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %._crit_edge164

.lr.ph.i98:                                       ; preds = %.lr.ph.i98.preheader, %.lr.ph.i98
  %.08.i99 = phi ptr [ %i.aq, %.lr.ph.i98 ], [ %0, %.lr.ph.i98.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i99, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i99, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !45
  %i.ao = call i32 @getnameinfo(ptr noundef %i.al, i32 noundef %i.an, ptr noundef nonnull %i.a, i32 noundef 100, ptr noundef nonnull %i.b, i32 noundef 20, i32 noundef 3) #11 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 48, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i99, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 2 uses
  %.not.i100 = icmp eq ptr %i.aq, null
  br i1 %.not.i100, label %.lr.ph.lr.ph, label %.lr.ph.i98, !llvm.loop !32

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ar = mul nsw i32 %1, 1000
  %i.as = sext i32 %i.ar to i64
  %.not.i102 = icmp eq ptr %5, null
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.ad
  %i.av = icmp sgt i32 %.384, 0                   ; 2 uses
  %i.aw = select i1 %i.av, i1 true, i1 %i.dm
  br i1 %i.aw, label %.lr.ph, label %._crit_edge164

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.loopexit
  %i.ax = phi i1 [ true, %.lr.ph.lr.ph ], [ %i.dm, %.loopexit ]
  %i.ay = phi i1 [ false, %.lr.ph.lr.ph ], [ %i.av, %.loopexit ]
  %.077.ph155 = phi i64 [ %i.l, %.lr.ph.lr.ph ], [ %.1, %.loopexit ] ; 2 uses
  %.081.ph153 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.384, %.loopexit ] ; 9 uses
  %.0108.ph152 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %.1109, %.loopexit ] ; 2 uses
  %i.az = icmp slt i32 %.081.ph153, %spec.store.select
  %i.ba = sext i32 %.081.ph153 to i64             ; 2 uses
  %i.bb = getelementptr inbounds [24 x i8], ptr %7, i64 %i.ba ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  br i1 %i.az, label %.lr.ph.split, label %.loopexit122.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.s
  %i.be = phi i1 [ %i.cx, %bb.s ], [ %i.ax, %.lr.ph ]
  %.0108146 = phi ptr [ %i.bl, %bb.s ], [ %.0108.ph152, %.lr.ph ] ; 8 uses
  br i1 %i.be, label %bb.f, label %.loopexit122.split

bb.f:                                             ; preds = %.lr.ph.split
  %i.bf = getelementptr inbounds nuw i8, ptr %.0108146, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %.0108146, i64 16 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !45
  %i.bj = call i32 @getnameinfo(ptr noundef %i.bg, i32 noundef %i.bi, ptr noundef nonnull %i.g, i32 noundef 100, ptr noundef nonnull %i.h, i32 noundef 20, i32 noundef 3) #11 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 40, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #11
  %i.bk = getelementptr inbounds nuw i8, ptr %.0108146, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !46 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0108146, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0108146, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !49 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0108146, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !50 ; 2 uses
  %i.bs = or i32 %i.bp, 524288
  %i.bt = call i32 @socket(i32 noundef %i.bn, i32 noundef %i.bs, i32 noundef %i.br) #11 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %bb.g, label %ff_socket.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bv = tail call ptr @__errno_location() #12   ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !14
  %i.bx = icmp eq i32 %i.bw, 22
  br i1 %i.bx, label %bb.h, label %ff_socket.exit.thread.i
end_hunk_0
