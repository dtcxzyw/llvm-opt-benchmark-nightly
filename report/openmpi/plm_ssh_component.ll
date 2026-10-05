Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/plm_ssh_component?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pmix_mca_base_component_2_1_0_t = type { i32, i32, i32, [16 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, [64 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, [32 x i8] }
%struct.timespec = type { i64, i64 }
%struct.pmix_mca_base_framework_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.pmix_list_t, %struct.pmix_list_t }
%struct.pmix_list_t = type { %struct.pmix_object_t, %struct.pmix_list_item_t, i64 }
%struct.pmix_object_t = type { %union.pthread_mutex_t, ptr, i32, %struct.pmix_tma }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.pmix_tma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmix_list_item_t = type { %struct.pmix_object_t, ptr, ptr, i32 }
%struct.pmix_output_desc_t = type { i8, i8, i32, i8, i32, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, ptr, i32, i32 }
%struct.prte_process_info_t = type { %struct.pmix_proc, %struct.pmix_proc, ptr, %struct.pmix_proc, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i8, i16, ptr, ptr, ptr, i8, ptr, i8 }
%struct.pmix_proc = type { [256 x i8], i32 }
%struct.prte_state_base_module_1_0_0_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.prte_plm_base_module_1_0_0_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"PRTE ssh plm MCA component version 13\00", align 1
@prte_mca_plm_ssh_component_version_string = local_unnamed_addr global ptr @.str, align 8
@prte_mca_plm_ssh_component = global { %struct.pmix_mca_base_component_2_1_0_t, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timespec, i32, i8, [3 x i8], i32, [4 x i8], ptr, ptr, ptr, i8, i8, [6 x i8], ptr, ptr, ptr } { %struct.pmix_mca_base_component_2_1_0_t { i32 2, i32 1, i32 0, [16 x i8] c"prte\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 0, i32 13, [32 x i8] c"plm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, [64 x i8] c"ssh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 0, i32 10, ptr @ssh_component_open, ptr @ssh_component_close, ptr @ssh_component_query, ptr @ssh_component_register, [32 x i8] zeroinitializer }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, %struct.timespec zeroinitializer, i32 0, i8 0, [3 x i8] zeroinitializer, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, i8 0, i8 0, [6 x i8] zeroinitializer, ptr null, ptr null, ptr null }, align 8
@environ = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"num_concurrent\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"How many plm_ssh_agent instances to invoke concurrently (must be > 0)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"force_ssh\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Force the launcher to always use ssh\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"disable_qrsh\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"Disable the use of qrsh when under the Grid Engine parallel environment\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"daemonize_qrsh\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"Daemonize the orted under the Grid Engine parallel environment\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"disable_llspawn\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"Disable the use of llspawn when under the LoadLeveler environment\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"daemonize_llspawn\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"Daemonize the orted when under the LoadLeveler environment\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Priority of the ssh plm component\00", align 1
@prte_plm_ssh_delay_string = internal global ptr null, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"Delay between invocations of the remote agent (sec[:usec])\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"no_tree_spawn\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"If set to true, do not launch via a tree-based topology\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"ssh : rsh\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"agent\00", align 1
@.str.21 = private unnamed_addr constant [73 x i8] c"The command used to launch executables on remote nodes (typically \22ssh\22)\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"prte\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"pls\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"ssh_agent\00", align 1
@agent_var_id = internal unnamed_addr global i32 -1, align 4
@.str.25 = private unnamed_addr constant [18 x i8] c"assume_same_shell\00", align 1
@.str.26 = private unnamed_addr constant [158 x i8] c"If set to true, assume that the shell on the remote node is the same as the shell on the local node.  Otherwise, probe for what the remote shell [default: 1]\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"pass_environ_mca_params\00", align 1
@.str.28 = private unnamed_addr constant [86 x i8] c"If set to false, do not include mca params from the environment on the orted cmd line\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Arguments to add to ssh\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"pass_libpath\00", align 1
@.str.32 = private unnamed_addr constant [73 x i8] c"Prepend the specified library path to the remote shell's LD_LIBRARY_PATH\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.34 = private unnamed_addr constant [61 x i8] c"Change working directory after ssh, but before exec of prted\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"help-plm-ssh.txt\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"concurrency-less-than-zero\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"SGE_ROOT\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"ARC\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"PE_HOSTFILE\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"JOB_ID\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"%s/bin/%s\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"qrsh\00", align 1
@prte_plm_base_framework = external local_unnamed_addr global %struct.pmix_mca_base_framework_t, align 8
@pmix_output_info = external local_unnamed_addr global [0 x %struct.pmix_output_desc_t], align 8
@.str.43 = private unnamed_addr constant [124 x i8] c"%s plm:ssh: unable to be used: SGE indicated but cannot find path or execution permissions not set for launching agent qrsh\00", align 1
@prte_process_info = external global %struct.prte_process_info_t, align 8
@.str.44 = private unnamed_addr constant [14 x i8] c"LOADL_STEP_ID\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"llspawn\00", align 1
@.str.46 = private unnamed_addr constant [135 x i8] c"%s plm:ssh: unable to be used: LoadLeveler indicated but cannot find path or execution permissions not set for launching agent llspawn\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"agent-not-found\00", align 1
@prte_state_base_framework = external local_unnamed_addr global %struct.pmix_mca_base_framework_t, align 8
@.str.48 = private unnamed_addr constant [42 x i8] c"%s [%f] ACTIVATE JOB %s STATE %s AT %s:%d\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"plm_ssh_component.c\00", align 1
@prte_state = external local_unnamed_addr global %struct.prte_state_base_module_1_0_0_t, align 8
@.str.51 = private unnamed_addr constant [74 x i8] c"%s plm:ssh: unable to be used: cannot find path for launching agent \22%s\22\0A\00", align 1
@prte_plm_ssh_module = external global %struct.prte_plm_base_module_1_0_0_t, align 8
@.str.52 = private unnamed_addr constant [64 x i8] c"%s plm:ssh_lookup on agent (null) path %s - No agent specified.\00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c"%s plm:ssh_lookup on agent %s path %s\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@prte_xterm = external local_unnamed_addr global ptr, align 8
@.str.55 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"-x\00", align 1

; Function Attrs: nounwind uwtable
define internal noundef i32 @ssh_component_open() #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 226), align 2, !tbaa !17
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 229), align 1, !tbaa !18
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 280), align 8, !tbaa !19
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 256), align 8, !tbaa !20 ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef %i.b) #12 ; 0 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 256), align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @prte_plm_ssh_delay_string, align 8, !tbaa !21 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i64 @__isoc23_strtol(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 10) #12
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.h = load ptr, ptr @prte_plm_ssh_delay_string, align 8, !tbaa !21
  %i.i = icmp eq ptr %i.g, %i.h
  %spec.store.select = select i1 %i.i, i64 0, i64 %i.f
  store i64 %spec.store.select, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 232), align 8, !tbaa !40
  %i.j = load i8, ptr %i.g, align 1, !tbaa !22
  %i.k = icmp eq i8 %i.j, 58
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.m = call i64 @__isoc23_strtol(ptr noundef nonnull %i.l, ptr noundef null, i32 noundef 10) #12
  %i.n = mul nsw i64 %i.m, 1000
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 240), align 8, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ssh_component_close() #1 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ssh_component_query(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = load i32, ptr @agent_var_id, align 4, !tbaa !23
  %i.d = call i32 @pmix_mca_base_var_get_value(i32 noundef %i.c, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef null) #12 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 4, !tbaa !23
  %.not27 = icmp eq i32 %i.e, 0
  br i1 %.not27, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 225), align 1, !tbaa !24, !range !42, !noundef !43
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @getenv(ptr noundef nonnull @.str.37) #12 ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = call ptr @getenv(ptr noundef nonnull @.str.38) #12 ; 2 uses
  %.not29 = icmp eq ptr %i.i, null
  br i1 %.not29, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call ptr @getenv(ptr noundef nonnull @.str.39) #12
  %.not30 = icmp eq ptr %i.j, null
  br i1 %.not30, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = call ptr @getenv(ptr noundef nonnull @.str.40) #12
  %.not31 = icmp eq ptr %i.k, null
  br i1 %.not31, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #12 ; 0 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.n = call fastcc i32 @ssh_launch_agent_lookup(ptr noundef nonnull @.str.42, ptr noundef %i.m)
  %.not32 = icmp eq i32 %i.n, 0
  br i1 %.not32, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_plm_base_framework, i64 76), align 4, !tbaa !33 ; 3 uses
  %or.cond = icmp ult i32 %i.o, 64
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !35
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #12
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.o, ptr noundef nonnull @.str.43, ptr noundef %i.u) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !21
  call void @free(ptr noundef %i.v) #12
  store ptr null, ptr %0, align 8, !tbaa !45
  br label %bb.ai

