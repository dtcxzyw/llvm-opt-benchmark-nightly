inline.NumInlined: 35
inline.NumDeleted: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.slurmctld_config = type { ptr, %union.pthread_cond_t, %union.pthread_mutex_t, %union.pthread_cond_t, %union.pthread_mutex_t, i64, [64 x i8], [64 x i8], i8, i8, i32, i64, i8, %union.pthread_cond_t, %union.pthread_mutex_t, %union.pthread_cond_t, %union.pthread_mutex_t, i64, i64, i64, i64 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.slurmctld_lock_t = type { i32, i32, i32, i32, i32, i32 }
%struct.slurm_step_id_t = type { i64, i32, i32, i32 }
%struct.slurm_msg = type { %struct.sockaddr_storage, ptr, i32, i32, i32, i8, i32, i8, i32, ptr, ptr, ptr, ptr, i16, i8, ptr, ptr, i8, i16, i16, %struct.forward, ptr, %struct.sockaddr_storage, ptr }
%struct.forward = type { %struct.slurm_node_alias_addrs_t, i16, i16, ptr, i32, i16, i16 }
%struct.slurm_node_alias_addrs_t = type { i64, ptr, ptr, i32, ptr }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.timespec = type { i64, i64 }

@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str = private unnamed_addr constant [80 x i8] c"AGENT: %s: Agent_cnt=%d agent_thread_cnt=%d with msg_type=%s retry_list_size=%d\00", align 1
@__func__.agent = private unnamed_addr constant [6 x i8] c"agent\00", align 1
@agent_cnt = internal unnamed_addr global i32 0, align 4
@agent_thread_cnt = internal unnamed_addr global i32 0, align 4
@agent_cnt_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: pthread_mutex_lock(): %m\00", align 1
@slurmctld_config = external global %struct.slurmctld_config, align 8
@agent_cnt_cond = internal global %union.pthread_cond_t zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"%s:%d %s: pthread_cond_wait(): %m\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"agent.c\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: pthread_mutex_unlock(): %m\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"_wdog\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%s: threadpool_create() failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [119 x i8] c"AGENT: %s: New agent thread_count:%d threads_active:%d retry:%c get_reply:%c r_uid:%u msg_type:%s protocol_version:%hu\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"_thread_per_group_rpc\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"agent msg_type=%s ran for %d seconds\00", align 1
@.str.10 = private unnamed_addr constant [110 x i8] c"AGENT: %s: end agent thread_count:%d threads_active:%d retry:%c get_reply:%c msg_type:%s protocol_version:%hu\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"agent_cnt underflow\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"agent_thread_cnt underflow\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"%s:%d %s: pthread_cond_broadcast(): %m\00", align 1
@pending_thread_tid = internal global i64 0, align 8
@.str.14 = private unnamed_addr constant [27 x i8] c"%s: thread already running\00", align 1
@__func__.agent_init = private unnamed_addr constant [11 x i8] c"agent_init\00", align 1
@update_srun_list = internal unnamed_addr global ptr null, align 8
@srun_no_resp_list = internal unnamed_addr global ptr null, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"_agent_init\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"_agent_nodes_update\00", align 1
@nodes_update_tid = internal global i64 0, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"_agent_srun_update\00", align 1
@srun_update_tid = internal global i64 0, align 8
@__func__.agent_fini = private unnamed_addr constant [11 x i8] c"agent_fini\00", align 1
@update_nodes_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@update_nodes_cond = internal global %union.pthread_cond_t zeroinitializer, align 8
@update_srun_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@update_srun_cond = internal global %union.pthread_cond_t zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [33 x i8] c"%s: left %d agent threads active\00", align 1
@.str.19 = private unnamed_addr constant [104 x i8] c"AGENT: %s: pending_wait_time=%d->%d mail_too=%c->%c Agent_cnt=%d agent_thread_cnt=%d retry_list_size=%d\00", align 1
@__func__.agent_trigger = private unnamed_addr constant [14 x i8] c"agent_trigger\00", align 1
@pending_wait_time = internal unnamed_addr global i32 65534, align 4
@pending_mail = internal unnamed_addr global i8 0, align 1
@pending_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@pending_check_defer = internal unnamed_addr global i8 0, align 1
@pending_cond = internal global %union.pthread_cond_t zeroinitializer, align 8
@cache_build_time = internal unnamed_addr global i64 0, align 8
@rpc_stat_counts = internal global ptr null, align 8
@stat_type_count = internal unnamed_addr global i32 0, align 4
@rpc_stat_types = internal global ptr null, align 8
@rpc_count = internal unnamed_addr global i32 0, align 4
@rpc_host_list = internal global ptr null, align 8
@__func__.agent_pack_pending_rpc_stats = private unnamed_addr constant [29 x i8] c"agent_pack_pending_rpc_stats\00", align 1
@rpc_type_list = internal global ptr null, align 8
@retry_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@retry_list = internal unnamed_addr global ptr null, align 8
@message_timeout = internal unnamed_addr global i16 -2, align 2
@__func__.agent_queue_request = private unnamed_addr constant [20 x i8] c"agent_queue_request\00", align 1
@defer_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@defer_list = internal unnamed_addr global ptr null, align 8
@__func__.agent_purge = private unnamed_addr constant [12 x i8] c"agent_purge\00", align 1
@mail_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@mail_list = internal unnamed_addr global ptr null, align 8
@update_node_list = internal unnamed_addr global ptr null, align 8
@__func__.get_agent_count = private unnamed_addr constant [16 x i8] c"get_agent_count\00", align 1
@__func__.get_agent_thread_count = private unnamed_addr constant [23 x i8] c"get_agent_thread_count\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"Slurm Array Summary Job_id=%u_* (%u) Name=%s %s%s\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"Slurm Array Task Job_id=%u_%u (%u) Name=%s %s%s%s\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Slurm Job_id=%u Name=%s %s%s%s\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"email msg to %s: %s\00", align 1
@__func__.mail_job_info = private unnamed_addr constant [14 x i8] c"mail_job_info\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"%s: node_count RPC different from hosts listed (%d!=%d)\00", align 1
@__func__._valid_agent_arg = private unnamed_addr constant [17 x i8] c"_valid_agent_arg\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"%s: r_uid not set for message:%u \00", align 1
@__func__._make_agent_info = private unnamed_addr constant [17 x i8] c"_make_agent_info\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"%s: pthread_mutex_init(): %m\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"%s: pthread_cond_init(): %m\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"%s: you will only be sending this to %s\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"AGENT: %s: sending msg_type %s to node %s\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"%s: sending msg_type %s to nodes %s\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"no more nodes to send to\00", align 1
@__func__._make_task_data = private unnamed_addr constant [16 x i8] c"_make_task_data\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"AGENT: %s: agent maximum delay %d seconds\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"AGENT: %s: agent thread %lu timed out\00", align 1
@__func__._update_wdog_state = private unnamed_addr constant [19 x i8] c"_update_wdog_state\00", align 1
@__const._notify_slurmctld_jobs.step_id = private unnamed_addr constant { i64, i32, i32, i32, [4 x i8] } { i64 0, i32 0, i32 -2, i32 -2, [4 x i8] zeroinitializer }, align 8
@.str.34 = private unnamed_addr constant [24 x i8] c"%s: invalid msg_type %u\00", align 1
@__func__._notify_slurmctld_jobs = private unnamed_addr constant [23 x i8] c"_notify_slurmctld_jobs\00", align 1
@__func__._queue_update_srun = private unnamed_addr constant [19 x i8] c"_queue_update_srun\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"%s:%d %s: pthread_cond_signal(): %m\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"%s: Revoking job %pI due to nodes not responding\00", align 1
@__func__._notify_slurmctld_nodes = private unnamed_addr constant [24 x i8] c"_notify_slurmctld_nodes\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"Prolog/Epilog failure\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c", set to state DRAIN\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"Prolog/Epilog failure on nodes %s%s\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"Duplicate jobid\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"Duplicate jobid on nodes %s%s\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"unknown state returned for %s\00", align 1
@run_scheduler = internal unnamed_addr global i1 false, align 1
@__func__._queue_agent_retry = private unnamed_addr constant [19 x i8] c"_queue_agent_retry\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"got the name %s to resend\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"agent: Retry count (%d) != actual count (%d)\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"Queue RPC msg_type=%s, nodes=%d for retry\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"AGENT: %s: got err of %d\00", align 1
@__func__._setup_requeue = private unnamed_addr constant [15 x i8] c"_setup_requeue\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"%s: got the name %s to resend out of %d\00", align 1
@__func__._queue_update_node = private unnamed_addr constant [19 x i8] c"_queue_update_node\00", align 1
@__const._thread_per_group_rpc.job_write_lock = private unnamed_addr constant %struct.slurmctld_lock_t { i32 0, i32 2, i32 2, i32 0, i32 1, i32 0 }, align 8
@__const._thread_per_group_rpc.node_read_lock = private unnamed_addr constant %struct.slurmctld_lock_t { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }, align 8
@__const._thread_per_group_rpc.node_write_lock = private unnamed_addr constant %struct.slurmctld_lock_t { i32 0, i32 0, i32 2, i32 0, i32 0, i32 0 }, align 8
@.str.48 = private unnamed_addr constant [28 x i8] c"AGENT: %s: sending %s to %s\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"%s: sending %s to %s\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"%s: no ret_list given\00", align 1
@.str.51 = private unnamed_addr constant [53 x i8] c"%s: can't find address for host %s, check slurm.conf\00", align 1
@.str.52 = private unnamed_addr constant [93 x i8] c"%s: Node registration response identity mismatch: expected %s, got %s (possible IP conflict)\00", align 1
@.str.53 = private unnamed_addr constant [79 x i8] c"%s: unable to find %pI to mark epilog completed on node=%s with return_code=%u\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"Killing non-startable batch %pI: %s\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"Killing interactive %pI: %s\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"%s: invalid %pI\00", align 1
@.str.57 = private unnamed_addr constant [125 x i8] c"We were unable to forward message to '%s'.  Make sure the slurm.conf for each slurmd contain all other nodes in your system.\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"Epilog failure on host %s, setting DOWN\00", align 1
@.str.59 = private unnamed_addr constant [50 x i8] c"AGENT: %s: RPC to node %s failed, job not running\00", align 1
@__const._queue_srun_no_resp.step_id = private unnamed_addr constant { i64, i32, i32, i32, [4 x i8] } { i64 0, i32 -2, i32 -2, i32 -2, [4 x i8] zeroinitializer }, align 8
@.str.60 = private unnamed_addr constant [24 x i8] c"%s: invalid msg_type %s\00", align 1
@__func__._queue_srun_no_resp = private unnamed_addr constant [20 x i8] c"_queue_srun_no_resp\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"agent/is_node_resp: node:%s RPC:%s : %m\00", align 1
@_wif_status.rc = internal unnamed_addr global i1 false, align 4
@.str.63 = private unnamed_addr constant [39 x i8] c"%s:%d %s: pthread_cond_timedwait(): %m\00", align 1
@last_job_update = external local_unnamed_addr global i64, align 8
@__func__._agent_defer = private unnamed_addr constant [13 x i8] c"_agent_defer\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"%s: Invalid message type (%s)\00", align 1
@__func__._agent_retry = private unnamed_addr constant [13 x i8] c"_agent_retry\00", align 1
@_agent_retry.last_msg_time = internal unnamed_addr global i64 0, align 8
@.str.65 = private unnamed_addr constant [57 x i8] c"   retry_list retry_list_size:%d msg_type=%s,%s,%s,%s,%s\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"Spawning RPC agent for msg_type %s\00", align 1
@.str.67 = private unnamed_addr constant [44 x i8] c"agent_retry found record with no agent_args\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"AGENT: %s: created %d agent, try to start more\00", align 1
@mail_thread_cnt = internal unnamed_addr global i32 0, align 4
@.str.69 = private unnamed_addr constant [11 x i8] c"_mail_proc\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.71 = private unnamed_addr constant [46 x i8] c"MailProg returned error, it's output was '%s'\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"MailProg output was '%s'.\00", align 1
@.str.73 = private unnamed_addr constant [38 x i8] c"No output from MailProg, exit code=%d\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"mail_thread_cnt underflow\00", align 1
@__const._agent_nodes_update.node_write_lock = private unnamed_addr constant %struct.slurmctld_lock_t { i32 1, i32 0, i32 2, i32 0, i32 0, i32 0 }, align 8
@__const._agent_srun_update.job_write_lock = private unnamed_addr constant %struct.slurmctld_lock_t { i32 0, i32 2, i32 0, i32 0, i32 0, i32 0 }, align 8
@__func__._mail_alloc = private unnamed_addr constant [12 x i8] c"_mail_alloc\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"SLURM_JOB_STATE\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"SLURM_JOB_MAIL_TYPE\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c", Queued time \00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"SLURM_JOB_QUEUED_TIME\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c", Run time \00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"SLURM_JOB_RUN_TIME\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c" time \00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"SLURM_JOB_STAGE_OUT_TIME\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"Mixed\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c", %s, ExitCode [%d-%d]\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"SLURM_JOB_EXIT_CODE_MIN\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"SLURM_JOB_EXIT_CODE_MAX\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c", %s, MaxSignal [%d]\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"SLURM_JOB_TERM_SIGNAL_MAX\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c", %s, MaxExitCode [%d]\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c", with requeued tasks\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c", %s, ExitCode %d\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"Invalid dependency\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"Began\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"Ended\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"Requeued\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"StageOut/Teardown\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"Reached time limit\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"Reached 90% of time limit\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"Reached 80% of time limit\00", align 1
@.str.105 = private unnamed_addr constant [26 x i8] c"Reached 50% of time limit\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.107 = private unnamed_addr constant [63 x i8] c"agent(batch_launch): removed pending request for cancelled %pI\00", align 1
@.str.108 = private unnamed_addr constant [41 x i8] c"%s: JobId=%u still waiting on %u prologs\00", align 1
@__func__._batch_launch_defer = private unnamed_addr constant [20 x i8] c"_batch_launch_defer\00", align 1
@.str.109 = private unnamed_addr constant [69 x i8] c"agent(batch_launch) removed pending request for %pI, missing node %s\00", align 1
@.str.110 = private unnamed_addr constant [37 x i8] c"%s: %pJ still waiting for batch_host\00", align 1
@.str.111 = private unnamed_addr constant [44 x i8] c"%s: JobId=%u still waiting on prologs on %s\00", align 1
@.str.112 = private unnamed_addr constant [43 x i8] c"%s: JobId=%u still waiting on node prologs\00", align 1
@.str.113 = private unnamed_addr constant [69 x i8] c"agent waited too long for nodes to respond, abort launch of JobId=%u\00", align 1
@.str.114 = private unnamed_addr constant [62 x i8] c"agent(signal_task): removed pending request for cancelled %pI\00", align 1
@.str.115 = private unnamed_addr constant [64 x i8] c"agent waited too long for nodes to respond, abort signal of %pJ\00", align 1
@switch.table.mail_job_info.6 = private unnamed_addr constant [11 x ptr] [ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.101, ptr @.str.106, ptr @.str.96], align 8

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @agent(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr null, ptr %i.c, align 8
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.e = and i64 %i.d, 4503599627370496
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @get_log_level() #14
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @agent_cnt, align 4
  %i.i = load i32, ptr @agent_thread_cnt, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.j, align 4
  %i.l = trunc i32 %i.k to i16
  %i.m = tail call ptr @rpc_num2string(i16 noundef zeroext %i.l) #14
  %i.n = load ptr, ptr @retry_list, align 8       ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %retry_list_size.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @list_count(ptr noundef nonnull %i.n) #14
  br label %retry_list_size.exit

retry_list_size.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ]
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.agent, i32 noundef %i.h, i32 noundef %i.i, ptr noundef %i.m, i32 noundef %.0.i) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %retry_list_size.exit, %bb.b
  %i.q = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @agent_cnt_mutex) #14 ; 2 uses
  %.not80 = icmp eq i32 %i.q, 0
  br i1 %.not80, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__errno_location() #15
  store i32 %i.q, ptr %i.r, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.agent) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = load i32, ptr %0, align 8
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.s, i32 10) ; 2 uses
  %spec.select = add nuw nsw i32 %i.t, 2          ; 3 uses
  %invariant.op = xor i32 %i.t, 255               ; 2 uses
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 328), align 8
  %.not81122 = icmp ne i64 %i.u, 0
  %.old = load i32, ptr @agent_thread_cnt, align 4
  %.old198 = icmp slt i32 %.old, %invariant.op
  %or.cond199 = select i1 %.not81122, i1 true, i1 %.old198
  br i1 %or.cond199, label %._crit_edge, label %.preheader200

