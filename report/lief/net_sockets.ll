Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/net_sockets?download=true
inline.NumInlined: 14
inline.NumDeleted: 3
begin_hunk_0_@mbedtls_net_accept:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.sockaddr_storage, align 8   ; 8 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %6 = alloca %struct.sockaddr_storage, align 8   ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 128, ptr %i.b, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 4, ptr %i.c, align 4, !tbaa !22
  %i.f = load i32, ptr %0, align 4, !tbaa !9
  %i.g = call i32 @getsockopt(i32 noundef %i.f, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.i = add i32 %i.h, -3
  %or.cond = icmp ult i32 %i.i, -2
  br i1 %or.cond, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %0, align 4, !tbaa !9
  %i.l = call i32 @accept(i32 noundef %i.k, ptr noundef nonnull %5, ptr noundef nonnull %i.b) #8 ; 2 uses
  store i32 %i.l, ptr %1, align 4, !tbaa !9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i8 0, ptr %i.d, align 1
  %i.m = load i32, ptr %0, align 4, !tbaa !9
  %i.n = call i64 @recvfrom(i32 noundef %i.m, ptr noundef nonnull %i.d, i64 noundef 1, i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %i.b) #8
  %i.o = trunc i64 %i.n to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.033 = phi i32 [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  %i.p = icmp slt i32 %.033, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val = load i32, ptr %0, align 4, !tbaa !9
  %i.q = tail call ptr @__errno_location() #9     ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22   ; 2 uses
  %i.s = call i32 (i32, i32, ...) @fcntl(i32 noundef %.val, i32 noundef 3) #8
  %i.t = and i32 %i.s, 2048
  %.not.not.i = icmp eq i32 %i.t, 0
  %cond.i = icmp ne i32 %i.r, 11
  %narrow.i.not = select i1 %.not.not.i, i1 true, i1 %cond.i
  store i32 %i.r, ptr %i.q, align 4, !tbaa !22
  %. = select i1 %narrow.i.not, i32 -74, i32 -26880
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.a, align 4, !tbaa !22
  %.not39 = icmp eq i32 %i.u, 1
  br i1 %.not39, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 1, ptr %i.e, align 4, !tbaa !22
  %i.v = load i32, ptr %0, align 4, !tbaa !9
  %i.w = load i32, ptr %i.b, align 4, !tbaa !22
  %i.x = call i32 @connect(i32 noundef %i.v, ptr noundef nonnull %5, i32 noundef %i.w) #8
  %.not40 = icmp eq i32 %i.x, 0
  br i1 %.not40, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr %0, align 4, !tbaa !9
  store i32 %i.y, ptr %1, align 4, !tbaa !9
  store i32 -1, ptr %0, align 4, !tbaa !9
  store i32 128, ptr %i.b, align 4, !tbaa !22
  %i.z = load i32, ptr %1, align 4, !tbaa !9
  %i.aa = call i32 @getsockname(i32 noundef %i.z, ptr noundef nonnull %6, ptr noundef nonnull %i.b) #8
  %.not41 = icmp eq i32 %i.aa, 0
  br i1 %.not41, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ab = load i16, ptr %6, align 8, !tbaa !33
  %i.ac = zext i16 %i.ab to i32
  %i.ad = call i32 @socket(i32 noundef %i.ac, i32 noundef 2, i32 noundef 17) #8 ; 3 uses
  store i32 %i.ad, ptr %0, align 4, !tbaa !9
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call i32 @setsockopt(i32 noundef %i.ad, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.e, i32 noundef 4) #8
  %.not42 = icmp eq i32 %i.af, 0
  br i1 %.not42, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.l, %bb.k
  %.034.ph = phi i32 [ -66, %bb.k ], [ -66, %bb.l ], [ -74, %bb.i ], [ -66, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %0, align 4, !tbaa !9
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !22
  %i.ai = call i32 @bind(i32 noundef %i.ag, ptr noundef nonnull %6, i32 noundef %i.ah) #8
  %.not43 = icmp eq i32 %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br i1 %.not43, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m, %bb.h
  %.not44 = icmp eq ptr %2, null
  br i1 %.not44, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load i16, ptr %5, align 8, !tbaa !33
  %i.ak = icmp eq i16 %i.aj, 2
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 4, ptr %4, align 8, !tbaa !24
  %i.al = icmp ugt i64 %3, 3
  br i1 %i.al, label %.thread50, label %bb.r

.thread50:                                        ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.an = load i32, ptr %i.am, align 4
  store i32 %i.an, ptr %2, align 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store i64 16, ptr %4, align 8, !tbaa !24
  %i.ao = icmp ugt i64 %3, 15
  br i1 %i.ao, label %.thread52, label %bb.r

.thread52:                                        ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %.thread50, %.thread52, %bb.q, %bb.p, %.thread, %bb.g, %bb.a, %bb.b, %bb.m
  %.4 = phi i32 [ -70, %bb.m ], [ %., %bb.g ], [ -74, %bb.a ], [ -138, %bb.q ], [ %.034.ph, %.thread ], [ -138, %bb.p ], [ -74, %bb.b ], [ 0, %.thread52 ], [ 0, %.thread50 ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.4
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @accept(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @recvfrom(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_net_set_block(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.b = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.a, i32 noundef 3) #8
  %i.c = and i32 %i.b, -2049
  %i.d = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.a, i32 noundef 4, i32 noundef %i.c) #8
  ret i32 %i.d
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_net_set_nonblock(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.b = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.a, i32 noundef 3) #8
  %i.c = or i32 %i.b, 2048
  %i.d = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.a, i32 noundef 4, i32 noundef %i.c) #8
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -73, 4) i32 @mbedtls_net_poll(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %4 = alloca %struct.fd_set, align 8             ; 6 uses
  %5 = alloca %struct.fd_set, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 9 uses
  %i.b = icmp slt i32 %i.a, 0
  %6 = icmp sgt i32 %i.a, 1023
  %..i = select i1 %6, i32 -71, i32 0
  %.0.i = select i1 %i.b, i32 -69, i32 %..i       ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %.preheader.preheader, label %bb.j

.preheader.preheader:                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !24
  %i.c = and i32 %1, 1
  %.not43 = icmp eq i32 %i.c, 0
  br i1 %.not43, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.d = and i32 %1, -2
  %i.e = srem i32 %i.a, 64
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = sdiv i32 %i.a, 64
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %4, i64 %i.i ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  %i.l = or i64 %i.k, %i.g
  store i64 %i.l, ptr %i.j, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %.preheader.preheader, %bb.b
  %.037 = phi i32 [ %i.d, %bb.b ], [ %1, %.preheader.preheader ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false), !tbaa !24
  %i.m = and i32 %.037, 2
  %.not44 = icmp eq i32 %i.m, 0
  br i1 %.not44, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %.037, -3
  %i.o = srem i32 %i.a, 64
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = sdiv i32 %i.a, 64
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %5, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !24
  %i.v = or i64 %i.u, %i.q
  store i64 %i.v, ptr %i.t, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.138 = phi i32 [ %i.n, %bb.d ], [ %.037, %bb.c ]
  %.not45 = icmp eq i32 %.138, 0
  br i1 %.not45, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.w = udiv i32 %2, 1000
  %i.x = zext nneg i32 %i.w to i64
  store i64 %i.x, ptr %3, align 8, !tbaa !26
  %i.y = urem i32 %2, 1000
  %i.z = mul nuw nsw i32 %i.y, 1000
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !27
  %i.ac = add nsw i32 %i.a, 1
  %i.ad = icmp eq i32 %2, -1
  %. = select i1 %i.ad, ptr null, ptr %3
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.ae = call i32 @select(i32 noundef %i.ac, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef %.) #8 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 4
  br i1 %i.af, label %bb.g, label %bb.h, !llvm.loop !34

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp slt i32 %i.ae, 0
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = sdiv i32 %i.a, 64
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.al = srem i32 %i.a, 64
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = shl nuw i64 1, %i.am
  %i.ao = lshr i64 %i.ak, %i.am
  %i.ap = trunc i64 %i.ao to i32
  %spec.select = and i32 %i.ap, 1                 ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ai
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24
  %i.as = and i64 %i.ar, %i.an
  %.not47 = icmp eq i64 %i.as, 0
  %i.at = or disjoint i32 %spec.select, 2
  %.1 = select i1 %.not47, i32 %spec.select, i32 %i.at
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.e, %bb.a, %bb.i
  %.036 = phi i32 [ %.1, %bb.i ], [ %.0.i, %bb.a ], [ -73, %bb.e ], [ -71, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.036
}

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_net_usleep(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.a = udiv i64 %0, 1000000
  store i64 %i.a, ptr %1, align 8, !tbaa !26
  %i.b = srem i64 %0, 1000000
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !27
  %i.d = call i32 @select(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -26880, -2147483648) i32 @mbedtls_net_recv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @read(i32 noundef %i.a, ptr noundef %1, i64 noundef %2) #8
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.val = load i32, ptr %0, align 4, !tbaa !9
  %i.f = tail call ptr @__errno_location() #9     ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22   ; 3 uses
  %i.h = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %.val, i32 noundef 3) #8
  %i.i = and i32 %i.h, 2048
  %.not.not.i = icmp eq i32 %i.i, 0
  %cond.i = icmp ne i32 %i.g, 11
  %narrow.i.not = select i1 %.not.not.i, i1 true, i1 %cond.i
  store i32 %i.g, ptr %i.f, align 4, !tbaa !22
  br i1 %narrow.i.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  switch i32 %i.g, label %bb.f [
    i32 32, label %bb.g
    i32 104, label %bb.g
    i32 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.d, %bb.c, %bb.a, %bb.f, %bb.e
  %.0 = phi i32 [ -80, %bb.d ], [ -69, %bb.a ], [ -26880, %bb.c ], [ -26880, %bb.e ], [ -76, %bb.f ], [ -80, %bb.d ], [ %i.d, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden range(i32 -26880, -2147483648) i32 @mbedtls_net_recv_timeout(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %5 = alloca %struct.fd_set, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 5 uses
  %i.b = icmp slt i32 %i.a, 0
  %6 = icmp sgt i32 %i.a, 1023
  %..i = select i1 %6, i32 -71, i32 0
  %.0.i = select i1 %i.b, i32 -69, i32 %..i       ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %.preheader.preheader, label %mbedtls_net_recv.exit

.preheader.preheader:                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false), !tbaa !24
  %i.c = srem i32 %i.a, 64
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw i64 1, %i.d
  %i.f = sdiv i32 %i.a, 64
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %5, i64 %i.g ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24
  %i.j = or i64 %i.i, %i.e
  store i64 %i.j, ptr %i.h, align 8, !tbaa !24
  %i.k = udiv i32 %3, 1000
  %i.l = zext nneg i32 %i.k to i64
  store i64 %i.l, ptr %4, align 8, !tbaa !26
  %i.m = urem i32 %3, 1000
  %i.n = mul nuw nsw i32 %i.m, 1000
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !27
  %i.q = add nsw i32 %i.a, 1
  %i.r = icmp eq i32 %3, 0
  %i.s = select i1 %i.r, ptr null, ptr %4
  %i.t = call i32 @select(i32 noundef %i.q, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef %i.s) #8 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %mbedtls_net_recv.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.v = icmp slt i32 %i.t, 0
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = tail call ptr @__errno_location() #9
  %i.x = load i32, ptr %i.w, align 4, !tbaa !22
  %i.y = icmp eq i32 %i.x, 4
  %. = select i1 %i.y, i32 -26880, i32 -76
  br label %mbedtls_net_recv.exit

bb.d:                                             ; preds = %bb.b
  %i.z = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.e, label %mbedtls_net_recv.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = call i64 @read(i32 noundef %i.z, ptr noundef %1, i64 noundef %2) #8
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %mbedtls_net_recv.exit

bb.f:                                             ; preds = %bb.e
  %.val.i = load i32, ptr %0, align 4, !tbaa !9
  %i.ae = tail call ptr @__errno_location() #9    ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22 ; 3 uses
  %i.ag = call i32 (i32, i32, ...) @fcntl(i32 noundef %.val.i, i32 noundef 3) #8
  %i.ah = and i32 %i.ag, 2048
  %.not.not.i.i = icmp eq i32 %i.ah, 0
  %cond.i.i = icmp ne i32 %i.af, 11
  %narrow.i.not.i = select i1 %.not.not.i.i, i1 true, i1 %cond.i.i
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !22
  br i1 %narrow.i.not.i, label %bb.g, label %mbedtls_net_recv.exit

bb.g:                                             ; preds = %bb.f
  switch i32 %i.af, label %bb.i [
    i32 32, label %mbedtls_net_recv.exit
    i32 104, label %mbedtls_net_recv.exit
    i32 4, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %mbedtls_net_recv.exit

bb.i:                                             ; preds = %bb.g
  br label %mbedtls_net_recv.exit

mbedtls_net_recv.exit:                            ; preds = %bb.i, %bb.h, %bb.g, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.preheader.preheader, %bb.a
  %.019 = phi i32 [ -26624, %.preheader.preheader ], [ %.0.i, %bb.a ], [ %., %bb.c ], [ -80, %bb.g ], [ -69, %bb.d ], [ -26880, %bb.f ], [ -26880, %bb.h ], [ -76, %bb.i ], [ -80, %bb.g ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -26752, -2147483648) i32 @mbedtls_net_send(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @write(i32 noundef %i.a, ptr noundef %1, i64 noundef %2) #8
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.val = load i32, ptr %0, align 4, !tbaa !9
  %i.f = tail call ptr @__errno_location() #9     ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22   ; 3 uses
  %i.h = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %.val, i32 noundef 3) #8
  %i.i = and i32 %i.h, 2048
  %.not.not.i = icmp eq i32 %i.i, 0
  %cond.i = icmp ne i32 %i.g, 11
  %narrow.i.not = select i1 %.not.not.i, i1 true, i1 %cond.i
  store i32 %i.g, ptr %i.f, align 4, !tbaa !22
  br i1 %narrow.i.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  switch i32 %i.g, label %bb.f [
    i32 32, label %bb.g
    i32 104, label %bb.g
    i32 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.d, %bb.c, %bb.a, %bb.f, %bb.e
  %.0 = phi i32 [ -80, %bb.d ], [ -69, %bb.a ], [ -26752, %bb.c ], [ -26752, %bb.e ], [ -78, %bb.f ], [ -80, %bb.d ], [ %i.d, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_net_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @shutdown(i32 noundef %i.b, i32 noundef 2) #8 ; 0 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !9
  %i.f = tail call i32 @close(i32 noundef %i.e) #8 ; 0 uses
  store i32 -1, ptr %0, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"mbedtls_net_context", !5, i64 0}
!9 = !{!8, !5, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS8sockaddr", !10, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!"p1 _ZTS8addrinfo", !10, i64 0}
!14 = !{!"addrinfo", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 24, !12, i64 32, !13, i64 40}
!15 = !{!14, !5, i64 8}
!16 = !{!14, !5, i64 12}
!17 = !{!13, !13, i64 0}
!18 = !{!14, !5, i64 4}
!19 = !{!14, !11, i64 24}
!20 = !{!14, !5, i64 16}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!5, !5, i64 0}
!23 = !{!"long", !4, i64 0}
end_hunk_0
