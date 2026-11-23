Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/jemalloc?download=true
inline.NumInlined: 517
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0
@je_nhbins = external local_unnamed_addr global i32, align 4
@je_malloc_conf = weak dso_local local_unnamed_addr global ptr null, align 8, !guid !47
@je_malloc_conf_2_conf_harder = weak hidden local_unnamed_addr global ptr null, align 8, !guid !48
@je_ncpus = hidden local_unnamed_addr global i32 0, align 4, !guid !49
@je_manual_arena_base = hidden local_unnamed_addr global i32 0, align 4, !guid !50
@init_lock = internal global { { { %struct.mutex_prof_data_t, %union.pthread_mutex_t, %struct.atomic_b_t, [7 x i8] } } } zeroinitializer, align 8, !guid !51
@malloc_initializer = internal unnamed_addr global i64 0, align 8, !guid !52
@je_opt_lg_san_uaf_align = external local_unnamed_addr global i64, align 8
@je_opt_stats_print = external local_unnamed_addr global i8, align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"<jemalloc>: Error in atexit()\0A\00", align 1, !guid !53
@.str.66 = private unnamed_addr constant [64 x i8] c"<jemalloc>: HPA not supported in the current configuration; %s.\00", align 1, !guid !54
@.str.67 = private unnamed_addr constant [9 x i8] c"aborting\00", align 1, !guid !55
@.str.68 = private unnamed_addr constant [10 x i8] c"disabling\00", align 1, !guid !56
@.str.69 = private unnamed_addr constant [7 x i8] c"arenas\00", align 1, !guid !57
@a0 = internal unnamed_addr global ptr null, align 8, !guid !58
@malloc_conf_init_helper.opts_explain = internal unnamed_addr constant [5 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], align 16, !guid !59
@.str.70 = private unnamed_addr constant [40 x i8] c"string specified via --with-malloc-conf\00", align 1, !guid !60
@.str.71 = private unnamed_addr constant [53 x i8] c"string pointed to by the global variable malloc_conf\00", align 1, !guid !61
@.str.72 = private unnamed_addr constant [74 x i8] c"\22name\22 of the file referenced by the symbolic link named /etc/malloc.conf\00", align 1, !guid !62
@.str.73 = private unnamed_addr constant [46 x i8] c"value of the environment variable MALLOC_CONF\00", align 1, !guid !63
@.str.74 = private unnamed_addr constant [67 x i8] c"string pointed to by the global variable malloc_conf_2_conf_harder\00", align 1, !guid !64
@.str.75 = private unnamed_addr constant [40 x i8] c"<jemalloc>: malloc_conf #%u (%s): \22%s\22\0A\00", align 1, !guid !65
@.str.76 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !66
@.str.77 = private unnamed_addr constant [13 x i8] c"confirm_conf\00", align 1, !guid !67
@.str.78 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !guid !68
@.str.79 = private unnamed_addr constant [19 x i8] c"Invalid conf value\00", align 1, !guid !69
@.str.80 = private unnamed_addr constant [42 x i8] c"<jemalloc>: -- Set conf value: %.*s:%.*s\0A\00", align 1, !guid !70
@.str.81 = private unnamed_addr constant [11 x i8] c"abort_conf\00", align 1, !guid !71
@.str.82 = private unnamed_addr constant [14 x i8] c"trust_madvise\00", align 1, !guid !72
@.str.83 = private unnamed_addr constant [13 x i8] c"metadata_thp\00", align 1, !guid !73
@je_metadata_thp_mode_names = external local_unnamed_addr global [0 x ptr], align 8
@je_opt_metadata_thp = external local_unnamed_addr global i32, align 4
@.str.84 = private unnamed_addr constant [7 x i8] c"retain\00", align 1, !guid !74
@je_opt_retain = external local_unnamed_addr global i8, align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"dss\00", align 1, !guid !75
@je_dss_prec_names = external local_unnamed_addr global [0 x ptr], align 8
@.str.86 = private unnamed_addr constant [18 x i8] c"Error setting dss\00", align 1, !guid !76
@je_opt_dss = external local_unnamed_addr global ptr, align 8
@.str.87 = private unnamed_addr constant [8 x i8] c"narenas\00", align 1, !guid !77
@.str.88 = private unnamed_addr constant [8 x i8] c"default\00", align 1, !guid !78
@.str.89 = private unnamed_addr constant [24 x i8] c"Out-of-range conf value\00", align 1, !guid !79
@.str.90 = private unnamed_addr constant [14 x i8] c"narenas_ratio\00", align 1, !guid !80
@.str.91 = private unnamed_addr constant [11 x i8] c"bin_shards\00", align 1, !guid !81
@.str.92 = private unnamed_addr constant [32 x i8] c"Invalid settings for bin_shards\00", align 1, !guid !82
@.str.93 = private unnamed_addr constant [15 x i8] c"mutex_max_spin\00", align 1, !guid !83
@je_opt_mutex_max_spin = external local_unnamed_addr global i64, align 8
@.str.94 = private unnamed_addr constant [15 x i8] c"dirty_decay_ms\00", align 1, !guid !84
@je_opt_dirty_decay_ms = external local_unnamed_addr global i64, align 8
@.str.95 = private unnamed_addr constant [15 x i8] c"muzzy_decay_ms\00", align 1, !guid !85
@je_opt_muzzy_decay_ms = external local_unnamed_addr global i64, align 8
@.str.96 = private unnamed_addr constant [12 x i8] c"stats_print\00", align 1, !guid !86
@.str.97 = private unnamed_addr constant [17 x i8] c"stats_print_opts\00", align 1, !guid !87
@je_opt_stats_print_opts = external global [11 x i8], align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"stats_interval\00", align 1, !guid !88
@je_opt_stats_interval = external local_unnamed_addr global i64, align 8
@.str.99 = private unnamed_addr constant [20 x i8] c"stats_interval_opts\00", align 1, !guid !89
@je_opt_stats_interval_opts = external global [11 x i8], align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"junk\00", align 1, !guid !90
@.str.101 = private unnamed_addr constant [5 x i8] c"zero\00", align 1, !guid !91
@.str.102 = private unnamed_addr constant [7 x i8] c"tcache\00", align 1, !guid !92
@je_opt_tcache = external local_unnamed_addr global i8, align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"tcache_max\00", align 1, !guid !93
@je_opt_tcache_max = external local_unnamed_addr global i64, align 8
@.str.104 = private unnamed_addr constant [14 x i8] c"lg_tcache_max\00", align 1, !guid !94
@.str.105 = private unnamed_addr constant [21 x i8] c"lg_tcache_nslots_mul\00", align 1, !guid !95
@je_opt_lg_tcache_nslots_mul = external local_unnamed_addr global i64, align 8
@.str.106 = private unnamed_addr constant [24 x i8] c"tcache_nslots_small_min\00", align 1, !guid !96
@je_opt_tcache_nslots_small_min = external local_unnamed_addr global i32, align 4
@.str.107 = private unnamed_addr constant [24 x i8] c"tcache_nslots_small_max\00", align 1, !guid !97
@je_opt_tcache_nslots_small_max = external local_unnamed_addr global i32, align 4
@.str.108 = private unnamed_addr constant [20 x i8] c"tcache_nslots_large\00", align 1, !guid !98
@je_opt_tcache_nslots_large = external local_unnamed_addr global i32, align 4
@.str.109 = private unnamed_addr constant [21 x i8] c"tcache_gc_incr_bytes\00", align 1, !guid !99
@je_opt_tcache_gc_incr_bytes = external local_unnamed_addr global i64, align 8
@.str.110 = private unnamed_addr constant [22 x i8] c"tcache_gc_delay_bytes\00", align 1, !guid !100
@je_opt_tcache_gc_delay_bytes = external local_unnamed_addr global i64, align 8
@.str.111 = private unnamed_addr constant [26 x i8] c"lg_tcache_flush_small_div\00", align 1, !guid !101
@je_opt_lg_tcache_flush_small_div = external local_unnamed_addr global i32, align 4
@.str.112 = private unnamed_addr constant [26 x i8] c"lg_tcache_flush_large_div\00", align 1, !guid !102
@je_opt_lg_tcache_flush_large_div = external local_unnamed_addr global i32, align 4
@.str.113 = private unnamed_addr constant [19 x i8] c"oversize_threshold\00", align 1, !guid !103
@je_opt_oversize_threshold = external local_unnamed_addr global i64, align 8
@.str.114 = private unnamed_addr constant [25 x i8] c"lg_extent_max_active_fit\00", align 1, !guid !104
@je_opt_lg_extent_max_active_fit = external local_unnamed_addr global i64, align 8
@.str.115 = private unnamed_addr constant [13 x i8] c"percpu_arena\00", align 1, !guid !105
@je_percpu_arena_mode_names = external local_unnamed_addr global [0 x ptr], align 8
@.str.116 = private unnamed_addr constant [18 x i8] c"background_thread\00", align 1, !guid !106
@je_opt_background_thread = external local_unnamed_addr global i8, align 1
@.str.117 = private unnamed_addr constant [23 x i8] c"max_background_threads\00", align 1, !guid !107
@je_opt_max_background_threads = external local_unnamed_addr global i64, align 8
@.str.119 = private unnamed_addr constant [19 x i8] c"hpa_slab_max_alloc\00", align 1, !guid !108
@.str.120 = private unnamed_addr constant [27 x i8] c"hpa_hugification_threshold\00", align 1, !guid !109
@.str.121 = private unnamed_addr constant [33 x i8] c"hpa_hugification_threshold_ratio\00", align 1, !guid !110
@.str.122 = private unnamed_addr constant [20 x i8] c"hpa_hugify_delay_ms\00", align 1, !guid !111
@.str.123 = private unnamed_addr constant [26 x i8] c"hpa_min_purge_interval_ms\00", align 1, !guid !112
@.str.124 = private unnamed_addr constant [15 x i8] c"hpa_dirty_mult\00", align 1, !guid !113
@.str.126 = private unnamed_addr constant [16 x i8] c"hpa_sec_nshards\00", align 1, !guid !114
@.str.127 = private unnamed_addr constant [18 x i8] c"hpa_sec_max_alloc\00", align 1, !guid !115
@.str.128 = private unnamed_addr constant [18 x i8] c"hpa_sec_max_bytes\00", align 1, !guid !116
@.str.129 = private unnamed_addr constant [26 x i8] c"hpa_sec_bytes_after_flush\00", align 1, !guid !117
@.str.130 = private unnamed_addr constant [25 x i8] c"hpa_sec_batch_fill_extra\00", align 1, !guid !118
@.str.131 = private unnamed_addr constant [11 x i8] c"slab_sizes\00", align 1, !guid !119
@.str.132 = private unnamed_addr constant [32 x i8] c"Invalid settings for slab_sizes\00", align 1, !guid !120
@je_thp_mode_names = external local_unnamed_addr global [0 x ptr], align 8
@je_opt_thp = external local_unnamed_addr global i32, align 4
@.str.134 = private unnamed_addr constant [13 x i8] c"zero_realloc\00", align 1, !guid !121
@.str.135 = private unnamed_addr constant [16 x i8] c"san_guard_small\00", align 1, !guid !122
@je_opt_san_guard_small = external local_unnamed_addr global i64, align 8
@.str.136 = private unnamed_addr constant [16 x i8] c"san_guard_large\00", align 1, !guid !123
@je_opt_san_guard_large = external local_unnamed_addr global i64, align 8
@.str.137 = private unnamed_addr constant [18 x i8] c"Invalid conf pair\00", align 1, !guid !124
@had_conf_error = internal unnamed_addr global i1 false, align 1
@je_log_init_done = external local_unnamed_addr global %struct.atomic_b_t, align 1
@.str.138 = private unnamed_addr constant [20 x i8] c"/etc/je_malloc.conf\00", align 1, !guid !125
@.str.139 = private unnamed_addr constant [15 x i8] c"JE_MALLOC_CONF\00", align 1, !guid !126
@.str.140 = private unnamed_addr constant [39 x i8] c"<jemalloc>: Conf string ends with key\0A\00", align 1, !guid !127
@.str.141 = private unnamed_addr constant [35 x i8] c"<jemalloc>: Malformed conf string\0A\00", align 1, !guid !128
@.str.142 = private unnamed_addr constant [41 x i8] c"<jemalloc>: Conf string ends with comma\0A\00", align 1, !guid !129
@.str.143 = private unnamed_addr constant [27 x i8] c"<jemalloc>: %s: %.*s:%.*s\0A\00", align 1, !guid !130
@.str.144 = private unnamed_addr constant [14 x i8] c"experimental_\00", align 1, !guid !131
@je_opt_prof_leak_error = external local_unnamed_addr global i8, align 1
@je_opt_prof_final = external local_unnamed_addr global i8, align 1
@.str.145 = private unnamed_addr constant [52 x i8] c"<jemalloc>: prof_leak_error is set w/o prof_final.\0A\00", align 1, !guid !132
@.str.146 = private unnamed_addr constant [72 x i8] c"<jemalloc>: Abort (abort_conf:true) on invalid conf value (see above).\0A\00", align 1, !guid !133
@je_background_thread_enabled_state = external local_unnamed_addr global %struct.atomic_b_t, align 1
@je_tcache_maxclass = external local_unnamed_addr global i64, align 8
@je_tcache_bin_info = external local_unnamed_addr global ptr, align 8
@je_sz_index2size_tab = external local_unnamed_addr global [235 x i64], align 16
@je_sz_size2index_tab = external local_unnamed_addr global [0 x i8], align 1
@.str.147 = private unnamed_addr constant [70 x i8] c"<jemalloc>: error in background thread creation for arena %u. Abort.\0A\00", align 1, !guid !134
@je_tsd_tls = external thread_local(initialexec) global %struct.tsd_s, align 8
@je_tcaches = external local_unnamed_addr global ptr, align 8
@.str.153 = private unnamed_addr constant [37 x i8] c"<jemalloc>: invalid tcache id (%u).\0A\00", align 1, !guid !135
@je_sz_large_pad = external local_unnamed_addr global i64, align 8
@.str.163 = private unnamed_addr constant [61 x i8] c"Called realloc(non-null-ptr, 0) with zero_realloc:abort set\0A\00", align 1, !guid !136
@je_tsd_booted = external local_unnamed_addr global i8, align 1
@.str.164 = private unnamed_addr constant [83 x i8] c"<jemalloc>: Number of CPUs detected is not deterministic. Per-CPU arena disabled.\0A\00", align 1, !guid !137
@.str.165 = private unnamed_addr constant [39 x i8] c"<jemalloc>: Error in pthread_atfork()\0A\00", align 1, !guid !138
@.str.166 = private unnamed_addr constant [73 x i8] c"<jemalloc>: perCPU arena getcpu() not available. Setting narenas to %u.\0A\00", align 1, !guid !139
@.str.167 = private unnamed_addr constant [54 x i8] c"<jemalloc>: narenas w/ percpuarena beyond limit (%d)\0A\00", align 1, !guid !140
@.str.168 = private unnamed_addr constant [113 x i8] c"<jemalloc>: invalid configuration -- per physical CPU arena with odd number (%u) of CPUs (no hyper threading?).\0A\00", align 1, !guid !141
@.str.169 = private unnamed_addr constant [44 x i8] c"<jemalloc>: Reducing narenas to limit (%d)\0A\00", align 1, !guid !142
@malloc_slow_flags = internal unnamed_addr global i8 0, align 1, !guid !143
@je_arena_bin_offsets = external local_unnamed_addr global [39 x i32], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @jemalloc_constructor, ptr null }], !guid !144

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @default_junk_alloc(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) #0 !guid !276 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 -91, i64 %1, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @default_junk_free(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) #0 !guid !277 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 90, i64 %1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_a0malloc(i64 noundef %0) local_unnamed_addr #1 !guid !278 {
bb.a:
  %i.a = tail call fastcc ptr @a0ialloc(i64 noundef %0, i1 noundef zeroext false, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @a0ialloc(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #1 !guid !279 {
bb.a:
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %4 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %5 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !14
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %malloc_init_a0.exit, label %malloc_init_a0.exit.thread, !prof !145

malloc_init_a0.exit:                              ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard_a0()
  br i1 %i.c, label %iallocztm.exit, label %malloc_init_a0.exit.thread, !prof !146

malloc_init_a0.exit.thread:                       ; preds = %bb.a, %malloc_init_a0.exit
  %i.d = icmp ult i64 %0, 4097
  br i1 %i.d, label %bb.b, label %bb.c, !prof !147

bb.b:                                             ; preds = %malloc_init_a0.exit.thread
  %i.e = add nuw nsw i64 %0, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !148
  %i.i = zext i8 %i.h to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %malloc_init_a0.exit.thread
  %i.j = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.j, label %sz_size2index.exit, label %bb.d, !prof !145

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %0, 1
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 2 uses
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = sub nuw nsw i64 60, %i.m
  %i.p = add nsw i64 %0, -1
  %i.q = lshr i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 3
  %i.t = shl nuw nsw i32 %i.n, 2
  %reass.sub = sub nsw i32 %i.s, %i.t
  %i.u = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi i32 [ %i.i, %bb.b ], [ %i.u, %bb.d ], [ 235, %bb.c ]
  %i.v = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %bb.f, !prof !145

bb.e:                                             ; preds = %sz_size2index.exit
  %i.x = tail call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %sz_size2index.exit
  %.0.i10 = phi ptr [ %i.x, %bb.e ], [ %i.v, %sz_size2index.exit ]
  %i.y = tail call ptr @je_arena_malloc_hard(ptr noundef null, ptr noundef %.0.i10, i64 noundef %0, i32 noundef %.0.i, i1 noundef zeroext %1) #20 ; 4 uses
  %.not.i = icmp ne ptr %i.y, null
  %or.cond.i.not = select i1 %2, i1 %.not.i, i1 false, !prof !149
  br i1 %or.cond.i.not, label %bb.g, label %iallocztm.exit, !prof !149

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef null, ptr noundef nonnull %4, i64 noundef %i.z)
  %i.aa = load ptr, ptr %5, align 8, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.val = load i64, ptr %i.aa, align 8, !tbaa !159
  %i.ab = and i64 %.val, 4095
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ab
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #20
  %i.ae = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef null, ptr noundef nonnull %3, i64 noundef %i.z)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.ae, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.af = and i64 %.fca.0.extract.i.i, 4294967295
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !160
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.aj = atomicrmw add ptr %i.ai, i64 %i.ah monotonic, align 8 ; 0 uses
  br label %iallocztm.exit

iallocztm.exit:                                   ; preds = %bb.g, %bb.f, %malloc_init_a0.exit
  %.0 = phi ptr [ null, %malloc_init_a0.exit ], [ %i.y, %bb.f ], [ %i.y, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @je_a0dalloc(ptr noundef %0) local_unnamed_addr #1 !guid !280 {
bb.a:
  tail call fastcc void @a0idalloc(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @a0idalloc(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 !guid !281 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %4 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %5 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  br i1 %1, label %bb.b, label %.idalloctm.exit_crit_edge

.idalloctm.exit_crit_edge:                        ; preds = %bb.a
  %.pre = ptrtoint ptr %0 to i64
  br label %idalloctm.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef null, ptr noundef nonnull %4, i64 noundef %i.a)
  %i.b = load ptr, ptr %5, align 8, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.val = load i64, ptr %i.b, align 8, !tbaa !159
  %i.c = and i64 %.val, 4095
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.c
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #20
  %i.f = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef null, ptr noundef nonnull %3, i64 noundef %i.a)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.g = and i64 %.fca.0.extract.i.i, 4294967295
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !160
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.k = atomicrmw sub ptr %i.j, i64 %i.i monotonic, align 8 ; 0 uses
  br label %idalloctm.exit

idalloctm.exit:                                   ; preds = %.idalloctm.exit_crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %.idalloctm.exit_crit_edge ], [ %i.a, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #20
  %i.l = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef null, ptr noundef nonnull %2, i64 noundef %.pre-phi)
  %.fca.1.extract.i.i1 = extractvalue { i64, i32 } %i.l, 1
  %i.m = and i32 %.fca.1.extract.i.i1, 256
  %.not.i = icmp eq i32 %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !145

bb.c:                                             ; preds = %idalloctm.exit
  call void @je_arena_dalloc_small(ptr noundef null, ptr noundef %0) #20
  br label %arena_dalloc_no_tcache.exit

bb.d:                                             ; preds = %idalloctm.exit
  call fastcc void @arena_dalloc_large_no_tcache(ptr noundef null, ptr noundef %0)
  br label %arena_dalloc_no_tcache.exit

arena_dalloc_no_tcache.exit:                      ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_bootstrap_malloc(i64 noundef %0) local_unnamed_addr #1 !guid !282 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !145

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 1, %bb.b ], [ %0, %bb.a ]       ; 6 uses
  %i.b = load i32, ptr @je_malloc_init_state, align 4, !tbaa !14
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %malloc_init_a0.exit.i, label %malloc_init_a0.exit.thread.i, !prof !145

malloc_init_a0.exit.i:                            ; preds = %bb.c
  %i.d = tail call fastcc zeroext i1 @malloc_init_hard_a0()
  br i1 %i.d, label %a0ialloc.exit, label %malloc_init_a0.exit.thread.i, !prof !146

malloc_init_a0.exit.thread.i:                     ; preds = %malloc_init_a0.exit.i, %bb.c
  %i.e = icmp ult i64 %.0, 4097
  br i1 %i.e, label %bb.d, label %bb.e, !prof !147

bb.d:                                             ; preds = %malloc_init_a0.exit.thread.i
  %i.f = add nuw nsw i64 %.0, 7
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !148
  %i.j = zext i8 %i.i to i32
  br label %sz_size2index.exit.i

bb.e:                                             ; preds = %malloc_init_a0.exit.thread.i
  %i.k = icmp ugt i64 %.0, 8070450532247928832
  br i1 %i.k, label %sz_size2index.exit.i, label %bb.f, !prof !145

bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw i64 %.0, 1
  %i.m = add i64 %i.l, -1
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.m, i1 true) ; 2 uses
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = sub nuw nsw i64 60, %i.n
  %i.q = add nsw i64 %.0, -1
  %i.r = lshr i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 3
  %i.u = shl nuw nsw i32 %i.o, 2
  %reass.sub = sub nsw i32 %i.t, %i.u
  %i.v = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.j, %bb.d ], [ %i.v, %bb.f ], [ 235, %bb.e ]
  %i.w = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.h, !prof !145

bb.g:                                             ; preds = %sz_size2index.exit.i
  %i.y = tail call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %sz_size2index.exit.i
  %.0.i10.i = phi ptr [ %i.y, %bb.g ], [ %i.w, %sz_size2index.exit.i ]
  %i.z = tail call ptr @je_arena_malloc_hard(ptr noundef null, ptr noundef %.0.i10.i, i64 noundef %.0, i32 noundef %.0.i.i, i1 noundef zeroext false) #20
  br label %a0ialloc.exit

a0ialloc.exit:                                    ; preds = %malloc_init_a0.exit.i, %bb.h
  %.0.i = phi ptr [ null, %malloc_init_a0.exit.i ], [ %i.z, %bb.h ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_bootstrap_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 !guid !283 {
bb.a:
  %i.a = mul i64 %1, %0                           ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !145

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 1, %bb.b ], [ %i.a, %bb.a ]     ; 6 uses
  %i.c = load i32, ptr @je_malloc_init_state, align 4, !tbaa !14
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %malloc_init_a0.exit.i, label %malloc_init_a0.exit.thread.i, !prof !145

malloc_init_a0.exit.i:                            ; preds = %bb.c
  %i.e = tail call fastcc zeroext i1 @malloc_init_hard_a0()
  br i1 %i.e, label %a0ialloc.exit, label %malloc_init_a0.exit.thread.i, !prof !146

malloc_init_a0.exit.thread.i:                     ; preds = %malloc_init_a0.exit.i, %bb.c
  %i.f = icmp ult i64 %.0, 4097
  br i1 %i.f, label %bb.d, label %bb.e, !prof !147

bb.d:                                             ; preds = %malloc_init_a0.exit.thread.i
  %i.g = add nuw nsw i64 %.0, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !148
  %i.k = zext i8 %i.j to i32
  br label %sz_size2index.exit.i

bb.e:                                             ; preds = %malloc_init_a0.exit.thread.i
  %i.l = icmp ugt i64 %.0, 8070450532247928832
  br i1 %i.l, label %sz_size2index.exit.i, label %bb.f, !prof !145

bb.f:                                             ; preds = %bb.e
  %i.m = shl nuw i64 %.0, 1
  %i.n = add i64 %i.m, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.n, i1 true) ; 2 uses
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = sub nuw nsw i64 60, %i.o
  %i.r = add nsw i64 %.0, -1
  %i.s = lshr i64 %i.r, %i.q
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 3
  %i.v = shl nuw nsw i32 %i.p, 2
  %reass.sub = sub nsw i32 %i.u, %i.v
  %i.w = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.k, %bb.d ], [ %i.w, %bb.f ], [ 235, %bb.e ]
  %i.x = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.h, !prof !145

bb.g:                                             ; preds = %sz_size2index.exit.i
  %i.z = tail call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %sz_size2index.exit.i
  %.0.i10.i = phi ptr [ %i.z, %bb.g ], [ %i.x, %sz_size2index.exit.i ]
  %i.aa = tail call ptr @je_arena_malloc_hard(ptr noundef null, ptr noundef %.0.i10.i, i64 noundef %.0, i32 noundef %.0.i.i, i1 noundef zeroext true) #20
  br label %a0ialloc.exit

a0ialloc.exit:                                    ; preds = %malloc_init_a0.exit.i, %bb.h
  %.0.i = phi ptr [ null, %malloc_init_a0.exit.i ], [ %i.aa, %bb.h ]
  ret ptr %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden void @je_bootstrap_free(ptr noundef %0) local_unnamed_addr #1 !guid !284 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %a0idalloc.exit, label %bb.b, !prof !145

bb.b:                                             ; preds = %bb.a
  %.pre.i = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %1) #20
  %i.b = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef null, ptr noundef nonnull %1, i64 noundef %.pre.i)
  %.fca.1.extract.i.i1.i = extractvalue { i64, i32 } %i.b, 1
  %i.c = and i32 %.fca.1.extract.i.i1.i, 256
  %.not.i.i = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !145

bb.c:                                             ; preds = %bb.b
  call void @je_arena_dalloc_small(ptr noundef null, ptr noundef nonnull %0) #20
  br label %a0idalloc.exit

bb.d:                                             ; preds = %bb.b
  call fastcc void @arena_dalloc_large_no_tcache(ptr noundef null, ptr noundef nonnull %0)
  br label %a0idalloc.exit

a0idalloc.exit:                                   ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden void @je_arena_set(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 !guid !285 {
atomic_store_p.exit:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.a
  store atomic ptr %1, ptr %i.b release, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden i32 @je_narenas_total_get() local_unnamed_addr #3 !guid !286 {
atomic_load_u.exit:
  %i.a = load atomic i32, ptr @narenas_total acquire, align 4
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 !guid !287 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 64)) #20
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_arenas_lock) #20
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 104) monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %atomic_store_b.exit.i, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 56), align 8, !tbaa !165
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 56), align 8, !tbaa !165
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 48), align 8, !tbaa !166
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 48), align 8, !tbaa !166
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 40), align 8, !tbaa !167
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 40), align 8, !tbaa !167
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.b, %bb.c
  %i.g = icmp ugt i32 %1, 4094
  br i1 %i.g, label %arena_init_locked.exit.thread, label %bb.d