._crit_edge:                                      ; preds = %bb.i, %bb.g
  %i.v = load i32, ptr @agent_cnt, align 4
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr @agent_cnt, align 4
  %i.x = load i32, ptr @agent_thread_cnt, align 4
  %i.y = add nsw i32 %i.x, %spec.select
  store i32 %i.y, ptr @agent_thread_cnt, align 4
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @agent_cnt_mutex) #14 ; 2 uses
  %.not83 = icmp eq i32 %i.z, 0
  br i1 %.not83, label %bb.k, label %bb.j

.preheader200:                                    ; preds = %bb.g, %bb.i
  %i.aa = tail call i32 @pthread_cond_wait(ptr noundef nonnull @agent_cnt_cond, ptr noundef nonnull @agent_cnt_mutex) #14 ; 2 uses
  %.not82 = icmp eq i32 %i.aa, 0
  br i1 %.not82, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader200
  %i.ab = tail call ptr @__errno_location() #15
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 299, ptr noundef nonnull @__func__.agent) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader200
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 328), align 8
  %.not81 = icmp ne i64 %i.ad, 0
  %i.ae = load i32, ptr @agent_thread_cnt, align 4
  %i.af = icmp slt i32 %i.ae, %invariant.op
  %or.cond = select i1 %.not81, i1 true, i1 %i.af
  br i1 %or.cond, label %._crit_edge, label %.preheader200, !llvm.loop !8

bb.j:                                             ; preds = %._crit_edge
  %i.ag = tail call ptr @__errno_location() #15
  store i32 %i.z, ptr %i.ag, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.agent) #16
  unreachable

