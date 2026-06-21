inline.NumInlined: 312
inline.NumDeleted: 57
begin_hunk_0_@raddrinfo_host_str:bb.a
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
  %i.g = alloca ptr, align 8                      ; 5 uses
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
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.lr.ph.i
  %.not30.i = icmp eq i32 %.02334.i, 0
  br i1 %.not30.i, label %bb.x, label %.preheader.i

bb.x:                                             ; preds = %bb.w
  %i.bm = call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #18 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 1, ptr %i.bn, align 8, !tbaa !10
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !14
  br label %bb.z

.preheader.i:                                     ; preds = %bb.w, %.preheader.i
  %.126.i = phi ptr [ %i.bq, %.preheader.i ], [ %.02532.i, %bb.w ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.126.i, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !15 ; 2 uses
  %.not31.i = icmp eq ptr %i.bq, null
  br i1 %.not31.i, label %bb.y, label %.preheader.i, !llvm.loop !53

bb.y:                                             ; preds = %.preheader.i
  %i.br = getelementptr inbounds nuw i8, ptr %.126.i, i64 40
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %.lr.ph.i
  %.3 = phi ptr [ %i.bm, %bb.x ], [ %.254, %bb.y ], [ %.254, %.lr.ph.i ] ; 2 uses
  %.2.i = phi ptr [ %i.bo, %bb.x ], [ %i.bs, %bb.y ], [ %.02532.i, %.lr.ph.i ]
  %.1.i = phi i32 [ 1, %bb.x ], [ 1, %bb.y ], [ %.02334.i, %.lr.ph.i ] ; 2 uses
  %i.bt = add nuw nsw i64 %.02433.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %.027.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !54

._crit_edge.loopexit.i:                           ; preds = %bb.z
  %i.bu = icmp eq i32 %.1.i, 0
  br i1 %i.bu, label %.thread80, label %bb.bk

bb.aa:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.r, %bb.aa
  %i.bv = icmp eq i64 %4, 4
  br i1 %i.bv, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %.thread
  %i.bw = call double @rb_num2dbl(i64 noundef %4) #17 ; 2 uses
  %i.bx = fcmp olt double %i.bw, 0.000000e+00
  br i1 %i.bx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.by = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.by, ptr noundef nonnull @.str.100) #19
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bz = fmul double %i.bw, 1.000000e+03         ; 2 uses
  %i.ca = fcmp ogt double %i.bz, f0x41EFFFFFFFE00000
  br i1 %i.ca, label %bb.ae, label %rsock_value_timeout_to_msec.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cb = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cb, ptr noundef nonnull @.str.101) #19
  unreachable

rsock_value_timeout_to_msec.exit:                 ; preds = %bb.ad
  %i.cc = fadd double %i.bz, 5.000000e-01
  %i.cd = fptoui double %i.cc to i32
  br label %bb.af

bb.af:                                            ; preds = %.thread, %rsock_value_timeout_to_msec.exit
  %i.ce = phi i32 [ %i.cd, %rsock_value_timeout_to_msec.exit ], [ -1, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i.i50 = icmp eq ptr %i.k, null            ; 2 uses
  %.not47.i.i = icmp eq ptr %.0.i, null           ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.bh, %bb.af
  %5 = phi ptr [ %.promoted, %bb.af ], [ %6, %bb.bh ] ; 4 uses
  %.040.i = phi i32 [ 0, %bb.af ], [ %.141.i, %bb.bh ] ; 2 uses
  %.037.i = phi i32 [ 0, %bb.af ], [ %.1.i52, %bb.bh ] ; 2 uses
  br i1 %.not.i.i50, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #20
  %i.cg = add i64 %i.cf, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ch = phi i64 [ %i.cg, %bb.ah ], [ 0, %bb.ag ] ; 3 uses
  %i.ci = add i64 %i.ch, 192                      ; 2 uses
  br i1 %.not47.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cj = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i) #20
  %i.ck = add i64 %i.cj, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cl = phi i64 [ %i.ck, %bb.aj ], [ 0, %bb.ai ] ; 3 uses
  %i.cm = add i64 %i.cl, %i.ci                    ; 2 uses
  %i.cn = call noalias ptr @malloc(i64 noundef %i.cm) #18 ; 2 uses
  %.not48.i.i = icmp eq ptr %i.cn, null
  br i1 %.not48.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @rb_gc() #17
  %i.co = call noalias ptr @malloc(i64 noundef %i.cm) #18 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.co, null
  br i1 %.not49.i.i, label %rb_getaddrinfo.exit.thread, label %bb.am