arena_init_locked.exit.thread:                    ; preds = %malloc_mutex_lock.exit
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 104) monotonic, align 8
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 64)) #20 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %malloc_mutex_lock.exit
  %i.i = load atomic i32, ptr @narenas_total acquire, align 4
  %i.j = icmp eq i32 %1, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = atomicrmw add ptr @narenas_total, i32 1 release, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %arena_init_locked.exit, !prof !145

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @je_arena_new(ptr noundef %0, i32 noundef %1, ptr noundef %2) #20, !inline_history !1
  br label %arena_init_locked.exit

arena_init_locked.exit:                           ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.p, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 104) monotonic, align 8
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 64)) #20 ; 0 uses
  %i.r = icmp eq i32 %1, 0
  br i1 %i.r, label %arena_new_create_background_thread.exit, label %bb.h

bb.h:                                             ; preds = %arena_init_locked.exit.thread, %arena_init_locked.exit
  %.0.i13 = phi ptr [ null, %arena_init_locked.exit.thread ], [ %.0.i, %arena_init_locked.exit ] ; 2 uses
  %i.s = tail call zeroext i1 @je_arena_is_huge(i32 noundef %1) #20
  br i1 %i.s, label %arena_new_create_background_thread.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call zeroext i1 @je_background_thread_create(ptr noundef %0, i32 noundef %1) #20
  br i1 %i.t, label %bb.j, label %arena_new_create_background_thread.exit

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.147, i32 noundef %1) #20
  tail call void @abort() #21
  unreachable

arena_new_create_background_thread.exit:          ; preds = %arena_init_locked.exit, %bb.h, %bb.i
  %.0.i14 = phi ptr [ %.0.i, %arena_init_locked.exit ], [ %.0.i13, %bb.h ], [ %.0.i13, %bb.i ]
  ret ptr %.0.i14
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_migrate(ptr noundef initializes((144, 152)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !guid !288 {
bb.a:
  tail call void @je_arena_nthreads_dec(ptr noundef %1, i1 noundef zeroext false) #20
  tail call void @je_arena_nthreads_inc(ptr noundef %2, i1 noundef zeroext false) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %2, ptr %i.a, align 8, !tbaa !169
  %i.b = tail call i32 @je_arena_nthreads_get(ptr noundef %1, i1 noundef zeroext false) #20
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @je_arena_nthreads_dec(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @je_arena_nthreads_inc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @je_arena_nthreads_get(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @je_arena_decay(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_choose_hard(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 !guid !290 {
bb.a:
  %i.a = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !14
  %i.b = icmp ugt i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sched_getcpu() #20        ; 3 uses
  %i.d = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !14
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %percpu_arena_choose.exit, label %bb.c
end_hunk_0
begin_hunk_1_@arena_bind:arena_get.exit
  %i.by = urem i32 %i.g, %i.bx
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 %i.bz, ptr %i.ca, align 2, !tbaa !148
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 740), align 4, !tbaa !220
  %i.cc = urem i32 %i.g, %i.cb
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 179
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !148
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 780), align 4, !tbaa !220
  %i.cg = urem i32 %i.g, %i.cf
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 %i.ch, ptr %i.ci, align 4, !tbaa !148
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 820), align 4, !tbaa !220
  %i.ck = urem i32 %i.g, %i.cj
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !148
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 860), align 4, !tbaa !220
  %i.co = urem i32 %i.g, %i.cn
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 182
  store i8 %i.cp, ptr %i.cq, align 2, !tbaa !148
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 900), align 4, !tbaa !220
  %i.cs = urem i32 %i.g, %i.cr
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 183
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !148
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 940), align 4, !tbaa !220
  %i.cw = urem i32 %i.g, %i.cv
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.cx, ptr %i.cy, align 8, !tbaa !148
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 980), align 4, !tbaa !220
  %i.da = urem i32 %i.g, %i.cz
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !148
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1020), align 4, !tbaa !220
  %i.de = urem i32 %i.g, %i.dd
  %i.df = trunc i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i8 %i.df, ptr %i.dg, align 2, !tbaa !148
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1060), align 4, !tbaa !220
  %i.di = urem i32 %i.g, %i.dh
  %i.dj = trunc i32 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 187
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !148
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1100), align 4, !tbaa !220
  %i.dm = urem i32 %i.g, %i.dl
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i8 %i.dn, ptr %i.do, align 4, !tbaa !148
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1140), align 4, !tbaa !220
  %i.dq = urem i32 %i.g, %i.dp
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 189
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !148
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1180), align 4, !tbaa !220
  %i.du = urem i32 %i.g, %i.dt
  %i.dv = trunc i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i8 %i.dv, ptr %i.dw, align 2, !tbaa !148
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1220), align 4, !tbaa !220
  %i.dy = urem i32 %i.g, %i.dx
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 191
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !148
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1260), align 4, !tbaa !220
  %i.ec = urem i32 %i.g, %i.eb
  %i.ed = trunc i32 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 %i.ed, ptr %i.ee, align 8, !tbaa !148
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1300), align 4, !tbaa !220
  %i.eg = urem i32 %i.g, %i.ef
  %i.eh = trunc i32 %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !148
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1340), align 4, !tbaa !220
  %i.ek = urem i32 %i.g, %i.ej
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 194
  store i8 %i.el, ptr %i.em, align 2, !tbaa !148
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1380), align 4, !tbaa !220
  %i.eo = urem i32 %i.g, %i.en
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 195
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !148
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1420), align 4, !tbaa !220
  %i.es = urem i32 %i.g, %i.er
  %i.et = trunc i32 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 %i.et, ptr %i.eu, align 4, !tbaa !148
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1460), align 4, !tbaa !220
  %i.ew = urem i32 %i.g, %i.ev
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 197
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !148
  %i.ez = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1500), align 4, !tbaa !220
  %i.fa = urem i32 %i.g, %i.ez
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 198
  store i8 %i.fb, ptr %i.fc, align 2, !tbaa !148
  %i.fd = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1540), align 4, !tbaa !220
  %i.fe = urem i32 %i.g, %i.fd
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 199
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !148
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_iarena_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 !guid !292 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 78928
  %.val = load i32, ptr %i.c, align 8, !tbaa !216
  %i.d = zext i32 %.val to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e acquire, align 8
  tail call void @je_arena_nthreads_dec(ptr noundef %i.f, i1 noundef zeroext true) #20
  store ptr null, ptr %i.a, align 8, !tbaa !169
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 !guid !293 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 78928
  %.val = load i32, ptr %i.c, align 8, !tbaa !216
  %i.d = zext i32 %.val to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e acquire, align 8
  tail call void @je_arena_nthreads_dec(ptr noundef %i.f, i1 noundef zeroext false) #20
  store ptr null, ptr %i.a, align 8, !tbaa !169
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline nounwind uwtable
define hidden ptr @je_malloc_default(i64 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 !guid !294 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 5 uses
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load i8, ptr %i.e, align 8, !tbaa !148
  %.not.i76 = icmp eq i8 %i.f, 0
  br i1 %.not.i76, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !147

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !148
  %i.h = icmp eq i8 %.pre, 0
  br i1 %i.h, label %tsd_fetch_impl.exit.thread, label %bb.v, !prof !221

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i77276 = phi ptr [ %i.g, %tsd_fetch_impl.exit ], [ %i.d, %bb.a ] ; 16 uses
  %i.i = icmp ult i64 %0, 4097
  br i1 %i.i, label %bb.b, label %bb.c, !prof !147

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.j = add nuw nsw i64 %0, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !148
  %i.n = zext i8 %i.m to i32
  br label %sz_size2index.exit.i

bb.c:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.o = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.o, label %aligned_usize_get.exit.i.thread, label %bb.d, !prof !145

bb.d:                                             ; preds = %bb.c
  %i.p = shl nuw i64 %0, 1
  %i.q = add i64 %i.p, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.q, i1 true) ; 2 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = sub nuw nsw i64 60, %i.r
  %i.u = add nsw i64 %0, -1
  %i.v = lshr i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 3
  %i.y = shl nuw nsw i32 %i.s, 2
  %reass.sub263 = sub nsw i32 %i.x, %i.y
  %i.z = add nsw i32 %reass.sub263, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.d, %bb.b
  %.0.i50.i = phi i32 [ %i.n, %bb.b ], [ %i.z, %bb.d ] ; 7 uses
  %i.aa = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.aa, label %aligned_usize_get.exit.i.thread, label %iallocztm.exit.i39, !prof !222

iallocztm.exit.i39:                               ; preds = %sz_size2index.exit.i
  %i.ab = zext nneg i32 %.0.i50.i to i64          ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !160 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 872 ; 3 uses
  %i.af = icmp samesign ult i64 %0, 14337
  br i1 %i.af, label %bb.e, label %bb.l, !prof !147

bb.e:                                             ; preds = %iallocztm.exit.i39
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 880
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ab ; 8 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !227 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !228 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.an = load i16, ptr %i.am, align 8, !tbaa !229 ; 2 uses
  %i.ao = trunc i64 %i.ak to i16
  %.not.i24.i56 = icmp eq i16 %i.an, %i.ao
  br i1 %.not.i24.i56, label %bb.g, label %bb.f, !prof !145

bb.f:                                             ; preds = %bb.e
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !227
  br label %cache_bin_alloc_impl.exit.i57.thread

bb.g:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !230
  %.not21.i.i66 = icmp eq i16 %i.aq, %i.an
  br i1 %.not21.i.i66, label %cache_bin_alloc_impl.exit.i57, label %bb.h, !prof !145

bb.h:                                             ; preds = %bb.g
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !227
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = trunc i64 %i.ar to i16
  store i16 %i.as, ptr %i.am, align 8, !tbaa !229
  br label %cache_bin_alloc_impl.exit.i57.thread

cache_bin_alloc_impl.exit.i57:                    ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.at = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i77276, ptr noundef null) ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.thread, label %bb.i, !prof !145

bb.i:                                             ; preds = %cache_bin_alloc_impl.exit.i57
  %i.av = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.ab
  %.val = load i16, ptr %i.aw, align 2, !tbaa !234
  %i.ax = icmp eq i16 %.val, 0
  br i1 %i.ax, label %bb.j, label %bb.k, !prof !145

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.at, i64 noundef range(i64 0, 14337) %0, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit.i57, %bb.j
  %.0.i22.i62.ph = phi ptr [ %i.ay, %bb.j ], [ null, %cache_bin_alloc_impl.exit.i57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit70

bb.k:                                             ; preds = %bb.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ah, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  %i.az = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.at, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ah, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #20
  %i.ba = load i8, ptr %i.a, align 1, !tbaa !235, !range !236, !noundef !237
  %.not260 = icmp eq i8 %i.ba, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.not260, label %aligned_usize_get.exit.i.thread, label %cache_bin_alloc_impl.exit.i57.thread

cache_bin_alloc_impl.exit.i57.thread:             ; preds = %bb.h, %bb.f, %bb.k
  %.131.i.i65 = phi ptr [ %i.az, %bb.k ], [ %i.aj, %bb.f ], [ %i.aj, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !238
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !238
  br label %imalloc_no_sample.exit70

bb.l:                                             ; preds = %iallocztm.exit.i39
  %i.be = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !160
  %.not24.i.i41 = icmp ugt i64 %0, %i.be
  br i1 %.not24.i.i41, label %bb.r, label %bb.m, !prof !145

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 880
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.ab ; 7 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !227 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !228
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 8, !tbaa !229 ; 2 uses
  %i.bn = trunc i64 %i.bj to i16
  %.not.i26.i42 = icmp eq i16 %i.bm, %i.bn
  br i1 %.not.i26.i42, label %bb.o, label %bb.n, !prof !145

bb.n:                                             ; preds = %bb.m
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !227
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bp = load i16, ptr %i.bo, align 4, !tbaa !230
  %.not21.i28.i55 = icmp eq i16 %i.bp, %i.bm
  br i1 %.not21.i28.i55, label %cache_bin_alloc_impl.exit29.i43, label %bb.p, !prof !145

bb.p:                                             ; preds = %bb.o
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !227
  %i.bq = ptrtoint ptr %i.bk to i64
  %i.br = trunc i64 %i.bq to i16
  store i16 %i.br, ptr %i.bl, align 8, !tbaa !229
  br label %bb.q

cache_bin_alloc_impl.exit29.i43:                  ; preds = %bb.o
  %i.bs = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i77276, ptr noundef null) ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %aligned_usize_get.exit.i.thread, label %sz_s2u.exit.i48, !prof !145

sz_s2u.exit.i48:                                  ; preds = %cache_bin_alloc_impl.exit29.i43
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.bg, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  %i.bu = shl nuw i64 %0, 1
  %i.bv = add i64 %i.bu, -1
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bv, i1 true) ; 2 uses
  %notmask.i.i45 = ashr exact i64 -1152921504606846976, %i.bw
  %i.bx = lshr i64 1152921504606846975, %i.bw
  %i.by = add nuw nsw i64 %0, %i.bx
  %i.bz = and i64 %i.by, %notmask.i.i45
  %i.ca = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.bs, i64 noundef %i.bz, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit70

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !238
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !238
  br label %imalloc_no_sample.exit70

bb.r:                                             ; preds = %bb.l
  %i.ce = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i77276, ptr noundef null, i64 noundef %0, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit70

imalloc_no_sample.exit70:                         ; preds = %bb.r, %.thread, %cache_bin_alloc_impl.exit.i57.thread, %bb.q, %sz_s2u.exit.i48
  %.0.i21.i53 = phi ptr [ %i.ce, %bb.r ], [ %.0.i22.i62.ph, %.thread ], [ %.131.i.i65, %cache_bin_alloc_impl.exit.i57.thread ], [ %i.bi, %bb.q ], [ %i.ca, %sz_s2u.exit.i48 ] ; 2 uses
  %i.cf = icmp eq ptr %.0.i21.i53, null
  br i1 %i.cf, label %aligned_usize_get.exit.i.thread, label %bb.s, !prof !239

bb.s:                                             ; preds = %imalloc_no_sample.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !242
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 840 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !243
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !244
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !245
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 848
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !246
  %i.co = load i64, ptr %i.cg, align 8, !tbaa !160 ; 2 uses
  %i.cp = add i64 %i.co, %i.ad
  store i64 %i.cp, ptr %i.cg, align 8, !tbaa !160
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !160
  %i.cr = sub i64 %i.cq, %i.co
  %i.cs = icmp ult i64 %i.ad, %i.cr
  br i1 %i.cs, label %bb.u, label %bb.t, !prof !147

bb.t:                                             ; preds = %bb.s
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %2) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %imalloc.exit

aligned_usize_get.exit.i.thread:                  ; preds = %cache_bin_alloc_impl.exit29.i43, %bb.k, %bb.c, %sz_size2index.exit.i, %imalloc_no_sample.exit70
  %.sroa.11.1 = phi i64 [ %i.ad, %imalloc_no_sample.exit70 ], [ 0, %bb.c ], [ 0, %sz_size2index.exit.i ], [ %i.ad, %bb.k ], [ %i.ad, %cache_bin_alloc_impl.exit29.i43 ]
  %i.ct = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.ct, align 4, !tbaa !14
  br label %imalloc.exit

bb.v:                                             ; preds = %tsd_fetch_impl.exit
  %i.cu = load i32, ptr @je_malloc_init_state, align 4, !tbaa !14
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.x, label %bb.w, !prof !147

bb.w:                                             ; preds = %bb.v
  %i.cw = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.cw, label %imalloc_init_check.exit, label %bb.x, !prof !247

imalloc_init_check.exit:                          ; preds = %bb.w
  %i.cx = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.cx, align 4, !tbaa !14
  br label %imalloc.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cy = load i8, ptr @je_opt_zero, align 1, !range !236
  %i.cz = trunc nuw i8 %i.cy to i1                ; 6 uses
  %i.da = icmp ult i64 %0, 4097
  br i1 %i.da, label %bb.y, label %bb.z, !prof !147

bb.y:                                             ; preds = %bb.x
  %i.db = add nuw nsw i64 %0, 7
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !148
  %i.df = zext i8 %i.de to i32
  br label %sz_size2index.exit.i20

bb.z:                                             ; preds = %bb.x
  %i.dg = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.dg, label %aligned_usize_get.exit.i14.thread, label %bb.aa, !prof !145

bb.aa:                                            ; preds = %bb.z
  %i.dh = shl nuw i64 %0, 1
  %i.di = add i64 %i.dh, -1
  %i.dj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.di, i1 true) ; 2 uses
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = sub nuw nsw i64 60, %i.dj
  %i.dm = add nsw i64 %0, -1
  %i.dn = lshr i64 %i.dm, %i.dl
  %i.do = trunc i64 %i.dn to i32
  %i.dp = and i32 %i.do, 3
  %i.dq = shl nuw nsw i32 %i.dk, 2
  %reass.sub = sub nsw i32 %i.dp, %i.dq
  %i.dr = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i20

sz_size2index.exit.i20:                           ; preds = %bb.aa, %bb.y
  %.0.i50.i21 = phi i32 [ %i.df, %bb.y ], [ %i.dr, %bb.aa ] ; 7 uses
  %i.ds = icmp samesign ugt i32 %.0.i50.i21, 234
  br i1 %i.ds, label %aligned_usize_get.exit.i14.thread, label %bb.ab, !prof !248

bb.ab:                                            ; preds = %sz_size2index.exit.i20
  %i.dt = zext nneg i32 %.0.i50.i21 to i64        ; 4 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dt ; 3 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !160 ; 9 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !148
  %i.dy = icmp sgt i8 %i.dx, 0
  br i1 %i.dy, label %tcache_get_from_ind.exit.i, label %bb.ac, !prof !249

bb.ac:                                            ; preds = %bb.ab
  %i.dz = load i8, ptr %i.g, align 8, !tbaa !235, !range !236, !noundef !237
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 872 ; 3 uses
  br i1 %i.ea, label %iallocztm.exit.i, label %iallocztm.exit.i.thread

tcache_get_from_ind.exit.i:                       ; preds = %bb.ab
  %i.ec = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %arena_get.exit112, label %iallocztm.exit.i.thread, !prof !145

arena_get.exit112:                                ; preds = %tcache_get_from_ind.exit.i
  %i.ee = tail call ptr @je_arena_init(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.ad, label %iallocztm.exit.i.thread, !prof !146

bb.ad:                                            ; preds = %arena_get.exit112
  %i.eg = load i32, ptr @je_narenas_auto, align 4, !tbaa !14
  %.not.i.i.not = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i14.thread, label %iallocztm.exit.i.thread

iallocztm.exit.i:                                 ; preds = %bb.ac
  %i.eh = icmp samesign ult i64 %0, 14337
  br i1 %i.eh, label %bb.ae, label %bb.an, !prof !147

bb.ae:                                            ; preds = %iallocztm.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %i.dt ; 8 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !227 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !228 ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 8, !tbaa !229 ; 2 uses
  %i.eq = trunc i64 %i.em to i16
  %.not.i24.i = icmp eq i16 %i.ep, %i.eq
  br i1 %.not.i24.i, label %bb.ag, label %bb.af, !prof !145

bb.af:                                            ; preds = %bb.ae
  store ptr %i.en, ptr %i.ej, align 8, !tbaa !227
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ag:                                            ; preds = %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %i.es = load i16, ptr %i.er, align 4, !tbaa !230
  %.not21.i.i = icmp eq i16 %i.es, %i.ep
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.ah, !prof !145

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.en, ptr %i.ej, align 8, !tbaa !227
  %i.et = ptrtoint ptr %i.en to i64
  %i.eu = trunc i64 %i.et to i16
  store i16 %i.eu, ptr %i.eo, align 8, !tbaa !229
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ev = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 3 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.thread244, label %bb.ai, !prof !145

bb.ai:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.ex = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %i.dt
  %.val105 = load i16, ptr %i.ey, align 2, !tbaa !234
  %i.ez = icmp eq i16 %.val105, 0
  br i1 %i.ez, label %bb.aj, label %bb.ak, !prof !145

bb.aj:                                            ; preds = %bb.ai
  %i.fa = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ev, i64 noundef range(i64 0, 14337) %0, i32 noundef %.0.i50.i21, i1 noundef zeroext %i.cz) #20
  br label %.thread244

.thread244:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.aj
  %.0.i22.i.ph = phi ptr [ %i.fa, %bb.aj ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.ak:                                            ; preds = %bb.ai
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ej, i32 noundef %.0.i50.i21, i1 noundef zeroext true) #20
  %i.fb = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ej, i32 noundef %.0.i50.i21, ptr noundef nonnull %i.b) #20
  %i.fc = load i8, ptr %i.b, align 1, !tbaa !235, !range !236, !noundef !237
  %.not259 = icmp eq i8 %i.fc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %.not259, label %aligned_usize_get.exit.i14.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.ah, %bb.af, %bb.ak
  %.131.i.i = phi ptr [ %i.fb, %bb.ak ], [ %i.el, %bb.af ], [ %i.el, %bb.ah ] ; 2 uses
  br i1 %i.cz, label %bb.al, label %bb.am, !prof !145

bb.al:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.fd = load i64, ptr %i.du, align 8, !tbaa !160
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.fd, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %cache_bin_alloc_impl.exit.i.thread
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !238
  %i.fg = add i64 %i.ff, 1
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !238
  br label %imalloc_no_sample.exit

bb.an:                                            ; preds = %iallocztm.exit.i
  %i.fh = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !160
  %.not24.i.i = icmp ugt i64 %0, %i.fh
  br i1 %.not24.i.i, label %iallocztm.exit.i.thread, label %bb.ao, !prof !145

bb.ao:                                            ; preds = %bb.an
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %i.dt ; 7 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !227 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !228 ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 8, !tbaa !229 ; 2 uses
  %i.fq = trunc i64 %i.fm to i16
  %.not.i26.i = icmp eq i16 %i.fp, %i.fq
  br i1 %.not.i26.i, label %bb.aq, label %bb.ap, !prof !145

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.fn, ptr %i.fj, align 8, !tbaa !227
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  %i.fs = load i16, ptr %i.fr, align 4, !tbaa !230
  %.not21.i28.i = icmp eq i16 %i.fs, %i.fp
  br i1 %.not21.i28.i, label %cache_bin_alloc_impl.exit29.i, label %bb.ar, !prof !145

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.fn, ptr %i.fj, align 8, !tbaa !227
  %i.ft = ptrtoint ptr %i.fn to i64
  %i.fu = trunc i64 %i.ft to i16
  store i16 %i.fu, ptr %i.fo, align 8, !tbaa !229
  br label %bb.as

cache_bin_alloc_impl.exit29.i:                    ; preds = %bb.aq
  %i.fv = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %aligned_usize_get.exit.i14.thread, label %sz_s2u.exit.i, !prof !145

sz_s2u.exit.i:                                    ; preds = %cache_bin_alloc_impl.exit29.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.fj, i32 noundef %.0.i50.i21, i1 noundef zeroext false) #20
  %i.fx = shl nuw i64 %0, 1
  %i.fy = add i64 %i.fx, -1
  %i.fz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fy, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.fz
  %i.ga = lshr i64 1152921504606846975, %i.fz
  %i.gb = add nuw nsw i64 %0, %i.ga
  %i.gc = and i64 %i.gb, %notmask.i.i
  %i.gd = tail call ptr @je_large_malloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fv, i64 noundef %i.gc, i1 noundef zeroext %i.cz) #20
  br label %imalloc_no_sample.exit

bb.as:                                            ; preds = %bb.ap, %bb.ar
  br i1 %i.cz, label %bb.at, label %bb.au, !prof !145

bb.at:                                            ; preds = %bb.as
  %i.ge = load i64, ptr %i.du, align 8, !tbaa !160
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fl, i8 0, i64 %i.ge, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !238
  %i.gh = add i64 %i.gg, 1
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !238
  br label %imalloc_no_sample.exit

iallocztm.exit.i.thread:                          ; preds = %tcache_get_from_ind.exit.i, %bb.ad, %arena_get.exit112, %bb.ac, %bb.an
  %.1201.ph282 = phi ptr [ null, %bb.an ], [ %i.ec, %tcache_get_from_ind.exit.i ], [ null, %bb.ad ], [ %i.ee, %arena_get.exit112 ], [ null, %bb.ac ]
  %i.gi = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef %.1201.ph282, i64 noundef %0, i32 noundef %.0.i50.i21, i1 noundef zeroext %i.cz) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %iallocztm.exit.i.thread, %.thread244, %bb.am, %bb.au, %sz_s2u.exit.i
  %.0.i32 = phi ptr [ %i.gd, %sz_s2u.exit.i ], [ %i.gi, %iallocztm.exit.i.thread ], [ %.0.i22.i.ph, %.thread244 ], [ %.131.i.i, %bb.am ], [ %i.fl, %bb.au ] ; 4 uses
  %i.gj = icmp eq ptr %.0.i32, null
  br i1 %i.gj, label %aligned_usize_get.exit.i14.thread, label %bb.av, !prof !250

bb.av:                                            ; preds = %imalloc_no_sample.exit
end_hunk_1
begin_hunk_2_@je_aligned_alloc:bb.a
  %i.ct = shl nuw i64 %.016.i.i13, 1
  %i.cu = add i64 %i.ct, -1
  %i.cv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cu, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.cv
  %i.cw = lshr i64 1152921504606846975, %i.cv
  %i.cx = add nuw nsw i64 %.016.i.i13, %i.cw
  %i.cy = and i64 %i.cx, %notmask.i27.i           ; 2 uses
  %i.cz = icmp samesign ult i64 %i.cy, %.016.i.i13
  br i1 %i.cz, label %aligned_usize_get.exit.i15.thread, label %.thread213

