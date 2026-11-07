Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/proc_open?download=true
inline.NumInlined: 27
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.php_file_globals = type { i32, i64, i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.hostent, ptr, i64 }
%struct.hostent = type { ptr, ptr, i32, i32, ptr }
%struct._zval_struct = type { %union._zend_value, %union.anon, %union.anon.2 }
%union._zend_value = type { i64 }
%union.anon = type { i32 }
%union.anon.2 = type { i32 }
%struct.posix_spawn_file_actions_t = type { i32, i32, ptr, [16 x i32] }

@.str = private unnamed_addr constant [8 x i8] c"process\00", align 1
@le_proc_open = internal unnamed_addr global i32 0, align 4
@file_globals = external local_unnamed_addr global %struct.php_file_globals, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"signaled\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"exitcode\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"termsig\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"stopsig\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"must be an integer indexed array\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"must only contain arrays and streams\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"posix_spawn_file_actions_addchdir_np() failed: %s\00", align 1
@environ = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"posix_spawn() failed: %s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"First element must contain a non-empty program name\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Command array element %d contains a null byte\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Failed to dup() for descriptor %ld: %s\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"handle qualifier\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"mode parameter for 'pipe'\00", align 1
@zend_known_strings = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [31 x i8] c"file name parameter for 'file'\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"mode parameter for 'file'\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"Missing redirection target\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"Redirection target must be of type int, %s given\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"%s is not a valid descriptor spec/mode\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"Missing %s\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"Unable to create pipe %s\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"Unable to create socket pair: %s\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"Redirection target %d not found\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"Failed to open /dev/null: %s\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"Could not open PTY (pseudoterminal): %s\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"Cannot close file descriptor %d: %s\00", align 1
@.str.43 = private unnamed_addr constant [73 x i8] c"Unable to copy file descriptor %d (for pipe) into file descriptor %d: %s\00", align 1
@switch.table.zif_proc_open = private unnamed_addr constant [3 x ptr] [ptr @.str.18, ptr @.str.17, ptr @.str.19], align 8

; Function Attrs: nounwind uwtable
define hidden noundef i32 @zm_startup_proc_open(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @zend_register_list_destructors_ex(ptr noundef nonnull @proc_open_rsrc_dtor, ptr noundef null, ptr noundef nonnull @.str, i32 noundef %1) #11
  store i32 %i.a, ptr @le_proc_open, align 4, !tbaa !12
  ret i32 0
}

declare i32 @zend_register_list_destructors_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @proc_open_rsrc_dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !25
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 88), align 8, !tbaa !30
  %.not = icmp eq i32 %i.h, 0
  %spec.select = zext i1 %.not to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.k = load i8, ptr %i.i, align 4, !tbaa !31, !range !32, !noundef !33
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %waitpid_cached.exit.us.preheader, label %.split

waitpid_cached.exit.us.preheader:                 ; preds = %._crit_edge
  %.pre38 = load i32, ptr %i.j, align 8, !tbaa !34
  %.pre39 = load i32, ptr %i.c, align 8, !tbaa !35 ; 2 uses
  store i32 %.pre38, ptr %i.a, align 4, !tbaa !12
  %i.m = icmp eq i32 %.pre39, -1
  br label %waitpid_cached.exit.us

waitpid_cached.exit.us:                           ; preds = %waitpid_cached.exit.us.preheader, %bb.b
  br i1 %i.m, label %bb.b, label %.critedge

