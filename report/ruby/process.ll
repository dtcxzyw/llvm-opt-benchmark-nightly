inline.NumInlined: 701
inline.NumDeleted: 154
begin_hunk_0
@.str.203 = private unnamed_addr constant [15 x i8] c"fcntl(F_GETFD)\00", align 1
@.str.204 = private unnamed_addr constant [15 x i8] c"fcntl(F_SETFD)\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"getresuid(2)\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"getresgid(2)\00", align 1
@.str.207 = private unnamed_addr constant [28 x i8] c"signal to obtain old action\00", align 1
@.str.208 = private unnamed_addr constant [12 x i8] c"sigprocmask\00", align 1
@.str.209 = private unnamed_addr constant [40 x i8] c"set_blocking failed reading child error\00", align 1
@ruby_single_main_ractor = external local_unnamed_addr global ptr, align 8
@.str.210 = private unnamed_addr constant [11 x i8] c"sigfillset\00", align 1
@.str.211 = private unnamed_addr constant [16 x i8] c"pthread_sigmask\00", align 1
@cached_pid = internal unnamed_addr global i32 0, align 4
@rb_cFalseClass = external local_unnamed_addr global i64, align 8
@rb_cNilClass = external local_unnamed_addr global i64, align 8
@rb_cTrueClass = external local_unnamed_addr global i64, align 8
@rb_cInteger = external local_unnamed_addr global i64, align 8
@rb_cSymbol = external local_unnamed_addr global i64, align 8
@rb_cFloat = external local_unnamed_addr global i64, align 8
@.str.212 = private unnamed_addr constant [8 x i8] c"fork(2)\00", align 1
@rlimit_type_by_sym.prefix = internal constant [8 x i8] c"rlimit_\00", align 1
@.str.213 = private unnamed_addr constant [3 x i8] c"AS\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"CORE\00", align 1
@.str.215 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"FSIZE\00", align 1
@.str.218 = private unnamed_addr constant [8 x i8] c"MEMLOCK\00", align 1
@.str.219 = private unnamed_addr constant [9 x i8] c"MSGQUEUE\00", align 1
@.str.220 = private unnamed_addr constant [7 x i8] c"NOFILE\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"NPROC\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"NICE\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"RSS\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"RTPRIO\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"RTTIME\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"STACK\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"SIGPENDING\00", align 1
@under_uid_switch = internal unnamed_addr global i1 false, align 4
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.229 = private unnamed_addr constant [76 x i8] c"can't handle UID while evaluating block given to Process::UID.switch method\00", align 1
@under_gid_switch = internal unnamed_addr global i1 false, align 4
@.str.230 = private unnamed_addr constant [76 x i8] c"can't handle GID while evaluating block given to Process::UID.switch method\00", align 1
@.str.231 = private unnamed_addr constant [20 x i8] c"Command failed with\00", align 1
@.str.232 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.233 = private unnamed_addr constant [27 x i8] c" stopped SIG%s (signal %d)\00", align 1
@.str.234 = private unnamed_addr constant [19 x i8] c" stopped signal %d\00", align 1
@.str.235 = private unnamed_addr constant [19 x i8] c" SIG%s (signal %d)\00", align 1
@.str.236 = private unnamed_addr constant [11 x i8] c" signal %d\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c" exit %d\00", align 1
@.str.238 = private unnamed_addr constant [15 x i8] c" (core dumped)\00", align 1
@ruby_static_id_status = external local_unnamed_addr global i64, align 8
@.str.239 = private unnamed_addr constant [8 x i8] c"pid %ld\00", align 1
@.str.240 = private unnamed_addr constant [21 x i8] c"#<%s: uninitialized>\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"#<%s: \00", align 1
@.str.242 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.243 = private unnamed_addr constant [29 x i8] c"invalid resource name: % li\0B\00", align 1
@.str.244 = private unnamed_addr constant [9 x i8] c"INFINITY\00", align 1
@.str.245 = private unnamed_addr constant [10 x i8] c"SAVED_MAX\00", align 1
@.str.246 = private unnamed_addr constant [10 x i8] c"SAVED_CUR\00", align 1
@.str.247 = private unnamed_addr constant [29 x i8] c"invalid resource value: %li\0B\00", align 1
@.str.248 = private unnamed_addr constant [24 x i8] c"too many groups, %d max\00", align 1
@_maxgroups = internal unnamed_addr global i32 -1, align 4
@.str.249 = private unnamed_addr constant [32 x i8] c"maxgroups %d should be positive\00", align 1
@.str.250 = private unnamed_addr constant [8 x i8] c"noclose\00", align 1
@.str.251 = private unnamed_addr constant [8 x i8] c"nochdir\00", align 1
@.str.252 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ruby_null_device = external constant [0 x i8], align 1
@.str.253 = private unnamed_addr constant [13 x i8] c"gettimeofday\00", align 1
@.str.254 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.255 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.256 = private unnamed_addr constant [21 x i8] c"clock_gettime(%+li\0B)\00", align 1
@.str.257 = private unnamed_addr constant [22 x i8] c"unexpected unit: %li\0B\00", align 1
@.str.258 = private unnamed_addr constant [20 x i8] c"clock_getres(%+li\0B)\00", align 1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local i64 @rb_last_status_get() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr i8, ptr %.val.i, i64 216
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_process_status_new(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr @rb_cProcessStatus, align 8, !tbaa !47
  %i.b = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.a, i64 noundef 12, ptr noundef nonnull @rb_process_status_type) #26 ; 3 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  %i.f = trunc i64 %i.e to i1
  %i.g = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  br i1 %i.f, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  store i32 %0, ptr %i.i, align 4, !tbaa !52
  %i.j = getelementptr i8, ptr %i.i, i64 4
  store i32 %1, ptr %i.j, align 4, !tbaa !54
  %i.k = getelementptr i8, ptr %i.i, i64 8
  store i32 %2, ptr %i.k, align 4, !tbaa !55
  %i.l = tail call i64 @rb_obj_freeze(i64 noundef %i.b) #26 ; 0 uses
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_process_status_allocate(i64 noundef %0) #1 {
RTYPEDDATA_GET_DATA.exit:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 12, ptr noundef nonnull @rb_process_status_type) #26
  ret i64 %i.a
}