.thread213:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.v
  %.0.i87 = phi i64 [ %i.cy, %sz_s2u_compute.exit29.i ], [ 16384, %bb.v ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.da = load i64, ptr @je_sz_large_pad, align 8, !tbaa !160
  %i.db = add nuw nsw i64 %0, 4095
  %i.dc = and i64 %i.db, 9223372036854771712
  %i.dd = add nsw i64 %i.dc, -4096
  %i.de = add nuw i64 %i.dd, %.0.i87
  %i.df = add i64 %i.de, %i.da
  %i.dg = icmp ult i64 %i.df, %.0.i87
  %..0.i = select i1 %i.dg, i64 0, i64 %.0.i87
  br label %aligned_usize_get.exit.i15

aligned_usize_get.exit.i15:                       ; preds = %.thread213, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread213 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 5 uses
  %i.dh = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i14 = icmp ult i64 %i.dh, -8070450532247928832
  br i1 %spec.select.i.i14, label %aligned_usize_get.exit.i15.thread, label %bb.x

bb.x:                                             ; preds = %aligned_usize_get.exit.i15
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !148
  %i.dk = icmp sgt i8 %i.dj, 0
  br i1 %i.dk, label %tcache_get_from_ind.exit.i, label %bb.y, !prof !249

bb.y:                                             ; preds = %bb.x
  %i.dl = load i8, ptr %i.e, align 8, !tbaa !235, !range !236, !noundef !237
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 872
  %spec.select = select i1 %i.dm, ptr %i.dn, ptr null
  br label %imalloc_no_sample.exit

tcache_get_from_ind.exit.i:                       ; preds = %bb.x
  %i.do = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %arena_get.exit113, label %imalloc_no_sample.exit, !prof !145

arena_get.exit113:                                ; preds = %tcache_get_from_ind.exit.i
  %i.dq = tail call ptr @je_arena_init(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.z, label %imalloc_no_sample.exit, !prof !146

bb.z:                                             ; preds = %arena_get.exit113
  %i.ds = load i32, ptr @je_narenas_auto, align 4, !tbaa !14
  %.not.i.i.not = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i15.thread, label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.y, %bb.z, %tcache_get_from_ind.exit.i, %arena_get.exit113
  %.0.i.i31224.ph = phi ptr [ null, %tcache_get_from_ind.exit.i ], [ null, %arena_get.exit113 ], [ %spec.select, %bb.y ], [ null, %bb.z ]
  %.1201.ph = phi ptr [ %i.do, %tcache_get_from_ind.exit.i ], [ %i.dq, %arena_get.exit113 ], [ null, %bb.y ], [ null, %bb.z ]
  %i.dt = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.e, ptr noundef %.1201.ph, i64 noundef %.018.i, i64 noundef %0, i1 noundef zeroext %i.bt, ptr noundef %.0.i.i31224.ph) #20 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %aligned_usize_get.exit.i15.thread, label %bb.aa, !prof !252

bb.aa:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !242
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 840 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !243
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !244
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !245
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !246
  %i.ed = load i64, ptr %i.dv, align 8, !tbaa !160 ; 2 uses
  %i.ee = add i64 %i.ed, %.018.i
  store i64 %i.ee, ptr %i.dv, align 8, !tbaa !160
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !160
  %i.eg = sub i64 %i.ef, %i.ed
  %i.eh = icmp ult i64 %.018.i, %i.eg
  br i1 %i.eh, label %bb.ac, label %bb.ab, !prof !147

bb.ab:                                            ; preds = %bb.aa
  call void @je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i19 = xor i1 %i.bt, true
  %i.ei = load i8, ptr @je_opt_junk_alloc, align 1, !range !236
  %i.ej = trunc nuw i8 %i.ei to i1
  %or.cond45.i20 = select i1 %.not.i19, i1 %i.ej, i1 false, !prof !249
  br i1 %or.cond45.i20, label %bb.ad, label %bb.af, !prof !249

bb.ad:                                            ; preds = %bb.ac
  %i.ek = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !228
  call void %i.ek(ptr noundef nonnull %i.dt, i64 noundef %.018.i) #20, !inline_history !2
  br label %bb.af

aligned_usize_get.exit.i15.thread:                ; preds = %bb.z, %bb.w, %sz_s2u_compute.exit29.i, %bb.u, %aligned_usize_get.exit.i15, %imalloc_no_sample.exit
  %i.el = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.el, align 4, !tbaa !14
  br label %bb.af

bb.ae:                                            ; preds = %compute_size_with_overflow.exit
  %i.em = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.em, align 4, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %aligned_usize_get.exit.i15.thread, %bb.ae
  %.0204.ph = phi ptr [ %i.dt, %bb.ad ], [ null, %bb.ae ], [ %i.dt, %bb.ac ], [ null, %aligned_usize_get.exit.i15.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %0, ptr %i.a, align 16, !tbaa !160
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.en, align 8, !tbaa !160
  %.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !160
  %i.eo = ptrtoint ptr %.0204.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 2, ptr noundef %.0204.ph, i64 noundef %i.eo, ptr noundef nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.l, %aligned_usize_get.exit.i.thread, %bb.m, %imalloc_init_check.exit, %bb.af
  %.0204237 = phi ptr [ %.0204.ph, %bb.af ], [ null, %imalloc_init_check.exit ], [ null, %bb.m ], [ null, %aligned_usize_get.exit.i.thread ], [ %i.aw, %bb.l ]
  ret ptr %.0204237
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias ptr @je_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #8 !guid !300 {
bb.a:
  %i.a = tail call fastcc ptr @je_calloc_internal(i64 noundef %0, i64 noundef %1, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @je_calloc_internal(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #1 !guid !301 {
bb.a:
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %4 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load i8, ptr %i.e, align 8, !tbaa !148
  %.not.i78 = icmp eq i8 %i.f, 0
  br i1 %.not.i78, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !147

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !148
  %i.h = icmp eq i8 %.pre, 0
  br i1 %i.h, label %tsd_fetch_impl.exit.thread, label %bb.w, !prof !221

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i79284 = phi ptr [ %i.g, %tsd_fetch_impl.exit ], [ %i.d, %bb.a ] ; 16 uses
  %mul265 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0) ; 2 uses
  %mul.val266 = extractvalue { i64, i1 } %mul265, 0 ; 12 uses
  %mul.ov267 = extractvalue { i64, i1 } %mul265, 1
  %i.i = icmp eq i64 %mul.val266, 0
  br i1 %i.i, label %bb.b, label %bb.c, !prof !145

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %.not.i30 = icmp ne i64 %0, 0
  %i.j = icmp ne i64 %1, 0
  %or.cond = and i1 %.not.i30, %i.j
  br i1 %or.cond, label %aligned_usize_get.exit.i.thread, label %.thread, !prof !302

bb.c:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.k = or i64 %1, %0
  %i.l = icmp ult i64 %i.k, 4294967296
  br i1 %i.l, label %compute_size_with_overflow.exit31.thread, label %.split, !prof !147

.split:                                           ; preds = %bb.c
  br i1 %mul.ov267, label %aligned_usize_get.exit.i.thread, label %compute_size_with_overflow.exit31.thread, !prof !303

compute_size_with_overflow.exit31.thread:         ; preds = %bb.c, %.split
  %i.m = icmp ult i64 %mul.val266, 4097
  br i1 %i.m, label %.thread, label %bb.d, !prof !304

.thread:                                          ; preds = %bb.b, %compute_size_with_overflow.exit31.thread
  %i.n = add nuw nsw i64 %mul.val266, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !148
  %i.r = zext i8 %i.q to i32
  br label %sz_size2index.exit.i

bb.d:                                             ; preds = %compute_size_with_overflow.exit31.thread
  %i.s = icmp ugt i64 %mul.val266, 8070450532247928832
  br i1 %i.s, label %aligned_usize_get.exit.i.thread, label %bb.e, !prof !145

bb.e:                                             ; preds = %bb.d
  %i.t = shl nuw i64 %mul.val266, 1
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = sub nuw nsw i64 60, %i.v
  %i.y = add nsw i64 %mul.val266, -1
  %i.z = lshr i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 3
  %i.ac = shl nuw nsw i32 %i.w, 2
  %reass.sub271 = sub nsw i32 %i.ab, %i.ac
  %i.ad = add nsw i32 %reass.sub271, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.e, %.thread
  %.0.i50.i = phi i32 [ %i.r, %.thread ], [ %i.ad, %bb.e ] ; 7 uses
  %i.ae = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.ae, label %aligned_usize_get.exit.i.thread, label %iallocztm.exit.i41, !prof !222

iallocztm.exit.i41:                               ; preds = %sz_size2index.exit.i
  %i.af = zext nneg i32 %.0.i50.i to i64          ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !160 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i79284, i64 872 ; 3 uses
  %i.aj = icmp samesign ult i64 %mul.val266, 14337
  br i1 %i.aj, label %bb.f, label %bb.m, !prof !147

bb.f:                                             ; preds = %iallocztm.exit.i41
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i79284, i64 880
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.af ; 8 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !227 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !228 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !229 ; 2 uses
  %i.as = trunc i64 %i.ao to i16
  %.not.i24.i58 = icmp eq i16 %i.ar, %i.as
  br i1 %.not.i24.i58, label %bb.h, label %bb.g, !prof !145

bb.g:                                             ; preds = %bb.f
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !227
  br label %cache_bin_alloc_impl.exit.i59.thread

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.au = load i16, ptr %i.at, align 4, !tbaa !230
  %.not21.i.i68 = icmp eq i16 %i.au, %i.ar
  br i1 %.not21.i.i68, label %cache_bin_alloc_impl.exit.i59, label %bb.i, !prof !145

bb.i:                                             ; preds = %bb.h
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !227
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = trunc i64 %i.av to i16
  store i16 %i.aw, ptr %i.aq, align 8, !tbaa !229
  br label %cache_bin_alloc_impl.exit.i59.thread

cache_bin_alloc_impl.exit.i59:                    ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ax = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i79284, ptr noundef null) ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.thread214, label %bb.j, !prof !145

bb.j:                                             ; preds = %cache_bin_alloc_impl.exit.i59
  %i.az = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.af
  %.val = load i16, ptr %i.ba, align 2, !tbaa !234
  %i.bb = icmp eq i16 %.val, 0
  br i1 %i.bb, label %bb.k, label %bb.l, !prof !145

bb.k:                                             ; preds = %bb.j
  %i.bc = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i79284, ptr noundef nonnull %i.ax, i64 noundef range(i64 0, 14337) %mul.val266, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  br label %.thread214

.thread214:                                       ; preds = %cache_bin_alloc_impl.exit.i59, %bb.k
  %.0.i22.i64.ph = phi ptr [ %i.bc, %bb.k ], [ null, %cache_bin_alloc_impl.exit.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit72

bb.l:                                             ; preds = %bb.j
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i79284, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.al, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  %i.bd = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i79284, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.al, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #20
  %i.be = load i8, ptr %i.a, align 1, !tbaa !235, !range !236, !noundef !237
  %.not268 = icmp eq i8 %i.be, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.not268, label %aligned_usize_get.exit.i.thread, label %.cache_bin_alloc_impl.exit.i59.thread_crit_edge

.cache_bin_alloc_impl.exit.i59.thread_crit_edge:  ; preds = %bb.l
  %.pre272 = load i64, ptr %i.ag, align 8, !tbaa !160
  br label %cache_bin_alloc_impl.exit.i59.thread

cache_bin_alloc_impl.exit.i59.thread:             ; preds = %.cache_bin_alloc_impl.exit.i59.thread_crit_edge, %bb.i, %bb.g
  %i.bf = phi i64 [ %.pre272, %.cache_bin_alloc_impl.exit.i59.thread_crit_edge ], [ %i.ah, %bb.g ], [ %i.ah, %bb.i ]
  %.131.i.i67 = phi ptr [ %i.bd, %.cache_bin_alloc_impl.exit.i59.thread_crit_edge ], [ %i.an, %bb.g ], [ %i.an, %bb.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i67, i8 0, i64 %i.bf, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !238
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !238
  br label %imalloc_no_sample.exit72

bb.m:                                             ; preds = %iallocztm.exit.i41
  %i.bj = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !160
  %.not24.i.i43 = icmp ugt i64 %mul.val266, %i.bj
  br i1 %.not24.i.i43, label %bb.s, label %bb.n, !prof !145

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i79284, i64 880
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.af ; 7 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !227 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !228 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !229 ; 2 uses
  %i.bs = trunc i64 %i.bo to i16
  %.not.i26.i44 = icmp eq i16 %i.br, %i.bs
  br i1 %.not.i26.i44, label %bb.p, label %bb.o, !prof !145

bb.o:                                             ; preds = %bb.n
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !227
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !230
  %.not21.i28.i57 = icmp eq i16 %i.bu, %i.br
  br i1 %.not21.i28.i57, label %cache_bin_alloc_impl.exit29.i45, label %bb.q, !prof !145

bb.q:                                             ; preds = %bb.p
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !227
  %i.bv = ptrtoint ptr %i.bp to i64
  %i.bw = trunc i64 %i.bv to i16
  store i16 %i.bw, ptr %i.bq, align 8, !tbaa !229
  br label %bb.r

cache_bin_alloc_impl.exit29.i45:                  ; preds = %bb.p
  %i.bx = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i79284, ptr noundef null) ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %aligned_usize_get.exit.i.thread, label %sz_s2u.exit.i50, !prof !145

sz_s2u.exit.i50:                                  ; preds = %cache_bin_alloc_impl.exit29.i45
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i79284, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.bl, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  %i.bz = shl nuw i64 %mul.val266, 1
  %i.ca = add i64 %i.bz, -1
  %i.cb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ca, i1 true) ; 2 uses
  %notmask.i.i47 = ashr exact i64 -1152921504606846976, %i.cb
  %i.cc = lshr i64 1152921504606846975, %i.cb
  %i.cd = add nuw nsw i64 %mul.val266, %i.cc
  %i.ce = and i64 %i.cd, %notmask.i.i47
  %i.cf = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i79284, ptr noundef nonnull %i.bx, i64 noundef %i.ce, i1 noundef zeroext true) #20
  br label %imalloc_no_sample.exit72

bb.r:                                             ; preds = %bb.o, %bb.q
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bn, i8 0, i64 %i.ah, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !238
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !238
  br label %imalloc_no_sample.exit72

bb.s:                                             ; preds = %bb.m
  %i.cj = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i79284, ptr noundef null, i64 noundef %mul.val266, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  br label %imalloc_no_sample.exit72

imalloc_no_sample.exit72:                         ; preds = %bb.s, %.thread214, %cache_bin_alloc_impl.exit.i59.thread, %bb.r, %sz_s2u.exit.i50
  %.0.i21.i55 = phi ptr [ %i.cj, %bb.s ], [ %.0.i22.i64.ph, %.thread214 ], [ %.131.i.i67, %cache_bin_alloc_impl.exit.i59.thread ], [ %i.bn, %bb.r ], [ %i.cf, %sz_s2u.exit.i50 ] ; 2 uses
  %i.ck = icmp eq ptr %.0.i21.i55, null
  br i1 %i.ck, label %aligned_usize_get.exit.i.thread, label %bb.t, !prof !239

bb.t:                                             ; preds = %imalloc_no_sample.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !242
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i79284, i64 840 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !243
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i79284, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !244
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i79284, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !245
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i79284, i64 848
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !246
  %i.ct = load i64, ptr %i.cl, align 8, !tbaa !160 ; 2 uses
  %i.cu = add i64 %i.ct, %i.ah
  store i64 %i.cu, ptr %i.cl, align 8, !tbaa !160
  %i.cv = load i64, ptr %i.cp, align 8, !tbaa !160
  %i.cw = sub i64 %i.cv, %i.ct
  %i.cx = icmp ult i64 %i.ah, %i.cw
  br i1 %i.cx, label %bb.v, label %bb.u, !prof !147

bb.u:                                             ; preds = %bb.t
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i79284, ptr noundef nonnull %3) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %imalloc.exit.thread

aligned_usize_get.exit.i.thread:                  ; preds = %bb.b, %cache_bin_alloc_impl.exit29.i45, %bb.l, %bb.d, %sz_size2index.exit.i, %imalloc_no_sample.exit72, %.split
  %.sroa.11.1 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ %i.ah, %imalloc_no_sample.exit72 ], [ 0, %.split ], [ 0, %sz_size2index.exit.i ], [ %i.ah, %bb.l ], [ %i.ah, %cache_bin_alloc_impl.exit29.i45 ]
  %i.cy = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.cy, align 4, !tbaa !14
  br label %imalloc.exit.thread

bb.w:                                             ; preds = %tsd_fetch_impl.exit
  %i.cz = load i32, ptr @je_malloc_init_state, align 4, !tbaa !14
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.y, label %bb.x, !prof !147

bb.x:                                             ; preds = %bb.w
  %i.db = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.db, label %imalloc_init_check.exit, label %bb.y, !prof !247

imalloc_init_check.exit:                          ; preds = %bb.x
  %i.dc = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.dc, align 4, !tbaa !14
  br label %imalloc.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.w
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 12 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  %i.dd = icmp eq i64 %mul.val, 0
  br i1 %i.dd, label %bb.z, label %bb.aa, !prof !145

bb.z:                                             ; preds = %bb.y
  %.not.i27 = icmp ne i64 %0, 0
  %i.de = icmp ne i64 %1, 0
  %or.cond263 = and i1 %.not.i27, %i.de
  br i1 %or.cond263, label %aligned_usize_get.exit.i16.thread, label %.thread226, !prof !305

bb.aa:                                            ; preds = %bb.y
  %i.df = or i64 %1, %0
  %i.dg = icmp ult i64 %i.df, 4294967296
  br i1 %i.dg, label %compute_size_with_overflow.exit.thread, label %.split225, !prof !147

.split225:                                        ; preds = %bb.aa
  br i1 %mul.ov, label %aligned_usize_get.exit.i16.thread, label %compute_size_with_overflow.exit.thread, !prof !306

compute_size_with_overflow.exit.thread:           ; preds = %bb.aa, %.split225
  %i.dh = icmp ult i64 %mul.val, 4097
  br i1 %i.dh, label %.thread226, label %bb.ab, !prof !254

.thread226:                                       ; preds = %bb.z, %compute_size_with_overflow.exit.thread
  %i.di = add nuw nsw i64 %mul.val, 7
  %i.dj = lshr i64 %i.di, 3
  %i.dk = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !148
  %i.dm = zext i8 %i.dl to i32
  br label %sz_size2index.exit.i22

bb.ab:                                            ; preds = %compute_size_with_overflow.exit.thread
  %i.dn = icmp ugt i64 %mul.val, 8070450532247928832
  br i1 %i.dn, label %aligned_usize_get.exit.i16.thread, label %bb.ac, !prof !145

bb.ac:                                            ; preds = %bb.ab
  %i.do = shl nuw i64 %mul.val, 1
  %i.dp = add i64 %i.do, -1
  %i.dq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dp, i1 true) ; 2 uses
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = sub nuw nsw i64 60, %i.dq
  %i.dt = add nsw i64 %mul.val, -1
  %i.du = lshr i64 %i.dt, %i.ds
  %i.dv = trunc i64 %i.du to i32
  %i.dw = and i32 %i.dv, 3
  %i.dx = shl nuw nsw i32 %i.dr, 2
  %reass.sub = sub nsw i32 %i.dw, %i.dx
  %i.dy = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i22

sz_size2index.exit.i22:                           ; preds = %bb.ac, %.thread226
  %.0.i50.i23 = phi i32 [ %i.dm, %.thread226 ], [ %i.dy, %bb.ac ] ; 7 uses
  %i.dz = icmp samesign ugt i32 %.0.i50.i23, 234
  br i1 %i.dz, label %aligned_usize_get.exit.i16.thread, label %bb.ad, !prof !248

bb.ad:                                            ; preds = %sz_size2index.exit.i22
  %i.ea = zext nneg i32 %.0.i50.i23 to i64        ; 4 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ea ; 3 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !160 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !148
  %i.ef = icmp sgt i8 %i.ee, 0
  br i1 %i.ef, label %tcache_get_from_ind.exit.i, label %bb.ae, !prof !249

bb.ae:                                            ; preds = %bb.ad
  %i.eg = load i8, ptr %i.g, align 8, !tbaa !235, !range !236, !noundef !237
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 872 ; 3 uses
  br i1 %i.eh, label %iallocztm.exit.i, label %iallocztm.exit.i.thread

tcache_get_from_ind.exit.i:                       ; preds = %bb.ad
  %i.ej = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %arena_get.exit114, label %iallocztm.exit.i.thread, !prof !145

arena_get.exit114:                                ; preds = %tcache_get_from_ind.exit.i
  %i.el = tail call ptr @je_arena_init(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.af, label %iallocztm.exit.i.thread, !prof !146

bb.af:                                            ; preds = %arena_get.exit114
  %i.en = load i32, ptr @je_narenas_auto, align 4, !tbaa !14
  %.not.i.i.not = icmp eq i32 %i.en, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i16.thread, label %iallocztm.exit.i.thread

iallocztm.exit.i:                                 ; preds = %bb.ae
  %i.eo = icmp samesign ult i64 %mul.val, 14337
  br i1 %i.eo, label %bb.ag, label %bb.an, !prof !147

bb.ag:                                            ; preds = %iallocztm.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.ep, i64 %i.ea ; 8 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !227 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !228 ; 2 uses
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 8, !tbaa !229 ; 2 uses
  %i.ex = trunc i64 %i.et to i16
  %.not.i24.i = icmp eq i16 %i.ew, %i.ex
  br i1 %.not.i24.i, label %bb.ai, label %bb.ah, !prof !145

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.eu, ptr %i.eq, align 8, !tbaa !227
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ai:                                            ; preds = %bb.ag
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  %i.ez = load i16, ptr %i.ey, align 4, !tbaa !230
  %.not21.i.i = icmp eq i16 %i.ez, %i.ew
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.aj, !prof !145

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.eu, ptr %i.eq, align 8, !tbaa !227
  %i.fa = ptrtoint ptr %i.eu to i64
  %i.fb = trunc i64 %i.fa to i16
  store i16 %i.fb, ptr %i.ev, align 8, !tbaa !229
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.fc = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %.thread250, label %bb.ak, !prof !145

bb.ak:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.fe = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.ea
  %.val107 = load i16, ptr %i.ff, align 2, !tbaa !234
  %i.fg = icmp eq i16 %.val107, 0
  br i1 %i.fg, label %bb.al, label %bb.am, !prof !145

bb.al:                                            ; preds = %bb.ak
  %i.fh = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fc, i64 noundef range(i64 0, 14337) %mul.val, i32 noundef %.0.i50.i23, i1 noundef zeroext true) #20
  br label %.thread250

.thread250:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.al
  %.0.i22.i.ph = phi ptr [ %i.fh, %bb.al ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.am:                                            ; preds = %bb.ak
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eq, i32 noundef %.0.i50.i23, i1 noundef zeroext true) #20
  %i.fi = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fc, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eq, i32 noundef %.0.i50.i23, ptr noundef nonnull %i.b) #20
  %i.fj = load i8, ptr %i.b, align 1, !tbaa !235, !range !236, !noundef !237
  %.not264 = icmp eq i8 %i.fj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %.not264, label %aligned_usize_get.exit.i16.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.aj, %bb.ah, %bb.am
  %.131.i.i = phi ptr [ %i.fi, %bb.am ], [ %i.es, %bb.ah ], [ %i.es, %bb.aj ] ; 2 uses
  %i.fk = load i64, ptr %i.eb, align 8, !tbaa !160
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.fk, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !238
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !238
  br label %imalloc_no_sample.exit

bb.an:                                            ; preds = %iallocztm.exit.i
  %i.fo = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !160
  %.not24.i.i = icmp ugt i64 %mul.val, %i.fo
  br i1 %.not24.i.i, label %iallocztm.exit.i.thread, label %bb.ao, !prof !145

bb.ao:                                            ; preds = %bb.an
  %i.fp = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.fp, i64 %i.ea ; 7 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !227 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !228 ; 2 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.fw = load i16, ptr %i.fv, align 8, !tbaa !229 ; 2 uses
  %i.fx = trunc i64 %i.ft to i16
  %.not.i26.i = icmp eq i16 %i.fw, %i.fx
  br i1 %.not.i26.i, label %bb.aq, label %bb.ap, !prof !145

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.fu, ptr %i.fq, align 8, !tbaa !227
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  %i.fz = load i16, ptr %i.fy, align 4, !tbaa !230
  %.not21.i28.i = icmp eq i16 %i.fz, %i.fw
  br i1 %.not21.i28.i, label %cache_bin_alloc_impl.exit29.i, label %bb.ar, !prof !145

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.fu, ptr %i.fq, align 8, !tbaa !227
  %i.ga = ptrtoint ptr %i.fu to i64
  %i.gb = trunc i64 %i.ga to i16
  store i16 %i.gb, ptr %i.fv, align 8, !tbaa !229
  br label %bb.as

cache_bin_alloc_impl.exit29.i:                    ; preds = %bb.aq
  %i.gc = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %aligned_usize_get.exit.i16.thread, label %sz_s2u.exit.i, !prof !145

sz_s2u.exit.i:                                    ; preds = %cache_bin_alloc_impl.exit29.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.fq, i32 noundef %.0.i50.i23, i1 noundef zeroext false) #20
  %i.ge = shl nuw i64 %mul.val, 1
  %i.gf = add i64 %i.ge, -1
  %i.gg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gf, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gg
  %i.gh = lshr i64 1152921504606846975, %i.gg
  %i.gi = add nuw nsw i64 %mul.val, %i.gh
  %i.gj = and i64 %i.gi, %notmask.i.i
  %i.gk = tail call ptr @je_large_malloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.gc, i64 noundef %i.gj, i1 noundef zeroext true) #20
  br label %imalloc_no_sample.exit

bb.as:                                            ; preds = %bb.ap, %bb.ar
  %i.gl = load i64, ptr %i.eb, align 8, !tbaa !160
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fs, i8 0, i64 %i.gl, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !238
  %i.go = add i64 %i.gn, 1
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !238
  br label %imalloc_no_sample.exit

iallocztm.exit.i.thread:                          ; preds = %tcache_get_from_ind.exit.i, %bb.af, %arena_get.exit114, %bb.ae, %bb.an
  %.1202.ph290 = phi ptr [ null, %bb.an ], [ %i.ej, %tcache_get_from_ind.exit.i ], [ null, %bb.af ], [ %i.el, %arena_get.exit114 ], [ null, %bb.ae ]
  %i.gp = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef %.1202.ph290, i64 noundef %mul.val, i32 noundef %.0.i50.i23, i1 noundef zeroext true) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %iallocztm.exit.i.thread, %.thread250, %cache_bin_alloc_impl.exit.i.thread, %bb.as, %sz_s2u.exit.i
  %.0.i34 = phi ptr [ %i.gk, %sz_s2u.exit.i ], [ %i.gp, %iallocztm.exit.i.thread ], [ %.0.i22.i.ph, %.thread250 ], [ %.131.i.i, %cache_bin_alloc_impl.exit.i.thread ], [ %i.fs, %bb.as ] ; 2 uses
  %i.gq = icmp eq ptr %.0.i34, null
  br i1 %i.gq, label %aligned_usize_get.exit.i16.thread, label %bb.at, !prof !250

bb.at:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !242
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 840 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !243
  %i.gt = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !244
  %i.gv = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !245
  %i.gx = getelementptr inbounds nuw i8, ptr %i.g, i64 848
end_hunk_2
begin_hunk_3_@je_valloc:bb.a
  %i.cd = add nuw nsw i64 %0, %i.cc
  %i.ce = and i64 %i.cd, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.q, %bb.p
  %.0.i28.i = phi i64 [ %i.ce, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.cf = icmp ult i64 %.0.i28.i, %0
  br i1 %i.cf, label %aligned_usize_get.exit.i13.thread, label %.thread208

.thread208:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.o
  %.0.i85 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.o ], [ 16384, %sz_s2u.exit25.i ] ; 2 uses
  %i.cg = load i64, ptr @je_sz_large_pad, align 8, !tbaa !160
  %i.ch = xor i64 %.0.i85, -1
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  %..0.i = select i1 %i.ci, i64 0, i64 %.0.i85
  br label %aligned_usize_get.exit.i13

aligned_usize_get.exit.i13:                       ; preds = %.thread208, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread208 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 5 uses
  %i.cj = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i12 = icmp ult i64 %i.cj, -8070450532247928832
  br i1 %spec.select.i.i12, label %aligned_usize_get.exit.i13.thread, label %bb.r

bb.r:                                             ; preds = %aligned_usize_get.exit.i13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !148
  %i.cm = icmp sgt i8 %i.cl, 0
  br i1 %i.cm, label %tcache_get_from_ind.exit.i, label %bb.s, !prof !249

