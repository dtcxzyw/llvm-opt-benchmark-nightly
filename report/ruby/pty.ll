inline.NumInlined: 17
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.child_info = type { i32, i32, ptr, i64, ptr }
%struct.pty_info = type { i32, i32 }
%struct.sigaction = type { %union.anon.1, %struct.__sigset_t, i32, ptr }
%union.anon.1 = type { ptr }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [4 x i8] c"PTY\00", align 1
@cPTY = internal unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"getpty\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"spawn\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ChildExited\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@eChildExited = internal unnamed_addr global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@rb_cFile = external local_unnamed_addr global i64, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"dup()\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"fork failed\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"can't get Master/Slave device\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"seteuid()\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"exited\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"pty - %s: %ld\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"masterpty:%s\00", align 1
@rb_cIO = external local_unnamed_addr global i64, align 8
@echild_status.rbimpl_id = internal unnamed_addr global i64 0, align 8

; Function Attrs: nounwind uwtable
define void @Init_pty() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_define_module(ptr noundef nonnull @.str) #9 ; 2 uses
  store i64 %i.a, ptr @cPTY, align 8, !tbaa !10
  tail call void @rb_define_module_function(i64 noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @pty_getpty, i32 noundef -1) #9
  %i.b = load i64, ptr @cPTY, align 8, !tbaa !10
  tail call void @rb_define_module_function(i64 noundef %i.b, ptr noundef nonnull @.str.2, ptr noundef nonnull @pty_getpty, i32 noundef -1) #9
  %i.c = load i64, ptr @cPTY, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.c, ptr noundef nonnull @.str.3, ptr noundef nonnull @pty_check, i32 noundef -1) #9
  %i.d = load i64, ptr @cPTY, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.d, ptr noundef nonnull @.str.4, ptr noundef nonnull @pty_open, i32 noundef 0) #9
  %i.e = load i64, ptr @cPTY, align 8, !tbaa !10
  %i.f = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  %i.g = tail call i64 @rb_define_class_under(i64 noundef %i.e, ptr noundef nonnull @.str.5, i64 noundef %i.f) #9 ; 2 uses
  store i64 %i.g, ptr @eChildExited, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.g, ptr noundef nonnull @.str.6, ptr noundef nonnull @echild_status, i32 noundef 0) #9
  ret void
}

declare i64 @rb_define_module(ptr noundef) local_unnamed_addr #1

