inline.NumInlined: 312
inline.NumDeleted: 57
begin_hunk_0_@rsock_sockaddr_string_value_with_addrinfo:bb.a
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %addrinfo_to_sockaddr.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

addrinfo_to_sockaddr.exit:                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !97
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i64 @rb_str_new(ptr noundef nonnull %i.e, i64 noundef %i.h) #17
  store volatile i64 %i.i, ptr %0, align 8, !tbaa !38
  store i64 %i.a, ptr %1, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %addrinfo_to_sockaddr.exit, %bb.a
  %i.j = tail call i64 @rb_string_value(ptr noundef nonnull %0) #17 ; 0 uses
  %i.k = load volatile i64, ptr %0, align 8, !tbaa !38
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define ptr @rsock_sockaddr_string_value_ptr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile i64, ptr %0, align 8, !tbaa !38 ; 2 uses
  %i.b = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %i.a, ptr noundef nonnull @addrinfo_type) #17
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %rsock_sockaddr_string_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %addrinfo_to_sockaddr.exit.i

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

addrinfo_to_sockaddr.exit.i:                      ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !97
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i64 @rb_str_new(ptr noundef nonnull %i.e, i64 noundef %i.h) #17
  store volatile i64 %i.i, ptr %0, align 8, !tbaa !38
  br label %rsock_sockaddr_string_value.exit

rsock_sockaddr_string_value.exit:                 ; preds = %bb.a, %addrinfo_to_sockaddr.exit.i
  %i.j = tail call i64 @rb_string_value(ptr noundef nonnull %0) #17 ; 0 uses
  %i.k = load volatile i64, ptr %0, align 8, !tbaa !38 ; 0 uses
  %i.l = load volatile i64, ptr %0, align 8, !tbaa !38
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44
  %i.o = and i64 %i.n, 8192
  %.not.i2 = icmp eq i64 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  br i1 %.not.i2, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %rsock_sockaddr_string_value.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rsock_sockaddr_string_value.exit, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.p, %rsock_sockaddr_string_value.exit ]
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define i64 @rb_check_sockaddr_string_type(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %addrinfo_to_sockaddr.exit

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.104) #19
  unreachable

addrinfo_to_sockaddr.exit:                        ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !97
  %i.g = zext i32 %i.f to i64
  %i.h = tail call i64 @rb_str_new(ptr noundef nonnull %i.d, i64 noundef %i.g) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = tail call i64 @rb_check_string_type(i64 noundef %0) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %addrinfo_to_sockaddr.exit
  %.0 = phi i64 [ %i.h, %addrinfo_to_sockaddr.exit ], [ %i.i, %bb.d ]
  ret i64 %.0
}

declare i64 @rb_check_string_type(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @rsock_fd_socket_addrinfo(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 4, ptr %i.b, align 4, !tbaa !6
  %i.c = icmp ugt i32 %2, 1
  br i1 %i.c, label %bb.b, label %get_afamily.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 2, !tbaa !77
  %i.e = zext i16 %i.d to i32
  br label %get_afamily.exit

get_afamily.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = call i32 @getsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %get_afamily.exit
  %i.h = call ptr @rb_errno_ptr() #17
  %i.i = load i32, ptr %i.h, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.i, ptr noundef nonnull @.str.52) #19
  unreachable

bb.d:                                             ; preds = %get_afamily.exit
  %i.j = load i32, ptr %i.a, align 4, !tbaa !6
  %i.k = load i64, ptr @rb_cAddrinfo, align 8, !tbaa !38
  %i.l = call i64 @rb_data_typed_object_wrap(i64 noundef %i.k, ptr noundef null, ptr noundef nonnull @addrinfo_type) #17 ; 2 uses
  %i.m = call noalias noundef nonnull dereferenceable(2080) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2080) #21 ; 9 uses
  store i64 4, ptr %i.m, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i64 4, ptr %i.n, align 8, !tbaa !94
  %i.o = inttoptr i64 %i.l to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.m, ptr %i.p, align 8, !tbaa !95
  %i.q = icmp ugt i32 %2, 2048
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.102) #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i, label %rsock_addrinfo_new.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = zext nneg i32 %2 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr readonly align 1 %1, i64 %i.s, i1 false)
  br label %rsock_addrinfo_new.exit