bb.s:                                             ; preds = %bb.r
  %i.cn = load i8, ptr %i.e, align 8, !tbaa !235, !range !236, !noundef !237
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 872
  %spec.select = select i1 %i.co, ptr %i.cp, ptr null
  br label %imalloc_no_sample.exit

tcache_get_from_ind.exit.i:                       ; preds = %bb.r
  %i.cq = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %arena_get.exit111, label %imalloc_no_sample.exit, !prof !145

arena_get.exit111:                                ; preds = %tcache_get_from_ind.exit.i
  %i.cs = tail call ptr @je_arena_init(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.t, label %imalloc_no_sample.exit, !prof !146

bb.t:                                             ; preds = %arena_get.exit111
  %i.cu = load i32, ptr @je_narenas_auto, align 4, !tbaa !14
  %.not.i.i.not = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i13.thread, label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.s, %bb.t, %tcache_get_from_ind.exit.i, %arena_get.exit111
  %.0.i.i29218.ph = phi ptr [ null, %tcache_get_from_ind.exit.i ], [ null, %arena_get.exit111 ], [ %spec.select, %bb.s ], [ null, %bb.t ]
  %.1199.ph = phi ptr [ %i.cq, %tcache_get_from_ind.exit.i ], [ %i.cs, %arena_get.exit111 ], [ null, %bb.s ], [ null, %bb.t ]
  %i.cv = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.e, ptr noundef %.1199.ph, i64 noundef %.018.i, i64 noundef 4096, i1 noundef zeroext %i.bf, ptr noundef %.0.i.i29218.ph) #20 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %aligned_usize_get.exit.i13.thread, label %bb.u, !prof !252

bb.u:                                             ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !242
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 840 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !243
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !244
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !245
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !246
  %i.df = load i64, ptr %i.cx, align 8, !tbaa !160 ; 2 uses
  %i.dg = add i64 %i.df, %.018.i
  store i64 %i.dg, ptr %i.cx, align 8, !tbaa !160
  %i.dh = load i64, ptr %i.db, align 8, !tbaa !160
  %i.di = sub i64 %i.dh, %i.df
  %i.dj = icmp ult i64 %.018.i, %i.di
  br i1 %i.dj, label %bb.w, label %bb.v, !prof !147

bb.v:                                             ; preds = %bb.u
  call void @je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not.i17 = xor i1 %i.bf, true
  %i.dk = load i8, ptr @je_opt_junk_alloc, align 1, !range !236
  %i.dl = trunc nuw i8 %i.dk to i1
  %or.cond45.i18 = select i1 %.not.i17, i1 %i.dl, i1 false, !prof !249
  br i1 %or.cond45.i18, label %bb.x, label %aligned_usize_get.exit.i13.thread, !prof !249

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !228
  call void %i.dm(ptr noundef nonnull %i.cv, i64 noundef %.018.i) #20, !inline_history !2
  br label %aligned_usize_get.exit.i13.thread

aligned_usize_get.exit.i13.thread:                ; preds = %bb.t, %sz_s2u_compute.exit29.i, %aligned_usize_get.exit.i13, %imalloc_no_sample.exit, %bb.w, %bb.x
  %.0202.ph = phi ptr [ %i.cv, %bb.x ], [ null, %sz_s2u_compute.exit29.i ], [ null, %aligned_usize_get.exit.i13 ], [ null, %imalloc_no_sample.exit ], [ %i.cv, %bb.w ], [ null, %bb.t ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %0, ptr %i.a, align 16, !tbaa !160
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !160
  %i.dn = ptrtoint ptr %.0202.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 5, ptr noundef %.0202.ph, i64 noundef %i.dn, ptr noundef nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %sz_s2u_compute.exit29.i90, %aligned_usize_get.exit.i, %imalloc_no_sample.exit69, %bb.i, %imalloc_init_check.exit, %aligned_usize_get.exit.i13.thread
  %.0202231 = phi ptr [ %.0202.ph, %aligned_usize_get.exit.i13.thread ], [ null, %imalloc_init_check.exit ], [ null, %imalloc_no_sample.exit69 ], [ null, %aligned_usize_get.exit.i ], [ %i.al, %bb.i ], [ null, %sz_s2u_compute.exit29.i90 ]
  ret ptr %.0202231
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias ptr @je_mallocx(i64 noundef %0, i32 noundef %1) local_unnamed_addr #6 !guid !314 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %mallocx_arena_get.exit, label %bb.b, !prof !147

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = and i64 %i.f, -2                         ; 2 uses
  %i.h = trunc i32 %1 to i8
  %i.i = lshr i8 %i.h, 6
  %i.j = and i8 %i.i, 1                           ; 2 uses
  %i.k = and i32 %1, 1048320                      ; 2 uses
  switch i32 %i.k, label %bb.d [
    i32 0, label %mallocx_tcache_get.exit
    i32 256, label %bb.c
  ], !prof !261

bb.c:                                             ; preds = %bb.b
  br label %mallocx_tcache_get.exit

bb.d:                                             ; preds = %bb.b
  %i.l = lshr exact i32 %i.k, 8
  %i.m = add nsw i32 %i.l, -2
  br label %mallocx_tcache_get.exit

mallocx_tcache_get.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  %.0.i10 = phi i32 [ %i.m, %bb.d ], [ -1, %bb.c ], [ -2, %bb.b ] ; 2 uses
  %.not.i = icmp ult i32 %1, 1048576
  br i1 %.not.i, label %mallocx_arena_get.exit, label %bb.e, !prof !147

bb.e:                                             ; preds = %mallocx_tcache_get.exit
  %i.n = lshr i32 %1, 20
  %i.o = add nsw i32 %i.n, -1
  br label %mallocx_arena_get.exit

mallocx_arena_get.exit:                           ; preds = %bb.e, %mallocx_tcache_get.exit, %bb.a
  %.sroa.60.0 = phi i32 [ -1, %bb.a ], [ %i.o, %bb.e ], [ -1, %mallocx_tcache_get.exit ] ; 6 uses
  %.sroa.54153.0 = phi i32 [ -2, %bb.a ], [ %.0.i10, %bb.e ], [ %.0.i10, %mallocx_tcache_get.exit ] ; 6 uses
  %.sroa.42.0 = phi i8 [ 0, %bb.a ], [ %i.j, %bb.e ], [ %i.j, %mallocx_tcache_get.exit ] ; 2 uses
  %.sroa.32.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.e ], [ %i.g, %mallocx_tcache_get.exit ] ; 14 uses
  %i.p = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 832
  %i.r = load i8, ptr %i.q, align 8, !tbaa !148
  %.not.i84 = icmp eq i8 %i.r, 0
  br i1 %.not.i84, label %compute_size_with_overflow.exit37, label %tsd_fetch_impl.exit, !prof !147

tsd_fetch_impl.exit:                              ; preds = %mallocx_arena_get.exit
  %i.s = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.p, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !148
  %i.t = icmp eq i8 %.pre, 0
  br i1 %i.t, label %compute_size_with_overflow.exit37, label %bb.av, !prof !221

compute_size_with_overflow.exit37:                ; preds = %mallocx_arena_get.exit, %tsd_fetch_impl.exit
  %.0.i85314 = phi ptr [ %i.s, %tsd_fetch_impl.exit ], [ %i.p, %mallocx_arena_get.exit ] ; 17 uses
  %i.u = trunc nuw i8 %.sroa.42.0 to i1           ; 6 uses
  %i.v = icmp eq i64 %.sroa.32.0, 0               ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.j

bb.f:                                             ; preds = %compute_size_with_overflow.exit37
  %i.w = icmp ult i64 %0, 4097
  br i1 %i.w, label %bb.g, label %bb.h, !prof !147

bb.g:                                             ; preds = %bb.f
  %i.x = add nuw nsw i64 %0, 7
  %i.y = lshr i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !148
  %i.ab = zext i8 %i.aa to i32
  br label %sz_size2index.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ac = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ac, label %imalloc.exit, label %bb.i, !prof !145

bb.i:                                             ; preds = %bb.h
  %i.ad = shl nuw i64 %0, 1
  %i.ae = add i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 2 uses
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = sub nuw nsw i64 60, %i.af
  %i.ai = add nsw i64 %0, -1
  %i.aj = lshr i64 %i.ai, %i.ah
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 3
  %i.am = shl nuw nsw i32 %i.ag, 2
  %reass.sub295 = sub nsw i32 %i.al, %i.am
  %i.an = add nsw i32 %reass.sub295, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.i, %bb.g
  %.0.i50.i = phi i32 [ %i.ab, %bb.g ], [ %i.an, %bb.i ] ; 3 uses
  %i.ao = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.ao, label %imalloc.exit, label %aligned_usize_get.exit.i.thread218, !prof !222

aligned_usize_get.exit.i.thread218:               ; preds = %sz_size2index.exit.i
  %i.ap = zext nneg i32 %.0.i50.i to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !160
  br label %bb.q

bb.j:                                             ; preds = %compute_size_with_overflow.exit37
  %i.as = icmp ult i64 %0, 14337
  %i.at = icmp ult i64 %.sroa.32.0, 4097
  %or.cond.i97 = and i1 %i.as, %i.at
  br i1 %or.cond.i97, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.au = add nsw i64 %0, -1
  %i.av = add nsw i64 %i.au, %.sroa.32.0
  %i.aw = sub nsw i64 0, %.sroa.32.0
  %i.ax = and i64 %i.av, %i.aw                    ; 4 uses
  %i.ay = icmp samesign ult i64 %i.ax, 4097
  br i1 %i.ay, label %bb.l, label %sz_s2u_compute.exit.i107, !prof !147

bb.l:                                             ; preds = %bb.k
  %i.az = add nuw nsw i64 %i.ax, 6
  %i.ba = lshr i64 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !148
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !160
  br label %sz_s2u.exit25.i109

sz_s2u_compute.exit.i107:                         ; preds = %bb.k
  %i.bg = shl nuw nsw i64 %i.ax, 1
  %i.bh = add nsw i64 %i.bg, -1
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bh, i1 true) ; 2 uses
  %notmask.i.i106 = ashr exact i64 -1152921504606846976, %i.bi
  %i.bj = lshr i64 1152921504606846975, %i.bi
  %i.bk = add nuw nsw i64 %i.ax, %i.bj
  %i.bl = and i64 %i.bk, %notmask.i.i106
  br label %sz_s2u.exit25.i109

sz_s2u.exit25.i109:                               ; preds = %sz_s2u_compute.exit.i107, %bb.l
  %.0.i24.i110 = phi i64 [ %i.bf, %bb.l ], [ %i.bl, %sz_s2u_compute.exit.i107 ] ; 2 uses
  %i.bm = icmp ult i64 %.0.i24.i110, 16384
  br i1 %i.bm, label %aligned_usize_get.exit.i, label %.thread214

bb.m:                                             ; preds = %bb.j
  %i.bn = icmp ugt i64 %.sroa.32.0, 8070450532247928832
  br i1 %i.bn, label %imalloc.exit, label %bb.n, !prof !251

bb.n:                                             ; preds = %bb.m
  %i.bo = icmp ult i64 %0, 16385
  br i1 %i.bo, label %.thread214, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.bp, label %sz_s2u_compute.exit29.i99, label %bb.p, !prof !145

bb.p:                                             ; preds = %bb.o
  %i.bq = shl nuw i64 %0, 1
  %i.br = add i64 %i.bq, -1
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.br, i1 true) ; 2 uses
  %notmask.i27.i98 = ashr exact i64 -1152921504606846976, %i.bs
  %i.bt = lshr i64 1152921504606846975, %i.bs
  %i.bu = add nuw nsw i64 %0, %i.bt
  %i.bv = and i64 %i.bu, %notmask.i27.i98
  br label %sz_s2u_compute.exit29.i99

sz_s2u_compute.exit29.i99:                        ; preds = %bb.p, %bb.o
  %.0.i28.i100 = phi i64 [ %i.bv, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.bw = icmp ult i64 %.0.i28.i100, %0
  br i1 %i.bw, label %imalloc.exit, label %.thread214

.thread214:                                       ; preds = %sz_s2u.exit25.i109, %sz_s2u_compute.exit29.i99, %bb.n
  %.0.i103 = phi i64 [ %.0.i28.i100, %sz_s2u_compute.exit29.i99 ], [ 16384, %bb.n ], [ 16384, %sz_s2u.exit25.i109 ] ; 3 uses
  %i.bx = load i64, ptr @je_sz_large_pad, align 8, !tbaa !160
  %i.by = add nuw nsw i64 %.sroa.32.0, 4094
  %i.bz = and i64 %i.by, 9223372036854771712
  %i.ca = add nsw i64 %i.bz, -4096
  %i.cb = add i64 %i.ca, %.0.i103
  %i.cc = add i64 %i.cb, %i.bx
  %i.cd = icmp ult i64 %i.cc, %.0.i103
  %..0.i104 = select i1 %i.cd, i64 0, i64 %.0.i103
  br label %aligned_usize_get.exit.i

aligned_usize_get.exit.i:                         ; preds = %.thread214, %sz_s2u.exit25.i109
  %.018.i105 = phi i64 [ %..0.i104, %.thread214 ], [ %.0.i24.i110, %sz_s2u.exit25.i109 ] ; 2 uses
  %i.ce = add nsw i64 %.018.i105, -8070450532247928833
  %spec.select.i.i = icmp ult i64 %i.ce, -8070450532247928832
  br i1 %spec.select.i.i, label %imalloc.exit, label %bb.q

bb.q:                                             ; preds = %aligned_usize_get.exit.i, %aligned_usize_get.exit.i.thread218
  %.0201223 = phi i64 [ %i.ar, %aligned_usize_get.exit.i.thread218 ], [ %.018.i105, %aligned_usize_get.exit.i ] ; 3 uses
  %.0202222 = phi i32 [ %.0.i50.i, %aligned_usize_get.exit.i.thread218 ], [ 0, %aligned_usize_get.exit.i ] ; 7 uses
  switch i32 %.sroa.54153.0, label %bb.s [
    i32 -2, label %bb.r
    i32 -1, label %tcache_get_from_ind.exit.i41
  ]

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 872
  br label %tcache_get_from_ind.exit.i41

bb.s:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr @je_tcaches, align 8, !tbaa !263
  %i.ch = zext nneg i32 %.sroa.54153.0 to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !148 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.cj to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit.i41 [
    i64 0, label %bb.t
    i64 1, label %bb.u
  ], !prof !264

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.153, i32 noundef range(i32 0, -2) %.sroa.54153.0) #20
  tail call void @abort() #21
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ck = tail call ptr @je_tcache_create_explicit(ptr noundef nonnull %.0.i85314) #20 ; 2 uses
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !148
  br label %tcache_get_from_ind.exit.i41

tcache_get_from_ind.exit.i41:                     ; preds = %bb.u, %bb.s, %bb.r, %bb.q
  %.0.i.i42 = phi ptr [ %i.cf, %bb.r ], [ null, %bb.q ], [ %i.cj, %bb.s ], [ %i.ck, %bb.u ] ; 7 uses
  %i.cl = icmp eq i32 %.sroa.60.0, -1
  br i1 %i.cl, label %arena_get.exit.thread, label %bb.v

bb.v:                                             ; preds = %tcache_get_from_ind.exit.i41
  %i.cm = zext nneg i32 %.sroa.60.0 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.cm
  %i.co = load atomic ptr, ptr %i.cn acquire, align 8 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %arena_get.exit, label %arena_get.exit.thread, !prof !145

arena_get.exit:                                   ; preds = %bb.v
  %i.cq = tail call ptr @je_arena_init(ptr noundef nonnull %.0.i85314, i32 noundef %.sroa.60.0, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.w, label %arena_get.exit.thread, !prof !146

bb.w:                                             ; preds = %arena_get.exit
  %i.cs = load i32, ptr @je_narenas_auto, align 4, !tbaa !14
  %.not.i.i77 = icmp ult i32 %.sroa.60.0, %i.cs
  br i1 %.not.i.i77, label %arena_get.exit.thread, label %imalloc.exit

arena_get.exit.thread:                            ; preds = %bb.w, %bb.v, %tcache_get_from_ind.exit.i41, %arena_get.exit
  %.1.ph = phi ptr [ %i.co, %bb.v ], [ %i.cq, %arena_get.exit ], [ null, %tcache_get_from_ind.exit.i41 ], [ null, %bb.w ] ; 4 uses
  br i1 %i.v, label %iallocztm.exit.i47, label %ipallocztm.exit83, !prof !147

ipallocztm.exit83:                                ; preds = %arena_get.exit.thread
  %i.ct = tail call ptr @je_arena_palloc(ptr noundef nonnull %.0.i85314, ptr noundef %.1.ph, i64 noundef %.0201223, i64 noundef %.sroa.32.0, i1 noundef zeroext %i.u, ptr noundef %.0.i.i42) #20
  br label %imalloc_no_sample.exit78

iallocztm.exit.i47:                               ; preds = %arena_get.exit.thread
  %.not.i20.i48 = icmp eq ptr %.0.i.i42, null
  br i1 %.not.i20.i48, label %bb.ar, label %bb.x, !prof !145

bb.x:                                             ; preds = %iallocztm.exit.i47
  %i.cu = icmp samesign ult i64 %0, 14337
  br i1 %i.cu, label %bb.y, label %bb.ah, !prof !147

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 8
  %i.cw = zext nneg i32 %.0202222 to i64          ; 3 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cw ; 8 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !227 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !228 ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 8, !tbaa !229 ; 2 uses
  %i.de = trunc i64 %i.da to i16
  %.not.i24.i64 = icmp eq i16 %i.dd, %i.de
  br i1 %.not.i24.i64, label %bb.aa, label %bb.z, !prof !145

bb.z:                                             ; preds = %bb.y
  store ptr %i.db, ptr %i.cx, align 8, !tbaa !227
  br label %cache_bin_alloc_impl.exit.i65.thread

bb.aa:                                            ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  %i.dg = load i16, ptr %i.df, align 4, !tbaa !230
  %.not21.i.i74 = icmp eq i16 %i.dg, %i.dd
  br i1 %.not21.i.i74, label %cache_bin_alloc_impl.exit.i65, label %bb.ab, !prof !145

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.db, ptr %i.cx, align 8, !tbaa !227
  %i.dh = ptrtoint ptr %i.db to i64
end_hunk_3
begin_hunk_4_@je_mallocx:bb.a
  br i1 %i.dk, label %.thread234, label %bb.ac, !prof !145

bb.ac:                                            ; preds = %cache_bin_alloc_impl.exit.i65
  %i.dl = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.cw
  %.val = load i16, ptr %i.dm, align 2, !tbaa !234
  %i.dn = icmp eq i16 %.val, 0
  br i1 %i.dn, label %bb.ad, label %bb.ae, !prof !145

bb.ad:                                            ; preds = %bb.ac
  %i.do = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %i.dj, i64 noundef range(i64 0, 14337) %0, i32 noundef %.0202222, i1 noundef zeroext %i.u) #20
  br label %.thread234

.thread234:                                       ; preds = %cache_bin_alloc_impl.exit.i65, %bb.ad
  %.0.i22.i70.ph = phi ptr [ %i.do, %bb.ad ], [ null, %cache_bin_alloc_impl.exit.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit78

bb.ae:                                            ; preds = %bb.ac
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %.0.i.i42, ptr noundef nonnull %i.cx, i32 noundef %.0202222, i1 noundef zeroext true) #20
  %i.dp = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %i.dj, ptr noundef nonnull %.0.i.i42, ptr noundef nonnull %i.cx, i32 noundef %.0202222, ptr noundef nonnull %i.a) #20
  %i.dq = load i8, ptr %i.a, align 1, !tbaa !235, !range !236, !noundef !237
  %.not292 = icmp eq i8 %i.dq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.not292, label %imalloc.exit, label %cache_bin_alloc_impl.exit.i65.thread

cache_bin_alloc_impl.exit.i65.thread:             ; preds = %bb.ab, %bb.z, %bb.ae
  %.131.i.i73 = phi ptr [ %i.dp, %bb.ae ], [ %i.cz, %bb.z ], [ %i.cz, %bb.ab ] ; 2 uses
  br i1 %i.u, label %bb.af, label %bb.ag, !prof !145

bb.af:                                            ; preds = %cache_bin_alloc_impl.exit.i65.thread
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cw
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !160
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i73, i8 0, i64 %i.ds, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %cache_bin_alloc_impl.exit.i65.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !238
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !238
  br label %imalloc_no_sample.exit78

bb.ah:                                            ; preds = %bb.x
  %i.dw = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !160
  %.not24.i.i49 = icmp ugt i64 %0, %i.dw
  br i1 %.not24.i.i49, label %bb.ar, label %bb.ai, !prof !145

bb.ai:                                            ; preds = %bb.ah
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 8
  %i.dy = zext nneg i32 %.0202222 to i64          ; 2 uses
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.dy ; 7 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !227 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !228 ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 8, !tbaa !229 ; 2 uses
  %i.eg = trunc i64 %i.ec to i16
  %.not.i26.i50 = icmp eq i16 %i.ef, %i.eg
  br i1 %.not.i26.i50, label %bb.ak, label %bb.aj, !prof !145

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.ed, ptr %i.dz, align 8, !tbaa !227
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  %i.ei = load i16, ptr %i.eh, align 4, !tbaa !230
  %.not21.i28.i63 = icmp eq i16 %i.ei, %i.ef
  br i1 %.not21.i28.i63, label %cache_bin_alloc_impl.exit29.i51, label %bb.al, !prof !145

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ed, ptr %i.dz, align 8, !tbaa !227
  %i.ej = ptrtoint ptr %i.ed to i64
  %i.ek = trunc i64 %i.ej to i16
  store i16 %i.ek, ptr %i.ee, align 8, !tbaa !229
  br label %bb.ao

cache_bin_alloc_impl.exit29.i51:                  ; preds = %bb.ak
  %i.el = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i85314, ptr noundef %.1.ph) ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %imalloc.exit, label %bb.am, !prof !145

bb.am:                                            ; preds = %cache_bin_alloc_impl.exit29.i51
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %.0.i.i42, ptr noundef nonnull %i.dz, i32 noundef %.0202222, i1 noundef zeroext false) #20
  %i.en = icmp samesign ugt i64 %0, 8070450532247928832
  br i1 %i.en, label %sz_s2u.exit.i56, label %bb.an, !prof !145

bb.an:                                            ; preds = %bb.am
  %i.eo = shl nuw i64 %0, 1
  %i.ep = add i64 %i.eo, -1
  %i.eq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ep, i1 true) ; 2 uses
  %notmask.i.i53 = ashr exact i64 -1152921504606846976, %i.eq
  %i.er = lshr i64 1152921504606846975, %i.eq
  %i.es = add nuw nsw i64 %0, %i.er
  %i.et = and i64 %i.es, %notmask.i.i53
  br label %sz_s2u.exit.i56

sz_s2u.exit.i56:                                  ; preds = %bb.am, %bb.an
  %.0.i31.i55 = phi i64 [ %i.et, %bb.an ], [ 0, %bb.am ]
  %i.eu = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %i.el, i64 noundef %.0.i31.i55, i1 noundef zeroext %i.u) #20
  br label %imalloc_no_sample.exit78

bb.ao:                                            ; preds = %bb.aj, %bb.al
  br i1 %i.u, label %bb.ap, label %bb.aq, !prof !145

bb.ap:                                            ; preds = %bb.ao
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dy
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !160
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eb, i8 0, i64 %i.ew, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !238
  %i.ez = add i64 %i.ey, 1
  store i64 %i.ez, ptr %i.ex, align 8, !tbaa !238
  br label %imalloc_no_sample.exit78

bb.ar:                                            ; preds = %bb.ah, %iallocztm.exit.i47
  %i.fa = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i85314, ptr noundef %.1.ph, i64 noundef %0, i32 noundef %.0202222, i1 noundef zeroext %i.u) #20
  br label %imalloc_no_sample.exit78

imalloc_no_sample.exit78:                         ; preds = %bb.ar, %.thread234, %bb.ag, %bb.aq, %sz_s2u.exit.i56, %ipallocztm.exit83
  %.0.i46 = phi ptr [ %i.eu, %sz_s2u.exit.i56 ], [ %i.ct, %ipallocztm.exit83 ], [ %i.fa, %bb.ar ], [ %.0.i22.i70.ph, %.thread234 ], [ %.131.i.i73, %bb.ag ], [ %i.eb, %bb.aq ] ; 2 uses
  %i.fb = icmp eq ptr %.0.i46, null
  br i1 %i.fb, label %imalloc.exit, label %bb.as, !prof !315

bb.as:                                            ; preds = %imalloc_no_sample.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !242
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 840 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !243
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !244
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !245
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 848
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !246
  %i.fk = load i64, ptr %i.fc, align 8, !tbaa !160 ; 2 uses
  %i.fl = add i64 %i.fk, %.0201223
  store i64 %i.fl, ptr %i.fc, align 8, !tbaa !160
  %i.fm = load i64, ptr %i.fg, align 8, !tbaa !160
  %i.fn = sub i64 %i.fm, %i.fk
  %i.fo = icmp ult i64 %.0201223, %i.fn
  br i1 %i.fo, label %bb.au, label %bb.at, !prof !147

bb.at:                                            ; preds = %bb.as
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %2) #20
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %imalloc.exit

bb.av:                                            ; preds = %tsd_fetch_impl.exit
  %i.fp = load i32, ptr @je_malloc_init_state, align 4, !tbaa !14
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %compute_size_with_overflow.exit, label %bb.aw, !prof !147

bb.aw:                                            ; preds = %bb.av
  %i.fr = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.fr, label %imalloc_init_check.exit, label %compute_size_with_overflow.exit, !prof !247

imalloc_init_check.exit:                          ; preds = %bb.aw
  %i.fs = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.fs, align 4, !tbaa !14
  br label %imalloc.exit

compute_size_with_overflow.exit:                  ; preds = %bb.av, %bb.aw
  %i.ft = load i8, ptr @je_opt_zero, align 1, !range !236
  %i.fu = or i8 %i.ft, %.sroa.42.0
  %.0.i.i18 = icmp ne i8 %i.fu, 0                 ; 7 uses
  %i.fv = icmp eq i64 %.sroa.32.0, 0              ; 2 uses
  br i1 %i.fv, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %compute_size_with_overflow.exit
  %i.fw = icmp ult i64 %0, 4097
  br i1 %i.fw, label %bb.ay, label %bb.az, !prof !147

bb.ay:                                            ; preds = %bb.ax
  %i.fx = add nuw nsw i64 %0, 7
  %i.fy = lshr i64 %i.fx, 3
  %i.fz = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !148
  %i.gb = zext i8 %i.ga to i32
  br label %sz_size2index.exit.i28

bb.az:                                            ; preds = %bb.ax
  %i.gc = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.gc, label %aligned_usize_get.exit.i22.thread, label %bb.ba, !prof !145

bb.ba:                                            ; preds = %bb.az
  %i.gd = shl nuw i64 %0, 1
  %i.ge = add i64 %i.gd, -1
  %i.gf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ge, i1 true) ; 2 uses
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = sub nuw nsw i64 60, %i.gf
  %i.gi = add nsw i64 %0, -1
  %i.gj = lshr i64 %i.gi, %i.gh
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = and i32 %i.gk, 3
  %i.gm = shl nuw nsw i32 %i.gg, 2
  %reass.sub = sub nsw i32 %i.gl, %i.gm
  %i.gn = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i28

