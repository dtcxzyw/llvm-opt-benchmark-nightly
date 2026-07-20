inline.NumInlined: 22
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@rsock_init_unixsocket:bb.a
  %i.d = load i64, ptr @rb_cUNIXSocket, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.d, ptr noundef nonnull @.str.7, ptr noundef nonnull @unix_addr, i32 noundef 0) #6
  %i.e = load i64, ptr @rb_cUNIXSocket, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.e, ptr noundef nonnull @.str.8, ptr noundef nonnull @unix_peeraddr, i32 noundef 0) #6
  %i.f = load i64, ptr @rb_cUNIXSocket, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.9, ptr noundef nonnull @unix_recvfrom, i32 noundef -1) #6
  %i.g = load i64, ptr @rb_cUNIXSocket, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.g, ptr noundef nonnull @.str.10, ptr noundef nonnull @unix_send_io, i32 noundef 1) #6
  %i.h = load i64, ptr @rb_cUNIXSocket, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.h, ptr noundef nonnull @.str.11, ptr noundef nonnull @unix_recv_io, i32 noundef -1) #6
  %i.i = load i64, ptr @rb_cUNIXSocket, align 8, !tbaa !19
  tail call void @rb_define_singleton_method(i64 noundef %i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @unix_s_socketpair, i32 noundef -1) #6
  %i.j = load i64, ptr @rb_cUNIXSocket, align 8, !tbaa !19
  tail call void @rb_define_singleton_method(i64 noundef %i.j, ptr noundef nonnull @.str.13, ptr noundef nonnull @unix_s_socketpair, i32 noundef -1) #6
  ret void
}

declare i64 @rb_define_class(ptr noundef, i64 noundef) local_unnamed_addr #4

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i64 @unix_init(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rsock_init_unixsock(i64 noundef %0, i64 noundef %1, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i64 @unix_path(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.sockaddr_un, align 2        ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #6
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = icmp eq i64 %i.g, 4
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 110, ptr %i.a, align 4, !tbaa !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %i.k = call i32 @getsockname(i32 noundef %i.j, ptr nonnull %1, ptr noundef nonnull %i.a) #6
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.f, align 8, !tbaa !29
  call void @rsock_sys_fail_path(ptr noundef nonnull @.str.14, i64 noundef %i.m) #7
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.o = icmp ugt i32 %i.n, 110
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 110, ptr %i.a, align 4, !tbaa !6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ 110, %bb.e ], [ %i.n, %bb.d ]
  %i.q = call i64 @rsock_unixpath_str(ptr noundef nonnull %1, i32 noundef %i.p) #6
  %i.r = call i64 @rb_obj_freeze(i64 noundef %i.q) #6 ; 2 uses
  store i64 %i.r, ptr %i.f, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.s = phi i64 [ %i.r, %bb.f ], [ %i.g, %bb.a ]
  %i.t = call i64 @rb_str_dup(i64 noundef %i.s) #6
  ret i64 %i.t
}

; Function Attrs: nounwind uwtable
define internal i64 @unix_addr(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.sockaddr_un, align 2        ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 110, ptr %i.a, align 4, !tbaa !6
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #6
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !42
  %i.h = call i32 @getsockname(i32 noundef %i.g, ptr nonnull %1, ptr noundef nonnull %i.a) #6
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29
  call void @rsock_sys_fail_path(ptr noundef nonnull @.str.14, i64 noundef %i.k) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.m = icmp ugt i32 %i.l, 110
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 110, ptr %i.a, align 4, !tbaa !6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ 110, %bb.d ], [ %i.l, %bb.c ]
  %i.o = call i64 @rsock_unixaddr(ptr noundef nonnull %1, i32 noundef %i.n) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i64 %i.o
}

; Function Attrs: nounwind uwtable
define internal i64 @unix_peeraddr(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.sockaddr_un, align 2        ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 110, ptr %i.a, align 4, !tbaa !6
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #6
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !42
  %i.h = call i32 @getpeername(i32 noundef %i.g, ptr nonnull %1, ptr noundef nonnull %i.a) #6
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29
  call void @rsock_sys_fail_path(ptr noundef nonnull @.str.15, i64 noundef %i.k) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.m = icmp ugt i32 %i.l, 110
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 110, ptr %i.a, align 4, !tbaa !6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ 110, %bb.d ], [ %i.l, %bb.c ]
  %i.o = call i64 @rsock_unixaddr(ptr noundef nonnull %1, i32 noundef %i.n) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i64 %i.o
}

