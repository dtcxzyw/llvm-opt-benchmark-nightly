Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ess_base_frame?download=true
inline.NumInlined: 12
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@pmix_class_init_epoch = external local_unnamed_addr global i32, align 4
@pmix_list_t_class = external global %struct.pmix_class_t, align 8
@.str.21 = private unnamed_addr constant [21 x i8] c"pthread_mutex_lock()\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"SIGTERM\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"SIGHUP\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"SIGINT\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"SIGKILL\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"SIGPIPE\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"SIGQUIT\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"SIGTRAP\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"SIGTSTP\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"SIGABRT\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"SIGCONT\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"SIGSYS\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"SIGXCPU\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"SIGXFSZ\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"SIGALRM\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"SIGVTALRM\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"SIGPROF\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"SIGPWR\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"SIGURG\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"SIGUSR1\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"SIGUSR2\00", align 1
@known_signals = internal unnamed_addr constant [21 x { i32, [4 x i8], ptr, i8, [7 x i8] }] [{ i32, [4 x i8], ptr, i8, [7 x i8] } { i32 15, [4 x i8] zeroinitializer, ptr @.str.22, i8 0, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.23, i8 0, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.24, i8 0, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 9, [4 x i8] zeroinitializer, ptr @.str.25, i8 0, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 13, [4 x i8] zeroinitializer, ptr @.str.26, i8 0, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.27, i8 0, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 5, [4 x i8] zeroinitializer, ptr @.str.28, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 20, [4 x i8] zeroinitializer, ptr @.str.29, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 6, [4 x i8] zeroinitializer, ptr @.str.30, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 18, [4 x i8] zeroinitializer, ptr @.str.31, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 31, [4 x i8] zeroinitializer, ptr @.str.32, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 24, [4 x i8] zeroinitializer, ptr @.str.33, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 25, [4 x i8] zeroinitializer, ptr @.str.34, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 14, [4 x i8] zeroinitializer, ptr @.str.35, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 26, [4 x i8] zeroinitializer, ptr @.str.36, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 27, [4 x i8] zeroinitializer, ptr @.str.37, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 30, [4 x i8] zeroinitializer, ptr @.str.38, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 23, [4 x i8] zeroinitializer, ptr @.str.39, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 10, [4 x i8] zeroinitializer, ptr @.str.40, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.41, i8 1, [7 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i8, [7 x i8] } zeroinitializer], align 16
@switch.table.prte_ess_base_setup_signals = private unnamed_addr constant [31 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 24), ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 48), ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 120), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 144), ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 192), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 72), ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 432), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 456), ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 96), ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 312), ptr @known_signals, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 216), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 168), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 408), ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 264), ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 288), ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 336), ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 360), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 384), ptr getelementptr inbounds nuw (i8, ptr @known_signals, i64 240)], align 8