sz_size2index.exit.i28:                           ; preds = %bb.ba, %bb.ay
  %.0.i50.i29 = phi i32 [ %i.gb, %bb.ay ], [ %i.gn, %bb.ba ] ; 3 uses
  %i.go = icmp samesign ugt i32 %.0.i50.i29, 234
  br i1 %i.go, label %aligned_usize_get.exit.i22.thread, label %aligned_usize_get.exit.i22.thread250, !prof !222

aligned_usize_get.exit.i22.thread250:             ; preds = %sz_size2index.exit.i28
  %i.gp = zext nneg i32 %.0.i50.i29 to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !160
  br label %bb.bi

bb.bb:                                            ; preds = %compute_size_with_overflow.exit
  %i.gs = icmp ult i64 %0, 14337
  %i.gt = icmp ult i64 %.sroa.32.0, 4097
  %or.cond.i91 = and i1 %i.gs, %i.gt
  br i1 %or.cond.i91, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.gu = add nsw i64 %0, -1
  %i.gv = add nsw i64 %i.gu, %.sroa.32.0
  %i.gw = sub nsw i64 0, %.sroa.32.0
  %i.gx = and i64 %i.gv, %i.gw                    ; 4 uses
  %i.gy = icmp samesign ult i64 %i.gx, 4097
  br i1 %i.gy, label %bb.bd, label %sz_s2u_compute.exit.i96, !prof !147

bb.bd:                                            ; preds = %bb.bc
  %i.gz = add nuw nsw i64 %i.gx, 6
  %i.ha = lshr i64 %i.gz, 3
  %i.hb = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !148
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !160
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i96:                          ; preds = %bb.bc
  %i.hg = shl nuw nsw i64 %i.gx, 1
  %i.hh = add nsw i64 %i.hg, -1
  %i.hi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.hh, i1 true) ; 2 uses
  %notmask.i.i95 = ashr exact i64 -1152921504606846976, %i.hi
  %i.hj = lshr i64 1152921504606846975, %i.hi
  %i.hk = add nuw nsw i64 %i.gx, %i.hj
  %i.hl = and i64 %i.hk, %notmask.i.i95
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i96, %bb.bd
  %.0.i24.i = phi i64 [ %i.hf, %bb.bd ], [ %i.hl, %sz_s2u_compute.exit.i96 ] ; 2 uses
  %i.hm = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.hm, label %aligned_usize_get.exit.i22, label %.thread246

bb.be:                                            ; preds = %bb.bb
  %i.hn = icmp ugt i64 %.sroa.32.0, 8070450532247928832
  br i1 %i.hn, label %aligned_usize_get.exit.i22.thread, label %bb.bf, !prof !251

bb.bf:                                            ; preds = %bb.be
  %i.ho = icmp ult i64 %0, 16385
  br i1 %i.ho, label %.thread246, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hp = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.hp, label %sz_s2u_compute.exit29.i, label %bb.bh, !prof !145

bb.bh:                                            ; preds = %bb.bg
  %i.hq = shl nuw i64 %0, 1
  %i.hr = add i64 %i.hq, -1
  %i.hs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.hr, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.hs
  %i.ht = lshr i64 1152921504606846975, %i.hs
  %i.hu = add nuw nsw i64 %0, %i.ht
  %i.hv = and i64 %i.hu, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.bh, %bb.bg
  %.0.i28.i = phi i64 [ %i.hv, %bb.bh ], [ 0, %bb.bg ] ; 2 uses
  %i.hw = icmp ult i64 %.0.i28.i, %0
  br i1 %i.hw, label %aligned_usize_get.exit.i22.thread, label %.thread246

.thread246:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.bf
  %.0.i94 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.bf ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.hx = load i64, ptr @je_sz_large_pad, align 8, !tbaa !160
  %i.hy = add nuw nsw i64 %.sroa.32.0, 4094
  %i.hz = and i64 %i.hy, 9223372036854771712
  %i.ia = add nsw i64 %i.hz, -4096
  %i.ib = add i64 %i.ia, %.0.i94
  %i.ic = add i64 %i.ib, %i.hx
  %i.id = icmp ult i64 %i.ic, %.0.i94
  %..0.i = select i1 %i.id, i64 0, i64 %.0.i94
  br label %aligned_usize_get.exit.i22

aligned_usize_get.exit.i22:                       ; preds = %.thread246, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread246 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 2 uses
  %i.ie = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i21 = icmp ult i64 %i.ie, -8070450532247928832
  br i1 %spec.select.i.i21, label %aligned_usize_get.exit.i22.thread, label %bb.bi

bb.bi:                                            ; preds = %aligned_usize_get.exit.i22.thread250, %aligned_usize_get.exit.i22
  %.0204255 = phi i64 [ %i.gr, %aligned_usize_get.exit.i22.thread250 ], [ %.018.i, %aligned_usize_get.exit.i22 ] ; 4 uses
  %.0205254 = phi i32 [ %.0.i50.i29, %aligned_usize_get.exit.i22.thread250 ], [ 0, %aligned_usize_get.exit.i22 ] ; 7 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !148
  %i.ih = icmp sgt i8 %i.ig, 0
  br i1 %i.ih, label %tcache_get_from_ind.exit.i.thread, label %bb.bj, !prof !249

bb.bj:                                            ; preds = %bb.bi
  switch i32 %.sroa.54153.0, label %bb.bl [
    i32 -2, label %bb.bk
    i32 -1, label %tcache_get_from_ind.exit.i
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.ii = load i8, ptr %i.s, align 8, !tbaa !235, !range !236, !noundef !237
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.s, i64 872
  %spec.select = select i1 %i.ij, ptr %i.ik, ptr null
  br label %tcache_get_from_ind.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.il = load ptr, ptr @je_tcaches, align 8, !tbaa !263
  %i.im = zext nneg i32 %.sroa.54153.0 to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.im ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !148 ; 2 uses
  %magicptr.i89 = ptrtoint ptr %i.io to i64
  switch i64 %magicptr.i89, label %tcache_get_from_ind.exit.i [
    i64 0, label %bb.bm
    i64 1, label %bb.bn
  ], !prof !264

bb.bm:                                            ; preds = %bb.bl
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.153, i32 noundef range(i32 0, -2) %.sroa.54153.0) #20
  tail call void @abort() #21
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.ip = tail call ptr @je_tcache_create_explicit(ptr noundef nonnull %i.s) #20 ; 2 uses
  store ptr %i.ip, ptr %i.in, align 8, !tbaa !148
  br label %tcache_get_from_ind.exit.i

tcache_get_from_ind.exit.i:                       ; preds = %bb.bn, %bb.bl, %bb.bk, %bb.bj
  %.0.i.i38 = phi ptr [ %spec.select, %bb.bk ], [ null, %bb.bj ], [ %i.io, %bb.bl ], [ %i.ip, %bb.bn ] ; 2 uses
  %i.iq = icmp eq i32 %.sroa.60.0, -1
  br i1 %i.iq, label %arena_get.exit120.thread, label %tcache_get_from_ind.exit.i.thread

tcache_get_from_ind.exit.i.thread:                ; preds = %bb.bi, %tcache_get_from_ind.exit.i
  %.0.i.i38269 = phi ptr [ %.0.i.i38, %tcache_get_from_ind.exit.i ], [ null, %bb.bi ] ; 3 uses
  %.sroa.60.2263266 = phi i32 [ %.sroa.60.0, %tcache_get_from_ind.exit.i ], [ 0, %bb.bi ] ; 3 uses
  %i.ir = zext nneg i32 %.sroa.60.2263266 to i64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ir
  %i.it = load atomic ptr, ptr %i.is acquire, align 8 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %arena_get.exit120, label %arena_get.exit120.thread, !prof !145

arena_get.exit120:                                ; preds = %tcache_get_from_ind.exit.i.thread
  %i.iv = tail call ptr @je_arena_init(ptr noundef nonnull %i.s, i32 noundef %.sroa.60.2263266, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.bo, label %arena_get.exit120.thread, !prof !146

bb.bo:                                            ; preds = %arena_get.exit120
  %i.ix = load i32, ptr @je_narenas_auto, align 4, !tbaa !14
  %.not.i.i = icmp ult i32 %.sroa.60.2263266, %i.ix
  br i1 %.not.i.i, label %arena_get.exit120.thread, label %aligned_usize_get.exit.i22.thread

arena_get.exit120.thread:                         ; preds = %bb.bo, %tcache_get_from_ind.exit.i.thread, %tcache_get_from_ind.exit.i, %arena_get.exit120
  %.0.i.i38267.ph = phi ptr [ %.0.i.i38269, %tcache_get_from_ind.exit.i.thread ], [ %.0.i.i38269, %arena_get.exit120 ], [ %.0.i.i38, %tcache_get_from_ind.exit.i ], [ %.0.i.i38269, %bb.bo ] ; 7 uses
  %.1208.ph = phi ptr [ %i.it, %tcache_get_from_ind.exit.i.thread ], [ %i.iv, %arena_get.exit120 ], [ null, %tcache_get_from_ind.exit.i ], [ null, %bb.bo ] ; 4 uses
  br i1 %i.fv, label %iallocztm.exit.i, label %ipallocztm.exit, !prof !147

ipallocztm.exit:                                  ; preds = %arena_get.exit120.thread
  %i.iy = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.s, ptr noundef %.1208.ph, i64 noundef %.0204255, i64 noundef %.sroa.32.0, i1 noundef zeroext %.0.i.i18, ptr noundef %.0.i.i38267.ph) #20
  br label %imalloc_no_sample.exit

iallocztm.exit.i:                                 ; preds = %arena_get.exit120.thread
  %.not.i20.i = icmp eq ptr %.0.i.i38267.ph, null
  br i1 %.not.i20.i, label %bb.cj, label %bb.bp, !prof !145

bb.bp:                                            ; preds = %iallocztm.exit.i
  %i.iz = icmp samesign ult i64 %0, 14337
  br i1 %i.iz, label %bb.bq, label %bb.bz, !prof !147

bb.bq:                                            ; preds = %bb.bp
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i.i38267.ph, i64 8
  %i.jb = zext nneg i32 %.0205254 to i64          ; 3 uses
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %i.jb ; 8 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !227 ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !228 ; 2 uses
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  %i.ji = load i16, ptr %i.jh, align 8, !tbaa !229 ; 2 uses
  %i.jj = trunc i64 %i.jf to i16
  %.not.i24.i = icmp eq i16 %i.ji, %i.jj
  br i1 %.not.i24.i, label %bb.bs, label %bb.br, !prof !145

bb.br:                                            ; preds = %bb.bq
end_hunk_4
begin_hunk_5_@do_rallocx:bb.a
  %i.bv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bu, i1 true) ; 2 uses
  %notmask.i.i76 = ashr exact i64 -1152921504606846976, %i.bv
  %i.bw = lshr i64 1152921504606846975, %i.bv
  %i.bx = add nuw nsw i64 %i.bk, %i.bw
  %i.by = and i64 %i.bx, %notmask.i.i76
  br label %sz_s2u.exit25.i79

sz_s2u.exit25.i79:                                ; preds = %sz_s2u_compute.exit.i77, %bb.o
  %.0.i24.i80 = phi i64 [ %i.bs, %bb.o ], [ %i.by, %sz_s2u_compute.exit.i77 ] ; 2 uses
  %i.bz = icmp ult i64 %.0.i24.i80, 16384
  br i1 %i.bz, label %aligned_usize_get.exit, label %.thread108

bb.p:                                             ; preds = %bb.m
  %i.ca = icmp ugt i64 %i.e, 8070450532247928832
  br i1 %i.ca, label %arena_get_from_ind.exit, label %bb.q, !prof !251

bb.q:                                             ; preds = %bb.p
  %i.cb = icmp ult i64 %1, 16385
  br i1 %i.cb, label %.thread108, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.cc, label %sz_s2u_compute.exit29.i70, label %bb.s, !prof !145

bb.s:                                             ; preds = %bb.r
  %i.cd = shl nuw i64 %1, 1
  %i.ce = add i64 %i.cd, -1
  %i.cf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ce, i1 true) ; 2 uses
  %notmask.i27.i69 = ashr exact i64 -1152921504606846976, %i.cf
  %i.cg = lshr i64 1152921504606846975, %i.cf
  %i.ch = add nuw nsw i64 %1, %i.cg
  %i.ci = and i64 %i.ch, %notmask.i27.i69
  br label %sz_s2u_compute.exit29.i70

sz_s2u_compute.exit29.i70:                        ; preds = %bb.s, %bb.r
  %.0.i28.i71 = phi i64 [ %i.ci, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.cj = icmp ult i64 %.0.i28.i71, %1
  br i1 %i.cj, label %arena_get_from_ind.exit, label %.thread108

.thread108:                                       ; preds = %sz_s2u.exit25.i79, %sz_s2u_compute.exit29.i70, %bb.q
  %.0.i73 = phi i64 [ %.0.i28.i71, %sz_s2u_compute.exit29.i70 ], [ 16384, %bb.q ], [ 16384, %sz_s2u.exit25.i79 ] ; 3 uses
  %i.ck = load i64, ptr @je_sz_large_pad, align 8, !tbaa !160
  %i.cl = add nuw i64 %i.d, 4094
  %i.cm = and i64 %i.cl, 9223372036854771712
  %i.cn = add nsw i64 %i.cm, -4096
  %i.co = add i64 %i.cn, %.0.i73
  %i.cp = add i64 %i.co, %i.ck
  %i.cq = icmp ult i64 %i.cp, %.0.i73
  %..0.i74 = select i1 %i.cq, i64 0, i64 %.0.i73
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread108, %sz_s2u.exit25.i79, %bb.j, %bb.l
  %storemerge.i = phi i64 [ %.0.i24.i80, %sz_s2u.exit25.i79 ], [ %i.ax, %bb.j ], [ %i.be, %bb.l ], [ %..0.i74, %.thread108 ] ; 6 uses
  %i.cr = add i64 %storemerge.i, -8070450532247928833
  %spec.select.i = icmp ult i64 %i.cr, -8070450532247928832
  br i1 %spec.select.i, label %arena_get_from_ind.exit, label %tsdn_witness_tsdp_get.exit.i

tsdn_witness_tsdp_get.exit.i:                     ; preds = %aligned_usize_get.exit
  store i8 %i.a, ptr %11, align 8, !tbaa !320
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cs, i8 0, i64 7, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 %i.ak, ptr %i.ct, align 8, !tbaa !160
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %1, ptr %i.cu, align 8, !tbaa !160
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cw = sext i32 %2 to i64
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !160
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 0, ptr %i.cx, align 8, !tbaa !160
  br i1 %i.ap, label %iralloct.exit, label %bb.t

bb.t:                                             ; preds = %tsdn_witness_tsdp_get.exit.i
  %i.cy = add nsw i64 %i.e, -1                    ; 2 uses
  %i.cz = and i64 %i.cy, %i.ak
  %.not23.i = icmp eq i64 %i.cz, 0
  br i1 %.not23.i, label %iralloct.exit, label %tsdn_witness_tsdp_get.exit.i63

tsdn_witness_tsdp_get.exit.i63:                   ; preds = %bb.t
  %i.da = icmp samesign ult i64 %1, 14337
  %i.db = icmp samesign ult i64 %i.e, 4097
  %or.cond.i = and i1 %i.da, %i.db
  br i1 %or.cond.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %tsdn_witness_tsdp_get.exit.i63
  %i.dc = add nuw nsw i64 %i.cy, %1
  %i.dd = sub nsw i64 0, %i.e
  %i.de = and i64 %i.dc, %i.dd                    ; 4 uses
  %i.df = icmp samesign ult i64 %i.de, 4097
  br i1 %i.df, label %bb.v, label %sz_s2u_compute.exit.i, !prof !147

bb.v:                                             ; preds = %bb.u
  %i.dg = add nuw nsw i64 %i.de, 6
  %i.dh = lshr i64 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !148
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !160
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i:                            ; preds = %bb.u
  %i.dn = shl nuw nsw i64 %i.de, 1
  %i.do = add nsw i64 %i.dn, -1
  %i.dp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.do, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.dp
  %i.dq = lshr i64 1152921504606846975, %i.dp
  %i.dr = add nuw nsw i64 %i.de, %i.dq
  %i.ds = and i64 %i.dr, %notmask.i.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i, %bb.v
  %.0.i24.i = phi i64 [ %i.dm, %bb.v ], [ %i.ds, %sz_s2u_compute.exit.i ] ; 2 uses
  %i.dt = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.dt, label %sz_sa2u.exit, label %.thread111

bb.w:                                             ; preds = %tsdn_witness_tsdp_get.exit.i63
  %i.du = icmp samesign ult i64 %1, 16385
  br i1 %i.du, label %.thread111, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dv = icmp samesign ugt i64 %1, 8070450532247928832
  br i1 %i.dv, label %sz_s2u_compute.exit29.i, label %bb.y, !prof !145

bb.y:                                             ; preds = %bb.x
  %i.dw = shl nuw i64 %1, 1
  %i.dx = add i64 %i.dw, -1
  %i.dy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dx, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.dy
  %i.dz = lshr i64 1152921504606846975, %i.dy
  %i.ea = add nuw nsw i64 %1, %i.dz
  %i.eb = and i64 %i.ea, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.y, %bb.x
  %.0.i28.i = phi i64 [ %i.eb, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.ec = icmp samesign ult i64 %.0.i28.i, %1
  br i1 %i.ec, label %arena_get_from_ind.exit, label %.thread111

.thread111:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.w
  %.0.i67 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.w ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.ed = load i64, ptr @je_sz_large_pad, align 8, !tbaa !160
  %i.ee = add nuw i64 %i.d, 4094
  %i.ef = and i64 %i.ee, 9223372036854771712
  %i.eg = add nsw i64 %i.ef, -4096
  %i.eh = add i64 %i.eg, %.0.i67
  %i.ei = add i64 %i.eh, %i.ed
  %i.ej = icmp ult i64 %i.ei, %.0.i67
  %..0.i = select i1 %i.ej, i64 0, i64 %.0.i67
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %sz_s2u.exit25.i, %.thread111
  %.018.i = phi i64 [ %..0.i, %.thread111 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 2 uses
  %i.ek = add nsw i64 %.018.i, -8070450532247928833
  %i.el = icmp ult i64 %i.ek, -8070450532247928832
  br i1 %i.el, label %arena_get_from_ind.exit, label %ipallocztm.exit.i, !prof !221

ipallocztm.exit.i:                                ; preds = %sz_sa2u.exit
  %i.em = call ptr @je_arena_palloc(ptr noundef %.0.i59, ptr noundef %.1.ph, i64 noundef %.018.i, i64 noundef range(i64 0, -9223372036854775807) %i.e, i1 noundef zeroext %.0.i52, ptr noundef %.0.i106) #20 ; 13 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %arena_get_from_ind.exit, label %isdalloct.exit

isdalloct.exit:                                   ; preds = %ipallocztm.exit.i
  %i.eo = call i64 @llvm.umin.i64(i64 %1, i64 %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %0, i64 %i.eo, i1 false)
  %i.ep = load i8, ptr %11, align 8, !tbaa !320, !range !236, !noundef !237
  %i.eq = trunc nuw i8 %i.ep to i1
  %i.er = select i1 %i.eq, i32 7, i32 8
  %i.es = ptrtoint ptr %i.em to i64
  call void @je_hook_invoke_alloc(i32 noundef %i.er, ptr noundef nonnull %i.em, i64 noundef %i.es, ptr noundef nonnull %i.ct) #20
  %i.et = load i8, ptr %11, align 8, !tbaa !320, !range !236, !noundef !237
  %i.eu = trunc nuw i8 %i.et to i1
  %i.ev = select i1 %i.eu, i32 3, i32 4
  call void @je_hook_invoke_dalloc(i32 noundef %i.ev, ptr noundef %0, ptr noundef nonnull %i.ct) #20
  %i.ew = icmp eq ptr %.0.i106, null
  br i1 %i.ew, label %bb.z, label %bb.aa, !prof !145

bb.z:                                             ; preds = %isdalloct.exit
  call fastcc void @arena_sdalloc_no_tcache(ptr noundef %.0.i59, ptr noundef %0, i64 noundef %i.ao)
  br label %iralloct.exit.thread

bb.aa:                                            ; preds = %isdalloct.exit
  %i.ex = icmp ult i64 %i.ao, 4097
  br i1 %i.ex, label %bb.ab, label %bb.ac, !prof !147

bb.ab:                                            ; preds = %bb.aa
  %i.ey = add nuw nsw i64 %i.ao, 7
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !148
  %i.fc = zext i8 %i.fb to i32
  br label %sz_size2index.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.fd = icmp ugt i64 %i.ao, 8070450532247928832
  br i1 %i.fd, label %sz_size2index.exit.i.thread, label %bb.ad, !prof !145

bb.ad:                                            ; preds = %bb.ac
  %i.fe = shl nuw i64 %i.ao, 1
  %i.ff = add i64 %i.fe, -1
  %i.fg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ff, i1 true) ; 2 uses
  %i.fh = trunc nuw nsw i64 %i.fg to i32
  %i.fi = sub nuw nsw i64 60, %i.fg
  %i.fj = add nsw i64 %i.ao, -1
  %i.fk = lshr i64 %i.fj, %i.fi
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = and i32 %i.fl, 3
  %i.fn = shl nuw nsw i32 %i.fh, 2
  %reass.sub = sub nsw i32 %i.fm, %i.fn
  %i.fo = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.ad, %bb.ab
  %.0.i.i84 = phi i32 [ %i.fc, %bb.ab ], [ %i.fo, %bb.ad ] ; 4 uses
  %i.fp = icmp samesign ult i32 %.0.i.i84, 39
  br i1 %i.fp, label %bb.ae, label %sz_size2index.exit.i.thread, !prof !265

bb.ae:                                            ; preds = %sz_size2index.exit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i106, i64 8
  %i.fr = zext nneg i32 %.0.i.i84 to i64          ; 2 uses
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %i.fr ; 6 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !227 ; 2 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 18 ; 2 uses
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !255
  %i.fx = trunc i64 %i.fu to i16
  %i.fy = icmp eq i16 %i.fw, %i.fx
  br i1 %i.fy, label %cache_bin_dalloc_easy.exit16.i, label %cache_bin_dalloc_easy.exit16.i.thread, !prof !145

cache_bin_dalloc_easy.exit16.i.thread:            ; preds = %bb.ae
  %i.fz = getelementptr inbounds i8, ptr %i.ft, i64 -8 ; 2 uses
  store ptr %i.fz, ptr %i.fs, align 8, !tbaa !227
  store ptr %0, ptr %i.fz, align 8, !tbaa !228
  br label %iralloct.exit.thread

cache_bin_dalloc_easy.exit16.i:                   ; preds = %bb.ae
  %i.ga = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.fr
  %.val90 = load i16, ptr %i.gb, align 2, !tbaa !234 ; 2 uses
  %i.gc = icmp eq i16 %.val90, 0
  br i1 %i.gc, label %bb.af, label %bb.ag, !prof !145

bb.af:                                            ; preds = %cache_bin_dalloc_easy.exit16.i
  call void @je_arena_dalloc_small(ptr noundef %.0.i59, ptr noundef %0) #20
  br label %iralloct.exit.thread

bb.ag:                                            ; preds = %cache_bin_dalloc_easy.exit16.i
  %i.gd = zext i16 %.val90 to i32
  %i.ge = load i32, ptr @je_opt_lg_tcache_flush_small_div, align 4, !tbaa !14
  %i.gf = lshr i32 %i.gd, %i.ge
  call void @je_tcache_bin_flush_small(ptr noundef %.0.i59, ptr noundef nonnull %.0.i106, ptr noundef nonnull %i.fs, i32 noundef %.0.i.i84, i32 noundef %i.gf) #20
  %i.gg = load ptr, ptr %i.fs, align 8, !tbaa !227 ; 2 uses
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = load i16, ptr %i.fv, align 2, !tbaa !255
  %i.gj = trunc i64 %i.gh to i16
  %i.gk = icmp eq i16 %i.gi, %i.gj
  br i1 %i.gk, label %iralloct.exit.thread, label %bb.ah, !prof !145

bb.ah:                                            ; preds = %bb.ag
  %i.gl = getelementptr inbounds i8, ptr %i.gg, i64 -8 ; 2 uses
  store ptr %i.gl, ptr %i.fs, align 8, !tbaa !227
  store ptr %0, ptr %i.gl, align 8, !tbaa !228
  br label %iralloct.exit.thread

sz_size2index.exit.i.thread:                      ; preds = %bb.ac, %sz_size2index.exit.i
  %.0.i.i84114 = phi i32 [ %.0.i.i84, %sz_size2index.exit.i ], [ 235, %bb.ac ] ; 3 uses
  %i.gm = load i32, ptr @je_nhbins, align 4, !tbaa !14
  %i.gn = icmp ult i32 %.0.i.i84114, %i.gm
  br i1 %i.gn, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %sz_size2index.exit.i.thread
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i106, i64 8
  %i.gp = zext nneg i32 %.0.i.i84114 to i64       ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %i.gp ; 6 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !227 ; 2 uses
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 18 ; 2 uses
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !255
  %i.gv = trunc i64 %i.gs to i16
  %i.gw = icmp eq i16 %i.gu, %i.gv
  br i1 %i.gw, label %cache_bin_dalloc_easy.exit12.i.i, label %cache_bin_dalloc_easy.exit12.i.i.thread, !prof !145

cache_bin_dalloc_easy.exit12.i.i.thread:          ; preds = %bb.ai
  %i.gx = getelementptr inbounds i8, ptr %i.gr, i64 -8 ; 2 uses
  store ptr %i.gx, ptr %i.gq, align 8, !tbaa !227
  store ptr %0, ptr %i.gx, align 8, !tbaa !228
  br label %iralloct.exit.thread

cache_bin_dalloc_easy.exit12.i.i:                 ; preds = %bb.ai
  %i.gy = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %i.gp
  %.val91 = load i16, ptr %i.gz, align 2, !tbaa !234
  %i.ha = zext i16 %.val91 to i32
  %i.hb = load i32, ptr @je_opt_lg_tcache_flush_large_div, align 4, !tbaa !14
  %i.hc = lshr i32 %i.ha, %i.hb
  call void @je_tcache_bin_flush_large(ptr noundef %.0.i59, ptr noundef nonnull %.0.i106, ptr noundef nonnull %i.gq, i32 noundef %.0.i.i84114, i32 noundef %i.hc) #20
  %i.hd = load ptr, ptr %i.gq, align 8, !tbaa !227 ; 2 uses
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = load i16, ptr %i.gt, align 2, !tbaa !255
  %i.hg = trunc i64 %i.he to i16
  %i.hh = icmp eq i16 %i.hf, %i.hg
  br i1 %i.hh, label %iralloct.exit.thread, label %bb.aj, !prof !145

bb.aj:                                            ; preds = %cache_bin_dalloc_easy.exit12.i.i
  %i.hi = getelementptr inbounds i8, ptr %i.hd, i64 -8 ; 2 uses
  store ptr %i.hi, ptr %i.gq, align 8, !tbaa !227
  store ptr %0, ptr %i.hi, align 8, !tbaa !228
  br label %iralloct.exit.thread

bb.ak:                                            ; preds = %sz_size2index.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  br i1 %i.aj, label %bb.al, label %bb.am, !prof !145

bb.al:                                            ; preds = %bb.ak
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %8) #20
  br label %tsdn_rtree_ctx.exit

bb.am:                                            ; preds = %bb.ak
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.i59, i64 448
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.al, %bb.am
  %.0.i86 = phi ptr [ %8, %bb.al ], [ %i.hj, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef %.0.i59, ptr noundef nonnull %.0.i86, i64 noundef %i.ak)
  %i.hk = load ptr, ptr %9, align 8, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @je_large_dalloc(ptr noundef %.0.i59, ptr noundef %i.hk) #20
  br label %iralloct.exit.thread

iralloct.exit:                                    ; preds = %tsdn_witness_tsdp_get.exit.i, %bb.t
  %i.hl = call ptr @je_arena_ralloc(ptr noundef %.0.i59, ptr noundef %.1.ph, ptr noundef %0, i64 noundef %i.ao, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775807) %i.e, i1 noundef zeroext %.0.i52, ptr noundef %.0.i106, ptr noundef nonnull %11) #20 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %arena_get_from_ind.exit, label %iralloct.exit.thread, !prof !221