bb.k:                                             ; preds = %._crit_edge
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 328), align 8
  %.not84 = icmp eq i64 %i.ah, 0
  br i1 %.not84, label %bb.l, label %_valid_agent_arg.exit.thread.thread

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call i64 @time(ptr noundef null) #14
  %i.aj = load i32, ptr %0, align 8
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_valid_agent_arg.exit.thread.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 @hostlist_count(ptr noundef %i.am) #14 ; 2 uses
  %i.ao = load i32, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq i32 %i.ao, %i.an
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__._valid_agent_arg, i32 noundef %i.ao, i32 noundef %i.an) #14 ; 0 uses
  br label %_valid_agent_arg.exit.thread.thread

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ar = load i8, ptr %i.aq, align 4, !range !10, !noundef !11
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_valid_agent_arg.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__._valid_agent_arg, i32 noundef %i.au) #14 ; 0 uses
end_hunk_0
begin_hunk_1_@agent:bb.a
  br i1 %i.iz, label %.lr.ph135, label %._crit_edge136, !llvm.loop !17

._crit_edge136:                                   ; preds = %bb.bk, %.preheader
  %i.ja = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ii) #14 ; 2 uses
  %.not92 = icmp eq i32 %i.ja, 0
  br i1 %.not92, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge136
  %i.jb = tail call ptr @__errno_location() #15
  store i32 %i.ja, ptr %i.jb, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.agent) #16
  unreachable

bb.bm:                                            ; preds = %._crit_edge136
  %i.jc = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.jd = and i64 %i.jc, 4503599627370496
  %.not93 = icmp eq i64 %i.jd, 0
  br i1 %.not93, label %._valid_agent_arg.exit.thread_crit_edge, label %bb.bn

._valid_agent_arg.exit.thread_crit_edge:          ; preds = %bb.bm
  %.pre156 = load ptr, ptr %i.c, align 8
  br label %_valid_agent_arg.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.je = call i32 @get_log_level() #14
  %i.jf = icmp sgt i32 %i.je, 3
  %.pre157 = load ptr, ptr %i.c, align 8          ; 7 uses
  br i1 %i.jf, label %_valid_agent_arg.exit.thread.thread184, label %_valid_agent_arg.exit.thread

_valid_agent_arg.exit.thread.thread184:           ; preds = %bb.bn
  %i.jg = getelementptr inbounds nuw i8, ptr %.pre157, i64 88
  %i.jh = load i32, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre157, i64 92
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %.pre157, i64 96
  %i.jl = load i16, ptr %i.jk, align 8
  %.not94 = icmp eq i16 %i.jl, 0
  %i.jm = select i1 %.not94, i32 70, i32 84
  %i.jn = getelementptr inbounds nuw i8, ptr %.pre157, i64 112
  %i.jo = load i8, ptr %i.jn, align 8, !range !10, !noundef !11
  %i.jp = trunc nuw i8 %i.jo to i1
  %i.jq = select i1 %i.jp, i32 84, i32 70
  %i.jr = load i32, ptr %i.bo, align 4
  %i.js = trunc i32 %i.jr to i16
  %i.jt = call ptr @rpc_num2string(i16 noundef zeroext %i.js) #14
  %i.ju = getelementptr inbounds nuw i8, ptr %.pre157, i64 138
  %i.jv = load i16, ptr %i.ju, align 2
  %i.jw = zext i16 %i.jv to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.agent, i32 noundef %i.jh, i32 noundef %i.jj, i32 noundef %i.jm, i32 noundef %i.jq, ptr noundef %i.jt, i32 noundef %i.jw) #14
  call void @purge_agent_args(ptr noundef nonnull %0) #14
  br label %bb.bo

_valid_agent_arg.exit.thread.thread:              ; preds = %bb.l, %bb.n, %bb.p, %bb.k
  tail call void @purge_agent_args(ptr noundef nonnull %0) #14
  br label %bb.bp

_valid_agent_arg.exit.thread:                     ; preds = %._valid_agent_arg.exit.thread_crit_edge, %bb.bn
  %i.jx = phi ptr [ %.pre156, %._valid_agent_arg.exit.thread_crit_edge ], [ %.pre157, %bb.bn ] ; 2 uses
  call void @purge_agent_args(ptr noundef nonnull %0) #14
  %.not101 = icmp eq ptr %i.jx, null
  br i1 %.not101, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_valid_agent_arg.exit.thread.thread184, %_valid_agent_arg.exit.thread
  %i.jy = phi ptr [ %.pre157, %_valid_agent_arg.exit.thread.thread184 ], [ %i.jx, %_valid_agent_arg.exit.thread ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 104
  call void @slurm_xfree(ptr noundef nonnull %i.jz) #14
  call void @slurm_xfree(ptr noundef nonnull %i.c) #14
  br label %bb.bp

bb.bp:                                            ; preds = %_valid_agent_arg.exit.thread.thread, %_valid_agent_arg.exit.thread, %bb.bo
  %i.ka = call i32 @pthread_mutex_lock(ptr noundef nonnull @agent_cnt_mutex) #14 ; 2 uses
  %.not102 = icmp eq i32 %i.ka, 0
  br i1 %.not102, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kb = tail call ptr @__errno_location() #15
  store i32 %i.ka, ptr %i.kb, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.agent) #16
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.kc = load i32, ptr @agent_cnt, align 4       ; 2 uses
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ke = add nsw i32 %i.kc, -1
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.kf = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.11) #14 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %storemerge = phi i32 [ 0, %bb.bt ], [ %i.ke, %bb.bs ]
  store i32 %storemerge, ptr @agent_cnt, align 4
  %i.kg = load i32, ptr @agent_thread_cnt, align 4 ; 2 uses
  %.not103 = icmp slt i32 %i.kg, %spec.select
  br i1 %.not103, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kh = sub nsw i32 %i.kg, %spec.select
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.ki = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.12) #14 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %storemerge104 = phi i32 [ 0, %bb.bw ], [ %i.kh, %bb.bv ] ; 2 uses
  store i32 %storemerge104, ptr @agent_thread_cnt, align 4
  %i.kj = icmp samesign ult i32 %storemerge104, 244
  %i.kk = call i32 @pthread_cond_broadcast(ptr noundef nonnull @agent_cnt_cond) #14 ; 2 uses
  %.not105 = icmp eq i32 %i.kk, 0
  br i1 %.not105, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kl = tail call ptr @__errno_location() #15
  store i32 %i.kk, ptr %i.kl, align 4
  %i.km = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, i32 noundef 398, ptr noundef nonnull @__func__.agent) #14 ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.kn = call i32 @pthread_mutex_unlock(ptr noundef nonnull @agent_cnt_mutex) #14 ; 2 uses
  %.not106 = icmp eq i32 %i.kn, 0
  br i1 %.not106, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ko = tail call ptr @__errno_location() #15
  store i32 %i.kn, ptr %i.ko, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.agent) #16
  unreachable

