Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_mca_base_open?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pmix_pinstall_dirs_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmix_output_desc_t = type { i8, i8, i32, i8, i32, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, ptr, i32, i32 }
%struct.pmix_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct.pmix_output_stream_t = type { %struct.pmix_object_t, i32, i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, ptr }
%struct.pmix_object_t = type { %union.pthread_mutex_t, ptr, i32, %struct.pmix_tma }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.pmix_tma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pmix_mca_base_component_path = global ptr null, align 8
@pmix_mca_base_opened = local_unnamed_addr global i32 0, align 4
@pmix_mca_base_system_default_path = local_unnamed_addr global ptr null, align 8
@pmix_mca_base_user_default_path = global ptr null, align 8
@pmix_mca_base_component_show_load_errors = global ptr null, align 8
@pmix_mca_base_component_abort_on_load_error = global i8 0, align 1
@pmix_mca_base_component_track_load_errors = global i8 0, align 1
@pmix_mca_base_component_disable_dlopen = global i8 0, align 1
@.str = private unnamed_addr constant [6 x i8] c"%s;%s\00", align 1
@pmix_pinstall_dirs = external local_unnamed_addr global %struct.pmix_pinstall_dirs_t, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%s/.pmix/components\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pmix\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mca\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"component_path\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Path where to look for additional components\00", align 1
@path_from_param = internal global ptr null, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"%s;pmix@%s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"pmix@%s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"component_show_load_errors\00", align 1
@.str.11 = private unnamed_addr constant [497 x i8] c"Whether to show errors for components that failed to load or not. Valid values are \22all\22 (meaning: all load failures are reported), \22none\22 (no load failures are reported), or a comma-delimited list of items, each of which can be a framework/component pair or a framework name (only load failures from the specifically-listed items are reported). If the comma-delimited list is prefixed with \22^\22, then orientation of the list is negated: warn about all load failures *except* for the listed items.\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"abort_on_load_error\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"Whether to abort when a specified component isn't found or cannot be loaded\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"component_track_load_errors\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"Whether to track errors for components that failed to load or not\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"component_disable_dlopen\00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c"Whether to attempt to disable opening dynamic components or not\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@pmix_mca_base_verbose = internal global ptr null, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.20 = private unnamed_addr constant [479 x i8] c"Specifies where the default error output stream goes (this is separate from distinct help messages).  Accepts a comma-delimited list of: stderr, stdout, syslog, syslogpri:<notice|info|debug>, syslogid:<str> (where str is the prefix string for all syslog notices), file[:filename] (if filename is not specified, a default filename is used), fileappend (if not specified, the file is opened for truncation), level[:N] (if specified, integer verbose level; otherwise, 0 is implied)\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"[%s:%05d] \00", align 1
@pmix_output_info = external local_unnamed_addr global [0 x %struct.pmix_output_desc_t], align 8
@.str.22 = private unnamed_addr constant [36 x i8] c"mca: base: opening components at %s\00", align 1
@pmix_class_init_epoch = external local_unnamed_addr global i32, align 4
@pmix_output_stream_t_class = external global %struct.pmix_class_t, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"ompi\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"syslog support requested but not available on this system\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"syslogpri:\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"syslogid:\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"fileappend\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"level\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pmix_mca_base_open(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.pmix_output_stream_t, align 8 ; 18 uses
  %i.c = alloca [65 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.c, i8 0, i64 65, i1 false)
  %i.d = load i32, ptr @pmix_mca_base_opened, align 4, !tbaa !12 ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp eq ptr %0, null
  br i1 %.not23, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @pmix_mca_base_component_path, align 8, !tbaa !13 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias ptr @strdup(ptr noundef nonnull %0) #9
  store ptr %i.h, ptr @pmix_mca_base_component_path, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str, ptr noundef nonnull %0, ptr noundef nonnull %i.f) #9 ; 0 uses
  %i.j = load ptr, ptr @pmix_mca_base_component_path, align 8, !tbaa !13
  call void @free(ptr noundef %i.j) #9
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !13
  store ptr %i.k, ptr @pmix_mca_base_component_path, align 8, !tbaa !13
  %.pre = load i32, ptr @pmix_mca_base_opened, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %2 = phi i32 [ %i.d, %bb.d ], [ %.pre, %bb.e ], [ %i.d, %bb.b ]
  %i.l = add nsw i32 %2, 1
  store i32 %i.l, ptr @pmix_mca_base_opened, align 4, !tbaa !12
  br label %bb.as