iralloct.exit.thread:                             ; preds = %bb.z, %bb.ag, %bb.ah, %cache_bin_dalloc_easy.exit16.i.thread, %bb.af, %cache_bin_dalloc_easy.exit12.i.i.thread, %bb.aj, %cache_bin_dalloc_easy.exit12.i.i, %tsdn_rtree_ctx.exit, %iralloct.exit
  %.0.i62118 = phi ptr [ %i.hl, %iralloct.exit ], [ %i.em, %tsdn_rtree_ctx.exit ], [ %i.em, %cache_bin_dalloc_easy.exit12.i.i ], [ %i.em, %bb.aj ], [ %i.em, %cache_bin_dalloc_easy.exit12.i.i.thread ], [ %i.em, %bb.af ], [ %i.em, %cache_bin_dalloc_easy.exit16.i.thread ], [ %i.em, %bb.ah ], [ %i.em, %bb.ag ], [ %i.em, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i8 1, ptr %6, align 8, !tbaa !242
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i59, i64 840 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !243
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i59, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !244
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i59, i64 16 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !245
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i59, i64 848
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !246
  %i.hv = load i64, ptr %i.hn, align 8, !tbaa !160 ; 2 uses
  %i.hw = add i64 %i.hv, %storemerge.i
  store i64 %i.hw, ptr %i.hn, align 8, !tbaa !160
  %i.hx = load i64, ptr %i.hr, align 8, !tbaa !160
  %i.hy = sub i64 %i.hx, %i.hv
  %i.hz = icmp ult i64 %storemerge.i, %i.hy
  br i1 %i.hz, label %te_event_advance.exit89, label %bb.an, !prof !147

bb.an:                                            ; preds = %iralloct.exit.thread
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i59, ptr noundef nonnull %6) #20
  br label %te_event_advance.exit89

te_event_advance.exit89:                          ; preds = %iralloct.exit.thread, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i8 0, ptr %7, align 8, !tbaa !242
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i59, i64 856 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !243
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i59, i64 24
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !244
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i59, i64 32 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !245
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i59, i64 864
  %i.ih = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !246
  %i.ii = load i64, ptr %i.ia, align 8, !tbaa !160 ; 2 uses
  %i.ij = add i64 %i.ii, %i.ao
  store i64 %i.ij, ptr %i.ia, align 8, !tbaa !160
  %i.ik = load i64, ptr %i.ie, align 8, !tbaa !160
  %i.il = sub i64 %i.ik, %i.ii
  %i.im = icmp ult i64 %i.ao, %i.il
  br i1 %i.im, label %te_event_advance.exit, label %bb.ao, !prof !147

bb.ao:                                            ; preds = %te_event_advance.exit89
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i59, ptr noundef nonnull %7) #20
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %te_event_advance.exit89, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.in = load i8, ptr @je_opt_junk_alloc, align 1, !tbaa !235, !range !236, !noundef !237
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %bb.ap, label %bb.ar, !prof !145

bb.ap:                                            ; preds = %te_event_advance.exit
  %i.ip = icmp ule i64 %storemerge.i, %i.ao
  %or.cond = select i1 %i.ip, i1 true, i1 %.0.i52
  br i1 %or.cond, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.iq = sub nuw nsw i64 %storemerge.i, %i.ao
  %i.ir = ptrtoint ptr %.0.i62118 to i64
  %i.is = add i64 %i.ao, %i.ir
  %i.it = inttoptr i64 %i.is to ptr
  %i.iu = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !228
  call void %i.iu(ptr noundef %i.it, i64 noundef %i.iq) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %te_event_advance.exit
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 %i.ao, ptr %4, align 8, !tbaa !160
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.not49 = icmp eq ptr %5, null
  br i1 %.not49, label %arena_get_from_ind.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i64 %storemerge.i, ptr %5, align 8, !tbaa !160
  br label %arena_get_from_ind.exit

arena_get_from_ind.exit:                          ; preds = %sz_s2u_compute.exit29.i, %ipallocztm.exit.i, %sz_sa2u.exit, %sz_s2u_compute.exit29.i70, %bb.p, %bb.k, %aligned_usize_get.exit, %iralloct.exit, %bb.c, %bb.at, %bb.au
  %.0 = phi ptr [ %.0.i62118, %bb.at ], [ %.0.i62118, %bb.au ], [ null, %sz_s2u_compute.exit29.i70 ], [ null, %aligned_usize_get.exit ], [ null, %bb.c ], [ null, %iralloct.exit ], [ null, %bb.k ], [ null, %bb.p ], [ null, %sz_sa2u.exit ], [ null, %ipallocztm.exit.i ], [ null, %sz_s2u_compute.exit29.i ]
  ret ptr %.0
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local ptr @je_realloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #7 !guid !321 {
bb.a:
  %i.a = tail call fastcc ptr @je_realloc_internal(ptr noundef %0, i64 noundef %1, ptr noundef null, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @je_realloc_internal(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #9 !guid !322 {
bb.a:
  %4 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %5 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %i.d = icmp ne ptr %0, null                     ; 2 uses
  %i.e = icmp ne i64 %1, 0                        ; 2 uses
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !147

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @do_rallocx(ptr noundef nonnull %0, i64 noundef %1, i32 noundef 0, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3)
  br label %bb.bh

bb.c:                                             ; preds = %bb.a
  %.not288 = xor i1 %i.e, true
  %or.cond = and i1 %i.d, %.not288
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc ptr @do_realloc_nonnull_zero(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  br label %bb.bh

bb.e:                                             ; preds = %bb.c
  %i.i = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 832
  %i.k = load i8, ptr %i.j, align 8, !tbaa !148
  %.not.i99 = icmp eq i8 %i.k, 0
  br i1 %.not.i99, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !147

tsd_fetch_impl.exit:                              ; preds = %bb.e
  %i.l = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.i, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !148
  %i.m = icmp eq i8 %.pre, 0
  br i1 %i.m, label %tsd_fetch_impl.exit.thread, label %bb.z, !prof !221

tsd_fetch_impl.exit.thread:                       ; preds = %bb.e, %tsd_fetch_impl.exit
  %.0.i100305 = phi ptr [ %i.l, %tsd_fetch_impl.exit ], [ %i.i, %bb.e ] ; 16 uses
  %i.n = icmp ult i64 %1, 4097
  br i1 %i.n, label %bb.f, label %bb.g, !prof !147

bb.f:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.o = add nuw nsw i64 %1, 7
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !148
  %i.s = zext i8 %i.r to i32
  br label %sz_size2index.exit.i

bb.g:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.t = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.t, label %aligned_usize_get.exit.i.thread, label %bb.h, !prof !145

bb.h:                                             ; preds = %bb.g
  %i.u = shl nuw i64 %1, 1
  %i.v = add i64 %i.u, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.v, i1 true) ; 2 uses
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = sub nuw nsw i64 60, %i.w
  %i.z = add nsw i64 %1, -1
  %i.aa = lshr i64 %i.z, %i.y
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 3
  %i.ad = shl nuw nsw i32 %i.x, 2
  %reass.sub287 = sub nsw i32 %i.ac, %i.ad
  %i.ae = add nsw i32 %reass.sub287, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.h, %bb.f
  %.0.i50.i = phi i32 [ %i.s, %bb.f ], [ %i.ae, %bb.h ] ; 7 uses
  %i.af = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.af, label %aligned_usize_get.exit.i.thread, label %iallocztm.exit.i62, !prof !248

iallocztm.exit.i62:                               ; preds = %sz_size2index.exit.i
  %i.ag = zext nneg i32 %.0.i50.i to i64          ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !160 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i100305, i64 872 ; 3 uses
  %i.ak = icmp samesign ult i64 %1, 14337
  br i1 %i.ak, label %bb.i, label %bb.p, !prof !147

bb.i:                                             ; preds = %iallocztm.exit.i62
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i100305, i64 880
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ag ; 8 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !227 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !228 ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !229 ; 2 uses
  %i.at = trunc i64 %i.ap to i16
  %.not.i24.i79 = icmp eq i16 %i.as, %i.at
  br i1 %.not.i24.i79, label %bb.k, label %bb.j, !prof !145

bb.j:                                             ; preds = %bb.i
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !227
  br label %cache_bin_alloc_impl.exit.i80.thread

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.av = load i16, ptr %i.au, align 4, !tbaa !230
  %.not21.i.i89 = icmp eq i16 %i.av, %i.as
  br i1 %.not21.i.i89, label %cache_bin_alloc_impl.exit.i80, label %bb.l, !prof !145

bb.l:                                             ; preds = %bb.k
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !227
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = trunc i64 %i.aw to i16
  store i16 %i.ax, ptr %i.ar, align 8, !tbaa !229
  br label %cache_bin_alloc_impl.exit.i80.thread

cache_bin_alloc_impl.exit.i80:                    ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ay = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i100305, ptr noundef null) ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.thread, label %bb.m, !prof !145

bb.m:                                             ; preds = %cache_bin_alloc_impl.exit.i80
  %i.ba = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.ag
  %.val = load i16, ptr %i.bb, align 2, !tbaa !234
  %i.bc = icmp eq i16 %.val, 0
  br i1 %i.bc, label %bb.n, label %bb.o, !prof !145

bb.n:                                             ; preds = %bb.m
  %i.bd = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i100305, ptr noundef nonnull %i.ay, i64 noundef range(i64 0, 14337) %1, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit.i80, %bb.n
  %.0.i22.i85.ph = phi ptr [ %i.bd, %bb.n ], [ null, %cache_bin_alloc_impl.exit.i80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit93

bb.o:                                             ; preds = %bb.m
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i100305, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.am, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  %i.be = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i100305, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.am, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #20
  %i.bf = load i8, ptr %i.a, align 1, !tbaa !235, !range !236, !noundef !237
  %.not284 = icmp eq i8 %i.bf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.not284, label %aligned_usize_get.exit.i.thread, label %cache_bin_alloc_impl.exit.i80.thread

cache_bin_alloc_impl.exit.i80.thread:             ; preds = %bb.l, %bb.j, %bb.o
  %.131.i.i88 = phi ptr [ %i.be, %bb.o ], [ %i.ao, %bb.j ], [ %i.ao, %bb.l ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !238
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !238
  br label %imalloc_no_sample.exit93

bb.p:                                             ; preds = %iallocztm.exit.i62
  %i.bj = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !160
  %.not24.i.i64 = icmp ugt i64 %1, %i.bj
  br i1 %.not24.i.i64, label %bb.v, label %bb.q, !prof !145

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i100305, i64 880
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.ag ; 7 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !227 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !228
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !229 ; 2 uses
  %i.bs = trunc i64 %i.bo to i16
  %.not.i26.i65 = icmp eq i16 %i.br, %i.bs
  br i1 %.not.i26.i65, label %bb.s, label %bb.r, !prof !145

bb.r:                                             ; preds = %bb.q
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !227
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !230
  %.not21.i28.i78 = icmp eq i16 %i.bu, %i.br
  br i1 %.not21.i28.i78, label %cache_bin_alloc_impl.exit29.i66, label %bb.t, !prof !145

bb.t:                                             ; preds = %bb.s
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !227
  %i.bv = ptrtoint ptr %i.bp to i64
  %i.bw = trunc i64 %i.bv to i16
  store i16 %i.bw, ptr %i.bq, align 8, !tbaa !229
  br label %bb.u

cache_bin_alloc_impl.exit29.i66:                  ; preds = %bb.s
  %i.bx = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i100305, ptr noundef null) ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %aligned_usize_get.exit.i.thread, label %sz_s2u.exit.i71, !prof !145

sz_s2u.exit.i71:                                  ; preds = %cache_bin_alloc_impl.exit29.i66
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i100305, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.bl, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  %i.bz = shl nuw i64 %1, 1
  %i.ca = add i64 %i.bz, -1
  %i.cb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ca, i1 true) ; 2 uses
  %notmask.i.i68 = ashr exact i64 -1152921504606846976, %i.cb
  %i.cc = lshr i64 1152921504606846975, %i.cb
  %i.cd = add nuw nsw i64 %1, %i.cc
  %i.ce = and i64 %i.cd, %notmask.i.i68
  %i.cf = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i100305, ptr noundef nonnull %i.bx, i64 noundef %i.ce, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit93

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !238
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !238
  br label %imalloc_no_sample.exit93

bb.v:                                             ; preds = %bb.p
  %i.cj = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i100305, ptr noundef null, i64 noundef %1, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit93

imalloc_no_sample.exit93:                         ; preds = %bb.v, %.thread, %cache_bin_alloc_impl.exit.i80.thread, %bb.u, %sz_s2u.exit.i71
  %.0.i21.i76 = phi ptr [ %i.cj, %bb.v ], [ %.0.i22.i85.ph, %.thread ], [ %.131.i.i88, %cache_bin_alloc_impl.exit.i80.thread ], [ %i.bn, %bb.u ], [ %i.cf, %sz_s2u.exit.i71 ] ; 2 uses
  %i.ck = icmp eq ptr %.0.i21.i76, null
  br i1 %i.ck, label %aligned_usize_get.exit.i.thread, label %bb.w, !prof !239

bb.w:                                             ; preds = %imalloc_no_sample.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !242
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i100305, i64 840 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !243
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i100305, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !244
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i100305, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !245
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i100305, i64 848
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !246
  %i.ct = load i64, ptr %i.cl, align 8, !tbaa !160 ; 2 uses
  %i.cu = add i64 %i.ct, %i.ai
  store i64 %i.cu, ptr %i.cl, align 8, !tbaa !160
  %i.cv = load i64, ptr %i.cp, align 8, !tbaa !160
  %i.cw = sub i64 %i.cv, %i.ct
  %i.cx = icmp ult i64 %i.ai, %i.cw
  br i1 %i.cx, label %bb.y, label %bb.x, !prof !147

bb.x:                                             ; preds = %bb.w
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i100305, ptr noundef nonnull %4) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %imalloc.exit

aligned_usize_get.exit.i.thread:                  ; preds = %cache_bin_alloc_impl.exit29.i66, %bb.o, %bb.g, %sz_size2index.exit.i, %imalloc_no_sample.exit93
  %.sroa.11.1 = phi i64 [ %i.ai, %imalloc_no_sample.exit93 ], [ 0, %bb.g ], [ 0, %sz_size2index.exit.i ], [ %i.ai, %bb.o ], [ %i.ai, %cache_bin_alloc_impl.exit29.i66 ]
  %i.cy = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.cy, align 4, !tbaa !14
  br label %imalloc.exit

bb.z:                                             ; preds = %tsd_fetch_impl.exit
  %i.cz = load i32, ptr @je_malloc_init_state, align 4, !tbaa !14
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ab, label %bb.aa, !prof !147

bb.aa:                                            ; preds = %bb.z
  %i.db = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.db, label %imalloc_init_check.exit, label %bb.ab, !prof !247

imalloc_init_check.exit:                          ; preds = %bb.aa
  %i.dc = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.dc, align 4, !tbaa !14
  br label %imalloc.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dd = load i8, ptr @je_opt_zero, align 1, !range !236
  %i.de = trunc nuw i8 %i.dd to i1                ; 6 uses
  %i.df = icmp ult i64 %1, 4097
  br i1 %i.df, label %bb.ac, label %bb.ad, !prof !147

bb.ac:                                            ; preds = %bb.ab
  %i.dg = add nuw nsw i64 %1, 7
  %i.dh = lshr i64 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !148
  %i.dk = zext i8 %i.dj to i32
  br label %sz_size2index.exit.i43

bb.ad:                                            ; preds = %bb.ab
  %i.dl = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.dl, label %aligned_usize_get.exit.i37.thread, label %bb.ae, !prof !145

bb.ae:                                            ; preds = %bb.ad
  %i.dm = shl nuw i64 %1, 1
  %i.dn = add i64 %i.dm, -1
  %i.do = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dn, i1 true) ; 2 uses
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = sub nuw nsw i64 60, %i.do
  %i.dr = add nsw i64 %1, -1
  %i.ds = lshr i64 %i.dr, %i.dq
  %i.dt = trunc i64 %i.ds to i32
  %i.du = and i32 %i.dt, 3
  %i.dv = shl nuw nsw i32 %i.dp, 2
  %reass.sub = sub nsw i32 %i.du, %i.dv
  %i.dw = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i43

sz_size2index.exit.i43:                           ; preds = %bb.ae, %bb.ac
  %.0.i50.i44 = phi i32 [ %i.dk, %bb.ac ], [ %i.dw, %bb.ae ] ; 7 uses
  %i.dx = icmp samesign ugt i32 %.0.i50.i44, 234
  br i1 %i.dx, label %aligned_usize_get.exit.i37.thread, label %bb.af, !prof !323

bb.af:                                            ; preds = %sz_size2index.exit.i43
  %i.dy = zext nneg i32 %.0.i50.i44 to i64        ; 4 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dy ; 3 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !160 ; 9 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !148
  %i.ed = icmp sgt i8 %i.ec, 0
  br i1 %i.ed, label %tcache_get_from_ind.exit.i, label %bb.ag, !prof !249

bb.ag:                                            ; preds = %bb.af
  %i.ee = load i8, ptr %i.l, align 8, !tbaa !235, !range !236, !noundef !237
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 872 ; 3 uses
  br i1 %i.ef, label %iallocztm.exit.i, label %iallocztm.exit.i.thread

tcache_get_from_ind.exit.i:                       ; preds = %bb.af
  %i.eh = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %arena_get.exit135, label %iallocztm.exit.i.thread, !prof !145

arena_get.exit135:                                ; preds = %tcache_get_from_ind.exit.i
  %i.ej = tail call ptr @je_arena_init(ptr noundef nonnull %i.l, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ah, label %iallocztm.exit.i.thread, !prof !146

bb.ah:                                            ; preds = %arena_get.exit135
  %i.el = load i32, ptr @je_narenas_auto, align 4, !tbaa !14
  %.not.i.i.not = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i37.thread, label %iallocztm.exit.i.thread

iallocztm.exit.i:                                 ; preds = %bb.ag
  %i.em = icmp samesign ult i64 %1, 14337
  br i1 %i.em, label %bb.ai, label %bb.ar, !prof !147

bb.ai:                                            ; preds = %iallocztm.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 880
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %i.dy ; 8 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !227 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !228 ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %i.eu = load i16, ptr %i.et, align 8, !tbaa !229 ; 2 uses
  %i.ev = trunc i64 %i.er to i16
  %.not.i24.i = icmp eq i16 %i.eu, %i.ev
  br i1 %.not.i24.i, label %bb.ak, label %bb.aj, !prof !145

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.es, ptr %i.eo, align 8, !tbaa !227
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ak:                                            ; preds = %bb.ai
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.ex = load i16, ptr %i.ew, align 4, !tbaa !230
  %.not21.i.i = icmp eq i16 %i.ex, %i.eu
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.al, !prof !145

bb.al:                                            ; preds = %bb.ak
  store ptr %i.es, ptr %i.eo, align 8, !tbaa !227
  %i.ey = ptrtoint ptr %i.es to i64
  %i.ez = trunc i64 %i.ey to i16
  store i16 %i.ez, ptr %i.et, align 8, !tbaa !229
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.fa = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.l, ptr noundef null) ; 3 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %.thread268, label %bb.am, !prof !145

bb.am:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.fc = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.dy
  %.val128 = load i16, ptr %i.fd, align 2, !tbaa !234
  %i.fe = icmp eq i16 %.val128, 0
  br i1 %i.fe, label %bb.an, label %bb.ao, !prof !145

bb.an:                                            ; preds = %bb.am
  %i.ff = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.l, ptr noundef nonnull %i.fa, i64 noundef range(i64 0, 14337) %1, i32 noundef %.0.i50.i44, i1 noundef zeroext %i.de) #20
  br label %.thread268

.thread268:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.an
  %.0.i22.i.ph = phi ptr [ %i.ff, %bb.an ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.ao:                                            ; preds = %bb.am
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.l, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eo, i32 noundef %.0.i50.i44, i1 noundef zeroext true) #20
  %i.fg = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.l, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eo, i32 noundef %.0.i50.i44, ptr noundef nonnull %i.b) #20
  %i.fh = load i8, ptr %i.b, align 1, !tbaa !235, !range !236, !noundef !237
  %.not283 = icmp eq i8 %i.fh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %.not283, label %aligned_usize_get.exit.i37.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.al, %bb.aj, %bb.ao
  %.131.i.i = phi ptr [ %i.fg, %bb.ao ], [ %i.eq, %bb.aj ], [ %i.eq, %bb.al ] ; 2 uses
  br i1 %i.de, label %bb.ap, label %bb.aq, !prof !145

bb.ap:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.fi = load i64, ptr %i.dz, align 8, !tbaa !160
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.fi, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %cache_bin_alloc_impl.exit.i.thread
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !238
  %i.fl = add i64 %i.fk, 1
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !238
  br label %imalloc_no_sample.exit

bb.ar:                                            ; preds = %iallocztm.exit.i
  %i.fm = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !160
  %.not24.i.i = icmp ugt i64 %1, %i.fm
  br i1 %.not24.i.i, label %iallocztm.exit.i.thread, label %bb.as, !prof !145

bb.as:                                            ; preds = %bb.ar
  %i.fn = getelementptr inbounds nuw i8, ptr %i.l, i64 880
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.dy ; 7 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !227 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !228 ; 2 uses
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.fu = load i16, ptr %i.ft, align 8, !tbaa !229 ; 2 uses
  %i.fv = trunc i64 %i.fr to i16
  %.not.i26.i = icmp eq i16 %i.fu, %i.fv
  br i1 %.not.i26.i, label %bb.au, label %bb.at, !prof !145

bb.at:                                            ; preds = %bb.as
  store ptr %i.fs, ptr %i.fo, align 8, !tbaa !227
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 20
  %i.fx = load i16, ptr %i.fw, align 4, !tbaa !230
  %.not21.i28.i = icmp eq i16 %i.fx, %i.fu
  br i1 %.not21.i28.i, label %cache_bin_alloc_impl.exit29.i, label %bb.av, !prof !145

bb.av:                                            ; preds = %bb.au
  store ptr %i.fs, ptr %i.fo, align 8, !tbaa !227
  %i.fy = ptrtoint ptr %i.fs to i64
  %i.fz = trunc i64 %i.fy to i16
  store i16 %i.fz, ptr %i.ft, align 8, !tbaa !229
  br label %bb.aw

cache_bin_alloc_impl.exit29.i:                    ; preds = %bb.au
  %i.ga = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.l, ptr noundef null) ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %aligned_usize_get.exit.i37.thread, label %sz_s2u.exit.i, !prof !145

sz_s2u.exit.i:                                    ; preds = %cache_bin_alloc_impl.exit29.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.l, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.fo, i32 noundef %.0.i50.i44, i1 noundef zeroext false) #20
  %i.gc = shl nuw i64 %1, 1
  %i.gd = add i64 %i.gc, -1
  %i.ge = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gd, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.ge
  %i.gf = lshr i64 1152921504606846975, %i.ge
  %i.gg = add nuw nsw i64 %1, %i.gf
  %i.gh = and i64 %i.gg, %notmask.i.i
  %i.gi = tail call ptr @je_large_malloc(ptr noundef nonnull %i.l, ptr noundef nonnull %i.ga, i64 noundef %i.gh, i1 noundef zeroext %i.de) #20
  br label %imalloc_no_sample.exit

bb.aw:                                            ; preds = %bb.at, %bb.av
  br i1 %i.de, label %bb.ax, label %bb.ay, !prof !145

bb.ax:                                            ; preds = %bb.aw
  %i.gj = load i64, ptr %i.dz, align 8, !tbaa !160
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fq, i8 0, i64 %i.gj, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !238
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !238
  br label %imalloc_no_sample.exit

iallocztm.exit.i.thread:                          ; preds = %tcache_get_from_ind.exit.i, %bb.ah, %arena_get.exit135, %bb.ag, %bb.ar
  %.1225.ph311 = phi ptr [ null, %bb.ar ], [ %i.eh, %tcache_get_from_ind.exit.i ], [ null, %bb.ah ], [ %i.ej, %arena_get.exit135 ], [ null, %bb.ag ]
  %i.gn = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.l, ptr noundef %.1225.ph311, i64 noundef %1, i32 noundef %.0.i50.i44, i1 noundef zeroext %i.de) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %iallocztm.exit.i.thread, %.thread268, %bb.aq, %bb.ay, %sz_s2u.exit.i
  %.0.i55 = phi ptr [ %i.gi, %sz_s2u.exit.i ], [ %i.gn, %iallocztm.exit.i.thread ], [ %.0.i22.i.ph, %.thread268 ], [ %.131.i.i, %bb.aq ], [ %i.fq, %bb.ay ] ; 4 uses
  %i.go = icmp eq ptr %.0.i55, null
  br i1 %i.go, label %aligned_usize_get.exit.i37.thread, label %bb.az, !prof !324

bb.az:                                            ; preds = %imalloc_no_sample.exit
end_hunk_5
begin_hunk_6_@je_sdallocx_default:bb.a
  %i.l = icmp ult i64 %1, 4097
  br i1 %i.l, label %bb.d, label %bb.e, !prof !147

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw nsw i64 %1, 7
  %i.n = lshr i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !148
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !160
  br label %aligned_usize_get.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.t, label %aligned_usize_get.exit, label %bb.f, !prof !145

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw i64 %1, 1
  %i.v = add i64 %i.u, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.v, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.w
  %i.x = lshr i64 1152921504606846975, %i.w
  %i.y = add nuw nsw i64 %1, %i.x
  %i.z = and i64 %i.y, %notmask.i
  br label %aligned_usize_get.exit

bb.g:                                             ; preds = %tsd_fetch_impl.exit
  %i.aa = icmp ult i64 %1, 14337
  %i.ab = icmp ult i64 %i.j, 4097
  %or.cond.i = and i1 %i.aa, %i.ab
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i64 %1, -1
  %i.ad = add nsw i64 %i.ac, %i.j
  %i.ae = sub nsw i64 0, %i.j
  %i.af = and i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp samesign ult i64 %i.af, 4097
  br i1 %i.ag, label %bb.i, label %sz_s2u_compute.exit.i, !prof !147