bb.cb:                                            ; preds = %bb.bz
  br i1 %i.kj, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @agent_trigger(i32 noundef 60, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @rpc_num2string(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @retry_list_size() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @retry_list, align 8       ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @list_count(ptr noundef nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

declare i32 @threadpool_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_wdog(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.slurm_step_id_t, align 8    ; 9 uses
  %.sroa.10.i = alloca [12 x i8], align 4         ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  switch i32 %i.e, label %bb.c [
    i32 7004, label %bb.b
    i32 7008, label %bb.b
    i32 7007, label %bb.b
    i32 7009, label %bb.b
    i32 7003, label %bb.b
    i32 7001, label %bb.b
    i32 7002, label %bb.b
    i32 7005, label %bb.b
    i32 4002, label %bb.b
    i32 4026, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %bb.a ]
  %i.f = icmp eq i32 %i.e, 1006
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.y, %bb.c
  %.sroa.25.0 = phi i32 [ 0, %bb.c ], [ %.sroa.25.3, %bb.y ] ; 2 uses
  %.060 = phi i64 [ 5000, %bb.c ], [ %i.l, %bb.y ] ; 2 uses
  %i.h = tail call i64 @time(ptr noundef null) #14 ; 2 uses
  %i.i = trunc nuw nsw i64 %.060 to i32
  %i.j = tail call i32 @usleep(i32 noundef %i.i) #14 ; 0 uses
  %i.k = shl nuw nsw i64 %.060, 1
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 1000000)
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #14 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.n = load i32, ptr %i.g, align 8
  %.not133 = icmp eq i32 %i.n, 0
  br i1 %.not133, label %._crit_edge125.thread, label %.lr.ph124

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__errno_location() #15
  store i32 %i.m, ptr %i.o, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #16
  unreachable

.lr.ph124:                                        ; preds = %.preheader, %_update_wdog_state.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_update_wdog_state.exit ], [ 0, %.preheader ] ; 2 uses
  %.sroa.0.0122 = phi i1 [ %.sroa.0.2, %_update_wdog_state.exit ], [ true, %.preheader ] ; 5 uses
  %.sroa.25.1121 = phi i32 [ %.sroa.25.3, %_update_wdog_state.exit ], [ %.sroa.25.0, %.preheader ] ; 8 uses
  %i.p = phi <2 x i32> [ %i.bj, %_update_wdog_state.exit ], [ zeroinitializer, %.preheader ] ; 8 uses
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not75 = icmp eq ptr %i.s, null
  br i1 %.not75, label %bb.f, label %bb.o

bb.f:                                             ; preds = %.lr.ph124
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val77 = load i32, ptr %i.t, align 8
  switch i32 %.val77, label %_update_wdog_state.exit [
    i32 1, label %bb.g
    i32 0, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8
  %.not.i = icmp sgt i64 %i.v, %i.h
  br i1 %.not.i, label %_update_wdog_state.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.x = and i64 %i.w, 4503599627370496
  %.not15.i = icmp eq i64 %i.x, 0
  br i1 %.not15.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call i32 @get_log_level() #14
  %i.z = icmp sgt i32 %i.y, 3
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.q, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__._update_wdog_state, i64 noundef %i.aa) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ab = load i64, ptr %i.q, align 8
  %i.ac = tail call i32 @pthread_kill(i64 noundef %i.ab, i32 noundef 10) #14 ; 0 uses
  %i.ad = load i16, ptr @message_timeout, align 2
  %i.ae = zext i16 %i.ad to i64
  %i.af = load i64, ptr %i.u, align 8
  %i.ag = add nsw i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.u, align 8
  br label %_update_wdog_state.exit

bb.l:                                             ; preds = %bb.f
  br label %_update_wdog_state.exit

bb.m:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = trunc i64 %i.ai to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.sroa.25.1121, i32 %i.aj)
  br label %_update_wdog_state.exit

bb.n:                                             ; preds = %bb.f
  %i.ak = add nsw <2 x i32> %i.p, splat (i32 1)
  br label %_update_wdog_state.exit

bb.o:                                             ; preds = %.lr.ph124
  %i.al = tail call ptr @list_iterator_create(ptr noundef nonnull %i.s) #14 ; 3 uses
  %i.am = tail call ptr @list_next(ptr noundef %i.al) #14 ; 2 uses
  %.not76108 = icmp eq ptr %i.am, null
  br i1 %.not76108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_update_wdog_state.exit80
  %i.ao = phi ptr [ %i.am, %.lr.ph ], [ %i.bh, %_update_wdog_state.exit80 ]
  %.sroa.0.1113 = phi i1 [ %.sroa.0.0122, %.lr.ph ], [ %.sroa.0.4, %_update_wdog_state.exit80 ] ; 3 uses
  %.sroa.25.2112 = phi i32 [ %.sroa.25.1121, %.lr.ph ], [ %.sroa.25.5, %_update_wdog_state.exit80 ] ; 6 uses
  %i.ap = phi <2 x i32> [ %i.p, %.lr.ph ], [ %i.bg, %_update_wdog_state.exit80 ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.val = load i32, ptr %i.aq, align 4
  switch i32 %.val, label %_update_wdog_state.exit80 [
    i32 1, label %bb.q
    i32 0, label %bb.v
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.q:                                             ; preds = %bb.p
  %i.ar = load i64, ptr %i.an, align 8
  %.not.i78 = icmp sgt i64 %i.ar, %i.h
  br i1 %.not.i78, label %_update_wdog_state.exit80, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.at = and i64 %i.as, 4503599627370496
  %.not15.i79 = icmp eq i64 %i.at, 0
  br i1 %.not15.i79, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = tail call i32 @get_log_level() #14
  %i.av = icmp sgt i32 %i.au, 3
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = load i64, ptr %i.q, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__._update_wdog_state, i64 noundef %i.aw) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ax = load i64, ptr %i.q, align 8
  %i.ay = tail call i32 @pthread_kill(i64 noundef %i.ax, i32 noundef 10) #14 ; 0 uses
  %i.az = load i16, ptr @message_timeout, align 2
  %i.ba = zext i16 %i.az to i64
  %i.bb = load i64, ptr %i.an, align 8
  %i.bc = add nsw i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.an, align 8
  br label %_update_wdog_state.exit80

bb.v:                                             ; preds = %bb.p
  br label %_update_wdog_state.exit80

bb.w:                                             ; preds = %bb.p
  %i.bd = load i64, ptr %i.an, align 8
  %i.be = trunc i64 %i.bd to i32
  %spec.select95 = tail call i32 @llvm.smax.i32(i32 %.sroa.25.2112, i32 %i.be)
  br label %_update_wdog_state.exit80

bb.x:                                             ; preds = %bb.p
  %i.bf = add nsw <2 x i32> %i.ap, splat (i32 1)
  br label %_update_wdog_state.exit80

_update_wdog_state.exit80:                        ; preds = %bb.w, %bb.p, %bb.q, %bb.u, %bb.v, %bb.x
  %.sroa.25.5 = phi i32 [ %.sroa.25.2112, %bb.p ], [ %.sroa.25.2112, %bb.q ], [ %.sroa.25.2112, %bb.u ], [ %.sroa.25.2112, %bb.v ], [ %.sroa.25.2112, %bb.x ], [ %spec.select95, %bb.w ] ; 2 uses
  %.sroa.0.4 = phi i1 [ %.sroa.0.1113, %bb.p ], [ false, %bb.q ], [ false, %bb.u ], [ false, %bb.v ], [ %.sroa.0.1113, %bb.x ], [ %.sroa.0.1113, %bb.w ] ; 2 uses
  %i.bg = phi <2 x i32> [ %i.ap, %bb.p ], [ %i.ap, %bb.q ], [ %i.ap, %bb.u ], [ %i.ap, %bb.v ], [ %i.bf, %bb.x ], [ %i.ap, %bb.w ] ; 2 uses
  %i.bh = tail call ptr @list_next(ptr noundef %i.al) #14 ; 2 uses
  %.not76 = icmp eq ptr %i.bh, null
  br i1 %.not76, label %._crit_edge, label %bb.p, !llvm.loop !18

._crit_edge:                                      ; preds = %_update_wdog_state.exit80, %bb.o
  %.sroa.25.2.lcssa = phi i32 [ %.sroa.25.1121, %bb.o ], [ %.sroa.25.5, %_update_wdog_state.exit80 ]
  %.sroa.0.1.lcssa = phi i1 [ %.sroa.0.0122, %bb.o ], [ %.sroa.0.4, %_update_wdog_state.exit80 ]
  %i.bi = phi <2 x i32> [ %i.p, %bb.o ], [ %i.bg, %_update_wdog_state.exit80 ]
  tail call void @list_iterator_destroy(ptr noundef %i.al) #14
  br label %_update_wdog_state.exit

_update_wdog_state.exit:                          ; preds = %bb.m, %bb.n, %bb.l, %bb.k, %bb.g, %bb.f, %._crit_edge
  %.sroa.25.3 = phi i32 [ %.sroa.25.2.lcssa, %._crit_edge ], [ %.sroa.25.1121, %bb.f ], [ %.sroa.25.1121, %bb.g ], [ %.sroa.25.1121, %bb.k ], [ %.sroa.25.1121, %bb.l ], [ %.sroa.25.1121, %bb.n ], [ %spec.select, %bb.m ] ; 3 uses
  %.sroa.0.2 = phi i1 [ %.sroa.0.1.lcssa, %._crit_edge ], [ %.sroa.0.0122, %bb.f ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.l ], [ %.sroa.0.0122, %bb.n ], [ %.sroa.0.0122, %bb.m ] ; 2 uses
  %i.bj = phi <2 x i32> [ %i.bi, %._crit_edge ], [ %i.p, %bb.f ], [ %i.p, %bb.g ], [ %i.p, %bb.k ], [ %i.p, %bb.l ], [ %i.ak, %bb.n ], [ %i.p, %bb.m ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = load i32, ptr %i.g, align 8
  %i.bl = zext i32 %i.bk to i64
  %i.bm = icmp samesign ult i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %.lr.ph124, label %._crit_edge125, !llvm.loop !19

._crit_edge125:                                   ; preds = %_update_wdog_state.exit
  br i1 %.sroa.0.2, label %._crit_edge125.thread.split.loop.exit186, label %bb.y

bb.y:                                             ; preds = %._crit_edge125
  %i.bn = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #14 ; 2 uses
  %.not68 = icmp eq i32 %i.bn, 0
  br i1 %.not68, label %bb.d, label %bb.z, !llvm.loop !20

bb.z:                                             ; preds = %bb.y
  %i.bo = tail call ptr @__errno_location() #15
  store i32 %i.bn, ptr %i.bo, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #16
  unreachable

._crit_edge125.thread.split.loop.exit186:         ; preds = %._crit_edge125
  %i.bp = extractelement <2 x i32> %i.bj, i64 1
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = extractelement <2 x i32> %i.bj, i64 0
  br label %._crit_edge125.thread

._crit_edge125.thread:                            ; preds = %.preheader, %._crit_edge125.thread.split.loop.exit186
  %.sroa.25.1.lcssa178 = phi i32 [ %.sroa.25.3, %._crit_edge125.thread.split.loop.exit186 ], [ %.sroa.25.0, %.preheader ] ; 2 uses
  %.sroa.13.0.lcssa177 = phi i1 [ %i.bq, %._crit_edge125.thread.split.loop.exit186 ], [ true, %.preheader ]
  %.sroa.19.0.lcssa176 = phi i32 [ %i.br, %._crit_edge125.thread.split.loop.exit186 ], [ 0, %.preheader ] ; 4 uses
  br i1 %i.f, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge125.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bt = load i32, ptr %i.bs, align 8
  %.not70 = icmp eq i32 %i.bt, 2
  br i1 %.not70, label %_notify_slurmctld_nodes.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void @sackd_mgr_remove_node(ptr noundef %i.bv) #14
  br label %_notify_slurmctld_nodes.exit

bb.ac:                                            ; preds = %._crit_edge125.thread
  br i1 %.0, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.i, ptr noundef nonnull align 4 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @__const._notify_slurmctld_jobs.step_id, i64 12), i64 12, i1 false)
  %i.bw = load ptr, ptr %i.b, align 8
  %i.bx = load i32, ptr %i.d, align 8             ; 2 uses
  switch i32 %i.bx, label %bb.aj [
    i32 7001, label %bb.ae
    i32 7002, label %bb.af
    i32 4002, label %bb.ag
    i32 4026, label %bb.ah
    i32 7004, label %_notify_slurmctld_jobs.exit
    i32 7008, label %_notify_slurmctld_jobs.exit
    i32 7007, label %_notify_slurmctld_jobs.exit
    i32 7009, label %_notify_slurmctld_jobs.exit
    i32 7005, label %_notify_slurmctld_jobs.exit
    i32 7003, label %_notify_slurmctld_jobs.exit
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %2 = load i32, ptr %i.cb, align 8
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %.sroa.0.0.copyload28.i = load i64, ptr %i.ce, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.7.0.copyload30.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx.i, i64 12, i1 false)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ad
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 160
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 168
  %3 = load i32, ptr %i.cj, align 8
  %i.ck = load i64, ptr %i.ci, align 8
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ad
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  %.not.i81 = icmp eq ptr %i.cn, null
  br i1 %.not.i81, label %_notify_slurmctld_jobs.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.co = tail call i32 @list_count(ptr noundef nonnull %i.cn) #14
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_notify_slurmctld_jobs.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ai
  %i.cq = tail call ptr @list_peek(ptr noundef nonnull %i.cn) #14 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 160
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 168
  %4 = load i32, ptr %i.cs, align 8
  %i.ct = load i64, ptr %i.cr, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ad
  %i.cu = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__._notify_slurmctld_jobs, i32 noundef %i.bx) #14 ; 0 uses
  br label %_notify_slurmctld_jobs.exit