rsock_addrinfo_new.exit:                          ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 %2, ptr %i.u, align 4, !tbaa !97
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %.0.i, ptr %i.v, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  store i32 %i.j, ptr %i.w, align 4, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 0, ptr %i.x, align 8, !tbaa !100
  store i64 4, ptr %i.n, align 8, !tbaa !38
  store i64 4, ptr %i.m, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.l
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_syserr_fail(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @rsock_io_socket_addrinfo(i64 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %rb_type.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %0, label %bb.c [
    i64 0, label %rb_type.exit.thread
    i64 4, label %rb_type.exit.thread
    i64 20, label %rb_type.exit.thread
    i64 36, label %rb_type.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %0 to i1
  br i1 %i.e, label %rb_type.exit.thread13, label %rb_type.exit.thread

rb_type.exit:                                     ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 31
  switch i32 %i.i, label %rb_type.exit.thread [
    i32 21, label %rb_type.exit.thread13
    i32 10, label %rb_num2int_inline.exit
    i32 11, label %bb.d
  ]

rb_type.exit.thread13:                            ; preds = %bb.c, %rb_type.exit
  %i.j = tail call i64 @rb_fix2int(i64 noundef %0) #17
  %i.k = trunc i64 %i.j to i32
  br label %bb.e

rb_num2int_inline.exit:                           ; preds = %rb_type.exit
  %i.l = tail call i64 @rb_num2int(i64 noundef %0) #17
  %i.m = trunc i64 %i.l to i32
  br label %bb.e

bb.d:                                             ; preds = %rb_type.exit
  %i.n = tail call i64 @rb_io_taint_check(i64 noundef %0) #17
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111  ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.q) #17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !114
  br label %bb.e

rb_type.exit.thread:                              ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %rb_type.exit
  %i.t = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.t, ptr noundef nonnull @.str.53) #19
  unreachable

bb.e:                                             ; preds = %bb.d, %rb_num2int_inline.exit, %rb_type.exit.thread13
  %.sink = phi i32 [ %i.s, %bb.d ], [ %i.m, %rb_num2int_inline.exit ], [ %i.k, %rb_type.exit.thread13 ]
  %i.u = tail call i64 @rsock_fd_socket_addrinfo(i32 noundef %.sink, ptr noundef %1, i32 noundef %2)
  ret i64 %i.u
}

declare void @rb_io_check_closed(ptr noundef) local_unnamed_addr #3