; Function Attrs: nounwind uwtable
define internal noundef i32 @prte_ess_base_register(i32 %0) #0 {
bb.a:
  store ptr null, ptr @prte_ess_base_nspace, align 8, !tbaa !11
  %i.a = tail call i32 @pmix_mca_base_var_register(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 5, ptr noundef nonnull @prte_ess_base_nspace) #14
  %i.b = tail call i32 @pmix_mca_base_var_register_synonym(i32 noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12, i32 noundef 1) #14 ; 0 uses
  store ptr null, ptr @prte_ess_base_vpid, align 8, !tbaa !11
  %i.c = tail call i32 @pmix_mca_base_var_register(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 5, ptr noundef nonnull @prte_ess_base_vpid) #14
  %i.d = tail call i32 @pmix_mca_base_var_register_synonym(i32 noundef %i.c, ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, i32 noundef 1) #14 ; 0 uses
  store i32 -1, ptr @prte_ess_base_num_procs, align 4, !tbaa !12
  %i.e = tail call i32 @pmix_mca_base_var_register(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef nonnull @prte_ess_base_num_procs) #14
  %i.f = tail call i32 @pmix_mca_base_var_register_synonym(i32 noundef %i.e, ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, i32 noundef 1) #14 ; 0 uses
  store ptr @.str.4, ptr @forwarded_signals, align 8, !tbaa !11
  %i.g = tail call i32 @pmix_mca_base_var_register(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 5, ptr noundef nonnull @forwarded_signals) #14
  %i.h = tail call i32 @pmix_mca_base_var_register_synonym(i32 noundef %i.g, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 1) #14 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @prte_ess_base_open(i32 noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !12
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8, !tbaa !17
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_list_t_class) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr @pmix_list_t_class, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 40), align 8, !tbaa !20
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 48), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 56), i8 0, i64 64, i1 false)
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !22 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.e = phi ptr [ %i.g, %.lr.ph.i ], [ %i.d, %bb.c ]
  %.07.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.c, %bb.c ]
  tail call void %i.e(ptr noundef nonnull @prte_ess_base_signals) #14, !inline_history !34
  %i.f = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !0

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  %i.h = tail call i32 @pmix_mca_base_framework_components_open(ptr noundef nonnull @prte_ess_base_framework, i32 noundef %0) #14
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal i32 @prte_ess_base_close() #0 {
bb.a:
  %i.a = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 264), align 8, !tbaa !28
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.c = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 264), align 8, !tbaa !28
  %i.d = add i64 %i.c, -1
  store volatile i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 264), align 8, !tbaa !28
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 240), align 8, !tbaa !39 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load volatile ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 2 uses
  %i.i = load volatile ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store volatile ptr %i.g, ptr %i.j, align 8, !tbaa !29
  %i.k = load volatile ptr, ptr %i.h, align 8, !tbaa !30
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 240), align 8, !tbaa !39
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #14
  %i.m = icmp eq i32 %i.l, 35
  br i1 %i.m, label %bb.b, label %pmix_obj_update.exit

bb.b:                                             ; preds = %.lr.ph
  %i.n = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.n, align 4, !tbaa !12
  tail call void @perror(ptr noundef nonnull @.str.21) #16
  tail call void @abort() #17
  unreachable

pmix_obj_update.exit:                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.o, align 8, !tbaa !21
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #14 ; 0 uses
  %i.s = icmp eq i32 %i.q, 0
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %pmix_obj_update.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %.not6.i = icmp eq ptr %i.x, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.y = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.x, %bb.c ]
  %.07.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.w, %bb.c ]
  tail call void %i.y(ptr noundef nonnull %i.e) #14, !inline_history !35
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !36

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %.not7 = icmp eq ptr %i.ac, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  tail call void %i.ac(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.e) #14, !inline_history !37
  br label %bb.f

bb.e:                                             ; preds = %pmix_obj_run_destructors.exit
  tail call void @free(ptr noundef nonnull %i.e) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %pmix_obj_update.exit
  %i.ae = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 264), align 8, !tbaa !28
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 40), align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 2 uses
  %.not6.i8 = icmp eq ptr %i.aj, null
  br i1 %.not6.i8, label %pmix_obj_run_destructors.exit12, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %._crit_edge, %.lr.ph.i9
  %i.ak = phi ptr [ %i.am, %.lr.ph.i9 ], [ %i.aj, %._crit_edge ]
  %.07.i10 = phi ptr [ %i.al, %.lr.ph.i9 ], [ %i.ai, %._crit_edge ]
  tail call void %i.ak(ptr noundef nonnull @prte_ess_base_signals) #14, !inline_history !35
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i10, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %.not.i11 = icmp eq ptr %i.am, null
  br i1 %.not.i11, label %pmix_obj_run_destructors.exit12, label %.lr.ph.i9, !llvm.loop !36