bb.ak:                                            ; preds = %.critedge.i, %bb.ag, %bb.af, %bb.ae
  %.sroa.7.0.i = phi i32 [ %2, %bb.ae ], [ %.sroa.7.0.copyload30.i, %bb.af ], [ %3, %bb.ag ], [ %4, %.critedge.i ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.ae ], [ %.sroa.0.0.copyload28.i, %bb.af ], [ %i.ck, %bb.ag ], [ %i.ct, %.critedge.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = icmp eq i32 %i.cw, 2
  br i1 %i.cx, label %bb.al, label %_notify_slurmctld_jobs.exit

bb.al:                                            ; preds = %bb.ak
  %i.cy = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 24, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 1626, ptr noundef nonnull @__func__._queue_update_srun) #14 ; 4 uses
  store i64 %.sroa.0.0.i, ptr %i.cy, align 8
  %.sroa.7.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx31.i, align 8
  %.sroa.10.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx33.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.i, i64 12, i1 false)
  %i.cz = load ptr, ptr @update_srun_list, align 8
  tail call void @list_append(ptr noundef %i.cz, ptr noundef nonnull %i.cy) #14
  %i.da = tail call i32 @pthread_cond_signal(ptr noundef nonnull @update_srun_cond) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.da, 0
  br i1 %.not.i.i, label %_notify_slurmctld_jobs.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.db = tail call ptr @__errno_location() #15
  store i32 %i.da, ptr %i.db, align 4
  %i.dc = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef 1639, ptr noundef nonnull @__func__._queue_update_srun) #14 ; 0 uses
  br label %_notify_slurmctld_jobs.exit

_notify_slurmctld_jobs.exit:                      ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  br label %_notify_slurmctld_nodes.exit

bb.an:                                            ; preds = %bb.ac
  %i.dd = load i32, ptr %i.d, align 8             ; 3 uses
  %.not69 = icmp eq i32 %i.dd, 1005
  br i1 %.not69, label %_notify_slurmctld_nodes.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.de = load ptr, ptr %i.b, align 8
  br i1 %.sroa.13.0.lcssa177, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  switch i32 %i.dd, label %bb.ax [
    i32 4005, label %bb.aq
    i32 6017, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = load ptr, ptr %i.dg, align 8
  tail call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._thread_per_group_rpc.job_write_lock) #14
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 328
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1232), align 8
  %i.dk = tail call i32 @job_complete(ptr noundef nonnull %i.di, i32 noundef %i.dj, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0) #14 ; 0 uses
  tail call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._thread_per_group_rpc.job_write_lock) #14
  br label %bb.ax

bb.ar:                                            ; preds = %bb.ap
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._thread_per_group_rpc.job_write_lock) #14
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 124
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = tail call ptr @find_job_record(i32 noundef %i.dp) #14 ; 6 uses
  %.not91.i = icmp eq ptr %i.dq, null
  br i1 %.not91.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1048
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = icmp eq i32 %i.ds, 36
  br i1 %i.dt, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 856
  %i.dv = load i64, ptr %i.du, align 8
  %.not92.i = icmp eq i64 %i.dv, 0
  br i1 %.not92.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 120
  %i.dx = load i16, ptr %i.dw, align 8
  %.not93.i = icmp eq i16 %i.dx, 0
  br i1 %.not93.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.dy = load i64, ptr %i.dq, align 8
  store i64 %i.dy, ptr %1, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 448
  %i.eb = load i32, ptr %i.ea, align 8
  store i32 %i.eb, ptr %i.dz, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 -2, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -2, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.ee, align 4
  %i.ef = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__._notify_slurmctld_nodes, ptr noundef nonnull %1) #14 ; 0 uses
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1232), align 8
  %i.eh = call i32 @job_complete(ptr noundef nonnull %1, i32 noundef %i.eg, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 1) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._thread_per_group_rpc.job_write_lock) #14
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.aq, %bb.ap, %bb.ao
  %.not94.i = icmp eq i32 %.sroa.19.0.lcssa176, 0
  br i1 %.not94.i, label %bb.ce, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ej = load i16, ptr %i.ei, align 8
  %.not95.i = icmp eq i16 %i.ej, 0
  br i1 %.not95.i, label %bb.ce, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ek = load ptr, ptr %i.b, align 8
  %i.el = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 64, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 1408, ptr noundef nonnull @__func__._queue_agent_retry) #14 ; 9 uses
  store ptr %i.el, ptr %i.a, align 8
  store i32 %.sroa.19.0.lcssa176, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i16 1, ptr %i.em, align 4
  %i.en = call ptr @hostlist_create(ptr noundef null) #14
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 4 uses
  store ptr %i.en, ptr %i.eo, align 8
  %i.ep = load i32, ptr %i.d, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 36 ; 2 uses
  store i32 %i.ep, ptr %i.eq, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 40 ; 2 uses
  store ptr %i.et, ptr %i.eu, align 8
  %i.ev = load ptr, ptr %i.er, align 8
  store ptr null, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ex = load i32, ptr %i.ew, align 4
  call void @set_agent_arg_r_uid(ptr noundef nonnull %i.el, i32 noundef %i.ex) #14
  %i.ey = load i32, ptr %i.g, align 8
  %.not90.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not90.i.i, label %.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.az, %bb.bt
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bt ], [ 0, %bb.az ] ; 2 uses
  %.06284.i.i = phi i32 [ %.2.i.i, %bb.bt ], [ 0, %bb.az ] ; 5 uses
  %.06383.i.i = phi i32 [ %.265.i.i, %bb.bt ], [ %.sroa.19.0.lcssa176, %bb.az ] ; 5 uses
  %i.ez = getelementptr inbounds nuw [64 x i8], ptr %i.ek, i64 %indvars.iv.i.i ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i83, label %bb.ba, label %bb.bi

bb.ba:                                            ; preds = %.lr.ph.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fd = load i32, ptr %i.fc, align 8
  %.not37.i.i = icmp eq i32 %i.fd, 3
  br i1 %.not37.i.i, label %bb.bb, label %bb.bt

bb.bb:                                            ; preds = %bb.ba
  %i.fe = call i32 @get_log_level() #14
  %i.ff = icmp sgt i32 %i.fe, 4
  br i1 %i.ff, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.43, ptr noundef %i.fh) #14
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 48 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = call ptr @find_node_record(ptr noundef %i.fj) #14 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.fk, null
  br i1 %.not38.i.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 328
  %i.fm = load i32, ptr %i.fl, align 8            ; 2 uses
  %i.fn = and i32 %i.fm, 15
  %i.fo = icmp ne i32 %i.fn, 1
  %i.fp = and i32 %i.fm, 266240
  %or.cond.i.i = icmp eq i32 %i.fp, 0
  %or.cond77.i.i = and i1 %i.fo, %or.cond.i.i
  br i1 %or.cond77.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %spec.select.i.i = call i32 @llvm.usub.sat.i32(i32 %.06383.i.i, i32 1)
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.fq = load ptr, ptr %i.eo, align 8
  %i.fr = load ptr, ptr %i.fi, align 8
  %i.fs = call i32 @hostlist_push_host(ptr noundef %i.fq, ptr noundef %i.fr) #14 ; 0 uses
  %i.ft = add nsw i32 %.06284.i.i, 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.164.i.i = phi i32 [ %.06383.i.i, %bb.bg ], [ %spec.select.i.i, %bb.bf ] ; 4 uses
  %.1.i.i = phi i32 [ %i.ft, %bb.bg ], [ %.06284.i.i, %bb.bf ] ; 2 uses
  %i.fu = icmp eq i32 %.1.i.i, %.164.i.i
  br i1 %i.fu, label %.loopexit.i.i, label %bb.bt

