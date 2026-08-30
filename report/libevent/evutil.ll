Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evutil?download=true
begin_hunk_0_@evutil_socket_connect_:bb.a
  br i1 %i.o, label %bb.f, label %.thread22

bb.f:                                             ; preds = %evutil_make_socket_nonblocking.exit.thread
  %i.p = tail call ptr @__errno_location() #22
  %i.q = load i32, ptr %i.p, align 4
  switch i32 %i.q, label %bb.h [
    i32 115, label %.thread22
    i32 4, label %.thread22
    i32 111, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %.thread22

bb.h:                                             ; preds = %bb.f
  br i1 %i.b, label %.thread22, label %bb.i

bb.i:                                             ; preds = %.thread25, %bb.h
  %i.r = load i32, ptr %0, align 4
  %i.s = tail call i32 @close(i32 noundef %i.r) #21 ; 0 uses
  store i32 -1, ptr %0, align 4
  br label %.thread22

.thread22:                                        ; preds = %bb.f, %bb.f, %bb.g, %bb.b, %bb.h, %bb.i, %evutil_make_socket_nonblocking.exit.thread
  %.1 = phi i32 [ 1, %evutil_make_socket_nonblocking.exit.thread ], [ -1, %bb.b ], [ -1, %bb.i ], [ -1, %bb.h ], [ 0, %bb.f ], [ 0, %bb.f ], [ 2, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @evutil_socket_finished_connecting_(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 4, ptr %i.b, align 4
  %i.c = call i32 @getsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #21
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4              ; 2 uses
  switch i32 %i.e, label %bb.c [
    i32 0, label %bb.d
    i32 115, label %.fold.split
    i32 4, label %.fold.split
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #22
  store i32 %i.e, ptr %i.f, align 4
  br label %bb.d

.fold.split:                                      ; preds = %bb.b, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.fold.split, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ], [ 0, %.fold.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @evutil_v4addr_is_local_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 3 uses
  %i.c = icmp eq i32 %i.a, 0
  %i.d = icmp sgt i32 %i.b, 2130706431
  %or.cond.not8 = or i1 %i.c, %i.d
  %i.e = and i32 %i.b, -65536
  %.not = icmp eq i32 %i.e, -1442971648
  %or.cond5 = or i1 %or.cond.not8, %.not
  %i.f = and i32 %i.b, -268435456
  %i.g = icmp eq i32 %i.f, -536870912
  %narrow = or i1 %or.cond5, %i.g
  %i.h = zext i1 %narrow to i32
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @evutil_v6addr_is_local_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 1
  %i.b = icmp ne i64 %i.a, 0
  %i.c = zext i1 %i.b to i32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1                 ; 3 uses
  %i.e = and i8 %i.d, -2
  %i.f = icmp eq i8 %i.e, -4
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i8 %i.d, -2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %or.cond = icmp slt i8 %i.i, 0
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = icmp eq i8 %i.d, -1
  %i.k = zext i1 %i.j to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %i.l = phi i32 [ %i.k, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define ptr @evutil_new_addrinfo_(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.addrinfo, align 8           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 6, ptr %i.h, align 4
  %i.i = call ptr @evutil_new_addrinfo_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) ; 6 uses
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %evutil_freeaddrinfo.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.g, align 8
  store i32 17, ptr %i.h, align 4
  %i.j = call ptr @evutil_new_addrinfo_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) ; 2 uses
  %.not34 = icmp eq ptr %i.j, null
  br i1 %.not34, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.i, align 8
  %.not.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  tail call void @freeaddrinfo(ptr noundef nonnull %i.i) #21
  br label %evutil_freeaddrinfo.exit

.preheader.i:                                     ; preds = %bb.e, %bb.h
  %.011.i = phi ptr [ %i.m, %bb.h ], [ %i.i, %bb.e ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.o, null
  br i1 %.not10.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  tail call void @event_mm_free_(ptr noundef nonnull %i.o) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.i
  tail call void @event_mm_free_(ptr noundef nonnull %.011.i) #21
  %.not9.i = icmp eq ptr %i.m, null
  br i1 %.not9.i, label %evutil_freeaddrinfo.exit, label %.preheader.i, !llvm.loop !5

bb.i:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.j, ptr %i.p, align 8
  br label %evutil_freeaddrinfo.exit

evutil_freeaddrinfo.exit:                         ; preds = %bb.h, %bb.f, %bb.c, %bb.i
  %.0 = phi ptr [ %i.i, %bb.i ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.l

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.q = zext i32 %1 to i64                       ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 48
  %i.s = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef %i.r) #21 ; 9 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.u, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.t, ptr align 2 %0, i64 %i.q, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %1, ptr %i.v, align 8
  %i.w = load i16, ptr %0, align 2
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.x, ptr %i.y, align 4
  store i32 -2147483648, ptr %i.s, align 8
  %i.z = load i32, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %i.ac, ptr %i.ad, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %evutil_freeaddrinfo.exit
  %.1 = phi ptr [ %.0, %evutil_freeaddrinfo.exit ], [ %i.s, %bb.k ], [ null, %bb.j ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @evutil_freeaddrinfo(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.not = icmp sgt i32 %i.a, -1
  br i1 %.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @freeaddrinfo(ptr noundef nonnull %0) #21
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %bb.d
  %.011 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.a ]  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.011, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.011, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  tail call void @event_mm_free_(ptr noundef nonnull %i.e) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader
  tail call void @event_mm_free_(ptr noundef nonnull %.011) #21
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %.loopexit, label %.preheader, !llvm.loop !5

.loopexit:                                        ; preds = %bb.d, %bb.b
  ret void
}

declare ptr @event_mm_calloc_(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @evutil_addrinfo_append_(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi ptr [ %i.b, %.preheader ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.b, label %.preheader, !llvm.loop !6

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 40
  store ptr %1, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.09 = phi ptr [ %0, %bb.b ], [ %1, %bb.a ]
  ret ptr %.09
}

; Function Attrs: nounwind uwtable
define range(i32 -90002, 1) i32 @evutil_getaddrinfo_common_(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.sockaddr_in6, align 4       ; 7 uses
  %6 = alloca %struct.sockaddr_in, align 4        ; 8 uses
  %7 = alloca %struct.sockaddr_in6, align 4       ; 9 uses
  %8 = alloca %struct.sockaddr_in, align 4        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %i.h = icmp eq ptr %0, null                     ; 2 uses
  %i.i = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %evutil_parse_servname.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4
  switch i32 %i.k, label %evutil_parse_servname.exit.thread [
    i32 0, label %bb.c
    i32 2, label %bb.c
    i32 10, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4              ; 4 uses
  %.not.i = icmp eq i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  br i1 %.not.i, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  switch i32 %i.o, label %evutil_unparse_protoname.exit [
    i32 1, label %evutil_getaddrinfo_infer_protocols.exit.thread
    i32 2, label %evutil_getaddrinfo_infer_protocols.exit.thread90
  ]

evutil_getaddrinfo_infer_protocols.exit.thread90: ; preds = %bb.d
  store i32 17, ptr %i.l, align 4
  br label %bb.f

evutil_getaddrinfo_infer_protocols.exit.thread:   ; preds = %bb.d
  store i32 6, ptr %i.l, align 4
  br label %evutil_unparse_protoname.exit

._crit_edge.i:                                    ; preds = %bb.c
  %.not16.i = icmp eq i32 %i.o, 0
  br i1 %.not16.i, label %bb.e, label %evutil_getaddrinfo_infer_protocols.exit

bb.e:                                             ; preds = %._crit_edge.i
  switch i32 %i.m, label %bb.h [
    i32 132, label %evutil_getaddrinfo_infer_protocols.exit.thread126
    i32 17, label %evutil_getaddrinfo_infer_protocols.exit.thread125.a
    i32 6, label %evutil_getaddrinfo_infer_protocols.exit.thread124
  ]

evutil_getaddrinfo_infer_protocols.exit.thread125.a: ; preds = %bb.e
  store i32 2, ptr %i.n, align 8
  br label %bb.f

evutil_getaddrinfo_infer_protocols.exit.thread124: ; preds = %bb.e
  store i32 1, ptr %i.n, align 8
  br label %evutil_unparse_protoname.exit

evutil_getaddrinfo_infer_protocols.exit.thread126: ; preds = %bb.e
  store i32 1, ptr %i.n, align 8
  br label %bb.g

evutil_getaddrinfo_infer_protocols.exit:          ; preds = %._crit_edge.i
  switch i32 %i.m, label %bb.h [
    i32 132, label %bb.g
    i32 6, label %evutil_unparse_protoname.exit
    i32 17, label %bb.f
  ]

bb.f:                                             ; preds = %evutil_getaddrinfo_infer_protocols.exit.thread125.a, %evutil_getaddrinfo_infer_protocols.exit.thread90, %evutil_getaddrinfo_infer_protocols.exit
  br label %evutil_unparse_protoname.exit

bb.g:                                             ; preds = %evutil_getaddrinfo_infer_protocols.exit, %evutil_getaddrinfo_infer_protocols.exit.thread126
  br label %evutil_unparse_protoname.exit

bb.h:                                             ; preds = %bb.e, %evutil_getaddrinfo_infer_protocols.exit
  %i.p = tail call ptr @getprotobynumber(i32 noundef %i.m) #21 ; 2 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %evutil_unparse_protoname.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %i.p, align 8
  br label %evutil_unparse_protoname.exit

evutil_unparse_protoname.exit:                    ; preds = %evutil_getaddrinfo_infer_protocols.exit, %evutil_getaddrinfo_infer_protocols.exit.thread, %evutil_getaddrinfo_infer_protocols.exit.thread124, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i
  %.1.i = phi ptr [ null, %bb.d ], [ @.str.27, %bb.f ], [ @.str.28, %bb.g ], [ null, %bb.h ], [ %i.q, %bb.i ], [ @.str.26, %evutil_getaddrinfo_infer_protocols.exit.thread124 ], [ @.str.26, %evutil_getaddrinfo_infer_protocols.exit.thread ], [ @.str.26, %evutil_getaddrinfo_infer_protocols.exit ]
  br i1 %i.i, label %evutil_parse_servname.exit, label %bb.j

bb.j:                                             ; preds = %evutil_unparse_protoname.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store ptr null, ptr %i.f, align 8
  %i.r = call i64 @__isoc23_strtol(ptr noundef nonnull %1, ptr noundef nonnull %i.f, i32 noundef 10) #21
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.s, 65536
  br i1 %or.cond.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = load i8, ptr %1, align 1
  %i.u = icmp ne i8 %i.t, 0
  %i.v = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.w = icmp ne ptr %i.v, null
  %or.cond3.i.i = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond3.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %i.v, align 1
end_hunk_0
begin_hunk_1_@evutil_inet_pton_scope:bb.a
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @evutil_inet_pton(i32 noundef 10, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.g = tail call i32 @if_nametoindex(ptr noundef nonnull %i.f) #21 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef 10) #21
  %i.j = trunc i64 %i.i to i32
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = load i8, ptr %i.k, align 1
  %.not29 = icmp eq i8 %i.l, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %.024.a = phi i32 [ %i.j, %bb.f ], [ %i.g, %bb.e ]
  store i32 %.024.a, ptr %3, align 4
  %i.m = call ptr @event_mm_strdup_(ptr noundef nonnull %1) #21 ; 4 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  store i8 0, ptr %i.q, align 1
  %i.r = call i32 @evutil_inet_pton(i32 noundef 10, ptr noundef nonnull %i.m, ptr noundef %2)
  call void @event_mm_free_(ptr noundef nonnull %i.m) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h, %bb.d, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.e, %bb.d ], [ 0, %bb.f ], [ %i.r, %bb.h ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @evutil_inet_pton(i32 noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca [8 x i16], align 16               ; 15 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  switch i32 %0, label %bb.af [
    i32 2, label %bb.b
    i32 10, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.m = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #21
  %.not134 = icmp eq i32 %i.m, 4
  br i1 %.not134, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.a, align 4              ; 2 uses
  %i.o = icmp ugt i32 %i.n, 255
  br i1 %i.o, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.b, align 4              ; 2 uses
  %i.q = icmp ugt i32 %i.p, 255
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.c, align 4              ; 2 uses
  %i.s = icmp ugt i32 %i.r, 255
  br i1 %i.s, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.d, align 4              ; 2 uses
  %i.u = icmp ugt i32 %i.t, 255
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = shl nuw i32 %i.n, 24
  %i.w = shl nuw nsw i32 %i.p, 16
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = shl nuw nsw i32 %i.r, 8
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = or disjoint i32 %i.z, %i.t
  %i.ab = call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  store i32 %i.ab, ptr %2, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.g
  %.0.a = phi i32 [ 1, %bb.g ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.af

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.ac = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 46) #23 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq ptr %i.ac, null                 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.pn = phi ptr [ %i.ac, %bb.l ], [ %.0102, %bb.n ] ; 3 uses
  %.0102 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 3 uses
  %.not128 = icmp ult ptr %.0102, %1
  br i1 %.not128, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i8, ptr %.0102, align 1
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = lshr i32 %i.ah, 5
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @EVUTIL_ISDIGIT_TABLE, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.ah, 31
  %i.an = shl nuw i32 1, %i.am
  %i.ao = and i32 %i.an, %i.al
  %.not129 = icmp eq i32 %i.ao, 0
  br i1 %.not129, label %.critedge, label %bb.m, !llvm.loop !7

.critedge:                                        ; preds = %bb.m, %bb.n
  %i.ap = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.pn, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #21
  %.not130 = icmp eq i32 %i.ap, 4
  br i1 %.not130, label %bb.o, label %.critedge136

bb.o:                                             ; preds = %.critedge
  %i.aq = load i32, ptr %i.g, align 4             ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 255
  %i.as = load i32, ptr %i.h, align 4             ; 2 uses
  %i.at = icmp ugt i32 %i.as, 255
  %or.cond = select i1 %i.ar, i1 true, i1 %i.at
  %i.au = load i32, ptr %i.i, align 4             ; 2 uses
  %i.av = icmp ugt i32 %i.au, 255
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.av
  %i.aw = load i32, ptr %i.j, align 4             ; 2 uses
  %i.ax = icmp ugt i32 %i.aw, 255
  %or.cond7 = select i1 %or.cond5, i1 true, i1 %i.ax
  br i1 %or.cond7, label %.critedge136, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = shl nuw nsw i32 %i.aq, 8
  %i.az = or disjoint i32 %i.ay, %i.as
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i16 %i.ba, ptr %i.bb, align 4
  %i.bc = shl nuw nsw i32 %i.au, 8
  %i.bd = or disjoint i32 %i.bc, %i.aw
  %i.be = trunc nuw i32 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  store i16 %i.be, ptr %i.bf, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %.1107 = phi i32 [ 2, %bb.p ], [ 0, %bb.k ]
  %.1103.a = phi ptr [ %.pn, %bb.p ], [ %i.af, %bb.k ] ; 3 uses
  %i.bg = icmp ult ptr %1, %.1103.a
  br i1 %i.bg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.q, %bb.aa
  %.096151 = phi ptr [ %.298, %bb.aa ], [ %1, %bb.q ] ; 7 uses
  %.0104150 = phi i32 [ %.1105, %bb.aa ], [ -1, %bb.q ] ; 2 uses
  %.2108149 = phi i32 [ %.4110, %bb.aa ], [ %.1107, %bb.q ] ; 3 uses
  %.0111148 = phi i32 [ %.2113, %bb.aa ], [ 0, %bb.q ] ; 7 uses
  %i.bh = icmp sgt i32 %.0111148, 7
  br i1 %i.bh, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.bi = load i8, ptr %.096151, align 1          ; 2 uses
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = lshr i32 %i.bj, 5
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @EVUTIL_ISXDIGIT_TABLE, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = and i32 %i.bj, 31
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = and i32 %i.bp, %i.bn
  %.not131 = icmp eq i32 %i.bq, 0
  br i1 %.not131, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #21
  %i.br = call i64 @__isoc23_strtol(ptr noundef nonnull %.096151, ptr noundef nonnull %i.l, i32 noundef 16) #21 ; 2 uses
  %i.bs = load ptr, ptr %i.l, align 8             ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.096151, i64 4
  %i.bu = icmp ugt ptr %i.bs, %i.bt
  %i.bv = icmp eq ptr %i.bs, %.096151
  %or.cond140 = or i1 %i.bu, %i.bv
  %or.cond9 = icmp ugt i64 %i.br, 65536
  %or.cond141 = select i1 %or.cond140, i1 true, i1 %or.cond9
  br i1 %or.cond141, label %.critedge139, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = trunc i64 %i.br to i16
  %i.bx = sext i32 %.0111148 to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.bx
  store i16 %i.bw, ptr %i.by, align 2
  %i.bz = load i8, ptr %i.bs, align 1
  %.not132 = icmp eq i8 %i.bz, 58
  %.not133 = icmp eq ptr %i.bs, %.1103.a
  %or.cond137 = or i1 %.not133, %.not132
  br i1 %or.cond137, label %bb.u, label %.critedge139

bb.u:                                             ; preds = %bb.t
  %i.ca = add nsw i32 %.2108149, 1
  %i.cb = add nsw i32 %.0111148, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  br label %bb.aa

bb.v:                                             ; preds = %bb.r
  %i.cd = icmp eq i8 %i.bi, 58                    ; 2 uses
  %i.ce = icmp sgt i32 %.0111148, 0
  %or.cond11 = and i1 %i.cd, %i.ce
  %i.cf = icmp eq i32 %.0104150, -1               ; 2 uses
  %or.cond13 = select i1 %or.cond11, i1 %i.cf, i1 false
  br i1 %or.cond13, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %.096151, i64 1
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.ch = icmp eq i32 %.0111148, 0
  %or.cond15 = and i1 %i.cd, %i.ch
  br i1 %or.cond15, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %.096151, i64 1
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = icmp eq i8 %i.cj, 58
  %or.cond17 = select i1 %i.ck, i1 %i.cf, i1 false
  br i1 %or.cond17, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %.096151, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.u, %bb.w, %bb.z
  %.2113 = phi i32 [ %i.cb, %bb.u ], [ %.0111148, %bb.w ], [ 0, %bb.z ]
  %.4110 = phi i32 [ %i.ca, %bb.u ], [ %.2108149, %bb.w ], [ %.2108149, %bb.z ] ; 6 uses
  %.1105 = phi i32 [ %.0104150, %bb.u ], [ %.0111148, %bb.w ], [ 0, %bb.z ] ; 7 uses
  %.298 = phi ptr [ %i.cc, %bb.u ], [ %i.cg, %bb.w ], [ %i.cl, %bb.z ] ; 2 uses
  %i.cm = icmp ult ptr %.298, %.1103.a
  br i1 %i.cm, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.aa
  %i.cn = icmp sgt i32 %.4110, 8
  br i1 %i.cn, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.co = icmp eq i32 %.4110, 8
  %i.cp = icmp ne i32 %.1105, -1
  %or.cond19 = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond19, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = icmp ne i32 %.4110, 8
  %i.cr = icmp eq i32 %.1105, -1
  %or.cond21 = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond21, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = icmp sgt i32 %.1105, -1
  br i1 %i.cs, label %bb.ae, label %.loopexit.loopexit

bb.ae:                                            ; preds = %bb.ad
  %.neg = select i1 %.not, i32 0, i32 -2
  %3 = add i32 %.4110, %.neg
  %4 = sub i32 %3, %.1105                         ; 2 uses
  %i.ct = icmp sgt i32 %4, -1
  br i1 %i.ct, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.ae
  %i.cu = sub nsw i32 8, %.4110                   ; 2 uses
  %i.cv = add nuw nsw i32 %.1105, %i.cu
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cw
  %i.cy = zext nneg i32 %.1105 to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cy ; 2 uses
  %i.da = shl nuw i32 %4, 1
  %i.db = zext i32 %i.da to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cx, ptr nonnull align 2 %i.cz, i64 %i.db, i1 false)
  %i.dc = zext nneg i32 %i.cu to i64
  %i.dd = shl nuw nsw i64 %i.dc, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cz, i8 0, i64 %i.dd, i1 false)
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.thread, %bb.ad
  %i.de = load i16, ptr %i.f, align 16            ; 2 uses
  %i.df = lshr i16 %i.de, 8
  %i.dg = trunc nuw i16 %i.df to i8
  store i8 %i.dg, ptr %2, align 1
  %i.dh = trunc i16 %i.de to i8
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.dh, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.dk = load i16, ptr %i.dj, align 2            ; 2 uses
  %i.dl = lshr i16 %i.dk, 8
  %i.dm = trunc nuw i16 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.dm, ptr %i.dn, align 1
  %i.do = trunc i16 %i.dk to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.do, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.dr = load i16, ptr %i.dq, align 4            ; 2 uses
  %i.ds = lshr i16 %i.dr, 8
  %i.dt = trunc nuw i16 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = trunc i16 %i.dr to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.dv, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.dy = load i16, ptr %i.dx, align 2            ; 2 uses
  %i.dz = lshr i16 %i.dy, 8
  %i.ea = trunc nuw i16 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %i.ea, ptr %i.eb, align 1
  %i.ec = trunc i16 %i.dy to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.ec, ptr %i.ed, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ef = load i16, ptr %i.ee, align 8            ; 2 uses
  %i.eg = lshr i16 %i.ef, 8
  %i.eh = trunc nuw i16 %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.eh, ptr %i.ei, align 1
  %i.ej = trunc i16 %i.ef to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.ej, ptr %i.ek, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.em = load i16, ptr %i.el, align 2            ; 2 uses
  %i.en = lshr i16 %i.em, 8
  %i.eo = trunc nuw i16 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = trunc i16 %i.em to i8
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 %i.eq, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.et = load i16, ptr %i.es, align 4            ; 2 uses
  %i.eu = lshr i16 %i.et, 8
  %i.ev = trunc nuw i16 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %i.ev, ptr %i.ew, align 1
  %i.ex = trunc i16 %i.et to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %i.ex, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.fa = load i16, ptr %i.ez, align 2            ; 2 uses
  %i.fb = lshr i16 %i.fa, 8
  %i.fc = trunc nuw i16 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i8 %i.fc, ptr %i.fd, align 1
  %i.fe = trunc i16 %i.fa to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 15
  store i8 %i.fe, ptr %i.ff, align 1
  br label %.loopexit

.critedge136:                                     ; preds = %bb.o, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %.loopexit

.critedge139:                                     ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %bb.y, %.lr.ph, %bb.q, %.loopexit.loopexit, %bb.ae, %._crit_edge, %bb.ab, %bb.ac, %.critedge139, %.critedge136, %bb.i
  %.7 = phi i32 [ 0, %.critedge136 ], [ 0, %bb.i ], [ 0, %.critedge139 ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %._crit_edge ], [ -1, %bb.ae ], [ 1, %.loopexit.loopexit ], [ 0, %bb.q ], [ 0, %.lr.ph ], [ 0, %bb.y ], [ 0, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %.loopexit, %bb.h
  %.8 = phi i32 [ %.0.a, %bb.h ], [ %.7, %.loopexit ], [ -1, %bb.a ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define void @evutil_adjust_hints_for_addrconfig_(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %1 = alloca %struct.sockaddr_in, align 4        ; 6 uses
  %2 = alloca %struct.sockaddr_in, align 4        ; 8 uses
  %3 = alloca %struct.sockaddr_in6, align 4       ; 7 uses
  %4 = alloca %struct.sockaddr_in6, align 4       ; 8 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = load i32, ptr %0, align 8
  %i.j = and i32 %i.i, 32
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %.not8 = icmp eq i32 %i.l, 0
  br i1 %.not8, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store i32 16, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i32 28, ptr %i.h, align 4
  %.b.i = load i1, ptr @have_checked_interfaces, align 4
  br i1 %.b.i, label %evutil_check_interfaces.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i1 true, ptr @have_checked_interfaces, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store ptr null, ptr %i.f, align 8
  %i.m = call i32 @getifaddrs(ptr noundef nonnull %i.f) #21
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.l, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %.07.i.i = load ptr, ptr %i.f, align 8          ; 2 uses
  %.not8.i.i = icmp eq ptr %.07.i.i, null
  br i1 %.not8.i.i, label %evutil_check_ifaddrs.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %evutil_found_ifaddr.exit.i.i
  %.09.i.i = phi ptr [ %.0.i.i, %evutil_found_ifaddr.exit.i.i ], [ %.07.i.i, %.preheader.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 5 uses
  %.not6.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i, label %evutil_found_ifaddr.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.q = load i16, ptr %i.p, align 2
  switch i16 %i.q, label %evutil_found_ifaddr.exit.i.i [
    i16 2, label %bb.f
    i16 10, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = call noundef i32 @llvm.bswap.i32(i32 %i.s) ; 3 uses
  %i.u = icmp ne i32 %i.s, 0
  %i.v = icmp slt i32 %i.t, 2130706432
  %or.cond.not8.i.not17.i.i.i = and i1 %i.u, %i.v
  %i.w = and i32 %i.t, -65536
  %.not.i.i.i.i = icmp ne i32 %i.w, -1442971648
  %or.cond5.i.not14.i.i.i = and i1 %or.cond.not8.i.not17.i.i.i, %.not.i.i.i.i
  %i.x = and i32 %i.t, -268435456
  %i.y = icmp ne i32 %i.x, -536870912
  %narrow.i.not.i.i.i = and i1 %i.y, %or.cond5.i.not14.i.i.i
  br i1 %narrow.i.not.i.i.i, label %bb.g, label %evutil_found_ifaddr.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr @event_debug_logging_mask_, align 4
  %.not8.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not8.i.i.i, label %evutil_v6addr_is_local_.exit.thread.sink.split.i.i.i, label %evutil_v6addr_is_local_.exit.thread.sink.split.sink.split.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %.not.i9.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i9.i.i.i, label %evutil_found_ifaddr.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load i8, ptr %i.aa, align 2             ; 2 uses
  %i.af = and i8 %i.ae, -2
end_hunk_1
begin_hunk_2_@evutil_sockaddr_cmp:bb.a
  %i.e = sub nsw i32 %i.b, %i.d                   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  switch i16 %i.a, label %bb.j [
    i16 2, label %bb.c
    i16 10, label %loadbb
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp ult i32 %i.g, %i.i
  br i1 %i.j, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ugt i32 %i.g, %i.i
  br i1 %i.k, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not34 = icmp eq i32 %2, 0
  br i1 %.not34, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i16, ptr %i.o, align 2
  %i.q = zext i16 %i.p to i32
  %i.r = sub nsw i32 %i.n, %i.q                   ; 2 uses
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %bb.i, label %bb.j

loadbb:                                           ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.s, align 1
  %i.v = load i64, ptr %i.t, align 1
  %i.w = tail call i64 @llvm.bswap.i64(i64 %i.u)  ; 2 uses
  %i.x = tail call i64 @llvm.bswap.i64(i64 %i.v)  ; 2 uses
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %loadbb41, label %res_block

res_block:                                        ; preds = %loadbb41, %loadbb
  %phi.src1 = phi i64 [ %i.w, %loadbb ], [ %i.af, %loadbb41 ]
  %phi.src2 = phi i64 [ %i.x, %loadbb ], [ %i.ag, %loadbb41 ]
  %i.z = icmp ult i64 %phi.src1, %phi.src2
  %i.aa = select i1 %i.z, i32 -1, i32 1
  br label %endblock

loadbb41:                                         ; preds = %loadbb
  %i.ab = getelementptr i8, ptr %i.s, i64 8
  %i.ac = getelementptr i8, ptr %i.t, i64 8
  %i.ad = load i64, ptr %i.ab, align 1
  %i.ae = load i64, ptr %i.ac, align 1
  %i.af = tail call i64 @llvm.bswap.i64(i64 %i.ad) ; 2 uses
  %i.ag = tail call i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb41
  %phi.res = phi i32 [ 0, %loadbb41 ], [ %i.aa, %res_block ] ; 2 uses
  %.not31 = icmp eq i32 %phi.res, 0
  br i1 %.not31, label %bb.g, label %bb.j

bb.g:                                             ; preds = %endblock
  %.not32 = icmp eq i32 %2, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = zext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.am = load i16, ptr %i.al, align 2
  %i.an = zext i16 %i.am to i32
  %i.ao = sub nsw i32 %i.ak, %i.an                ; 2 uses
  %.not33 = icmp eq i32 %i.ao, 0
  br i1 %.not33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i, %endblock, %bb.h, %bb.c, %bb.d, %bb.f, %bb.a
  %.2 = phi i32 [ %i.ao, %bb.h ], [ %i.e, %bb.a ], [ %i.r, %bb.f ], [ 1, %bb.b ], [ -1, %bb.c ], [ 1, %bb.d ], [ 0, %bb.i ], [ %phi.res, %endblock ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @EVUTIL_ISALPHA_(i8 noundef signext %0) local_unnamed_addr #11 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 2 uses
  %i.b = lshr i32 %i.a, 5
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @EVUTIL_ISALPHA_TABLE, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.a, 31
  %i.g = lshr i32 %i.e, %i.f
  %i.h = and i32 %i.g, 1
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @EVUTIL_ISALNUM_(i8 noundef signext %0) local_unnamed_addr #11 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 2 uses
  %i.b = lshr i32 %i.a, 5
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @EVUTIL_ISALNUM_TABLE, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.a, 31
  %i.g = lshr i32 %i.e, %i.f
  %i.h = and i32 %i.g, 1
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @EVUTIL_ISSPACE_(i8 noundef signext %0) local_unnamed_addr #11 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 2 uses
  %i.b = lshr i32 %i.a, 5
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @EVUTIL_ISSPACE_TABLE, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.a, 31
  %i.g = lshr i32 %i.e, %i.f
  %i.h = and i32 %i.g, 1
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @EVUTIL_ISPRINT_(i8 noundef signext %0) local_unnamed_addr #11 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 2 uses
  %i.b = lshr i32 %i.a, 5
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @EVUTIL_ISPRINT_TABLE, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.a, 31
  %i.g = lshr i32 %i.e, %i.f
  %i.h = and i32 %i.g, 1
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @EVUTIL_ISLOWER_(i8 noundef signext %0) local_unnamed_addr #11 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 2 uses
  %i.b = lshr i32 %i.a, 5
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @EVUTIL_ISLOWER_TABLE, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.a, 31
  %i.g = lshr i32 %i.e, %i.f
  %i.h = and i32 %i.g, 1
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @EVUTIL_ISUPPER_(i8 noundef signext %0) local_unnamed_addr #11 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 2 uses
  %i.b = lshr i32 %i.a, 5
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @EVUTIL_ISUPPER_TABLE, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.a, 31
  %i.g = lshr i32 %i.e, %i.f
  %i.h = and i32 %i.g, 1
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext i8 @EVUTIL_TOLOWER_(i8 noundef signext %0) local_unnamed_addr #11 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @EVUTIL_TOLOWER_TABLE, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext i8 @EVUTIL_TOUPPER_(i8 noundef signext %0) local_unnamed_addr #11 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @EVUTIL_TOUPPER_TABLE, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  ret i8 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @evutil_ascii_strcasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.08.a = phi ptr [ %1, %bb.a ], [ %i.f, %bb.d ] ; 2 uses
  %.07 = phi ptr [ %0, %bb.a ], [ %i.a, %bb.d ]   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 1
  %i.b = load i8, ptr %.07, align 1               ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @EVUTIL_TOLOWER_TABLE, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.08.a, i64 1
  %i.g = load i8, ptr %.08.a, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @EVUTIL_TOLOWER_TABLE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = icmp slt i8 %i.e, %i.j
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp sgt i8 %i.e, %i.j
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i8 %i.b, 0
  br i1 %i.m, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @evutil_ascii_strncasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #15 {
bb.a:
  %.not15 = icmp eq i64 %2, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.in = phi i64 [ %i.a, %bb.b ], [ %2, %bb.a ]
  %.0817 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.01016 = phi ptr [ %i.g, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.a = add i64 %.in, -1                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0817, i64 1
  %i.c = load i8, ptr %.0817, align 1             ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @EVUTIL_TOLOWER_TABLE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01016, i64 1
  %i.h = load i8, ptr %.01016, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @EVUTIL_TOLOWER_TABLE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = icmp slt i8 %i.f, %i.k
  br i1 %i.l, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = icmp sgt i8 %i.f, %i.k
  br i1 %i.m, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i8 %i.c, 0
  br i1 %i.n, label %._crit_edge18, label %bb.b, !llvm.loop !17

._crit_edge18:                                    ; preds = %bb.d
  br label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.c, %bb.b, %._crit_edge18, %bb.a
  %.0 = phi i32 [ 0, %._crit_edge18 ], [ 0, %bb.a ], [ -1, %.lr.ph ], [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @evutil_rtrim_lws_(ptr nofree noundef captures(address) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0) ; 2 uses
  %i.b = icmp eq i64 %strlen, 0
  br i1 %i.b, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %strchr = getelementptr inbounds i8, ptr %0, i64 %strlen
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %strchr.pn = phi ptr [ %.0, %.critedge ], [ %strchr, %.preheader.preheader ]
  %.0 = getelementptr inbounds i8, ptr %strchr.pn, i64 -1 ; 4 uses
  %i.c = load i8, ptr %.0, align 1
  switch i8 %i.c, label %.loopexit [
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

.critedge:                                        ; preds = %.preheader, %.preheader
  store i8 0, ptr %.0, align 1
  %i.d = icmp eq ptr %.0, %0
  br i1 %i.d, label %.loopexit, label %.preheader, !llvm.loop !18

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @evutil_getenv_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @getuid() #21
  %i.b = tail call i32 @geteuid() #21
  %.not.i = icmp eq i32 %i.a, %i.b
  br i1 %.not.i, label %evutil_issetugid.exit, label %evutil_issetugid.exit.thread

evutil_issetugid.exit:                            ; preds = %bb.a
  %i.c = tail call i32 @getgid() #21
  %i.d = tail call i32 @getegid() #21
  %.not1.i.not = icmp eq i32 %i.c, %i.d
  br i1 %.not1.i.not, label %bb.b, label %evutil_issetugid.exit.thread

bb.b:                                             ; preds = %evutil_issetugid.exit
  %i.e = tail call ptr @getenv(ptr noundef %0) #21
  br label %evutil_issetugid.exit.thread

evutil_issetugid.exit.thread:                     ; preds = %bb.a, %evutil_issetugid.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %evutil_issetugid.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define i32 @evutil_weakrand_seed_(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #21 ; 0 uses
  %i.c = load i64, ptr %2, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, %i.d
  %i.i = tail call i32 @getpid() #21
  %i.j = add i32 %i.h, %i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.b ], [ %1, %bb.a ]    ; 2 uses
  store i32 %.0, ptr %0, align 4
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, -2147483648) i32 @evutil_weakrand_(ptr nofree noundef captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = mul i32 %i.a, 1103515245
  %i.c = add i32 %i.b, 12345
  %i.d = and i32 %i.c, 2147483647                 ; 2 uses
  store i32 %i.d, ptr %0, align 4
  ret i32 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2147483647, 2147483647) i32 @evutil_weakrand_range_(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = sdiv i32 2147483647, %1
  %.promoted = load i32, ptr %0, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = phi i32 [ %i.e, %bb.b ], [ %.promoted, %bb.a ]
  %i.c = mul i32 %i.b, 1103515245
  %i.d = add i32 %i.c, 12345
  %i.e = and i32 %i.d, 2147483647                 ; 3 uses
  %i.f = sdiv i32 %i.e, %i.a                      ; 2 uses
  %.not = icmp slt i32 %i.f, %1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !19

bb.c:                                             ; preds = %bb.b
  store i32 %i.e, ptr %0, align 4
  ret i32 %i.f
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @memset(ptr noundef writeonly, i32 noundef, i64 noundef) #19

; Function Attrs: nounwind uwtable
define hidden void @evutil_memclear_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile ptr, ptr @evutil_memset_volatile_, align 8
  %i.b = tail call ptr %i.a(ptr noundef %0, i32 noundef 0, i64 noundef %1) #21 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @evutil_sockaddr_is_loopback_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i16, ptr %0, align 2
  switch i16 %i.a, label %bb.d [
    i16 2, label %bb.b
    i16 10, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %.mask = and i32 %i.c, 255
  %i.d = icmp eq i32 %.mask, 127
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i128, ptr %i.e, align 1
  %i.g = icmp ne i128 %i.f, 1329227995784915872903807060280344576
  %i.h = zext i1 %i.g to i32
  %.not = icmp eq i32 %i.h, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0.shrunk = phi i1 [ %i.d, %bb.b ], [ %.not, %bb.c ], [ false, %bb.a ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 -1, 16) i32 @evutil_hex_char_to_int_(i8 noundef signext %0) local_unnamed_addr #11 {
bb.a:
  %switch.tableidx = add i8 %0, -48               ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 55
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.evutil_hex_char_to_int_, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

end_hunk_2
