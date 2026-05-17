inline.NumInlined: 312
inline.NumDeleted: 57
begin_hunk_0_@addrinfo_ip_p:bb.a
  %i.h = and i16 %i.g, -9
  %i.i = icmp eq i16 %i.h, 2
  %i.j = select i1 %i.i, i64 20, i64 0
  br label %ai_get_afamily.exit

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit, %bb.c
  %.0.i.i = phi i64 [ %i.j, %bb.c ], [ 0, %get_addrinfo.exit ]
  ret i64 %.0.i.i
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @addrinfo_ip_unpack(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !97
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %ai_get_afamily.exit, label %ai_get_afamily.exit.thread

ai_get_afamily.exit.thread:                       ; preds = %get_addrinfo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br label %bb.c

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load i16, ptr %i.h, align 2, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.j = and i16 %i.i, -9
  %or.cond = icmp eq i16 %i.j, 2
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ai_get_afamily.exit.thread, %ai_get_afamily.exit
  %i.k = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.124) #19
  unreachable

bb.d:                                             ; preds = %ai_get_afamily.exit
  store i64 7, ptr %i.a, align 8, !tbaa !38
  %i.l = call i64 @addrinfo_getnameinfo(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %0) ; 3 uses
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 1) #20
  store i64 %i.m, ptr %i.b, align 8, !tbaa !38
  %i.n = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #17
  %i.o = call i64 @__isoc23_strtol(ptr noundef nonnull %i.n, ptr noundef null, i32 noundef 10) #17, !inline_history !79
  %sext = shl i64 %i.o, 32
  %i.p = ashr exact i64 %sext, 31
  %i.q = or disjoint i64 %i.p, 1
  call void @rb_ary_store(i64 noundef %i.l, i64 noundef 1, i64 noundef %i.q) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.l
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_ip_address(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !97
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %ai_get_afamily.exit, label %ai_get_afamily.exit.thread

ai_get_afamily.exit.thread:                       ; preds = %get_addrinfo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br label %bb.c

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i16, ptr %i.g, align 2, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.i = and i16 %i.h, -9
  %or.cond = icmp eq i16 %i.i, 2
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ai_get_afamily.exit.thread, %ai_get_afamily.exit
  %i.j = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.124) #19
  unreachable

bb.d:                                             ; preds = %ai_get_afamily.exit
  store i64 7, ptr %i.a, align 8, !tbaa !38
  %i.k = call i64 @addrinfo_getnameinfo(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %0)
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.k, i64 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.l
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 131072) i64 @addrinfo_ip_port(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97   ; 3 uses
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit, label %ai_get_afamily.exit.thread

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 2, !tbaa !77   ; 2 uses
  %i.h = and i16 %i.g, -9
  %or.cond = icmp eq i16 %i.h, 2
  br i1 %or.cond, label %bb.c, label %ai_get_afamily.exit.thread

ai_get_afamily.exit.thread:                       ; preds = %get_addrinfo.exit, %bb.c, %ai_get_afamily.exit
  %i.i = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.124) #19
  unreachable

bb.c:                                             ; preds = %ai_get_afamily.exit
  switch i16 %i.g, label %ai_get_afamily.exit.thread [
    i16 2, label %bb.d
    i16 10, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %.not10 = icmp eq i32 %i.d, 16
  br i1 %.not10, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.125) #19
  unreachable

bb.f:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.d, 28
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.126) #19
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.m = load i16, ptr %i.l, align 2, !tbaa !46
  %rev.i11 = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.n = zext i16 %rev.i11 to i64
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = or disjoint i64 %i.o, 1
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv4_private_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %extract_in_addr.exit.thread

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 2, !tbaa !77
  %.not.i = icmp eq i16 %i.g, 2
  br i1 %.not.i, label %bb.c, label %extract_in_addr.exit.thread

bb.c:                                             ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = tail call noundef i32 @llvm.bswap.i32(i32 %i.i) ; 3 uses
  %1 = and i32 %i.j, -16777216
  %2 = icmp eq i32 %1, 167772160
  %3 = and i32 %i.j, -1048576
  %4 = icmp eq i32 %3, -1408237568
  %or.cond = or i1 %2, %4
  %5 = and i32 %i.j, -65536
  %i.k = icmp eq i32 %5, -1062731776
  %or.cond4 = or i1 %i.k, %or.cond
  %spec.select = select i1 %or.cond4, i64 20, i64 0
  br label %extract_in_addr.exit.thread

extract_in_addr.exit.thread:                      ; preds = %get_addrinfo.exit.i, %ai_get_afamily.exit.i, %bb.c
  %.0 = phi i64 [ %spec.select, %bb.c ], [ 0, %ai_get_afamily.exit.i ], [ 0, %get_addrinfo.exit.i ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv4_loopback_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %bb.c

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 2, !tbaa !77
  %.not.i = icmp eq i16 %i.g, 2
  br i1 %.not.i, label %extract_in_addr.exit, label %bb.c

extract_in_addr.exit:                             ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %.mask = and i32 %i.i, 255
  %i.j = icmp eq i32 %.mask, 127
  %. = select i1 %i.j, i64 20, i64 0
  br label %bb.c

bb.c:                                             ; preds = %get_addrinfo.exit.i, %ai_get_afamily.exit.i, %extract_in_addr.exit
  %i.k = phi i64 [ %., %extract_in_addr.exit ], [ 0, %ai_get_afamily.exit.i ], [ 0, %get_addrinfo.exit.i ]
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv4_multicast_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %bb.c

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 2, !tbaa !77
  %.not.i = icmp eq i16 %i.g, 2
  br i1 %.not.i, label %extract_in_addr.exit, label %bb.c

extract_in_addr.exit:                             ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = and i32 %i.i, 240
  %i.k = icmp eq i32 %i.j, 224
  %. = select i1 %i.k, i64 20, i64 0
  br label %bb.c

bb.c:                                             ; preds = %get_addrinfo.exit.i, %ai_get_afamily.exit.i, %extract_in_addr.exit
  %i.l = phi i64 [ %., %extract_in_addr.exit ], [ 0, %ai_get_afamily.exit.i ], [ 0, %get_addrinfo.exit.i ]
  ret i64 %i.l
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_unspecified_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %.critedge

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 2, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %.critedge

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %extract_in6_addr.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %.critedge

.critedge:                                        ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %bb.d, %bb.c, %extract_in6_addr.exit, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.0 = phi i64 [ 0, %.critedge ], [ 20, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_loopback_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %.critedge

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 2, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %.critedge

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %extract_in6_addr.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46
  %i.s = icmp eq i32 %i.r, 16777216
  br i1 %i.s, label %bb.f, label %.critedge

.critedge:                                        ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %bb.d, %bb.c, %extract_in6_addr.exit, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.0 = phi i64 [ 0, %.critedge ], [ 20, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_multicast_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
end_hunk_0