bb.bi:                                            ; preds = %.lr.ph.i.i
  %i.fv = call ptr @list_iterator_create(ptr noundef nonnull %i.fb) #14 ; 4 uses
  %i.fw = call ptr @list_next(ptr noundef %i.fv) #14 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not2.i.i.i, label %_setup_requeue.exit.thread.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.bi, %.backedge.i.i.i
  %.467.i.i = phi i32 [ %.568.i.i, %.backedge.i.i.i ], [ %.06383.i.i, %bb.bi ] ; 4 uses
  %.4.i.i = phi i32 [ %.5.i.i, %.backedge.i.i.i ], [ %.06284.i.i, %bb.bi ] ; 3 uses
  %i.fx = phi ptr [ %i.gg, %.backedge.i.i.i ], [ %i.fw, %bb.bi ] ; 3 uses
  %i.fy = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.fz = and i64 %i.fy, 4503599627370496
  %.not22.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not22.i.i.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.split.i.i.i
  %i.ga = call i32 @get_log_level() #14
  %i.gb = icmp sgt i32 %i.ga, 3
  br i1 %i.gb, label %bb.bk, label %bb.bl

end_hunk_1
begin_hunk_2_@_wdog:bb.a

bb.ch:                                            ; preds = %bb.cf
  %i.ic = call ptr @list_iterator_create(ptr noundef nonnull %i.ia) #14
  br label %bb.ci

bb.ci:                                            ; preds = %bb.dg, %bb.ch
  %.177.i = phi i8 [ %.076114.i, %bb.ch ], [ %.6.i, %bb.dg ] ; 2 uses
  %.169.i = phi ptr [ %i.ic, %bb.ch ], [ %.270.i, %bb.dg ] ; 4 uses
  %.0.i = phi i32 [ 8001, %bb.ch ], [ %.4.i, %bb.dg ]
  %i.id = call ptr @list_next(ptr noundef %.169.i) #14 ; 3 uses
  %.not97.i = icmp eq ptr %i.id, null
  br i1 %.not97.i, label %bb.dh, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cg
  %.not98.i = phi i1 [ false, %bb.cj ], [ true, %bb.cg ] ; 3 uses
  %.278.i = phi i8 [ %.177.i, %bb.cj ], [ %.076114.i, %bb.cg ] ; 6 uses
  %.075.in.i = phi ptr [ %i.ie, %bb.cj ], [ %i.ib, %bb.cg ]
  %.173.i = phi ptr [ %i.id, %bb.cj ], [ %.072115.i, %bb.cg ] ; 4 uses
  %.270.i = phi ptr [ %.169.i, %bb.cj ], [ %.068116.i, %bb.cg ] ; 3 uses
  %.1.i = phi i32 [ %.0.i, %bb.cj ], [ 8001, %bb.cg ]
  %.075.i = load i32, ptr %.075.in.i, align 4
  br i1 %.not98.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.if = getelementptr inbounds nuw i8, ptr %.173.i, i64 8
  %i.ig = load i16, ptr %.173.i, align 8
  %i.ih = zext i16 %i.ig to i32
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hy, i64 48 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8
  %.not99.i = icmp eq ptr %i.ij, null
  br i1 %.not99.i, label %bb.di, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.2106.i = phi i32 [ %.1.i, %bb.cm ], [ %i.ih, %bb.cl ] ; 6 uses
  %.067104.i = phi ptr [ %i.ii, %bb.cm ], [ %i.if, %bb.cl ] ; 8 uses
  switch i32 %.075.i, label %bb.df [
    i32 3, label %bb.co
    i32 4, label %bb.cr
    i32 5, label %bb.cu
    i32 2, label %bb.cx
  ]

bb.co:                                            ; preds = %bb.cn
  %i.ik = trunc nuw i8 %.278.i to i1
  br i1 %i.ik, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._agent_nodes_update.node_write_lock) #14
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %or.cond100.i = and i1 %or.cond.i, %.not98.i
  %.3.i = select i1 %or.cond100.i, i32 9001, i32 %.2106.i ; 2 uses
  %i.il = load ptr, ptr %.067104.i, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.in = load i64, ptr %i.im, align 8
  call void @node_not_resp(ptr noundef %i.il, i64 noundef %i.in, i32 noundef %.3.i) #14
  br label %bb.dg

bb.cr:                                            ; preds = %bb.cn
  %i.io = trunc nuw i8 %.278.i to i1
  br i1 %i.io, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._agent_nodes_update.node_write_lock) #14
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ip = load ptr, ptr %.067104.i, align 8
  %i.iq = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1232), align 8
  %i.ir = call i32 @drain_nodes(ptr noundef %i.ip, ptr noundef nonnull @.str.37, i32 noundef %i.iq) #14 ; 0 uses
  %i.is = load ptr, ptr %.067104.i, align 8
  %i.it = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.39, ptr noundef %i.is, ptr noundef nonnull @.str.38) #14 ; 0 uses
  br label %bb.dg

bb.cu:                                            ; preds = %bb.cn
  %i.iu = trunc nuw i8 %.278.i to i1
  br i1 %i.iu, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._agent_nodes_update.node_write_lock) #14
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.iv = load ptr, ptr %.067104.i, align 8
  %i.iw = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1232), align 8
  %i.ix = call i32 @drain_nodes(ptr noundef %i.iv, ptr noundef nonnull @.str.40, i32 noundef %i.iw) #14 ; 0 uses
  %i.iy = load ptr, ptr %.067104.i, align 8
  %i.iz = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.41, ptr noundef %i.iy, ptr noundef nonnull @.str.38) #14 ; 0 uses
  br label %bb.dg

bb.cx:                                            ; preds = %bb.cn
  %i.ja = trunc nuw i8 %.278.i to i1
  %i.jb = load ptr, ptr %.067104.i, align 8       ; 2 uses
  br i1 %i.ja, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @node_did_resp(ptr noundef %i.jb) #14
  br label %bb.dg

bb.cz:                                            ; preds = %bb.cx
  %i.jc = call i32 @pthread_mutex_lock(ptr noundef nonnull @update_nodes_mutex) #14 ; 2 uses
  %.not.i101.i = icmp eq i32 %i.jc, 0
  br i1 %.not.i101.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jd = tail call ptr @__errno_location() #15
  store i32 %i.jc, ptr %i.jd, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._queue_update_node) #16
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.je = load ptr, ptr @update_node_list, align 8 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.je, null
  br i1 %.not5.i.i, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.jf = call ptr @list_create(ptr noundef nonnull @xfree_ptr) #14 ; 2 uses
  store ptr %i.jf, ptr @update_node_list, align 8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.jg = phi ptr [ %i.jf, %bb.dc ], [ %i.je, %bb.db ]
  call void @list_append(ptr noundef %i.jg, ptr noundef %i.jb) #14
  %i.jh = call i32 @pthread_mutex_unlock(ptr noundef nonnull @update_nodes_mutex) #14 ; 2 uses
  %.not6.i.i = icmp eq i32 %i.jh, 0
  br i1 %.not6.i.i, label %_queue_update_node.exit.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ji = tail call ptr @__errno_location() #15
  store i32 %i.jh, ptr %i.ji, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__._queue_update_node) #16
  unreachable

_queue_update_node.exit.i:                        ; preds = %bb.dd
  store ptr null, ptr %.067104.i, align 8
  br label %bb.dg

bb.df:                                            ; preds = %bb.cn
  %i.jj = load ptr, ptr %.067104.i, align 8
  %i.jk = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.42, ptr noundef %i.jj) #14 ; 0 uses
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_queue_update_node.exit.i, %bb.cy, %bb.cw, %bb.ct, %bb.cq
  %.6.i = phi i8 [ %.278.i, %bb.df ], [ 1, %bb.cq ], [ 1, %bb.ct ], [ 1, %bb.cw ], [ 1, %bb.cy ], [ 0, %_queue_update_node.exit.i ] ; 2 uses
  %.4.i = phi i32 [ %.2106.i, %bb.df ], [ %.3.i, %bb.cq ], [ %.2106.i, %bb.ct ], [ %.2106.i, %bb.cw ], [ %.2106.i, %bb.cy ], [ %.2106.i, %_queue_update_node.exit.i ]
  br i1 %.not98.i, label %bb.di, label %bb.ci, !llvm.loop !23

