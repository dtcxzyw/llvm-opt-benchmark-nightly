inline.NumInlined: 312
inline.NumDeleted: 57
begin_hunk_0_@wait_getnameinfo:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @rb_native_cond_wait(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #17
  %i.g = load i32, ptr %i.c, align 4, !tbaa !34
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.critedge, !llvm.loop !37

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  tail call void @rb_nativethread_lock_unlock(ptr noundef nonnull %i.a) #17
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal void @cancel_getnameinfo(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @rb_nativethread_lock_lock(ptr noundef nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @rb_native_cond_signal(ptr noundef nonnull %i.c) #17
  tail call void @rb_nativethread_lock_unlock(ptr noundef nonnull %i.a) #17
  ret void
}

declare void @rb_nativethread_lock_lock(ptr noundef) local_unnamed_addr #3

declare void @rb_nativethread_lock_unlock(ptr noundef) local_unnamed_addr #3

declare void @rb_thread_check_ints() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @rsock_make_ipaddr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call i32 @getnameinfo(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef null, i32 noundef 0, i32 noundef 1) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %make_ipaddr0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.8, i32 noundef %i.b) #19
  unreachable

make_ipaddr0.exit:                                ; preds = %bb.a
  %i.c = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.c
}

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef ptr @raddrinfo_host_str(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.sockaddr_in, align 4        ; 5 uses
  %5 = alloca %struct.sockaddr_in, align 4        ; 6 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !38
  %i.b = icmp eq i64 %0, 4
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_cInteger, align 8, !tbaa !38
  %i.d = tail call i64 @rb_obj_is_kind_of(i64 noundef %0, i64 noundef %i.c) #17
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @rb_num2uint(i64 noundef %0) #17
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call noundef i32 @llvm.bswap.i32(i32 %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i16 2, ptr %5, align 4, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !43
  %i.i = trunc i64 %2 to i32
  %i.j = call i32 @getnameinfo(ptr noundef nonnull %5, i32 noundef 16, ptr noundef %1, i32 noundef %i.i, ptr noundef null, i32 noundef 0, i32 noundef 1) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %make_inetaddr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.8, i32 noundef %i.j) #19
  unreachable

make_inetaddr.exit:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not42 = icmp eq ptr %3, null
  br i1 %.not42, label %bb.r, label %bb.e

bb.e:                                             ; preds = %make_inetaddr.exit
  %i.k = load i32, ptr %3, align 4, !tbaa !6
  %i.l = or i32 %i.k, 4
  store i32 %i.l, ptr %3, align 4, !tbaa !6
  br label %bb.r

bb.f:                                             ; preds = %bb.b
  %i.m = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !38
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44
  %i.q = and i64 %i.p, 8192
  %.not.i = icmp eq i64 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.f, %bb.g
  %i.t = phi ptr [ %i.s, %bb.g ], [ %i.r, %bb.f ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !47   ; 7 uses
  %.not37 = icmp eq i64 %i.v, 0
  br i1 %.not37, label %bb.j, label %bb.h

bb.h:                                             ; preds = %RSTRING_PTR.exit
  %i.w = load i8, ptr %i.t, align 1, !tbaa !46
  %i.x = icmp eq i8 %i.w, 60                      ; 2 uses
  %i.y = icmp eq i64 %i.v, 5
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %i.t, align 1
  %i.aa = xor i32 %i.z, 2037276988
  %i.ab = getelementptr i8, ptr %i.t, i64 4
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = xor i32 %i.ad, 62
  %i.af = or i32 %i.aa, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i, %RSTRING_PTR.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i16 2, ptr %4, align 4, !tbaa !39
  %i.aj = trunc i64 %2 to i32
  %i.ak = call i32 @getnameinfo(ptr noundef nonnull %4, i32 noundef 16, ptr noundef %1, i32 noundef %i.aj, ptr noundef null, i32 noundef 0, i32 noundef 1) #17 ; 2 uses
  %.not.i.i43 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i43, label %make_inetaddr.exit44, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.8, i32 noundef %i.ak) #19
  unreachable

make_inetaddr.exit44:                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.not41 = icmp eq ptr %3, null
  br i1 %.not41, label %bb.r, label %bb.l

bb.l:                                             ; preds = %make_inetaddr.exit44
  %i.al = load i32, ptr %3, align 4, !tbaa !6
  %i.am = or i32 %i.al, 4
  store i32 %i.am, ptr %3, align 4, !tbaa !6
  br label %bb.r

bb.m:                                             ; preds = %bb.h
  %i.an = icmp eq i64 %i.v, 11
  %or.cond3 = and i1 %i.an, %i.x
  br i1 %or.cond3, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ao = load i64, ptr %i.t, align 1
  %i.ap = xor i64 %i.ao, 7017563014017737276
  %i.aq = getelementptr i8, ptr %i.t, i64 3
  %i.ar = load i64, ptr %i.aq, align 1
  %i.as = xor i64 %i.ar, 4500348789766513007
  %i.at = or i64 %i.ap, %i.as
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  call fastcc void @make_inetaddr(i32 noundef -1, ptr noundef %1, i64 noundef %2)
  %.not40 = icmp eq ptr %3, null
  br i1 %.not40, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load i32, ptr %3, align 4, !tbaa !6
  %i.ay = or i32 %i.ax, 4
  store i32 %i.ay, ptr %3, align 4, !tbaa !6
  br label %bb.r

.thread:                                          ; preds = %bb.i, %bb.n, %bb.m
  %.not39 = icmp ult i64 %i.v, %2
  br i1 %.not39, label %ruby_nonempty_memcpy.exit, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.az = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.az, ptr noundef nonnull @.str.2, i64 noundef %i.v) #19
  unreachable