rb_getaddrinfo.exit.thread:                       ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread74

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.041.i.i = phi ptr [ %i.cn, %bb.ak ], [ %i.co, %bb.al ] ; 22 uses
  br i1 %.not.i.i50, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cp = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 192 ; 2 uses
  store ptr %i.cp, ptr %.041.i.i, align 8, !tbaa !55
  %.not.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i, label %ruby_nonempty_memcpy.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull readonly align 1 %i.k, i64 %i.ch, i1 false)
  br label %ruby_nonempty_memcpy.exit.i.i

bb.ap:                                            ; preds = %bb.am
  store ptr null, ptr %.041.i.i, align 8, !tbaa !55
  br label %ruby_nonempty_memcpy.exit.i.i

ruby_nonempty_memcpy.exit.i.i:                    ; preds = %bb.ap, %bb.ao, %bb.an
  br i1 %.not47.i.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %ruby_nonempty_memcpy.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 %i.ci ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 8
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !57
  %.not.i50.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i50.i.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull readonly align 16 %.0.i, i64 %i.cl, i1 false)
  br label %bb.at

bb.as:                                            ; preds = %ruby_nonempty_memcpy.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 8
  store ptr null, ptr %i.cs, align 8, !tbaa !57
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ct = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !58
  %i.cu = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 64 ; 3 uses
  store ptr null, ptr %i.cu, align 8, !tbaa !60
  %i.cv = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 80 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 92
  %i.cx = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 88 ; 2 uses
  store <4 x i32> <i32 2, i32 0, i32 0, i32 0>, ptr %i.cv, align 8, !tbaa !6
  %i.cy = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 184
  store i32 %i.ce, ptr %i.cy, align 8, !tbaa !61
  %i.cz = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 96 ; 5 uses
  call void @rb_nativethread_lock_initialize(ptr noundef nonnull %i.cz) #17
  %i.da = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 136 ; 3 uses
  call void @rb_native_cond_initialize(ptr noundef nonnull %i.da) #17
  %i.db = call i32 @raddrinfo_pthread_create(ptr noundef nonnull %i.a, ptr noundef nonnull @fork_safe_do_getaddrinfo, ptr noundef nonnull %.041.i.i)
  %.not46.i = icmp eq i32 %i.db, 0
  br i1 %.not46.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dc = call ptr @rb_errno_ptr() #17
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !6
  call void @rb_native_cond_destroy(ptr noundef nonnull %i.da) #17
  call void @rb_nativethread_lock_destroy(ptr noundef nonnull %i.cz) #17
  call void @free(ptr noundef nonnull %.041.i.i) #17
  br label %allocate_getaddrinfo_arg.exit.thread.sink.split.i

bb.av:                                            ; preds = %bb.at
  %i.de = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 84
  %i.df = call ptr @rb_thread_call_without_gvl2(ptr noundef nonnull @wait_getaddrinfo, ptr noundef nonnull %.041.i.i, ptr noundef nonnull @cancel_getaddrinfo, ptr noundef nonnull %.041.i.i) #17 ; 0 uses
  call void @rb_nativethread_lock_lock(ptr noundef nonnull %i.cz) #17
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !62
  %.not47.not.i = icmp eq i32 %i.dg, 0            ; 2 uses
  br i1 %.not47.not.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dh = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 72
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !63 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 76
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !64 ; 2 uses
  %i.dl = icmp eq i32 %i.di, 0
  br i1 %i.dl, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.dm = load ptr, ptr %i.cu, align 8, !tbaa !60
  br label %bb.bb