declare i64 @rb_obj_freeze(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_last_status_set(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @rb_cProcessStatus, align 8, !tbaa !47
  %i.c = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.b, i64 noundef 12, ptr noundef nonnull @rb_process_status_type) #26 ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48
  %i.g = trunc i64 %i.f to i1
  %i.h = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  br i1 %i.g, label %rb_process_status_new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  br label %rb_process_status_new.exit

rb_process_status_new.exit:                       ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  store i32 %1, ptr %i.j, align 4, !tbaa !52
  %i.k = getelementptr i8, ptr %i.j, i64 4
  store i32 %0, ptr %i.k, align 4, !tbaa !54
  %i.l = getelementptr i8, ptr %i.j, i64 8
  store i32 0, ptr %i.l, align 4, !tbaa !55
  %i.m = tail call i64 @rb_obj_freeze(i64 noundef %i.c) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11
  store volatile ptr %i.o, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.q = getelementptr i8, ptr %.val.i, i64 216
  store i64 %i.c, ptr %i.q, align 8, !tbaa !27
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define hidden void @rb_last_status_clear() local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr i8, ptr %.val.i, i64 216
  store i64 4, ptr %i.e, align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_process_status_wait(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.waitpid_state, align 8      ; 10 uses
  %i.b = and i32 %1, 1
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_fiber_scheduler_current() #26 ; 2 uses
  %.not16 = icmp eq i64 %i.c, 4
  br i1 %.not16, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @rb_fiber_scheduler_process_wait(i64 noundef %i.c, i32 noundef %0, i32 noundef %1) #26
  %.fr = freeze i64 %i.d                          ; 2 uses
  %i.e = icmp eq i64 %.fr, 36
  br i1 %i.e, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  store i32 0, ptr %i.f, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %0, ptr %i.g, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %1, ptr %i.h, align 4, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  store volatile ptr %i.l, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %.0..0..0..0..0..0..i, ptr %i.m, align 8, !tbaa !62
  br i1 %.not, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %.thread
  %i.n = call ptr @rb_thread_call_without_gvl(ptr noundef nonnull @waitpid_blocking_no_SIGCHLD, ptr noundef nonnull %2, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #26 ; 0 uses
  %i.o = load i32, ptr %i.f, align 8, !tbaa !56   ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %waitpid_no_SIGCHLD.exit

bb.d:                                             ; preds = %.thread
  %i.q = call i32 @waitpid(i32 noundef %0, ptr noundef nonnull %i.j, i32 noundef %1) #26 ; 2 uses
  store i32 %i.q, ptr %i.f, align 8, !tbaa !56
  br label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %rb_vm_check_ints.exit.i
  %i.r = call ptr @rb_errno_ptr() #26
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = icmp eq i32 %i.s, 4
  br i1 %i.t, label %bb.e, label %..critedge.loopexit_crit_edge.i

..critedge.loopexit_crit_edge.i:                  ; preds = %.lr.ph.i
  %.pre.pre.i = load i32, ptr %i.f, align 8, !tbaa !56
  br label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !62   ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 32
  %i.w = load atomic volatile i32, ptr %i.v monotonic, align 4
  %i.x = getelementptr i8, ptr %i.u, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !63
  %i.z = xor i32 %i.y, -1
  %i.aa = and i32 %i.w, %i.z
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %rb_vm_check_ints.exit.i, label %bb.f, !prof !64

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.u, i64 48
  %.val.i.i = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.ac = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i, i32 noundef 0) #26 ; 0 uses
  br label %rb_vm_check_ints.exit.i

rb_vm_check_ints.exit.i:                          ; preds = %bb.f, %bb.e
  %i.ad = call ptr @rb_thread_call_without_gvl(ptr noundef nonnull @waitpid_blocking_no_SIGCHLD, ptr noundef nonnull %2, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #26 ; 0 uses
  %i.ae = load i32, ptr %i.f, align 8, !tbaa !56  ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %waitpid_no_SIGCHLD.exit, !llvm.loop !65

.critedge.i:                                      ; preds = %..critedge.loopexit_crit_edge.i, %bb.d
  %i.ag = phi i32 [ %i.q, %bb.d ], [ %.pre.pre.i, %..critedge.loopexit_crit_edge.i ] ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.g, label %waitpid_no_SIGCHLD.exit

bb.g:                                             ; preds = %.critedge.i
  %i.ai = call ptr @rb_errno_ptr() #26
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  store i32 %i.aj, ptr %i.i, align 8, !tbaa !60
  %.pr.pre = load i32, ptr %i.f, align 8, !tbaa !56
  br label %waitpid_no_SIGCHLD.exit

waitpid_no_SIGCHLD.exit:                          ; preds = %rb_vm_check_ints.exit.i, %.critedge.i, %bb.g, %.preheader.i
  %i.ak = phi i32 [ %i.ag, %.critedge.i ], [ %i.o, %.preheader.i ], [ %.pr.pre, %bb.g ], [ %i.ae, %rb_vm_check_ints.exit.i ] ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %bb.h

bb.h:                                             ; preds = %waitpid_no_SIGCHLD.exit
  %i.am = load i32, ptr %i.j, align 8, !tbaa !61
  %i.an = load i32, ptr %i.i, align 8, !tbaa !60
  %i.ao = load i64, ptr @rb_cProcessStatus, align 8, !tbaa !47
  %i.ap = call i64 @rb_data_typed_object_zalloc(i64 noundef %i.ao, i64 noundef 12, ptr noundef nonnull @rb_process_status_type) #26 ; 3 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !48
  %i.at = trunc i64 %i.as to i1
  %i.au = getelementptr i8, ptr %i.aq, i64 32     ; 2 uses
  br i1 %i.at, label %rb_process_status_new.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !51
  br label %rb_process_status_new.exit

rb_process_status_new.exit:                       ; preds = %bb.h, %bb.i
  %i.aw = phi ptr [ %i.av, %bb.i ], [ %i.au, %bb.h ] ; 3 uses
  store i32 %i.ak, ptr %i.aw, align 4, !tbaa !52
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  store i32 %i.am, ptr %i.ax, align 4, !tbaa !54
  %i.ay = getelementptr i8, ptr %i.aw, i64 8
  store i32 %i.an, ptr %i.ay, align 4, !tbaa !55
  %i.az = call i64 @rb_obj_freeze(i64 noundef %i.ap) #26 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %waitpid_no_SIGCHLD.exit, %rb_process_status_new.exit
  %.3 = phi i64 [ %i.ap, %rb_process_status_new.exit ], [ 4, %waitpid_no_SIGCHLD.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j
  %.4 = phi i64 [ %.3, %bb.j ], [ %.fr, %bb.c ]
  ret i64 %.4
}

declare i64 @rb_fiber_scheduler_current() local_unnamed_addr #3

declare i64 @rb_fiber_scheduler_process_wait(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_waitpid(i32 noundef %0, ptr noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_process_status_wait(i32 noundef %0, i32 noundef %2) ; 3 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @rb_check_typeddata(i64 noundef %i.b, ptr noundef nonnull @rb_process_status_type) #26 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52   ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54
  store i32 %i.g, ptr %1, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = icmp eq i32 %i.e, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.d, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !55
  %i.k = tail call ptr @rb_errno_ptr() #26
  store i32 %i.j, ptr %i.k, align 4, !tbaa !7
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11
  store volatile ptr %i.m, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr i8, ptr %.val.i, i64 216
  store i64 %i.b, ptr %i.o, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.f ], [ -1, %bb.e ]
  ret i32 %.0
}

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rb_errno_ptr() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_detach_process(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call i64 @rb_thread_create(ptr noundef nonnull @detach_process_watcher, ptr noundef %i.b) #26 ; 4 uses
  %i.d = load i64, ptr @id_pid, align 8, !tbaa !47
  %i.e = shl nsw i64 %i.a, 1
  %i.f = or disjoint i64 %i.e, 1
  %i.g = tail call i64 @rb_thread_local_aset(i64 noundef %i.c, i64 noundef %i.d, i64 noundef %i.f) #26 ; 0 uses
  %i.h = load i64, ptr @rb_cWaiter, align 8, !tbaa !47 ; 4 uses
  %i.i = inttoptr i64 %i.c to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store i64 %i.h, ptr %i.j, align 8, !tbaa !47
  %i.k = icmp eq i64 %i.h, 0
  %i.l = and i64 %i.h, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %RBASIC_SET_CLASS.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %i.c, i64 noundef %i.h) #26
  br label %RBASIC_SET_CLASS.exit

RBASIC_SET_CLASS.exit:                            ; preds = %bb.a, %bb.b
  ret i64 %i.c
}

declare i64 @rb_thread_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @detach_process_watcher(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = trunc i64 %i.c to i32
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.f = tail call i64 @rb_process_status_wait(i32 noundef %i.d, i32 noundef 0) ; 3 uses
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %.critedge.backedge, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.h = tail call ptr @rb_check_typeddata(i64 noundef %i.f, ptr noundef nonnull @rb_process_status_type) #26 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !52   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %rb_waitpid.exit.thread, label %rb_waitpid.exit

rb_waitpid.exit.thread:                           ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !55
  %i.m = tail call ptr @rb_errno_ptr() #26
  store i32 %i.l, ptr %i.m, align 4, !tbaa !7
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !11
  br label %.loopexit

rb_waitpid.exit:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  store volatile ptr %i.n, ptr %i.b, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr i8, ptr %.val.i.i, i64 216
  store i64 %i.f, ptr %i.p, align 8, !tbaa !27
  %i.q = icmp eq i32 %i.i, 0
  br i1 %i.q, label %.critedge.backedge, label %.loopexit

.critedge.backedge:                               ; preds = %rb_waitpid.exit, %.critedge
  br label %.critedge, !llvm.loop !67

.loopexit:                                        ; preds = %rb_waitpid.exit, %rb_waitpid.exit.thread
  %i.r = phi ptr [ %.pre, %rb_waitpid.exit.thread ], [ %i.n, %rb_waitpid.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.r, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i1 = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i1, i64 48
  %.val.i.i2 = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.t = getelementptr i8, ptr %.val.i.i2, i64 216
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27
  ret i64 %i.u
}

declare i64 @rb_thread_local_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @rb_proc_exec(ptr noundef nonnull %0) local_unnamed_addr #1 {
bb.a:
  tail call void @rb_thread_stop_timer_thread() #26
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %bb.a
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.b, %.critedge.i ] ; 2 uses
  %i.a = load i8, ptr %.0.i, align 1, !tbaa !68
  switch i8 %i.a, label %bb.c [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %proc_exec_sh.exit
  ]

.critedge.i:                                      ; preds = %bb.b, %bb.b, %bb.b
  %i.b = getelementptr i8, ptr %.0.i, i64 1
  br label %bb.b, !llvm.loop !69

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 (ptr, ptr, ...) @execl(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef nonnull %0, ptr noundef null) #26 ; 0 uses
  %i.d = tail call ptr @rb_errno_ptr() #26
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  br label %proc_exec_sh.exit

proc_exec_sh.exit:                                ; preds = %bb.b, %bb.c
  %.010.i = phi i32 [ %i.e, %bb.c ], [ 2, %bb.b ]
  tail call void @rb_thread_reset_timer_thread() #26
  tail call void @rb_thread_start_timer_thread() #26
  %i.f = tail call ptr @rb_errno_ptr() #26
  store i32 %.010.i, ptr %i.f, align 4, !tbaa !7
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @after_exec() unnamed_addr #1 {
bb.a:
  tail call void @rb_thread_reset_timer_thread() #26
  tail call void @rb_thread_start_timer_thread() #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_execarg_addopt(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
end_hunk_0
begin_hunk_1_@obj2gid:bb.a

bb.h:                                             ; preds = %.lr.ph
  %i.af = call i64 @rb_str_resize(i64 noundef %i.ae, i64 noundef 0) #26 ; 0 uses
  call void @rb_syserr_fail(i32 noundef %i.aa, ptr noundef nonnull @.str.181) #28
  unreachable

bb.i:                                             ; preds = %.lr.ph
  call void @rb_str_modify_expand(i64 noundef %i.ae, i64 noundef %i.ac) #26
  %i.ag = load i64, ptr %1, align 8, !tbaa !47    ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !71
  %i.aj = and i64 %i.ai, 8192
  %.not.i26 = icmp eq i64 %i.aj, 0
  %i.ak = getelementptr i8, ptr %i.ah, i64 24     ; 2 uses
  br i1 %.not.i26, label %RSTRING_PTR.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !68
  br label %RSTRING_PTR.exit27

RSTRING_PTR.exit27:                               ; preds = %bb.i, %bb.j
  %i.am = phi ptr [ %i.al, %bb.j ], [ %i.ak, %bb.i ]
  store ptr %i.am, ptr %i.u, align 8, !tbaa !225
  %i.an = call i64 @rb_str_capacity(i64 noundef %i.ag) #27
  store i64 %i.an, ptr %i.v, align 8, !tbaa !226
  %i.ao = call ptr @rb_nogvl(ptr noundef nonnull @nogvl_getgrnam_r, ptr noundef nonnull %2, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #26
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %.not24 = icmp eq i32 %i.aq, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !llvm.loop !227

._crit_edge:                                      ; preds = %RSTRING_PTR.exit27, %RSTRING_PTR.exit
  %i.ar = load ptr, ptr %i.w, align 8, !tbaa !228 ; 2 uses
  %.not25 = icmp eq ptr %i.ar, null
  br i1 %.not25, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.as = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  %i.at = load i64, ptr %i.a, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.as, ptr noundef nonnull @.str.182, i64 noundef %i.at) #28
  unreachable

bb.l:                                             ; preds = %._crit_edge
  %i.au = getelementptr i8, ptr %i.ar, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !229
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ %i.av, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_getgrnam_r(ptr noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !220
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !226
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = tail call i32 @getgrnam_r(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.f, ptr noundef %i.g) #26
  %i.i = sext i32 %i.h to i64
  %i.j = inttoptr i64 %i.i to ptr
  ret ptr %i.j
}

declare i32 @getgrnam_r(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @check_exec_redirect1(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_ary_new() #26          ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %i.e = icmp eq i64 %1, 0
  %i.f = and i64 %1, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.c
  %i.i = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 7
  br i1 %i.l, label %.preheader, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

.preheader:                                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.m = getelementptr i8, ptr %i.i, i64 16       ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 32
  br label %bb.d

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.o = tail call fastcc i64 @check_exec_redirect_fd(i64 noundef %1)
  %i.p = tail call i64 @rb_assoc_new(i64 noundef %i.o, i64 noundef %2) #26 ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !47
  %i.s = tail call i64 @rb_ary_push(i64 noundef %.0, i64 noundef %i.p) #26 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %RARRAY_AREF.exit
  %i.t = phi i64 [ %.pre, %RARRAY_AREF.exit ], [ %i.j, %.preheader ] ; 2 uses
  %.018 = phi i32 [ %i.aj, %RARRAY_AREF.exit ], [ 0, %.preheader ] ; 2 uses
  %i.u = sext i32 %.018 to i64                    ; 3 uses
  %i.v = and i64 %i.t, 8192
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.d
  %i.w = load i64, ptr %i.m, align 8, !tbaa !68
  %i.x = icmp sgt i64 %i.w, %i.u
  br i1 %i.x, label %bb.e, label %.loopexit

rb_array_len.exit.thread:                         ; preds = %bb.d
  %i.y = lshr i64 %i.t, 15
  %i.z = and i64 %i.y, 127
  %i.aa = icmp sgt i64 %i.z, %i.u
  br i1 %i.aa, label %RARRAY_AREF.exit, label %.loopexit

bb.e:                                             ; preds = %rb_array_len.exit
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !68
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit.thread, %bb.e
  %.0.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.m, %rb_array_len.exit.thread ]
  %i.ac = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.u
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !47
  %i.ae = tail call fastcc i64 @check_exec_redirect_fd(i64 noundef %i.ad)
  %i.af = tail call i64 @rb_assoc_new(i64 noundef %i.ae, i64 noundef %2) #26 ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !47
  %i.ai = tail call i64 @rb_ary_push(i64 noundef %.0, i64 noundef %i.af) #26 ; 0 uses
  %i.aj = add i32 %.018, 1
  %.pre = load i64, ptr %i.i, align 8, !tbaa !71
  br label %bb.d, !llvm.loop !230

.loopexit:                                        ; preds = %rb_array_len.exit.thread, %rb_array_len.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 1, 4294967296) i64 @check_exec_redirect_fd(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !47
  %i.b = trunc i64 %0 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_fix2int(i64 noundef %0) #26
  %i.d = trunc i64 %i.c to i32
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = and i64 %0, 254
  %i.f = icmp eq i64 %i.e, 12
  br i1 %i.f, label %RB_SYMBOL_P.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %0, 0
  %i.h = and i64 %0, 6
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %RB_SYMBOL_P.exit.thread14, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.d
  %i.k = inttoptr i64 %0 to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !71
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 20
  br i1 %i.n, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread14

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.c, %RB_SYMBOL_P.exit
  %i.o = call i64 @rb_check_id(ptr noundef nonnull %i.a) #26 ; 3 uses
  %i.p = load i64, ptr @id_in, align 8, !tbaa !47
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %.thread17, label %bb.e

bb.e:                                             ; preds = %RB_SYMBOL_P.exit.thread
  %i.r = load i64, ptr @id_out, align 8, !tbaa !47
  %i.s = icmp eq i64 %i.o, %i.r
  br i1 %i.s, label %.thread17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr @id_err, align 8, !tbaa !47
  %i.u = icmp eq i64 %i.o, %i.t
  %cond.fr = freeze i1 %i.u
  br i1 %cond.fr, label %.thread17, label %bb.l

RB_SYMBOL_P.exit.thread14:                        ; preds = %bb.d, %RB_SYMBOL_P.exit
  %i.v = tail call i64 @rb_io_check_io(i64 noundef %0) #26 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4
  br i1 %i.w, label %bb.l, label %bb.g

bb.g:                                             ; preds = %RB_SYMBOL_P.exit.thread14
  %i.x = tail call i64 @rb_io_taint_check(i64 noundef %i.v) #26
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !231 ; 3 uses
  tail call void @rb_io_check_closed(ptr noundef %i.aa) #26
  %i.ab = getelementptr i8, ptr %i.aa, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !234
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.185) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.aa, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !241
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.2 = phi i32 [ %i.d, %bb.b ], [ %i.af, %bb.i ] ; 2 uses
  %i.ag = icmp slt i32 %.2, 0
  br i1 %i.ag, label %bb.k, label %.thread17

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.186) #28
  unreachable

.thread17:                                        ; preds = %bb.e, %RB_SYMBOL_P.exit.thread, %bb.f, %bb.j
  %.219 = phi i32 [ %.2, %bb.j ], [ 1, %bb.e ], [ 0, %RB_SYMBOL_P.exit.thread ], [ 2, %bb.f ]
  %i.ai = shl nuw i32 %.219, 1
  %i.aj = or disjoint i32 %i.ai, 1
  %i.ak = zext i32 %i.aj to i64
  ret i64 %i.ak

bb.l:                                             ; preds = %bb.f, %RB_SYMBOL_P.exit.thread14
  %i.al = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.al, ptr noundef nonnull @.str.187) #28
  unreachable
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #3

