inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@Curl_getaddrinfo_ex:bb.a
.split:                                           ; preds = %._crit_edge
  call void @freeaddrinfo(ptr noundef nonnull %.pre) #8
  br label %.thread

bb.m:                                             ; preds = %._crit_edge.thread126, %.split.thread
  %.not5.i = icmp eq ptr %.06398, null
  br i1 %.not5.i, label %Curl_freeaddrinfo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.06.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.06398, %bb.m ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8  ; 2 uses
  %i.ag = load ptr, ptr @Curl_cfree, align 8, !tbaa !14
  call void %i.ag(ptr noundef nonnull %.06.i) #8, !inline_history !30
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %Curl_freeaddrinfo.exit, label %.lr.ph.i, !llvm.loop !15

.thread:                                          ; preds = %._crit_edge, %.split, %.preheader
  %.063.lcssa117123 = phi ptr [ %.265.ph, %.split ], [ null, %.preheader ], [ %.265.ph, %._crit_edge ] ; 2 uses
  %.not85 = icmp eq ptr %.063.lcssa117123, null
  %spec.select87 = select i1 %.not85, i32 -2, i32 0
  br label %Curl_freeaddrinfo.exit

Curl_freeaddrinfo.exit:                           ; preds = %.lr.ph.i, %bb.m, %.thread
  %.4 = phi ptr [ %.063.lcssa117123, %.thread ], [ null, %bb.m ], [ null, %.lr.ph.i ]
  %.3 = phi i32 [ %spec.select87, %.thread ], [ -10, %bb.m ], [ -10, %.lr.ph.i ]
  store ptr %.4, ptr %3, align 8, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %Curl_freeaddrinfo.exit
  %.0 = phi i32 [ %.3, %Curl_freeaddrinfo.exit ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 44) i32 @Curl_str2addr(ptr noundef %0, i16 noundef zeroext %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.in_addr, align 4            ; 4 uses
  %4 = alloca %struct.in6_addr, align 4           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = call i32 @inet_pton(i32 noundef 2, ptr noundef %0, ptr noundef nonnull %3) #8
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #9 ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !17
  %i.d = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !14
  %i.e = add i64 %i.c, 65
  %i.f = call ptr %i.d(i64 noundef 1, i64 noundef %i.e) #8, !inline_history !31 ; 11 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %ip2addr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %i.c, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.h, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %0, i64 %i.g, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 2, ptr %i.l, align 4, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 16, ptr %i.n, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.p = load i32, ptr %3, align 4
  store i32 %i.p, ptr %i.o, align 4
  store i16 2, ptr %i.h, align 8, !tbaa !34
  %rev.i40.i = call noundef i16 @llvm.bswap.i16(i16 %1)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 50
  store i16 %rev.i40.i, ptr %i.q, align 2, !tbaa !34
  store ptr %i.f, ptr %2, align 8, !tbaa !17
  br label %ip2addr.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.r = call i32 @inet_pton(i32 noundef 10, ptr noundef %0, ptr noundef nonnull %4) #8
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %ip2addr.exit13, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #9 ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !17
  %i.u = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !14
  %i.v = add i64 %i.t, 77
  %i.w = call ptr %i.u(i64 noundef 1, i64 noundef %i.v) #8, !inline_history !31 ; 11 uses
  %.not.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i10, label %ip2addr.exit13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add i64 %i.t, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.y, ptr %i.z, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 76 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %0, i64 %i.x, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 10, ptr %i.ac, align 4, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 1, ptr %i.ad, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 28, ptr %i.ae, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false)
  store i16 10, ptr %i.y, align 8, !tbaa !34
  %rev.i40.i11 = call noundef i16 @llvm.bswap.i16(i16 %1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 50
  store i16 %rev.i40.i11, ptr %i.ag, align 2, !tbaa !34
  store ptr %i.w, ptr %2, align 8, !tbaa !17
  br label %ip2addr.exit13

ip2addr.exit13:                                   ; preds = %bb.f, %bb.e, %bb.d
  %spec.select = phi i32 [ 43, %bb.d ], [ 0, %bb.f ], [ 27, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %ip2addr.exit

ip2addr.exit:                                     ; preds = %bb.c, %bb.b, %ip2addr.exit13
  %.1 = phi i32 [ %spec.select, %ip2addr.exit13 ], [ 0, %bb.c ], [ 27, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.1
}

; Function Attrs: nounwind
declare i32 @inet_pton(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define zeroext i1 @Curl_is_ipv4addr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.in_addr, align 4            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.a = call i32 @inet_pton(i32 noundef 2, ptr noundef %0, ptr noundef nonnull %1) #8
  %i.b = icmp sgt i32 %i.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define zeroext i1 @Curl_is_ipaddr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.in_addr, align 4            ; 3 uses
  %2 = alloca %struct.in6_addr, align 4           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.a = call i32 @inet_pton(i32 noundef 2, ptr noundef %0, ptr noundef nonnull %1) #8
  %i.b = icmp sgt i32 %i.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.c = call i32 @inet_pton(i32 noundef 10, ptr noundef %0, ptr noundef nonnull %2) #8
  %i.d = icmp sgt i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @Curl_looks_like_ipv6(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %3, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp ne ptr %4, null                     ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not149 = icmp eq i64 %1, 0
  br i1 %.not149, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.088131 = phi i64 [ %i.f, %bb.g ], [ 0, %bb.e ] ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.088131
  %i.d = load i8, ptr %i.c, align 1, !tbaa !36
  %.fr150 = freeze i8 %i.d                        ; 3 uses
  %.not = icmp eq i8 %.fr150, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.e = add i8 %.fr150, -48
  %or.cond113 = icmp ult i8 %i.e, 10
  br i1 %or.cond113, label %bb.g, label %switch.early.test

switch.early.test:                                ; preds = %bb.f
  switch i8 %.fr150, label %.critedge [
    i8 102, label %bb.g
    i8 101, label %bb.g
    i8 100, label %bb.g
    i8 99, label %bb.g
    i8 98, label %bb.g
    i8 97, label %bb.g
    i8 70, label %bb.g
    i8 69, label %bb.g
    i8 68, label %bb.g
    i8 67, label %bb.g
    i8 66, label %bb.g
    i8 65, label %bb.g
    i8 58, label %bb.g
    i8 46, label %bb.g
    i8 37, label %bb.h
  ]

bb.g:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.f
  %i.f = add nuw i64 %.088131, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !37

bb.h:                                             ; preds = %switch.early.test
  %i.g = add nuw i64 %.088131, 1                  ; 3 uses
  br i1 %2, label %sub_0, label %bb.i

sub_0:                                            ; preds = %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = sub nsw i32 50, %i.j
  %.not151 = icmp eq i8 %i.i, 50
  br i1 %.not151, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = sub nsw i32 53, %i.n
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1
  %i.p = phi i32 [ %i.k, %sub_0 ], [ %i.o, %sub_1 ]
  %.not110 = icmp eq i32 %i.p, 0
  %i.q = add i64 %.088131, 3
  %spec.select = select i1 %.not110, i64 %i.q, i64 %i.g
  br label %bb.i

bb.i:                                             ; preds = %.tail, %bb.h
  %.190 = phi i64 [ %spec.select, %.tail ], [ %i.g, %bb.h ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.190 ; 4 uses
  %i.s = icmp ult i64 %.190, %1
  br i1 %i.s, label %.lr.ph140.preheader, label %.critedge

.lr.ph140.preheader:                              ; preds = %bb.i
  %i.t = sub nuw i64 %1, %.190                    ; 2 uses
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %bb.l
  %.0139 = phi i64 [ %i.aa, %bb.l ], [ 0, %.lr.ph140.preheader ] ; 3 uses
  %.2138 = phi i64 [ %i.z, %bb.l ], [ %.190, %.lr.ph140.preheader ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.2138
  %i.v = load i8, ptr %i.u, align 1, !tbaa !36    ; 4 uses
  %.not111 = icmp eq i8 %i.v, 0
  br i1 %.not111, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.lr.ph140
  %i.w = and i8 %i.v, -33
  %i.x = add i8 %i.w, -65
  %or.cond125 = icmp ult i8 %i.x, 26
  %i.y = add i8 %i.v, -48
  %or.cond118 = icmp ult i8 %i.y, 10
  %or.cond181 = or i1 %or.cond125, %or.cond118
  br i1 %or.cond181, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i8 %i.v, label %.critedge [
    i8 45, label %bb.l
    i8 46, label %bb.l
    i8 95, label %bb.l
    i8 126, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.j
  %i.z = add nuw i64 %.2138, 1
  %i.aa = add i64 %.0139, 1                       ; 2 uses
  %exitcond156.not = icmp eq i64 %i.aa, %i.t
  br i1 %exitcond156.not, label %.critedge.thread, label %.lr.ph140, !llvm.loop !38

.critedge:                                        ; preds = %.lr.ph, %switch.early.test, %.lr.ph140, %bb.k, %bb.e, %bb.i
  %.088128 = phi i64 [ %.088131, %bb.i ], [ %.088131, %.lr.ph140 ], [ 0, %bb.e ], [ %.088131, %bb.k ], [ %.088131, %switch.early.test ], [ %.088131, %.lr.ph ]
  %.091 = phi ptr [ %i.r, %bb.i ], [ %i.r, %.lr.ph140 ], [ null, %bb.e ], [ %i.r, %bb.k ], [ null, %switch.early.test ], [ null, %.lr.ph ]
  %.3 = phi i64 [ %.190, %bb.i ], [ %.2138, %.lr.ph140 ], [ 0, %bb.e ], [ %.2138, %bb.k ], [ %.088131, %switch.early.test ], [ %.088131, %.lr.ph ]
  %.1 = phi i64 [ 0, %bb.i ], [ %.0139, %.lr.ph140 ], [ 0, %bb.e ], [ %.0139, %bb.k ], [ 0, %switch.early.test ], [ 0, %.lr.ph ]
  %.not112 = icmp eq i64 %.3, %1
  br i1 %.not112, label %.critedge.thread, label %bb.p

.critedge.thread:                                 ; preds = %bb.g, %bb.l, %.critedge
  %.1172 = phi i64 [ %.1, %.critedge ], [ %i.t, %bb.l ], [ 0, %bb.g ] ; 2 uses
  %.091171 = phi ptr [ %.091, %.critedge ], [ %i.r, %bb.l ], [ null, %bb.g ]
  %.088128170 = phi i64 [ %.088128, %.critedge ], [ %.088131, %bb.l ], [ %1, %bb.g ] ; 2 uses
  %i.ab = icmp ne i64 %.088128170, 0
  %or.cond = and i1 %i.a, %i.ab
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge.thread
  store ptr %0, ptr %3, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.088128170, ptr %i.ac, align 8, !tbaa !42
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.thread
  %i.ad = icmp ne i64 %.1172, 0
  %or.cond3 = select i1 %i.b, i1 %i.ad, i1 false
  br i1 %or.cond3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %.091171, ptr %4, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.1172, ptr %i.ae, align 8, !tbaa !42
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %.critedge
  %.not112173 = phi i1 [ true, %bb.n ], [ true, %bb.o ], [ false, %.critedge ]
  ret i1 %.not112173
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define range(i32 0, 101) i32 @Curl_unix2addr(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !17
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9 ; 3 uses
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = icmp ugt i64 %i.b, 108
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !14
  %i.e = tail call ptr %i.d(i64 noundef 1, i64 noundef 158) #8 ; 8 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.f, ptr %i.g, align 8, !tbaa !27
  store i16 1, ptr %i.f, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.h, align 4, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !33
  %i.j = trunc nsw i64 %i.a to i32
  %i.k = add nsw i32 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %i.k, ptr %i.l, align 8, !tbaa !26
  %. = select i1 %1, i64 51, i64 50
  %.27 = select i1 %1, i64 %i.a, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %.
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %0, i64 %.27, i1 false)
  store ptr %i.e, ptr %2, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 100, %bb.a ], [ 0, %bb.c ], [ 27, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !13, i64 40}
!9 = !{!"Curl_addrinfo", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !12, i64 32, !13, i64 40}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS8sockaddr", !11, i64 0}
!13 = !{!"p1 _ZTS13Curl_addrinfo", !11, i64 0}
!14 = !{!11, !11, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!13, !13, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS8addrinfo", !11, i64 0}
!20 = !{!21, !10, i64 32}
!21 = !{!"addrinfo", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 24, !10, i64 32, !19, i64 40}
!22 = !{!21, !5, i64 4}
!23 = !{!21, !12, i64 24}
!24 = !{!21, !5, i64 16}
!25 = !{!5, !5, i64 0}
!26 = !{!9, !5, i64 16}
!27 = !{!9, !12, i64 32}
!28 = !{!9, !10, i64 24}
!29 = distinct !{!29, !16}
!30 = !{ptr @Curl_freeaddrinfo}
!31 = distinct !{null}
!32 = !{!9, !5, i64 4}
!33 = !{!9, !5, i64 8}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !6, i64 0}
!36 = !{!6, !6, i64 0}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = !{!40, !10, i64 0}
!40 = !{!"Curl_str", !10, i64 0, !41, i64 8}
!41 = !{!"long", !6, i64 0}
!42 = !{!40, !41, i64 8}
!43 = !{!44, !35, i64 0}
!44 = !{!"sockaddr_un", !35, i64 0, !6, i64 2}
end_hunk_0
