Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/rpc_queue?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }
%struct.slurmctld_rpc_t = type { i16, ptr, ptr, %struct.slurmctld_lock_t, ptr, i8, i8, i8, i8, i8, i8, i32, i32, i16, i16, i32, i64, %union.pthread_cond_t, %union.pthread_mutex_t, ptr, i16, i64, i16, i16 }
%struct.slurmctld_lock_t = type { i32, i32, i32, i32, i32, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.timespec = type { i64, i64 }

@enabled = dso_local local_unnamed_addr global i8 1, align 1
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str = private unnamed_addr constant [17 x i8] c"enable_rpc_queue\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"enabled experimental rpc queuing system\00", align 1
@slurmctld_rpcs = external global [0 x %struct.slurmctld_rpc_t], align 8
@__const.rpc_queue_init.name = private unnamed_addr constant [17 x i8] c"INVALID\00\00\00\00\00\00\00\00\00\00", align 16
@.str.2 = private unnamed_addr constant [26 x i8] c"disabled rpc_queue for %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"disabled rate limiting for %s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: pthread_cond_init(): %m\00", align 1
@__func__.rpc_queue_init = private unnamed_addr constant [15 x i8] c"rpc_queue_init\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s: pthread_mutex_init(): %m\00", align 1
@.str.6 = private unnamed_addr constant [120 x i8] c"starting rpc_queue for %s: max_per_cycle=%u max_usec_per_cycle=%u max_queued=%d hard_drop=%d yield_sleep=%d interval=%d\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"rpcq-%u\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"_rpc_queue_worker\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"%s: threadpool_create() failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%s: pthread_mutex_lock(): %m\00", align 1
@__func__.rpc_queue_shutdown = private unnamed_addr constant [19 x i8] c"rpc_queue_shutdown\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s:%d %s: pthread_cond_signal(): %m\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"rpc_queue.c\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"%s: pthread_mutex_unlock(): %m\00", align 1
@__func__.rpc_enqueue = private unnamed_addr constant [12 x i8] c"rpc_enqueue\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"rpc_queue.yaml\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"%s: could not load %s, ignoring\00", align 1
@__func__._load_config = private unnamed_addr constant [13 x i8] c"_load_config\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"application/x-yaml\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Failed to decode %s\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"%s: Unexpected root of rpc_queue.yaml is %s when dictionary expected\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"rpc_queue\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"rl_exempt\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"hard_drop\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"max_per_cycle\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"max_usec_per_cycle\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"max_queued\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"yield_sleep\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.29 = private unnamed_addr constant [88 x i8] c"PROTOCOL: %s(%s): sleeping %ld usec after processing %d/%u msgs (processed_usec=%ld/%d)\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"PROTOCOL: %s(%s): shutting down\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"%s:%d %s: pthread_cond_wait(): %m\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"PROTOCOL: %s(%s): woke up\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @rpc_queue_init() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca [17 x i8], align 16               ; 5 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1336), align 8
  %i.g = tail call ptr @xstrcasestr(ptr noundef %i.f, ptr noundef nonnull @.str) #9
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr @enabled, align 1
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1) #9 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.i = tail call ptr @get_extra_conf_path(ptr noundef nonnull @.str.14) #9 ; 3 uses
  store ptr %i.i, ptr %i.c, align 8
  %i.j = tail call ptr @create_mmap_buf(ptr noundef %i.i) #9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @get_log_level() #9
  %i.l = icmp sgt i32 %i.k, 4
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__._load_config, ptr noundef %i.i) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @slurm_xfree(ptr noundef nonnull %i.c) #9
  br label %_load_config.exit