declare extern_weak void @rb_define_module_function(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i64 @pty_getpty(i32 noundef %0, ptr noundef %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.child_info, align 8         ; 8 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.pty_info, align 4           ; 7 uses
  %i.g = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.h = icmp eq i32 %0, 0
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @getenv(ptr noundef nonnull @.str.9) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @getenv(ptr noundef nonnull @.str.10) #9 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @getlogin() #9             ; 2 uses
  %.not28.i = icmp eq ptr %i.l, null
  br i1 %.not28.i, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %.02035.i = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ]
  %i.m = tail call ptr @getpwnam(ptr noundef nonnull %.02035.i) ; 2 uses
  %.not29.i = icmp eq ptr %i.m, null
  br i1 %.not29.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  %.not30.i = icmp eq ptr %i.o, null
  %spec.select.i = select i1 %.not30.i, ptr @.str.8, ptr %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i, %bb.d, %bb.b
  %.2.i = phi ptr [ %i.i, %bb.b ], [ @.str.8, %bb.d ], [ @.str.8, %.thread.i ], [ %spec.select.i, %bb.e ]
  %i.p = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %.2.i) #9
  store i64 %i.p, ptr %i.d, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.018.i = phi ptr [ %i.d, %bb.f ], [ %1, %bb.a ]
  %.0.i = phi i32 [ 1, %bb.f ], [ %0, %bb.a ]
  %i.q = call i64 @rb_execarg_new(i32 noundef %.0.i, ptr noundef %.018.i, i32 noundef 1, i32 noundef 0) #9 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !16
  %i.s = call ptr @rb_execarg_get(i64 noundef %i.q) #9
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !19
  %5 = load i64, ptr %i.r, align 8, !tbaa !16
  call void @rb_execarg_parent_start(i64 noundef %5) #9
  %i.u = call fastcc i32 @get_device_once(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 0)
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %getDevice.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @rb_gc() #9
  %i.v = call fastcc i32 @get_device_once(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %getDevice.exit.i

getDevice.exit.i:                                 ; preds = %bb.h, %bb.g
  %i.w = load i32, ptr %i.a, align 4, !tbaa !6    ; 3 uses
  store i32 %i.w, ptr %3, align 8, !tbaa !20
  %i.x = load i32, ptr %i.b, align 4, !tbaa !6    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.g, ptr %i.z, align 8, !tbaa !22
  store i8 0, ptr %i.e, align 16, !tbaa !23
  %i.aa = call i32 @rb_fork_async_signal_safe(ptr noundef nonnull %i.c, ptr noundef nonnull @chfunc, ptr noundef nonnull %3, i64 noundef 4, ptr noundef nonnull %i.e, i64 noundef 32) #9 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %establishShell.exit

bb.i:                                             ; preds = %getDevice.exit.i
  %i.ac = call ptr @rb_errno_ptr() #9
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !6
  %i.ae = call i32 @close(i32 noundef %i.w) #9    ; 0 uses
  %i.af = call i32 @close(i32 noundef %i.x) #9    ; 0 uses
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !16
  call void @rb_execarg_parent_end(i64 noundef %i.ag) #9
  %i.ah = call ptr @rb_errno_ptr() #9
  store i32 %i.ad, ptr %i.ah, align 4, !tbaa !6
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !6   ; 2 uses
  %.not31.i = icmp eq i32 %i.ai, 0
  br i1 %.not31.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @rb_jump_tag(i32 noundef %i.ai) #10
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aj = load i8, ptr %i.e, align 16, !tbaa !23
  %.not32.i = icmp eq i8 %i.aj, 0
  %i.ak = select i1 %.not32.i, ptr @.str.11, ptr %i.e
  call void @rb_sys_fail(ptr noundef nonnull %i.ak) #10
  unreachable

establishShell.exit:                              ; preds = %getDevice.exit.i
  %i.al = call i32 @close(i32 noundef %i.x) #9    ; 0 uses
  %i.am = load i64, ptr %i.r, align 8, !tbaa !16
  call void @rb_execarg_parent_end(i64 noundef %i.am) #9
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %i.aa, ptr %i.an, align 4, !tbaa !24
  store i32 %i.w, ptr %4, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store ptr %i.r, ptr %i.f, align 8, !tbaa !27
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.f) #9, !srcloc !29
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %i.ap = load volatile i64, ptr %i.ao, align 8, !tbaa !10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.aq = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.g) #9
  %i.ar = call i64 @rb_obj_freeze(i64 noundef %i.aq) #9 ; 2 uses
  %i.as = load i64, ptr @rb_cFile, align 8, !tbaa !10
  %i.at = load i32, ptr %4, align 4, !tbaa !26
  %i.au = call i64 @rb_io_open_descriptor(i64 noundef %i.as, i32 noundef %i.at, i32 noundef 1, i64 noundef %i.ar, i64 noundef 4, ptr noundef null) #9
  %6 = load i32, ptr %4, align 4, !tbaa !26
  %i.av = call i32 @rb_cloexec_dup(i32 noundef %6) #9 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %establishShell.exit
  call void @rb_sys_fail(ptr noundef nonnull @.str.7) #10
  unreachable