bb.ay:                                            ; preds = %bb.av
  %i.dn = load i32, ptr %i.cx, align 8, !tbaa !65
  %.not48.i = icmp eq i32 %i.dn, 0
  br i1 %.not48.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.do = load i32, ptr %i.cw, align 4, !tbaa !66
  %i.dp = icmp eq i32 %i.do, 0
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  store i32 1, ptr %i.cx, align 8, !tbaa !65
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ax, %bb.aw
  %6 = phi ptr [ %i.dm, %bb.ax ], [ %5, %bb.aw ], [ %5, %bb.az ], [ %5, %bb.ba ] ; 3 uses
  %.141.i = phi i32 [ %i.dk, %bb.ax ], [ %i.dk, %bb.aw ], [ %.040.i, %bb.az ], [ %.040.i, %bb.ba ] ; 3 uses
  %.139.i = phi i1 [ true, %bb.ax ], [ true, %bb.aw ], [ %i.dp, %bb.az ], [ true, %bb.ba ]
  %.1.i52 = phi i32 [ 0, %bb.ax ], [ %i.di, %bb.aw ], [ %.037.i, %bb.az ], [ %.037.i, %bb.ba ] ; 3 uses
  %i.dq = load i32, ptr %i.cv, align 8, !tbaa !67
  %i.dr = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.dr, ptr %i.cv, align 8, !tbaa !67
  %.not50.i = icmp eq i32 %i.dr, 0
  call void @rb_nativethread_lock_unlock(ptr noundef nonnull %i.cz) #17
  br i1 %.not50.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @rb_native_cond_destroy(ptr noundef nonnull %i.da) #17
  call void @rb_nativethread_lock_destroy(ptr noundef nonnull %i.cz) #17
  call void @free(ptr noundef nonnull %.041.i.i) #17
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  br i1 %.139.i, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ds = load ptr, ptr %i.cu, align 8, !tbaa !60 ; 2 uses
  %.not54.i = icmp eq ptr %i.ds, null
  br i1 %.not54.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @rsock_raise_user_specified_timeout(ptr noundef nonnull %i.ds, i64 noundef 4, i64 noundef 4) #19
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.dt = call i64 @rb_str_new_cstr(ptr noundef %i.k) #17
  %i.du = call i64 @rb_str_new_cstr(ptr noundef %.0.i) #17
  call void @rsock_raise_user_specified_timeout(ptr noundef null, i64 noundef %i.dt, i64 noundef %i.du) #19
  unreachable

bb.bh:                                            ; preds = %bb.bd
  call void @rb_thread_check_ints() #17
  br i1 %.not47.not.i, label %bb.ag, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.not53.i = icmp eq i32 %.141.i, 0
  br i1 %.not53.i, label %rb_getaddrinfo.exit, label %allocate_getaddrinfo_arg.exit.thread.sink.split.i

allocate_getaddrinfo_arg.exit.thread.sink.split.i: ; preds = %bb.bi, %bb.au
  %7 = phi ptr [ %5, %bb.au ], [ %6, %bb.bi ]
  %.141.lcssa86.sink.i = phi i32 [ %i.dd, %bb.au ], [ %.141.i, %bb.bi ]
  %.0.ph.i = phi i32 [ -11, %bb.au ], [ %.1.i52, %bb.bi ]
  %i.dv = call ptr @rb_errno_ptr() #17
  store i32 %.141.lcssa86.sink.i, ptr %i.dv, align 4, !tbaa !6
  br label %rb_getaddrinfo.exit