bb.m:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !21
  store ptr %i.w, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 264), align 8, !tbaa !36
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 226), align 2, !tbaa !17
  br label %bb.ah

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 228), align 4, !tbaa !37, !range !42, !noundef !43
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = call ptr @getenv(ptr noundef nonnull @.str.44) #12
  %.not33 = icmp eq ptr %i.z, null
  br i1 %.not33, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = call fastcc i32 @ssh_launch_agent_lookup(ptr noundef nonnull @.str.45, ptr noundef null)
  %.not34 = icmp eq i32 %i.aa, 0
  br i1 %.not34, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_plm_base_framework, i64 76), align 4, !tbaa !33 ; 3 uses
  %or.cond3 = icmp ult i32 %i.ab, 64
  br i1 %or.cond3, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ah = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #12
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ab, ptr noundef nonnull @.str.46, ptr noundef %i.ah) #12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  store ptr null, ptr %0, align 8, !tbaa !45
  br label %bb.ai

bb.u:                                             ; preds = %bb.p
  %i.ai = call noalias dereferenceable_or_null(8) ptr @strdup(ptr noundef nonnull @.str.45) #12
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 264), align 8, !tbaa !36
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 229), align 1, !tbaa !18
  br label %bb.ah

bb.v:                                             ; preds = %bb.n, %bb.o, %bb.b
  %i.aj = call fastcc i32 @ssh_launch_agent_lookup(ptr noundef null, ptr noundef null)
  %.not35 = icmp eq i32 %i.aj, 0
  br i1 %.not35, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 264), align 8, !tbaa !36 ; 3 uses
  %.not36 = icmp eq ptr %i.ak, null
  br i1 %.not36, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.al = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(10) @.str.19) #13
  %.not37 = icmp eq i32 %i.al, 0
  br i1 %.not37, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.am = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull %i.ak) #12 ; 0 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 72), align 8, !tbaa !46
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.ap = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #12 ; 0 uses
  %i.aq = load i64, ptr %2, align 8, !tbaa !48
  %i.ar = sitofp i64 %i.aq to double
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !49
  %i.au = sitofp i64 %i.at to double
  %i.av = fdiv double %i.au, 1.000000e+06
  %i.aw = fadd double %i.av, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 76), align 4, !tbaa !33 ; 3 uses
  %or.cond5 = icmp ult i32 %i.ax, 64
  br i1 %or.cond5, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !35
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bd = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #12
  %i.be = call ptr @prte_job_state_to_str(i32 noundef 60) #12
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ax, ptr noundef nonnull @.str.48, ptr noundef %i.bd, double noundef %i.aw, ptr noundef nonnull @.str.49, ptr noundef %i.be, ptr noundef nonnull @.str.50, i32 noundef 306) #12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab, %bb.y
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_state, i64 16), align 8, !tbaa !51
  call void %i.bf(ptr noundef null, i32 noundef 60) #12
  br label %bb.ai