; Function Attrs: nounwind uwtable
define internal i64 @unix_recvfrom(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rsock_s_recvfrom(i64 noundef %2, i32 noundef %0, ptr noundef %1, i32 noundef 2) #6
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @unix_send_io(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.iomsg_arg, align 8          ; 12 uses
  %3 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %4 = alloca %union.anon.17, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.b = load i64, ptr @rb_cIO, align 8, !tbaa !19
  %i.c = tail call i64 @rb_obj_is_kind_of(i64 noundef %1, i64 noundef %i.b) #6
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_io_taint_check(i64 noundef %1) #6
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.g) #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = trunc nuw i64 %1 to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @rb_fix2int(i64 noundef 1) #6
  %i.l = trunc i64 %i.k to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.16) #7
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  %storemerge = phi i32 [ %i.l, %bb.d ], [ %i.i, %bb.b ]
  %i.n = tail call i64 @rb_io_taint_check(i64 noundef %0) #6
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20   ; 4 uses
  tail call void @rb_io_check_closed(ptr noundef %i.q) #6
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !47
  store i8 0, ptr %i.a, align 1, !tbaa !18
  store ptr %i.a, ptr %3, align 16, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.t, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %3, ptr %i.u, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 1, ptr %i.v, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %4, ptr %i.w, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 20, ptr %i.x, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 0, ptr %i.y, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i64 20, ptr %4, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.aa, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 1, ptr %i.ab, align 4, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %storemerge, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !42
  store i32 %i.ae, ptr %2, align 8, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.af = call i64 @rb_io_blocking_region(ptr noundef %i.q, ptr noundef nonnull @sendmsg_blocking, ptr noundef nonnull %2) #6
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = icmp eq i64 %i.ag, 4294967295
  br i1 %i.ah, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %2, align 8, !tbaa !56
  %i.aj = call i32 @rb_io_wait_writable(i32 noundef %i.ai) #6
  %.not8 = icmp eq i32 %i.aj, 0
  br i1 %.not8, label %bb.i, label %bb.g, !llvm.loop !57

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !29
  call void @rsock_sys_fail_path(ptr noundef nonnull @.str.17, i64 noundef %i.al) #7
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal i64 @unix_recv_io(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.iomsg_arg, align 8          ; 12 uses
  %4 = alloca [2 x %struct.iovec], align 16       ; 5 uses
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %5 = alloca %union.anon.18, align 8             ; 9 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %bb.e, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %.not86 = icmp eq i32 %0, 0
  br i1 %.not86, label %.preheader.1, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.d = load i64, ptr %1, align 8, !tbaa !19
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 4, %.preheader.preheader ]
  %.286.i = phi i32 [ 1, %bb.b ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.f = icmp samesign ult i32 %.286.i, %0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.1
  %i.g = zext nneg i32 %.286.i to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19
  %i.j = add nuw nsw i32 %.286.i, 1
  br label %bb.d

bb.d:                                             ; preds = %.preheader.1, %bb.c
  %i.k = phi i64 [ %i.i, %bb.c ], [ 4, %.preheader.1 ]
  %.286.i.1 = phi i32 [ %i.j, %bb.c ], [ %.286.i, %.preheader.1 ]
  %i.l = icmp eq i32 %.286.i.1, %0
  br i1 %i.l, label %rb_scan_args_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #7
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d
  %i.m = icmp eq i32 %0, 0
  %i.n = icmp samesign ult i32 %0, 2
  %i.o = load i64, ptr @rb_cIO, align 8
  %i.p = select i1 %i.n, i64 4, i64 %i.k          ; 2 uses
  %i.q = select i1 %i.m, i64 %i.o, i64 %i.e       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %rb_scan_args_set.exit
  %.021 = phi i32 [ 0, %rb_scan_args_set.exit ], [ %.sink, %.backedge ] ; 5 uses
  %i.ac = call i64 @rb_io_taint_check(i64 noundef %2) #6
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 4 uses
  call void @rb_io_check_closed(ptr noundef %i.af) #6
  store ptr null, ptr %i.r, align 8, !tbaa !43
  store i32 0, ptr %i.s, align 8, !tbaa !47
  store ptr %i.a, ptr %4, align 16, !tbaa !48
  store i64 1, ptr %i.t, align 8, !tbaa !50
  store ptr %4, ptr %i.u, align 8, !tbaa !51
  store i64 1, ptr %i.v, align 8, !tbaa !52
  store ptr %5, ptr %i.w, align 8, !tbaa !53
  store i64 24, ptr %i.x, align 8, !tbaa !54
  store i32 0, ptr %i.y, align 8, !tbaa !55
  store i64 20, ptr %5, align 8, !tbaa !18
  store i32 1, ptr %i.z, align 8, !tbaa !18
  store i32 1, ptr %i.aa, align 4, !tbaa !18
  store i32 -1, ptr %i.ab, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !42
  store i32 %i.ah, ptr %3, align 8, !tbaa !56
  %.not31 = trunc nuw i32 %.021 to i1
  %i.ai = and i32 %.021, 4
  %.not32 = icmp eq i32 %i.ai, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %i.aj = call i64 @rb_io_blocking_region(ptr noundef %i.af, ptr noundef nonnull @recvmsg_blocking, ptr noundef nonnull %3) #6
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = icmp eq i64 %i.ak, 4294967295
  br i1 %i.al, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.am = call ptr @rb_errno_ptr() #6
  %i.an = load i32, ptr %i.am, align 4, !tbaa !6  ; 3 uses
  %6 = icmp ne i32 %i.an, 90
  %or.cond = select i1 %6, i1 true, i1 %.not31
  br i1 %or.cond, label %bb.i, label %.backedge

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp eq i32 %i.an, 12
  %or.cond34 = select i1 %i.ao, i1 %.not32, i1 false
  br i1 %or.cond34, label %7, label %bb.j

7:                                                ; preds = %bb.i
  %8 = or disjoint i32 %.021, 4
  br label %.backedge

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %3, align 8, !tbaa !56
  %i.aq = call i32 @rb_io_wait_readable(i32 noundef %i.ap) #6
  %.not33 = icmp eq i32 %i.aq, 0
  br i1 %.not33, label %bb.k, label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !29
  call void @rsock_syserr_fail_path(i32 noundef %i.an, ptr noundef nonnull @.str.19, i64 noundef %i.as) #7
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.at = load i64, ptr %i.x, align 8, !tbaa !54  ; 6 uses
  %i.au = icmp ult i64 %i.at, 16
  br i1 %i.au, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.av = and i32 %.021, 2
  %.not30 = icmp eq i32 %i.av, 0
  br i1 %.not30, label %9, label %bb.n

9:                                                ; preds = %bb.m
  %10 = or disjoint i32 %.021, 2
  br label %.backedge

.backedge:                                        ; preds = %bb.h, %7, %9
  %.sink98 = phi i32 [ 12, %7 ], [ 24, %9 ], [ 24, %bb.h ]
  %.sink = phi i32 [ %8, %7 ], [ %10, %9 ], [ 1, %bb.h ]
  %i.aw = call i32 @rb_gc_for_fd(i32 noundef %.sink98) #6 ; 0 uses
  br label %bb.f

bb.n:                                             ; preds = %bb.m
  %i.ax = load i64, ptr @rb_eSocket, align 8, !tbaa !19
  %i.ay = trunc nuw nsw i64 %i.at to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ax, ptr noundef nonnull @.str.20, i32 noundef %i.ay, i32 noundef 16) #7
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.az = load i32, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %.not = icmp eq i32 %i.az, 1
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = load i64, ptr @rb_eSocket, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ba, ptr noundef nonnull @.str.21, i32 noundef %i.az, i32 noundef 1) #7
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %i.aa, align 4, !tbaa !18 ; 2 uses
  %.not28 = icmp eq i32 %i.bb, 1
  br i1 %.not28, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = load i64, ptr @rb_eSocket, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bc, ptr noundef nonnull @.str.22, i32 noundef %i.bb, i32 noundef 1) #7
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bd = icmp ult i64 %i.at, 20
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.be = load i64, ptr @rb_eSocket, align 8, !tbaa !19
  %i.bf = trunc nuw nsw i64 %i.at to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.be, ptr noundef nonnull @.str.23, i32 noundef %i.bf, i32 noundef 20) #7
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bg = icmp ugt i64 %i.at, 24
  br i1 %i.bg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bh = load i64, ptr @rb_eSocket, align 8, !tbaa !19
  %i.bi = trunc i64 %i.at to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bh, ptr noundef nonnull @.str.24, i32 noundef %i.bi, i32 noundef 24) #7
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bj = load i64, ptr %5, align 8, !tbaa !18
  %.not29 = icmp eq i64 %i.bj, 20
  br i1 %.not29, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @rsock_discard_cmsg_resource(ptr noundef nonnull %i.r, i32 noundef 0) #6
  %i.bk = load i64, ptr @rb_eSocket, align 8, !tbaa !19
  %i.bl = load i64, ptr %5, align 8, !tbaa !18
  %i.bm = trunc i64 %i.bl to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bk, ptr noundef nonnull @.str.25, i32 noundef %i.bm, i32 noundef 20) #7
  unreachable