rb_getaddrinfo.exit:                              ; preds = %bb.bi, %allocate_getaddrinfo_arg.exit.thread.sink.split.i
  %8 = phi ptr [ %7, %allocate_getaddrinfo_arg.exit.thread.sink.split.i ], [ %6, %bb.bi ]
  %.0.i51 = phi i32 [ %.0.ph.i, %allocate_getaddrinfo_arg.exit.thread.sink.split.i ], [ %.1.i52, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dw = icmp eq i32 %.0.i51, 0
  br i1 %i.dw, label %bb.bj, label %.thread74

bb.bj:                                            ; preds = %rb_getaddrinfo.exit
  %i.dx = call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #18 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i32 0, ptr %i.dy, align 8, !tbaa !10
  store ptr %8, ptr %i.dx, align 8, !tbaa !14
  br label %.thread68

.thread80:                                        ; preds = %rb_array_len.exit.i, %bb.s, %._crit_edge.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.thread74

bb.bk:                                            ; preds = %._crit_edge.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.thread68

.thread74:                                        ; preds = %rb_getaddrinfo.exit.thread, %rb_getaddrinfo.exit, %.thread80
  %.278 = phi i32 [ -2, %.thread80 ], [ -10, %rb_getaddrinfo.exit.thread ], [ %.0.i51, %rb_getaddrinfo.exit ]
  %.not44 = icmp eq ptr %i.k, null
  br i1 %.not44, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %.thread74
  %i.dz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #20
  %i.ea = getelementptr i8, ptr %i.k, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 -1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !46
  %i.ed = icmp eq i8 %i.ec, 10
  br i1 %i.ed, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ee = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ee, ptr noundef nonnull @.str.5) #19
  unreachable

bb.bn:                                            ; preds = %bb.bl, %.thread74
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.6, i32 noundef %.278) #19
  unreachable

.thread68:                                        ; preds = %bb.bj, %bb.p, %bb.bk
  %.172 = phi ptr [ %.3, %bb.bk ], [ %i.dx, %bb.bj ], [ %i.ar, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  ret ptr %.172
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -4, 1) i32 @numeric_getaddrinfo(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 13 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %parse_numeric_port.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %parse_numeric_port.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strspn(ptr noundef nonnull %1, ptr noundef nonnull @.str.99) #20
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %.not10.i = icmp eq i64 %i.c, %i.d
  br i1 %.not10.i, label %bb.d, label %parse_numeric_port.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @rb_errno_ptr() #17
  store i32 0, ptr %i.e, align 4, !tbaa !6
  %i.f = tail call i64 @ruby_strtoul(ptr noundef nonnull %1, ptr noundef null, i32 noundef 10) #17 ; 2 uses
  %i.g = tail call ptr @rb_errno_ptr() #17
  %i.h = load i32, ptr %i.g, align 4, !tbaa !6
  %.not11.i = icmp ne i32 %i.h, 0
  %i.i = icmp ugt i64 %i.f, 65535
  %or.cond.i = select i1 %.not11.i, i1 true, i1 %i.i
  br i1 %or.cond.i, label %parse_numeric_port.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = trunc nuw i64 %i.f to i16
  %i.k = tail call i16 @llvm.bswap.i16(i16 %i.j)
  br label %parse_numeric_port.exit

parse_numeric_port.exit:                          ; preds = %bb.e, %bb.b
  %.0 = phi i16 [ %i.k, %bb.e ], [ 0, %bb.b ]     ; 12 uses
  %.not101 = icmp eq ptr %2, null
  br i1 %.not101, label %.thread114, label %bb.f

.thread114:                                       ; preds = %parse_numeric_port.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br label %bb.g

bb.f:                                             ; preds = %parse_numeric_port.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !68   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !49   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !69   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  switch i32 %i.m, label %parse_numeric_port.exit.thread.sink.split [
    i32 10, label %bb.g
    i32 0, label %bb.g
    i32 2, label %bb.s
  ]

bb.g:                                             ; preds = %.thread114, %bb.f, %bb.f
  %i.r = phi i32 [ 0, %.thread114 ], [ %i.q, %bb.f ], [ %i.q, %bb.f ]
  %i.s = phi i32 [ 0, %.thread114 ], [ %i.m, %bb.f ], [ %i.m, %bb.f ]
  %i.t = phi i32 [ 0, %.thread114 ], [ %i.o, %bb.f ], [ %i.o, %bb.f ] ; 6 uses
  %.fr130 = freeze i32 %i.r                       ; 13 uses
  %i.u = tail call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.97) #20
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.x = call i32 @inet_pton(i32 noundef 10, ptr noundef nonnull %0, ptr noundef nonnull %i.b) #17
  %.not102 = icmp eq i32 %i.x, 0
  br i1 %.not102, label %bb.r, label %.preheader118