bb.ad:                                            ; preds = %bb.x, %bb.w
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_plm_base_framework, i64 76), align 4, !tbaa !33 ; 3 uses
  %or.cond7 = icmp ult i32 %i.bg, 64
  br i1 %or.cond7, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !35
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bm = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #12
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 264), align 8, !tbaa !36
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.bg, ptr noundef nonnull @.str.51, ptr noundef %i.bm, ptr noundef %i.bn) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  store ptr null, ptr %0, align 8, !tbaa !45
  br label %bb.ai

bb.ah:                                            ; preds = %bb.v, %bb.u, %bb.m
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 248), align 8, !tbaa !38
  store i32 %i.bo, ptr %1, align 4, !tbaa !23
  store ptr @prte_plm_ssh_module, ptr %0, align 8, !tbaa !45
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.ah, %bb.ag, %bb.ac, %bb.t, %bb.l
  %.0 = phi i32 [ -1, %bb.l ], [ -6, %bb.ac ], [ -1, %bb.ag ], [ 0, %bb.ah ], [ -1, %bb.t ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ssh_component_register() #0 {
bb.a:
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 256), align 8, !tbaa !20
  %i.a = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 256)) #12 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 224), align 8, !tbaa !52
  %i.b = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 224)) #12 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 225), align 1, !tbaa !24
  %i.c = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 225)) #12 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 227), align 1, !tbaa !53
  %i.d = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 227)) #12 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 228), align 4, !tbaa !37
  %i.e = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 228)) #12 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 230), align 2, !tbaa !54
  %i.f = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 230)) #12 ; 0 uses
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 248), align 8, !tbaa !38
  %i.g = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 248)) #12 ; 0 uses
  store ptr null, ptr @prte_plm_ssh_delay_string, align 8, !tbaa !21
  %i.h = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 5, ptr noundef nonnull @prte_plm_ssh_delay_string) #12 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 252), align 4, !tbaa !55
  %i.i = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 252)) #12 ; 0 uses
  store ptr @.str.19, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 264), align 8, !tbaa !36
  %i.j = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 264)) #12 ; 3 uses
  %i.k = tail call i32 @pmix_mca_base_var_register_synonym(i32 noundef %i.j, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 1) #12 ; 0 uses
  %i.l = tail call i32 @pmix_mca_base_var_register_synonym(i32 noundef %i.j, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 1) #12 ; 0 uses
  store i32 %i.j, ptr @agent_var_id, align 4, !tbaa !23
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 288), align 8, !tbaa !56
  %i.m = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 288)) #12
  %i.n = tail call i32 @pmix_mca_base_var_register_synonym(i32 noundef %i.m, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 1) #12 ; 0 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 289), align 1, !tbaa !57
  %i.o = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 289)) #12 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 296), align 8, !tbaa !58
  %i.p = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 296)) #12 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 304), align 8, !tbaa !59
  %i.q = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 304)) #12 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 312), align 8, !tbaa !60
  %i.r = tail call i32 @pmix_mca_base_component_var_register(ptr noundef nonnull @prte_mca_plm_ssh_component, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 312)) #12 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef ptr @prte_plm_ssh_search(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4097 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq ptr %0, null                     ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 264), align 8
  %i.d = icmp eq ptr %i.c, null
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @pmix_getcwd(ptr noundef nonnull %i.a, i64 noundef 4097) #12 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @pmix_string_copy(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef 4097) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 264), align 8
  %.sink = select i1 %i.b, ptr %i.g, ptr %0
  %i.h = call ptr @PMIx_Argv_split(ptr noundef %.sink, i32 noundef 58) #12 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %.not57 = icmp eq ptr %i.i, null
  br i1 %.not57, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.k
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %bb.k ], [ 0, %bb.e ]
  %i.j = phi ptr [ %i.aw, %bb.k ], [ %i.i, %bb.e ] ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !22    ; 2 uses
  %.not4550 = icmp eq i8 %i.k, 0
  br i1 %.not4550, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = tail call ptr @__ctype_b_loc() #14
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %i.n = phi i8 [ %i.k, %.lr.ph ], [ %i.t, %bb.g ] ; 2 uses
  %.03651 = phi ptr [ %i.j, %.lr.ph ], [ %i.s, %bb.g ] ; 2 uses
  %i.o = sext i8 %i.n to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !66
  %i.r = and i16 %i.q, 8192
  %.not46 = icmp eq i16 %i.r, 0
  br i1 %.not46, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.03651, i64 1 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !22    ; 2 uses
  %.not45 = icmp eq i8 %i.t, 0
  br i1 %.not45, label %.critedge, label %bb.f, !llvm.loop !61

