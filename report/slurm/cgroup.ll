Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/cgroup?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }
%struct.cgroup_conf_t = type { float, float, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, ptr, i8, i8, float, float, i64, i64, i8, i64 }
%struct.slurm_ops_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.conf_file_options = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }

@.str = private unnamed_addr constant [16 x i8] c"/sys/fs/cgroup/\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cgroup filesystem not mounted in /sys/fs/cgroup/\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"/sys/fs/cgroup/systemd/\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"can't stat /sys/fs/cgroup/systemd/: %m\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"/sys/fs/cgroup/unified/\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"can't stat /sys/fs/cgroup/unified/: %m\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Unexpected fs type on /sys/fs/cgroup/systemd\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"No filesystem mounted on /sys/fs/cgroup\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Unknown filesystem type mounted on /sys/fs/cgroup\00", align 1
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"CGROUP: %s: using cgroup version %d\00", align 1
@__func__.autodetect_cgroup_version = private unnamed_addr constant [26 x i8] c"autodetect_cgroup_version\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"cgroup/v1\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"cgroup/v2\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"%s: pthread_rwlock_wrlock(): %m\00", align 1
@__func__.cgroup_conf_init = private unnamed_addr constant [17 x i8] c"cgroup_conf_init\00", align 1
@cg_conf_inited = internal unnamed_addr global i1 false, align 1
@cg_conf_buf = internal unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [32 x i8] c"%s: pthread_rwlock_unlock(): %m\00", align 1
@slurm_cgroup_conf = dso_local global %struct.cgroup_conf_t zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [32 x i8] c"%s: pthread_rwlock_rdlock(): %m\00", align 1
@__func__.cgroup_get_conf_list = private unnamed_addr constant [21 x i8] c"cgroup_get_conf_list\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"CgroupMountpoint\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"CgroupSlice\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"CgroupJobIdPaths\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"ConstrainCores\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"ConstrainRAMSpace\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"AllowedRAMSpace\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"%.1f%%\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"MaxRAMPercent\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"MinRAMSpace\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%luMB\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"ConstrainSwapSpace\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"AllowedSwapSpace\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"MaxSwapPercent\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"ConstrainDevices\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"CgroupPlugin\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"IgnoreSystemd\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"IgnoreSystemdOnFailure\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"EnableControllers\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"EnableExtraControllers\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"MemorySwappiness\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"SystemdTimeout\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"%lu ms\00", align 1
@plugin_inited = internal unnamed_addr global i32 0, align 4
@ops = internal global %struct.slurm_ops_t zeroinitializer, align 8
@.str.41 = private unnamed_addr constant [45 x i8] c"%s:%d: %s: safe_write (%zu of %d) failed: %m\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"cgroup.c\00", align 1
@__func__.cgroup_write_state = private unnamed_addr constant [19 x i8] c"cgroup_write_state\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"%s:%d: %s: safe_write (%zu of %d) partial write\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"%s:%d: %s: safe_read EOF\00", align 1
@__func__.cgroup_read_state = private unnamed_addr constant [18 x i8] c"cgroup_read_state\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"%s:%d: %s: safe_read (%zu of %d) EOF\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"%s:%d: %s: safe_read (%zu of %d) failed: %m\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"%s:%d: %s: safe_read (%zu of %d) partial read\00", align 1
@scope_path = internal global [4096 x i8] zeroinitializer, align 16
@__func__.cgroup_write_conf = private unnamed_addr constant [18 x i8] c"cgroup_write_conf\00", align 1
@__func__.cgroup_read_conf = private unnamed_addr constant [17 x i8] c"cgroup_read_conf\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"%s: problem with unpack of cgroup.conf\00", align 1
@__func__.cgroup_memcg_job_confinement = private unnamed_addr constant [29 x i8] c"cgroup_memcg_job_confinement\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@g_context_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@.str.51 = private unnamed_addr constant [29 x i8] c"%s: pthread_mutex_lock(): %m\00", align 1
@__func__.cgroup_g_init = private unnamed_addr constant [14 x i8] c"cgroup_g_init\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"CGROUP: cgroup conf was already initialized.\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"autodetect\00", align 1
@.str.54 = private unnamed_addr constant [89 x i8] c"cgroup/v1 plugin is deprecated, please upgrade to cgroup/v2 at your earliest convenience\00", align 1
@syms = internal global [31 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], align 16
@g_context = internal unnamed_addr global ptr null, align 8
@.str.55 = private unnamed_addr constant [32 x i8] c"cannot create %s context for %s\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"cannot setup the scope for %s\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"%s: pthread_mutex_unlock(): %m\00", align 1
@__func__.cgroup_g_fini = private unnamed_addr constant [14 x i8] c"cgroup_g_fini\00", align 1
@.str.58 = private unnamed_addr constant [137 x i8] c"%s: Trying to initialize cgroups but CgroupPlugin=disabled is set in cgroup.conf. Please, unset any configuration that is using cgroups.\00", align 1
@__func__.cgroup_g_initialize = private unnamed_addr constant [20 x i8] c"cgroup_g_initialize\00", align 1
@__func__.cgroup_g_step_create = private unnamed_addr constant [21 x i8] c"cgroup_g_step_create\00", align 1
@__func__.cgroup_g_step_addto = private unnamed_addr constant [20 x i8] c"cgroup_g_step_addto\00", align 1
@__func__.cgroup_g_step_get_pids = private unnamed_addr constant [23 x i8] c"cgroup_g_step_get_pids\00", align 1
@__func__.cgroup_g_step_destroy = private unnamed_addr constant [22 x i8] c"cgroup_g_step_destroy\00", align 1
@__func__.cgroup_g_has_pid = private unnamed_addr constant [17 x i8] c"cgroup_g_has_pid\00", align 1
@__func__.cgroup_g_step_stop_oom_mgr = private unnamed_addr constant [27 x i8] c"cgroup_g_step_stop_oom_mgr\00", align 1
@__func__.cgroup_g_task_addto = private unnamed_addr constant [20 x i8] c"cgroup_g_task_addto\00", align 1
@__func__.cgroup_g_task_get_acct_data = private unnamed_addr constant [28 x i8] c"cgroup_g_task_get_acct_data\00", align 1
@cg_conf_lock = internal global { { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32, [4 x i8] } } zeroinitializer, align 8
@.str.60 = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"/slurm\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"CgroupAutomount\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"MemoryLimitEnforcement\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"MemoryLimitThreshold\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"AllowedDevicesFile\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"SignalChildrenProcesses\00", align 1
@__const._read_slurm_cgroup_conf.options = private unnamed_addr constant [25 x { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr }] [{ ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.62, i32 8, [4 x i8] zeroinitializer, ptr @_defunct_option, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.19, i32 8, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.16, i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.18, i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.20, i32 8, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.21, i32 8, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.22, i32 12, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.24, i32 12, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.25, i32 5, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.27, i32 8, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.28, i32 12, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.29, i32 12, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.63, i32 8, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.64, i32 12, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.30, i32 8, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.65, i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.36, i32 5, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.31, i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.32, i32 8, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.33, i32 8, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.34, i32 8, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.35, i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.66, i32 8, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.39, i32 5, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } zeroinitializer], align 16
@.str.67 = private unnamed_addr constant [12 x i8] c"cgroup.conf\00", align 1
@.str.68 = private unnamed_addr constant [45 x i8] c"%s: No cgroup.conf file (%s), using defaults\00", align 1
@__func__._read_slurm_cgroup_conf = private unnamed_addr constant [24 x i8] c"_read_slurm_cgroup_conf\00", align 1
@cg_conf_exist = internal unnamed_addr global i1 false, align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"Reading cgroup.conf file %s\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"Could not open/read/parse cgroup.conf file %s\00", align 1
@.str.71 = private unnamed_addr constant [62 x i8] c"Value for MemorySwappiness is too high, rounding down to 100.\00", align 1
@.str.72 = private unnamed_addr constant [81 x i8] c"AllowedDevicesFile option is obsolete, please remove it from your configuration.\00", align 1
@.str.73 = private unnamed_addr constant [63 x i8] c"The option \22%s\22 is defunct, please remove it from cgroup.conf.\00", align 1
@__func__._cgroup_conf_fini = private unnamed_addr constant [18 x i8] c"_cgroup_conf_fini\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"cgroup_p_initialize\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"cgroup_p_system_create\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"cgroup_p_system_addto\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"cgroup_p_system_destroy\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"cgroup_p_step_create\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"cgroup_p_step_addto\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"cgroup_p_step_get_pids\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"cgroup_p_step_suspend\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"cgroup_p_step_resume\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"cgroup_p_step_destroy\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"cgroup_p_has_pid\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"cgroup_p_constrain_get\00", align 1
@.str.86 = private unnamed_addr constant [23 x i8] c"cgroup_p_constrain_set\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"cgroup_p_constrain_apply\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"cgroup_p_step_start_oom_mgr\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"cgroup_p_step_stop_oom_mgr\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"cgroup_p_task_addto\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"cgroup_p_task_get_acct_data\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"cgroup_p_job_get_acct_data\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"cgroup_p_get_acct_units\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"cgroup_p_has_feature\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"cgroup_p_get_scope_path\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"cgroup_p_bpf_fsopen\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"cgroup_p_bpf_fsconfig\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"cgroup_p_bpf_create_token\00", align 1
@.str.99 = private unnamed_addr constant [23 x i8] c"cgroup_p_bpf_set_token\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"cgroup_p_bpf_get_token\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"cgroup_p_setup_scope\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"cgroup_p_signal\00", align 1
@.str.103 = private unnamed_addr constant [35 x i8] c"cgroup_p_get_task_empty_event_path\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"cgroup_p_is_task_empty\00", align 1