pmix_obj_run_destructors.exit12:                  ; preds = %.lr.ph.i9, %._crit_edge
  %i.an = tail call i32 @pmix_mca_base_framework_components_close(ptr noundef nonnull @prte_ess_base_framework, ptr noundef null) #14
  ret i32 %i.an
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @prte_ess_base_setup_signals(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp eq ptr %0, null
  %i.c = load ptr, ptr @forwarded_signals, align 8
  %.084 = select i1 %i.b, ptr %i.c, ptr %0        ; 6 uses
  %i.d = tail call i32 @strcasecmp(ptr noundef %.084, ptr noundef nonnull @.str.3) #18
  %i.e = icmp eq i32 %i.d, 0
  %.b = load i1, ptr @signals_added, align 1
  %or.cond = select i1 %i.e, i1 true, i1 %.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @signals_added, align 1
  %i.f = tail call i32 @strcasecmp(ptr noundef %.084, ptr noundef nonnull @.str.4) #18
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.b, %bb.j
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %bb.j ], [ 0, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr @known_signals, i64 %indvars.iv155 ; 3 uses
  %1 = trunc i64 %indvars.iv155 to i32
  %2 = add i32 %1, -6
  %3 = icmp ult i32 %2, 14
  br i1 %3, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.preheader
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_framework, i64 76), align 4, !tbaa !48 ; 3 uses
  %or.cond3 = icmp ult i32 %i.i, 64
  br i1 %or.cond3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.i, ptr noundef nonnull @.str.5, ptr noundef %i.p) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signal_t_class, i64 56), align 8, !tbaa !53
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #19 ; 13 uses
  %i.s = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !12
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signal_t_class, i64 32), align 8, !tbaa !17
  %.not.i = icmp eq i32 %i.s, %i.t
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @pmix_class_initialize(ptr noundef nonnull @prte_ess_base_signal_t_class) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not22.i = icmp eq ptr %i.r, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.r, ptr noundef null) #14 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @prte_ess_base_signal_t_class, ptr %i.v, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i32 1, ptr %i.w, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signal_t_class, i64 40), align 8, !tbaa !22 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aa, null
  br i1 %.not6.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.ab = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.aa, %bb.i ]
  %.07.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.z, %bb.i ]
  tail call void %i.ab(ptr noundef nonnull %i.r) #14, !inline_history !42
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i, !llvm.loop !0

pmix_obj_new_tma.exit:                            ; preds = %.lr.ph.i.i, %bb.h, %bb.i
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.ai = tail call noalias ptr @strdup(ptr noundef %i.ah) #14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !33
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 248), align 8, !tbaa !29 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  store volatile ptr %i.r, ptr %i.am, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  store ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 120), ptr %i.an, align 8, !tbaa !30
  store ptr %i.r, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 248), align 8, !tbaa !29
  %i.ao = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 264), align 8, !tbaa !28
  %i.ap = add i64 %i.ao, 1
  store volatile i64 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 264), align 8, !tbaa !28
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %pmix_obj_new_tma.exit
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next156, 21
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !43

bb.k:                                             ; preds = %bb.b
  %i.aq = tail call ptr @PMIx_Argv_split(ptr noundef %.084, i32 noundef 44) #14 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !11 ; 2 uses
  %.not131 = icmp eq ptr %i.ar, null
  br i1 %.not131, label %.loopexit.sink.split, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.k, %.loopexit111
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit111 ], [ 0, %bb.k ] ; 2 uses
  %i.as = phi ptr [ %i.ef, %.loopexit111 ], [ %i.ar, %bb.k ] ; 23 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.au = call i32 @strncasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.6, i64 noundef 3) #18
  %.not93 = icmp eq i32 %i.au, 0
  br i1 %.not93, label %.preheader112.preheader, label %bb.l

.preheader112.preheader:                          ; preds = %.lr.ph133
  %i.av = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.22) #18
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.preheader112.1.a, label %.preheader112.3.a