.critedge:                                        ; preds = %bb.f, %bb.g, %.preheader
  %char066 = phi i8 [ 0, %.preheader ], [ 0, %bb.g ], [ %i.n, %bb.f ]
  %.036.lcssa = phi ptr [ %i.j, %.preheader ], [ %i.s, %bb.g ], [ %.03651, %bb.f ] ; 5 uses
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.036.lcssa) #13
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, -2                         ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph55, label %.critedge3

.lr.ph55:                                         ; preds = %.critedge
  %i.y = tail call ptr @__ctype_b_loc() #14       ; 2 uses
  %i.z = zext nneg i32 %i.w to i64                ; 2 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %.036.lcssa, i64 %i.z ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !22
  %i.ad = sext i8 %i.ac to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !66
  %i.ag = and i16 %i.af, 8192
  %.not4777 = icmp eq i16 %i.ag, 0
  br i1 %.not4777, label %.critedge3.loopexit, label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph55, %.lr.ph79
  %i.ah = phi ptr [ %i.aj, %.lr.ph79 ], [ %i.ab, %.lr.ph55 ]
  %indvars.iv78 = phi i64 [ %indvars.iv.next, %.lr.ph79 ], [ %i.z, %.lr.ph55 ]
  store i8 0, ptr %i.ah, align 1, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %.036.lcssa, i64 %indvars.iv.next ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22
  %i.al = sext i8 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !66
  %i.ao = and i16 %i.an, 8192
  %.not47 = icmp eq i16 %i.ao, 0
  br i1 %.not47, label %.critedge3.loopexit, label %.lr.ph79