@slurm_cgroup_conf_init = dso_local alias i32 (), ptr @cgroup_conf_init
@slurm_cgroup_conf_destroy = dso_local alias void (), ptr @cgroup_conf_destroy
@slurm_autodetect_cgroup_version = dso_local alias ptr (), ptr @autodetect_cgroup_version

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @cgroup_conf_init() #0 {
bb.a:
  %0 = alloca [25 x %struct.conf_file_options], align 16 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %1 = alloca %struct.stat, align 8               ; 3 uses
  %i.c = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull @cg_conf_lock) #11 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #12
  store i32 %i.c, ptr %i.d, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.cgroup_conf_init) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %.b = load i1, ptr @cg_conf_inited, align 1
  br i1 %.b, label %bb.at, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 8)) #11
  tail call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 16)) #11
  tail call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 24)) #11
  tail call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 40)) #11
  tail call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 56)) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 8), i8 0, i64 104, i1 false)
  store <2 x float> <float 1.000000e+02, float 0.000000e+00>, ptr @slurm_cgroup_conf, align 8
  %i.e = tail call ptr @xstrdup(ptr noundef nonnull @.str.60) #11
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 8), align 8
  %i.f = tail call ptr @xstrdup(ptr noundef nonnull @.str.53) #11
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 16), align 8
  %i.g = tail call ptr @xstrdup(ptr noundef nonnull @.str.61) #11
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 24), align 8
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 40), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 48), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 32), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 52), align 4
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 56), align 8
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 64), align 8
  store <2 x float> splat (float 1.000000e+02), ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 68), align 4
  store i64 -2, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 80), align 8
  store i64 30, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 88), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 96), align 8
  store i64 1000, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 104), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1400) %0, ptr noundef nonnull align 16 dereferenceable(1400) @__const._read_slurm_cgroup_conf.options, i64 1400, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.h = tail call ptr @get_extra_conf_path(ptr noundef nonnull @.str.67) #11 ; 7 uses
  store ptr %i.h, ptr %i.a, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call i32 @stat(ptr noundef nonnull %i.h, ptr noundef nonnull %1) #11
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = tail call i32 @get_log_level() #11
  %i.m = icmp sgt i32 %i.l, 2
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__._read_slurm_cgroup_conf, ptr noundef %i.h) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i1 true, ptr @cg_conf_exist, align 1
  br label %_read_slurm_cgroup_conf.exit

