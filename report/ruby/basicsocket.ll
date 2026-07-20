inline.NumInlined: 35
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rsock_send_arg = type { i32, i32, i64, ptr, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%union.union_sockaddr = type { %struct.sockaddr_storage, [1920 x i8] }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.ucred = type { i32, i32, i32 }

@.str.1 = private unnamed_addr constant [10 x i8] c"sendto(2)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"send(2)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"BasicSocket\00", align 1
@rb_cIO = external local_unnamed_addr global i64, align 8
@rb_cBasicSocket = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"do_not_reverse_lookup\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"do_not_reverse_lookup=\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"for_fd\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"close_read\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"close_write\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"getpeername\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"getpeereid\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"local_address\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"remote_address\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"__recv_nonblock\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"__read_nonblock\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"__write_nonblock\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"__sendmsg\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"__sendmsg_nonblock\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"__recvmsg\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"__recvmsg_nonblock\00", align 1
@rsock_do_not_reverse_lookup = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [29 x i8] c"not a socket file descriptor\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"fstat(2)\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.30 = private unnamed_addr constant [54 x i8] c"`how' should be either :SHUT_RD, :SHUT_WR, :SHUT_RDWR\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"shutdown(2)\00", align 1
@bsock_setsockopt.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@bsock_setsockopt.rbimpl_id.33 = internal unnamed_addr global i64 0, align 8
@.str.34 = private unnamed_addr constant [8 x i8] c"optname\00", align 1
@bsock_setsockopt.rbimpl_id.35 = internal unnamed_addr global i64 0, align 8
@.str.36 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"setsockopt(2)\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"getsockopt(2)\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"getsockname(2)\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"getpeername(2)\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"getsockopt(SO_PEERCRED)\00", align 1

; Function Attrs: nounwind uwtable
define i64 @rsock_bsock_send(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.rsock_send_arg, align 8     ; 8 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = icmp slt i32 %0, 2
  br i1 %i.c, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.d, ptr %i.b, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10
  %.not39 = icmp eq i32 %0, 2
  br i1 %.not39, label %rb_scan_args_set.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !10
  %i.i = icmp eq i32 %0, 3
  br i1 %i.i, label %rb_scan_args_set.exit, label %bb.c

rb_scan_args_set.exit.thread:                     ; preds = %.preheader
  store i64 4, ptr %i.a, align 8, !tbaa !10
  %i.j = call i64 @rb_string_value(ptr noundef nonnull %i.b) #9 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef 3) #10
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.b
  %i.k = icmp eq i64 %i.h, 4
  %i.l = call i64 @rb_string_value(ptr noundef nonnull %i.b) #9 ; 0 uses
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.m = call i64 @rsock_sockaddr_string_value(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !10
  %i.o = call i64 @rb_str_new_frozen(i64 noundef %i.n) #9 ; 2 uses
  store i64 %i.o, ptr %i.a, align 8, !tbaa !10
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !12
  %i.r = and i64 %i.q, 8192
  %.not.i16 = icmp eq i64 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %.not.i16, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.u = phi ptr [ %i.t, %bb.e ], [ %i.s, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19   ; 3 uses
  %i.y = add i64 %i.x, 2147483648
  %.not.i.i = icmp ult i64 %i.y, 4294967296
  br i1 %.not.i.i, label %RSTRING_LENINT.exit, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  call void @rb_out_of_int(i64 noundef %i.x) #11
  unreachable

RSTRING_LENINT.exit:                              ; preds = %RSTRING_PTR.exit
  %i.z = trunc nsw i64 %i.x to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %rb_scan_args_set.exit.thread, %rb_scan_args_set.exit, %RSTRING_LENINT.exit
  %.014 = phi ptr [ @.str.1, %RSTRING_LENINT.exit ], [ @.str.2, %rb_scan_args_set.exit ], [ @.str.2, %rb_scan_args_set.exit.thread ]
  %.013 = phi ptr [ @rsock_sendto_blocking, %RSTRING_LENINT.exit ], [ @rsock_send_blocking, %rb_scan_args_set.exit ], [ @rsock_send_blocking, %rb_scan_args_set.exit.thread ]
  %i.ab = call i64 @rb_io_taint_check(i64 noundef %2) #9
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22 ; 3 uses
  call void @rb_io_check_closed(ptr noundef %i.ae) #9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !25
  store i32 %i.ag, ptr %3, align 8, !tbaa !38
  %i.ah = trunc nuw i64 %i.f to i1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = call i64 @rb_fix2int(i64 noundef 1) #9
  br label %rb_num2int_inline.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = call i64 @rb_num2int(i64 noundef 0) #9
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.h, %bb.i
  %.0.i = phi i64 [ %i.ai, %bb.h ], [ %i.aj, %bb.i ]
  %i.ak = trunc i64 %.0.i to i32
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !39
  br label %rb_ll2num_inline.exit

rb_ll2num_inline.exit:                            ; preds = %bb.m, %rb_num2int_inline.exit
  %i.am = call i64 @rb_io_blocking_region(ptr noundef %i.ae, ptr noundef nonnull %.013, ptr noundef nonnull %3) #9 ; 4 uses
  %i.an = icmp sgt i64 %i.am, -1
  br i1 %i.an, label %bb.j, label %bb.m

bb.j:                                             ; preds = %rb_ll2num_inline.exit
  %i.ao = icmp samesign ult i64 %i.am, 4611686018427387904
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = shl nuw nsw i64 %i.am, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ar = call i64 @rb_ll2inum(i64 noundef range(i64 0, -9223372036854775808) %i.am) #9
  br label %bb.o

bb.m:                                             ; preds = %rb_ll2num_inline.exit
  %i.as = call ptr @rb_errno_ptr() #9
  %i.at = load i32, ptr %i.as, align 4, !tbaa !6
  %i.au = call i32 @rb_io_maybe_wait_writable(i32 noundef %i.at, i64 noundef %2, i64 noundef 4) #9
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.n, label %rb_ll2num_inline.exit

bb.n:                                             ; preds = %bb.m
  %i.av = call ptr @rb_errno_ptr() #9
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.aw, ptr noundef nonnull %.014) #10
  unreachable

bb.o:                                             ; preds = %bb.k, %bb.l
  %.1.ph = phi i64 [ %i.ar, %bb.l ], [ %i.aq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i64 %.1.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #2

declare i64 @rsock_sockaddr_string_value(ptr noundef) local_unnamed_addr #2

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #2

declare i64 @rsock_sendto_blocking(ptr noundef) #2

declare i64 @rsock_send_blocking(ptr noundef) #2

declare void @rb_io_check_closed(ptr noundef) local_unnamed_addr #2

declare i64 @rb_io_taint_check(i64 noundef) local_unnamed_addr #2

declare i64 @rb_io_blocking_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_io_maybe_wait_writable(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @rb_errno_ptr() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_syserr_fail(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @rsock_init_basicsocket() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cIO, align 8, !tbaa !10
  %i.b = tail call i64 @rb_define_class(ptr noundef nonnull @.str.3, i64 noundef %i.a) #9 ; 2 uses
  store i64 %i.b, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_undef_method(i64 noundef %i.b, ptr noundef nonnull @.str.4) #9
  %i.c = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.c, ptr noundef nonnull @.str.5, ptr noundef nonnull @bsock_do_not_rev_lookup, i32 noundef 0) #9
  %i.d = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.d, ptr noundef nonnull @.str.6, ptr noundef nonnull @bsock_do_not_rev_lookup_set, i32 noundef 1) #9
  %i.e = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.e, ptr noundef nonnull @.str.7, ptr noundef nonnull @bsock_s_for_fd, i32 noundef 1) #9
  %i.f = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.8, ptr noundef nonnull @bsock_close_read, i32 noundef 0) #9
  %i.g = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.g, ptr noundef nonnull @.str.9, ptr noundef nonnull @bsock_close_write, i32 noundef 0) #9
  %i.h = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.h, ptr noundef nonnull @.str.10, ptr noundef nonnull @bsock_shutdown, i32 noundef -1) #9
  %i.i = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @bsock_setsockopt, i32 noundef -1) #9
  %i.j = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.j, ptr noundef nonnull @.str.12, ptr noundef nonnull @bsock_getsockopt, i32 noundef 2) #9
  %i.k = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.k, ptr noundef nonnull @.str.13, ptr noundef nonnull @bsock_getsockname, i32 noundef 0) #9
  %i.l = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.l, ptr noundef nonnull @.str.14, ptr noundef nonnull @bsock_getpeername, i32 noundef 0) #9
  %i.m = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.15, ptr noundef nonnull @bsock_getpeereid, i32 noundef 0) #9
  %i.n = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.16, ptr noundef nonnull @bsock_local_address, i32 noundef 0) #9
  %i.o = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.o, ptr noundef nonnull @.str.17, ptr noundef nonnull @bsock_remote_address, i32 noundef 0) #9
  %i.p = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.p, ptr noundef nonnull @.str.18, ptr noundef nonnull @rsock_bsock_send, i32 noundef -1) #9
  %i.q = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.q, ptr noundef nonnull @.str.19, ptr noundef nonnull @bsock_recv, i32 noundef -1) #9
  %i.r = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.r, ptr noundef nonnull @.str.5, ptr noundef nonnull @bsock_do_not_reverse_lookup, i32 noundef 0) #9
  %i.s = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.s, ptr noundef nonnull @.str.6, ptr noundef nonnull @bsock_do_not_reverse_lookup_set, i32 noundef 1) #9
  %i.t = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_private_method(i64 noundef %i.t, ptr noundef nonnull @.str.20, ptr noundef nonnull @bsock_recv_nonblock, i32 noundef 4) #9
  %i.u = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_private_method(i64 noundef %i.u, ptr noundef nonnull @.str.21, ptr noundef nonnull @rsock_read_nonblock, i32 noundef 3) #9
  %i.v = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_private_method(i64 noundef %i.v, ptr noundef nonnull @.str.22, ptr noundef nonnull @rsock_write_nonblock, i32 noundef 2) #9
  %i.w = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_private_method(i64 noundef %i.w, ptr noundef nonnull @.str.23, ptr noundef nonnull @rsock_bsock_sendmsg, i32 noundef 4) #9
  %i.x = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_private_method(i64 noundef %i.x, ptr noundef nonnull @.str.24, ptr noundef nonnull @rsock_bsock_sendmsg_nonblock, i32 noundef 5) #9
  %i.y = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_private_method(i64 noundef %i.y, ptr noundef nonnull @.str.25, ptr noundef nonnull @rsock_bsock_recvmsg, i32 noundef 4) #9
  %i.z = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !10
  tail call void @rb_define_private_method(i64 noundef %i.z, ptr noundef nonnull @.str.26, ptr noundef nonnull @rsock_bsock_recvmsg_nonblock, i32 noundef 5) #9
  ret void
}