bb.m:                                             ; preds = %establishShell.exit
  %i.ax = load i64, ptr @rb_cFile, align 8, !tbaa !10
  %i.ay = call i64 @rb_io_open_descriptor(i64 noundef %i.ax, i32 noundef %i.av, i32 noundef 2186, i64 noundef %i.ar, i64 noundef 4, ptr noundef null) #9
  %i.az = call i64 @rb_ary_new_capa(i64 noundef 3) #9 ; 5 uses
  call void @rb_ary_store(i64 noundef %i.az, i64 noundef 0, i64 noundef %i.au) #9
  call void @rb_ary_store(i64 noundef %i.az, i64 noundef 1, i64 noundef %i.ay) #9
  %i.ba = load i32, ptr %i.an, align 4, !tbaa !24
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nsw i64 %i.bb, 1
  %i.bd = or disjoint i64 %i.bc, 1
  call void @rb_ary_store(i64 noundef %i.az, i64 noundef 2, i64 noundef %i.bd) #9
  %i.be = call i32 @rb_block_given_p() #9
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = ptrtoint ptr %4 to i64
  %i.bg = call i64 @rb_ensure(ptr noundef nonnull @rb_yield, i64 noundef %i.az, ptr noundef nonnull @pty_detach_process, i64 noundef %i.bf) #9 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.0 = phi i64 [ 4, %bb.n ], [ %i.az, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i64 %.0
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @pty_check(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !10     ; 3 uses
  %.not12 = icmp eq i32 %0, 1
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = and i64 %i.e, -5
  %i.g = icmp eq i64 %i.f, 0
  %i.h = icmp eq i32 %0, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %.not = phi i1 [ %i.g, %bb.b ], [ true, %.preheader ]
  %.185.i.lcssa = phi i1 [ %i.h, %bb.b ], [ true, %.preheader ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #10
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %i.i = trunc i64 %i.c to i1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.j = tail call i64 @rb_fix2int(i64 noundef %i.c) #9
  br label %rb_num2int_inline.exit

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.k = tail call i64 @rb_num2int(i64 noundef %i.c) #9
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  %i.l = trunc i64 %.0.i to i32
  %i.m = call i32 @rb_waitpid(i32 noundef %i.l, ptr noundef nonnull %i.a, i32 noundef 3) #9 ; 2 uses
  %i.n = add i32 %i.m, 1
  %or.cond = icmp ult i32 %i.n, 2
  br i1 %or.cond, label %bb.j, label %bb.g

bb.g:                                             ; preds = %rb_num2int_inline.exit
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = call i64 @rb_last_status_get() #9
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = load i32, ptr %i.a, align 4, !tbaa !6
  call fastcc void @raise_from_check(i32 noundef %i.m, i32 noundef %i.p) #11
  unreachable

bb.j:                                             ; preds = %rb_num2int_inline.exit, %bb.h
  %.0 = phi i64 [ %i.o, %bb.h ], [ 4, %rb_num2int_inline.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @pty_open(i64 %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = call fastcc i32 @get_device_once(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 1, i32 noundef 0)
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %getDevice.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @rb_gc() #9
  %i.e = call fastcc i32 @get_device_once(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %getDevice.exit

getDevice.exit:                                   ; preds = %bb.a, %bb.b
  %i.f = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.19, ptr noundef nonnull %i.c) #9
  %i.g = call i64 @rb_obj_freeze(i64 noundef %i.f) #9
  %i.h = load i64, ptr @rb_cIO, align 8, !tbaa !10
  %i.i = load i32, ptr %i.a, align 4, !tbaa !6
  %i.j = call i64 @rb_io_open_descriptor(i64 noundef %i.h, i32 noundef %i.i, i32 noundef 43, i64 noundef %i.g, i64 noundef 4, ptr noundef null) #9
  %i.k = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.c) #9
  %i.l = call i64 @rb_obj_freeze(i64 noundef %i.k) #9
  %i.m = load i64, ptr @rb_cFile, align 8, !tbaa !10
  %i.n = load i32, ptr %i.b, align 4, !tbaa !6
  %i.o = call i64 @rb_io_open_descriptor(i64 noundef %i.m, i32 noundef %i.n, i32 noundef 59, i64 noundef %i.l, i64 noundef 4, ptr noundef null) #9
  %i.p = call i64 @rb_assoc_new(i64 noundef %i.j, i64 noundef %i.o) #9 ; 3 uses
  %i.q = call i32 @rb_block_given_p() #9
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %getDevice.exit
  %i.r = call i64 @rb_ensure(ptr noundef nonnull @rb_yield, i64 noundef %i.p, ptr noundef nonnull @pty_close_pty, i64 noundef %i.p) #9
  br label %bb.d

bb.d:                                             ; preds = %getDevice.exit, %bb.c
  %.0 = phi i64 [ %i.r, %bb.c ], [ %i.p, %getDevice.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i64 %.0
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @echild_status(i64 noundef %0) #0 {
bb.a:
  %.pr.i = load i64, ptr @echild_status.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.6, i64 noundef 6) #9 ; 3 uses
  store i64 %i.a, ptr @echild_status.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !30

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ]
  %i.b = tail call i64 @rb_ivar_get(i64 noundef %0, i64 noundef %.lcssa.i) #9
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i64 @rb_obj_freeze(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #1

declare i64 @rb_io_open_descriptor(i64 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_cloexec_dup(i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_sys_fail(ptr noundef) local_unnamed_addr #3

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #1

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_block_given_p() local_unnamed_addr #1

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_yield(i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i64 @pty_detach_process(i64 noundef %0) #0 {
bb.a:
end_hunk_0