bb.l:                                             ; preds = %.lr.ph133
  %i.ax = tail call ptr @__errno_location() #15   ; 2 uses
  store i32 0, ptr %i.ax, align 4, !tbaa !12
  %i.ay = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.as, ptr noundef nonnull %i.a, i32 noundef 10) #14
  %i.az = trunc i64 %i.ay to i32                  ; 3 uses
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !12
  %.not95 = icmp eq i32 %i.ba, 0
  br i1 %.not95, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !56
  %.not96 = icmp eq i8 %i.bc, 0
  br i1 %.not96, label %.preheader113.preheader, label %bb.n

.preheader113.preheader:                          ; preds = %bb.m
  %switch.tableidx = add i32 %i.az, -1            ; 3 uses
  %i.bd = icmp ult i32 %switch.tableidx, 31
  %switch.shifted = lshr i32 1741323063, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond200 = select i1 %i.bd, i1 %switch.lobit, i1 false
  br i1 %or.cond200, label %switch.lookup, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !11
  %i.bf = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef %i.be, ptr noundef %.084) #14 ; 0 uses
  br label %.loopexit.sink.split

.thread:                                          ; preds = %.preheader113.preheader
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !11
  br label %bb.p

.preheader112.1.a:                                ; preds = %.preheader112.preheader, %.preheader112.3.a, %.preheader112.4.a, %.preheader112.5.a, %.preheader112.6.a, %.preheader112.7.a
  %.lcssa137 = phi ptr [ @.str.22, %.preheader112.preheader ], [ @.str.23, %.preheader112.3.a ], [ @.str.24, %.preheader112.4.a ], [ @.str.25, %.preheader112.5.a ], [ @.str.26, %.preheader112.6.a ], [ @.str.27, %.preheader112.7.a ]
  %4 = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %.lcssa137, ptr noundef %.084) #14 ; 0 uses
  br label %.loopexit.sink.split

.preheader112.2.a:                                ; preds = %.preheader112.8.a, %.preheader112.9.a, %.preheader112.10.a, %.preheader112.11.a, %.preheader112.12.a, %.preheader112.13.a, %.preheader112.14.a, %.preheader112.15.a, %.preheader112.16.a, %.preheader112.17.a, %.preheader112.18.a, %.preheader112.19.a, %.critedge102.a, %bb.o
  %.lcssa140.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 456), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 432), %.critedge102.a ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 408), %.preheader112.19.a ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 384), %.preheader112.18.a ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 360), %.preheader112.17.a ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 336), %.preheader112.16.a ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 312), %.preheader112.15.a ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 288), %.preheader112.14.a ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 264), %.preheader112.13.a ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 240), %.preheader112.12.a ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 216), %.preheader112.11.a ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 192), %.preheader112.10.a ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 168), %.preheader112.9.a ], [ getelementptr inbounds nuw (i8, ptr @known_signals, i64 144), %.preheader112.8.a ]
  %.lcssa137.ph = phi ptr [ @.str.41, %bb.o ], [ @.str.40, %.critedge102.a ], [ @.str.39, %.preheader112.19.a ], [ @.str.38, %.preheader112.18.a ], [ @.str.37, %.preheader112.17.a ], [ @.str.36, %.preheader112.16.a ], [ @.str.35, %.preheader112.15.a ], [ @.str.34, %.preheader112.14.a ], [ @.str.33, %.preheader112.13.a ], [ @.str.32, %.preheader112.12.a ], [ @.str.31, %.preheader112.11.a ], [ @.str.30, %.preheader112.10.a ], [ @.str.29, %.preheader112.9.a ], [ @.str.28, %.preheader112.8.a ]
  %5 = load i32, ptr %.lcssa140.ph, align 8, !tbaa !54
  br label %bb.p

.preheader112.3.a:                                ; preds = %.preheader112.preheader
  %i.bh = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.23) #18
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.preheader112.1.a, label %.preheader112.4.a