bb.g:                                             ; preds = %bb.a
  %i.m = add nsw i32 %i.d, 1
  store i32 %i.m, ptr @pmix_mca_base_opened, align 4, !tbaa !12
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_pinstall_dirs, i64 120), align 8, !tbaa !15
  %i.o = tail call noalias ptr @strdup(ptr noundef %i.n) #9 ; 2 uses
  store ptr %i.o, ptr @pmix_mca_base_system_default_path, align 8, !tbaa !13
  %i.p = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef %i.o) #9 ; 0 uses
  %i.q = call i32 @geteuid() #9
  %i.r = call ptr @pmix_home_directory(i32 noundef %i.q) #9
  %i.s = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull @pmix_mca_base_user_default_path, ptr noundef nonnull @.str.1, ptr noundef %i.r) #9 ; 0 uses
  %i.t = load ptr, ptr @pmix_mca_base_user_default_path, align 8, !tbaa !13
  %i.u = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef %i.t) #9 ; 0 uses
  %i.v = call i32 @pmix_mca_base_var_register(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 5, ptr noundef nonnull @path_from_param) #9
  %i.w = call i32 @pmix_mca_base_var_register_synonym(i32 noundef %i.v, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 1) #9 ; 0 uses
  %i.x = load ptr, ptr @path_from_param, align 8, !tbaa !13 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull %i.x) #9 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.aa = call ptr @PMIx_Argv_join(ptr noundef %i.z, i32 noundef 58) #9 ; 3 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !8
  call void @PMIx_Argv_free(ptr noundef %i.ab) #9
  %.not20 = icmp eq ptr %0, null
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull @pmix_mca_base_component_path, ptr noundef nonnull @.str.7, ptr noundef nonnull %0, ptr noundef %i.aa) #9 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ad = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull @pmix_mca_base_component_path, ptr noundef nonnull @.str.8, ptr noundef %i.aa) #9 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @free(ptr noundef %i.aa) #9
  store ptr @.str.9, ptr @pmix_mca_base_component_show_load_errors, align 8, !tbaa !13
  %i.ae = call i32 @pmix_mca_base_var_register(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 5, ptr noundef nonnull @pmix_mca_base_component_show_load_errors) #9
  %i.af = call i32 @pmix_mca_base_var_register_synonym(i32 noundef %i.ae, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 1) #9 ; 0 uses
  %i.ag = call i32 @pmix_mca_base_show_load_errors_init() #9 ; 2 uses
  %.not21 = icmp eq i32 %i.ag, 0
  br i1 %.not21, label %bb.m, label %bb.as

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr @pmix_mca_base_component_abort_on_load_error, align 1, !tbaa !17
  %i.ah = call i32 @pmix_mca_base_var_register(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 7, ptr noundef nonnull @pmix_mca_base_component_abort_on_load_error) #9 ; 0 uses
  store i8 0, ptr @pmix_mca_base_component_track_load_errors, align 1, !tbaa !17
  %i.ai = call i32 @pmix_mca_base_var_register(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 7, ptr noundef nonnull @pmix_mca_base_component_track_load_errors) #9 ; 0 uses
  store i8 0, ptr @pmix_mca_base_component_disable_dlopen, align 1, !tbaa !17
  %i.aj = call i32 @pmix_mca_base_var_register(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 7, ptr noundef nonnull @pmix_mca_base_component_disable_dlopen) #9
  %i.ak = call i32 @pmix_mca_base_var_register_synonym(i32 noundef %i.aj, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 1) #9 ; 0 uses
  store ptr @.str.18, ptr @pmix_mca_base_verbose, align 8, !tbaa !13
  %i.al = call i32 @pmix_mca_base_var_register(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 5, ptr noundef nonnull @pmix_mca_base_verbose) #9
  %i.am = call i32 @pmix_mca_base_var_register_synonym(i32 noundef %i.al, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 1) #9 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %1, i8 0, i64 168, i1 false)
  %i.an = load ptr, ptr @pmix_mca_base_verbose, align 8, !tbaa !13 ; 2 uses
  %.not22 = icmp eq ptr %i.an, null
  br i1 %.not22, label %bb.al, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = call noalias ptr @strdup(ptr noundef nonnull readonly %i.an) #9 ; 4 uses
  %.not40.i = icmp eq ptr %i.ao, null
  br i1 %.not40.i, label %.critedge47.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 156 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 157
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 155
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 154
  %char0.i24 = load i8, ptr %i.ao, align 1
  %.not38.i25 = icmp eq i8 %char0.i24, 0
  br i1 %.not38.i25, label %.critedge47.i, label %.lr.ph