bb.dh:                                            ; preds = %bb.ci
  call void @list_iterator_destroy(ptr noundef %.169.i) #14
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.cm
  %.7.i = phi i8 [ %.6.i, %bb.dg ], [ %.278.i, %bb.cm ], [ %.177.i, %bb.dh ] ; 2 uses
  %.274.i = phi ptr [ %.173.i, %bb.dg ], [ %.173.i, %bb.cm ], [ null, %bb.dh ]
  %.371.i = phi ptr [ %.270.i, %bb.dg ], [ %.270.i, %bb.cm ], [ %.169.i, %bb.dh ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jl = load i32, ptr %i.g, align 8
  %i.jm = zext i32 %i.jl to i64
  %i.jn = icmp samesign ult i64 %indvars.iv.next.i, %i.jm
  br i1 %i.jn, label %bb.cf, label %._crit_edge.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.di
  %i.jo = trunc nuw i8 %.7.i to i1
  br i1 %i.jo, label %bb.dj, label %._crit_edge.thread.i

bb.dj:                                            ; preds = %._crit_edge.i
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._agent_nodes_update.node_write_lock) #14
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.dj, %._crit_edge.i, %bb.ce
  %.b.i = load i1, ptr @run_scheduler, align 1
  br i1 %.b.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %._crit_edge.thread.i
  store i1 false, ptr @run_scheduler, align 1
  call void @queue_job_scheduler() #14
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %._crit_edge.thread.i
  %i.jp = load i32, ptr %i.d, align 8
  switch i32 %i.jp, label %_notify_slurmctld_nodes.exit [
    i32 1008, label %bb.dm
    i32 1011, label %bb.dm
    i32 1029, label %bb.dm
    i32 1017, label %bb.dm
    i32 1001, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl, %bb.dl, %bb.dl, %bb.dl, %bb.dl
  call void @ping_end() #14
  br label %_notify_slurmctld_nodes.exit

_notify_slurmctld_nodes.exit:                     ; preds = %bb.dm, %bb.dl, %_notify_slurmctld_jobs.exit, %bb.an, %bb.aa, %bb.ab
  %i.jq = load i32, ptr %i.g, align 8
  %.not134 = icmp eq i32 %i.jq, 0
  br i1 %.not134, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %_notify_slurmctld_nodes.exit, %bb.do
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %bb.do ], [ 0, %_notify_slurmctld_nodes.exit ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv145 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 56 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8            ; 2 uses
  %.not74 = icmp eq ptr %i.jt, null
  br i1 %.not74, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph131
  call void @list_destroy(ptr noundef nonnull %i.jt) #14
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %.lr.ph131
  store ptr null, ptr %i.js, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  call void @slurm_xfree(ptr noundef nonnull %i.ju) #14
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.jv = load i32, ptr %i.g, align 8
  %i.jw = zext i32 %i.jv to i64
  %i.jx = icmp samesign ult i64 %indvars.iv.next146, %i.jw
  br i1 %i.jx, label %.lr.ph131, label %._crit_edge132, !llvm.loop !25

._crit_edge132:                                   ; preds = %bb.do, %_notify_slurmctld_nodes.exit
  %.not71 = icmp eq i32 %.sroa.25.1.lcssa178, 0
  br i1 %.not71, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %._crit_edge132
  %i.jy = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.jz = and i64 %i.jy, 4503599627370496
  %.not72 = icmp eq i64 %i.jz, 0
  br i1 %.not72, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ka = call i32 @get_log_level() #14
  %i.kb = icmp sgt i32 %i.ka, 3
  br i1 %i.kb, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.5, i32 noundef %.sroa.25.1.lcssa178) #14
  br label %bb.ds

bb.ds:                                            ; preds = %._crit_edge132, %bb.dq, %bb.dr, %bb.dp
  %i.kc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #14 ; 2 uses
  %.not73 = icmp eq i32 %i.kc, 0
  br i1 %.not73, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.kd = tail call ptr @__errno_location() #15
  store i32 %i.kc, ptr %i.kd, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #16
  unreachable

bb.du:                                            ; preds = %bb.ds
  ret ptr null
}

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #5

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_thread_per_group_rpc(ptr noundef %0) #0 {
switch.edge:
  %.sroa.10.i = alloca [12 x i8], align 4         ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %1 = alloca %struct.slurm_msg, align 8          ; 18 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8              ; 13 uses
  %switch.tableidx = add i32 %i.k, -6009          ; 2 uses
  %i.l = icmp ult i32 %switch.tableidx, 8
  %switch.cast = trunc i32 %switch.tableidx to i8
  %switch.downshift = lshr i8 -123, %switch.cast
  %switch.masked = trunc i8 %switch.downshift to i1
  %i.m = select i1 %i.l, i1 %switch.masked, i1 false
  %i.n = icmp eq i32 %i.k, 7002
  %i.o = icmp eq i32 %i.k, 4002
  switch i32 %i.k, label %bb.a [
    i32 7009, label %switch.edge277
    i32 7007, label %switch.edge277
    i32 7005, label %switch.edge277
    i32 7004, label %switch.edge277
    i32 7002, label %switch.edge277
    i32 7001, label %switch.edge277
    i32 4002, label %switch.edge277
    i32 7003, label %switch.edge277
  ]

bb.a:                                             ; preds = %switch.edge
  br label %switch.edge277

switch.edge277:                                   ; preds = %switch.edge, %switch.edge, %switch.edge, %switch.edge, %switch.edge, %switch.edge, %switch.edge, %switch.edge, %bb.a
  %i.p = phi i1 [ true, %switch.edge ], [ false, %bb.a ], [ true, %switch.edge ], [ true, %switch.edge ], [ true, %switch.edge ], [ true, %switch.edge ], [ true, %switch.edge ], [ true, %switch.edge ], [ true, %switch.edge ] ; 2 uses
  %i.q = icmp eq i32 %i.k, 4026
  switch i32 %i.k, label %bb.b [
    i32 7001, label %bb.c
    i32 4026, label %bb.c
    i32 4002, label %bb.c
  ]

bb.b:                                             ; preds = %switch.edge277
  br label %bb.c

bb.c:                                             ; preds = %switch.edge277, %switch.edge277, %switch.edge277, %bb.b
  %i.r = phi i1 [ true, %switch.edge277 ], [ %i.n, %bb.b ], [ true, %switch.edge277 ], [ true, %switch.edge277 ]
  %i.s = icmp eq i32 %i.k, 1006                   ; 2 uses
  %i.t = tail call i64 @time(ptr noundef null) #14
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 %i.t, ptr %i.u, align 8
  %i.v = tail call i32 @pthread_mutex_lock(ptr noundef %i.c) #14 ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call ptr @__errno_location() #15
  store i32 %i.v, ptr %i.w, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i32 1, ptr %i.x, align 8
  %i.y = load i64, ptr %i.u, align 8
  %i.z = load i16, ptr @message_timeout, align 2
  %i.aa = zext i16 %i.z to i64
  %i.ab = add nsw i64 %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef %i.c) #14 ; 2 uses
  %.not251 = icmp eq i32 %i.ad, 0
  br i1 %.not251, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call ptr @__errno_location() #15
  store i32 %i.ad, ptr %i.ae, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @slurm_msg_t_init(ptr noundef nonnull %1) #14
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ag = load i16, ptr %i.af, align 2            ; 2 uses
  %.not252 = icmp eq i16 %i.ag, 0
  br i1 %.not252, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 228
  store i16 %i.ag, ptr %i.ah, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = trunc i32 %i.k to i16                   ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 226 ; 2 uses
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ao = load i32, ptr %i.an, align 4
  call void @slurm_msg_set_r_uid(ptr noundef nonnull %1, i32 noundef %i.ao) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i16, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.as = load i16, ptr %i.ar, align 8
  %i.at = or i16 %i.as, %i.aq
  store i16 %i.at, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr %i.av, ptr %i.aw, align 8
  store ptr null, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 7 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %.not253 = icmp eq ptr %i.ay, null
  %i.az = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ba = and i64 %i.az, 4503599627370496
  %.not254 = icmp eq i64 %i.ba, 0                 ; 2 uses
  br i1 %.not253, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not254, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = call i32 @get_log_level() #14
  %i.bc = icmp sgt i32 %i.bb, 3
  br i1 %i.bc, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bd = call ptr @rpc_num2string(i16 noundef zeroext %i.ai) #14
  %i.be = load ptr, ptr %i.ax, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.8, ptr noundef %i.bd, ptr noundef %i.be) #14
  br label %bb.q

bb.m:                                             ; preds = %bb.i
  br i1 %.not254, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call ptr @hostlist_ranged_string_xmalloc(ptr noundef %i.bg) #14
  store ptr %i.bh, ptr %i.b, align 8
  %i.bi = call i32 @get_log_level() #14
  %i.bj = icmp sgt i32 %i.bi, 4
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = call ptr @rpc_num2string(i16 noundef zeroext %i.ai) #14
  %i.bl = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.8, ptr noundef %i.bk, ptr noundef %i.bl) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @slurm_xfree(ptr noundef nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.j, %bb.l, %bb.k
  br i1 %i.r, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %.val = load ptr, ptr %i.am, align 8            ; 9 uses
  %.val280 = load i16, ptr %i.aj, align 2         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.i, ptr noundef nonnull align 4 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @__const._queue_srun_no_resp.step_id, i64 12), i64 12, i1 false)
  switch i16 %.val280, label %bb.y [
    i16 4026, label %bb.s
    i16 4002, label %bb.v
    i16 7001, label %bb.w
    i16 7002, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_queue_srun_no_resp.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = call i32 @list_count(ptr noundef nonnull %.val) #14
  %.not30.i = icmp eq i32 %i.bm, 0
  br i1 %.not30.i, label %_queue_srun_no_resp.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = call ptr @list_peek(ptr noundef nonnull %.val) #14 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 160
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 168
  %2 = load i32, ptr %i.bp, align 8
  %i.bq = load i64, ptr %i.bo, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %3 = load i32, ptr %i.bs, align 8
  %i.bt = load i64, ptr %i.br, align 8
  br label %bb.z

bb.w:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %4 = load i32, ptr %i.bu, align 8
  br label %bb.z

bb.x:                                             ; preds = %bb.r
  %.sroa.0.0.copyload9.i = load i64, ptr %.val, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.7.0.copyload11.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx.i, i64 12, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %bb.r
  %i.bv = call ptr @rpc_num2string(i16 noundef zeroext %.val280) #14
  %i.bw = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__._queue_srun_no_resp, ptr noundef %i.bv) #14 ; 0 uses
  br label %_queue_srun_no_resp.exit

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.0.1.i = phi i64 [ %i.bq, %bb.u ], [ %i.bt, %bb.v ], [ 0, %bb.w ], [ %.sroa.0.0.copyload9.i, %bb.x ]
  %.sroa.7.1.i = phi i32 [ %2, %bb.u ], [ %3, %bb.v ], [ %4, %bb.w ], [ %.sroa.7.0.copyload11.i, %bb.x ]
  %i.bx = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 1677, ptr noundef nonnull @__func__._queue_srun_no_resp) #14 ; 5 uses
  %i.by = call i64 @time(ptr noundef null) #14
  store i64 %i.by, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %.sroa.0.1.i, ptr %i.bz, align 8
  %.sroa.7.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i32 %.sroa.7.1.i, ptr %.sroa.7.0..sroa_idx12.i, align 8
  %.sroa.10.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx14.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.i, i64 12, i1 false)
  %i.ca = load ptr, ptr @srun_no_resp_list, align 8
  call void @list_append(ptr noundef %i.ca, ptr noundef nonnull %i.bx) #14
  %i.cb = call i32 @pthread_cond_signal(ptr noundef nonnull @update_srun_cond) #14 ; 2 uses
  %.not31.i = icmp eq i32 %i.cb, 0
  br i1 %.not31.i, label %_queue_srun_no_resp.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = tail call ptr @__errno_location() #15
  store i32 %i.cb, ptr %i.cc, align 4
  %i.cd = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef 1684, ptr noundef nonnull @__func__._queue_srun_no_resp) #14 ; 0 uses
  br label %_queue_srun_no_resp.exit