.preheader112.4.a:                                ; preds = %.preheader112.3.a
  %i.bj = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.24) #18
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.preheader112.1.a, label %.preheader112.5.a

.preheader112.5.a:                                ; preds = %.preheader112.4.a
  %i.bl = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.25) #18
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.preheader112.1.a, label %.preheader112.6.a

.preheader112.6.a:                                ; preds = %.preheader112.5.a
  %i.bn = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.26) #18
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.preheader112.1.a, label %.preheader112.7.a

.preheader112.7.a:                                ; preds = %.preheader112.6.a
  %i.bp = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.27) #18
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.preheader112.1.a, label %.preheader112.8.a

.preheader112.8.a:                                ; preds = %.preheader112.7.a
  %i.br = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.28) #18
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.preheader112.2.a, label %.preheader112.9.a

.preheader112.9.a:                                ; preds = %.preheader112.8.a
  %i.bt = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.29) #18
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.preheader112.2.a, label %.preheader112.10.a

.preheader112.10.a:                               ; preds = %.preheader112.9.a
  %i.bv = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.30) #18
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.preheader112.2.a, label %.preheader112.11.a

.preheader112.11.a:                               ; preds = %.preheader112.10.a
  %i.bx = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.31) #18
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.preheader112.2.a, label %.preheader112.12.a

.preheader112.12.a:                               ; preds = %.preheader112.11.a
  %i.bz = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.32) #18
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.preheader112.2.a, label %.preheader112.13.a

.preheader112.13.a:                               ; preds = %.preheader112.12.a
  %i.cb = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.33) #18
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.preheader112.2.a, label %.preheader112.14.a

.preheader112.14.a:                               ; preds = %.preheader112.13.a
  %i.cd = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.34) #18
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %.preheader112.2.a, label %.preheader112.15.a

.preheader112.15.a:                               ; preds = %.preheader112.14.a
  %i.cf = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.35) #18
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.preheader112.2.a, label %.preheader112.16.a

.preheader112.16.a:                               ; preds = %.preheader112.15.a
  %i.ch = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.36) #18
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.preheader112.2.a, label %.preheader112.17.a

.preheader112.17.a:                               ; preds = %.preheader112.16.a
  %i.cj = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.37) #18
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.preheader112.2.a, label %.preheader112.18.a

.preheader112.18.a:                               ; preds = %.preheader112.17.a
  %i.cl = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.38) #18
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.preheader112.2.a, label %.preheader112.19.a

.preheader112.19.a:                               ; preds = %.preheader112.18.a
  %i.cn = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.39) #18
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %.preheader112.2.a, label %.critedge102.a

.critedge102.a:                                   ; preds = %.preheader112.19.a
  %6 = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.40) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %.preheader112.2.a, label %bb.o

bb.o:                                             ; preds = %.critedge102.a
  %8 = call i32 @strcasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.41) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %.preheader112.2.a, label %.critedge100

.critedge100:                                     ; preds = %bb.o
  %i.cp = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef nonnull %i.as, ptr noundef %.084) #14 ; 0 uses
  br label %.loopexit.sink.split

switch.lookup:                                    ; preds = %.preheader113.preheader
  %i.cq = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.prte_ess_base_setup_signals, i64 %i.cq
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !52
  br label %bb.p

bb.p:                                             ; preds = %switch.lookup, %.preheader112.2.a, %.thread
  %.186 = phi i32 [ %i.az, %.thread ], [ %5, %.preheader112.2.a ], [ %i.az, %switch.lookup ] ; 2 uses
  %.383 = phi ptr [ %i.bg, %.thread ], [ %.lcssa137.ph, %.preheader112.2.a ], [ %i.cs, %switch.lookup ] ; 3 uses
  %.079128 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 240), align 8, !tbaa !30 ; 2 uses
  %.not98.not129 = icmp eq ptr %.079128, getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 120)
  br i1 %.not98.not129, label %.critedge, label %.lr.ph