bb.y:                                             ; preds = %bb.w
  %.0.copyload39 = load i32, ptr %i.ab, align 8   ; 4 uses
  call void @rb_update_max_fd(i32 noundef %.0.copyload39) #6
  call void @rb_maygvl_fd_fix_cloexec(i32 noundef %.0.copyload39) #6
  %i.bn = icmp eq i64 %i.q, 4
  br i1 %i.bn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bo = sext i32 %.0.copyload39 to i64
  %i.bp = shl nsw i64 %i.bo, 1
  %i.bq = or disjoint i64 %i.bp, 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %.pr.i = load i64, ptr @unix_recv_io.rbimpl_id, align 8, !tbaa !19 ; 2 uses
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.aa, %.lr.ph.i
  %i.br = call i64 @rb_intern2(ptr noundef nonnull @.str.26, i64 noundef 6) #6 ; 3 uses
  store i64 %i.br, ptr @unix_recv_io.rbimpl_id, align 8, !tbaa !19
  %.not.i35 = icmp eq i64 %i.br, 0
  br i1 %.not.i35, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !59

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.aa
  %.lcssa.i = phi i64 [ %.pr.i, %bb.aa ], [ %i.br, %.lr.ph.i ]
  %i.bs = icmp eq i64 %i.p, 4
  %i.bt = select i1 %i.bs, i32 1, i32 2
  %i.bu = sext i32 %.0.copyload39 to i64
  %i.bv = shl nsw i64 %i.bu, 1
  %i.bw = or disjoint i64 %i.bv, 1
  store i64 %i.bw, ptr %i.b, align 16, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.p, ptr %i.bx, align 8, !tbaa !19
  %i.by = call i64 @rb_funcallv(i64 noundef %i.q, i64 noundef %.lcssa.i, i32 noundef %i.bt, ptr noundef nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.ab

bb.ab:                                            ; preds = %rbimpl_intern_const.exit, %bb.z
  %.0 = phi i64 [ %i.bq, %bb.z ], [ %i.by, %rbimpl_intern_const.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i64 %.0
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i64 @unix_s_socketpair(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.e, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.preheader.1, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.c = load i64, ptr %1, align 8, !tbaa !19
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 4, %.preheader.preheader ]
  %.286.i = phi i32 [ 1, %bb.b ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.e = icmp samesign ult i32 %.286.i, %0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.1
  %i.f = zext nneg i32 %.286.i to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %i.i = add nuw nsw i32 %.286.i, 1
  br label %bb.d

bb.d:                                             ; preds = %.preheader.1, %bb.c
  %i.j = phi i64 [ %i.h, %bb.c ], [ 4, %.preheader.1 ]
  %.286.i.1 = phi i32 [ %i.i, %bb.c ], [ %.286.i, %.preheader.1 ]
  %i.k = icmp eq i32 %.286.i.1, %0
  br i1 %i.k, label %rb_scan_args_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #7
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d
  %i.l = icmp eq i32 %0, 0
  %i.m = icmp samesign ult i32 %0, 2
  %i.n = select i1 %i.m, i64 1, i64 %i.j
  %i.o = select i1 %i.l, i64 3, i64 %i.d
  store i64 3, ptr %i.a, align 16, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.n, ptr %i.q, align 16, !tbaa !19
  %i.r = call i64 @rsock_sock_s_socketpair(i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i64 %i.r
}

declare i64 @rb_get_path(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @rsock_connect(i64 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr, ptr noundef) local_unnamed_addr #5

declare i64 @rb_obj_freeze(i64 noundef) local_unnamed_addr #4

declare i64 @rsock_unixpath_str(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #4

declare i64 @rsock_unixaddr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr, ptr noundef) local_unnamed_addr #5

declare i64 @rsock_s_recvfrom(i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @rb_obj_is_kind_of(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_io_blocking_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i64 @sendmsg_blocking(ptr noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call i64 @sendmsg(i32 noundef %i.a, ptr noundef nonnull %i.b, i32 noundef 0) #6
  ret i64 %i.c
}
end_hunk_0