ruby_nonempty_memcpy.exit:                        ; preds = %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.t, i64 %i.v, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  store i8 0, ptr %i.ba, align 1, !tbaa !46
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %make_inetaddr.exit44, %bb.o, %bb.p, %ruby_nonempty_memcpy.exit, %make_inetaddr.exit, %bb.e, %bb.a
  %.0 = phi ptr [ %1, %make_inetaddr.exit ], [ null, %bb.a ], [ %1, %bb.e ], [ %1, %ruby_nonempty_memcpy.exit ], [ %1, %bb.p ], [ %1, %bb.o ], [ %1, %make_inetaddr.exit44 ], [ %1, %bb.l ]
  ret ptr %.0
}

declare i64 @rb_obj_is_kind_of(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @make_inetaddr(i32 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sockaddr_in, align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store i16 2, ptr %3, align 4, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %0, ptr %i.a, align 4, !tbaa !43
  %i.b = trunc i64 %2 to i32
  %i.c = call i32 @getnameinfo(ptr noundef nonnull %3, i32 noundef 16, ptr noundef %1, i32 noundef %i.b, ptr noundef null, i32 noundef 0, i32 noundef 1) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %make_ipaddr0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.8, i32 noundef %i.c) #19
  unreachable

make_ipaddr0.exit:                                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef ptr @raddrinfo_port_str(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !38
  %i.b = icmp eq i64 %0, 4
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %0 to i1
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = ashr i64 %0, 1
  %i.e = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.3, i64 noundef %i.d) #17 ; 0 uses
  %.not16 = icmp eq ptr %3, null
  br i1 %.not16, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %3, align 4, !tbaa !6
  %i.g = or i32 %i.f, 1024
  store i32 %i.g, ptr %3, align 4, !tbaa !6
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.h = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !38
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = and i64 %i.k, 8192
  %.not.i = icmp eq i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.e, %bb.f
  %i.o = phi ptr [ %i.n, %bb.f ], [ %i.m, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !47   ; 5 uses
  %.not = icmp ult i64 %i.q, %2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit
  %i.r = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.4, i64 noundef %i.q) #19
  unreachable

bb.h:                                             ; preds = %RSTRING_PTR.exit
  %.not.i17 = icmp eq i64 %i.q, 0
  br i1 %.not.i17, label %ruby_nonempty_memcpy.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr readonly align 1 %i.o, i64 %i.q, i1 false)
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.h, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  store i8 0, ptr %i.s, align 1, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.a, %ruby_nonempty_memcpy.exit
  %.0 = phi ptr [ %1, %ruby_nonempty_memcpy.exit ], [ null, %bb.a ], [ %1, %bb.d ], [ %1, %bb.c ]
  ret ptr %.0
}

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noalias ptr @rsock_getaddrinfo(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca [1025 x i8], align 16             ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca [1025 x i8], align 16             ; 3 uses
  %i.i = alloca [32 x i8], align 16               ; 7 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  store i32 0, ptr %i.j, align 4, !tbaa !6
  %i.k = call ptr @raddrinfo_host_str(i64 noundef %0, ptr noundef nonnull %i.h, i64 noundef 1025, ptr noundef nonnull %i.j) ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %1, ptr %i.f, align 8, !tbaa !38
  %i.l = icmp eq i64 %1, 4
  br i1 %i.l, label %raddrinfo_port_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = trunc i64 %1 to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = ashr i64 %1, 1
  %i.o = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.i, i64 noundef 32, ptr noundef nonnull @.str.3, i64 noundef %i.n) #17 ; 0 uses
  %i.p = load i32, ptr %i.j, align 4, !tbaa !6
  %i.q = or i32 %i.p, 1024
  store i32 %i.q, ptr %i.j, align 4, !tbaa !6
  br label %raddrinfo_port_str.exit