bb.q:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %.079130, i64 120
  %.079 = load ptr, ptr %i.ct, align 8, !tbaa !30 ; 2 uses
  %.not98.not = icmp eq ptr %.079, getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 120)
  br i1 %.not98.not, label %.critedge, label %.lr.ph, !llvm.loop !44

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %.079130 = phi ptr [ %.079, %bb.q ], [ %.079128, %bb.p ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.079130, i64 144
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !33
  %i.cw = call i32 @strcasecmp(ptr noundef %.383, ptr noundef %i.cv) #18
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %.loopexit111, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %.079130, i64 152
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !55
  %i.da = icmp eq i32 %.186, %i.cz
  br i1 %i.da, label %.loopexit111, label %bb.q

.critedge:                                        ; preds = %bb.q, %bb.p
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_framework, i64 76), align 4, !tbaa !48 ; 3 uses
  %or.cond5 = icmp ult i32 %i.db, 64
  br i1 %or.cond5, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.critedge
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !50
  %i.dg = icmp sgt i32 %i.df, 1
  br i1 %i.dg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.db, ptr noundef nonnull @.str.5, ptr noundef %.383) #14
  br label %bb.u

bb.u:                                             ; preds = %.critedge, %bb.s, %bb.t
  %i.dh = load i64, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signal_t_class, i64 56), align 8, !tbaa !53
  %i.di = call noalias noundef ptr @malloc(i64 noundef %i.dh) #19 ; 13 uses
  %i.dj = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !12
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signal_t_class, i64 32), align 8, !tbaa !17
  %.not.i103 = icmp eq i32 %i.dj, %i.dk
  br i1 %.not.i103, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @pmix_class_initialize(ptr noundef nonnull @prte_ess_base_signal_t_class) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not22.i104 = icmp eq ptr %i.di, null
  br i1 %.not22.i104, label %pmix_obj_new_tma.exit109, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = call i32 @pthread_mutex_init(ptr noundef nonnull %i.di, ptr noundef null) #14 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store ptr @prte_ess_base_signal_t_class, ptr %i.dm, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store i32 1, ptr %i.dn, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signal_t_class, i64 40), align 8, !tbaa !22 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !23 ; 2 uses
  %.not6.i.i105 = icmp eq ptr %i.dr, null
  br i1 %.not6.i.i105, label %pmix_obj_new_tma.exit109, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %bb.x, %.lr.ph.i.i106
  %i.ds = phi ptr [ %i.du, %.lr.ph.i.i106 ], [ %i.dr, %bb.x ]
  %.07.i.i107 = phi ptr [ %i.dt, %.lr.ph.i.i106 ], [ %i.dq, %bb.x ]
  call void %i.ds(ptr noundef nonnull %i.di) #14, !inline_history !42
  %i.dt = getelementptr inbounds nuw i8, ptr %.07.i.i107, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !23 ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.du, null
  br i1 %.not.i.i108, label %pmix_obj_new_tma.exit109, label %.lr.ph.i.i106, !llvm.loop !0

pmix_obj_new_tma.exit109:                         ; preds = %.lr.ph.i.i106, %bb.w, %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 152
  store i32 %.186, ptr %i.dv, align 8, !tbaa !55
  %i.dw = call noalias ptr @strdup(ptr noundef %.383) #14
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 144
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !33
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 248), align 8, !tbaa !29 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 128
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !29
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 120
  store volatile ptr %i.di, ptr %i.ea, align 8, !tbaa !30
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 120
  store ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 120), ptr %i.eb, align 8, !tbaa !30
  store ptr %i.di, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 248), align 8, !tbaa !29
  %i.ec = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 264), align 8, !tbaa !28
  %i.ed = add i64 %i.ec, 1
  store volatile i64 %i.ed, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_signals, i64 264), align 8, !tbaa !28
  br label %.loopexit111