.critedge3.loopexit:                              ; preds = %.lr.ph79, %.lr.ph55
  %char0.pre = load i8, ptr %.036.lcssa, align 1
  br label %.critedge3

.critedge3:                                       ; preds = %.critedge3.loopexit, %.critedge
  %char0 = phi i8 [ %char0.pre, %.critedge3.loopexit ], [ %char066, %.critedge ]
  %i.ap = icmp eq i8 %char0, 0
  br i1 %i.ap, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.critedge3
  %i.aq = call ptr @PMIx_Argv_split(ptr noundef nonnull %.036.lcssa, i32 noundef 32) #12 ; 5 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = load ptr, ptr @environ, align 8, !tbaa !67
  %i.at = call noalias ptr @pmix_path_findv(ptr noundef %i.ar, i32 noundef 1, ptr noundef %i.as, ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not48 = icmp eq ptr %i.at, null
  br i1 %.not48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !21
  call void @free(ptr noundef %i.au) #12
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !21
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  call void @PMIx_Argv_free(ptr noundef nonnull %i.aq) #12
  br label %bb.k

bb.k:                                             ; preds = %.critedge3, %bb.j
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next62
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %.sink.split, label %.preheader, !llvm.loop !62

.sink.split:                                      ; preds = %bb.k, %bb.e, %bb.i
  %.039.ph = phi ptr [ %i.aq, %bb.i ], [ null, %bb.e ], [ null, %bb.k ]
  call void @PMIx_Argv_free(ptr noundef nonnull %i.h) #12
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.a
  %.039 = phi ptr [ null, %bb.a ], [ %.039.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.039
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @pmix_getcwd(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @pmix_string_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @PMIx_Argv_split(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noalias ptr @pmix_path_findv(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare void @PMIx_Argv_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @pmix_mca_base_component_var_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pmix_mca_base_var_register_synonym(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @pmix_show_help(ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @pmix_mca_base_var_get_value(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @pmix_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -13, 1) i32 @ssh_launch_agent_lookup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 264), align 8
  %i.c = icmp eq ptr %i.b, null
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_plm_base_framework, i64 76), align 4, !tbaa !33 ; 5 uses
  %or.cond3 = icmp ult i32 %i.d, 64               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %or.cond3, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
  %i.i = icmp sgt i32 %i.h, 4
  br i1 %i.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #12
  %i.k = icmp eq ptr %1, null
  %i.l = select i1 %i.k, ptr @.str.49, ptr %1
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.d, ptr noundef nonnull @.str.52, ptr noundef %i.j, ptr noundef nonnull %i.l) #12
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  br i1 %or.cond3, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = zext nneg i32 %i.d to i64
  %i.n = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %i.q = icmp sgt i32 %i.p, 4
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #12
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 264), align 8
  %i.t = select i1 %i.a, ptr %i.s, ptr %0
  %i.u = icmp eq ptr %1, null
  %i.v = select i1 %i.u, ptr @.str.49, ptr %1
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.d, ptr noundef nonnull @.str.53, ptr noundef %i.r, ptr noundef %i.t, ptr noundef nonnull %i.v) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.w = tail call ptr @prte_plm_ssh_search(ptr noundef %0, ptr noundef %1) ; 4 uses
  store ptr %i.w, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 280), align 8, !tbaa !19
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.z = tail call noalias ptr @strdup(ptr noundef %i.y) #12
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 272), align 8, !tbaa !69
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.ab = tail call noalias ptr @pmix_basename(ptr noundef %i.aa) #12 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 280), align 8, !tbaa !19
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.ae) #12
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 280), align 8, !tbaa !19
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !21
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(4) @.str.54) #13
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr @prte_xterm, align 8, !tbaa !21
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call i32 @PMIx_Argv_append_unique_nosize(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 280), ptr noundef nonnull @.str.55) #12 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_plm_base_framework, i64 76), align 4, !tbaa !33
  %i.al = tail call i32 @pmix_output_get_verbosity(i32 noundef %i.ak) #12
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.m
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 280), align 8, !tbaa !19 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %.not2728 = icmp eq ptr %i.ap, null
  br i1 %.not2728, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %.not27 = icmp eq ptr %i.ar, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !68

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 1, %.preheader ]
  %i.as = phi ptr [ %i.ar, %bb.n ], [ %i.ap, %.preheader ]
  %i.at = tail call i32 @strcasecmp(ptr noundef nonnull @.str.56, ptr noundef nonnull %i.as) #13
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit, label %bb.n