bb.d:                                             ; preds = %bb.b
  %i.r = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.f) #17 ; 0 uses
  %i.s = load i64, ptr %i.f, align 8, !tbaa !38
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44
  %i.v = and i64 %i.u, 8192
  %.not.i.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.e, %bb.d
  %i.y = phi ptr [ %i.x, %bb.e ], [ %i.w, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47  ; 5 uses
  %.not.i = icmp ult i64 %i.aa, 32
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit.i
  %i.ab = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.4, i64 noundef %i.aa) #19
  unreachable

bb.g:                                             ; preds = %RSTRING_PTR.exit.i
  %.not.i17.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i17.i, label %ruby_nonempty_memcpy.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.i, ptr readonly align 1 %i.y, i64 %i.aa, i1 false)
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aa
  store i8 0, ptr %i.ac, align 1, !tbaa !46
  br label %raddrinfo_port_str.exit

raddrinfo_port_str.exit:                          ; preds = %bb.a, %bb.c, %ruby_nonempty_memcpy.exit.i
  %.0.i = phi ptr [ %i.i, %ruby_nonempty_memcpy.exit.i ], [ null, %bb.a ], [ %i.i, %bb.c ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.o, label %bb.i

bb.i:                                             ; preds = %raddrinfo_port_str.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !49
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %.not.i46 = icmp eq ptr %.0.i, null
  br i1 %.not.i46, label %str_is_number.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load i8, ptr %.0.i, align 16, !tbaa !46
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %str_is_number.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.e, align 8, !tbaa !50
  %i.ai = call i64 @ruby_strtoul(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.e, i32 noundef 10) #17 ; 0 uses
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  %.not5.i = icmp eq ptr %i.aj, null
  br i1 %.not5.i, label %str_is_number.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !46
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.n, label %str_is_number.exit.thread

str_is_number.exit.thread:                        ; preds = %bb.j, %bb.k, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  store i32 2, ptr %i.ad, align 8, !tbaa !49
  br label %bb.o

bb.o:                                             ; preds = %str_is_number.exit.thread, %bb.n, %bb.i, %raddrinfo_port_str.exit
  %i.am = load i32, ptr %i.j, align 4, !tbaa !6
  %i.an = load i32, ptr %2, align 8, !tbaa !51
  %i.ao = or i32 %i.an, %i.am
  store i32 %i.ao, ptr %2, align 8, !tbaa !51
  %i.ap = call fastcc i32 @numeric_getaddrinfo(ptr noundef %i.k, ptr noundef %.0.i, ptr noundef nonnull %2, ptr noundef nonnull %i.g)
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ar = call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #18 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 1, ptr %i.as, align 8, !tbaa !10
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !52
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !14
  br label %.thread68

bb.q:                                             ; preds = %bb.o
  %i.au = call i64 @rb_fiber_scheduler_current() #17 ; 2 uses
  %i.av = icmp ne i64 %i.au, 4
  %i.aw = icmp ne ptr %i.k, null
  %or.cond = and i1 %i.aw, %i.av
  br i1 %or.cond, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ax = load i32, ptr %2, align 8, !tbaa !51
  %i.ay = and i32 %i.ax, 4
  %.not40 = icmp eq i32 %i.ay, 0
  br i1 %.not40, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.az = call i64 @rb_fiber_scheduler_address_resolve(i64 noundef range(i64 5, 4) %i.au, i64 noundef %0) #17 ; 3 uses
  switch i64 %i.az, label %bb.t [
    i64 36, label %bb.aa
    i64 4, label %.thread80
  ]

bb.t:                                             ; preds = %bb.s
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !44 ; 2 uses
  %i.bc = and i64 %i.bb, 8192
  %.not.i.i49 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i49, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = lshr i64 %i.bb, 15
  %i.be = and i64 %i.bd, 127
  br label %rb_array_len.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.v, %bb.u
  %.027.i = phi i64 [ %i.bg, %bb.v ], [ %i.be, %bb.u ] ; 2 uses
  %i.bh = icmp sgt i64 %.027.i, 0
  br i1 %i.bh, label %.lr.ph.i, label %.thread80

.lr.ph.i:                                         ; preds = %rb_array_len.exit.i, %bb.z
  %.254 = phi ptr [ %.3, %bb.z ], [ null, %rb_array_len.exit.i ] ; 2 uses
  %.02334.i = phi i32 [ %.1.i, %bb.z ], [ 0, %rb_array_len.exit.i ] ; 2 uses
  %.02433.i = phi i64 [ %i.bt, %bb.z ], [ 0, %rb_array_len.exit.i ] ; 2 uses
  %.02532.i = phi ptr [ %.2.i, %bb.z ], [ null, %rb_array_len.exit.i ] ; 2 uses
  %i.bi = call i64 @rb_ary_entry(i64 noundef %i.az, i64 noundef %.02433.i) #20
  %i.bj = call ptr @raddrinfo_host_str(i64 noundef %i.bi, ptr noundef nonnull %i.d, i64 noundef 1025, ptr noundef nonnull %i.b)
  %i.bk = call fastcc i32 @numeric_getaddrinfo(ptr noundef %i.bj, ptr noundef %.0.i, ptr noundef nonnull readonly %2, ptr noundef nonnull %i.c)
end_hunk_0
begin_hunk_1_@ruby_xcalloc

declare i64 @rb_fiber_scheduler_address_resolve(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #11

declare double @rb_num2dbl(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @fork_safe_do_getaddrinfo(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_thread_prevent_fork(ptr noundef nonnull @do_getaddrinfo, ptr noundef %0) #17
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @wait_getaddrinfo(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  tail call void @rb_nativethread_lock_lock(ptr noundef nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !62
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.h = load i32, ptr %i.b, align 8, !tbaa !65
  %.not1723 = icmp eq i32 %i.h, 0
  br i1 %.not1723, label %.lr.ph24, label %.critedge

.lr.ph24:                                         ; preds = %.lr.ph, %.backedge
  %i.i = load i32, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph24
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @rb_native_cond_timedwait(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i64 noundef %i.j) #17
  %i.m = load i32, ptr %i.c, align 4, !tbaa !62
  %.not18 = icmp eq i32 %i.m, 0
  br i1 %.not18, label %bb.e, label %.critedge

bb.d:                                             ; preds = %bb.b
  tail call void @rb_native_cond_wait(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #17
  %.pre = load i32, ptr %i.c, align 4, !tbaa !62
  %i.n = icmp eq i32 %.pre, 0
  br i1 %i.n, label %.backedge, label %.critedge

.backedge:                                        ; preds = %bb.d, %bb.e
  %i.o = load i32, ptr %i.b, align 8, !tbaa !65
  %.not17 = icmp eq i32 %i.o, 0
  br i1 %.not17, label %.lr.ph24, label %.critedge, !llvm.loop !144

bb.e:                                             ; preds = %bb.c, %.lr.ph24
  store i32 1, ptr %i.b, align 8, !tbaa !65
  store i32 1, ptr %i.g, align 4, !tbaa !66
  br label %.backedge

.critedge:                                        ; preds = %bb.d, %.backedge, %bb.c, %.lr.ph, %bb.a
  tail call void @rb_nativethread_lock_unlock(ptr noundef nonnull %i.a) #17
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal void @cancel_getaddrinfo(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @rb_nativethread_lock_lock(ptr noundef nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 1, ptr %i.b, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @rb_native_cond_signal(ptr noundef nonnull %i.c) #17
  tail call void @rb_nativethread_lock_unlock(ptr noundef nonnull %i.a) #17
  ret void
}

; Function Attrs: noreturn
declare void @rsock_raise_user_specified_timeout(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @do_getaddrinfo(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = tail call i32 @getaddrinfo(ptr noundef %i.a, ptr noundef %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.g = tail call ptr @rb_errno_ptr() #17
  %i.h = load i32, ptr %i.g, align 4, !tbaa !6
  %i.i = icmp eq i32 %i.f, -11
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @rb_errno_ptr() #17
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  %i.l = icmp eq i32 %i.k, 2
  %spec.select = select i1 %i.l, i32 -2, i32 -11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.019 = phi i32 [ %i.f, %bb.a ], [ %spec.select, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @rb_nativethread_lock_lock(ptr noundef nonnull %i.m) #17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.019, ptr %i.n, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.h, ptr %i.o, align 4, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !65
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %.not22 = icmp eq ptr %i.r, null
  br i1 %.not22, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @freeaddrinfo(ptr noundef nonnull %i.r) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 1, ptr %i.s, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @rb_native_cond_signal(ptr noundef nonnull %i.t) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !67
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !67
  %.not24 = icmp eq i32 %i.w, 0
  tail call void @rb_nativethread_lock_unlock(ptr noundef nonnull %i.m) #17
  br i1 %.not24, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @rb_native_cond_destroy(ptr noundef nonnull %i.x) #17
  tail call void @rb_nativethread_lock_destroy(ptr noundef nonnull %i.m) #17
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret ptr null
}

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_native_cond_timedwait(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #12

declare i64 @rb_ary_new() local_unnamed_addr #3

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gethostbyname(ptr noundef) local_unnamed_addr #3

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #3

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @addrinfo_mark(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !92
  tail call void @rb_gc_mark(i64 noundef %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !94
  tail call void @rb_gc_mark(i64 noundef %i.c) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @addrinfo_memsize(ptr nofree readnone captures(none) %0) #13 {
bb.a:
  ret i64 2080
}

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #3

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #3

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #14

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @rsock_family_arg(i64 noundef) local_unnamed_addr #3

declare i32 @rsock_socktype_arg(i64 noundef) local_unnamed_addr #3

declare i64 @rb_check_array_type(i64 noundef) local_unnamed_addr #3

declare i32 @rsock_family_to_int(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @rb_keyword_given_p() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @call_getaddrinfo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef range(i32 0, 2) %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.addrinfo, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  %i.a = icmp eq i64 %2, 4
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @rsock_family_arg(i64 noundef %2) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !68
  %i.e = icmp eq i64 %3, 4
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @rsock_socktype_arg(i64 noundef %3) #17
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = icmp eq i64 %4, 4
  br i1 %i.h, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = trunc i64 %4 to i1
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i64 @rb_fix2int(i64 noundef %4) #17
  br label %rb_num2int_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.k = tail call i64 @rb_num2int(i64 noundef %4) #17
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.j, %bb.g ], [ %i.k, %bb.h ]
  %i.l = trunc i64 %.0.i to i32
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %rb_num2int_inline.exit, %bb.e
  %i.n = icmp eq i64 %5, 4
  br i1 %i.n, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = trunc i64 %5 to i1
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.p = tail call i64 @rb_fix2int(i64 noundef %5) #17
  br label %rb_num2int_inline.exit14

bb.l:                                             ; preds = %bb.j
  %i.q = tail call i64 @rb_num2int(i64 noundef %5) #17
  br label %rb_num2int_inline.exit14

rb_num2int_inline.exit14:                         ; preds = %bb.k, %bb.l
  %.0.i13 = phi i64 [ %i.p, %bb.k ], [ %i.q, %bb.l ]
  %i.r = trunc i64 %.0.i13 to i32
  store i32 %i.r, ptr %8, align 8, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %rb_num2int_inline.exit14, %bb.i
  %i.s = call ptr @rsock_getaddrinfo(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %8, i32 noundef %6, i64 noundef %7) ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.u = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.110) #19
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret ptr %i.s
}

declare i64 @rb_str_equal(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @make_inspectname(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [1025 x i8], align 16             ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !38
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = call i32 @getnameinfo(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.b, i32 noundef 1025, ptr noundef nonnull %i.c, i32 noundef 32, i32 noundef 3) #17
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %0, 0
  %i.k = and i64 %0, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rbimpl_RB_TYPE_P_fastpath.exit24.thread, label %rbimpl_RB_TYPE_P_fastpath.exit24

rbimpl_RB_TYPE_P_fastpath.exit24:                 ; preds = %bb.c
  %i.n = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !44   ; 2 uses
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 5
  br i1 %i.q, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit24.thread

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit24
  %i.r = and i64 %i.o, 8192
  %.not.i = icmp eq i64 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.u = phi ptr [ %i.t, %bb.e ], [ %i.s, %bb.d ]
  %i.v = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.u) #20
  %i.w = icmp eq i32 %i.v, 0
  %spec.select = select i1 %i.w, i64 4, i64 %0
  br label %rbimpl_RB_TYPE_P_fastpath.exit24.thread

rbimpl_RB_TYPE_P_fastpath.exit24.thread:          ; preds = %bb.c, %RSTRING_PTR.exit, %rbimpl_RB_TYPE_P_fastpath.exit24
  %.0 = phi i64 [ %0, %rbimpl_RB_TYPE_P_fastpath.exit24 ], [ %spec.select, %RSTRING_PTR.exit ], [ %0, %bb.c ] ; 3 uses
  %i.x = icmp eq i64 %1, 0
  %i.y = and i64 %1, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rbimpl_RB_TYPE_P_fastpath.exit22.thread, label %rbimpl_RB_TYPE_P_fastpath.exit22

rbimpl_RB_TYPE_P_fastpath.exit22:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit24.thread
  %i.ab = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 5
  br i1 %i.ae, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit22.thread

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit22
  %i.af = and i64 %i.ac, 8192
  %.not.i25 = icmp eq i64 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  br i1 %.not.i25, label %RSTRING_PTR.exit26, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !46
  br label %RSTRING_PTR.exit26

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
  %i.a = tail call fastcc ptr @call_getaddrinfo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 1, i32 noundef 0, i64 noundef 4) ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = tail call fastcc i64 @make_inspectname(i64 noundef %0, i64 noundef %1, ptr noundef %i.b)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %i.f) #17 ; 2 uses
  tail call void @rb_obj_freeze_inline(i64 noundef %i.g) #17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 5 uses
  %.0 = phi i64 [ %i.g, %bb.b ], [ 4, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !69
  %i.s = tail call i64 @rsock_addrinfo_new(ptr noundef %i.j, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.r, i64 noundef %.0, i64 noundef %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !10
  %.not.i = icmp eq i32 %i.u, 0
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not11.i = icmp eq ptr %i.v, null              ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %rb_freeaddrinfo.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @freeaddrinfo(ptr noundef nonnull %i.v) #17
  br label %rb_freeaddrinfo.exit

bb.f:                                             ; preds = %bb.c
  br i1 %.not11.i, label %rb_freeaddrinfo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.v, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  tail call void @ruby_xfree(ptr noundef %i.z) #17
  tail call void @ruby_xfree(ptr noundef nonnull %.014.i) #17
  %.not12.i = icmp eq ptr %i.x, null
  br i1 %.not12.i, label %rb_freeaddrinfo.exit, label %.lr.ph.i, !llvm.loop !20

rb_freeaddrinfo.exit:                             ; preds = %.lr.ph.i, %bb.d, %bb.e, %bb.f
  tail call void @ruby_xfree(ptr noundef nonnull %i.a) #17
  ret i64 %i.s
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
