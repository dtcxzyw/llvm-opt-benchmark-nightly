Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/udp?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0_@udp_close:bb.a
udp_leave_multicast_group.exit:                   ; preds = %bb.k, %.thread15.i, %bb.i, %bb.h, %bb.e, %bb.d
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !46
  %.not28 = icmp eq i32 %i.ak, 0
  br i1 %.not28, label %bb.q, label %bb.l

bb.l:                                             ; preds = %udp_leave_multicast_group.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !40
  %i.an = and i32 %i.am, 1
  %.not29 = icmp eq i32 %i.an, 0
  br i1 %.not29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !86
  %i.aq = call i32 @pthread_cancel(i64 noundef %i.ap) #11 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !86
  %i.at = call i32 @pthread_join(i64 noundef %i.as, ptr noundef null) #11 ; 2 uses
  %.not30 = icmp eq i32 %i.at, 0
  br i1 %.not30, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = call ptr @strerror(i32 noundef %i.at) #11
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.36, ptr noundef %i.au) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.aw = call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.av) #11 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.ay = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.ax) #11 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %udp_leave_multicast_group.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !32
  %i.bb = call i32 @close(i32 noundef %i.ba) #11  ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @av_fifo_freep2(ptr noundef nonnull %i.bc) #11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @av_fifo_freep2(ptr noundef nonnull %i.bd) #11
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 66184
  call void @ff_ip_reset_filters(ptr noundef nonnull %i.be) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @udp_get_file_handle(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @udplite_open(ptr noundef initializes((40, 44)) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 8, ptr %i.c, align 8, !tbaa !43
  %i.d = tail call i32 @udp_open(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 %i.d
}

declare ptr @ff_ip_resolve_host(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #7

declare i32 @ff_parse_opts_from_query_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_ip_parse_sources(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_ip_parse_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @udp_port(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [13 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call i32 @getnameinfo(ptr noundef nonnull %0, i32 noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 13, i32 noundef 2) #11 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @gai_strerror(i32 noundef %i.b) #11
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %i.c) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = call i64 @strtol(ptr noundef nonnull captures(none) %i.a, ptr noundef null, i32 noundef 10) #11
  %i.e = trunc i64 %i.d to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @udp_set_multicast_ttl(i32 noundef range(i32 0, -2147483648) %0, i32 noundef %1, i16 %.0.val, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !17
  switch i16 %.0.val, label %bb.f [
    i16 2, label %bb.c
    i16 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.011 = phi i32 [ 41, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %.010 = phi i32 [ 18, %bb.b ], [ 33, %bb.a ]    ; 2 uses
  %i.c = call i32 @setsockopt(i32 noundef %0, i32 noundef %.011, i32 noundef %.010, ptr noundef nonnull %i.a, i32 noundef 4) #11
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.e = load i32, ptr %i.a, align 4, !tbaa !17
  %i.f = trunc i32 %i.e to i8
  store i8 %i.f, ptr %i.b, align 1, !tbaa !35
  call void @ff_log_net_error(ptr noundef %2, i32 noundef 48, ptr noundef nonnull @.str.17) #11
  %i.g = call i32 @setsockopt(i32 noundef %0, i32 noundef %.011, i32 noundef %.010, ptr noundef nonnull %i.b, i32 noundef 1) #11
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @ff_log_net_error(ptr noundef %2, i32 noundef 16, ptr noundef nonnull @.str.17) #11
  %i.i = tail call ptr @__errno_location() #13
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17
  %i.k = sub nsw i32 0, %i.j
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.1.ph = phi i32 [ %i.k, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c, %bb.a
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @udp_set_multicast_sources(ptr noundef %0, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 1, 0) %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.group_source_req, align 8   ; 7 uses
  %9 = alloca %struct.ip_mreq_source, align 4     ; 11 uses
  %i.a = load i16, ptr %2, align 2, !tbaa !42
  %.not = icmp eq i16 %i.a, 2
  %i.b = icmp sgt i32 %6, 0                       ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader60

.preheader60:                                     ; preds = %bb.a
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader60
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = sext i32 %3 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 136
  %.not47 = icmp eq i32 %7, 0                     ; 2 uses
  %i.f = select i1 %.not47, i32 43, i32 46
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  br i1 %i.b, label %.lr.ph66, label %.loopexit

.lr.ph66:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.not45 = icmp eq ptr %4, null
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not46 = icmp eq i32 %7, 0                     ; 2 uses
  %10 = select i1 %.not46, i32 38, i32 39         ; 2 uses
  %wide.trip.count87 = zext nneg i32 %6 to i64    ; 2 uses
  br i1 %.not45, label %.lr.ph66.split.us, label %.lr.ph66.split

.lr.ph66.split.us:                                ; preds = %.lr.ph66, %bb.c
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %bb.c ], [ 0, %.lr.ph66 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv84 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !89
  %.not44.us = icmp eq i16 %i.l, 2
  br i1 %.not44.us, label %bb.b, label %.split.us

bb.b:                                             ; preds = %.lr.ph66.split.us
  %i.m = load i32, ptr %i.g, align 4, !tbaa !56
  store i32 %i.m, ptr %9, align 4, !tbaa !91
  store i32 0, ptr %i.h, align 4, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !56
  store i32 %i.o, ptr %i.j, align 4, !tbaa !93
  %i.p = call i32 @setsockopt(i32 noundef %1, i32 noundef 0, i32 noundef %10, ptr noundef nonnull %9, i32 noundef 12) #11
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.split68.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %.loopexit, label %.lr.ph66.split.us, !llvm.loop !87

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.r = load i16, ptr %2, align 2, !tbaa !42
  %i.s = icmp eq i16 %i.r, 2
  %i.t = select i1 %i.s, i32 0, i32 41
  store i32 0, ptr %8, align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr nonnull align 2 %2, i64 %i.d, i1 false)
  %i.u = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.u, i64 128, i1 false)
  %i.v = call i32 @setsockopt(i32 noundef %1, i32 noundef %i.t, i32 noundef %i.f, ptr noundef nonnull %8, i32 noundef 264) #11
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.str.19..str.18 = select i1 %.not47, ptr @.str.19, ptr @.str.18
  call void @ff_log_net_error(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %.str.19..str.18) #11
  %i.x = tail call ptr @__errno_location() #13
  %i.y = load i32, ptr %i.x, align 4, !tbaa !17
  %i.z = sub nsw i32 0, %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !88

.lr.ph66.split:                                   ; preds = %.lr.ph66, %bb.h
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %bb.h ], [ 0, %.lr.ph66 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv79 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !89
  %.not44 = icmp eq i16 %i.ab, 2
  br i1 %.not44, label %bb.g, label %.split.us

.split.us:                                        ; preds = %.lr.ph66.split, %.lr.ph66.split.us
  %.us-phi.in = phi i64 [ %indvars.iv84, %.lr.ph66.split.us ], [ %indvars.iv79, %.lr.ph66.split ]
  %.us-phi = trunc i64 %.us-phi.in to i32
  %i.ac = add nuw nsw i32 %.us-phi, 1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %i.ac) #11
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph66.split
  %i.ad = load i32, ptr %i.g, align 4, !tbaa !56
  store i32 %i.ad, ptr %9, align 4, !tbaa !91
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !17
  store i32 %i.ae, ptr %i.h, align 4, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !56
  store i32 %i.ag, ptr %i.j, align 4, !tbaa !93
  %i.ah = call i32 @setsockopt(i32 noundef %1, i32 noundef 0, i32 noundef %10, ptr noundef nonnull %9, i32 noundef 12) #11
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.split68.us, label %bb.h

.split68.us:                                      ; preds = %bb.g, %bb.b
  %.str.22..str.21 = select i1 %.not46, ptr @.str.22, ptr @.str.21
  call void @ff_log_net_error(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %.str.22..str.21) #11
  %i.aj = tail call ptr @__errno_location() #13
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !17
  %i.al = sub nsw i32 0, %i.ak
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count87
  br i1 %exitcond83.not, label %.loopexit, label %.lr.ph66.split, !llvm.loop !87

bb.i:                                             ; preds = %.split.us, %.split68.us
  %.4.ph = phi i32 [ %i.al, %.split68.us ], [ -22, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.h, %bb.c, %.preheader60, %.preheader, %bb.i, %bb.e
  %.6 = phi i32 [ 0, %.preheader ], [ %i.z, %bb.e ], [ %.4.ph, %bb.i ], [ 0, %.preheader60 ], [ 0, %bb.h ], [ 0, %bb.c ], [ 0, %bb.f ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @udp_join_multicast_group(i32 noundef range(i32 0, -2147483648) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ip_mreq, align 4            ; 6 uses
  %5 = alloca %struct.ipv6_mreq, align 4          ; 6 uses
  %i.a = load i16, ptr %1, align 2, !tbaa !42     ; 2 uses
  %i.b = icmp eq i16 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !56
  store i32 %i.d, ptr %4, align 4, !tbaa !58
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sink, ptr %i.g, align 4, !tbaa !17
  %i.h = call i32 @setsockopt(i32 noundef %0, i32 noundef 0, i32 noundef 35, ptr noundef nonnull %4, i32 noundef 8) #11
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.pr = load i16, ptr %1, align 4, !tbaa !42
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @ff_log_net_error(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.23) #11
  %i.j = tail call ptr @__errno_location() #13
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = sub nsw i32 0, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.i

bb.f:                                             ; preds = %.thread, %bb.a
  %i.m = phi i16 [ %.pr, %.thread ], [ %i.a, %bb.a ]
  %i.n = icmp eq i16 %i.m, 10
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.p, align 4, !tbaa !61
  %i.q = call i32 @setsockopt(i32 noundef %0, i32 noundef 41, i32 noundef 20, ptr noundef nonnull %5, i32 noundef 20) #11
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %.thread16

.thread16:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @ff_log_net_error(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.24) #11
  %i.s = tail call ptr @__errno_location() #13
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = sub nsw i32 0, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %.thread16, %bb.h, %bb.e
  %.3 = phi i32 [ %i.l, %bb.e ], [ %i.u, %bb.h ], [ 0, %.thread16 ], [ 0, %bb.f ]
  ret i32 %.3
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @ff_socket_nonblock(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_fifo_alloc2(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @circular_buffer_task_tx(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 13 uses
  %i.d = tail call i64 @av_gettime_relative() #11
  %i.e = tail call i64 @av_gettime_relative() #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45   ; 3 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98
  %i.j = mul nsw i64 %i.i, 1000000
  %i.k = sdiv i64 %i.j, %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !39
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.n, 8000000
  %i.p = sdiv i64 %i.o, %i.g
  %i.q = add nsw i64 %i.p, 1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.r = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.s = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.t = tail call i32 (i32, ...) @prctl(i32 noundef 15, ptr noundef nonnull @.str.25) #11 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 7 uses
  %i.v = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.u) #11 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !32
  %i.y = tail call i32 @ff_socket_nonblock(i32 noundef %i.x, i32 noundef 0) #11
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %.preheader

.preheader:                                       ; preds = %.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 340 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  br label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.26) #11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store i32 -5, ptr %i.ah, align 8, !tbaa !48
  br label %bb.w

bb.d:                                             ; preds = %.preheader, %._crit_edge134
  %.090 = phi i64 [ %.191, %._crit_edge134 ], [ %i.d, %.preheader ] ; 4 uses
  %.085 = phi i64 [ %.388, %._crit_edge134 ], [ %i.e, %.preheader ] ; 3 uses
  %.081 = phi i64 [ %.384, %._crit_edge134 ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.aj = call i64 @av_fifo_can_read(ptr noundef %i.ai) #11
  %.078128 = trunc i64 %i.aj to i32
  %i.ak = icmp slt i32 %.078128, 4
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.al = load i32, ptr %i.ab, align 8, !tbaa !53
  %.not112 = icmp eq i32 %i.al, 0
  br i1 %.not112, label %bb.e, label %.thread123

.thread123:                                       ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.w

bb.e:                                             ; preds = %.lr.ph
  %i.am = call i32 @pthread_cond_wait(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.u) #11 ; 0 uses
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ao = call i64 @av_fifo_can_read(ptr noundef %i.an) #11
  %.078 = trunc i64 %i.ao to i32
  %i.ap = icmp slt i32 %.078, 4
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %bb.e, %bb.d
end_hunk_0