bb.i:                                             ; preds = %bb.h
  %i.ah = add nuw nsw i64 %i.af, 6
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !148
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !160
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i:                            ; preds = %bb.h
  %i.ao = shl nuw nsw i64 %i.af, 1
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ap, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.aq
  %i.ar = lshr i64 1152921504606846975, %i.aq
  %i.as = add nuw nsw i64 %i.af, %i.ar
  %i.at = and i64 %i.as, %notmask.i.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i, %bb.i
  %.0.i24.i = phi i64 [ %i.an, %bb.i ], [ %i.at, %sz_s2u_compute.exit.i ] ; 2 uses
  %i.au = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.au, label %aligned_usize_get.exit, label %.thread72

bb.j:                                             ; preds = %bb.g
  %i.av = icmp ugt i64 %i.j, 8070450532247928832
  br i1 %i.av, label %aligned_usize_get.exit, label %bb.k, !prof !251

bb.k:                                             ; preds = %bb.j
  %i.aw = icmp ult i64 %1, 16385
  br i1 %i.aw, label %.thread72, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.ax, label %sz_s2u_compute.exit29.i, label %bb.m, !prof !145

bb.m:                                             ; preds = %bb.l
  %i.ay = shl nuw i64 %1, 1
  %i.az = add i64 %i.ay, -1
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.az, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.ba
  %i.bb = lshr i64 1152921504606846975, %i.ba
  %i.bc = add nuw nsw i64 %1, %i.bb
  %i.bd = and i64 %i.bc, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.m, %bb.l
  %.0.i28.i = phi i64 [ %i.bd, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.be = icmp ult i64 %.0.i28.i, %1
  br i1 %i.be, label %aligned_usize_get.exit, label %.thread72

.thread72:                                        ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.k
  %.0.i32 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.k ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bf = load i64, ptr @je_sz_large_pad, align 8, !tbaa !160
  %i.bg = add nuw i64 %i.i, 4094
  %i.bh = and i64 %i.bg, 9223372036854771712
  %i.bi = add nsw i64 %i.bh, -4096
  %i.bj = add i64 %i.bi, %.0.i32
  %i.bk = add i64 %i.bj, %i.bf
  %i.bl = icmp ult i64 %i.bk, %.0.i32
  %..0.i = select i1 %i.bl, i64 0, i64 %.0.i32
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread72, %sz_s2u_compute.exit29.i, %bb.j, %sz_s2u.exit25.i, %bb.d, %bb.e, %bb.f
  %storemerge.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ %i.z, %bb.f ], [ 0, %bb.j ], [ %.0.i24.i, %sz_s2u.exit25.i ], [ %..0.i, %.thread72 ], [ 0, %sz_s2u_compute.exit29.i ] ; 16 uses
  %i.bm = icmp ugt i64 %storemerge.i, 8070450532247928832 ; 2 uses
  %i.bn = and i32 %2, 1048320                     ; 2 uses
  switch i32 %i.bn, label %mallocx_tcache_get.exit [
    i32 0, label %mallocx_tcache_get.exit.thread
    i32 256, label %tcache_get_from_ind.exit
  ], !prof !261

mallocx_tcache_get.exit.thread:                   ; preds = %aligned_usize_get.exit
  br i1 %.not, label %tcache_get_from_ind.exit.thread94, label %bb.o, !prof !147

mallocx_tcache_get.exit:                          ; preds = %aligned_usize_get.exit
  %i.bo = lshr exact i32 %i.bn, 8
  %i.bp = add nsw i32 %i.bo, -2                   ; 3 uses
  switch i32 %i.bp, label %bb.q [
    i32 -2, label %bb.n
    i32 -1, label %tcache_get_from_ind.exit
  ]

bb.n:                                             ; preds = %mallocx_tcache_get.exit
  br i1 %.not, label %tcache_get_from_ind.exit.thread94, label %bb.o, !prof !147

tcache_get_from_ind.exit.thread94:                ; preds = %bb.n, %mallocx_tcache_get.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i30, i64 872
  br label %bb.t

bb.o:                                             ; preds = %mallocx_tcache_get.exit.thread, %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i30, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !148
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.p, label %sz_size2index.exit27, !prof !147

bb.p:                                             ; preds = %bb.o
  %i.bu = load i8, ptr %.0.i30, align 1, !tbaa !235, !range !236, !noundef !237
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i30, i64 872
  %spec.select = select i1 %i.bv, ptr %i.bw, ptr null
  br label %sz_size2index.exit27

bb.q:                                             ; preds = %mallocx_tcache_get.exit
  %i.bx = load ptr, ptr @je_tcaches, align 8, !tbaa !263
  %i.by = zext nneg i32 %i.bp to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !148 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.ca to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.r
    i64 1, label %bb.s
  ], !prof !264

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.153, i32 noundef range(i32 0, -2) %i.bp) #20
  tail call void @abort() #21
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cb = tail call ptr @je_tcache_create_explicit(ptr noundef nonnull %.0.i30) #20 ; 2 uses
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !148
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.s, %bb.q, %aligned_usize_get.exit, %mallocx_tcache_get.exit
  %.0.i = phi ptr [ null, %mallocx_tcache_get.exit ], [ %i.ca, %bb.q ], [ null, %aligned_usize_get.exit ], [ %i.cb, %bb.s ] ; 2 uses
  br i1 %.not, label %bb.t, label %sz_size2index.exit27, !prof !266

bb.t:                                             ; preds = %tcache_get_from_ind.exit.thread94, %tcache_get_from_ind.exit
  %.0.i96 = phi ptr [ %i.bq, %tcache_get_from_ind.exit.thread94 ], [ %.0.i, %tcache_get_from_ind.exit ] ; 5 uses
  %i.cc = icmp ult i64 %storemerge.i, 4097
  %i.cd = icmp eq ptr %.0.i96, null               ; 2 uses
  br i1 %i.cc, label %isdalloct.exit.thread, label %isdalloct.exit, !prof !147

isdalloct.exit:                                   ; preds = %bb.t
  br i1 %i.cd, label %bb.u, label %bb.v, !prof !145

isdalloct.exit.thread:                            ; preds = %bb.t
  br i1 %i.cd, label %bb.u, label %.thread77, !prof !145

bb.u:                                             ; preds = %isdalloct.exit.thread, %isdalloct.exit
  tail call fastcc void @arena_sdalloc_no_tcache(ptr noundef nonnull %.0.i30, ptr noundef %0, i64 noundef %storemerge.i)
  br label %arena_sdalloc.exit49

.thread77:                                        ; preds = %isdalloct.exit.thread
  %i.ce = add nuw nsw i64 %storemerge.i, 7
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !148
  %i.ci = zext i8 %i.ch to i32
  br label %sz_size2index.exit.i36

bb.v:                                             ; preds = %isdalloct.exit
  br i1 %i.bm, label %sz_size2index.exit.i36.thread, label %bb.w, !prof !145

bb.w:                                             ; preds = %bb.v
  %i.cj = shl nuw i64 %storemerge.i, 1
  %i.ck = add i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ck, i1 true) ; 2 uses
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = sub nuw nsw i64 60, %i.cl
  %i.co = add nsw i64 %storemerge.i, -1
  %i.cp = lshr i64 %i.co, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 3
  %i.cs = shl nuw nsw i32 %i.cm, 2
  %reass.sub88 = sub nsw i32 %i.cr, %i.cs
  %i.ct = add nsw i32 %reass.sub88, 232
  br label %sz_size2index.exit.i36

sz_size2index.exit.i36:                           ; preds = %bb.w, %.thread77
  %.0.i.i37 = phi i32 [ %i.ci, %.thread77 ], [ %i.ct, %bb.w ] ; 4 uses
  %i.cu = icmp samesign ult i32 %.0.i.i37, 39
  br i1 %i.cu, label %bb.x, label %sz_size2index.exit.i36.thread, !prof !265

bb.x:                                             ; preds = %sz_size2index.exit.i36
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i96, i64 8
  %i.cw = zext nneg i32 %.0.i.i37 to i64          ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cw ; 6 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !227 ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 18 ; 2 uses
  %i.db = load i16, ptr %i.da, align 2, !tbaa !255
  %i.dc = trunc i64 %i.cz to i16
  %i.dd = icmp eq i16 %i.db, %i.dc
  br i1 %i.dd, label %cache_bin_dalloc_easy.exit16.i44, label %cache_bin_dalloc_easy.exit16.i44.thread, !prof !145

cache_bin_dalloc_easy.exit16.i44.thread:          ; preds = %bb.x
  %i.de = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 2 uses
  store ptr %i.de, ptr %i.cx, align 8, !tbaa !227
  store ptr %0, ptr %i.de, align 8, !tbaa !228
  br label %arena_sdalloc.exit49

cache_bin_dalloc_easy.exit16.i44:                 ; preds = %bb.x
  %i.df = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.cw
  %.val54 = load i16, ptr %i.dg, align 2, !tbaa !234 ; 2 uses
  %i.dh = icmp eq i16 %.val54, 0
  br i1 %i.dh, label %bb.y, label %bb.z, !prof !145

bb.y:                                             ; preds = %cache_bin_dalloc_easy.exit16.i44
  tail call void @je_arena_dalloc_small(ptr noundef nonnull %.0.i30, ptr noundef %0) #20
  br label %arena_sdalloc.exit49

bb.z:                                             ; preds = %cache_bin_dalloc_easy.exit16.i44
  %i.di = zext i16 %.val54 to i32
  %i.dj = load i32, ptr @je_opt_lg_tcache_flush_small_div, align 4, !tbaa !14
  %i.dk = lshr i32 %i.di, %i.dj
  tail call void @je_tcache_bin_flush_small(ptr noundef nonnull %.0.i30, ptr noundef nonnull %.0.i96, ptr noundef nonnull %i.cx, i32 noundef %.0.i.i37, i32 noundef %i.dk) #20
  %i.dl = load ptr, ptr %i.cx, align 8, !tbaa !227 ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = load i16, ptr %i.da, align 2, !tbaa !255
  %i.do = trunc i64 %i.dm to i16
  %i.dp = icmp eq i16 %i.dn, %i.do
  br i1 %i.dp, label %arena_sdalloc.exit49, label %bb.aa, !prof !145

bb.aa:                                            ; preds = %bb.z
  %i.dq = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 2 uses
  store ptr %i.dq, ptr %i.cx, align 8, !tbaa !227
  store ptr %0, ptr %i.dq, align 8, !tbaa !228
  br label %arena_sdalloc.exit49

sz_size2index.exit.i36.thread:                    ; preds = %bb.v, %sz_size2index.exit.i36
  %.0.i.i3779 = phi i32 [ %.0.i.i37, %sz_size2index.exit.i36 ], [ 235, %bb.v ] ; 3 uses
  %i.dr = load i32, ptr @je_nhbins, align 4, !tbaa !14
  %i.ds = icmp ult i32 %.0.i.i3779, %i.dr
  br i1 %i.ds, label %bb.ab, label %tsdn_rtree_ctx.exit

bb.ab:                                            ; preds = %sz_size2index.exit.i36.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i96, i64 8
  %i.du = zext nneg i32 %.0.i.i3779 to i64        ; 2 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.du ; 6 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !227 ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 18 ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !255
  %i.ea = trunc i64 %i.dx to i16
  %i.eb = icmp eq i16 %i.dz, %i.ea
  br i1 %i.eb, label %cache_bin_dalloc_easy.exit12.i.i39, label %cache_bin_dalloc_easy.exit12.i.i39.thread, !prof !145

cache_bin_dalloc_easy.exit12.i.i39.thread:        ; preds = %bb.ab
  %i.ec = getelementptr inbounds i8, ptr %i.dw, i64 -8 ; 2 uses
  store ptr %i.ec, ptr %i.dv, align 8, !tbaa !227
  store ptr %0, ptr %i.ec, align 8, !tbaa !228
  br label %arena_sdalloc.exit49

cache_bin_dalloc_easy.exit12.i.i39:               ; preds = %bb.ab
  %i.ed = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.du
  %.val55 = load i16, ptr %i.ee, align 2, !tbaa !234
  %i.ef = zext i16 %.val55 to i32
  %i.eg = load i32, ptr @je_opt_lg_tcache_flush_large_div, align 4, !tbaa !14
  %i.eh = lshr i32 %i.ef, %i.eg
  tail call void @je_tcache_bin_flush_large(ptr noundef nonnull %.0.i30, ptr noundef nonnull %.0.i96, ptr noundef nonnull %i.dv, i32 noundef %.0.i.i3779, i32 noundef %i.eh) #20
  %i.ei = load ptr, ptr %i.dv, align 8, !tbaa !227 ; 2 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = load i16, ptr %i.dy, align 2, !tbaa !255
  %i.el = trunc i64 %i.ej to i16
  %i.em = icmp eq i16 %i.ek, %i.el
  br i1 %i.em, label %arena_sdalloc.exit49, label %bb.ac, !prof !145

bb.ac:                                            ; preds = %cache_bin_dalloc_easy.exit12.i.i39
  %i.en = getelementptr inbounds i8, ptr %i.ei, i64 -8 ; 2 uses
  store ptr %i.en, ptr %i.dv, align 8, !tbaa !227
  store ptr %0, ptr %i.en, align 8, !tbaa !228
  br label %arena_sdalloc.exit49

tsdn_rtree_ctx.exit:                              ; preds = %sz_size2index.exit.i36.thread
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i30, i64 448
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ep = ptrtoint ptr %0 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull %.0.i30, ptr noundef nonnull %i.eo, i64 noundef %i.ep)
  %i.eq = load ptr, ptr %5, align 8, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  tail call void @je_large_dalloc(ptr noundef nonnull %.0.i30, ptr noundef %i.eq) #20
  br label %arena_sdalloc.exit49

arena_sdalloc.exit49:                             ; preds = %tsdn_rtree_ctx.exit, %cache_bin_dalloc_easy.exit12.i.i39, %bb.ac, %cache_bin_dalloc_easy.exit12.i.i39.thread, %bb.y, %cache_bin_dalloc_easy.exit16.i44.thread, %bb.aa, %bb.z, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 0, ptr %4, align 8, !tbaa !242
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i30, i64 856 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.er, ptr %i.es, align 8, !tbaa !243
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i30, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !244
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i30, i64 32 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !245
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i30, i64 864
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !246
  %i.ez = load i64, ptr %i.er, align 8, !tbaa !160 ; 2 uses
  %i.fa = add i64 %i.ez, %storemerge.i
  store i64 %i.fa, ptr %i.er, align 8, !tbaa !160
  %i.fb = load i64, ptr %i.ev, align 8, !tbaa !160
  %i.fc = sub i64 %i.fb, %i.ez
  %i.fd = icmp ult i64 %storemerge.i, %i.fc
  br i1 %i.fd, label %te_event_advance.exit, label %bb.ad, !prof !147

bb.ad:                                            ; preds = %arena_sdalloc.exit49
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i30, ptr noundef nonnull %4) #20
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %arena_sdalloc.exit49, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ar

sz_size2index.exit27:                             ; preds = %bb.o, %bb.p, %tcache_get_from_ind.exit
  %.0.i93 = phi ptr [ %.0.i, %tcache_get_from_ind.exit ], [ null, %bb.o ], [ %spec.select, %bb.p ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.fe = ptrtoint ptr %0 to i64                  ; 2 uses
  store i64 %i.fe, ptr %i.a, align 16, !tbaa !160
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ff, align 8, !tbaa !160
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fh = sext i32 %2 to i64
  store i64 %i.fh, ptr %i.fg, align 16, !tbaa !160
  call void @je_hook_invoke_dalloc(i32 noundef 2, ptr noundef %0, ptr noundef nonnull %i.a) #20
  %i.fi = icmp ult i64 %storemerge.i, 4097
  %i.fj = load i8, ptr @je_opt_junk_free, align 1, !range !236
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ae, label %isdalloct.exit34

bb.ae:                                            ; preds = %sz_size2index.exit27
  %i.fl = load ptr, ptr @je_junk_free_callback, align 8, !tbaa !228
  call void %i.fl(ptr noundef %0, i64 noundef %storemerge.i) #20, !inline_history !328
  br label %isdalloct.exit34

isdalloct.exit34:                                 ; preds = %sz_size2index.exit27, %bb.ae
  %i.fm = icmp eq ptr %.0.i93, null
  br i1 %i.fm, label %bb.af, label %bb.ag, !prof !145

bb.af:                                            ; preds = %isdalloct.exit34
  call fastcc void @arena_sdalloc_no_tcache(ptr noundef nonnull %.0.i30, ptr noundef %0, i64 noundef %storemerge.i)
  br label %arena_sdalloc.exit

bb.ag:                                            ; preds = %isdalloct.exit34
  br i1 %i.fi, label %bb.ah, label %bb.ai, !prof !147

bb.ah:                                            ; preds = %bb.ag
  %i.fn = add nuw nsw i64 %storemerge.i, 7
  %i.fo = lshr i64 %i.fn, 3
  %i.fp = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !148
  %i.fr = zext i8 %i.fq to i32
  br label %sz_size2index.exit.i

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.bm, label %sz_size2index.exit.i.thread, label %bb.aj, !prof !145

bb.aj:                                            ; preds = %bb.ai
  %i.fs = shl nuw i64 %storemerge.i, 1
  %i.ft = add i64 %i.fs, -1
  %i.fu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ft, i1 true) ; 2 uses
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = sub nuw nsw i64 60, %i.fu
  %i.fx = add nsw i64 %storemerge.i, -1
  %i.fy = lshr i64 %i.fx, %i.fw
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = and i32 %i.fz, 3
  %i.gb = shl nuw nsw i32 %i.fv, 2
  %reass.sub = sub nsw i32 %i.ga, %i.gb
  %i.gc = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.aj, %bb.ah
  %.0.i.i35 = phi i32 [ %i.fr, %bb.ah ], [ %i.gc, %bb.aj ] ; 4 uses
  %i.gd = icmp samesign ult i32 %.0.i.i35, 39
  br i1 %i.gd, label %bb.ak, label %sz_size2index.exit.i.thread, !prof !265

bb.ak:                                            ; preds = %sz_size2index.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i93, i64 8
  %i.gf = zext nneg i32 %.0.i.i35 to i64          ; 2 uses
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %i.gf ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !227 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 18 ; 2 uses
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !255
  %i.gl = trunc i64 %i.gi to i16
  %i.gm = icmp eq i16 %i.gk, %i.gl
  br i1 %i.gm, label %cache_bin_dalloc_easy.exit16.i, label %cache_bin_dalloc_easy.exit16.i.thread, !prof !145

cache_bin_dalloc_easy.exit16.i.thread:            ; preds = %bb.ak
  %i.gn = getelementptr inbounds i8, ptr %i.gh, i64 -8 ; 2 uses
  store ptr %i.gn, ptr %i.gg, align 8, !tbaa !227
  store ptr %0, ptr %i.gn, align 8, !tbaa !228
  br label %arena_sdalloc.exit

cache_bin_dalloc_easy.exit16.i:                   ; preds = %bb.ak
  %i.go = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.gf
  %.val57 = load i16, ptr %i.gp, align 2, !tbaa !234 ; 2 uses
  %i.gq = icmp eq i16 %.val57, 0
  br i1 %i.gq, label %bb.al, label %bb.am, !prof !145

bb.al:                                            ; preds = %cache_bin_dalloc_easy.exit16.i
  call void @je_arena_dalloc_small(ptr noundef nonnull %.0.i30, ptr noundef %0) #20
  br label %arena_sdalloc.exit

bb.am:                                            ; preds = %cache_bin_dalloc_easy.exit16.i
  %i.gr = zext i16 %.val57 to i32
  %i.gs = load i32, ptr @je_opt_lg_tcache_flush_small_div, align 4, !tbaa !14
  %i.gt = lshr i32 %i.gr, %i.gs
  call void @je_tcache_bin_flush_small(ptr noundef nonnull %.0.i30, ptr noundef nonnull %.0.i93, ptr noundef nonnull %i.gg, i32 noundef %.0.i.i35, i32 noundef %i.gt) #20
  %i.gu = load ptr, ptr %i.gg, align 8, !tbaa !227 ; 2 uses
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = load i16, ptr %i.gj, align 2, !tbaa !255
  %i.gx = trunc i64 %i.gv to i16
  %i.gy = icmp eq i16 %i.gw, %i.gx
  br i1 %i.gy, label %arena_sdalloc.exit, label %bb.an, !prof !145

bb.an:                                            ; preds = %bb.am
  %i.gz = getelementptr inbounds i8, ptr %i.gu, i64 -8 ; 2 uses
  store ptr %i.gz, ptr %i.gg, align 8, !tbaa !227
  store ptr %0, ptr %i.gz, align 8, !tbaa !228
  br label %arena_sdalloc.exit

sz_size2index.exit.i.thread:                      ; preds = %bb.ai, %sz_size2index.exit.i
  %.0.i.i3583 = phi i32 [ %.0.i.i35, %sz_size2index.exit.i ], [ 235, %bb.ai ] ; 3 uses
  %i.ha = load i32, ptr @je_nhbins, align 4, !tbaa !14
  %i.hb = icmp ult i32 %.0.i.i3583, %i.ha
  br i1 %i.hb, label %bb.ao, label %tsdn_rtree_ctx.exit52

bb.ao:                                            ; preds = %sz_size2index.exit.i.thread
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i93, i64 8
  %i.hd = zext nneg i32 %.0.i.i3583 to i64        ; 2 uses
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.hc, i64 %i.hd ; 6 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !227 ; 2 uses
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 18 ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !255
  %i.hj = trunc i64 %i.hg to i16
  %i.hk = icmp eq i16 %i.hi, %i.hj
  br i1 %i.hk, label %cache_bin_dalloc_easy.exit12.i.i, label %cache_bin_dalloc_easy.exit12.i.i.thread, !prof !145

cache_bin_dalloc_easy.exit12.i.i.thread:          ; preds = %bb.ao
  %i.hl = getelementptr inbounds i8, ptr %i.hf, i64 -8 ; 2 uses
  store ptr %i.hl, ptr %i.he, align 8, !tbaa !227
  store ptr %0, ptr %i.hl, align 8, !tbaa !228
  br label %arena_sdalloc.exit

cache_bin_dalloc_easy.exit12.i.i:                 ; preds = %bb.ao
  %i.hm = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %i.hd
  %.val58 = load i16, ptr %i.hn, align 2, !tbaa !234
  %i.ho = zext i16 %.val58 to i32
  %i.hp = load i32, ptr @je_opt_lg_tcache_flush_large_div, align 4, !tbaa !14
  %i.hq = lshr i32 %i.ho, %i.hp
  call void @je_tcache_bin_flush_large(ptr noundef nonnull %.0.i30, ptr noundef nonnull %.0.i93, ptr noundef nonnull %i.he, i32 noundef %.0.i.i3583, i32 noundef %i.hq) #20
  %i.hr = load ptr, ptr %i.he, align 8, !tbaa !227 ; 2 uses
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = load i16, ptr %i.hh, align 2, !tbaa !255
  %i.hu = trunc i64 %i.hs to i16
  %i.hv = icmp eq i16 %i.ht, %i.hu
  br i1 %i.hv, label %arena_sdalloc.exit, label %bb.ap, !prof !145

bb.ap:                                            ; preds = %cache_bin_dalloc_easy.exit12.i.i
  %i.hw = getelementptr inbounds i8, ptr %i.hr, i64 -8 ; 2 uses
  store ptr %i.hw, ptr %i.he, align 8, !tbaa !227
  store ptr %0, ptr %i.hw, align 8, !tbaa !228
  br label %arena_sdalloc.exit

tsdn_rtree_ctx.exit52:                            ; preds = %sz_size2index.exit.i.thread
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i30, i64 448
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull %.0.i30, ptr noundef nonnull %i.hx, i64 noundef %i.fe)
  %i.hy = load ptr, ptr %6, align 8, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @je_large_dalloc(ptr noundef nonnull %.0.i30, ptr noundef %i.hy) #20
  br label %arena_sdalloc.exit

arena_sdalloc.exit:                               ; preds = %tsdn_rtree_ctx.exit52, %cache_bin_dalloc_easy.exit12.i.i, %bb.ap, %cache_bin_dalloc_easy.exit12.i.i.thread, %bb.al, %cache_bin_dalloc_easy.exit16.i.thread, %bb.an, %bb.am, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 0, ptr %3, align 8, !tbaa !242
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i30, i64 856 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !243
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i30, i64 24
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !244
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i30, i64 32 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !245
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i30, i64 864
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !246
  %i.ih = load i64, ptr %i.hz, align 8, !tbaa !160 ; 2 uses
  %i.ii = add i64 %i.ih, %storemerge.i
  store i64 %i.ii, ptr %i.hz, align 8, !tbaa !160
  %i.ij = load i64, ptr %i.id, align 8, !tbaa !160
  %i.ik = sub i64 %i.ij, %i.ih
  %i.il = icmp ult i64 %storemerge.i, %i.ik
  br i1 %i.il, label %te_event_advance.exit53, label %bb.aq, !prof !147

bb.aq:                                            ; preds = %arena_sdalloc.exit
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i30, ptr noundef nonnull %3) #20
  br label %te_event_advance.exit53

te_event_advance.exit53:                          ; preds = %arena_sdalloc.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ar

bb.ar:                                            ; preds = %te_event_advance.exit53, %te_event_advance.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @je_sdallocx(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 !guid !330 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  tail call void @je_sdallocx_default(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = icmp ugt i64 %1, 4096
  br i1 %i.b, label %.split5, label %bb.c, !prof !145

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw nsw i64 %1, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !148
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 856 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.j = load i64, ptr %i.i, align 8, !tbaa !160
  %i.k = zext i8 %i.f to i64                      ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !160
  %i.n = add i64 %i.m, %i.h                       ; 2 uses
  %.not35.i = icmp ult i64 %i.n, %i.j
  br i1 %.not35.i, label %bb.d, label %.split5, !prof !147

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !227  ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  %i.t = load i16, ptr %i.s, align 2, !tbaa !255
  %i.u = trunc i64 %i.r to i16
  %i.v = icmp eq i16 %i.t, %i.u
  br i1 %i.v, label %.split5, label %free_fastpath.exit, !prof !145

free_fastpath.exit:                               ; preds = %bb.d
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  store ptr %i.w, ptr %i.p, align 8, !tbaa !227
  store ptr %0, ptr %i.w, align 8, !tbaa !228
  store i64 %i.n, ptr %i.g, align 8, !tbaa !160
  br label %bb.e

.split5:                                          ; preds = %bb.b, %bb.c, %bb.d
  tail call void @je_sdallocx_default(ptr noundef %0, i64 noundef %1, i32 noundef 0)
end_hunk_6
begin_hunk_7_@je_malloc_usable_size:bb.a
tsdn_fetch.exit.i:                                ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %je_malloc_usable_size_impl.exit, label %bb.d, !prof !145

tsdn_fetch.exit.i.thread:                         ; preds = %bb.a
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %je_malloc_usable_size_impl.exit, label %.thread, !prof !145

.thread:                                          ; preds = %tsdn_fetch.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  br label %bb.e

bb.d:                                             ; preds = %tsdn_fetch.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.i = icmp eq ptr %.0.i.i, null
  br i1 %i.i, label %bb.e, label %bb.f, !prof !221

bb.e:                                             ; preds = %.thread, %bb.d
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %1) #20
  br label %arena_salloc.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 448
  br label %arena_salloc.exit

arena_salloc.exit:                                ; preds = %bb.e, %bb.f
  %.0.i.i46 = phi ptr [ null, %bb.e ], [ %.0.i.i, %bb.f ]
  %.0.i.i2 = phi ptr [ %1, %bb.e ], [ %i.j, %bb.f ]
  %i.k = ptrtoint ptr %0 to i64
  %i.l = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %.0.i.i46, ptr noundef nonnull %.0.i.i2, i64 noundef %i.k)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.l, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.m = and i64 %.fca.0.extract.i.i, 4294967295
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !160
  br label %je_malloc_usable_size_impl.exit