declare i32 @rb_io_modestr_oflags(ptr noundef) local_unnamed_addr #3

declare i64 @rb_io_check_io(i64 noundef) local_unnamed_addr #3

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @rb_io_check_closed(ptr noundef) local_unnamed_addr #3

declare i64 @rb_io_taint_check(i64 noundef) local_unnamed_addr #3

declare i64 @rb_hash_new() local_unnamed_addr #3

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @mark_exec_arg(ptr noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 1
  %.not = icmp eq i16 %i.c, 0
  %i.d = load i64, ptr %0, align 8, !tbaa !68
  tail call void @rb_gc_mark(i64 noundef %i.d) #26
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  tail call void @rb_gc_mark(i64 noundef %i.f) #26
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  tail call void @rb_gc_mark(i64 noundef %i.h) #26
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  tail call void @rb_gc_mark(i64 noundef %i.j) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !133
  tail call void @rb_gc_mark(i64 noundef %i.l) #26
  %i.m = getelementptr i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !137
  tail call void @rb_gc_mark(i64 noundef %i.n) #26
  %i.o = getelementptr i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !138
  tail call void @rb_gc_mark(i64 noundef %i.p) #26
  %i.q = getelementptr i8, ptr %0, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !134
  tail call void @rb_gc_mark(i64 noundef %i.r) #26
  %i.s = getelementptr i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.s, align 8, !tbaa !83
  tail call void @rb_gc_mark(i64 noundef %i.t) #26
  %i.u = getelementptr i8, ptr %0, i64 120
  %i.v = load i64, ptr %i.u, align 8, !tbaa !95
  tail call void @rb_gc_mark(i64 noundef %i.v) #26
  %i.w = getelementptr i8, ptr %0, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !94
  tail call void @rb_gc_mark(i64 noundef %i.x) #26
  %i.y = getelementptr i8, ptr %0, i64 136
  %i.z = load i64, ptr %i.y, align 8, !tbaa !98
  tail call void @rb_gc_mark(i64 noundef %i.z) #26
  %i.aa = getelementptr i8, ptr %0, i64 144
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !96
  tail call void @rb_gc_mark(i64 noundef %i.ab) #26
  %i.ac = getelementptr i8, ptr %0, i64 152
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !108
  tail call void @rb_gc_mark(i64 noundef %i.ad) #26
  %i.ae = getelementptr i8, ptr %0, i64 160
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !113
  tail call void @rb_gc_mark(i64 noundef %i.af) #26
  %i.ag = getelementptr i8, ptr %0, i64 168
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !90
  tail call void @rb_gc_mark(i64 noundef %i.ah) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @memsize_exec_arg(ptr readnone captures(none) %0) #14 {
bb.a:
  ret i64 176
}

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #3

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #16

declare i64 @rb_check_hash_type(i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_subseq(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @rb_enc_copy(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @dln_find_exe_r(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @check_exec_options_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = tail call i32 @rb_execarg_addopt(i64 noundef %2, i64 noundef %0, i64 noundef %1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %0, 255
  %i.c = icmp eq i64 %i.b, 12
  br i1 %i.c, label %RB_SYMBOL_P.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %RB_SYMBOL_P.exit.thread8, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.c
  %i.h = inttoptr i64 %0 to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !71
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 20
  br i1 %i.k, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread8

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.b, %RB_SYMBOL_P.exit
  %i.l = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.192, i64 noundef %0) #28
  unreachable

RB_SYMBOL_P.exit.thread8:                         ; preds = %bb.c, %RB_SYMBOL_P.exit
  %i.m = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.193) #28
  unreachable

bb.d:                                             ; preds = %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

end_hunk_1
