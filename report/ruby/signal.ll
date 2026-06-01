inline.NumInlined: 138
inline.NumDeleted: 52
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.13 = type { [65 x i32], i32 }
%struct.signals = type { [8 x i8], i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.sigaction = type { %union.anon.18, %struct.__sigset_t, i32, ptr }
%union.anon.18 = type { ptr }
%struct.stack_t = type { ptr, i32, i64 }
%struct.rb_vm_tag = type { i64, i64, [5 x ptr], ptr, i32, i32 }
%struct.iovec = type { ptr, i64 }

@rb_sigaltstack_size_value = internal unnamed_addr global i32 0, align 4
@signal_buff = internal global %struct.anon.13 zeroinitializer, align 4
@ruby_enable_coredump = hidden local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Signal\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"trap\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"signame\00", align 1
@rb_eSignal = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"signo\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"signm\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@rb_eInterrupt = external local_unnamed_addr global i64, align 8
@Init_signal.failed = internal constant [33 x i8] c"failed to install SIGINT handler\00", align 16
@Init_signal.failed.8 = internal constant [33 x i8] c"failed to install SIGHUP handler\00", align 16
@Init_signal.failed.9 = internal constant [34 x i8] c"failed to install SIGQUIT handler\00", align 16
@Init_signal.failed.10 = internal constant [34 x i8] c"failed to install SIGTERM handler\00", align 16
@Init_signal.failed.11 = internal constant [34 x i8] c"failed to install SIGALRM handler\00", align 16
@Init_signal.failed.12 = internal constant [34 x i8] c"failed to install SIGUSR1 handler\00", align 16
@Init_signal.failed.13 = internal constant [34 x i8] c"failed to install SIGUSR2 handler\00", align 16
@Init_signal.failed.14 = internal constant [33 x i8] c"failed to install SIGBUS handler\00", align 16
@default_sigbus_handler = internal unnamed_addr global ptr null, align 8
@Init_signal.failed.15 = internal constant [33 x i8] c"failed to install SIGILL handler\00", align 16
@default_sigill_handler = internal unnamed_addr global ptr null, align 8
@Init_signal.failed.16 = internal constant [34 x i8] c"failed to install SIGSEGV handler\00", align 16
@default_sigsegv_handler = internal unnamed_addr global ptr null, align 8
@Init_signal.failed.17 = internal constant [34 x i8] c"failed to install SIGABRT handler\00", align 16
@default_sigabrt_handler = internal unnamed_addr global ptr null, align 8
@Init_signal.failed.18 = internal constant [34 x i8] c"failed to install SIGPIPE handler\00", align 16
@Init_signal.failed.19 = internal constant [33 x i8] c"failed to install SIGSYS handler\00", align 16
@Init_signal.failed.20 = internal constant [39 x i8] c"failed to install RUBY_SIGCHLD handler\00", align 16
@siglist = internal constant [34 x %struct.signals] [%struct.signals { [8 x i8] c"EXIT\00\00\00\00", i32 0 }, %struct.signals { [8 x i8] c"HUP\00\00\00\00\00", i32 1 }, %struct.signals { [8 x i8] c"INT\00\00\00\00\00", i32 2 }, %struct.signals { [8 x i8] c"QUIT\00\00\00\00", i32 3 }, %struct.signals { [8 x i8] c"ILL\00\00\00\00\00", i32 4 }, %struct.signals { [8 x i8] c"TRAP\00\00\00\00", i32 5 }, %struct.signals { [8 x i8] c"ABRT\00\00\00\00", i32 6 }, %struct.signals { [8 x i8] c"IOT\00\00\00\00\00", i32 6 }, %struct.signals { [8 x i8] c"FPE\00\00\00\00\00", i32 8 }, %struct.signals { [8 x i8] c"KILL\00\00\00\00", i32 9 }, %struct.signals { [8 x i8] c"BUS\00\00\00\00\00", i32 7 }, %struct.signals { [8 x i8] c"SEGV\00\00\00\00", i32 11 }, %struct.signals { [8 x i8] c"SYS\00\00\00\00\00", i32 31 }, %struct.signals { [8 x i8] c"PIPE\00\00\00\00", i32 13 }, %struct.signals { [8 x i8] c"ALRM\00\00\00\00", i32 14 }, %struct.signals { [8 x i8] c"TERM\00\00\00\00", i32 15 }, %struct.signals { [8 x i8] c"URG\00\00\00\00\00", i32 23 }, %struct.signals { [8 x i8] c"STOP\00\00\00\00", i32 19 }, %struct.signals { [8 x i8] c"TSTP\00\00\00\00", i32 20 }, %struct.signals { [8 x i8] c"CONT\00\00\00\00", i32 18 }, %struct.signals { [8 x i8] c"CHLD\00\00\00\00", i32 17 }, %struct.signals { [8 x i8] c"CLD\00\00\00\00\00", i32 17 }, %struct.signals { [8 x i8] c"TTIN\00\00\00\00", i32 21 }, %struct.signals { [8 x i8] c"TTOU\00\00\00\00", i32 22 }, %struct.signals { [8 x i8] c"IO\00\00\00\00\00\00", i32 29 }, %struct.signals { [8 x i8] c"XCPU\00\00\00\00", i32 24 }, %struct.signals { [8 x i8] c"XFSZ\00\00\00\00", i32 25 }, %struct.signals { [8 x i8] c"VTALRM\00\00", i32 26 }, %struct.signals { [8 x i8] c"PROF\00\00\00\00", i32 27 }, %struct.signals { [8 x i8] c"WINCH\00\00\00", i32 28 }, %struct.signals { [8 x i8] c"USR1\00\00\00\00", i32 10 }, %struct.signals { [8 x i8] c"USR2\00\00\00\00", i32 12 }, %struct.signals { [8 x i8] c"PWR\00\00\00\00\00", i32 30 }, %struct.signals { [8 x i8] c"POLL\00\00\00\00", i32 29 }], align 16
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.21 = private unnamed_addr constant [19 x i8] c"bad signal type %s\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"signal name with null byte\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"negative signal name: % li\0B\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"unsupported signal '%.*s%li\0B'\00", align 1
@ruby_current_ec = external thread_local local_unnamed_addr global ptr, align 8
@ruby_current_vm_ptr = external local_unnamed_addr global ptr, align 8
@received_signal = internal global ptr null, align 8
@.str.25 = private unnamed_addr constant [24 x i8] c"pthread_sigmask:unblock\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"can't trap reserved signal: SIG%s\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"can't trap reserved signal: %d\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"invalid signal number (%d)\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"bad handler\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"SYSTEM_DEFAULT\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@ruby_single_main_ractor = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [6 x i8] c"SIG%s\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"SIG%u\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"to_int\00", align 1
@.str.39 = private constant [4 x i8] c"SIG\00", align 1
@ruby_static_id_signo = external local_unnamed_addr global i64, align 8
@.str.40 = private unnamed_addr constant [4 x i8] c"BUS\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"Bus Error at %p\00", align 1
@check_reserved_signal_.msg1 = internal constant [13 x i8] c" received in ", align 1
@check_reserved_signal_.msg2 = internal constant [9 x i8] c" handler\0A", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"ILL\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"Illegal instruction at %p\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"SEGV\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"Segmentation fault at %p\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"ABRT\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"Aborted at %p\00", align 1
@switch.table.signo2signm = private unnamed_addr constant [32 x ptr] [ptr @siglist, ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 12), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 24), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 36), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 48), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 60), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 72), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 120), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 96), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 108), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 360), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 132), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 372), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 156), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 168), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 180), ptr null, ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 240), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 228), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 204), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 216), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 264), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 276), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 192), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 300), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 312), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 324), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 336), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 348), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 288), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 384), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 144)], align 8
@switch.table.default_handler = private unnamed_addr constant [31 x ptr] [ptr @sighandler, ptr @sighandler, ptr @sighandler, ptr null, ptr null, ptr null, ptr @sigbus, ptr null, ptr null, ptr @sighandler, ptr @sigsegv, ptr @sighandler, ptr @sig_do_nothing, ptr @sighandler, ptr @sighandler, ptr null, ptr @sighandler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sig_do_nothing], align 8
@switch.table.rb_signo2signm = private unnamed_addr constant [32 x ptr] [ptr @siglist, ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 12), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 24), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 36), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 48), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 60), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 72), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 120), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 96), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 108), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 360), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 132), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 372), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 156), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 168), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 180), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 240), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 228), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 204), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 216), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 264), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 276), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 192), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 300), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 312), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 324), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 336), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 348), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 288), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 384), ptr getelementptr inbounds nuw (i8, ptr @siglist, i64 144)], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local ptr @ruby_signal_name(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 32
  br i1 %i.a, label %switch.lookup, label %signo2signm.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.signo2signm, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %signo2signm.exit

signo2signm.exit:                                 ; preds = %bb.a, %switch.lookup
  %.05.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.05.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal fastcc ptr @signo2signm(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 32
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.signo2signm, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.05 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.05
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_default_signal(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.__sigset_t, align 8         ; 5 uses
  %i.a = tail call ptr @signal(i32 noundef %0, ptr noundef null) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.b = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_gc_enable() #16        ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr @received_signal, align 8, !tbaa !14
  %i.d = call i32 @sigemptyset(ptr noundef nonnull %1) #16 ; 0 uses
  %i.e = call i32 @sigaddset(ptr noundef nonnull %1, i32 noundef %0) #16 ; 0 uses
  %i.f = call i32 @pthread_sigmask(i32 noundef 1, ptr noundef nonnull %1, ptr noundef null) #16
  %.not1.i = icmp eq i32 %i.f, 0
  br i1 %.not1.i, label %reset_sigmask.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call ptr @rb_errno_ptr() #16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  call void @rb_bug_errno(ptr noundef nonnull @.str.25, i32 noundef %i.h) #18
  unreachable

reset_sigmask.exit:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.i = call i32 @raise(i32 noundef %0) #16      ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @reset_sigmask(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.__sigset_t, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !11
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_gc_enable() #16        ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr @received_signal, align 8, !tbaa !14
  %i.c = call i32 @sigemptyset(ptr noundef nonnull %1) #16 ; 0 uses
  %i.d = call i32 @sigaddset(ptr noundef nonnull %1, i32 noundef %0) #16 ; 0 uses
  %i.e = call i32 @pthread_sigmask(i32 noundef 1, ptr noundef nonnull %1, ptr noundef null) #16
  %.not1 = icmp eq i32 %i.e, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call ptr @rb_errno_ptr() #16
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  call void @rb_bug_errno(ptr noundef nonnull @.str.25, i32 noundef %i.g) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

; Function Attrs: nounwind
declare i32 @raise(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 2, 4294967294) i64 @rb_f_kill(i32 noundef %0, ptr noundef nonnull readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = icmp slt i32 %0, 2
  br i1 %i.c, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef -1) #18
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.f = tail call i64 @rb_fix2int(i64 noundef %i.d) #16
  %i.g = trunc i64 %i.f to i32
  br label %bb.e

bb.d:                                             ; preds = %rb_check_arity.exit
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16
  %i.h = call fastcc i32 @signm2signo(ptr noundef %i.b, i32 noundef 1, i32 noundef 0, ptr noundef null)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.039 = phi i32 [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  %.039.fr = freeze i32 %.039                     ; 11 uses
  %i.i = icmp slt i32 %.039.fr, 0
  br i1 %i.i, label %.lr.ph82.preheader, label %bb.j

.lr.ph82.preheader:                               ; preds = %bb.e
  %i.j = sub i32 0, %.039.fr
  %wide.trip.count108 = zext nneg i32 %0 to i64
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %bb.i
  %indvars.iv104 = phi i64 [ 1, %.lr.ph82.preheader ], [ %indvars.iv.next105, %bb.i ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %1, i64 %indvars.iv104
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16   ; 3 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph82
  %i.n = tail call i64 @rb_fix2int(i64 noundef %i.l) #16
  br label %rb_num2int_inline.exit

bb.g:                                             ; preds = %.lr.ph82
  %i.o = tail call i64 @rb_num2int(i64 noundef %i.l) #16
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.n, %bb.f ], [ %i.o, %bb.g ]
  %i.p = trunc i64 %.0.i to i32
  %i.q = tail call i32 @killpg(i32 noundef %i.p, i32 noundef %i.j) #16
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_num2int_inline.exit
  %i.s = tail call ptr @rb_errno_ptr() #16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.t, ptr noundef null) #18
  unreachable

bb.i:                                             ; preds = %rb_num2int_inline.exit
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count108
  br i1 %exitcond109.not, label %.loopexit, label %.lr.ph82, !llvm.loop !18

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20
  store volatile ptr %i.v, ptr %i.a, align 8, !tbaa !20
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.x = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !11
  %i.y = getelementptr i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = icmp eq ptr %.val.i, %i.z
  br i1 %i.aa, label %.lr.ph, label %.lr.ph.split.us.preheader

.lr.ph:                                           ; preds = %bb.j
  %i.ab = tail call i32 @getpid() #16
  %i.ac = freeze i32 %i.ab                        ; 5 uses
  %i.ad = icmp ne i32 %.039.fr, 0
  %i.ae = icmp ne i32 %i.ac, -1
  %or.cond = and i1 %i.ad, %i.ae
  %i.af = zext nneg i32 %.039.fr to i64
  %i.ag = getelementptr [4 x i8], ptr @signal_buff, i64 %i.af
  br i1 %or.cond, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %bb.j, %.lr.ph
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.m
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !16 ; 3 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us
  %i.ak = tail call i64 @rb_num2int(i64 noundef %i.ai) #16
  br label %rb_num2int_inline.exit52.us

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.al = tail call i64 @rb_fix2int(i64 noundef %i.ai) #16
  br label %rb_num2int_inline.exit52.us

rb_num2int_inline.exit52.us:                      ; preds = %bb.l, %bb.k
  %.0.i51.us = phi i64 [ %i.al, %bb.l ], [ %i.ak, %bb.k ]
  %i.am = trunc i64 %.0.i51.us to i32
  %i.an = tail call i32 @kill(i32 noundef %i.am, i32 noundef %.039.fr) #16
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.split.us, label %bb.m

bb.m:                                             ; preds = %rb_num2int_inline.exit52.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !58

.lr.ph.split:                                     ; preds = %.lr.ph
  %wide.trip.count102 = zext nneg i32 %0 to i64   ; 3 uses
  %switch.tableidx = add nsw i32 %.039.fr, -4     ; 2 uses
  %3 = icmp ult i32 %switch.tableidx, 16
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -32583, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond151 = select i1 %3, i1 %switch.lobit, i1 false
  br i1 %or.cond151, label %.lr.ph.split.split.us, label %.lr.ph.split.split.outer

.lr.ph.split.split.outer:                         ; preds = %.lr.ph.split, %.thread120
  %indvars.iv98.ph = phi i64 [ %indvars.iv.next99122, %.thread120 ], [ 1, %.lr.ph.split ]
  %i.ap = phi i1 [ false, %.thread120 ], [ true, %.lr.ph.split ]
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.r
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %bb.r ], [ 1, %.lr.ph.split ] ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %1, i64 %indvars.iv92
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16 ; 3 uses
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split.us
  %i.at = tail call i64 @rb_num2int(i64 noundef %i.ar) #16
  br label %rb_num2int_inline.exit52.us73

bb.o:                                             ; preds = %.lr.ph.split.split.us
  %i.au = tail call i64 @rb_fix2int(i64 noundef %i.ar) #16
  br label %rb_num2int_inline.exit52.us73

rb_num2int_inline.exit52.us73:                    ; preds = %bb.o, %bb.n
  %.0.i51.us74 = phi i64 [ %i.au, %bb.o ], [ %i.at, %bb.n ]
  %i.av = trunc i64 %.0.i51.us74 to i32           ; 2 uses
  %i.aw = icmp eq i32 %i.ac, %i.av
  br i1 %i.aw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %rb_num2int_inline.exit52.us73
  %i.ax = tail call i32 @kill(i32 noundef %i.av, i32 noundef %.039.fr) #16
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.split.us, label %bb.r

bb.q:                                             ; preds = %rb_num2int_inline.exit52.us73
  %i.az = tail call i32 @kill(i32 noundef %i.ac, i32 noundef %.039.fr) #16 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count102
  br i1 %exitcond97.not, label %.loopexit, label %.lr.ph.split.split.us, !llvm.loop !58

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.outer, %bb.z
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %bb.z ], [ %indvars.iv98.ph, %.lr.ph.split.split.outer ] ; 3 uses
  %i.ba = getelementptr [8 x i8], ptr %1, i64 %indvars.iv98
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !16 ; 3 uses
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.split
  %i.bd = call i64 @rb_fix2int(i64 noundef %i.bb) #16
  br label %rb_num2int_inline.exit52

bb.t:                                             ; preds = %.lr.ph.split.split
  %i.be = call i64 @rb_num2int(i64 noundef %i.bb) #16
  br label %rb_num2int_inline.exit52

rb_num2int_inline.exit52:                         ; preds = %bb.s, %bb.t
  %.0.i51 = phi i64 [ %i.bd, %bb.s ], [ %i.be, %bb.t ]
  %i.bf = trunc i64 %.0.i51 to i32                ; 2 uses
  %i.bg = icmp eq i32 %i.ac, %i.bf
  br i1 %i.bg, label %bb.u, label %bb.y

bb.u:                                             ; preds = %rb_num2int_inline.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.bh = call i32 @sigaction(i32 noundef range(i32 1, -2147483648) %.039.fr, ptr noundef null, ptr noundef nonnull %2) #16
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %signal_ignored.exit.thread, label %bb.v

signal_ignored.exit.thread:                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %.thread120

bb.v:                                             ; preds = %bb.u
  %i.bj = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, inttoptr (i64 1 to ptr)
  br i1 %i.bk, label %.thread, label %signal_ignored.exit

.thread:                                          ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.z

signal_ignored.exit:                              ; preds = %bb.v
  %.not61 = icmp eq ptr %i.bj, @sighandler
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br i1 %.not61, label %.thread120, label %bb.w

bb.w:                                             ; preds = %signal_ignored.exit
  %i.bl = call i32 @kill(i32 noundef %i.ac, i32 noundef %.039.fr) #16
  %.not49 = icmp eq i32 %i.bl, 0
  br i1 %.not49, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = call ptr @rb_errno_ptr() #16
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  call void @rb_syserr_fail(i32 noundef %i.bn, ptr noundef null) #18
  unreachable

bb.y:                                             ; preds = %rb_num2int_inline.exit52
  %i.bo = call i32 @kill(i32 noundef %i.bf, i32 noundef %.039.fr) #16
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.split.us, label %bb.z

.split.us:                                        ; preds = %rb_num2int_inline.exit52.us, %bb.y, %bb.p
  %i.bq = call ptr @rb_errno_ptr() #16
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  call void @rb_syserr_fail(i32 noundef %i.br, ptr noundef null) #18
  unreachable

bb.z:                                             ; preds = %.thread, %bb.w, %bb.y
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !58

.thread120:                                       ; preds = %signal_ignored.exit, %signal_ignored.exit.thread
  %i.bs = atomicrmw volatile add ptr %i.ag, i32 1 seq_cst, align 4 ; 0 uses
  %i.bt = atomicrmw volatile add ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 260), i32 1 seq_cst, align 4 ; 0 uses
  %indvars.iv.next99122 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond103.not123 = icmp eq i64 %indvars.iv.next99122, %wide.trip.count102
  br i1 %exitcond103.not123, label %._crit_edge.thread125, label %.lr.ph.split.split.outer, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.z
  br i1 %i.ap, label %.loopexit, label %._crit_edge.thread125

._crit_edge.thread125:                            ; preds = %.thread120, %._crit_edge
  %i.bu = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !11
  %i.bv = getelementptr i8, ptr %i.bu, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !34
  call void @rb_threadptr_check_signal(ptr noundef %i.bw) #16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.r, %bb.i, %._crit_edge.thread125, %._crit_edge
  %i.bx = call i64 @rb_thread_current() #16
  call void @rb_thread_execute_interrupts(i64 noundef %i.bx) #16
  %i.by = add nsw i32 %0, -1
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = or disjoint i64 %i.ca, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i64 %i.cb
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @signm2signo(ptr noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2, ptr noundef writeonly captures(address_is_null) %3) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16     ; 9 uses
  %i.b = and i64 %i.a, 255
  %i.c = icmp eq i64 %i.b, 12
  br i1 %i.c, label %RB_SYMBOL_P.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.a, 0
  %i.e = and i64 %i.a, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.b
  %i.h = inttoptr i64 %i.a to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 20
  br i1 %i.k, label %RB_SYMBOL_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.a, %RB_SYMBOL_P.exit
  %i.l = tail call i64 @rb_sym2str(i64 noundef %i.a) #16
  br label %.sink.split

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RB_SYMBOL_P.exit
  %i.m = inttoptr i64 %i.a to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !60
  %i.o = and i64 %i.n, 31
  %i.p = icmp eq i64 %i.o, 5
  br i1 %i.p, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.q = tail call i64 @rb_check_string_type(i64 noundef %i.a) #16 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.s = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  %i.t = tail call ptr @rb_obj_classname(i64 noundef %i.a) #16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.21, ptr noundef %i.t) #18
  unreachable

.sink.split:                                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %RB_SYMBOL_P.exit.thread
  %.sink = phi i64 [ %i.l, %RB_SYMBOL_P.exit.thread ], [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.thread ] ; 2 uses
  store i64 %.sink, ptr %0, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %rbimpl_RB_TYPE_P_fastpath.exit
  %.061 = phi i64 [ %i.a, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %.sink, %.sink.split ] ; 5 uses
  tail call void @rb_must_asciicompat(i64 noundef %.061) #16
  %i.u = inttoptr i64 %.061 to ptr                ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60
  %i.w = and i64 %i.v, 8192
  %.not.i = icmp eq i64 %i.w, 0
  %i.x = getelementptr i8, ptr %i.u, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.z = phi ptr [ %i.y, %bb.e ], [ %i.x, %bb.d ] ; 4 uses
  %i.aa = getelementptr i8, ptr %i.u, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62 ; 6 uses
  %i.ac = tail call ptr @memchr(ptr noundef %i.z, i32 noundef 0, i64 noundef %i.ab) #24
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.ad = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.22) #18
  unreachable