bb.g:                                             ; preds = %bb.c
  tail call void @serializer_required(ptr noundef nonnull @.str.16) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = call i32 @serialize_g_string_to_data(ptr noundef nonnull %i.d, ptr noundef %i.n, i64 noundef %i.q, ptr noundef nonnull @.str.16) #9
  %.not7.i = icmp eq i32 %i.r, 0
  br i1 %.not7.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.c, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.17, ptr noundef %i.s) #10
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @free_buf(ptr noundef nonnull %i.j) #9
  call void @slurm_xfree(ptr noundef nonnull %i.c) #9
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = call i32 @data_get_type(ptr noundef %i.t) #9
  %.not8.i = icmp eq i32 %i.u, 3
  %i.v = load ptr, ptr %i.d, align 8              ; 2 uses
  br i1 %.not8.i, label %_load_config.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = call ptr @data_get_type_string(ptr noundef %i.v) #9
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__._load_config, ptr noundef %i.w) #10
  unreachable

_load_config.exit:                                ; preds = %bb.f, %bb.i
  %.0.i = phi ptr [ null, %bb.f ], [ %i.v, %bb.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.x = load i16, ptr @slurmctld_rpcs, align 8   ; 2 uses
  %.not3648 = icmp eq i16 %i.x, 0
  br i1 %.not3648, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_load_config.exit
  %.not42 = icmp eq ptr %.0.i, null
  br label %bb.k

._crit_edge:                                      ; preds = %bb.av, %_load_config.exit
  %.not37 = icmp eq ptr %.0.i, null
  br i1 %.not37, label %bb.ax, label %bb.aw

bb.k:                                             ; preds = %.lr.ph, %bb.av
  %i.y = phi i16 [ %i.x, %.lr.ph ], [ %i.dg, %bb.av ]
  %.049 = phi ptr [ @slurmctld_rpcs, %.lr.ph ], [ %i.df, %bb.av ] ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.e, ptr noundef nonnull align 16 dereferenceable(17) @__const.rpc_queue_init.name, i64 17, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.049, i64 57 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !range !8, !noundef !9
  %i.ab = call ptr @rpc_num2string(i16 noundef zeroext %i.y) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %.049, i64 48 ; 4 uses
  store ptr %i.ab, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  br i1 %.not42, label %_apply_config.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = call ptr @data_key_get(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.19) #9 ; 2 uses
  %i.ae = call i32 @data_get_type(ptr noundef %i.ad) #9
  %.not.i41 = icmp eq i32 %i.ae, 2
  br i1 %.not.i41, label %bb.m, label %_apply_config.exit

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.ac, align 8
  %i.ag = call ptr @data_list_find_first(ptr noundef %i.ad, ptr noundef nonnull @_find_msg_name, ptr noundef %i.af) #9 ; 9 uses
  %.not42.i = icmp eq ptr %i.ag, null
  br i1 %.not42.i, label %_apply_config.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = call ptr @data_key_get(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.20) #9 ; 2 uses
  %.not43.i = icmp eq ptr %i.ah, null
  br i1 %.not43.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1
  %i.ai = call i32 @data_get_bool_converted(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.b) #9
  %.not44.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not44.not.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.z, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %_apply_config.exit

.critedge.i:                                      ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.q

bb.q:                                             ; preds = %.critedge.i, %bb.n
  %i.aj = call ptr @data_key_get(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.21) #9 ; 2 uses
  %.not45.i = icmp eq ptr %i.aj, null
  br i1 %.not45.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %.049, i64 61
  %i.al = call i32 @data_get_bool_converted(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak) #9 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.am = call ptr @data_key_get(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.22) #9 ; 2 uses
  %.not46.i = icmp eq ptr %i.am, null
  br i1 %.not46.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %.049, i64 58
  %i.ao = call i32 @data_get_bool_converted(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an) #9 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ap = call ptr @data_key_get(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.23) #9 ; 2 uses
  %.not47.i = icmp eq ptr %i.ap, null
  br i1 %.not47.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = call i32 @data_get_int_converted(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.a) #9
  %.not48.i = icmp eq i32 %i.aq, 0
  br i1 %.not48.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ar = load i64, ptr %i.a, align 8
  %i.as = trunc i64 %i.ar to i16
  %i.at = getelementptr inbounds nuw i8, ptr %.049, i64 74
  store i16 %i.as, ptr %i.at, align 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.au = call ptr @data_key_get(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.24) #9 ; 2 uses
  %.not49.i = icmp eq ptr %i.au, null
  br i1 %.not49.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = call i32 @data_get_int_converted(ptr noundef nonnull %i.au, ptr noundef nonnull %i.a) #9
  %.not50.i = icmp eq i32 %i.av, 0
  br i1 %.not50.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aw = load i64, ptr %i.a, align 8
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %.049, i64 76
  store i32 %i.ax, ptr %i.ay, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.az = call ptr @data_key_get(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.25) #9 ; 2 uses
  %.not51.i = icmp eq ptr %i.az, null
  br i1 %.not51.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ba = call i32 @data_get_int_converted(ptr noundef nonnull %i.az, ptr noundef nonnull %i.a) #9
  %.not52.i = icmp eq i32 %i.ba, 0
  br i1 %.not52.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bb = load i64, ptr %i.a, align 8
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %.049, i64 72
  store i16 %i.bc, ptr %i.bd, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.be = call ptr @data_key_get(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.26) #9 ; 2 uses
  %.not53.i = icmp eq ptr %i.be, null
  br i1 %.not53.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bf = call i32 @data_get_int_converted(ptr noundef nonnull %i.be, ptr noundef nonnull %i.a) #9
  %.not54.i = icmp eq i32 %i.bf, 0
  br i1 %.not54.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bg = load i64, ptr %i.a, align 8
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %.049, i64 64
  store i32 %i.bh, ptr %i.bi, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bj = call ptr @data_key_get(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.27) #9 ; 2 uses
  %.not55.i = icmp eq ptr %i.bj, null
  br i1 %.not55.i, label %_apply_config.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bk = call i32 @data_get_int_converted(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.a) #9
  %.not56.i = icmp eq i32 %i.bk, 0
  br i1 %.not56.i, label %bb.ai, label %_apply_config.exit

bb.ai:                                            ; preds = %bb.ah
  %i.bl = load i64, ptr %i.a, align 8
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.049, i64 68
  store i32 %i.bm, ptr %i.bn, align 4
  br label %_apply_config.exit

_apply_config.exit:                               ; preds = %bb.k, %bb.l, %bb.m, %bb.p, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %0 = load i8, ptr %i.z, align 1, !range !8, !noundef !9
  %i.bo = trunc nuw i8 %0 to i1
  br i1 %i.bo, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %_apply_config.exit
  %i.bp = trunc nuw i8 %i.aa to i1
  br i1 %i.bp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bq = call i32 @get_log_level() #9
  %i.br = icmp sgt i32 %i.bq, 3
  br i1 %i.br, label %.sink.split, label %bb.av

bb.al:                                            ; preds = %bb.aj
  %i.bs = getelementptr inbounds nuw i8, ptr %.049, i64 61
  %i.bt = load i8, ptr %i.bs, align 1, !range !8, !noundef !9
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.am, label %bb.av

bb.am:                                            ; preds = %bb.al
  %i.bv = call i32 @get_log_level() #9
  %i.bw = icmp sgt i32 %i.bv, 3
  br i1 %i.bw, label %.sink.split, label %bb.av

bb.an:                                            ; preds = %_apply_config.exit
  %i.bx = call ptr @list_create(ptr noundef null) #9
  %i.by = getelementptr inbounds nuw i8, ptr %.049, i64 176
  store ptr %i.bx, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.049, i64 88
  %i.ca = call i32 @pthread_cond_init(ptr noundef nonnull %i.bz, ptr noundef null) #9 ; 2 uses
  %.not38 = icmp eq i32 %i.ca, 0
  br i1 %.not38, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cb = tail call ptr @__errno_location() #11
  store i32 %i.ca, ptr %i.cb, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rpc_queue_init) #10
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.cc = getelementptr inbounds nuw i8, ptr %.049, i64 136
  %i.cd = call i32 @pthread_mutex_init(ptr noundef nonnull %i.cc, ptr noundef null) #9 ; 2 uses
  %.not39 = icmp eq i32 %i.cd, 0
  br i1 %.not39, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ce = tail call ptr @__errno_location() #11
  store i32 %i.cd, ptr %i.ce, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rpc_queue_init) #10
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.cf = getelementptr inbounds nuw i8, ptr %.049, i64 59
  store i8 0, ptr %i.cf, align 1
  %i.cg = call i32 @get_log_level() #9
  %i.ch = icmp sgt i32 %i.cg, 3
  br i1 %i.ch, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ci = load ptr, ptr %i.ac, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.049, i64 74
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = zext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.049, i64 76
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.049, i64 72
  %i.cp = load i16, ptr %i.co, align 8
  %i.cq = zext i16 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.049, i64 58
  %i.cs = load i8, ptr %i.cr, align 2, !range !8, !noundef !9
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %.049, i64 64
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.049, i64 68
  %i.cx = load i32, ptr %i.cw, align 4
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef %i.ci, i32 noundef %i.cl, i32 noundef %i.cn, i32 noundef %i.cq, i32 noundef %i.ct, i32 noundef %i.cv, i32 noundef %i.cx) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.cy = load i16, ptr %.049, align 8
  %i.cz = zext i16 %i.cy to i32
  %i.da = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 17, ptr noundef nonnull @.str.7, i32 noundef %i.cz) #9 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.049, i64 80
  %i.dc = call i32 @threadpool_create(ptr noundef nonnull @_rpc_queue_worker, ptr noundef nonnull @.str.8, ptr noundef nonnull %.049, i1 noundef zeroext false, ptr noundef nonnull %i.e, ptr noundef nonnull %i.db, ptr noundef nonnull @__func__.rpc_queue_init) #9 ; 2 uses
  %.not40 = icmp eq i32 %i.dc, 0
  br i1 %.not40, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dd = call ptr @slurm_strerror(i32 noundef %i.dc) #9
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.rpc_queue_init, ptr noundef %i.dd) #10
  unreachable