._crit_edge:                                      ; preds = %bb.n, %.preheader
  %i.av = tail call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_plm_ssh_component, i64 280), ptr noundef nonnull @.str.56) #12 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %bb.m, %._crit_edge, %bb.l, %bb.i, %bb.h, %bb.b, %bb.c, %bb.d
  %.021 = phi i32 [ 0, %bb.i ], [ -13, %bb.b ], [ -13, %bb.h ], [ -13, %bb.d ], [ -13, %bb.c ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %._crit_edge ], [ 0, %bb.m ], [ 0, %.lr.ph ]
  ret i32 %.021
}

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @prte_util_print_name_args(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare ptr @prte_job_state_to_str(i32 noundef) local_unnamed_addr #3

declare noalias ptr @pmix_basename(ptr noundef) local_unnamed_addr #3

declare i32 @PMIx_Argv_append_unique_nosize(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pmix_output_get_verbosity(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare i32 @PMIx_Argv_append_nosize(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"pmix_mca_base_component_2_1_0_t", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !5, i64 28, !5, i64 32, !5, i64 36, !4, i64 40, !5, i64 72, !5, i64 76, !5, i64 80, !4, i64 84, !5, i64 148, !5, i64 152, !5, i64 156, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !4, i64 192}
!10 = !{!"_Bool", !4, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"timespec", !11, i64 0, !11, i64 8}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"any p2 pointer", !8, i64 0}
!15 = !{!"p2 omnipotent char", !14, i64 0}
!16 = !{!"prte_mca_plm_ssh_component_t", !9, i64 0, !10, i64 224, !10, i64 225, !10, i64 226, !10, i64 227, !10, i64 228, !10, i64 229, !10, i64 230, !12, i64 232, !5, i64 248, !10, i64 252, !5, i64 256, !13, i64 264, !13, i64 272, !15, i64 280, !10, i64 288, !10, i64 289, !13, i64 296, !13, i64 304, !13, i64 312}
!17 = !{!16, !10, i64 226}
!18 = !{!16, !10, i64 229}
!19 = !{!16, !15, i64 280}
!20 = !{!16, !5, i64 256}
!21 = !{!13, !13, i64 0}
!22 = !{!4, !4, i64 0}
!23 = !{!5, !5, i64 0}
!24 = !{!16, !10, i64 225}
!25 = !{!"p2 _ZTS31pmix_mca_base_component_2_1_0_t", !14, i64 0}
!26 = !{!"p1 _ZTS12pmix_class_t", !8, i64 0}
!27 = !{!"pmix_tma", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !14, i64 56}
!28 = !{!"pmix_object_t", !4, i64 0, !26, i64 40, !5, i64 48, !27, i64 56}
!29 = !{!"p1 _ZTS16pmix_list_item_t", !8, i64 0}
!30 = !{!"pmix_list_item_t", !28, i64 0, !29, i64 120, !29, i64 128, !5, i64 136}
!31 = !{!"pmix_list_t", !28, i64 0, !30, i64 120, !11, i64 264}
!32 = !{!"pmix_mca_base_framework_t", !13, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !25, i64 56, !13, i64 64, !5, i64 72, !5, i64 76, !31, i64 80, !31, i64 352}
!33 = !{!32, !5, i64 76}
!34 = !{!"", !10, i64 0, !10, i64 1, !5, i64 4, !10, i64 8, !5, i64 12, !13, i64 16, !13, i64 24, !5, i64 32, !13, i64 40, !5, i64 48, !10, i64 52, !10, i64 53, !10, i64 54, !10, i64 55, !13, i64 56, !5, i64 64, !5, i64 68}
!35 = !{!34, !5, i64 4}
!36 = !{!16, !13, i64 264}
!37 = !{!16, !10, i64 228}
!38 = !{!16, !5, i64 248}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!16, !11, i64 232}
!41 = !{!16, !11, i64 240}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!"p1 _ZTS28pmix_mca_base_module_2_0_0_t", !8, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!32, !5, i64 72}
!47 = !{!"timeval", !11, i64 0, !11, i64 8}
!48 = !{!47, !11, i64 0}
!49 = !{!47, !11, i64 8}
!50 = !{!"prte_state_base_module_1_0_0_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72}
!51 = !{!50, !8, i64 16}
!52 = !{!16, !10, i64 224}
!53 = !{!16, !10, i64 227}
!54 = !{!16, !10, i64 230}
!55 = !{!16, !10, i64 252}
!56 = !{!16, !10, i64 288}
!57 = !{!16, !10, i64 289}
!58 = !{!16, !13, i64 296}
!59 = !{!16, !13, i64 304}
!60 = !{!16, !13, i64 312}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, !39}
!63 = !{!"p1 short", !8, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"short", !4, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!15, !15, i64 0}
!68 = distinct !{!68, !39}
!69 = !{!16, !13, i64 272}
end_hunk_0