je_malloc_usable_size_impl.exit:                  ; preds = %tsdn_fetch.exit.i.thread, %tsdn_fetch.exit.i, %arena_salloc.exit
  %.0.i = phi i64 [ %i.o, %arena_salloc.exit ], [ 0, %tsdn_fetch.exit.i ], [ 0, %tsdn_fetch.exit.i.thread ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden i64 @je_batch_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 !guid !341 {
bb.a:
  %4 = alloca %struct.te_ctx_s, align 8           ; 6 uses
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.c = load i8, ptr %i.b, align 8, !tbaa !148
  %.not.i123 = icmp eq i8 %i.c, 0
  br i1 %.not.i123, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !147

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.d = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #20 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %tsd_fetch_impl.exit.thread, !prof !146

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i124143 = phi ptr [ %i.d, %tsd_fetch_impl.exit ], [ %i.a, %bb.a ] ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i124143, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !148
  %i.h = icmp sgt i8 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.b, !prof !145

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.i = and i32 %3, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 5 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %2, 4097
  br i1 %i.n, label %bb.d, label %bb.e, !prof !147

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw nsw i64 %2, 7
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !148
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !160
  br label %aligned_usize_get.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.v, label %.critedge, label %bb.f, !prof !145

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %2, 1
  %i.x = add i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.x, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.y
  %i.z = lshr i64 1152921504606846975, %i.y
  %i.aa = add nuw nsw i64 %2, %i.z
  %i.ab = and i64 %i.aa, %notmask.i
  br label %aligned_usize_get.exit

bb.g:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %2, 14337
  %i.ad = icmp ult i64 %i.l, 4097
  %or.cond.i = and i1 %i.ac, %i.ad
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i64 %2, -1
  %i.af = add nsw i64 %i.ae, %i.l
  %i.ag = sub nsw i64 0, %i.l
  %i.ah = and i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp samesign ult i64 %i.ah, 4097
  br i1 %i.ai, label %bb.i, label %sz_s2u_compute.exit.i, !prof !147

bb.i:                                             ; preds = %bb.h
  %i.aj = add nuw nsw i64 %i.ah, 6
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !148
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !160
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i:                            ; preds = %bb.h
  %i.aq = shl nuw nsw i64 %i.ah, 1
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ar, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.as
  %i.at = lshr i64 1152921504606846975, %i.as
  %i.au = add nuw nsw i64 %i.ah, %i.at
  %i.av = and i64 %i.au, %notmask.i.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i, %bb.i
  %.0.i24.i = phi i64 [ %i.ap, %bb.i ], [ %i.av, %sz_s2u_compute.exit.i ] ; 2 uses
  %i.aw = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.aw, label %aligned_usize_get.exit, label %.thread144

bb.j:                                             ; preds = %bb.g
  %i.ax = icmp ugt i64 %i.l, 8070450532247928832
  br i1 %i.ax, label %.critedge, label %bb.k, !prof !251

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp ult i64 %2, 16385
  br i1 %i.ay, label %.thread144, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.az, label %sz_s2u_compute.exit29.i, label %bb.m, !prof !145

bb.m:                                             ; preds = %bb.l
  %i.ba = shl nuw i64 %2, 1
  %i.bb = add i64 %i.ba, -1
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bb, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.bc
  %i.bd = lshr i64 1152921504606846975, %i.bc
  %i.be = add nuw nsw i64 %2, %i.bd
  %i.bf = and i64 %i.be, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.m, %bb.l
  %.0.i28.i = phi i64 [ %i.bf, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.bg = icmp ult i64 %.0.i28.i, %2
  br i1 %i.bg, label %.critedge, label %.thread144

.thread144:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.k
  %.0.i126 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.k ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bh = load i64, ptr @je_sz_large_pad, align 8, !tbaa !160
  %i.bi = add nuw i64 %i.k, 4094
  %i.bj = and i64 %i.bi, 9223372036854771712
  %i.bk = add nsw i64 %i.bj, -4096
  %i.bl = add i64 %i.bk, %.0.i126
  %i.bm = add i64 %i.bl, %i.bh
  %i.bn = icmp ult i64 %i.bm, %.0.i126
  %..0.i = select i1 %i.bn, i64 0, i64 %.0.i126
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread144, %sz_s2u.exit25.i, %bb.d, %bb.f
  %storemerge.i = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.u, %bb.d ], [ %i.ab, %bb.f ], [ %..0.i, %.thread144 ] ; 15 uses
  %i.bo = add i64 %storemerge.i, -8070450532247928833
  %spec.select.i = icmp ult i64 %i.bo, -8070450532247928832
  br i1 %spec.select.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %aligned_usize_get.exit
  %i.bp = icmp samesign ult i64 %storemerge.i, 4097
  br i1 %i.bp, label %bb.o, label %sz_size2index_compute.exit, !prof !147

bb.o:                                             ; preds = %bb.n
  %i.bq = add nuw nsw i64 %storemerge.i, 7
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !148
  %i.bu = zext i8 %i.bt to i32
  br label %sz_size2index.exit

sz_size2index_compute.exit:                       ; preds = %bb.n
  %i.bv = shl nuw i64 %storemerge.i, 1
  %i.bw = add i64 %i.bv, -1
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bw, i1 true) ; 2 uses
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = sub nuw nsw i64 60, %i.bx
  %i.ca = add nsw i64 %storemerge.i, -1
  %i.cb = lshr i64 %i.ca, %i.bz
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 3
  %i.ce = shl nuw nsw i32 %i.by, 2
  %reass.sub = sub nsw i32 %i.cd, %i.ce
  %i.cf = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.o, %sz_size2index_compute.exit
  %.0.i117 = phi i32 [ %i.bu, %bb.o ], [ %i.cf, %sz_size2index_compute.exit ] ; 4 uses
  %i.cg = and i32 %3, 64
  %i.ch = icmp ne i32 %i.cg, 0
  %i.ci = load i8, ptr @je_opt_zero, align 1, !range !236
  %i.cj = trunc nuw i8 %i.ci to i1
  %.0.i115 = or i1 %i.ch, %i.cj                   ; 2 uses
  %i.ck = zext nneg i32 %.0.i117 to i64           ; 3 uses
  %i.cl = icmp samesign ugt i32 %.0.i117, 38      ; 2 uses
  br i1 %i.cl, label %bb.q, label %bb.p, !prof !145

bb.p:                                             ; preds = %sz_size2index.exit
  %i.cm = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !267
  %i.cp = zext i32 %i.co to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %sz_size2index.exit
  %.093 = phi i64 [ %i.cp, %bb.p ], [ 0, %sz_size2index.exit ] ; 2 uses
  %.not.i = icmp ult i32 %3, 1048576
  %i.cq = lshr i32 %3, 20
  %i.cr = add nsw i32 %i.cq, -1                   ; 3 uses
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.cs
  %i.cu = and i32 %3, 1048320                     ; 2 uses
  %i.cv = lshr exact i32 %i.cu, 8
  %i.cw = add nsw i32 %i.cv, -2                   ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i124143, i64 880
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.ck
  %i.cz = zext nneg i32 %i.cw to i64
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i124143, i64 840 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i124143, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i124143, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i124143, i64 848
  %i.dg = insertelement <2 x ptr> poison, ptr %i.da, i64 0
  %i.dh = insertelement <2 x ptr> %i.dg, ptr %i.dc, i64 1
  %i.di = insertelement <2 x ptr> poison, ptr %i.dd, i64 0
  %i.dj = insertelement <2 x ptr> %i.di, ptr %i.df, i64 1
  br label %bb.r

bb.r:                                             ; preds = %select.unfold171, %bb.q
  %.0135 = phi ptr [ null, %bb.q ], [ %.5140, %select.unfold171 ] ; 3 uses
  %.097 = phi i64 [ 0, %bb.q ], [ %.5, %select.unfold171 ] ; 8 uses
  %.094 = phi ptr [ null, %bb.q ], [ %.4, %select.unfold171 ] ; 4 uses
  %i.dk = icmp ult i64 %.097, %1
  br i1 %i.dk, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.dl = sub nuw i64 %1, %.097                   ; 6 uses
  %.not = icmp ult i64 %i.dl, %.093
  %or.cond = select i1 %i.cl, i1 true, i1 %.not, !prof !342
  br i1 %or.cond, label %bb.w, label %bb.t, !prof !342

bb.t:                                             ; preds = %bb.s
  %i.dm = icmp eq ptr %.0135, null
  br i1 %i.dm, label %bb.u, label %arena_get_from_ind.exit.thread159

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i, label %arena_get_from_ind.exit, label %mallocx_arena_get.exit, !prof !147

mallocx_arena_get.exit:                           ; preds = %bb.u
  %i.dn = load atomic ptr, ptr %i.ct acquire, align 8 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %arena_get.exit, label %arena_get_from_ind.exit.thread159, !prof !145

arena_get.exit:                                   ; preds = %mallocx_arena_get.exit
  %i.dp = call ptr @je_arena_init(ptr noundef nonnull %.0.i124143, i32 noundef %i.cr, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.v, label %arena_get_from_ind.exit.thread159, !prof !146

bb.v:                                             ; preds = %arena_get.exit
  %i.dr = load i32, ptr @je_narenas_auto, align 4, !tbaa !14
  %.not.i119 = icmp ult i32 %i.cr, %i.dr
  br i1 %.not.i119, label %arena_get_from_ind.exit, label %.critedge

arena_get_from_ind.exit:                          ; preds = %bb.v, %bb.u
  %i.ds = call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i124143, ptr noundef null) ; 2 uses
  %.not191 = icmp eq ptr %i.ds, null
  br i1 %.not191, label %select.unfold171, label %arena_get_from_ind.exit.thread159

arena_get_from_ind.exit.thread159:                ; preds = %mallocx_arena_get.exit, %arena_get.exit, %arena_get_from_ind.exit, %bb.t
  %.3138 = phi ptr [ %i.ds, %arena_get_from_ind.exit ], [ %.0135, %bb.t ], [ %i.dp, %arena_get.exit ], [ %i.dn, %mallocx_arena_get.exit ] ; 2 uses
  %i.dt = urem i64 %i.dl, %.093
  %i.du = sub nuw i64 %i.dl, %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.097
  %i.dw = call i64 @je_arena_fill_small_fresh(ptr noundef nonnull %.0.i124143, ptr noundef nonnull %.3138, i32 noundef %.0.i117, ptr noundef %i.dv, i64 noundef %i.du, i1 noundef zeroext %.0.i115) #20 ; 2 uses
  %i.dx = add i64 %i.dw, %.097
  br label %bb.w

bb.w:                                             ; preds = %arena_get_from_ind.exit.thread159, %bb.s
  %.4139 = phi ptr [ %.0135, %bb.s ], [ %.3138, %arena_get_from_ind.exit.thread159 ] ; 2 uses
  %.198 = phi i64 [ %.097, %bb.s ], [ %i.dx, %arena_get_from_ind.exit.thread159 ] ; 7 uses
  %.090 = phi i64 [ 0, %bb.s ], [ %i.dw, %arena_get_from_ind.exit.thread159 ] ; 8 uses
  %i.dy = load i32, ptr @je_nhbins, align 4, !tbaa !14
  %i.dz = icmp ult i32 %.0.i117, %i.dy
  %i.ea = icmp ult i64 %.090, %i.dl
  %or.cond112 = select i1 %i.dz, i1 %i.ea, i1 false, !prof !149
  br i1 %or.cond112, label %bb.x, label %tcache_get_from_ind.exit.thread, !prof !149

bb.x:                                             ; preds = %bb.w
  %i.eb = icmp eq ptr %.094, null
  br i1 %i.eb, label %bb.y, label %tcache_get_from_ind.exit.thread179

bb.y:                                             ; preds = %bb.x
  switch i32 %i.cu, label %mallocx_tcache_get.exit [
    i32 0, label %mallocx_tcache_get.exit.thread
    i32 256, label %tcache_get_from_ind.exit.thread
  ], !prof !261

mallocx_tcache_get.exit:                          ; preds = %bb.y
  switch i32 %i.cw, label %bb.z [
    i32 -2, label %mallocx_tcache_get.exit.thread
    i32 -1, label %tcache_get_from_ind.exit.thread
  ]

mallocx_tcache_get.exit.thread:                   ; preds = %bb.y, %mallocx_tcache_get.exit
  %i.ec = load i8, ptr %.0.i124143, align 1, !tbaa !235, !range !236, !noundef !237
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %tcache_get_from_ind.exit.thread179, label %tcache_get_from_ind.exit.thread

bb.z:                                             ; preds = %mallocx_tcache_get.exit
  %i.ee = load ptr, ptr @je_tcaches, align 8, !tbaa !263
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.cz ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !148 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.eg to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
  ], !prof !264

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.153, i32 noundef range(i32 0, -2) %i.cw) #20
  call void @abort() #21
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.eh = call ptr @je_tcache_create_explicit(ptr noundef nonnull %.0.i124143) #20 ; 2 uses
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !148
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.ab, %bb.z
  %i.ei = phi ptr [ %i.eh, %bb.ab ], [ %i.eg, %bb.z ] ; 2 uses
  %.not107 = icmp eq ptr %i.ei, null
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.ck
  br i1 %.not107, label %tcache_get_from_ind.exit.thread, label %tcache_get_from_ind.exit.thread179

tcache_get_from_ind.exit.thread179:               ; preds = %mallocx_tcache_get.exit.thread, %tcache_get_from_ind.exit, %bb.x
  %.296.ph = phi ptr [ %.094, %bb.x ], [ %i.ek, %tcache_get_from_ind.exit ], [ %i.cy, %mallocx_tcache_get.exit.thread ] ; 7 uses
  %i.el = sub nuw i64 %i.dl, %.090
  %i.em = getelementptr [8 x i8], ptr %0, i64 %.198 ; 10 uses
  %.296.val = load ptr, ptr %.296.ph, align 8, !tbaa !227 ; 2 uses
  %i.en = getelementptr i8, ptr %.296.ph, i64 20  ; 2 uses
  %.296.val127 = load i16, ptr %i.en, align 4, !tbaa !230
  %i.eo = ptrtoint ptr %.296.val to i64
  %i.ep = trunc i64 %i.eo to i16
  %i.eq = sub i16 %.296.val127, %i.ep
  %i.er = lshr i16 %i.eq, 3
  %i.es = zext nneg i16 %i.er to i64
  %spec.select.i120192 = call i64 @llvm.umin.i64(i64 %i.el, i64 %i.es) ; 9 uses
  %i.et = shl nuw nsw i64 %spec.select.i120192, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.em, ptr align 8 %.296.val, i64 %i.et, i1 false)
  %i.eu = load ptr, ptr %.296.ph, align 8, !tbaa !227
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %spec.select.i120192 ; 2 uses
  store ptr %i.ev, ptr %.296.ph, align 8, !tbaa !227
  %.val3.i = load i16, ptr %i.en, align 4, !tbaa !230 ; 2 uses
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = trunc i64 %i.ew to i16                  ; 2 uses
  %i.ey = sub i16 %.val3.i, %i.ex
  %i.ez = lshr i16 %i.ey, 3
  %i.fa = getelementptr i8, ptr %.296.ph, i64 16  ; 2 uses
  %.val4.i = load i16, ptr %i.fa, align 8, !tbaa !229
  %i.fb = sub i16 %.val3.i, %.val4.i
  %i.fc = lshr i16 %i.fb, 3
  %i.fd = icmp samesign ult i16 %i.ez, %i.fc
  br i1 %i.fd, label %bb.ac, label %cache_bin_low_water_adjust.exit

bb.ac:                                            ; preds = %tcache_get_from_ind.exit.thread179
  store i16 %i.ex, ptr %i.fa, align 8, !tbaa !229
  br label %cache_bin_low_water_adjust.exit

cache_bin_low_water_adjust.exit:                  ; preds = %tcache_get_from_ind.exit.thread179, %bb.ac
  %i.fe = getelementptr inbounds nuw i8, ptr %.296.ph, i64 8 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !238
  %i.fg = add i64 %i.ff, %spec.select.i120192
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !238
  %i.fh = icmp ne i64 %spec.select.i120192, 0
  %or.cond194 = and i1 %.0.i115, %i.fh
  br i1 %or.cond194, label %.lr.ph.preheader, label %.loopexit

end_hunk_7
begin_hunk_8_@malloc_conf_next:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %.239, i64 1
  br label %bb.g, !llvm.loop !399

bb.m:                                             ; preds = %bb.j, %bb.k
  %.sink = phi i64 [ %i.s, %bb.j ], [ %i.w, %bb.k ]
  %.3.ph = phi ptr [ %i.l, %bb.j ], [ %.239, %bb.k ]
  store i64 %.sink, ptr %4, align 8, !tbaa !160
  store ptr %.3.ph, ptr %0, align 8, !tbaa !275
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.d, %bb.m, %bb.e
  %.031 = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.m ], [ true, %bb.e ]
  ret i1 %.031
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal fastcc void @malloc_conf_error(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 !guid !401 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = trunc i64 %4 to i32
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.143, ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef %i.b, ptr noundef %3) #20
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.144, i64 noundef 13) #24
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @had_conf_error, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare zeroext i1 @je_extent_dss_prec_set(i32 noundef) local_unnamed_addr #4

declare i64 @je_malloc_strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @je_fxp_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @je_bin_update_shard_size(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @je_sc_data_init(ptr noundef) local_unnamed_addr #4

declare void @je_sc_data_update_slab_size(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @secure_getenv(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #15

declare void @je_tcache_stats_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @je_arena_malloc_hard(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @je_tcache_bin_flush_stashed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @je_tcache_alloc_small_hard(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @je_large_malloc(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !guid !402 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !145

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #20
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  %i.c = ptrtoint ptr %1 to i64
  %i.d = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.d, 1
  %i.e = and i32 %.fca.1.extract.i, 256
  %.not = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.not, label %bb.e, label %bb.d, !prof !145

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %1) #20
  br label %bb.f

bb.e:                                             ; preds = %tsdn_rtree_ctx.exit
  call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare void @je_arena_dalloc_small(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !guid !403 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !145

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #20
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #20
  ret void
}

declare void @je_large_dalloc(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_tcache_bin_flush_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @je_tcache_bin_flush_large(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #16

declare ptr @je_arena_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #16

declare zeroext i1 @je_arena_is_huge(i32 noundef) local_unnamed_addr #4

declare zeroext i1 @je_background_thread_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #16

declare ptr @je_arena_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

declare ptr @je_tsd_fetch_slow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @je_tcache_create_explicit(ptr noundef) local_unnamed_addr #4

declare ptr @je_arena_ralloc(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #9 !guid !404 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %bb.b, label %bb.c, !prof !147

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !148
  %i.f = zext i8 %i.e to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %sz_size2index.exit.thread, label %bb.d, !prof !145

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j
  %i.m = add nsw i64 %2, -1
  %i.n = lshr i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3
  %i.q = shl nuw nsw i32 %i.k, 2
  %reass.sub = sub nsw i32 %i.p, %i.q
  %i.r = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.r, %bb.d ]
  %i.s = icmp samesign ult i32 %.0.i, 39
  br i1 %i.s, label %bb.e, label %sz_size2index.exit.thread, !prof !265

bb.e:                                             ; preds = %sz_size2index.exit
  tail call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %1) #20
  br label %bb.f

sz_size2index.exit.thread:                        ; preds = %bb.c, %sz_size2index.exit
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %sz_size2index.exit.thread, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @do_realloc_nonnull_zero(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #1 !guid !405 {
bb.a:
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %4 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = alloca [3 x i64], align 16               ; 5 uses
  %i.b = atomicrmw add ptr @je_zero_realloc_count, i64 1 monotonic, align 8 ; 0 uses
  %i.c = load i32, ptr @je_opt_zero_realloc_action, align 4, !tbaa !14
  switch i32 %i.c, label %bb.u [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @do_rallocx(ptr noundef nonnull %0, i64 noundef 1, i32 noundef 256, i1 noundef zeroext true, ptr noundef %1, ptr noundef %2)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.e = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %i.g = load i8, ptr %i.f, align 8, !tbaa !148
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.d, !prof !147

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.e, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.c, %bb.d
  %.0.i27 = phi ptr [ %i.h, %bb.d ], [ %i.e, %bb.c ] ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i27, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !148
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %tcache_get_from_ind.exit, !prof !147

bb.e:                                             ; preds = %tsd_fetch_impl.exit
  %i.l = load i8, ptr %.0.i27, align 1, !tbaa !235, !range !236, !noundef !237
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i27, i64 872
  %spec.select = select i1 %i.m, ptr %i.n, ptr null
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.e, %tsd_fetch_impl.exit
  %.0.i = phi ptr [ null, %tsd_fetch_impl.exit ], [ %spec.select, %bb.e ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.o = ptrtoint ptr %0 to i64                   ; 3 uses
  store i64 %i.o, ptr %i.a, align 16, !tbaa !160
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  call void @je_hook_invoke_dalloc(i32 noundef 3, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #20
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i27, i64 448 ; 2 uses
  %i.r = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %.0.i27, ptr noundef nonnull %i.q, i64 noundef %i.o) ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.r, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.r, 1
  %i.s = and i64 %.fca.0.extract.i, 4294967295    ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !160  ; 4 uses
  %i.v = load i8, ptr @je_opt_junk_free, align 1, !range !236
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %idalloctm.exit

bb.f:                                             ; preds = %tcache_get_from_ind.exit
  %i.x = load ptr, ptr @je_junk_free_callback, align 8, !tbaa !228
  call void %i.x(ptr noundef nonnull %0, i64 noundef %i.u) #20, !inline_history !3
  br label %idalloctm.exit

idalloctm.exit:                                   ; preds = %tcache_get_from_ind.exit, %bb.f
  %i.y = icmp eq ptr %.0.i, null
  br i1 %i.y, label %bb.g, label %bb.h, !prof !145

bb.g:                                             ; preds = %idalloctm.exit
  call fastcc void @arena_dalloc_no_tcache(ptr noundef nonnull %.0.i27, ptr noundef nonnull %0)
  br label %arena_dalloc.exit

bb.h:                                             ; preds = %idalloctm.exit
  %.sroa.035.0.extract.trunc = trunc i64 %.fca.0.extract.i to i32 ; 3 uses
  %i.z = and i32 %.fca.1.extract.i, 256
  %.not41 = icmp eq i32 %i.z, 0
  br i1 %.not41, label %bb.m, label %bb.i, !prof !145

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.s ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !227 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 18 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !255
  %i.ag = trunc i64 %i.ad to i16
  %i.ah = icmp eq i16 %i.af, %i.ag
  br i1 %i.ah, label %cache_bin_dalloc_easy.exit25, label %cache_bin_dalloc_easy.exit25.thread, !prof !145

cache_bin_dalloc_easy.exit25.thread:              ; preds = %bb.i
  %i.ai = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !227
  store ptr %0, ptr %i.ai, align 8, !tbaa !228
  br label %arena_dalloc.exit

cache_bin_dalloc_easy.exit25:                     ; preds = %bb.i
  %i.aj = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.s
  %.val33 = load i16, ptr %i.ak, align 2, !tbaa !234 ; 2 uses
  %i.al = icmp eq i16 %.val33, 0
  br i1 %i.al, label %bb.j, label %bb.k, !prof !145

bb.j:                                             ; preds = %cache_bin_dalloc_easy.exit25
  call void @je_arena_dalloc_small(ptr noundef nonnull %.0.i27, ptr noundef nonnull %0) #20
  br label %arena_dalloc.exit

bb.k:                                             ; preds = %cache_bin_dalloc_easy.exit25
  %i.am = zext i16 %.val33 to i32
  %i.an = load i32, ptr @je_opt_lg_tcache_flush_small_div, align 4, !tbaa !14
  %i.ao = lshr i32 %i.am, %i.an
  call void @je_tcache_bin_flush_small(ptr noundef nonnull %.0.i27, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.ab, i32 noundef %.sroa.035.0.extract.trunc, i32 noundef %i.ao) #20
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !227 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = load i16, ptr %i.ae, align 2, !tbaa !255
  %i.as = trunc i64 %i.aq to i16
  %i.at = icmp eq i16 %i.ar, %i.as
  br i1 %i.at, label %arena_dalloc.exit, label %bb.l, !prof !145

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  store ptr %i.au, ptr %i.ab, align 8, !tbaa !227
  store ptr %0, ptr %i.au, align 8, !tbaa !228
  br label %arena_dalloc.exit

bb.m:                                             ; preds = %bb.h
  %i.av = load i32, ptr @je_nhbins, align 4, !tbaa !14
  %i.aw = icmp ugt i32 %i.av, %.sroa.035.0.extract.trunc
  br i1 %i.aw, label %bb.n, label %tsdn_rtree_ctx.exit

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.s ; 6 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !227 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 18 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !255
  %i.bd = trunc i64 %i.ba to i16
  %i.be = icmp eq i16 %i.bc, %i.bd
  br i1 %i.be, label %cache_bin_dalloc_easy.exit12.i, label %cache_bin_dalloc_easy.exit12.i.thread, !prof !145

cache_bin_dalloc_easy.exit12.i.thread:            ; preds = %bb.n
  %i.bf = getelementptr inbounds i8, ptr %i.az, i64 -8 ; 2 uses
  store ptr %i.bf, ptr %i.ay, align 8, !tbaa !227
  store ptr %0, ptr %i.bf, align 8, !tbaa !228
  br label %arena_dalloc.exit

cache_bin_dalloc_easy.exit12.i:                   ; preds = %bb.n
  %i.bg = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !232
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.s
  %.val = load i16, ptr %i.bh, align 2, !tbaa !234
  %i.bi = zext i16 %.val to i32
  %i.bj = load i32, ptr @je_opt_lg_tcache_flush_large_div, align 4, !tbaa !14
  %i.bk = lshr i32 %i.bi, %i.bj
  call void @je_tcache_bin_flush_large(ptr noundef nonnull %.0.i27, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.ay, i32 noundef %.sroa.035.0.extract.trunc, i32 noundef %i.bk) #20
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !227 ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = load i16, ptr %i.bb, align 2, !tbaa !255
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = icmp eq i16 %i.bn, %i.bo
  br i1 %i.bp, label %arena_dalloc.exit, label %bb.o, !prof !145

bb.o:                                             ; preds = %cache_bin_dalloc_easy.exit12.i
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 -8 ; 2 uses
  store ptr %i.bq, ptr %i.ay, align 8, !tbaa !227
  store ptr %0, ptr %i.bq, align 8, !tbaa !228
  br label %arena_dalloc.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull %.0.i27, ptr noundef nonnull %i.q, i64 noundef %i.o)
  %i.br = load ptr, ptr %4, align 8, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @je_large_dalloc(ptr noundef nonnull %.0.i27, ptr noundef %i.br) #20
  br label %arena_dalloc.exit
end_hunk_8