bb.o:                                             ; preds = %bb.ak
  %i.av = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %char0.i = load i8, ptr %i.av, align 1
  %.not38.i = icmp eq i8 %char0.i, 0
  br i1 %.not38.i, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.o
  %.03441.i27 = phi ptr [ %i.av, %bb.o ], [ %i.ao, %.lr.ph.i ] ; 14 uses
  %.042.i26 = phi i1 [ %.1.i, %bb.o ], [ false, %.lr.ph.i ] ; 6 uses
  %i.aw = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.03441.i27, i32 noundef 44) #10 ; 3 uses
  %.not39.i = icmp eq ptr %i.aw, null             ; 2 uses
  br i1 %.not39.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.aw, align 1, !tbaa !19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph
  %i.ax = call i32 @strcasecmp(ptr noundef nonnull %.03441.i27, ptr noundef nonnull @.str.24) #10
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.25) #9
  br label %bb.ak

bb.s:                                             ; preds = %bb.q
  %i.az = call i32 @strncasecmp(ptr noundef nonnull %.03441.i27, ptr noundef nonnull @.str.26, i64 noundef 10) #10
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.25) #9
  br label %bb.ak

bb.u:                                             ; preds = %bb.s
  %i.bb = call i32 @strncasecmp(ptr noundef nonnull %.03441.i27, ptr noundef nonnull @.str.27, i64 noundef 9) #10
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.25) #9
  br label %bb.ak

bb.w:                                             ; preds = %bb.u
  %i.bd = call i32 @strcasecmp(ptr noundef nonnull %.03441.i27, ptr noundef nonnull @.str.28) #10
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.au, align 2, !tbaa !20
  br label %bb.ak

bb.y:                                             ; preds = %bb.w
  %i.bf = call i32 @strcasecmp(ptr noundef nonnull %.03441.i27, ptr noundef nonnull @.str.18) #10
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.at, align 1, !tbaa !25
  br label %bb.ak

bb.aa:                                            ; preds = %bb.y
  %i.bh = call i32 @strcasecmp(ptr noundef nonnull %.03441.i27, ptr noundef nonnull @.str.29) #10
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = call i32 @strcasecmp(ptr noundef nonnull %.03441.i27, ptr noundef nonnull @.str.30) #10
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store i8 1, ptr %i.aq, align 4, !tbaa !26
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  %i.bl = call i32 @strncasecmp(ptr noundef nonnull %.03441.i27, ptr noundef nonnull @.str.30, i64 noundef 5) #10
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.aq, align 4, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %.03441.i27, i64 5
  %i.bo = call noalias ptr @strdup(ptr noundef nonnull %i.bn) #9
  store ptr %i.bo, ptr %i.as, align 8, !tbaa !27
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  %i.bp = call i32 @strcasecmp(ptr noundef nonnull %.03441.i27, ptr noundef nonnull @.str.31) #10
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %i.aq, align 4, !tbaa !26
  store i8 1, ptr %i.ar, align 1, !tbaa !28
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.br = call i32 @strncasecmp(ptr noundef nonnull %.03441.i27, ptr noundef nonnull @.str.32, i64 noundef 5) #10
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.ap, align 8, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %.03441.i27, i64 5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !19
  %i.bv = icmp eq i8 %i.bu, 58
  br i1 %i.bv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bw = getelementptr inbounds nuw i8, ptr %.03441.i27, i64 6
  %i.bx = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bw, ptr noundef null, i32 noundef 10) #9, !inline_history !30
  %i.by = trunc i64 %i.bx to i32
  store i32 %i.by, ptr %i.ap, align 8, !tbaa !29
  br label %bb.ak

end_hunk_0