.preheader118:                                    ; preds = %bb.h
  %i.y = icmp eq i32 %i.t, 0
  %i.z = icmp eq i32 %.fr130, 0                   ; 4 uses
  br i1 %i.y, label %.preheader118.split.us.preheader, label %.preheader118.split

.preheader118.split.us.preheader:                 ; preds = %.preheader118
  %i.aa = call noalias nonnull dereferenceable(48) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 48) #21 ; 9 uses
  %i.ab = call noalias nonnull dereferenceable(28) ptr @ruby_xmalloc(i64 noundef 28) #18 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  store i16 10, ptr %i.ab, align 4, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ad, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i16 %.0, ptr %i.ae, align 2, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 10, ptr %i.af, align 4, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 3, ptr %i.ag, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  br i1 %i.z, label %.preheader118.split.us.1.thread, label %bb.i

.preheader118.split.us.1.thread:                  ; preds = %.preheader118.split.us.preheader
  store i32 0, ptr %i.ah, align 4, !tbaa !69
  store i32 28, ptr %i.ai, align 8, !tbaa !74
  store ptr %i.ab, ptr %i.aj, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %.preheader118.split.us.preheader
  store i32 %.fr130, ptr %i.ah, align 4, !tbaa !69
  store i32 28, ptr %i.ai, align 8, !tbaa !74
  store ptr %i.ab, ptr %i.aj, align 8, !tbaa !19
  %i.al = icmp eq i32 %.fr130, 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  br i1 %i.al, label %bb.j, label %.preheader118.split.us.2.thread

bb.j:                                             ; preds = %.preheader118.split.us.1.thread, %bb.i
  %i.am = call noalias nonnull dereferenceable(48) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 48) #21 ; 9 uses
  %i.an = call noalias nonnull dereferenceable(28) ptr @ruby_xmalloc(i64 noundef 28) #18 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  store i16 10, ptr %i.an, align 4, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ap, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store i16 %.0, ptr %i.aq, align 2, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 10, ptr %i.ar, align 4, !tbaa !68
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 2, ptr %i.as, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  br i1 %i.z, label %.preheader118.split.us.2.thread158, label %.preheader118.split.us.2

.preheader118.split.us.2.thread158:               ; preds = %bb.j
  store i32 17, ptr %i.at, align 4, !tbaa !69
  store i32 28, ptr %i.au, align 8, !tbaa !74
  store ptr %i.an, ptr %i.av, align 8, !tbaa !19
  store ptr null, ptr %i.aw, align 8, !tbaa !75
  store ptr %i.aa, ptr %i.ax, align 8, !tbaa !15
  br label %bb.k

.preheader118.split.us.2:                         ; preds = %bb.j
  store i32 %.fr130, ptr %i.at, align 4, !tbaa !69
  store i32 28, ptr %i.au, align 8, !tbaa !74
  store ptr %i.an, ptr %i.av, align 8, !tbaa !19
  store ptr null, ptr %i.aw, align 8, !tbaa !75
  store ptr %i.aa, ptr %i.ax, align 8, !tbaa !15
  br label %.preheader118.split.us.2.thread

.preheader118.split.us.2.thread:                  ; preds = %bb.i, %.preheader118.split.us.2
  %.185.us.1156 = phi ptr [ %i.am, %.preheader118.split.us.2 ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ay = icmp eq i32 %.fr130, 6
  br i1 %i.ay, label %bb.k, label %.loopexit.thread
end_hunk_0