.loopexit111:                                     ; preds = %bb.r, %.lr.ph, %pmix_obj_new_tma.exit109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %i.ef, null
  br i1 %.not, label %.loopexit.sink.split, label %.lr.ph133, !llvm.loop !45

.loopexit.sink.split:                             ; preds = %.loopexit111, %bb.k, %bb.n, %.critedge100, %.preheader112.1.a
  %.3.ph = phi i32 [ -2, %.preheader112.1.a ], [ -2, %.critedge100 ], [ -2, %bb.n ], [ 0, %bb.k ], [ 0, %.loopexit111 ]
  call void @PMIx_Argv_free(ptr noundef nonnull %i.aq) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.sink.split, %bb.a
  %.3 = phi i32 [ %.3.ph, %.loopexit.sink.split ], [ 0, %bb.a ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @PMIx_Argv_split(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @pmix_show_help(ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @PMIx_Argv_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @scon(ptr nofree noundef writeonly captures(none) initializes((144, 152)) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.a, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @sdes(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @pmix_mca_base_var_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pmix_mca_base_var_register_synonym(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #3

declare i32 @pmix_mca_base_framework_components_open(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare i32 @pmix_mca_base_framework_components_close(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !24}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"p1 _ZTS12pmix_class_t", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"pmix_class_t", !10, i64 0, !13, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !14, i64 40, !14, i64 48, !15, i64 56}
!17 = !{!16, !6, i64 32}
!18 = !{!"pmix_tma", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !14, i64 56}
!19 = !{!"pmix_object_t", !5, i64 0, !13, i64 40, !6, i64 48, !18, i64 56}
!20 = !{!19, !13, i64 40}
!21 = !{!19, !6, i64 48}
!22 = !{!16, !14, i64 40}
!23 = !{!9, !9, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"p1 _ZTS16pmix_list_item_t", !9, i64 0}
!26 = !{!"pmix_list_item_t", !19, i64 0, !25, i64 120, !25, i64 128, !6, i64 136}
!27 = !{!"pmix_list_t", !19, i64 0, !26, i64 120, !15, i64 264}
!28 = !{!27, !15, i64 264}
!29 = !{!26, !25, i64 128}
!30 = !{!26, !25, i64 120}
!31 = !{!"_Bool", !5, i64 0}
!32 = !{!"", !26, i64 0, !10, i64 144, !6, i64 152, !31, i64 156}
!33 = !{!32, !10, i64 144}
!34 = distinct !{null}
!35 = distinct !{null}
!36 = distinct !{!36, !24}
!37 = distinct !{null}
!38 = distinct !{!38, !24}
!39 = !{!27, !25, i64 240}
!40 = !{!16, !14, i64 48}
!41 = !{!19, !9, i64 96}
!42 = distinct !{null, null}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !24}
!46 = !{!"p2 _ZTS31pmix_mca_base_component_2_1_0_t", !14, i64 0}
!47 = !{!"pmix_mca_base_framework_t", !10, i64 0, !10, i64 8, !10, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !6, i64 48, !6, i64 52, !46, i64 56, !10, i64 64, !6, i64 72, !6, i64 76, !27, i64 80, !27, i64 352}
!48 = !{!47, !6, i64 76}
!49 = !{!"", !31, i64 0, !31, i64 1, !6, i64 4, !31, i64 8, !6, i64 12, !10, i64 16, !10, i64 24, !6, i64 32, !10, i64 40, !6, i64 48, !31, i64 52, !31, i64 53, !31, i64 54, !31, i64 55, !10, i64 56, !6, i64 64, !6, i64 68}
!50 = !{!49, !6, i64 4}
!51 = !{!"known_signal", !6, i64 0, !10, i64 8, !31, i64 16}
!52 = !{!51, !10, i64 8}
!53 = !{!16, !15, i64 56}
!54 = !{!51, !6, i64 0}
!55 = !{!32, !6, i64 152}
!56 = !{!5, !5, i64 0}
end_hunk_0