bb.b:                                             ; preds = %waitpid_cached.exit.us
  %i.n = tail call ptr @__errno_location() #12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !12
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %waitpid_cached.exit.us, label %.critedge.thread, !llvm.loop !51

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.q = phi i32 [ %i.e, %.lr.ph ], [ %i.z, %bb.e ]
  %i.r = phi ptr [ %.pre, %.lr.ph ], [ %i.aa, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38   ; 4 uses
  %.not21 = icmp eq ptr %i.t, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39   ; 2 uses
  %i.v = icmp ne i32 %i.u, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add i32 %i.u, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !39
  tail call void @zend_list_close(ptr noundef nonnull %i.t) #11
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store ptr null, ptr %i.y, align 8, !tbaa !38
  %.pre37 = load i32, ptr %i.d, align 4, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.z = phi i32 [ %i.q, %bb.c ], [ %.pre37, %bb.d ] ; 2 uses
  %i.aa = phi ptr [ %i.r, %bb.c ], [ %i.x, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = sext i32 %i.z to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.c, label %._crit_edge, !llvm.loop !52

.split:                                           ; preds = %._crit_edge, %bb.j
  %1 = load i8, ptr %i.i, align 4, !tbaa !31, !range !32, !noundef !33
  %i.ad = trunc nuw i8 %1 to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split
  %i.ae = load i32, ptr %i.j, align 8, !tbaa !34
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !12
  %i.af = load i32, ptr %i.c, align 8, !tbaa !35
  br label %waitpid_cached.exit

bb.g:                                             ; preds = %.split
  %i.ag = load i32, ptr %i.c, align 8, !tbaa !35
  %i.ah = call i32 @waitpid(i32 noundef %i.ag, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 4) %spec.select) #11 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %waitpid_cached.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !12  ; 4 uses
  %i.ak = and i32 %i.aj, 127
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %.critedge.thread26

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.i, align 4, !tbaa !31
  store i32 %i.aj, ptr %i.j, align 8, !tbaa !34
  br label %.critedge.thread26

waitpid_cached.exit:                              ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.af, %bb.f ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = icmp eq i32 %.0.i, -1
  br i1 %i.am, label %bb.j, label %.critedge

bb.j:                                             ; preds = %waitpid_cached.exit
  %i.an = tail call ptr @__errno_location() #12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !12
  %i.ap = icmp eq i32 %i.ao, 4
  br i1 %i.ap, label %.split, label %.critedge.thread, !llvm.loop !53

.critedge:                                        ; preds = %waitpid_cached.exit, %waitpid_cached.exit.us
  %.us-phi = phi i32 [ %.pre39, %waitpid_cached.exit.us ], [ %.0.i, %waitpid_cached.exit ]
  %i.aq = icmp slt i32 %.us-phi, 1
  br i1 %i.aq, label %.critedge.thread, label %.critedge..critedge.thread26_crit_edge

.critedge..critedge.thread26_crit_edge:           ; preds = %.critedge
  %.pre40 = load i32, ptr %i.a, align 4, !tbaa !12
  br label %.critedge.thread26

.critedge.thread26:                               ; preds = %.critedge..critedge.thread26_crit_edge, %bb.i, %bb.h
  %i.ar = phi i32 [ %.pre40, %.critedge..critedge.thread26_crit_edge ], [ %i.aj, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  %i.as = and i32 %i.ar, 127
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %.critedge.thread26
  %i.au = lshr i32 %i.ar, 8
  %i.av = and i32 %i.au, 255                      ; 2 uses
  store i32 %i.av, ptr %i.a, align 4, !tbaa !12
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.j, %bb.b, %.critedge.thread26, %bb.k, %.critedge
  %storemerge = phi i32 [ -1, %bb.b ], [ -1, %.critedge ], [ %i.ar, %.critedge.thread26 ], [ %i.av, %bb.k ], [ -1, %bb.j ]
  store i32 %storemerge, ptr @file_globals, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not.i22 = icmp eq ptr %i.az, null
  br i1 %.not.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge.thread
  call void @_efree(ptr noundef nonnull %i.az) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge.thread
  %.not4.i = icmp eq ptr %i.ax, null
  br i1 %.not4.i, label %_php_free_envp.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_efree(ptr noundef nonnull %i.ax) #11
  br label %_php_free_envp.exit

_php_free_envp.exit:                              ; preds = %bb.m, %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25
  call void @_efree(ptr noundef %i.bb) #11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !42
  %i.bg = and i32 %i.bf, 64
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %bb.o, label %zend_string_release_ex.exit

bb.o:                                             ; preds = %_php_free_envp.exit
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !39 ; 2 uses
  %i.bi = icmp ne i32 %i.bh, 0
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add i32 %i.bh, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.bd, align 4, !tbaa !39
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.p, label %zend_string_release_ex.exit

bb.p:                                             ; preds = %bb.o
  call void @_efree(ptr noundef nonnull %i.bd) #11
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %_php_free_envp.exit, %bb.o, %bb.p
  call void @_efree(ptr noundef nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_proc_terminate(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 15, ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  %i.d = add i32 %i.c, -3
  %or.cond = icmp ult i32 %i.d, -2
  br i1 %or.cond, label %bb.b, label %zend_parse_arg_resource.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #11
  br label %.thread

zend_parse_arg_resource.exit:                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !42
  %i.h = icmp eq i8 %i.g, 9
  br i1 %i.h, label %bb.c, label %.thread, !prof !44

bb.c:                                             ; preds = %zend_parse_arg_resource.exit
  %i.i = icmp eq i32 %i.c, 1
  br i1 %i.i, label %.critedge, label %bb.d, !prof !45

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !42
  %i.m = icmp eq i8 %i.l, 4
  br i1 %i.m, label %.thread69, label %zend_parse_arg_long_ex.exit, !prof !44

.thread69:                                        ; preds = %bb.d
  %i.n = load i64, ptr %i.j, align 8, !tbaa !42
  store i64 %i.n, ptr %i.a, align 8, !tbaa !57
  br label %.critedge

zend_parse_arg_long_ex.exit:                      ; preds = %bb.d
  %i.o = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a, i32 noundef 2) #11
  br i1 %i.o, label %.critedge, label %.thread, !prof !46

.thread:                                          ; preds = %zend_parse_arg_long_ex.exit, %zend_parse_arg_resource.exit, %bb.b
  %.04768 = phi i32 [ 9, %zend_parse_arg_long_ex.exit ], [ 1, %bb.b ], [ 9, %zend_parse_arg_resource.exit ]
  %.04867 = phi i32 [ 0, %zend_parse_arg_long_ex.exit ], [ 0, %bb.b ], [ 14, %zend_parse_arg_resource.exit ]
  %.04966 = phi ptr [ %i.j, %zend_parse_arg_long_ex.exit ], [ null, %bb.b ], [ %i.e, %zend_parse_arg_resource.exit ]
  %.05065 = phi i32 [ 2, %zend_parse_arg_long_ex.exit ], [ 0, %bb.b ], [ 1, %zend_parse_arg_resource.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.04768, i32 noundef %.05065, ptr noundef null, i32 noundef %.04867, ptr noundef %.04966) #11
  br label %bb.f

.critedge:                                        ; preds = %zend_parse_arg_long_ex.exit, %.thread69, %bb.c
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.q = load i32, ptr @le_proc_open, align 4, !tbaa !12
  %i.r = call ptr @zend_fetch_resource(ptr noundef %i.p, ptr noundef nonnull @.str, i32 noundef %i.q) #11 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.t = load i32, ptr %i.r, align 8, !tbaa !35
  %i.u = load i64, ptr %i.a, align 8, !tbaa !57
  %i.v = trunc i64 %i.u to i32
  %i.w = call i32 @kill(i32 noundef %i.t, i32 noundef %i.v) #11
  %i.x = icmp eq i32 %i.w, 0
  %i.y = select i1 %i.x, i32 3, i32 2
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @zend_wrong_parameters_count_error(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

declare void @zend_wrong_parameter_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @zend_fetch_resource(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @zif_proc_close(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %cond = icmp eq i32 %i.b, 1
  br i1 %cond, label %bb.b, label %.thread, !prof !47

.thread:                                          ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #11
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8, !tbaa !42
  %i.f = icmp eq i8 %i.e, 9
  br i1 %i.f, label %.critedge, label %bb.c, !prof !46

bb.c:                                             ; preds = %.thread, %bb.b
  %.03452 = phi i32 [ 1, %.thread ], [ 9, %bb.b ]
  %.03551 = phi i32 [ 0, %.thread ], [ 14, %bb.b ]
  %.03650 = phi ptr [ null, %.thread ], [ %i.c, %bb.b ]
  %.03749 = phi i32 [ 0, %.thread ], [ 1, %bb.b ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.03452, i32 noundef %.03749, ptr noundef null, i32 noundef %.03551, ptr noundef %.03650) #11
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.h = load i32, ptr @le_proc_open, align 4, !tbaa !12
  %i.i = tail call ptr @zend_fetch_resource(ptr noundef %i.g, ptr noundef nonnull @.str, i32 noundef %i.h) #11
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d
end_hunk_0