bb.g:                                             ; preds = %RSTRING_PTR.exit
  %i.ae = icmp sgt i64 %i.ab, 0
  br i1 %i.ae, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.z, align 1, !tbaa !59
  %i.ag = icmp eq i8 %i.af, 45
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not68 = icmp eq i32 %1, 0
  br i1 %.not68, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.23, i64 noundef %.061) #18
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.not74 = phi i1 [ false, %bb.i ], [ true, %bb.h ], [ true, %bb.g ]
  %.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ] ; 4 uses
  %i.ai = add nuw nsw i32 %.0, 3                  ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %.not69 = icmp slt i64 %i.ab, %i.aj
  br i1 %.not69, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = zext nneg i32 %.0 to i64
  %i.al = getelementptr i8, ptr %i.z, i64 %i.ak   ; 2 uses
  %i.am = load i16, ptr %i.al, align 1
  %i.an = xor i16 %i.am, 18771
  %i.ao = getelementptr i8, ptr %i.al, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i16
  %i.ar = xor i16 %i.aq, 71
  %i.as = or i16 %i.an, %i.ar
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  %spec.select = select i1 %i.av, i32 %i.ai, i32 %.0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi i32 [ %.0, %bb.k ], [ %spec.select, %bb.l ] ; 4 uses
  %i.aw = zext nneg i32 %.1 to i64                ; 5 uses
  %.not70 = icmp sgt i64 %i.ab, %i.aw
  br i1 %.not70, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %.not71 = icmp eq ptr %3, null
  br i1 %.not71, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.1, ptr %3, align 4, !tbaa !7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ax = sub nsw i64 %i.ab, %i.aw                ; 3 uses
  %i.ay = getelementptr i8, ptr %i.z, i64 %i.aw
  %i.az = icmp sgt i64 %i.ax, 7
  br i1 %i.az, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = xor i32 %2, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr [12 x i8], ptr @siglist, i64 %i.bb ; 2 uses
  %i.bd = icmp ult ptr %i.bc, getelementptr inbounds nuw (i8, ptr @siglist, i64 408)
  br i1 %i.bd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.q, %bb.t
  %.06078 = phi ptr [ %i.bm, %bb.t ], [ %i.bc, %bb.q ] ; 4 uses
  %bcmp73 = tail call i32 @bcmp(ptr %.06078, ptr %i.ay, i64 %i.ax)
  %i.be = icmp eq i32 %bcmp73, 0
  br i1 %i.be, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.lr.ph
  %i.bf = getelementptr i8, ptr %.06078, i64 %i.ax
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !59
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr i8, ptr %.06078, i64 8
end_hunk_0
begin_hunk_1_@sigill:bb.a
  unreachable
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @sigsegv(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #10 {
bb.a:
  tail call fastcc void @check_reserved_signal_(ptr noundef nonnull @.str.44, i64 noundef 4)
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !101
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = getelementptr i8, ptr %2, i64 120
  %.val = load i64, ptr %i.g, align 8, !tbaa !103
  %i.h = getelementptr i8, ptr %2, i64 160
  %.val7 = load i64, ptr %i.h, align 8, !tbaa !103
  tail call fastcc void @check_stack_overflow(i32 noundef %0, i64 noundef %i.f, i64 %.val, i64 %.val7)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load ptr, ptr @default_sigsegv_handler, align 8, !tbaa !98
  %i.j = getelementptr i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  tail call void (ptr, i32, ptr, ptr, ...) @rb_bug_for_fatal_signal(ptr noundef %i.i, i32 noundef %0, ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef %i.k) #18
  unreachable
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @sigabrt(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #10 {
bb.a:
  tail call fastcc void @check_reserved_signal_(ptr noundef nonnull @.str.46, i64 noundef 4)
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !101
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = getelementptr i8, ptr %2, i64 120
  %.val = load i64, ptr %i.g, align 8, !tbaa !103
  %i.h = getelementptr i8, ptr %2, i64 160
  %.val7 = load i64, ptr %i.h, align 8, !tbaa !103
  tail call fastcc void @check_stack_overflow(i32 noundef %0, i64 noundef %i.f, i64 %.val, i64 %.val7)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load ptr, ptr @default_sigabrt_handler, align 8, !tbaa !98
  %i.j = getelementptr i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  tail call void (ptr, i32, ptr, ptr, ...) @rb_bug_for_fatal_signal(ptr noundef %i.i, i32 noundef %0, ptr noundef %2, ptr noundef nonnull @.str.47, ptr noundef %i.k) #18
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal void @sig_do_nothing(i32 %0) #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local void @rb_signal_atfork() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #4

declare i64 @rb_sym2str(i64 noundef) local_unnamed_addr #4

declare i64 @rb_check_string_type(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #5

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #4

declare void @rb_must_asciicompat(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

declare i64 @rb_str_subseq(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_gc_enable() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_bug_errno(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #15

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #16

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 1, 9) i32 @rb_ec_tag_state(ptr noundef %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !74   ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !74
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !96   ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.b, %bb.a
  %.0.i2.i.i = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %i.l, align 8, !tbaa !94
  %i.m = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %i.m, label %bb.c, label %rb_ec_vm_lock_rec.exit.i

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.n = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !95
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.c, %rb_ec_ractor_ptr.exit.i.i
  %.0.i.i = phi i32 [ %i.o, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.d

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #16
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.d
  %i.p = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.q)
  ret i32 %i.d
}

declare i64 @rb_eval_cmd_call_kw(i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @rb_ec_vm_lock_rec_release(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(ptr) #18

declare void @rb_thread_wakeup_timer_thread(i32 noundef) local_unnamed_addr #4

declare i64 @rb_block_proc() local_unnamed_addr #4

declare i64 @rb_obj_is_proc(i64 noundef) local_unnamed_addr #4

declare i64 @rb_proc_isolate(i64 noundef) local_unnamed_addr #4

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal fastcc noundef ptr @default_handler(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %1 = icmp ult i32 %switch.tableidx, 31
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.default_handler, i64 %2
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %switch.load, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare zeroext i1 @rb_ractor_main_p_() local_unnamed_addr #4

declare zeroext i1 @rb_ractor_shareable_p_continue(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @rb_syserr_fail_str(i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_signo2signm(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 32
  %switch.shifted = lshr i32 -65537, %0
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %signo2signm.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rb_signo2signm, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.36, ptr noundef nonnull %switch.load) #16
  br label %bb.b

signo2signm.exit:                                 ; preds = %bb.a
  %i.d = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.37, i32 noundef %0) #16
  br label %bb.b

bb.b:                                             ; preds = %signo2signm.exit, %switch.lookup
  %.0 = phi i64 [ %i.c, %switch.lookup ], [ %i.d, %signo2signm.exit ]
  ret i64 %.0
}

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare i64 @rb_hash_new() local_unnamed_addr #4

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_fstring_cstr(ptr noundef) local_unnamed_addr #4

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #4

declare i64 @rb_check_to_integer(i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_call_super(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ivar_get(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc void @check_reserved_signal_(ptr noundef %0, i64 noundef range(i64 3, 5) %1) unnamed_addr #19 {
bb.a:
  %2 = alloca [4 x %struct.iovec], align 16       ; 10 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = atomicrmw volatile xchg ptr @received_signal, i64 %i.a seq_cst, align 8 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %0, ptr %2, align 16, !tbaa !98
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @check_reserved_signal_.msg1, ptr %i.d, align 16, !tbaa !98
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 13, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #24
  store ptr %i.c, ptr %i.e, align 16, !tbaa !98
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.f, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @check_reserved_signal_.msg2, ptr %i.g, align 16, !tbaa !98
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 9, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !16
  %i.h = call i64 @writev(i32 noundef 2, ptr noundef nonnull %2, i32 noundef 4) #16 ; 0 uses
  call fastcc void @ruby_abort() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !11
  %.not16 = icmp eq ptr %i.i, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i64 @rb_gc_disable_no_rest() #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @check_stack_overflow(i32 noundef %0, i64 noundef %1, i64 %.120.val, i64 %.160.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = lshr i64 %.160.val, 12                   ; 3 uses
  %i.c = lshr i64 %1, 12                          ; 4 uses
  %i.d = icmp eq i64 %i.b, %i.c
  %i.e = add nuw nsw i64 %i.c, 1                  ; 29 uses
  %i.f = icmp eq i64 %i.b, %i.e
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %.120.val, 12
  %.not = icmp samesign ugt i64 %i.b, %i.c
  %.not27 = icmp samesign ugt i64 %i.c, %i.g
  %or.cond32 = select i1 %.not, i1 true, i1 %.not27
  br i1 %or.cond32, label %bb.ae, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  store volatile ptr %i.i, ptr %i.a, align 8, !tbaa !20
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 28 uses
  %.promoted = load ptr, ptr %i.j, align 8, !tbaa !77 ; 2 uses
  %i.k = getelementptr i8, ptr %.promoted, i64 16
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = lshr i64 %i.l, 12
  %.not281 = icmp samesign ugt i64 %i.m, %i.e
  br i1 %.not281, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.promoted, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 4 uses
  %.not29 = icmp eq ptr %i.o, null
  br i1 %.not29, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.preheader
  store ptr %i.o, ptr %i.j, align 8, !tbaa !77
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = lshr i64 %i.q, 12
  %.not28 = icmp samesign ugt i64 %i.r, %i.e
  br i1 %.not28, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.o, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78   ; 4 uses
  %.not29.1 = icmp eq ptr %i.t, null
  br i1 %.not29.1, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.1
  store ptr %i.t, ptr %i.j, align 8, !tbaa !77
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = lshr i64 %i.v, 12
  %.not28.1 = icmp samesign ugt i64 %i.w, %i.e
  br i1 %.not28.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.t, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78   ; 4 uses
  %.not29.2 = icmp eq ptr %i.y, null
  br i1 %.not29.2, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph.2
  store ptr %i.y, ptr %i.j, align 8, !tbaa !77
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = lshr i64 %i.aa, 12
  %.not28.2 = icmp samesign ugt i64 %i.ab, %i.e
  br i1 %.not28.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.y, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 4 uses
  %.not29.3 = icmp eq ptr %i.ad, null
  br i1 %.not29.3, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.3
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !77
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = lshr i64 %i.af, 12
  %.not28.3 = icmp samesign ugt i64 %i.ag, %i.e
  br i1 %.not28.3, label %._crit_edge, label %.lr.ph.4

end_hunk_1