declare i64 @rb_define_class(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_undef_method(i64 noundef, ptr noundef) local_unnamed_addr #2

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @bsock_do_not_rev_lookup(i64 %0) #4 {
bb.a:
  %i.a = load i32, ptr @rsock_do_not_reverse_lookup, align 4, !tbaa !6
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i64 0, i64 20
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @bsock_do_not_rev_lookup_set(i64 %0, i64 noundef returned %1) #5 {
bb.a:
  %i.a = and i64 %1, -5
  %i.b = icmp ne i64 %i.a, 0
  %i.c = zext i1 %i.b to i32
  store i32 %i.c, ptr @rsock_do_not_reverse_lookup, align 4, !tbaa !6
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @bsock_s_for_fd(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = trunc nuw i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_fix2int(i64 noundef 1) #9
  br label %rb_num2int_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_num2int(i64 noundef 0) #9
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %i.d = trunc i64 %.0.i to i32                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.e = call i32 @fstat(i32 noundef %i.d, ptr noundef nonnull %2) #9
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %is_socket.exit.i

bb.d:                                             ; preds = %rb_num2int_inline.exit
  %i.g = tail call ptr @rb_errno_ptr() #9
  %i.h = load i32, ptr %i.g, align 4, !tbaa !6
  tail call void @rb_syserr_fail(i32 noundef %i.h, ptr noundef nonnull @.str.28) #10
  unreachable

is_socket.exit.i:                                 ; preds = %rb_num2int_inline.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !40
  %i.k = and i32 %i.j, 61440
  %.not.i = icmp eq i32 %i.k, 49152
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %is_socket.exit.i
  %i.l = tail call i32 @rb_reserved_fd_p(i32 noundef %i.d) #9
  %.not2.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i, label %rsock_validate_descriptor.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %is_socket.exit.i
  tail call void @rb_syserr_fail(i32 noundef 9, ptr noundef nonnull @.str.27) #10
  unreachable

rsock_validate_descriptor.exit:                   ; preds = %bb.e
  %i.m = tail call i64 @rb_obj_alloc(i64 noundef %0) #9
  %i.n = tail call i64 @rsock_init_sock(i64 noundef %i.m, i32 noundef %i.d) #9 ; 2 uses
  %i.o = tail call i64 @rb_io_taint_check(i64 noundef %i.n) #9
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  tail call void @rb_io_check_closed(ptr noundef %i.r) #9
  ret i64 %i.n
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @bsock_close_read(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  tail call void @rb_io_check_closed(ptr noundef %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = tail call i32 @shutdown(i32 noundef %i.f, i32 noundef 0) #9 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 2 uses
  %i.j = and i32 %i.i, 2
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 @rb_io_close(i64 noundef %0) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = and i32 %i.i, -2
  store i32 %i.l, ptr %i.h, align 4, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 4, %bb.c ], [ %i.k, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @bsock_close_write(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  tail call void @rb_io_check_closed(ptr noundef %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  %.not = trunc nuw i32 %i.f to i1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_io_close(i64 noundef %0) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = tail call i32 @shutdown(i32 noundef %i.i, i32 noundef 1) #9 ; 0 uses
  %i.k = load i32, ptr %i.e, align 4, !tbaa !43
  %i.l = and i32 %i.k, -3
  store i32 %i.l, ptr %i.e, align 4, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 4, %bb.c ], [ %i.g, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @bsock_shutdown(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %rb_scan_args_set.exit.thread, label %.split.us

.split.us:                                        ; preds = %.preheader.split.split
  %i.b = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.c = icmp eq i32 %0, 1
  br i1 %i.c, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #10
  unreachable

rb_scan_args_set.exit:                            ; preds = %.split.us
  %i.d = icmp eq i64 %i.b, 4
  br i1 %i.d, label %rb_scan_args_set.exit.thread, label %bb.c

bb.c:                                             ; preds = %rb_scan_args_set.exit
  %i.e = tail call i32 @rsock_shutdown_how_arg(i64 noundef %i.b) #9 ; 2 uses
  %or.cond3 = icmp ugt i32 %i.e, 2
  br i1 %or.cond3, label %bb.d, label %rb_scan_args_set.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.30) #10
  unreachable

rb_scan_args_set.exit.thread:                     ; preds = %.preheader.split.split, %rb_scan_args_set.exit, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ 2, %rb_scan_args_set.exit ], [ 2, %.preheader.split.split ]
  %i.g = tail call i64 @rb_io_taint_check(i64 noundef %2) #9
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !25
  %i.m = tail call i32 @shutdown(i32 noundef %i.l, i32 noundef %.0) #9
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit.thread
  %i.o = tail call ptr @rb_errno_ptr() #9
  %i.p = load i32, ptr %i.o, align 4, !tbaa !6
  tail call void @rb_syserr_fail(i32 noundef %i.p, ptr noundef nonnull @.str.31) #10
  unreachable

bb.f:                                             ; preds = %rb_scan_args_set.exit.thread
  ret i64 1
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @bsock_setsockopt(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = icmp eq i32 %0, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !10
  %.pr.i = load i64, ptr @bsock_setsockopt.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.e = tail call i64 @rb_intern2(ptr noundef nonnull @.str.32, i64 noundef 5) #9 ; 3 uses
  store i64 %i.e, ptr @bsock_setsockopt.rbimpl_id, align 8, !tbaa !10
  %.not.i22 = icmp eq i64 %i.e, 0
  br i1 %.not.i22, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !44

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.b
  %.lcssa.i = phi i64 [ %.pr.i, %bb.b ], [ %i.e, %.lr.ph.i ]
  %i.f = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.d, i64 noundef %.lcssa.i, i32 noundef 0) #9
  %i.g = load i64, ptr %1, align 8, !tbaa !10
  %.pr.i23 = load i64, ptr @bsock_setsockopt.rbimpl_id.33, align 8, !tbaa !10 ; 2 uses
  %.not4.i24 = icmp eq i64 %.pr.i23, 0
  br i1 %.not4.i24, label %.lr.ph.i26, label %rbimpl_intern_const.exit28

.lr.ph.i26:                                       ; preds = %rbimpl_intern_const.exit, %.lr.ph.i26
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.34, i64 noundef 7) #9 ; 3 uses
  store i64 %i.h, ptr @bsock_setsockopt.rbimpl_id.33, align 8, !tbaa !10
  %.not.i27 = icmp eq i64 %i.h, 0
  br i1 %.not.i27, label %.lr.ph.i26, label %rbimpl_intern_const.exit28, !llvm.loop !44

rbimpl_intern_const.exit28:                       ; preds = %.lr.ph.i26, %rbimpl_intern_const.exit
  %.lcssa.i25 = phi i64 [ %.pr.i23, %rbimpl_intern_const.exit ], [ %i.h, %.lr.ph.i26 ]
  %i.i = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.g, i64 noundef %.lcssa.i25, i32 noundef 0) #9
  %i.j = load i64, ptr %1, align 8, !tbaa !10
  %.pr.i29 = load i64, ptr @bsock_setsockopt.rbimpl_id.35, align 8, !tbaa !10 ; 2 uses
  %.not4.i30 = icmp eq i64 %.pr.i29, 0
  br i1 %.not4.i30, label %.lr.ph.i32, label %rbimpl_intern_const.exit34

.lr.ph.i32:                                       ; preds = %rbimpl_intern_const.exit28, %.lr.ph.i32
  %i.k = tail call i64 @rb_intern2(ptr noundef nonnull @.str.36, i64 noundef 4) #9 ; 3 uses
  store i64 %i.k, ptr @bsock_setsockopt.rbimpl_id.35, align 8, !tbaa !10
  %.not.i33 = icmp eq i64 %i.k, 0
  br i1 %.not.i33, label %.lr.ph.i32, label %rbimpl_intern_const.exit34, !llvm.loop !44

rbimpl_intern_const.exit34:                       ; preds = %.lr.ph.i32, %rbimpl_intern_const.exit28
  %.lcssa.i31 = phi i64 [ %.pr.i29, %rbimpl_intern_const.exit28 ], [ %i.k, %.lr.ph.i32 ]
  %i.l = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.j, i64 noundef %.lcssa.i31, i32 noundef 0) #9 ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !10
  br label %rb_scan_args_set.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp slt i32 %0, 3
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %1, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10   ; 2 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !10
  %i.s = icmp eq i32 %0, 3
  br i1 %i.s, label %rb_scan_args_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 3, i32 noundef 3) #10
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d, %rbimpl_intern_const.exit34
  %i.t = phi i64 [ %i.r, %bb.d ], [ %i.l, %rbimpl_intern_const.exit34 ] ; 5 uses
  %i.u = phi i64 [ %i.p, %bb.d ], [ %i.i, %rbimpl_intern_const.exit34 ]
  %i.v = phi i64 [ %i.n, %bb.d ], [ %i.f, %rbimpl_intern_const.exit34 ]
  %i.w = tail call i64 @rb_io_taint_check(i64 noundef %2) #9
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22   ; 5 uses
  tail call void @rb_io_check_closed(ptr noundef %i.z) #9
  %i.aa = tail call i32 @rsock_getfamily(ptr noundef %i.z) #9 ; 2 uses
  %i.ab = tail call i32 @rsock_level_arg(i32 noundef %i.aa, i64 noundef %i.v) #9 ; 2 uses
  %i.ac = tail call i32 @rsock_optname_arg(i32 noundef %i.aa, i32 noundef %i.ab, i64 noundef %i.u) #9
  %i.ad = icmp eq i64 %i.t, 0
  %i.ae = and i64 %i.t, 7
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %rb_type.exit

bb.f:                                             ; preds = %rb_scan_args_set.exit
  switch i64 %i.t, label %rb_type.exit.thread38 [
    i64 0, label %rb_type.exit.thread40
    i64 4, label %rb_type.exit.thread
    i64 20, label %rb_type.exit.thread42
    i64 36, label %rb_type.exit.thread
  ]

rb_type.exit:                                     ; preds = %rb_scan_args_set.exit
  %i.ah = inttoptr i64 %i.t to ptr
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 31
  switch i32 %i.ak, label %rb_type.exit.thread [
    i32 21, label %rb_type.exit.thread38
    i32 19, label %rb_type.exit.thread40
    i32 18, label %rb_type.exit.thread42
  ]

rb_type.exit.thread38:                            ; preds = %bb.f, %rb_type.exit
  %i.al = tail call i64 @rb_fix2int(i64 noundef %i.t) #9
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %i.b, align 4, !tbaa !6
  br label %bb.i

rb_type.exit.thread40:                            ; preds = %bb.f, %rb_type.exit
  store i32 0, ptr %i.b, align 4, !tbaa !6
  br label %bb.i

rb_type.exit.thread42:                            ; preds = %bb.f, %rb_type.exit
  store i32 1, ptr %i.b, align 4, !tbaa !6
  br label %bb.i

rb_type.exit.thread:                              ; preds = %bb.f, %bb.f, %rb_type.exit
  %i.an = call i64 @rb_string_value(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ap = inttoptr i64 %i.ao to ptr               ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !12
  %i.ar = and i64 %i.aq, 8192
  %.not.i36 = icmp eq i64 %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  br i1 %.not.i36, label %RSTRING_PTR.exit, label %bb.g

bb.g:                                             ; preds = %rb_type.exit.thread
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !14
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_type.exit.thread, %bb.g
  %i.au = phi ptr [ %i.at, %bb.g ], [ %i.as, %rb_type.exit.thread ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !19 ; 3 uses
  %i.ax = add i64 %i.aw, 2147483648
  %.not.i.i = icmp ult i64 %i.ax, 4294967296
  br i1 %.not.i.i, label %RSTRING_LENINT.exit, label %bb.h

bb.h:                                             ; preds = %RSTRING_PTR.exit
  call void @rb_out_of_int(i64 noundef %i.aw) #11
  unreachable

RSTRING_LENINT.exit:                              ; preds = %RSTRING_PTR.exit
  %i.ay = trunc nsw i64 %i.aw to i32
  br label %bb.i

bb.i:                                             ; preds = %rb_type.exit.thread38, %rb_type.exit.thread40, %rb_type.exit.thread42, %RSTRING_LENINT.exit
  %.020 = phi i32 [ %i.ay, %RSTRING_LENINT.exit ], [ 4, %rb_type.exit.thread42 ], [ 4, %rb_type.exit.thread40 ], [ 4, %rb_type.exit.thread38 ]
  %.0 = phi ptr [ %i.au, %RSTRING_LENINT.exit ], [ %i.b, %rb_type.exit.thread42 ], [ %i.b, %rb_type.exit.thread40 ], [ %i.b, %rb_type.exit.thread38 ]
  call void @rb_io_check_closed(ptr noundef %i.z) #9
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !25
  %i.bb = call i32 @setsockopt(i32 noundef %i.ba, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef %.0, i32 noundef %.020) #9
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !46
  call void @rsock_sys_fail_path(ptr noundef nonnull @.str.38, i64 noundef %i.be) #10
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i64 1
}

; Function Attrs: nounwind uwtable
define internal i64 @bsock_getsockopt(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 5 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #9
  %i.f = tail call i32 @rsock_getfamily(ptr noundef %i.e) #9 ; 3 uses
  %i.g = tail call i32 @rsock_level_arg(i32 noundef %i.f, i64 noundef %1) #9 ; 3 uses
  %i.h = tail call i32 @rsock_optname_arg(i32 noundef %i.f, i32 noundef %i.g, i64 noundef %2) #9 ; 2 uses
  store i32 256, ptr %i.a, align 4, !tbaa !6
  %i.i = alloca [256 x i8], align 16              ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = call i32 @getsockopt(i32 noundef %i.k, i32 noundef %i.g, i32 noundef %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a) #9
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  call void @rsock_sys_fail_path(ptr noundef nonnull @.str.39, i64 noundef %i.o) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.a, align 4, !tbaa !6
  %i.q = zext i32 %i.p to i64
  %i.r = call i64 @rb_str_new(ptr noundef nonnull %i.i, i64 noundef %i.q) #9
  %i.s = call i64 @rsock_sockopt_new(i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h, i64 noundef %i.r) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i64 %i.s
}

; Function Attrs: nounwind uwtable
define internal i64 @bsock_getsockname(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %union.union_sockaddr, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 2048, ptr %i.a, align 4, !tbaa !6
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = call i32 @getsockname(i32 noundef %i.g, ptr nonnull %1, ptr noundef nonnull %i.a) #9
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @rb_errno_ptr() #9
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.k, ptr noundef nonnull @.str.40) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.m = icmp ugt i32 %i.l, 2048
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2048, ptr %i.a, align 4, !tbaa !6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %i.l, %bb.c ], [ 2048, %bb.d ]
  %i.o = zext nneg i32 %i.n to i64
  %i.p = call i64 @rb_str_new(ptr noundef nonnull %1, i64 noundef %i.o) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define internal i64 @bsock_getpeername(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %union.union_sockaddr, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 2048, ptr %i.a, align 4, !tbaa !6
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = call i32 @getpeername(i32 noundef %i.g, ptr nonnull %1, ptr noundef nonnull %i.a) #9
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @rb_errno_ptr() #9
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.k, ptr noundef nonnull @.str.41) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.m = icmp ugt i32 %i.l, 2048
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2048, ptr %i.a, align 4, !tbaa !6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %i.l, %bb.c ], [ 2048, %bb.d ]
  %i.o = zext nneg i32 %i.n to i64
  %i.p = call i64 @rb_str_new(ptr noundef nonnull %1, i64 noundef %i.o) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define internal i64 @bsock_getpeereid(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.ucred, align 4              ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 12, ptr %i.a, align 4, !tbaa !6
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = call i32 @getsockopt(i32 noundef %i.g, i32 noundef 1, i32 noundef 17, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #9
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @rb_errno_ptr() #9
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.k, ptr noundef nonnull @.str.42) #10
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_0