.sink.split:                                      ; preds = %bb.am, %bb.ak
  %.str.2.sink = phi ptr [ @.str.2, %bb.ak ], [ @.str.3, %bb.am ]
  %i.de = load ptr, ptr %i.ac, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull %.str.2.sink, ptr noundef %i.de) #9
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.at, %bb.ak, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.df = getelementptr inbounds nuw i8, ptr %.049, i64 208 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 8            ; 2 uses
  %.not36 = icmp eq i16 %i.dg, 0
  br i1 %.not36, label %._crit_edge, label %bb.k, !llvm.loop !12

bb.aw:                                            ; preds = %._crit_edge
  call void @data_free(ptr noundef nonnull %.0.i) #9
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge, %bb.aw, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @xstrcasestr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @rpc_num2string(i16 noundef zeroext) local_unnamed_addr #2

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @list_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @threadpool_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_rpc_queue_worker(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 202 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.082 = phi i64 [ 0, %bb.a ], [ %.082.be, %.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.be, %.backedge ] ; 6 uses
  %i.p = load i16, ptr %i.b, align 2              ; 2 uses
  %.not = icmp ne i16 %i.p, 0
  %i.q = zext i16 %i.p to i32
  %i.r = icmp eq i32 %.0, %i.q
  %or.cond = select i1 %.not, i1 %i.r, i1 false
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %i.c, align 4              ; 2 uses
  %.not102 = icmp eq i32 %i.s, 0
  %i.t = zext i32 %i.s to i64
  %.not103 = icmp slt i64 %.082, %i.t
  %or.cond121 = select i1 %.not102, i1 true, i1 %.not103
  br i1 %or.cond121, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = call ptr @list_dequeue(ptr noundef %i.u) #9 ; 6 uses
  %.not104 = icmp eq ptr %i.v, null
  br i1 %.not104, label %.thread, label %bb.ai

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.088127 = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %bb.b ]
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 %i.a) #9
  %.not105 = icmp eq i32 %.0, 0
  br i1 %.not105, label %.critedge, label %bb.e
end_hunk_0