declare i64 @rb_io_taint_check(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @free_fast_fallback_getaddrinfo_shared(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  tail call void @ruby_xfree(ptr noundef %i.c) #17
  %i.d = load ptr, ptr %0, align 8, !tbaa !126    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  tail call void @ruby_xfree(ptr noundef %i.g) #17
  %i.h = load ptr, ptr %0, align 8, !tbaa !126    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.i, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call void @rb_nativethread_lock_destroy(ptr noundef nonnull %i.j) #17
  %i.k = load ptr, ptr %0, align 8, !tbaa !126
  tail call void @free(ptr noundef %i.k) #17
  store ptr null, ptr %0, align 8, !tbaa !126
  ret void
}

declare void @rb_nativethread_lock_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define ptr @fork_safe_do_fast_fallback_getaddrinfo(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_thread_prevent_fork(ptr noundef nonnull @do_fast_fallback_getaddrinfo, ptr noundef %0) #17
  ret ptr %i.a
}

declare ptr @rb_thread_prevent_fork(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @do_fast_fallback_getaddrinfo(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.__sigset_t, align 8         ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.d = call i32 @sigemptyset(ptr noundef nonnull %1) #17 ; 0 uses
  %i.e = call i32 @sigaddset(ptr noundef nonnull %1, i32 noundef 13) #17 ; 0 uses
  %i.f = call i32 @pthread_sigmask(i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.m = call fastcc i32 @numeric_getaddrinfo(ptr noundef %i.h, ptr noundef %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.p = call i32 @getaddrinfo(ptr noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #17 ; 2 uses
  %i.q = icmp eq i32 %i.p, -11
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = call ptr @rb_errno_ptr() #17
  %i.s = load i32, ptr %i.r, align 4, !tbaa !6
  %i.t = icmp eq i32 %i.s, 2
  %spec.select = select i1 %i.t, i32 -2, i32 -11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.028 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ %i.p, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !130  ; 3 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.x = udiv i64 %i.v, 1000
  store i64 %i.x, ptr %2, align 8, !tbaa !131
  %i.y = urem i64 %i.v, 1000
  %i.z = mul nuw nsw i64 %i.y, 1000000
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !133
  %i.ab = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef null) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !134 ; 3 uses
  %.not36 = icmp eq i32 %i.ad, 0
  br i1 %.not36, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !135 ; 2 uses
  %.not37 = icmp eq ptr %i.ae, null
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @freeaddrinfo(ptr noundef nonnull %i.ae) #17
  store ptr null, ptr %i.l, align 8, !tbaa !135
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.1 = phi i32 [ %i.ad, %bb.h ], [ %i.ad, %bb.g ], [ %.028, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  call void @rb_nativethread_lock_lock(ptr noundef nonnull %i.af) #17
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %.1, ptr %i.ag, align 4, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ah = load i32, ptr %0, align 8, !tbaa !137
  %i.ai = icmp eq i32 %i.ah, 10
  %i.aj = select i1 %i.ai, i8 49, i8 50
  store i8 %i.aj, ptr %i.a, align 1, !tbaa !46
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !6   ; 2 uses
  %.not38 = icmp eq i32 %i.ak, -1
  br i1 %.not38, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = call i64 @write(i32 noundef %i.ak, ptr noundef nonnull %i.a, i64 noundef 1) #17
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = call ptr @rb_errno_ptr() #17
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !6
  store i32 %i.ao, ptr %i.ag, align 4, !tbaa !136
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.ap, align 8, !tbaa !138
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !139
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !139
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !135
  store ptr null, ptr %i.l, align 8, !tbaa !135
end_hunk_0
begin_hunk_1_@make_inspectname:bb.a
RSTRING_PTR.exit26:                               ; preds = %bb.f, %bb.g
  %i.ai = phi ptr [ %i.ah, %bb.g ], [ %i.ag, %bb.f ]
  %i.aj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.ai) #20
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.sink.split, label %rbimpl_RB_TYPE_P_fastpath.exit22.thread

rbimpl_RB_TYPE_P_fastpath.exit22.thread:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit24.thread, %rbimpl_RB_TYPE_P_fastpath.exit22, %RSTRING_PTR.exit26
  %i.al = trunc i64 %1 to i1
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit22.thread
  %i.am = call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #17, !inline_history !79
  %i.an = trunc i64 %i.am to i32
  %i.ao = call i64 @rb_fix2int(i64 noundef %1) #17
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %RSTRING_PTR.exit26
  store i64 4, ptr %i.a, align 8, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit22.thread, %bb.b
  %i.ar = phi i64 [ %1, %rbimpl_RB_TYPE_P_fastpath.exit22.thread ], [ %1, %bb.b ], [ %1, %bb.h ], [ 4, %.sink.split ]
  %.1 = phi i64 [ %.0, %rbimpl_RB_TYPE_P_fastpath.exit22.thread ], [ %0, %bb.b ], [ %.0, %bb.h ], [ %.0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %i.as = phi i64 [ %i.ar, %bb.i ], [ %1, %bb.a ] ; 6 uses
  %.2 = phi i64 [ %.1, %bb.i ], [ %0, %bb.a ]     ; 4 uses
  %i.at = icmp eq i64 %.2, 0
  %i.au = and i64 %.2, 7
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = or i1 %i.at, %i.av
  br i1 %i.aw, label %rbimpl_RB_TYPE_P_fastpath.exit19.thread, label %rbimpl_RB_TYPE_P_fastpath.exit19

rbimpl_RB_TYPE_P_fastpath.exit19:                 ; preds = %bb.j
  %i.ax = inttoptr i64 %.2 to ptr
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !44
  %i.az = and i64 %i.ay, 31
  %i.ba = icmp eq i64 %i.az, 5
  br i1 %i.ba, label %bb.k, label %rbimpl_RB_TYPE_P_fastpath.exit19.thread

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit19
  %i.bb = call i64 @rb_str_dup(i64 noundef %.2) #17
  br label %rbimpl_RB_TYPE_P_fastpath.exit19.thread

rbimpl_RB_TYPE_P_fastpath.exit19.thread:          ; preds = %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit19, %bb.k
  %.014 = phi i64 [ %i.bb, %bb.k ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit19 ], [ 4, %bb.j ] ; 8 uses
  %i.bc = icmp eq i64 %i.as, 0
  %i.bd = and i64 %i.as, 7
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = or i1 %i.bc, %i.be
  br i1 %i.bf, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit19.thread
  %i.bg = inttoptr i64 %i.as to ptr
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !44
  %i.bi = and i64 %i.bh, 31
  %i.bj = icmp eq i64 %i.bi, 5
  br i1 %i.bj, label %bb.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.bk = icmp eq i64 %.014, 4
  %i.bl = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #17 ; 2 uses
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.111, ptr noundef %i.bl) #17
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bn = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %.014, ptr noundef nonnull @.str.111, ptr noundef %i.bl) #17 ; 0 uses
  br label %.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit19.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.bo = trunc i64 %i.as to i1
  br i1 %i.bo, label %bb.o, label %bb.s

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bp = call i64 @rb_fix2int(i64 noundef %i.as) #17
  %i.bq = and i64 %i.bp, 4294967295
  %.not17 = icmp eq i64 %i.bq, 0
  br i1 %.not17, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = icmp eq i64 %.014, 4
  %i.bs = call i64 @rb_fix2int(i64 noundef %i.as) #17
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.19, i32 noundef %i.bt) #17
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bv = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %.014, ptr noundef nonnull @.str.19, i32 noundef %i.bt) #17 ; 0 uses
  br label %.thread

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.o, %bb.q, %bb.m
  %.115 = phi i64 [ %i.bm, %bb.m ], [ %.014, %bb.o ], [ %i.bu, %bb.q ], [ %.014, %rbimpl_RB_TYPE_P_fastpath.exit.thread ] ; 2 uses
  %i.bw = icmp eq i64 %.115, 4
  br i1 %i.bw, label %bb.t, label %.thread

.thread:                                          ; preds = %bb.r, %bb.n, %bb.s
  %.11532 = phi i64 [ %.115, %bb.s ], [ %.014, %bb.n ], [ %.014, %bb.r ] ; 2 uses
  call void @rb_obj_freeze_inline(i64 noundef %.11532) #17
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %.11533 = phi i64 [ %.11532, %.thread ], [ 4, %bb.s ]
  ret i64 %.11533
}

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #3

declare i64 @rsock_intern_protocol_family(i32 noundef) local_unnamed_addr #3

declare i64 @rsock_intern_socktype(i32 noundef) local_unnamed_addr #3

declare i64 @rsock_intern_ipproto(i32 noundef) local_unnamed_addr #3

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i64 @addrinfo_firstonly_new(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 0) %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @call_getaddrinfo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 1, i32 noundef 0, i64 noundef 4) ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 9 uses
  %i.c = tail call fastcc i64 @make_inspectname(i64 noundef %0, i64 noundef %1, ptr noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %i.e) #17 ; 2 uses
  tail call void @rb_obj_freeze_inline(i64 noundef %i.f) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.f, %bb.b ], [ 4, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69
  %i.q = tail call i64 @rsock_addrinfo_new(ptr noundef %i.h, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.p, i64 noundef %.0, i64 noundef %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !10
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  tail call void @freeaddrinfo(ptr noundef nonnull %i.b) #17
  br label %rb_freeaddrinfo.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.014.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.b, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.014.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  tail call void @ruby_xfree(ptr noundef %i.w) #17
  tail call void @ruby_xfree(ptr noundef nonnull %.014.i) #17
  %.not12.i = icmp eq ptr %i.u, null
  br i1 %.not12.i, label %rb_freeaddrinfo.exit, label %.lr.ph.i, !llvm.loop !20

rb_freeaddrinfo.exit:                             ; preds = %.lr.ph.i, %bb.d
  tail call void @ruby_xfree(ptr noundef nonnull %i.a) #17
  ret i64 %i.q
}

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_convert_type(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rsock_socktype_to_int(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rsock_ipproto_to_int(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 8}
!11 = !{!"rb_addrinfo", !12, i64 0, !7, i64 8}
!12 = !{!"p1 _ZTS8addrinfo", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!11, !12, i64 0}
!15 = !{!16, !12, i64 40}
!16 = !{!"addrinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !17, i64 24, !18, i64 32, !12, i64 40}
!17 = !{!"p1 _ZTS8sockaddr", !13, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!16, !17, i64 24}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!24, !17, i64 0}
!24 = !{!"getnameinfo_arg", !17, i64 0, !7, i64 8, !7, i64 12, !18, i64 16, !25, i64 24, !18, i64 32, !25, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !8, i64 72, !8, i64 112}
!25 = !{!"long", !8, i64 0}
!26 = !{!24, !7, i64 8}
!27 = !{!24, !18, i64 16}
!28 = !{!24, !25, i64 24}
!29 = !{!24, !18, i64 32}
!30 = !{!24, !25, i64 40}
!31 = !{!24, !7, i64 12}
!32 = !{!24, !7, i64 56}
!33 = !{!24, !7, i64 64}
!34 = !{!24, !7, i64 60}
!35 = !{!24, !7, i64 48}
!36 = !{!24, !7, i64 52}
!37 = distinct !{!37, !21}
!38 = !{!25, !25, i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"sockaddr_in", !41, i64 0, !41, i64 2, !42, i64 4, !8, i64 8}
!41 = !{!"short", !8, i64 0}
!42 = !{!"in_addr", !7, i64 0}
!43 = !{!40, !7, i64 4}
!44 = !{!45, !25, i64 0}
!45 = !{!"RBasic", !25, i64 0, !25, i64 8}
!46 = !{!8, !8, i64 0}
!47 = !{!48, !25, i64 16}
!48 = !{!"RString", !45, i64 0, !25, i64 16, !8, i64 24}
!49 = !{!16, !7, i64 8}
!50 = !{!18, !18, i64 0}
!51 = !{!16, !7, i64 0}
!52 = !{!12, !12, i64 0}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !21}
!55 = !{!56, !18, i64 0}
!56 = !{!"getaddrinfo_arg", !18, i64 0, !18, i64 8, !16, i64 16, !12, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !8, i64 96, !8, i64 136, !7, i64 184}
!57 = !{!56, !18, i64 8}
!58 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6, i64 16, i64 4, !6, i64 24, i64 8, !59, i64 32, i64 8, !50, i64 40, i64 8, !52}
!59 = !{!17, !17, i64 0}
!60 = !{!56, !12, i64 64}
!61 = !{!56, !7, i64 184}
!62 = !{!56, !7, i64 84}
!63 = !{!56, !7, i64 72}
!64 = !{!56, !7, i64 76}
!65 = !{!56, !7, i64 88}
!66 = !{!56, !7, i64 92}
!67 = !{!56, !7, i64 80}
!68 = !{!16, !7, i64 4}
!69 = !{!16, !7, i64 12}
!70 = !{!71, !41, i64 0}
!71 = !{!"sockaddr_in6", !41, i64 0, !41, i64 2, !7, i64 4, !72, i64 8, !7, i64 24}
!72 = !{!"in6_addr", !8, i64 0}
!73 = !{!71, !41, i64 2}
!74 = !{!16, !7, i64 16}
!75 = !{!16, !18, i64 32}
!76 = !{!40, !41, i64 2}
!77 = !{!78, !41, i64 0}
!78 = !{!"sockaddr", !41, i64 0, !8, i64 2}
!79 = distinct !{null}
!80 = distinct !{!80, !21}
!81 = !{!82, !25, i64 0}
!82 = !{!"hostent_arg", !25, i64 0, !83, i64 8, !13, i64 16}
!83 = !{!"p1 _ZTS11rb_addrinfo", !13, i64 0}
!84 = !{!82, !83, i64 8}
!85 = !{!82, !13, i64 16}
!86 = !{!87, !88, i64 8}
!87 = !{!"hostent", !18, i64 0, !88, i64 8, !7, i64 16, !7, i64 20, !88, i64 24}
!88 = !{!"p2 omnipotent char", !89, i64 0}
!89 = !{!"any p2 pointer", !13, i64 0}
!90 = distinct !{!90, !21}
!91 = distinct !{!91, !21}
!92 = !{!93, !25, i64 0}
!93 = !{!"", !25, i64 0, !25, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !8, i64 32}
!94 = !{!93, !25, i64 8}
!95 = !{!96, !13, i64 32}
!96 = !{!"RData", !45, i64 0, !13, i64 16, !13, i64 24, !13, i64 32}
!97 = !{!93, !7, i64 28}
!98 = !{!93, !7, i64 16}
!99 = !{!93, !7, i64 20}
!100 = !{!93, !7, i64 24}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21}
!103 = !{!104, !41, i64 2}
!104 = !{!"sockaddr_ll", !41, i64 0, !41, i64 2, !7, i64 4, !41, i64 8, !8, i64 10, !8, i64 11, !8, i64 12}
!105 = !{!104, !7, i64 4}
!106 = !{!104, !41, i64 8}
!107 = !{!104, !8, i64 10}
!108 = !{!104, !8, i64 11}
!109 = distinct !{!109, !21, !110}
!110 = !{!"llvm.loop.peeled.count", i32 1}
!111 = !{!112, !113, i64 16}
!112 = !{!"RFile", !45, i64 0, !113, i64 16}
!113 = !{!"p1 _ZTS5rb_io", !13, i64 0}
!114 = !{!115, !7, i64 16}
!115 = !{!"rb_io", !25, i64 0, !116, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !25, i64 32, !13, i64 40, !117, i64 48, !117, i64 68, !25, i64 88, !118, i64 96, !120, i64 128, !117, i64 136, !120, i64 160, !25, i64 168, !7, i64 176, !7, i64 180, !25, i64 184, !25, i64 192, !25, i64 200, !121, i64 208, !124, i64 224, !25, i64 232, !125, i64 240}
!116 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!117 = !{!"rb_io_internal_buffer", !18, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!118 = !{!"rb_io_encoding", !119, i64 0, !119, i64 8, !7, i64 16, !25, i64 24}
!119 = !{!"p1 _ZTS18OnigEncodingTypeST", !13, i64 0}
!120 = !{!"p1 _ZTS10rb_econv_t", !13, i64 0}
!121 = !{!"ccan_list_head", !122, i64 0}
!122 = !{!"ccan_list_node", !123, i64 0, !123, i64 8}
!123 = !{!"p1 _ZTS14ccan_list_node", !13, i64 0}
!124 = !{!"p1 _ZTS27rb_execution_context_struct", !13, i64 0}
!125 = !{!"long long", !8, i64 0}
!126 = !{!127, !127, i64 0}
!127 = !{!"p1 _ZTS32fast_fallback_getaddrinfo_shared", !13, i64 0}
!128 = !{!129, !127, i64 72}
!129 = !{!"fast_fallback_getaddrinfo_entry", !7, i64 0, !7, i64 4, !7, i64 8, !16, i64 16, !12, i64 64, !127, i64 72, !7, i64 80, !25, i64 88, !7, i64 96}
!130 = !{!129, !25, i64 88}
!131 = !{!132, !25, i64 0}
!132 = !{!"timespec", !25, i64 0, !25, i64 8}
!133 = !{!132, !25, i64 8}
!134 = !{!129, !7, i64 96}
!135 = !{!129, !12, i64 64}
!136 = !{!129, !7, i64 4}
!137 = !{!129, !7, i64 0}
!138 = !{!129, !7, i64 80}
!139 = !{!129, !7, i64 8}
!140 = distinct !{!140, !21}
!141 = !{!142, !41, i64 0}
!142 = !{!"sockaddr_un", !41, i64 0, !8, i64 2}
!143 = distinct !{!143, !21}
!144 = distinct !{!144, !21}
end_hunk_1