_queue_srun_no_resp.exit:                         ; preds = %bb.s, %bb.t, %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  br label %bb.ab

bb.ab:                                            ; preds = %_queue_srun_no_resp.exit, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load i8, ptr %i.ce, align 8, !range !10, !noundef !11
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8            ; 3 uses
  %.not257 = icmp eq ptr %i.ci, null              ; 2 uses
  br i1 %i.cg, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not257, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.ci, i64 128, i1 false)
  %i.cj = load ptr, ptr %i.ax, align 8
  %i.ck = call ptr @slurm_send_addr_recv_msgs(ptr noundef nonnull %1, ptr noundef %i.cj, i32 noundef 0) #14 ; 2 uses
  %.not261 = icmp eq ptr %i.ck, null
  br i1 %.not261, label %bb.ae, label %bb.av

bb.ae:                                            ; preds = %bb.ad
  %i.cl = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.8) #14 ; 0 uses
  br label %bb.cv

bb.af:                                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not258 = icmp eq ptr %i.cn, null
  br i1 %.not258, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = call ptr @start_msg_tree(ptr noundef nonnull %i.cn, ptr noundef nonnull %1, i32 noundef 0) #14 ; 2 uses
  %.not260 = icmp eq ptr %i.co, null
  br i1 %.not260, label %bb.ah, label %bb.av

bb.ah:                                            ; preds = %bb.ag
  %i.cp = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.8) #14 ; 0 uses
  br label %bb.cv

bb.ai:                                            ; preds = %bb.af
  %i.cq = load ptr, ptr %i.ax, align 8
  %i.cr = call ptr @slurm_send_recv_msgs(ptr noundef %i.cq, ptr noundef nonnull %1, i32 noundef 0) #14 ; 2 uses
  %.not259 = icmp eq ptr %i.cr, null
  br i1 %.not259, label %bb.aj, label %bb.av

bb.aj:                                            ; preds = %bb.ai
  %i.cs = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.8) #14 ; 0 uses
  br label %bb.cv

bb.ak:                                            ; preds = %bb.ab
  br i1 %.not257, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.ci, i64 128, i1 false)
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.ct = load ptr, ptr %i.ax, align 8
  %i.cu = load i16, ptr %i.ar, align 8
  %i.cv = call i32 @slurm_conf_get_addr(ptr noundef %i.ct, ptr noundef nonnull %1, i16 noundef zeroext %i.cu) #14
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cx = load ptr, ptr %i.ax, align 8
  %i.cy = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.8, ptr noundef %i.cx) #14 ; 0 uses
  br label %bb.cv

bb.ao:                                            ; preds = %bb.am, %bb.al
  switch i32 %i.k, label %bb.aq [
    i32 7009, label %bb.ap
    i32 7004, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  call void @slurm_send_msg_maybe(ptr noundef nonnull %1) #14
  br label %.thread307

bb.aq:                                            ; preds = %bb.ao
  %i.cz = call i32 @slurm_send_only_node_msg(ptr noundef nonnull %1) #14
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.cv, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %or.cond21 = or i1 %i.s, %i.p
  br i1 %or.cond21, label %bb.cv, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._thread_per_group_rpc.node_read_lock) #14
  %i.db = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.dc = call zeroext i1 @is_node_resp(ptr noundef %i.db) #14
  br i1 %i.dc, label %bb.at, label %_comm_err.exit

bb.at:                                            ; preds = %bb.as
  %i.dd = call i32 @get_log_level() #14
  %i.de = icmp sgt i32 %i.dd, 3
  br i1 %i.de, label %bb.au, label %_comm_err.exit

bb.au:                                            ; preds = %bb.at
  %i.df = call ptr @rpc_num2string(i16 noundef zeroext %i.ai) #14
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.61, ptr noundef %i.db, ptr noundef %i.df) #14
  br label %_comm_err.exit

_comm_err.exit:                                   ; preds = %bb.as, %bb.at, %bb.au
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._thread_per_group_rpc.node_read_lock) #14
  br label %bb.cv

bb.av:                                            ; preds = %bb.ad, %bb.ai, %bb.ag
  %.0220 = phi ptr [ %i.ck, %bb.ad ], [ %i.co, %bb.ag ], [ %i.cr, %bb.ai ] ; 2 uses
  %i.dg = call ptr @list_iterator_create(ptr noundef nonnull %.0220) #14 ; 4 uses
  %i.dh = call ptr @list_next(ptr noundef %i.dg) #14 ; 2 uses
  %.not262322327 = icmp eq ptr %i.dh, null
  br i1 %.not262322327, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.av
  %i.di = icmp eq i32 %i.k, 4005
  %i.dj = icmp eq i32 %i.k, 6004
  %i.dk = icmp eq i32 %i.k, 6006                  ; 5 uses
  %or.cond39 = or i1 %i.s, %i.p
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer.backedge
  %i.dl = phi ptr [ %i.dh, %.lr.ph.lr.ph ], [ %i.fl, %.outer.backedge ]
  %.0218.ph328 = phi i32 [ 3, %.lr.ph.lr.ph ], [ %.0218.ph.be, %.outer.backedge ] ; 3 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.ba
  %i.dm = phi ptr [ %i.dl, %.lr.ph ], [ %i.ek, %bb.ba ] ; 18 uses
  %i.dn = load i16, ptr %i.dm, align 8
  %i.do = zext i16 %i.dn to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call i32 @slurm_get_return_code(i32 noundef %i.do, ptr noundef %i.dq) #14 ; 2 uses
  %i.ds = load i16, ptr %i.dm, align 8
  %i.dt = icmp eq i16 %i.ds, 1016
  br i1 %i.dt, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.du = load ptr, ptr %i.dp, align 8            ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not267 = icmp eq ptr %i.dw, null
  br i1 %.not267, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %.not268 = icmp eq ptr %i.dy, null
  br i1 %.not268, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dz = call i32 @xstrcmp(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dy) #14
  %.not269 = icmp eq i32 %i.dz, 0
  br i1 %.not269, label %.thread, label %bb.ba

.thread:                                          ; preds = %bb.ax, %bb.ay, %bb.az
  call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._thread_per_group_rpc.node_write_lock) #14
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = load i32, ptr %i.du, align 8
  call void @reset_node_load(ptr noundef %i.eb, i32 noundef %i.ec) #14
  %i.ed = load ptr, ptr %i.ea, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ef = load i64, ptr %i.ee, align 8
  call void @reset_node_free_mem(ptr noundef %i.ed, i64 noundef %i.ef) #14
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._thread_per_group_rpc.node_write_lock) #14
  br label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.eg = load ptr, ptr %i.dx, align 8
  %i.eh = load ptr, ptr %i.dv, align 8
  %i.ei = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.8, ptr noundef %i.eg, ptr noundef %i.eh) #14 ; 0 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 3, ptr %i.ej, align 4
  %i.ek = call ptr @list_next(ptr noundef %i.dg) #14 ; 2 uses
  %.not262 = icmp eq ptr %i.ek, null
  br i1 %.not262, label %.outer._crit_edge, label %bb.aw

.loopexit:                                        ; preds = %bb.aw, %.thread
  %i.el = icmp eq i32 %i.dr, 4002
  %or.cond23 = select i1 %i.m, i1 %i.el, i1 false
  br i1 %or.cond23, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %.loopexit
  %i.em = load ptr, ptr %i.ak, align 8
  call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._thread_per_group_rpc.job_write_lock) #14
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 88 ; 2 uses
  %i.eo = call ptr @find_job(ptr noundef nonnull %i.en) #14 ; 2 uses
  %.not270 = icmp eq ptr %i.eo, null
  br i1 %.not270, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ep = call i32 @get_log_level() #14
  %i.eq = icmp sgt i32 %i.ep, 4
  br i1 %i.eq, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.er = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.en, ptr noundef %i.es, i32 noundef 0) #14
  br label %bb.bg

end_hunk_2