bb.i:                                             ; preds = %bb.e
  %i.n = tail call i32 @get_log_level() #11
  %i.o = icmp sgt i32 %i.n, 4
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.h) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = call ptr @s_p_hashtbl_create(ptr noundef nonnull %0) #11 ; 23 uses
  %i.q = call i32 @s_p_parse_file(ptr noundef %i.p, ptr noundef null, ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef null) #11
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.70, ptr noundef nonnull %i.h) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.s = call i32 @s_p_get_string(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.16, ptr noundef %i.p) #11
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #14
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 47
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.w, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 8)) #11
  %i.z = load ptr, ptr %i.b, align 8
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 8), align 8
  store ptr null, ptr %i.b, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.aa = call i32 @s_p_get_string(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.18, ptr noundef %i.p) #11
  %.not25.i = icmp eq i32 %i.aa, 0
  br i1 %.not25.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 40)) #11
  %i.ab = load ptr, ptr %i.b, align 8
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 40), align 8
  store ptr null, ptr %i.b, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ac = call i32 @s_p_get_boolean(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 32), ptr noundef nonnull @.str.19, ptr noundef %i.p) #11 ; 0 uses
  %i.ad = call i32 @s_p_get_boolean(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 48), ptr noundef nonnull @.str.20, ptr noundef %i.p) #11 ; 0 uses
  %i.ae = call i32 @s_p_get_boolean(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 50), ptr noundef nonnull @.str.21, ptr noundef %i.p) #11 ; 0 uses
  %i.af = call i32 @s_p_get_float(ptr noundef nonnull @slurm_cgroup_conf, ptr noundef nonnull @.str.22, ptr noundef %i.p) #11 ; 0 uses
  %i.ag = call i32 @s_p_get_float(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 68), ptr noundef nonnull @.str.24, ptr noundef %i.p) #11 ; 0 uses
  %i.ah = call i32 @s_p_get_boolean(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 51), ptr noundef nonnull @.str.27, ptr noundef %i.p) #11 ; 0 uses
  %i.ai = call i32 @s_p_get_float(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 4), ptr noundef nonnull @.str.28, ptr noundef %i.p) #11 ; 0 uses
  %i.aj = call i32 @s_p_get_float(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 72), ptr noundef nonnull @.str.29, ptr noundef %i.p) #11 ; 0 uses
  %i.ak = call i32 @s_p_get_uint64(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 88), ptr noundef nonnull @.str.25, ptr noundef %i.p) #11 ; 0 uses
  %i.al = call i32 @s_p_get_uint64(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 80), ptr noundef nonnull @.str.36, ptr noundef %i.p) #11
  %i.am = icmp ne i32 %i.al, 0
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 80), align 8
  %i.ao = icmp ugt i64 %i.an, 100
  %or.cond.i = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ap = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.71) #11 ; 0 uses
  store i64 100, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 80), align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.aq = call i32 @s_p_get_boolean(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 49), ptr noundef nonnull @.str.30, ptr noundef %i.p) #11 ; 0 uses
  %i.ar = call i32 @s_p_get_string(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.65, ptr noundef %i.p) #11
  %.not26.i = icmp eq i32 %i.ar, 0
  br i1 %.not26.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @slurm_xfree(ptr noundef nonnull %i.b) #11
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.72) #11
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.as = call i32 @s_p_get_string(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.31, ptr noundef %i.p) #11
  %.not27.i = icmp eq i32 %i.as, 0
  br i1 %.not27.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 16)) #11
  %i.at = load ptr, ptr %i.b, align 8
  store ptr %i.at, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 16), align 8
  store ptr null, ptr %i.b, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.au = call i32 @s_p_get_boolean(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 64), ptr noundef nonnull @.str.32, ptr noundef %i.p) #11
  %.not28.i = icmp eq i32 %i.au, 0
  br i1 %.not28.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 65), align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 64), align 8, !range !8, !noundef !9
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ax = call i32 @s_p_get_boolean(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 65), ptr noundef nonnull @.str.33, ptr noundef %i.p) #11
  %.not29.i = icmp eq i32 %i.ax, 0
  br i1 %.not29.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 65), align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ay = call i32 @s_p_get_boolean(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 52), ptr noundef nonnull @.str.34, ptr noundef %i.p) #11 ; 0 uses
  %i.az = call i32 @s_p_get_string(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.35, ptr noundef %i.p) #11
  %.not30.i = icmp eq i32 %i.az, 0
  br i1 %.not30.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 56)) #11
  %i.ba = load ptr, ptr %i.b, align 8
  store ptr %i.ba, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 56), align 8
  store ptr null, ptr %i.b, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bb = call i32 @s_p_get_boolean(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 96), ptr noundef nonnull @.str.66, ptr noundef %i.p) #11 ; 0 uses
  %i.bc = call i32 @s_p_get_uint64(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 104), ptr noundef nonnull @.str.39, ptr noundef %i.p) #11 ; 0 uses
  call void @s_p_hashtbl_destroy(ptr noundef %i.p) #11
  br label %_read_slurm_cgroup_conf.exit

_read_slurm_cgroup_conf.exit:                     ; preds = %bb.h, %bb.af
  call void @slurm_xfree(ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  %i.bd = call zeroext i1 @run_in_daemon(i32 noundef 16) #11
  br i1 %i.bd, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %_read_slurm_cgroup_conf.exit
  %i.be = call ptr @init_buf(i32 noundef 0) #11   ; 23 uses
  store ptr %i.be, ptr @cg_conf_buf, align 8
  %.b.i = load i1, ptr @cg_conf_exist, align 1
  br i1 %.b.i, label %_pack_cgroup_conf.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @packbool(i1 noundef zeroext true, ptr noundef %i.be) #11
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 8), align 8 ; 3 uses
  %.not.i8 = icmp eq ptr %i.bf, null
  br i1 %.not.i8, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #14
  %i.bh = trunc i64 %i.bg to i32
end_hunk_0
