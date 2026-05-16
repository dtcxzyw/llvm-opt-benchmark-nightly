inline.NumInlined: 316
inline.NumDeleted: 120
begin_hunk_0
%struct.nstime_t = type { i64 }
%struct.atomic_u32_t = type { i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.atomic_b_t = type { i8 }
%struct.rtree_node_elm_s = type { %struct.atomic_p_t }
%struct.atomic_p_t = type { ptr }
%struct.pa_central_s = type { %struct.hpa_central_s }
%struct.hpa_central_s = type { %struct.malloc_mutex_s, %struct.malloc_mutex_s, ptr, i64, ptr, i64, %struct.hpa_hooks_s }
%struct.hpa_hooks_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hpa_shard_opts_s = type { i64, i64, i32, i8, i64, i64 }
%struct.sec_opts_s = type { i64, i64, i64, i64, i64 }
%struct.div_info_s = type { i32 }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }
%struct.rtree_contents_s = type { ptr, %struct.rtree_metadata_s }
%struct.rtree_metadata_s = type { i32, i32, i8, i8 }

@.str = private unnamed_addr constant [7 x i8] c"percpu\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"phycpu\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@je_percpu_arena_mode_names = hidden local_unnamed_addr global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.1], align 16
@je_opt_percpu_arena = hidden local_unnamed_addr global i32 2, align 4
@je_opt_dirty_decay_ms = hidden local_unnamed_addr global i64 10000, align 8
@je_opt_muzzy_decay_ms = hidden local_unnamed_addr global i64 0, align 8
@je_opt_oversize_threshold = hidden local_unnamed_addr global i64 8388608, align 8
@je_oversize_threshold = hidden local_unnamed_addr global i64 8388608, align 8
@je_ehooks_default_extent_hooks = external constant %struct.extent_hooks_s, align 8
@je_arena_config_default = hidden constant { ptr, i8, [7 x i8] } { ptr @je_ehooks_default_extent_hooks, i8 1, [7 x i8] zeroinitializer }, align 8
@je_dss_prec_names = external local_unnamed_addr global [0 x ptr], align 8
@je_nhbins = external local_unnamed_addr global i32, align 4
@je_tcache_bin_info = external local_unnamed_addr global ptr, align 8
@je_nstime_update = external local_unnamed_addr constant ptr, align 8
@je_bin_infos = external global [39 x %struct.bin_info_s], align 16
@je_sz_large_pad = external local_unnamed_addr global i64, align 8
@je_arena_emap_global = hidden global %struct.emap_s zeroinitializer, align 8
@je_tcache_maxclass = external local_unnamed_addr global i64, align 8
@dirty_decay_ms_default.0 = internal unnamed_addr global i64 0, align 8
@muzzy_decay_ms_default.0 = internal unnamed_addr global i64 0, align 8
@nbins_total = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"tcache_ql\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"arena_large\00", align 1
@je_arena_pa_central_global = hidden global %struct.pa_central_s zeroinitializer, align 8
@je_opt_hpa = external local_unnamed_addr global i8, align 1
@je_opt_hpa_opts = external local_unnamed_addr global %struct.hpa_shard_opts_s, align 8
@je_opt_hpa_sec_opts = external global %struct.sec_opts_s, align 8
@je_test_hooks_arena_new_hook = external local_unnamed_addr global ptr, align 8
@huge_arena_ind = internal unnamed_addr global i32 0, align 4
@je_arena_binind_div_info = hidden global [39 x %struct.div_info_s] zeroinitializer, align 16
@je_arena_bin_offsets = hidden local_unnamed_addr global [39 x i32] zeroinitializer, align 16
@je_hpa_hooks_default = external global %struct.hpa_hooks_s, align 8
@je_sz_index2size_tab = external local_unnamed_addr global [235 x i64], align 16
@je_sz_size2index_tab = external local_unnamed_addr global [0 x i8], align 1
@je_opt_san_guard_large = external local_unnamed_addr global i64, align 8
@je_opt_retain = external local_unnamed_addr global i8, align 1
@je_opt_san_guard_small = external local_unnamed_addr global i64, align 8
@je_ticker_geom_table = external local_unnamed_addr constant [64 x i8], align 16
@je_manual_arena_base = external local_unnamed_addr global i32, align 4
@je_ncpus = external local_unnamed_addr global i32, align 4
@je_opt_lg_tcache_flush_large_div = external local_unnamed_addr global i32, align 4
@je_arenas = external local_unnamed_addr global [0 x %struct.atomic_p_t], align 8
@je_opt_lg_tcache_flush_small_div = external local_unnamed_addr global i32, align 4
@je_background_thread_info = external local_unnamed_addr global ptr, align 8
@je_max_background_threads = external local_unnamed_addr global i64, align 8
@je_background_thread_enabled_state = external local_unnamed_addr global %struct.atomic_b_t, align 1

; Function Attrs: nounwind uwtable
define hidden void @je_arena_basic_stats_merge(ptr noundef readnone captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(none) initializes((0, 8)) %3, ptr noundef writeonly captures(none) initializes((0, 8)) %4, ptr noundef writeonly captures(none) initializes((0, 8)) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr %1 monotonic, align 4
  %i.b = load i32, ptr %2, align 4, !tbaa !7
  %i.c = add i32 %i.b, %i.a
  store i32 %i.c, ptr %2, align 4, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10520
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_dss_prec_names, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  store ptr %i.h, ptr %3, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10648 ; 3 uses
  %i.j = tail call i64 @je_pa_decay_ms_get(ptr noundef nonnull %i.i, i32 noundef 1) #15
  store i64 %i.j, ptr %4, align 8, !tbaa !14
  %i.k = tail call i64 @je_pa_decay_ms_get(ptr noundef nonnull %i.i, i32 noundef 2) #15
  store i64 %i.k, ptr %5, align 8, !tbaa !14
  tail call void @je_pa_shard_basic_stats_merge(ptr noundef nonnull %i.i, ptr noundef %6, ptr noundef %7, ptr noundef %8) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden i32 @je_arena_nthreads_get(ptr noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
atomic_load_u.exit:
  %i.a = zext i1 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden i32 @je_arena_dss_prec_get(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
atomic_load_u.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10520
  %i.b = load atomic i32, ptr %i.a acquire, align 4
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i64 @je_arena_decay_ms_get(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10648
  %i.b = tail call i64 @je_pa_decay_ms_get(ptr noundef nonnull %i.a, i32 noundef %1) #15
  ret i64 %i.b
}

declare void @je_pa_shard_basic_stats_merge(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_stats_merge(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(none) initializes((0, 8)) %3, ptr noundef writeonly captures(none) initializes((0, 8)) %4, ptr noundef writeonly captures(none) initializes((0, 8)) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef captures(none) %11, ptr noundef %12, ptr noundef %13, ptr noundef %14) local_unnamed_addr #0 {
atomic_load_zu.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = load atomic i32, ptr %1 monotonic, align 4
  %i.f = load i32, ptr %2, align 4, !tbaa !7
  %i.g = add i32 %i.f, %i.e
  store i32 %i.g, ptr %2, align 4, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10520
  %i.i = load atomic i32, ptr %i.h acquire, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @je_dss_prec_names, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  store ptr %i.l, ptr %3, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10648 ; 5 uses
  %i.n = tail call i64 @je_pa_decay_ms_get(ptr noundef nonnull %i.m, i32 noundef 1) #15
  store i64 %i.n, ptr %4, align 8, !tbaa !14
  %i.o = tail call i64 @je_pa_decay_ms_get(ptr noundef nonnull %i.m, i32 noundef 2) #15
  store i64 %i.o, ptr %5, align 8, !tbaa !14
  tail call void @je_pa_shard_basic_stats_merge(ptr noundef nonnull %i.m, ptr noundef %6, ptr noundef %7, ptr noundef %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 78936 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  call void @je_base_stats_get(ptr noundef %0, ptr noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #15
  %i.r = getelementptr i8, ptr %1, i64 72896
  %.val = load ptr, ptr %i.r, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.t = load atomic i64, ptr %i.s monotonic, align 8
  %i.u = load i64, ptr %i.c, align 8, !tbaa !14
  %i.v = add i64 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70
  %i.y = add i64 %i.v, %i.x
  store i64 %i.y, ptr %i.w, align 8, !tbaa !70
  %i.z = load i64, ptr %i.b, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !71
  %i.ac = add i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !71
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !14
  %i.ae = load i64, ptr %9, align 8, !tbaa !72
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr %9, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load atomic i64, ptr %i.ah monotonic, align 8
  %i.aj = load atomic i64, ptr %i.ag monotonic, align 8
  %i.ak = add i64 %i.aj, %i.ai
  store atomic i64 %i.ak, ptr %i.ag monotonic, align 8
  %i.al = load i64, ptr %i.d, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !73
  %i.ao = add i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !73
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  br label %bb.e

bb.a:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 88
  call void @je_pa_shard_stats_merge(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.aw, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef nonnull %i.aa) #15
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 10408 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 10472 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.bb = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ba) #15
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.az) #15
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 10512
  store atomic i8 1, ptr %i.bc monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10464 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !74
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !74
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 10456 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.bh, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.bg, align 8, !tbaa !76
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 10448 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !77
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 10400
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !78 ; 5 uses
  %.not152 = icmp eq ptr %i.bm, null
  br i1 %.not152, label %select.unfold._crit_edge, label %.preheader148.lr.ph

.preheader148.lr.ph:                              ; preds = %malloc_mutex_lock.exit
  %i.bn = load i32, ptr @je_nhbins, align 4, !tbaa !7 ; 3 uses
  %.not160 = icmp eq i32 %i.bn, 0
  %i.bo = load ptr, ptr @je_tcache_bin_info, align 8 ; 2 uses
  br i1 %.not160, label %.preheader148, label %.preheader148.lr.ph.split.us

.preheader148.lr.ph.split.us:                     ; preds = %.preheader148.lr.ph
  %.promoted = load i64, ptr %i.ax, align 8, !tbaa !79
  %.promoted155 = load i64, ptr %i.ay, align 8, !tbaa !80
  %wide.trip.count = zext i32 %i.bn to i64        ; 4 uses
  %scevgep = getelementptr i8, ptr %9, i64 184
  %i.bp = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep185 = getelementptr i8, ptr @je_sz_index2size_tab, i64 %i.bp
  %min.iters.check = icmp ult i32 %i.bn, 5
  %bound0 = icmp ult ptr %i.ax, %scevgep185
  %bound1 = icmp ugt ptr %scevgep, @je_sz_index2size_tab
  %found.conflict = and i1 %bound0, %bound1
  %n.mod.vf = and i64 %wide.trip.count, 3         ; 2 uses
  %i.bq = icmp eq i64 %n.mod.vf, 0
  %i.br = select i1 %i.bq, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %i.br    ; 2 uses
  br label %.preheader148.us

.preheader148.us:                                 ; preds = %._crit_edge.us, %.preheader148.lr.ph.split.us
  %.promoted151.us156 = phi i64 [ %.promoted155, %.preheader148.lr.ph.split.us ], [ %i.fo, %._crit_edge.us ] ; 2 uses
  %.promoted.us154 = phi i64 [ %.promoted, %.preheader148.lr.ph.split.us ], [ %i.fk, %._crit_edge.us ] ; 2 uses
  %.0134153.us = phi ptr [ %i.bm, %.preheader148.lr.ph.split.us ], [ %i.fp, %._crit_edge.us ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0134153.us, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !81 ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader148.us
  %i.bu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted151.us156, i64 0
  %i.bv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.us154, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %vec.phi = phi <2 x i64> [ %i.bu, %vector.ph ], [ %i.en, %vector.body ]
  %vec.phi186 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.eo, %vector.body ]
  %vec.phi187 = phi <2 x i64> [ %i.bv, %vector.ph ], [ %i.eh, %vector.body ]
  %vec.phi188 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ei, %vector.body ]
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %index ; 3 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %index ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %index ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %index ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %index ; 2 uses
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !85
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !85
  %i.cg = insertelement <2 x ptr> poison, ptr %i.ce, i64 0
  %i.ch = insertelement <2 x ptr> %i.cg, ptr %i.cf, i64 1
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !85
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !85
  %i.ck = insertelement <2 x ptr> poison, ptr %i.ci, i64 0
  %i.cl = insertelement <2 x ptr> %i.ck, ptr %i.cj, i64 1
  %i.cm = getelementptr i8, ptr %i.bw, i64 20
  %i.cn = getelementptr i8, ptr %i.bx, i64 44
  %i.co = getelementptr i8, ptr %i.bz, i64 68
  %i.cp = getelementptr i8, ptr %i.cb, i64 92
  %i.cq = load i16, ptr %i.cm, align 4, !tbaa !90
  %i.cr = load i16, ptr %i.cn, align 4, !tbaa !90
  %i.cs = insertelement <2 x i16> poison, i16 %i.cq, i64 0
  %i.ct = insertelement <2 x i16> %i.cs, i16 %i.cr, i64 1 ; 2 uses
  %i.cu = load i16, ptr %i.co, align 4, !tbaa !90
  %i.cv = load i16, ptr %i.cp, align 4, !tbaa !90
  %i.cw = insertelement <2 x i16> poison, i16 %i.cu, i64 0
  %i.cx = insertelement <2 x i16> %i.cw, i16 %i.cv, i64 1 ; 2 uses
  %i.cy = ptrtoint <2 x ptr> %i.ch to <2 x i64>
  %i.cz = ptrtoint <2 x ptr> %i.cl to <2 x i64>
  %i.da = trunc <2 x i64> %i.cy to <2 x i16>
  %i.db = trunc <2 x i64> %i.cz to <2 x i16>
  %i.dc = sub <2 x i16> %i.ct, %i.da
  %i.dd = sub <2 x i16> %i.cx, %i.db
  %i.de = lshr <2 x i16> %i.dc, splat (i16 3)
  %i.df = lshr <2 x i16> %i.dd, splat (i16 3)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %wide.load = load <2 x i16>, ptr %i.cd, align 2, !tbaa !91
  %wide.load189 = load <2 x i16>, ptr %i.dg, align 2, !tbaa !91
  %i.dh = shl <2 x i16> %wide.load, splat (i16 3)
  %i.di = shl <2 x i16> %wide.load189, splat (i16 3)
  %i.dj = sub <2 x i16> %i.dh, %i.ct
  %i.dk = sub <2 x i16> %i.di, %i.cx
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bw, i64 18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bx, i64 42
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bz, i64 66
  %i.do = getelementptr inbounds nuw i8, ptr %i.cb, i64 90
  %i.dp = load i16, ptr %i.dl, align 2, !tbaa !93
  %i.dq = load i16, ptr %i.dm, align 2, !tbaa !93
  %i.dr = insertelement <2 x i16> poison, i16 %i.dp, i64 0
  %i.ds = insertelement <2 x i16> %i.dr, i16 %i.dq, i64 1
  %i.dt = load i16, ptr %i.dn, align 2, !tbaa !93
  %i.du = load i16, ptr %i.do, align 2, !tbaa !93
  %i.dv = insertelement <2 x i16> poison, i16 %i.dt, i64 0
  %i.dw = insertelement <2 x i16> %i.dv, i16 %i.du, i64 1
  %i.dx = add <2 x i16> %i.dj, %i.ds
  %i.dy = add <2 x i16> %i.dk, %i.dw
  %i.dz = lshr <2 x i16> %i.dx, splat (i16 3)
  %i.ea = lshr <2 x i16> %i.dy, splat (i16 3)
  %i.eb = zext nneg <2 x i16> %i.de to <2 x i64>
  %i.ec = zext nneg <2 x i16> %i.df to <2 x i64>
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %index ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %wide.load190 = load <2 x i64>, ptr %i.ed, align 16, !tbaa !14, !alias.scope !94
  %wide.load191 = load <2 x i64>, ptr %i.ee, align 16, !tbaa !14, !alias.scope !94
  %i.ef = mul <2 x i64> %wide.load190, %i.eb
  %i.eg = mul <2 x i64> %wide.load191, %i.ec
  %i.eh = add <2 x i64> %i.ef, %vec.phi187        ; 2 uses
  %i.ei = add <2 x i64> %i.eg, %vec.phi188        ; 2 uses
  %i.ej = zext nneg <2 x i16> %i.dz to <2 x i64>
  %i.ek = zext nneg <2 x i16> %i.ea to <2 x i64>
  %wide.load192 = load <2 x i64>, ptr %i.ed, align 16, !tbaa !14, !alias.scope !94
  %wide.load193 = load <2 x i64>, ptr %i.ee, align 16, !tbaa !14, !alias.scope !94
  %i.el = mul <2 x i64> %wide.load192, %i.ej
  %i.em = mul <2 x i64> %wide.load193, %i.ek
  %i.en = add <2 x i64> %vec.phi, %i.el           ; 2 uses
  %i.eo = add <2 x i64> %vec.phi186, %i.em        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.eo, %i.en
  %i.eq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx194 = add <2 x i64> %i.ei, %i.eh
  %i.er = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx194) ; 2 uses
  store i64 %i.er, ptr %i.ax, align 8, !tbaa !79, !alias.scope !101, !noalias !94
  store i64 %i.eq, ptr %i.ay, align 8, !tbaa !80, !alias.scope !101, !noalias !94
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader148.us, %middle.block
  %indvars.iv166.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader148.us ]
  %.ph = phi i64 [ %i.eq, %middle.block ], [ %.promoted151.us156, %.preheader148.us ]
  %.ph196 = phi i64 [ %i.er, %middle.block ], [ %.promoted.us154, %.preheader148.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %scalar.ph ], [ %indvars.iv166.ph, %scalar.ph.preheader ] ; 4 uses
  %i.es = phi i64 [ %i.fo, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.et = phi i64 [ %i.fk, %scalar.ph ], [ %.ph196, %scalar.ph.preheader ]
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %indvars.iv166 ; 3 uses
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv166
  %.val.i.us = load ptr, ptr %i.eu, align 8, !tbaa !85
  %i.ew = getelementptr i8, ptr %i.eu, i64 20
  %.val6.i.us = load i16, ptr %i.ew, align 4, !tbaa !90 ; 2 uses
  %i.ex = ptrtoint ptr %.val.i.us to i64
  %i.ey = trunc i64 %i.ex to i16
  %i.ez = sub i16 %.val6.i.us, %i.ey
  %i.fa = lshr i16 %i.ez, 3
  %.val9.i.us = load i16, ptr %i.ev, align 2, !tbaa !91
  %i.fb = shl i16 %.val9.i.us, 3
  %.neg.i.us = sub i16 %i.fb, %.val6.i.us
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 18
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !93
  %i.fe = add i16 %.neg.i.us, %i.fd
  %i.ff = lshr i16 %i.fe, 3
  %i.fg = zext nneg i16 %i.fa to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %indvars.iv166 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !14
  %i.fj = mul i64 %i.fi, %i.fg
  %i.fk = add i64 %i.fj, %i.et                    ; 3 uses
  store i64 %i.fk, ptr %i.ax, align 8, !tbaa !79
  %i.fl = zext nneg i16 %i.ff to i64
  %i.fm = load i64, ptr %i.fh, align 8, !tbaa !14
  %i.fn = mul i64 %i.fm, %i.fl
  %i.fo = add i64 %i.es, %i.fn                    ; 3 uses
  store i64 %i.fo, ptr %i.ay, align 8, !tbaa !80
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count
  br i1 %exitcond169.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !103

._crit_edge.us:                                   ; preds = %scalar.ph
  %i.fp = load ptr, ptr %.0134153.us, align 8, !tbaa !104 ; 3 uses
  %.not138.us = icmp eq ptr %i.fp, %i.bm
  %.not.us182 = icmp eq ptr %i.fp, null
  %.not.us = or i1 %.not138.us, %.not.us182
  br i1 %.not.us, label %select.unfold._crit_edge, label %.preheader148.us

bb.e:                                             ; preds = %atomic_load_zu.exit, %bb.e
  %indvars.iv = phi i64 [ 0, %atomic_load_zu.exit ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [48 x i8], ptr %i.ap, i64 %indvars.iv ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq monotonic, align 8 ; 6 uses
  %i.fs = getelementptr inbounds nuw [48 x i8], ptr %11, i64 %indvars.iv ; 7 uses
  %i.ft = load atomic i64, ptr %i.fs monotonic, align 8
  %i.fu = add i64 %i.ft, %i.fr
  store atomic i64 %i.fu, ptr %i.fs monotonic, align 8
  %i.fv = load i64, ptr %i.aq, align 8, !tbaa !105
  %i.fw = add i64 %i.fv, %i.fr
  store i64 %i.fw, ptr %i.aq, align 8, !tbaa !105
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fy = load atomic i64, ptr %i.fx monotonic, align 8 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.ga = load atomic i64, ptr %i.fz monotonic, align 8
  %i.gb = add i64 %i.ga, %i.fy
  store atomic i64 %i.gb, ptr %i.fz monotonic, align 8
  %i.gc = load i64, ptr %i.ar, align 8, !tbaa !106
  %i.gd = add i64 %i.gc, %i.fy
  store i64 %i.gd, ptr %i.ar, align 8, !tbaa !106
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.gf = load atomic i64, ptr %i.ge monotonic, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %i.gh = add i64 %i.gf, %i.fr                    ; 2 uses
  %i.gi = load atomic i64, ptr %i.gg monotonic, align 8
  %i.gj = add i64 %i.gi, %i.gh
  store atomic i64 %i.gj, ptr %i.gg monotonic, align 8
  %i.gk = load i64, ptr %i.as, align 8, !tbaa !107
  %i.gl = add i64 %i.gk, %i.gh
  store i64 %i.gl, ptr %i.as, align 8, !tbaa !107
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 2 uses
  %i.gn = load atomic i64, ptr %i.gm monotonic, align 8
  %i.go = add i64 %i.gn, %i.fr
  store atomic i64 %i.go, ptr %i.gm monotonic, align 8
  %i.gp = load i64, ptr %i.at, align 8, !tbaa !108
  %i.gq = add i64 %i.gp, %i.fr
  store i64 %i.gq, ptr %i.at, align 8, !tbaa !108
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.gs = load atomic i64, ptr %i.gr monotonic, align 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 2 uses
  %i.gu = load atomic i64, ptr %i.gt monotonic, align 8
  %i.gv = add i64 %i.gu, %i.gs
  store atomic i64 %i.gv, ptr %i.gt monotonic, align 8
  %i.gw = load i64, ptr %i.au, align 8, !tbaa !109
  %i.gx = add i64 %i.gw, %i.gs
  store i64 %i.gx, ptr %i.au, align 8, !tbaa !109
  %i.gy = sub i64 %i.fr, %i.fy                    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fs, i64 40 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !110
  %i.hb = add i64 %i.ha, %i.gy
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !110
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %indvars.iv
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 312
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !14
  %i.hf = mul i64 %i.he, %i.gy
  %i.hg = load i64, ptr %i.av, align 8, !tbaa !112
  %i.hh = add i64 %i.hg, %i.hf
  store i64 %i.hh, ptr %i.av, align 8, !tbaa !112
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 196
  br i1 %exitcond.not, label %bb.a, label %bb.e, !llvm.loop !113

.preheader148:                                    ; preds = %.preheader148.lr.ph, %.preheader148
  %.0134153 = phi ptr [ %i.hi, %.preheader148 ], [ %i.bm, %.preheader148.lr.ph ]
  %i.hi = load ptr, ptr %.0134153, align 8, !tbaa !104 ; 3 uses
  %.not138 = icmp eq ptr %i.hi, %i.bm
  %.not161 = icmp eq ptr %i.hi, null
  %.not = or i1 %.not138, %.not161
  br i1 %.not, label %select.unfold._crit_edge, label %.preheader148

select.unfold._crit_edge:                         ; preds = %._crit_edge.us, %.preheader148, %malloc_mutex_lock.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hk, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.az, i64 64, i1 false), !tbaa.struct !114
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 732
  store atomic i32 0, ptr %i.hl monotonic, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 10512
  store atomic i8 0, ptr %i.hm monotonic, align 8
  %i.hn = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ba) #15 ; 0 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 10536 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 10600 ; 2 uses
  %i.hq = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.hp) #15
  %.not.i140 = icmp eq i32 %i.hq, 0
  br i1 %.not.i140, label %bb.g, label %bb.f

bb.f:                                             ; preds = %select.unfold._crit_edge
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ho) #15
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 10640
  store atomic i8 1, ptr %i.hr monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %select.unfold._crit_edge
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 10592 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !74
  %i.hu = add i64 %i.ht, 1
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !74
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 10584 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !76
  %.not.i.i141 = icmp eq ptr %i.hw, %0
  br i1 %.not.i.i141, label %malloc_mutex_lock.exit142, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.hv, align 8, !tbaa !76
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 10576 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !77
  %i.hz = add i64 %i.hy, 1
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit142

malloc_mutex_lock.exit142:                        ; preds = %bb.g, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hj, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ho, i64 64, i1 false), !tbaa.struct !114
  %i.ia = getelementptr inbounds nuw i8, ptr %9, i64 220
  store atomic i32 0, ptr %i.ia monotonic, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 10640
  store atomic i8 0, ptr %i.ib monotonic, align 8
  %i.ic = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.hp) #15 ; 0 uses
  %i.id = load ptr, ptr %i.p, align 8, !tbaa !16  ; 6 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 96
  %i.if = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ie) #15
  %.not.i143 = icmp eq i32 %i.if, 0
  br i1 %.not.i143, label %bb.j, label %bb.i

bb.i:                                             ; preds = %malloc_mutex_lock.exit142
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ig) #15
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 136
  store atomic i8 1, ptr %i.ih monotonic, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %malloc_mutex_lock.exit142
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 88 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !74
  %i.ik = add i64 %i.ij, 1
  store i64 %i.ik, ptr %i.ii, align 8, !tbaa !74
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 80 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !76
  %.not.i.i144 = icmp eq ptr %i.im, %0
  br i1 %.not.i.i144, label %malloc_mutex_lock.exit145, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %0, ptr %i.il, align 8, !tbaa !76
  %i.in = getelementptr inbounds nuw i8, ptr %i.id, i64 72 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !77
  %i.ip = add i64 %i.io, 1
  store i64 %i.ip, ptr %i.in, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit145

malloc_mutex_lock.exit145:                        ; preds = %bb.j, %bb.k
  %i.iq = getelementptr inbounds nuw i8, ptr %9, i64 632
  %i.ir = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.iq, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.is, i64 64, i1 false), !tbaa.struct !114
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 668
  store atomic i32 0, ptr %i.it monotonic, align 4
  %i.iu = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 136
  store atomic i8 0, ptr %i.iv monotonic, align 1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 96
  %i.ix = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.iw) #15 ; 0 uses
  call void @je_pa_shard_mtx_stats_read(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.hj) #15
  %i.iy = getelementptr inbounds nuw i8, ptr %9, i64 10360 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 78944 ; 2 uses
  call void @je_nstime_copy(ptr noundef nonnull %i.iy, ptr noundef nonnull %i.iz) #15
  %i.ja = load ptr, ptr @je_nstime_update, align 8, !tbaa !116
  call void %i.ja(ptr noundef nonnull %i.iy) #15
  call void @je_nstime_subtract(ptr noundef nonnull %i.iy, ptr noundef nonnull %i.iz) #15
  %i.jb = ptrtoint ptr %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %malloc_mutex_lock.exit145, %._crit_edge
  %indvars.iv173 = phi i64 [ 0, %malloc_mutex_lock.exit145 ], [ %indvars.iv.next174, %._crit_edge ] ; 4 uses
  %i.jc = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %indvars.iv173
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 20 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !117
  %.not162 = icmp eq i32 %i.je, 0
  br i1 %.not162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.jf = getelementptr inbounds nuw [144 x i8], ptr %10, i64 %indvars.iv173 ; 13 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %indvars.iv173
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 80
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 88 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 96 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 112 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 116
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 120 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jf, i64 136 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jf, i64 32 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 48 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jf, i64 64 ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

._crit_edge:                                      ; preds = %bin_stats_merge.exit, %.preheader
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next174, 39
  br i1 %exitcond176.not, label %bb.l, label %.preheader, !llvm.loop !120

bb.m:                                             ; preds = %.lr.ph, %bin_stats_merge.exit
  %indvars.iv170 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next171, %bin_stats_merge.exit ] ; 2 uses
  %i.js = load i32, ptr %i.jg, align 4, !tbaa !7
  %i.jt = zext i32 %i.js to i64
  %i.ju = add i64 %i.jt, %i.jb
  %i.jv = inttoptr i64 %i.ju to ptr
  %i.jw = getelementptr inbounds nuw [224 x i8], ptr %i.jv, i64 %indvars.iv170 ; 17 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 64 ; 2 uses
  %i.jy = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.jx) #15
  %.not.i.i146 = icmp eq i32 %i.jy, 0
  br i1 %.not.i.i146, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.jw) #15
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 104
  store atomic i8 1, ptr %i.jz monotonic, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 56 ; 3 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !74
  %i.kc = add i64 %i.kb, 1
  store i64 %i.kc, ptr %i.ka, align 8, !tbaa !74
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 48 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.ke, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %0, ptr %i.kd, align 8, !tbaa !76
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 40 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !77
  %i.kh = add i64 %i.kg, 1
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.p, %bb.o
  call void @je_nstime_add(ptr noundef nonnull %i.jh, ptr noundef nonnull %i.jw) #15
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  %i.kj = call i32 @je_nstime_compare(ptr noundef nonnull %i.ki, ptr noundef nonnull %i.ji) #15
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %malloc_mutex_lock.exit.i
  call void @je_nstime_copy(ptr noundef nonnull %i.ji, ptr noundef nonnull %i.ki) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %malloc_mutex_lock.exit.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.km = load <2 x i64>, ptr %i.kl, align 8, !tbaa !14
  %i.kn = load <2 x i64>, ptr %i.jj, align 8, !tbaa !14
  %i.ko = add <2 x i64> %i.kn, %i.km
  store <2 x i64> %i.ko, ptr %i.jj, align 8, !tbaa !14
  %i.kp = load i32, ptr %i.jk, align 8, !tbaa !121
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !121 ; 2 uses
  %i.ks = icmp ult i32 %i.kp, %i.kr
  br i1 %i.ks, label %bb.s, label %bin_stats_merge.exit

bb.s:                                             ; preds = %bb.r
  store i32 %i.kr, ptr %i.jk, align 8, !tbaa !121
  br label %bin_stats_merge.exit

bin_stats_merge.exit:                             ; preds = %bb.r, %bb.s
  store atomic i32 0, ptr %i.jl monotonic, align 4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jw, i64 40
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !77
  %i.kv = load i64, ptr %i.jm, align 8, !tbaa !77
  %i.kw = add i64 %i.kv, %i.ku
  store i64 %i.kw, ptr %i.jm, align 8, !tbaa !77
  %i.kx = load i64, ptr %i.ka, align 8, !tbaa !74
  %i.ky = load i64, ptr %i.jn, align 8, !tbaa !74
  %i.kz = add i64 %i.ky, %i.kx
  store i64 %i.kz, ptr %i.jn, align 8, !tbaa !74
  %i.la = getelementptr inbounds nuw i8, ptr %i.jw, i64 112
  %i.lb = load <2 x i64>, ptr %i.la, align 8, !tbaa !14
  %i.lc = load <2 x i64>, ptr %i.jf, align 8, !tbaa !14
  %i.ld = add <2 x i64> %i.lc, %i.lb
  store <2 x i64> %i.ld, ptr %i.jf, align 8, !tbaa !14
  %i.le = getelementptr inbounds nuw i8, ptr %i.jw, i64 128
  %i.lf = load <2 x i64>, ptr %i.le, align 8, !tbaa !14
  %i.lg = load <2 x i64>, ptr %i.jo, align 8, !tbaa !14
  %i.lh = add <2 x i64> %i.lg, %i.lf
  store <2 x i64> %i.lh, ptr %i.jo, align 8, !tbaa !14
  %i.li = getelementptr inbounds nuw i8, ptr %i.jw, i64 144
  %i.lj = load <2 x i64>, ptr %i.li, align 8, !tbaa !14
  %i.lk = load <2 x i64>, ptr %i.jp, align 8, !tbaa !14
  %i.ll = add <2 x i64> %i.lk, %i.lj
  store <2 x i64> %i.ll, ptr %i.jp, align 8, !tbaa !14
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jw, i64 160
  %i.ln = load <2 x i64>, ptr %i.lm, align 8, !tbaa !14
  %i.lo = load <2 x i64>, ptr %i.jq, align 8, !tbaa !14
  %i.lp = add <2 x i64> %i.lo, %i.ln
  store <2 x i64> %i.lp, ptr %i.jq, align 8, !tbaa !14
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jw, i64 176
  %i.lr = load <2 x i64>, ptr %i.lq, align 8, !tbaa !14
  %i.ls = load <2 x i64>, ptr %i.jr, align 8, !tbaa !14
  %i.lt = add <2 x i64> %i.ls, %i.lr
  store <2 x i64> %i.lt, ptr %i.jr, align 8, !tbaa !14
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jw, i64 104
  store atomic i8 0, ptr %i.lu monotonic, align 8
  %i.lv = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.jx) #15 ; 0 uses
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %i.lw = load i32, ptr %i.jd, align 4, !tbaa !117
  %i.lx = zext i32 %i.lw to i64
  %i.ly = icmp samesign ult i64 %indvars.iv.next171, %i.lx
  br i1 %i.ly, label %bb.m, label %._crit_edge, !llvm.loop !122
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @je_base_stats_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @je_pa_shard_stats_merge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_pa_shard_mtx_stats_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_nstime_subtract(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
tsdn_witness_tsdp_get.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 69320 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 69440
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.a, label %bb.e

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72896
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 10728
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 69384 ; 2 uses
  %i.i = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.h) #15
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.a) #15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 69424
  store atomic i8 1, ptr %i.j monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 69376 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 69368 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.o, %0
  br i1 %.not.i.i.i, label %arena_decay_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.n, align 8, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 69360 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !77
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !77
  br label %arena_decay_impl.exit

arena_decay_impl.exit:                            ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10672
  tail call void @je_pac_decay_all(ptr noundef %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef nonnull %i.g, i1 noundef zeroext true) #15
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 69424
  store atomic i8 0, ptr %i.t monotonic, align 8
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %arena_decay_impl.exit, %tsdn_witness_tsdp_get.exit
  %i.v = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !124, !noundef !125
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %arena_background_thread_inactivity_check.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %1, i64 78928      ; 2 uses
  %.val.i = load i32, ptr %i.x, align 8, !tbaa !126
  %i.y = load ptr, ptr @je_background_thread_info, align 8, !tbaa !127
  %i.z = zext i32 %.val.i to i64
  %i.aa = load i64, ptr @je_max_background_threads, align 8, !tbaa !14
  %i.ab = urem i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw [208 x i8], ptr %i.y, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 172
  %i.ae = load atomic i8, ptr %i.ad acquire, align 1, !range !124, !noundef !125
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %arena_background_thread_inactivity_check.exit

bb.g:                                             ; preds = %bb.f
  %.val6.i = load i32, ptr %i.x, align 8, !tbaa !126
  tail call fastcc void @arena_maybe_do_deferred_work(ptr noundef %0, i32 %.val6.i, ptr noundef nonnull %i.a, i64 noundef 0)
  br label %arena_background_thread_inactivity_check.exit

arena_background_thread_inactivity_check.exit:    ; preds = %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_extent_alloc_large(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i8 0, ptr %i.b, align 1, !tbaa !129
  %i.c = icmp ult i64 %2, 4097
  br i1 %i.c, label %bb.b, label %bb.c, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %2, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !131
  %i.h = zext i8 %i.g to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.i, label %sz_size2index.exit, label %bb.d, !prof !132

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %2, 1
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.k, i1 true) ; 3 uses
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i64 60, %i.l
  %i.o = ashr exact i64 -1152921504606846976, %i.l
  %i.p = add nsw i64 %2, -1
  %i.q = and i64 %i.o, %i.p
  %i.r = lshr i64 %i.q, %i.n
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 3
  %i.u = shl nuw nsw i32 %i.m, 2
  %reass.sub = sub nsw i32 %i.t, %i.u
  %i.v = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.v, %bb.d ], [ 235, %bb.c ]
  %i.w = load i64, ptr @je_sz_large_pad, align 8, !tbaa !14
  %i.x = add i64 %i.w, %2                         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 78936
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.aa = tail call ptr @je_base_ehooks_get(ptr noundef %i.z) #15
  %i.ab = load i64, ptr @je_opt_san_guard_large, align 8, !tbaa !14
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %san_large_extent_decide_guard.exit, label %bb.e

bb.e:                                             ; preds = %sz_size2index.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8
  %i.af = icmp ne ptr %i.ae, @je_ehooks_default_extent_hooks
  %i.ag = icmp eq ptr %0, null
  %or.cond14.i = or i1 %i.ag, %i.af
  br i1 %or.cond14.i, label %san_large_extent_decide_guard.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !14 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 2                   ; 2 uses
  br i1 %i.aj, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  %i.ak = add i64 %i.ai, -1
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.al = icmp eq i64 %i.ai, 1
  %i.am = icmp ult i64 %3, 4097
  %or.cond.i = and i1 %i.am, %i.al
  %i.an = add i64 %i.x, 8192
  %i.ao = icmp ult i64 %i.an, 8070450532247928833
  %or.cond16.i = and i1 %i.ao, %or.cond.i
  br i1 %or.cond16.i, label %bb.h, label %san_large_extent_decide_guard.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr @je_opt_san_guard_large, align 8, !tbaa !14
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %.thread.i
  %.sink.i = phi i64 [ %i.ak, %.thread.i ], [ %i.ap, %bb.h ]
  store i64 %.sink.i, ptr %i.ah, align 8, !tbaa !14
  br label %san_large_extent_decide_guard.exit

san_large_extent_decide_guard.exit:               ; preds = %sz_size2index.exit, %bb.e, %bb.g, %.sink.split.i
  %.1.i = phi i1 [ false, %sz_size2index.exit ], [ false, %bb.g ], [ false, %bb.e ], [ %i.aj, %.sink.split.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 10648
  %i.ar = call ptr @je_pa_alloc(ptr noundef %0, ptr noundef nonnull %i.aq, i64 noundef %i.x, i64 noundef %3, i1 noundef zeroext false, i32 noundef %.0.i, i1 noundef zeroext %4, i1 noundef zeroext %.1.i, ptr noundef nonnull %i.b) #15 ; 3 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %arena_cache_oblivious_randomize.exit, label %bb.i

bb.i:                                             ; preds = %san_large_extent_decide_guard.exit
  %i.as = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.as, label %bb.k, label %bb.j, !prof !132

bb.j:                                             ; preds = %bb.i
  %spec.store.select.i = call i64 @llvm.umax.i64(i64 %2, i64 16384) ; 2 uses
  %i.at = shl nuw i64 %spec.store.select.i, 1
  %i.au = add i64 %i.at, -1
  %i.av = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.au, i1 true) ; 3 uses
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i64 60, %i.av
  %i.ay = ashr exact i64 -1152921504606846976, %i.av
  %i.az = add nsw i64 %spec.store.select.i, -1
  %i.ba = and i64 %i.ay, %i.az
  %i.bb = lshr i64 %i.ba, %i.ax
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 3
  %i.be = shl nuw nsw i32 %i.aw, 2
  %reass.sub29 = sub nsw i32 %i.bd, %i.be
  %i.bf = add nsw i32 %reass.sub29, 232
  %i.bg = call i32 @llvm.usub.sat.i32(i32 %i.bf, i32 39)
  %i.bh = zext nneg i32 %i.bg to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.bh, %bb.j ], [ 196, %bb.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.bi, i64 %.0.i.i
  %i.bk = atomicrmw add ptr %i.bj, i64 1 monotonic, align 8 ; 0 uses
  %i.bl = load i64, ptr @je_sz_large_pad, align 8
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = icmp ult i64 %3, 4096
  %or.cond = and i1 %i.bn, %i.bm
  br i1 %or.cond, label %bb.l, label %arena_cache_oblivious_randomize.exit

bb.l:                                             ; preds = %bb.k
  %i.bo = add nuw nsw i64 %3, 63
  %i.bp = and i64 %i.bo, 8128                     ; 2 uses
  %i.bq = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %i.bq)
  %i.br = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.bp, i1 true) ; 2 uses
  %i.bs = xor i64 %i.br, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bt = icmp eq ptr %0, null
  br i1 %i.bt, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !14
  %i.bw = mul i64 %i.bv, 6364136223846793005
  %i.bx = add i64 %i.bw, 1442695040888963407      ; 2 uses
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !14
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.by = ptrtoint ptr %i.a to i64
  %i.bz = mul i64 %i.by, 6364136223846793005
  %i.ca = add i64 %i.bz, 1442695040888963407
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i25 = phi i64 [ %i.ca, %bb.n ], [ %i.bx, %bb.m ]
  %i.cb = sub nuw nsw i64 115, %i.br
  %i.cc = lshr i64 %.sink.i25, %i.cb
  %i.cd = shl nuw nsw i64 %i.cc, %i.bs
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !133
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = add i64 %i.cd, %i.cg
  %i.ci = inttoptr i64 %i.ch to ptr
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %arena_cache_oblivious_randomize.exit

arena_cache_oblivious_randomize.exit:             ; preds = %san_large_extent_decide_guard.exit, %bb.o, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret ptr %i.ar
end_hunk_0
begin_hunk_1_@je_arena_extent_ralloc_large_shrink:bb.a
  %i.t = zext nneg i32 %i.s to i64
  br label %arena_large_malloc_stats_update.exit.i

arena_large_malloc_stats_update.exit.i:           ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i64 [ %i.t, %bb.b ], [ 196, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.0.i.i.i
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8 ; 0 uses
  %i.x = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.x, label %arena_large_ralloc_stats_update.exit, label %bb.c, !prof !132

bb.c:                                             ; preds = %arena_large_malloc_stats_update.exit.i
  %spec.store.select.i5.i = tail call i64 @llvm.umax.i64(i64 %3, i64 16384) ; 2 uses
  %i.y = shl nuw i64 %spec.store.select.i5.i, 1
  %i.z = add i64 %i.y, -1
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.z, i1 true) ; 3 uses
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = sub nuw nsw i64 60, %i.aa
  %i.ad = ashr exact i64 -1152921504606846976, %i.aa
  %i.ae = add nsw i64 %spec.store.select.i5.i, -1
  %i.af = and i64 %i.ad, %i.ae
  %i.ag = lshr i64 %i.af, %i.ac
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 3
  %i.aj = shl nuw nsw i32 %i.ab, 2
  %reass.sub6 = sub nsw i32 %i.ai, %i.aj
  %i.ak = add nsw i32 %reass.sub6, 232
  %i.al = tail call i32 @llvm.usub.sat.i32(i32 %i.ak, i32 39)
  %i.am = zext nneg i32 %i.al to i64
  br label %arena_large_ralloc_stats_update.exit

arena_large_ralloc_stats_update.exit:             ; preds = %arena_large_malloc_stats_update.exit.i, %bb.c
  %.0.i.i7.i = phi i64 [ %i.am, %bb.c ], [ 196, %arena_large_malloc_stats_update.exit.i ]
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %.0.i.i7.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 984
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_arena_extent_ralloc_large_expand(ptr noundef readnone captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !135
  %i.a = lshr i64 %.val, 20
  %i.b = and i64 %i.a, 255
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = icmp ugt i64 %i.d, 8070450532247928832
  br i1 %i.e, label %arena_large_malloc_stats_update.exit.i, label %bb.b, !prof !132

bb.b:                                             ; preds = %bb.a
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 16384) ; 2 uses
  %i.f = shl nuw i64 %spec.store.select.i.i, 1
  %i.g = add i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.g, i1 true) ; 3 uses
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = sub nuw nsw i64 60, %i.h
  %i.k = ashr exact i64 -1152921504606846976, %i.h
  %i.l = add nsw i64 %spec.store.select.i.i, -1
  %i.m = and i64 %i.k, %i.l
  %i.n = lshr i64 %i.m, %i.j
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3
  %i.q = shl nuw nsw i32 %i.i, 2
  %reass.sub = sub nsw i32 %i.p, %i.q
  %i.r = add nsw i32 %reass.sub, 232
  %i.s = tail call i32 @llvm.usub.sat.i32(i32 %i.r, i32 39)
  %i.t = zext nneg i32 %i.s to i64
  br label %arena_large_malloc_stats_update.exit.i

arena_large_malloc_stats_update.exit.i:           ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i64 [ %i.t, %bb.b ], [ 196, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.0.i.i.i
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8 ; 0 uses
  %i.x = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.x, label %arena_large_ralloc_stats_update.exit, label %bb.c, !prof !132

bb.c:                                             ; preds = %arena_large_malloc_stats_update.exit.i
  %spec.store.select.i5.i = tail call i64 @llvm.umax.i64(i64 %3, i64 16384) ; 2 uses
  %i.y = shl nuw i64 %spec.store.select.i5.i, 1
  %i.z = add i64 %i.y, -1
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.z, i1 true) ; 3 uses
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = sub nuw nsw i64 60, %i.aa
  %i.ad = ashr exact i64 -1152921504606846976, %i.aa
  %i.ae = add nsw i64 %spec.store.select.i5.i, -1
  %i.af = and i64 %i.ad, %i.ae
  %i.ag = lshr i64 %i.af, %i.ac
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 3
  %i.aj = shl nuw nsw i32 %i.ab, 2
  %reass.sub6 = sub nsw i32 %i.ai, %i.aj
  %i.ak = add nsw i32 %reass.sub6, 232
  %i.al = tail call i32 @llvm.usub.sat.i32(i32 %i.ak, i32 39)
  %i.am = zext nneg i32 %i.al to i64
  br label %arena_large_ralloc_stats_update.exit

arena_large_ralloc_stats_update.exit:             ; preds = %arena_large_malloc_stats_update.exit.i, %bb.c
  %.0.i.i7.i = phi i64 [ %i.am, %bb.c ], [ 196, %arena_large_malloc_stats_update.exit.i ]
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %.0.i.i7.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 984
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_arena_decay_ms_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !124, !noundef !125
  %i.b = trunc nuw i8 %i.a to i1
  %..i = select i1 %i.b, i32 1, i32 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10648
  %i.d = tail call zeroext i1 @je_pa_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %2, i64 noundef %3, i32 noundef %..i) #15
  ret i1 %i.d
}

declare zeroext i1 @je_pa_decay_ms_set(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @je_pa_decay_ms_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_decay(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72912
  tail call void @je_sec_flush(ptr noundef %0, ptr noundef nonnull %i.a) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 69320
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72896 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10728
  %i.f = tail call fastcc noundef zeroext i1 @arena_decay_impl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noundef nonnull %i.e, i1 noundef zeroext %2, i1 noundef zeroext %3)
  br i1 %i.f, label %arena_decay_muzzy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 30280
  %i.h = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.g) #15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 39936
  %i.j = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.i) #15
  %i.k = sub i64 0, %i.h
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %pa_shard_dont_decay_muzzy.exit.i, label %pa_shard_dont_decay_muzzy.exit.thread.i

pa_shard_dont_decay_muzzy.exit.i:                 ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10672
  %i.n = tail call i64 @je_pac_decay_ms_get(ptr noundef nonnull %i.m, i32 noundef 2) #15
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %arena_decay_muzzy.exit, label %pa_shard_dont_decay_muzzy.exit.thread.i

pa_shard_dont_decay_muzzy.exit.thread.i:          ; preds = %pa_shard_dont_decay_muzzy.exit.i, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 71104
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !123
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 30168
  %i.t = tail call fastcc zeroext i1 @arena_decay_impl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, i1 noundef zeroext %2, i1 noundef zeroext %3) ; 0 uses
  br label %arena_decay_muzzy.exit

arena_decay_muzzy.exit:                           ; preds = %pa_shard_dont_decay_muzzy.exit.thread.i, %pa_shard_dont_decay_muzzy.exit.i, %bb.c
  ret void
}

declare void @je_sec_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_do_deferred_work(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 69320
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72896 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10728
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 69384 ; 2 uses
  %i.f = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.e) #15
  %.not.i.i4 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i4, label %bb.b, label %arena_decay_impl.exit12.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 69376 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 69368 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %.not.i.i36.i7 = icmp eq ptr %i.k, %0
  br i1 %.not.i.i36.i7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.j, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 69360 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !77
  br label %bb.d

arena_decay_impl.exit12.thread:                   ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 69424
  store atomic i8 1, ptr %i.o monotonic, align 8
  br label %je_arena_decay.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 10672 ; 3 uses
  %i.q = tail call zeroext i1 @je_pac_maybe_decay_purge(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noundef nonnull %i.d, i32 noundef 0) #15 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 69424
  store atomic i8 0, ptr %i.r monotonic, align 8
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #15 ; 0 uses
  %i.t = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !124, !noundef !125 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 30280
  %i.v = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.u) #15
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 39936
  %i.x = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.w) #15
  %i.y = sub i64 0, %i.v
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %pa_shard_dont_decay_muzzy.exit.i.i, label %pa_shard_dont_decay_muzzy.exit.thread.i.i

pa_shard_dont_decay_muzzy.exit.i.i:               ; preds = %bb.d
  %i.aa = tail call i64 @je_pac_decay_ms_get(ptr noundef nonnull %i.p, i32 noundef 2) #15
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %je_arena_decay.exit, label %pa_shard_dont_decay_muzzy.exit.thread.i.i

pa_shard_dont_decay_muzzy.exit.thread.i.i:        ; preds = %pa_shard_dont_decay_muzzy.exit.i.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 71104
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 30168
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 71168 ; 2 uses
  %i.ah = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ag) #15
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %bb.e, label %malloc_mutex_trylock.exit.i

bb.e:                                             ; preds = %pa_shard_dont_decay_muzzy.exit.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 71160 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !74
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !74
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 71152 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !76
  %.not.i.i36.i = icmp eq ptr %i.am, %0
  br i1 %.not.i.i36.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.al, align 8, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 71144 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !77
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !77
  br label %bb.g

malloc_mutex_trylock.exit.i:                      ; preds = %pa_shard_dont_decay_muzzy.exit.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 71208
  store atomic i8 1, ptr %i.aq monotonic, align 8
  br label %je_arena_decay.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = tail call zeroext i1 @je_pac_maybe_decay_purge(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, i32 noundef 0) #15 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 71208
  store atomic i8 0, ptr %i.as monotonic, align 8
  %i.at = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ag) #15 ; 0 uses
  %i.au = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !124, !noundef !125 ; 0 uses
  br label %je_arena_decay.exit

je_arena_decay.exit:                              ; preds = %bb.g, %malloc_mutex_trylock.exit.i, %arena_decay_impl.exit12.thread, %pa_shard_dont_decay_muzzy.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 10648
  tail call void @je_pa_shard_do_deferred_work(ptr noundef %0, ptr noundef nonnull %i.av) #15
  ret void
}

declare void @je_pa_shard_do_deferred_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_slab_dalloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10648
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %i.a) #15
  %i.c = load i8, ptr %i.a, align 1, !tbaa !129, !range !124, !noundef !125
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare void @je_pa_dalloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_reset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10536 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10600 ; 4 uses
  %i.f = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.e) #15
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.d) #15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 10640
  store atomic i8 1, ptr %i.g monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10592 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !74
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10584 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.l, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10576 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !77
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 10528 ; 2 uses
  %.02850 = load ptr, ptr %i.p, align 8, !tbaa !136 ; 2 uses
  %.not51 = icmp eq ptr %.02850, null
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %malloc_mutex_lock.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 10640 ; 2 uses
  %i.r = icmp eq ptr %0, null
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10576 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %malloc_mutex_lock.exit33, %malloc_mutex_lock.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 10640
  store atomic i8 0, ptr %i.u monotonic, align 8
  %i.v = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #15 ; 0 uses
  %i.w = ptrtoint ptr %1 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10648 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 69320 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 69440 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72896 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 10728 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 69384 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 69424 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 69376 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 69368 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 69360 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 10672 ; 3 uses
  %i.ai = getelementptr i8, ptr %1, i64 78928     ; 7 uses
  br label %.preheader

bb.e:                                             ; preds = %.lr.ph, %malloc_mutex_lock.exit33
  %.02852 = phi ptr [ %.02850, %.lr.ph ], [ %.028, %malloc_mutex_lock.exit33 ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.02852, i64 8
  %.028.val = load ptr, ptr %i.aj, align 8, !tbaa !133
  %i.ak = ptrtoint ptr %.028.val to i64           ; 6 uses
  %i.al = and i64 %i.ak, -4096
  store atomic i8 0, ptr %i.q monotonic, align 8
  %i.am = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  br i1 %i.r, label %bb.f, label %tsdn_rtree_ctx.exit, !prof !132

bb.f:                                             ; preds = %bb.e
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #15
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %2, %bb.f ], [ %i.s, %bb.e ]  ; 11 uses
  %i.an = lshr i64 %i.ak, 30
  %i.ao = and i64 %i.an, 15
  %i.ap = and i64 %i.ak, -1073741824              ; 11 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %i.ao ; 6 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !137 ; 3 uses
  %i.as = icmp eq i64 %i.ar, %i.ap
  br i1 %i.as, label %bb.g, label %bb.h, !prof !130

bb.g:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !140
  %i.av = lshr i64 %i.ak, 12
  %i.aw = and i64 %i.av, 262143
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw
  br label %rtree_metadata_read.exit

bb.h:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 256 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !137
  %i.ba = icmp eq i64 %i.az, %i.ap
  br i1 %i.ba, label %bb.i, label %.preheader.preheader.i, !prof !130

.preheader.preheader.i:                           ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 272 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !137
  %i.bd = icmp eq i64 %i.bc, %i.ap
  br i1 %i.bd, label %bb.k, label %.preheader.1.i, !prof !130

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i, i64 264 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !140 ; 2 uses
  store i64 %i.ar, ptr %i.ay, align 8, !tbaa !137
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !140
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !140
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !137
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !140
  %i.bi = lshr i64 %i.ak, 12
  %i.bj = and i64 %i.bi, 262143
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bj
  br label %rtree_metadata_read.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 288 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !137
  %i.bn = icmp eq i64 %i.bm, %i.ap
  br i1 %i.bn, label %bb.k, label %.preheader.2.i, !prof !130

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 304 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !137
  %i.bq = icmp eq i64 %i.bp, %i.ap
  br i1 %i.bq, label %bb.k, label %.preheader.3.i, !prof !130

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i, i64 320 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !137
  %i.bt = icmp eq i64 %i.bs, %i.ap
  br i1 %i.bt, label %bb.k, label %.preheader.4.i, !prof !130

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i, i64 336 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !137
  %i.bw = icmp eq i64 %i.bv, %i.ap
  br i1 %i.bw, label %bb.k, label %.preheader.5.i, !prof !130

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i, i64 352 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !137
  %i.bz = icmp eq i64 %i.by, %i.ap
  br i1 %i.bz, label %bb.k, label %.preheader.6.i, !prof !130

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 368 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.cc = icmp eq i64 %i.cb, %i.ap
  br i1 %i.cc, label %bb.k, label %bb.j, !prof !130

bb.j:                                             ; preds = %.preheader.6.i
  %i.cd = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %.0.i, i64 noundef %i.al, i1 noundef zeroext true, i1 noundef zeroext false) #15
  br label %rtree_metadata_read.exit

bb.k:                                             ; preds = %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.lcssa.i = phi ptr [ %i.bb, %.preheader.preheader.i ], [ %i.bl, %.preheader.1.i ], [ %i.bo, %.preheader.2.i ], [ %i.br, %.preheader.3.i ], [ %i.bu, %.preheader.4.i ], [ %i.bx, %.preheader.5.i ], [ %i.ca, %.preheader.6.i ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !140 ; 2 uses
  %i.cg = getelementptr i8, ptr %.lcssa.i, i64 -16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !137
  store i64 %i.ch, ptr %.lcssa.i, align 8, !tbaa !137
  %i.ci = getelementptr i8, ptr %.lcssa.i, i64 -8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !140
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !140
  store i64 %i.ar, ptr %i.cg, align 8, !tbaa !137
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !140
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !140
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !137
  store ptr %i.cf, ptr %i.ck, align 8, !tbaa !140
  %i.cm = lshr i64 %i.ak, 12
  %i.cn = and i64 %i.cm, 262143
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cn
  br label %rtree_metadata_read.exit

rtree_metadata_read.exit:                         ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.1.i.i = phi ptr [ %i.ax, %bb.g ], [ %i.bk, %bb.i ], [ %i.cd, %bb.j ], [ %i.co, %bb.k ]
  %i.cp = load atomic ptr, ptr %.1.i.i monotonic, align 8, !noalias !141 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @je_large_dalloc(ptr noundef %0, ptr noundef nonnull %.02852) #15
  %i.cq = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.e) #15
  %.not.i31 = icmp eq i32 %i.cq, 0
  br i1 %.not.i31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %rtree_metadata_read.exit
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.d) #15
  store atomic i8 1, ptr %i.q monotonic, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %rtree_metadata_read.exit
  %i.cr = load i64, ptr %i.h, align 8, !tbaa !74
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.h, align 8, !tbaa !74
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !76
  %.not.i.i32 = icmp eq ptr %i.ct, %0
  br i1 %.not.i.i32, label %malloc_mutex_lock.exit33, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %0, ptr %i.k, align 8, !tbaa !76
  %i.cu = load i64, ptr %i.t, align 8, !tbaa !77
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.t, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit33

malloc_mutex_lock.exit33:                         ; preds = %bb.m, %bb.n
  %.028 = load ptr, ptr %i.p, align 8, !tbaa !136 ; 2 uses
  %.not = icmp eq ptr %.028, null
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !144

.preheader:                                       ; preds = %._crit_edge, %._crit_edge55
  %indvars.iv59 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next60, %._crit_edge55 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %indvars.iv59
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 20 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !117
  %.not57 = icmp eq i32 %i.cy, 0
  br i1 %.not57, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %.preheader
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %indvars.iv59
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge55
  call void @je_pa_shard_reset(ptr noundef %0, ptr noundef nonnull %i.x) #15
  ret void

._crit_edge55:                                    ; preds = %arena_bin_reset.exit, %.preheader
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next60, 39
  br i1 %exitcond.not, label %bb.o, label %.preheader, !llvm.loop !145

bb.p:                                             ; preds = %.lr.ph54, %arena_bin_reset.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next, %arena_bin_reset.exit ] ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = zext i32 %i.da to i64
  %i.dc = add i64 %i.db, %i.w
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw [224 x i8], ptr %i.dd, i64 %indvars.iv ; 21 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 64 ; 8 uses
  %i.dg = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.df) #15
  %.not.i.i34 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.de) #15
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  store atomic i8 1, ptr %i.dh monotonic, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 56 ; 8 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !74
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !74
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 8 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.dm, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %0, ptr %i.dl, align 8, !tbaa !76
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 40 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !77
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.s, %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 192 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !146 ; 2 uses
  %.not.i35 = icmp eq ptr %i.dr, null
  br i1 %.not.i35, label %malloc_mutex_lock.exit45.i, label %bb.t

bb.t:                                             ; preds = %malloc_mutex_lock.exit.i
  store ptr null, ptr %i.dq, align 8, !tbaa !146
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 104 ; 2 uses
  store atomic i8 0, ptr %i.ds monotonic, align 8
  %i.dt = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.df) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i8 0, ptr %i.c, align 1, !tbaa !129
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.c) #15
  %i.du = load i8, ptr %i.c, align 1, !tbaa !129, !range !124, !noundef !125
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.u, label %je_arena_slab_dalloc.exit.i

bb.u:                                             ; preds = %bb.t
  %i.dw = load atomic i64, ptr %i.z monotonic, align 8
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.dy = load ptr, ptr %i.aa, align 8, !tbaa !123
  %i.dz = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ac) #15
  %.not.i.i.i46 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i46, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.y) #15
  store atomic i8 1, ptr %i.ad monotonic, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ea = load i64, ptr %i.ae, align 8, !tbaa !74
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.ae, align 8, !tbaa !74
  %i.ec = load ptr, ptr %i.af, align 8, !tbaa !76
  %.not.i.i.i.i47 = icmp eq ptr %i.ec, %0
  br i1 %.not.i.i.i.i47, label %arena_decay_impl.exit.i48, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %0, ptr %i.af, align 8, !tbaa !76
  %i.ed = load i64, ptr %i.ag, align 8, !tbaa !77
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.ag, align 8, !tbaa !77
  br label %arena_decay_impl.exit.i48

arena_decay_impl.exit.i48:                        ; preds = %bb.y, %bb.x
  call void @je_pac_decay_all(ptr noundef %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.y, ptr noundef %i.dy, ptr noundef nonnull %i.ab, i1 noundef zeroext true) #15
  store atomic i8 0, ptr %i.ad monotonic, align 8
  %i.ef = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ac) #15 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %arena_decay_impl.exit.i48, %bb.u
  %i.eg = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !124, !noundef !125
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.aa, label %je_arena_slab_dalloc.exit.i

bb.aa:                                            ; preds = %bb.z
  %.val.i.i44 = load i32, ptr %i.ai, align 8, !tbaa !126
  %i.ei = load ptr, ptr @je_background_thread_info, align 8, !tbaa !127
  %i.ej = zext i32 %.val.i.i44 to i64
  %i.ek = load i64, ptr @je_max_background_threads, align 8, !tbaa !14
  %i.el = urem i64 %i.ej, %i.ek
  %i.em = getelementptr inbounds nuw [208 x i8], ptr %i.ei, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 172
  %i.eo = load atomic i8, ptr %i.en acquire, align 1, !range !124, !noundef !125
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ab, label %je_arena_slab_dalloc.exit.i

bb.ab:                                            ; preds = %bb.aa
  %.val6.i.i45 = load i32, ptr %i.ai, align 8, !tbaa !126
  call fastcc void @arena_maybe_do_deferred_work(ptr noundef %0, i32 %.val6.i.i45, ptr noundef nonnull %i.y, i64 noundef 0)
  br label %je_arena_slab_dalloc.exit.i

je_arena_slab_dalloc.exit.i:                      ; preds = %bb.ab, %bb.aa, %bb.z, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.eq = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.df) #15
  %.not.i43.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i43.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %je_arena_slab_dalloc.exit.i
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.de) #15
  store atomic i8 1, ptr %i.ds monotonic, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %je_arena_slab_dalloc.exit.i
  %i.er = load i64, ptr %i.di, align 8, !tbaa !74
  %i.es = add i64 %i.er, 1
  store i64 %i.es, ptr %i.di, align 8, !tbaa !74
  %i.et = load ptr, ptr %i.dl, align 8, !tbaa !76
  %.not.i.i44.i = icmp eq ptr %i.et, %0
  br i1 %.not.i.i44.i, label %malloc_mutex_lock.exit45.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %0, ptr %i.dl, align 8, !tbaa !76
  %i.eu = getelementptr inbounds nuw i8, ptr %i.de, i64 40 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !77
  %i.ew = add i64 %i.ev, 1
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit45.i

malloc_mutex_lock.exit45.i:                       ; preds = %bb.ae, %bb.ad, %malloc_mutex_lock.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.de, i64 200 ; 2 uses
  %i.ey = call ptr @je_edata_heap_remove_first(ptr noundef nonnull %i.ex) #15 ; 2 uses
  %.not3954.i = icmp eq ptr %i.ey, null
  br i1 %.not3954.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %malloc_mutex_lock.exit45.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.de, i64 104 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.de, i64 40 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %malloc_mutex_lock.exit49.i, %.lr.ph.i
  %i.fb = phi ptr [ %i.ey, %.lr.ph.i ], [ %i.gf, %malloc_mutex_lock.exit49.i ]
  store atomic i8 0, ptr %i.ez monotonic, align 8
  %i.fc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.df) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i8 0, ptr %i.b, align 1, !tbaa !129
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.fb, ptr noundef nonnull %i.b) #15
  %i.fd = load i8, ptr %i.b, align 1, !tbaa !129, !range !124, !noundef !125
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ag, label %je_arena_slab_dalloc.exit46.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = load atomic i64, ptr %i.z monotonic, align 8
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.fh = load ptr, ptr %i.aa, align 8, !tbaa !123
  %i.fi = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ac) #15
  %.not.i.i.i40 = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i.i40, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.y) #15
  store atomic i8 1, ptr %i.ad monotonic, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fj = load i64, ptr %i.ae, align 8, !tbaa !74
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.ae, align 8, !tbaa !74
  %i.fl = load ptr, ptr %i.af, align 8, !tbaa !76
  %.not.i.i.i.i41 = icmp eq ptr %i.fl, %0
  br i1 %.not.i.i.i.i41, label %arena_decay_impl.exit.i42, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %0, ptr %i.af, align 8, !tbaa !76
  %i.fm = load i64, ptr %i.ag, align 8, !tbaa !77
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.ag, align 8, !tbaa !77
  br label %arena_decay_impl.exit.i42

arena_decay_impl.exit.i42:                        ; preds = %bb.ak, %bb.aj
  call void @je_pac_decay_all(ptr noundef %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.y, ptr noundef %i.fh, ptr noundef nonnull %i.ab, i1 noundef zeroext true) #15
  store atomic i8 0, ptr %i.ad monotonic, align 8
  %i.fo = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ac) #15 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %arena_decay_impl.exit.i42, %bb.ag
  %i.fp = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !124, !noundef !125
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.am, label %je_arena_slab_dalloc.exit46.i

bb.am:                                            ; preds = %bb.al
  %.val.i.i38 = load i32, ptr %i.ai, align 8, !tbaa !126
  %i.fr = load ptr, ptr @je_background_thread_info, align 8, !tbaa !127
  %i.fs = zext i32 %.val.i.i38 to i64
  %i.ft = load i64, ptr @je_max_background_threads, align 8, !tbaa !14
  %i.fu = urem i64 %i.fs, %i.ft
  %i.fv = getelementptr inbounds nuw [208 x i8], ptr %i.fr, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 172
  %i.fx = load atomic i8, ptr %i.fw acquire, align 1, !range !124, !noundef !125
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.an, label %je_arena_slab_dalloc.exit46.i

bb.an:                                            ; preds = %bb.am
  %.val6.i.i39 = load i32, ptr %i.ai, align 8, !tbaa !126
  call fastcc void @arena_maybe_do_deferred_work(ptr noundef %0, i32 %.val6.i.i39, ptr noundef nonnull %i.y, i64 noundef 0)
  br label %je_arena_slab_dalloc.exit46.i

je_arena_slab_dalloc.exit46.i:                    ; preds = %bb.an, %bb.am, %bb.al, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.fz = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.df) #15
  %.not.i47.i = icmp eq i32 %i.fz, 0
  br i1 %.not.i47.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %je_arena_slab_dalloc.exit46.i
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.de) #15
  store atomic i8 1, ptr %i.ez monotonic, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %je_arena_slab_dalloc.exit46.i
  %i.ga = load i64, ptr %i.di, align 8, !tbaa !74
  %i.gb = add i64 %i.ga, 1
  store i64 %i.gb, ptr %i.di, align 8, !tbaa !74
  %i.gc = load ptr, ptr %i.dl, align 8, !tbaa !76
  %.not.i.i48.i = icmp eq ptr %i.gc, %0
  br i1 %.not.i.i48.i, label %malloc_mutex_lock.exit49.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %0, ptr %i.dl, align 8, !tbaa !76
  %i.gd = load i64, ptr %i.fa, align 8, !tbaa !77
  %i.ge = add i64 %i.gd, 1
  store i64 %i.ge, ptr %i.fa, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit49.i

malloc_mutex_lock.exit49.i:                       ; preds = %bb.aq, %bb.ap
  %i.gf = call ptr @je_edata_heap_remove_first(ptr noundef nonnull %i.ex) #15 ; 2 uses
  %.not39.i = icmp eq ptr %i.gf, null
  br i1 %.not39.i, label %._crit_edge.i, label %bb.af, !llvm.loop !149

._crit_edge.i:                                    ; preds = %malloc_mutex_lock.exit49.i, %malloc_mutex_lock.exit45.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.de, i64 216 ; 4 uses
  %.055.i = load ptr, ptr %i.gg, align 8, !tbaa !136 ; 2 uses
  %.not4056.i = icmp eq ptr %.055.i, null
  br i1 %.not4056.i, label %arena_bin_reset.exit, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %._crit_edge.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.de, i64 104 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.de, i64 40 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %malloc_mutex_lock.exit53.i, %.lr.ph59.i
  %i.gj = phi ptr [ %.055.i, %.lr.ph59.i ], [ %.0.i36, %malloc_mutex_lock.exit53.i ] ; 5 uses
  %.val42.i = load i32, ptr %i.ai, align 8, !tbaa !126
  %i.gk = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.gl = icmp ult i32 %.val42.i, %i.gk
  br i1 %i.gl, label %arena_bin_slabs_full_remove.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 40 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !131 ; 3 uses
  store ptr %i.gn, ptr %i.gg, align 8, !tbaa !136
  %i.go = icmp eq ptr %i.gn, %i.gj
  br i1 %i.go, label %bb.at, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.as
  %.phi.trans.insert62.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  %.pre63.i = load ptr, ptr %.phi.trans.insert62.i, align 8, !tbaa !131
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 48 ; 4 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !131
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  store ptr %.pre63.i, ptr %i.gr, align 8, !tbaa !131
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !131 ; 2 uses
  %i.gt = load ptr, ptr %i.gm, align 8, !tbaa !131
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  store ptr %i.gs, ptr %i.gu, align 8, !tbaa !131
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !131
  store ptr %i.gw, ptr %i.gp, align 8, !tbaa !131
  %i.gx = load ptr, ptr %i.gm, align 8, !tbaa !131 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !131
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  store ptr %i.gx, ptr %i.ha, align 8, !tbaa !131
  %i.hb = load ptr, ptr %i.gp, align 8, !tbaa !131
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  store ptr %i.gj, ptr %i.hc, align 8, !tbaa !131
  br label %arena_bin_slabs_full_remove.exit.i

bb.at:                                            ; preds = %bb.as
  store ptr null, ptr %i.gg, align 8, !tbaa !136
  br label %arena_bin_slabs_full_remove.exit.i

arena_bin_slabs_full_remove.exit.i:               ; preds = %bb.at, %.thread.i.i.i, %bb.ar
  store atomic i8 0, ptr %i.gh monotonic, align 8
  %i.hd = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.df) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !129
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.gj, ptr noundef nonnull %i.a) #15
  %i.he = load i8, ptr %i.a, align 1, !tbaa !129, !range !124, !noundef !125
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.au, label %je_arena_slab_dalloc.exit50.i

bb.au:                                            ; preds = %arena_bin_slabs_full_remove.exit.i
  %i.hg = load atomic i64, ptr %i.z monotonic, align 8
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.hi = load ptr, ptr %i.aa, align 8, !tbaa !123
  %i.hj = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ac) #15
  %.not.i.i.i37 = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i.i37, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.y) #15
  store atomic i8 1, ptr %i.ad monotonic, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hk = load i64, ptr %i.ae, align 8, !tbaa !74
  %i.hl = add i64 %i.hk, 1
  store i64 %i.hl, ptr %i.ae, align 8, !tbaa !74
  %i.hm = load ptr, ptr %i.af, align 8, !tbaa !76
  %.not.i.i.i.i = icmp eq ptr %i.hm, %0
  br i1 %.not.i.i.i.i, label %arena_decay_impl.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr %0, ptr %i.af, align 8, !tbaa !76
  %i.hn = load i64, ptr %i.ag, align 8, !tbaa !77
  %i.ho = add i64 %i.hn, 1
  store i64 %i.ho, ptr %i.ag, align 8, !tbaa !77
  br label %arena_decay_impl.exit.i

arena_decay_impl.exit.i:                          ; preds = %bb.ay, %bb.ax
  call void @je_pac_decay_all(ptr noundef %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.y, ptr noundef %i.hi, ptr noundef nonnull %i.ab, i1 noundef zeroext true) #15
  store atomic i8 0, ptr %i.ad monotonic, align 8
  %i.hp = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ac) #15 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %arena_decay_impl.exit.i, %bb.au
  %i.hq = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !124, !noundef !125
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ba, label %je_arena_slab_dalloc.exit50.i

bb.ba:                                            ; preds = %bb.az
  %.val.i.i = load i32, ptr %i.ai, align 8, !tbaa !126
  %i.hs = load ptr, ptr @je_background_thread_info, align 8, !tbaa !127
  %i.ht = zext i32 %.val.i.i to i64
  %i.hu = load i64, ptr @je_max_background_threads, align 8, !tbaa !14
  %i.hv = urem i64 %i.ht, %i.hu
  %i.hw = getelementptr inbounds nuw [208 x i8], ptr %i.hs, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 172
  %i.hy = load atomic i8, ptr %i.hx acquire, align 1, !range !124, !noundef !125
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.bb, label %je_arena_slab_dalloc.exit50.i

bb.bb:                                            ; preds = %bb.ba
  %.val6.i.i = load i32, ptr %i.ai, align 8, !tbaa !126
  call fastcc void @arena_maybe_do_deferred_work(ptr noundef %0, i32 %.val6.i.i, ptr noundef nonnull %i.y, i64 noundef 0)
  br label %je_arena_slab_dalloc.exit50.i

je_arena_slab_dalloc.exit50.i:                    ; preds = %bb.bb, %bb.ba, %bb.az, %arena_bin_slabs_full_remove.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ia = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.df) #15
  %.not.i51.i = icmp eq i32 %i.ia, 0
  br i1 %.not.i51.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %je_arena_slab_dalloc.exit50.i
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.de) #15
  store atomic i8 1, ptr %i.gh monotonic, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %je_arena_slab_dalloc.exit50.i
  %i.ib = load i64, ptr %i.di, align 8, !tbaa !74
  %i.ic = add i64 %i.ib, 1
  store i64 %i.ic, ptr %i.di, align 8, !tbaa !74
  %i.id = load ptr, ptr %i.dl, align 8, !tbaa !76
  %.not.i.i52.i = icmp eq ptr %i.id, %0
  br i1 %.not.i.i52.i, label %malloc_mutex_lock.exit53.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr %0, ptr %i.dl, align 8, !tbaa !76
  %i.ie = load i64, ptr %i.gi, align 8, !tbaa !77
  %i.if = add i64 %i.ie, 1
  store i64 %i.if, ptr %i.gi, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit53.i

malloc_mutex_lock.exit53.i:                       ; preds = %bb.be, %bb.bd
  %.0.i36 = load ptr, ptr %i.gg, align 8, !tbaa !136 ; 2 uses
  %.not40.i = icmp eq ptr %.0.i36, null
  br i1 %.not40.i, label %arena_bin_reset.exit, label %bb.ar, !llvm.loop !150

arena_bin_reset.exit:                             ; preds = %malloc_mutex_lock.exit53.i, %._crit_edge.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  store i64 0, ptr %i.ig, align 8, !tbaa !151
  %i.ih = getelementptr inbounds nuw i8, ptr %i.de, i64 176
  store i64 0, ptr %i.ih, align 8, !tbaa !152
  %i.ii = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  store atomic i8 0, ptr %i.ii monotonic, align 8
  %i.ij = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.df) #15 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ik = load i32, ptr %i.cx, align 4, !tbaa !117
  %i.il = zext i32 %i.ik to i64
  %i.im = icmp samesign ult i64 %indvars.iv.next, %i.il
  br i1 %i.im, label %bb.p, label %._crit_edge55, !llvm.loop !153
}

declare void @je_large_dalloc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_pa_shard_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10648
  tail call void @je_pa_shard_destroy(ptr noundef %0, ptr noundef nonnull %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 78936 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %.val = load i32, ptr %i.e, align 8, !tbaa !154
  tail call void @je_arena_set(i32 noundef %.val, ptr noundef null) #15
  %i.f = load i8, ptr @je_opt_retain, align 1, !tbaa !129, !range !124, !noundef !125
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %arena_prepare_base_deletion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !16
  %.val.i = load i32, ptr %i.h, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.i = tail call i32 @je_narenas_total_get() #15 ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %arena_prepare_base_deletion_sync_finish.exit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.j = zext i32 %.val.i to i64
  %wide.trip.count.i = zext i32 %i.i to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %arena_get.exit.thread.i
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !7 ; 2 uses
  %.not.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i, label %arena_prepare_base_deletion_sync_finish.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  %wide.trip.count.i.i = zext i32 %.pre.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %malloc_mutex_lock.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %malloc_mutex_lock.exit.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !157  ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.n = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.m) #15
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.l) #15
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store atomic i8 1, ptr %i.o monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !74
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76
  %.not.i.i.i.i = icmp eq ptr %i.t, %0
  br i1 %.not.i.i.i.i, label %malloc_mutex_lock.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.s, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !77
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit.i.i

malloc_mutex_lock.exit.i.i:                       ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #15 ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %arena_prepare_base_deletion_sync_finish.exit.i, label %.lr.ph.i.i, !llvm.loop !158

arena_prepare_base_deletion_sync_finish.exit.i:   ; preds = %malloc_mutex_lock.exit.i.i, %._crit_edge.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %arena_prepare_base_deletion.exit

.lr.ph.i:                                         ; preds = %arena_get.exit.thread.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %arena_get.exit.thread.i ] ; 3 uses
  %i.z = icmp eq i64 %indvars.iv.i, %i.j
  br i1 %i.z, label %arena_get.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv.i
  %i.ab = load atomic ptr, ptr %i.aa acquire, align 8 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %arena_get.exit.thread.i, label %arena_get.exit.i, !prof !132

arena_get.exit.i:                                 ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 10728
  call fastcc void @arena_prepare_base_deletion_sync(ptr noundef %0, ptr noundef %i.ad, ptr noundef %i.a, ptr noundef %i.b)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 30168
  call fastcc void @arena_prepare_base_deletion_sync(ptr noundef %0, ptr noundef %i.ae, ptr noundef %i.a, ptr noundef %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 49608
  call fastcc void @arena_prepare_base_deletion_sync(ptr noundef %0, ptr noundef %i.af, ptr noundef %i.a, ptr noundef %i.b)
  br label %arena_get.exit.thread.i

arena_get.exit.thread.i:                          ; preds = %arena_get.exit.i, %bb.f, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !159

arena_prepare_base_deletion.exit:                 ; preds = %bb.a, %arena_prepare_base_deletion_sync_finish.exit.i
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !16
  tail call void @je_base_delete(ptr noundef %0, ptr noundef %i.ag) #15
  ret void
}

declare void @je_pa_shard_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_arena_set(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @je_base_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @je_arena_bin_choose(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !160
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !131
  %i.i = zext i8 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.0, ptr %3, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = ptrtoint ptr %1 to i64
  %i.k = zext i32 %2 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = zext i32 %i.m to i64
  %i.o = add i64 %i.n, %i.j
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = zext nneg i32 %.0 to i64
  %i.r = getelementptr inbounds nuw [224 x i8], ptr %i.p, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_cache_bin_fill_small(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef readnone captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = zext i32 %4 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.b ; 2 uses
  %i.d = trunc i32 %5 to i16
  %.val = load ptr, ptr %2, align 8, !tbaa !85
  %i.e = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %.val80 = load i16, ptr %i.e, align 4, !tbaa !90
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = trunc i64 %i.f to i16
  %i.h = sub i16 %.val80, %i.g
  %i.i = zext i16 %i.h to i64
  %i.j = add i64 %i.i, %i.f
  %i.k = inttoptr i64 %i.j to ptr
  %.mask = and i32 %5, 65535
  %i.l = zext nneg i32 %.mask to i64
  %i.m = sub nsw i64 0, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m
  %i.o = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.o, label %je_arena_bin_choose.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %je_arena_bin_choose.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.b
  %i.u = load i8, ptr %i.t, align 1, !tbaa !131
  %i.v = zext i8 %i.u to i32
  br label %je_arena_bin_choose.exit

je_arena_bin_choose.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.v, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.w = ptrtoint ptr %1 to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.b
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = zext i32 %i.y to i64
  %i.aa = add i64 %i.z, %i.w
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = zext nneg i32 %.0.i to i64
  %i.ad = getelementptr inbounds nuw [224 x i8], ptr %i.ab, i64 %i.ac ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 104 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 4 uses
  %i.ak = getelementptr i8, ptr %1, i64 78928
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 216 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 168 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 184 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 160 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 176 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %je_arena_bin_choose.exit
  %.071 = phi i32 [ 0, %je_arena_bin_choose.exit ], [ %.172103, %.critedge ] ; 3 uses
  %.064 = phi ptr [ null, %je_arena_bin_choose.exit ], [ %i.fi, %.critedge ] ; 2 uses
  %.063 = phi i1 [ true, %je_arena_bin_choose.exit ], [ false, %.critedge ]
  %i.ar = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ae) #15
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ad) #15
  store atomic i8 1, ptr %i.af monotonic, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ag, align 8, !tbaa !74
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.au, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.ah, align 8, !tbaa !76
  %i.av = load i64, ptr %i.ai, align 8, !tbaa !77
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.ai, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.f, %bb.g
  %i.ax = icmp ult i32 %.071, %5
  br i1 %i.ax, label %.lr.ph, label %.thread90.thread

.lr.ph:                                           ; preds = %malloc_mutex_lock.exit, %bb.n
  %.1105 = phi i1 [ %.2, %bb.n ], [ %.063, %malloc_mutex_lock.exit ] ; 3 uses
  %.165104 = phi ptr [ %.266, %bb.n ], [ %.064, %malloc_mutex_lock.exit ] ; 4 uses
  %.172103 = phi i32 [ %.273, %bb.n ], [ %.071, %malloc_mutex_lock.exit ] ; 7 uses
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !146 ; 12 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %arena_bin_slabs_full_insert.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.val82 = load i64, ptr %i.ay, align 8, !tbaa !135 ; 2 uses
  %i.az = lshr i64 %.val82, 28
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 1023                     ; 2 uses
  %.not77 = icmp eq i32 %i.bb, 0
  br i1 %.not77, label %bb.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.h
  %i.bc = sub i32 %5, %.172103
end_hunk_1
begin_hunk_2_@je_arena_cache_bin_fill_small:bb.a

._crit_edge47.thread.i:                           ; preds = %._crit_edge.i
  %i.bt = zext i32 %.1.lcssa.i to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bt
  store i64 %.138.lcssa.i, ptr %i.bu, align 8, !tbaa !14
  br label %arena_slab_reg_alloc_batch.exit

.lr.ph46.preheader.i:                             ; preds = %._crit_edge.i
  %i.bv = sub i32 %i.bd, %.02751.i
  %i.bw = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %.138.lcssa.i)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 %i.bx) ; 2 uses
  %.029.i = zext nneg i32 %spec.select.i to i64   ; 3 uses
  %xtraiter = and i64 %.029.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph46.i.prol.loopexit, label %.lr.ph46.i.prol

.lr.ph46.i.prol:                                  ; preds = %.lr.ph46.preheader.i
  %i.by = add nsw i64 %.029.i, -1
  %i.bz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.138.lcssa.i, i1 true) ; 2 uses
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = xor i64 %i.ca, %.138.lcssa.i            ; 2 uses
  %i.cc = or disjoint i64 %i.bz, %i.bq
  %i.cd = mul i64 %i.cc, %i.bs
  %i.ce = add i64 %i.cd, %i.br
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = zext i32 %.02751.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !116
  %i.ci = add i32 %.02751.i, 1                    ; 2 uses
  br label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol.loopexit:                         ; preds = %.lr.ph46.i.prol, %.lr.ph46.preheader.i
  %.lcssa150.unr = phi i64 [ poison, %.lr.ph46.preheader.i ], [ %i.cb, %.lr.ph46.i.prol ]
  %.lcssa149.unr = phi i32 [ poison, %.lr.ph46.preheader.i ], [ %i.ci, %.lr.ph46.i.prol ]
  %.12844.i.unr = phi i32 [ %.02751.i, %.lr.ph46.preheader.i ], [ %i.ci, %.lr.ph46.i.prol ]
  %.13043.i.unr = phi i64 [ %.029.i, %.lr.ph46.preheader.i ], [ %i.by, %.lr.ph46.i.prol ]
  %.242.i.unr = phi i64 [ %.138.lcssa.i, %.lr.ph46.preheader.i ], [ %i.cb, %.lr.ph46.i.prol ]
  %i.cj = icmp eq i32 %spec.select.i, 1
  br i1 %i.cj, label %._crit_edge47.i, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i
  %.12844.i = phi i32 [ %i.dg, %.lr.ph46.i ], [ %.12844.i.unr, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  %.13043.i = phi i64 [ %i.cv, %.lr.ph46.i ], [ %.13043.i.unr, %.lr.ph46.i.prol.loopexit ]
  %.242.i = phi i64 [ %i.cz, %.lr.ph46.i ], [ %.242.i.unr, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %i.ck = icmp ne i64 %.242.i, 0
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.242.i, i1 true) ; 2 uses
  %i.cm = shl nuw i64 1, %i.cl                    ; 2 uses
  %i.cn = xor i64 %i.cm, %.242.i                  ; 2 uses
  %i.co = or disjoint i64 %i.cl, %i.bq
  %i.cp = mul i64 %i.co, %i.bs
  %i.cq = add i64 %i.cp, %i.br
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = zext i32 %.12844.i to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !116
  %i.cu = add i32 %.12844.i, 1
  %i.cv = add nsw i64 %.13043.i, -2               ; 2 uses
  %i.cw = icmp ne i64 %i.cm, %.242.i
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cn, i1 true) ; 2 uses
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = xor i64 %i.cy, %i.cn                    ; 2 uses
  %i.da = or disjoint i64 %i.cx, %i.bq
  %i.db = mul i64 %i.da, %i.bs
  %i.dc = add i64 %i.db, %i.br
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = zext i32 %i.cu to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !116
  %i.dg = add i32 %.12844.i, 2                    ; 2 uses
  %.not.i84.1 = icmp eq i64 %i.cv, 0
  br i1 %.not.i84.1, label %._crit_edge47.i, label %.lr.ph46.i, !llvm.loop !164

._crit_edge47.i:                                  ; preds = %.lr.ph46.i, %.lr.ph46.i.prol.loopexit
  %.lcssa150 = phi i64 [ %.lcssa150.unr, %.lr.ph46.i.prol.loopexit ], [ %i.cz, %.lr.ph46.i ] ; 2 uses
  %.lcssa149 = phi i32 [ %.lcssa149.unr, %.lr.ph46.i.prol.loopexit ], [ %i.dg, %.lr.ph46.i ] ; 2 uses
  %i.dh = zext i32 %.1.lcssa.i to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.dh
  store i64 %.lcssa150, ptr %i.di, align 8, !tbaa !14
  %i.dj = icmp ult i32 %.lcssa149, %i.bd
  br i1 %i.dj, label %.preheader.i, label %arena_slab_reg_alloc_batch.exit, !llvm.loop !165

arena_slab_reg_alloc_batch.exit:                  ; preds = %._crit_edge47.i, %._crit_edge47.thread.i
  %i.dk = zext nneg i32 %i.bd to i64
  %i.dl = shl nuw nsw i64 %i.dk, 28
  %i.dm = sub i64 %.val82, %i.dl
  store i64 %i.dm, ptr %i.ay, align 8, !tbaa !135
  %i.dn = add i32 %i.bd, %.172103
  br label %bb.n

bb.i:                                             ; preds = %bb.h
  %.val.i86 = load i32, ptr %i.ak, align 8, !tbaa !126
  %i.do = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.dp = icmp ult i32 %.val.i86, %i.do
  br i1 %i.dp, label %arena_bin_slabs_full_insert.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 3 uses
  store ptr %i.ay, ptr %i.dq, align 8, !tbaa !131
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 4 uses
  store ptr %i.ay, ptr %i.dr, align 8, !tbaa !131
  %i.ds = load ptr, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %edata_list_active_append.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !131
  store ptr %i.dv, ptr %i.dq, align 8, !tbaa !131
  %i.dw = load ptr, ptr %i.al, align 8, !tbaa !136
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  store ptr %i.ay, ptr %i.dx, align 8, !tbaa !131
  %i.dy = load ptr, ptr %i.dr, align 8, !tbaa !131
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !131
  store ptr %i.ea, ptr %i.dr, align 8, !tbaa !131
  %i.eb = load ptr, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !131
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store ptr %i.eb, ptr %i.ee, align 8, !tbaa !131
  %i.ef = load ptr, ptr %i.dr, align 8, !tbaa !131
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  store ptr %i.ay, ptr %i.eg, align 8, !tbaa !131
  %.pre.i.i.i = load ptr, ptr %i.dq, align 8, !tbaa !131
  br label %edata_list_active_append.exit.i.i

edata_list_active_append.exit.i.i:                ; preds = %bb.k, %bb.j
  %i.eh = phi ptr [ %.pre.i.i.i, %bb.k ], [ %i.ay, %bb.j ]
  store ptr %i.eh, ptr %i.al, align 8, !tbaa !136
  br label %arena_bin_slabs_full_insert.exit.i

arena_bin_slabs_full_insert.exit.i:               ; preds = %.lr.ph, %edata_list_active_append.exit.i.i, %bb.i
  %i.ei = tail call ptr @je_edata_heap_remove_first(ptr noundef nonnull %i.am) #15 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.l, label %arena_bin_refill_slabcur_no_fresh_slab.exit

arena_bin_refill_slabcur_no_fresh_slab.exit:      ; preds = %arena_bin_slabs_full_insert.exit.i
  %i.ek = load i64, ptr %i.an, align 8, !tbaa !166
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.an, align 8, !tbaa !166
  %i.em = load i64, ptr %i.ao, align 8, !tbaa !167
  %i.en = add i64 %i.em, -1
  store i64 %i.en, ptr %i.ao, align 8, !tbaa !167
  store ptr %i.ei, ptr %i.aj, align 8, !tbaa !146
  br label %bb.n, !llvm.loop !168

bb.l:                                             ; preds = %arena_bin_slabs_full_insert.exit.i
  store ptr null, ptr %i.aj, align 8, !tbaa !146
  %.not78 = icmp eq ptr %.165104, null
  br i1 %.not78, label %.thread90, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eo = load i64, ptr %i.ap, align 8, !tbaa !169
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.ap, align 8, !tbaa !169
  %i.eq = load i64, ptr %i.aq, align 8, !tbaa !152
  %i.er = add i64 %i.eq, 1
  store i64 %i.er, ptr %i.aq, align 8, !tbaa !152
  store ptr %.165104, ptr %i.aj, align 8, !tbaa !146
  br label %bb.n, !llvm.loop !168

bb.n:                                             ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit, %bb.m, %arena_slab_reg_alloc_batch.exit
  %.273 = phi i32 [ %i.dn, %arena_slab_reg_alloc_batch.exit ], [ %.172103, %bb.m ], [ %.172103, %arena_bin_refill_slabcur_no_fresh_slab.exit ] ; 3 uses
  %.266 = phi ptr [ %.165104, %arena_slab_reg_alloc_batch.exit ], [ null, %bb.m ], [ %.165104, %arena_bin_refill_slabcur_no_fresh_slab.exit ] ; 2 uses
  %.2 = phi i1 [ true, %arena_slab_reg_alloc_batch.exit ], [ %.1105, %bb.m ], [ %.1105, %arena_bin_refill_slabcur_no_fresh_slab.exit ]
  %i.es = icmp ult i32 %.273, %5
  br i1 %i.es, label %.lr.ph, label %.thread90.thread

.thread90:                                        ; preds = %bb.l
  br i1 %.1105, label %.critedge, label %.thread90.thread

.thread90.thread:                                 ; preds = %malloc_mutex_lock.exit, %.thread90, %bb.n
  %.3130 = phi ptr [ %.266, %bb.n ], [ %.064, %malloc_mutex_lock.exit ], [ null, %.thread90 ] ; 2 uses
  %.172.lcssa129 = phi i32 [ %.273, %bb.n ], [ %.071, %malloc_mutex_lock.exit ], [ %.172103, %.thread90 ] ; 3 uses
  %i.et = zext i32 %.172.lcssa129 to i64          ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ad, i64 112 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !170
  %i.ew = add i64 %i.ev, %i.et
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !170
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !171
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ad, i64 128 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !172
  %i.fb = add i64 %i.fa, %i.ey
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !172
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ad, i64 136 ; 2 uses
  %i.fd = load <2 x i64>, ptr %i.fc, align 8, !tbaa !14
  %i.fe = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.et, i64 0
  %i.ff = add <2 x i64> %i.fd, %i.fe
  store <2 x i64> %i.ff, ptr %i.fc, align 8, !tbaa !14
  store i64 0, ptr %i.ex, align 8, !tbaa !171
  store atomic i8 0, ptr %i.af monotonic, align 8
  %i.fg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ae) #15 ; 0 uses
  %.not79 = icmp eq ptr %.3130, null
  br i1 %.not79, label %bb.q, label %bb.o

.critedge:                                        ; preds = %.thread90
  store atomic i8 0, ptr %i.af monotonic, align 8
  %i.fh = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ae) #15 ; 0 uses
  %i.fi = tail call fastcc ptr @arena_slab_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef %.0.i, ptr noundef nonnull %i.c)
  br label %bb.d

bb.o:                                             ; preds = %.thread90.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !129
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 10648
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.fj, ptr noundef nonnull %.3130, ptr noundef nonnull %i.a) #15
  %i.fk = load i8, ptr %i.a, align 1, !tbaa !129, !range !124, !noundef !125
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.p, label %je_arena_slab_dalloc.exit

bb.p:                                             ; preds = %bb.o
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %1)
  br label %je_arena_slab_dalloc.exit

je_arena_slab_dalloc.exit:                        ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.q

bb.q:                                             ; preds = %je_arena_slab_dalloc.exit, %.thread90.thread
  %i.fm = trunc i32 %.172.lcssa129 to i16
  %.val.i87 = load ptr, ptr %2, align 8, !tbaa !85
  %.val13.i = load i16, ptr %i.e, align 4, !tbaa !90
  %i.fn = ptrtoint ptr %.val.i87 to i64           ; 2 uses
  %i.fo = trunc i64 %i.fn to i16
  %i.fp = sub i16 %.val13.i, %i.fo
  %i.fq = zext i16 %i.fp to i64
  %i.fr = add i64 %i.fq, %i.fn
  %i.fs = inttoptr i64 %i.fr to ptr               ; 3 uses
  %i.ft = icmp ult i16 %i.fm, %i.d
  %.mask96 = and i32 %.172.lcssa129, 65535
  %i.fu = zext nneg i32 %.mask96 to i64           ; 2 uses
  %i.fv = sub nsw i64 0, %i.fu                    ; 2 uses
  br i1 %i.ft, label %bb.r, label %cache_bin_finish_fill.exit

bb.r:                                             ; preds = %bb.q
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.fv
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.m
  %i.fy = shl nuw nsw i64 %i.fu, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fw, ptr nonnull align 8 %i.fx, i64 %i.fy, i1 false)
  br label %cache_bin_finish_fill.exit

cache_bin_finish_fill.exit:                       ; preds = %bb.q, %bb.r
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.fv
  store ptr %i.fz, ptr %2, align 8, !tbaa !85
  br i1 %i.o, label %arena_decay_ticks.exit, label %bb.s, !prof !132

bb.s:                                             ; preds = %cache_bin_finish_fill.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !173 ; 2 uses
  %i.gc = add nsw i32 %i.gb, -1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !173
  %i.gd = icmp slt i32 %i.gb, 1
  br i1 %i.gd, label %bb.t, label %arena_decay_ticks.exit, !prof !132

bb.t:                                             ; preds = %bb.s
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !14
  %i.gg = mul i64 %i.gf, 6364136223846793005
  %i.gh = add i64 %i.gg, 1442695040888963407      ; 2 uses
  store i64 %i.gh, ptr %i.ge, align 8, !tbaa !14
  %i.gi = lshr i64 %i.gh, 58
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !175
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.gi
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !131
  %i.go = zext i8 %i.gn to i64
  %i.gp = mul nsw i64 %i.go, %i.gl
  %i.gq = udiv i64 %i.gp, 61
  %i.gr = trunc i64 %i.gq to i32
  store i32 %i.gr, ptr %i.ga, align 8, !tbaa !173
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.s, %cache_bin_finish_fill.exit, %bb.t
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @arena_slab_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
tsdn_witness_tsdp_get.exit:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 78936
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call ptr @je_base_ehooks_get(ptr noundef %i.c) #15
  %i.e = load i64, ptr @je_opt_san_guard_small, align 8, !tbaa !14
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %san_slab_extent_decide_guard.exit, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.g = icmp eq ptr %0, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load atomic ptr, ptr %i.h acquire, align 8
  %i.j = icmp ne ptr %i.i, @je_ehooks_default_extent_hooks
  %or.cond.i = or i1 %i.g, %i.j
  br i1 %or.cond.i, label %san_slab_extent_decide_guard.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.m = icmp eq i64 %i.l, 1                      ; 2 uses
  %i.n = load i64, ptr @je_opt_san_guard_small, align 8
  %i.o = add i64 %i.l, -1
  %.sink.i = select i1 %i.m, i64 %i.n, i64 %i.o
  store i64 %.sink.i, ptr %i.k, align 8, !tbaa !14
  br label %san_slab_extent_decide_guard.exit

san_slab_extent_decide_guard.exit:                ; preds = %tsdn_witness_tsdp_get.exit, %bb.a, %.sink.split.i
  %.1.i = phi i1 [ false, %tsdn_witness_tsdp_get.exit ], [ false, %bb.a ], [ %i.m, %.sink.split.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 10648
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !176
  %i.s = call ptr @je_pa_alloc(ptr noundef %0, ptr noundef nonnull %i.p, i64 noundef %i.r, i64 noundef 4096, i1 noundef zeroext true, i32 noundef %2, i1 noundef zeroext false, i1 noundef zeroext %.1.i, ptr noundef nonnull %i.a) #15 ; 5 uses
  %i.t = load i8, ptr %i.a, align 1, !tbaa !129, !range !124, !noundef !125
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %san_slab_extent_decide_guard.exit
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %san_slab_extent_decide_guard.exit
  %i.v = icmp eq ptr %i.s, null
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !177
  %i.z = load i64, ptr %i.s, align 8, !tbaa !135
  %i.aa = and i64 %i.z, -17591917608961
  %i.ab = zext i32 %3 to i64
  %i.ac = shl i64 %i.ab, 38
  %i.ad = zext i32 %i.y to i64
  %i.ae = shl nuw nsw i64 %i.ad, 28
  %i.af = or i64 %i.ae, %i.ac
  %i.ag = or i64 %i.af, %i.aa
  store i64 %i.ag, ptr %i.s, align 8, !tbaa !135
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @je_bitmap_init(ptr noundef nonnull %i.w, ptr noundef nonnull %i.ah, i1 noundef zeroext false) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %i.s
}

; Function Attrs: nounwind uwtable
define hidden i64 @je_arena_fill_small_fresh(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef captures(none) %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.a ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !177
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !163
  %i.g = getelementptr i8, ptr %1, i64 78928
  %.val = load i32, ptr %i.g, align 8, !tbaa !126
  %i.h = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.i = icmp ult i32 %.val, %i.h                 ; 2 uses
  %i.j = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.j, label %je_arena_bin_choose.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !160
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %je_arena_bin_choose.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.a
  %i.p = load i8, ptr %i.o, align 1, !tbaa !131
  %i.q = zext i8 %i.p to i32
  br label %je_arena_bin_choose.exit

je_arena_bin_choose.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.r = ptrtoint ptr %1 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.a
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = zext i32 %i.t to i64
  %i.v = add i64 %i.u, %i.r
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext nneg i32 %.0.i to i64
  %i.y = getelementptr inbounds nuw [224 x i8], ptr %i.w, i64 %i.x ; 13 uses
  %.not92 = icmp eq i64 %4, 0
  br i1 %.not92, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %je_arena_bin_choose.exit, %edata_list_active_append.exit
  %.05983 = phi i64 [ %i.cn, %edata_list_active_append.exit ], [ 0, %je_arena_bin_choose.exit ] ; 4 uses
  %.06082 = phi i64 [ %i.aa, %edata_list_active_append.exit ], [ 0, %je_arena_bin_choose.exit ] ; 2 uses
  %.sroa.0.081 = phi ptr [ %.sroa.0.1, %edata_list_active_append.exit ], [ null, %je_arena_bin_choose.exit ] ; 5 uses
  %i.z = tail call fastcc ptr @arena_slab_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %.0.i, ptr noundef nonnull %i.b) ; 13 uses
  %.not = icmp eq ptr %i.z, null
end_hunk_2
begin_hunk_3_@arena_bin_lower_slab:bb.a

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 200
  tail call void @je_edata_heap_insert(ptr noundef nonnull %i.j, ptr noundef nonnull %i.b) #15
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !167
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !167
  br label %arena_bin_slabs_full_insert.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 78928
  %.val15 = load i32, ptr %i.n, align 8, !tbaa !126
  %i.o = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.p = icmp ult i32 %.val15, %i.o
  br i1 %i.p, label %arena_bin_slabs_full_insert.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.b, ptr %i.r, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  store ptr %i.b, ptr %i.s, align 8, !tbaa !131
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !136  ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %edata_list_active_append.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !131
  store ptr %i.w, ptr %i.r, align 8, !tbaa !131
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !136
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %i.b, ptr %i.y, align 8, !tbaa !131
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !131
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !131
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !131
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !136 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !131
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !131
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.b, ptr %i.ah, align 8, !tbaa !131
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !131
  br label %edata_list_active_append.exit.i

edata_list_active_append.exit.i:                  ; preds = %bb.h, %bb.g
  %i.ai = phi ptr [ %.pre.i.i, %bb.h ], [ %i.b, %bb.g ]
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !136
  br label %arena_bin_slabs_full_insert.exit

arena_bin_slabs_full_insert.exit:                 ; preds = %edata_list_active_append.exit.i, %bb.f, %bb.e
  store ptr %1, ptr %i.a, align 8, !tbaa !146
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %edata_snad_comp.exit, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 200
  tail call void @je_edata_heap_insert(ptr noundef nonnull %i.aj, ptr noundef %1) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %arena_bin_slabs_full_insert.exit
  %.sink4 = phi i64 [ 184, %bb.i ], [ 168, %arena_bin_slabs_full_insert.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.sink4 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = icmp eq ptr %0, null                     ; 3 uses
  br i1 %i.b, label %arena_choose_maybe_huge.exit, label %bb.b, !prof !132

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %.thread21

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr @je_oversize_threshold, align 8, !tbaa !14
  %.not12.i = icmp ult i64 %2, %i.c
  br i1 %.not12.i, label %.thread, label %bb.d, !prof !130

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !160  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %i.e, i64 78928
  %.val = load i32, ptr %i.g, align 8, !tbaa !126
  %i.h = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.i = icmp ult i32 %.val, %i.h
  br i1 %i.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.j = tail call ptr @je_arena_choose_huge(ptr noundef nonnull %0)
  br label %arena_choose_maybe_huge.exit

.thread:                                          ; preds = %bb.e, %bb.c
  %i.k = tail call fastcc ptr @arena_choose(ptr noundef nonnull %0, ptr noundef null)
  br label %arena_choose_maybe_huge.exit

arena_choose_maybe_huge.exit:                     ; preds = %.thread, %bb.f, %bb.a
  %.014 = phi ptr [ %1, %bb.a ], [ %i.j, %bb.f ], [ %i.k, %.thread ] ; 4 uses
  %i.l = icmp eq ptr %.014, null
  br i1 %i.l, label %arena_malloc_small.exit, label %bb.g, !prof !180

bb.g:                                             ; preds = %arena_choose_maybe_huge.exit
  %i.m = icmp ult i64 %2, 14337
  br i1 %i.m, label %bb.h, label %bb.ac, !prof !130

.thread21:                                        ; preds = %bb.b
  %i.n = icmp ult i64 %2, 14337
  br i1 %i.n, label %.thread25, label %bb.ac, !prof !130

.thread25:                                        ; preds = %.thread21
  %i.o = zext i32 %3 to i64                       ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = zext i32 %3 to i64                       ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14   ; 2 uses
  br i1 %i.b, label %je_arena_bin_choose.exit.i, label %bb.i

bb.i:                                             ; preds = %.thread25, %bb.h
  %i.u = phi i64 [ %i.q, %.thread25 ], [ %i.t, %bb.h ] ; 2 uses
  %i.v = phi i64 [ %i.o, %.thread25 ], [ %i.r, %bb.h ] ; 3 uses
  %.014202427 = phi ptr [ %1, %.thread25 ], [ %.014, %bb.h ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !160
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %je_arena_bin_choose.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !131
  %i.ac = zext i8 %i.ab to i32
  br label %je_arena_bin_choose.exit.i

je_arena_bin_choose.exit.i:                       ; preds = %bb.j, %bb.i, %bb.h
  %i.ad = phi i64 [ %i.u, %bb.j ], [ %i.u, %bb.i ], [ %i.t, %bb.h ]
  %i.ae = phi i64 [ %i.v, %bb.j ], [ %i.v, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  %.014202428 = phi ptr [ %.014202427, %bb.j ], [ %.014202427, %bb.i ], [ %.014, %bb.h ] ; 7 uses
  %.0.i.i = phi i32 [ %i.ac, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.af = ptrtoint ptr %.014202428 to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add i64 %i.ai, %i.af
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = zext nneg i32 %.0.i.i to i64
  %i.am = getelementptr inbounds nuw [224 x i8], ptr %i.ak, i64 %i.al ; 17 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 5 uses
  %i.ao = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.an) #15
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %je_arena_bin_choose.exit.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.am) #15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  store atomic i8 1, ptr %i.ap monotonic, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %je_arena_bin_choose.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !74
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.au, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %0, ptr %i.at, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !77
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.m, %bb.l
  %i.ay = tail call fastcc ptr @arena_bin_malloc_no_fresh_slab(ptr noundef nonnull %.014202428, ptr noundef nonnull %i.am, i32 noundef %3) ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.n, label %bb.u

bb.n:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.ae ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 104 ; 3 uses
  store atomic i8 0, ptr %i.bb monotonic, align 8
  %i.bc = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.an) #15 ; 0 uses
  %i.bd = tail call fastcc ptr @arena_slab_alloc(ptr noundef %0, ptr noundef nonnull %.014202428, i32 noundef %3, i32 noundef %.0.i.i, ptr noundef nonnull %i.ba) ; 7 uses
  %i.be = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.an) #15
  %.not.i53.i = icmp eq i32 %i.be, 0
  br i1 %.not.i53.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.am) #15
  store atomic i8 1, ptr %i.bb monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bf = load i64, ptr %i.aq, align 8, !tbaa !74
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.aq, align 8, !tbaa !74
  %i.bh = load ptr, ptr %i.at, align 8, !tbaa !76
  %.not.i.i54.i = icmp eq ptr %i.bh, %0
  br i1 %.not.i.i54.i, label %malloc_mutex_lock.exit55.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %0, ptr %i.at, align 8, !tbaa !76
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !77
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit55.i

malloc_mutex_lock.exit55.i:                       ; preds = %bb.q, %bb.p
  %i.bl = tail call fastcc ptr @arena_bin_malloc_no_fresh_slab(ptr noundef nonnull %.014202428, ptr noundef nonnull %i.am, i32 noundef %3) ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.r, label %bb.u

bb.r:                                             ; preds = %malloc_mutex_lock.exit55.i
  %i.bn = icmp eq ptr %i.bd, null
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store atomic i8 0, ptr %i.bb monotonic, align 8
  %i.bo = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.an) #15 ; 0 uses
  br label %arena_malloc_small.exit

bb.t:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 160 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !169
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !169
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 176 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !152
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !152
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 192
  store ptr %i.bd, ptr %i.bv, align 8, !tbaa !146
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 64 ; 3 uses
  %.0101.i.i.i.i = load i64, ptr %i.bw, align 8, !tbaa !14 ; 2 uses
  %i.bx = icmp eq i64 %.0101.i.i.i.i, 0
  br i1 %i.bx, label %.lr.ph.i.i.i.i, label %arena_bin_malloc_with_fresh_slab.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %.lr.ph.i.i.i.i
  %.02.i.i.i.i = phi i32 [ %i.by, %.lr.ph.i.i.i.i ], [ 0, %bb.t ]
  %i.by = add i32 %.02.i.i.i.i, 1                 ; 3 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bz
  %.010.i.i.i.i = load i64, ptr %i.ca, align 8, !tbaa !14 ; 2 uses
  %i.cb = icmp eq i64 %.010.i.i.i.i, 0
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !181

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %i.cc = shl i32 %i.by, 6
  br label %arena_bin_malloc_with_fresh_slab.exit.i

arena_bin_malloc_with_fresh_slab.exit.i:          ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.t
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %bb.t ], [ %i.cc, %._crit_edge.loopexit.i.i.i.i ]
  %.010.lcssa.i.i.i.i = phi i64 [ %.0101.i.i.i.i, %bb.t ], [ %.010.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ]
  %i.cd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.010.lcssa.i.i.i.i, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = or disjoint i32 %.0.lcssa.i.i.i.i, %i.ce
  %i.cg = zext i32 %i.cf to i64                   ; 3 uses
  %i.ch = lshr i64 %i.cg, 6
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ch ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.ck = and i64 %i.cg, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = xor i64 %i.cl, %i.cj
  store i64 %i.cm, ptr %i.ci, align 8, !tbaa !14
  %i.cn = getelementptr i8, ptr %i.bd, i64 8
  %.val.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !133
  %i.co = ptrtoint ptr %.val.i.i.i to i64
  %i.cp = load i64, ptr %i.ba, align 8, !tbaa !163
  %i.cq = mul i64 %i.cp, %i.cg
  %i.cr = add i64 %i.cq, %i.co
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load i64, ptr %i.bd, align 8, !tbaa !135
  %i.cu = add i64 %i.ct, -268435456
  store i64 %i.cu, ptr %i.bd, align 8, !tbaa !135
  br label %bb.u

bb.u:                                             ; preds = %arena_bin_malloc_with_fresh_slab.exit.i, %malloc_mutex_lock.exit55.i, %malloc_mutex_lock.exit.i
  %.048.i = phi ptr [ null, %arena_bin_malloc_with_fresh_slab.exit.i ], [ %i.bd, %malloc_mutex_lock.exit55.i ], [ null, %malloc_mutex_lock.exit.i ] ; 2 uses
  %.0.i15 = phi ptr [ %i.cs, %arena_bin_malloc_with_fresh_slab.exit.i ], [ %i.bl, %malloc_mutex_lock.exit55.i ], [ %i.ay, %malloc_mutex_lock.exit.i ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !170
  %i.cx = add i64 %i.cw, 1
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !170
  %i.cy = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %i.cz = load <2 x i64>, ptr %i.cy, align 8, !tbaa !14
  %i.da = add <2 x i64> %i.cz, splat (i64 1)
  store <2 x i64> %i.da, ptr %i.cy, align 8, !tbaa !14
  %i.db = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  store atomic i8 0, ptr %i.db monotonic, align 8
  %i.dc = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.an) #15 ; 0 uses
  %.not.i16 = icmp eq ptr %.048.i, null
  br i1 %.not.i16, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !129
  %i.dd = getelementptr inbounds nuw i8, ptr %.014202428, i64 10648
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.dd, ptr noundef nonnull %.048.i, ptr noundef nonnull %i.a) #15
  %i.de = load i8, ptr %i.a, align 1, !tbaa !129, !range !124, !noundef !125
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.w, label %je_arena_slab_dalloc.exit.i

bb.w:                                             ; preds = %bb.v
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %.014202428)
  br label %je_arena_slab_dalloc.exit.i

je_arena_slab_dalloc.exit.i:                      ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.x

bb.x:                                             ; preds = %je_arena_slab_dalloc.exit.i, %bb.u
  br i1 %4, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i15, i8 0, i64 %i.ad, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.b, label %arena_malloc_small.exit, label %bb.aa, !prof !132

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !173 ; 2 uses
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !173
  %i.dj = icmp slt i32 %i.dh, 1
  br i1 %i.dj, label %bb.ab, label %arena_malloc_small.exit, !prof !132

bb.ab:                                            ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !14
  %i.dm = mul i64 %i.dl, 6364136223846793005
  %i.dn = add i64 %i.dm, 1442695040888963407      ; 2 uses
  store i64 %i.dn, ptr %i.dk, align 8, !tbaa !14
  %i.do = lshr i64 %i.dn, 58
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !175
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.do
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !131
  %i.du = zext i8 %i.dt to i64
  %i.dv = mul nsw i64 %i.du, %i.dr
  %i.dw = udiv i64 %i.dv, 61
  %i.dx = trunc i64 %i.dw to i32
  store i32 %i.dx, ptr %i.dg, align 8, !tbaa !173
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %.014202428, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_malloc_small.exit

bb.ac:                                            ; preds = %.thread21, %bb.g
  %.0142023 = phi ptr [ %1, %.thread21 ], [ %.014, %bb.g ]
  %i.dy = zext i32 %3 to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !14
  %i.eb = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef nonnull %.0142023, i64 noundef %i.ea, i1 noundef zeroext %4) #15
  br label %arena_malloc_small.exit

arena_malloc_small.exit:                          ; preds = %bb.ab, %bb.aa, %bb.z, %bb.s, %arena_choose_maybe_huge.exit, %bb.ac
  %.0 = phi ptr [ %i.eb, %bb.ac ], [ null, %arena_choose_maybe_huge.exit ], [ null, %bb.s ], [ %.0.i15, %bb.aa ], [ %.0.i15, %bb.z ], [ %.0.i15, %bb.ab ]
  ret ptr %.0
}

declare ptr @je_large_malloc(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = icmp ult i64 %2, 14337
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %2, 4097
  br i1 %i.c, label %bb.c, label %sz_size2index_compute.exit, !prof !130

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw nsw i64 %2, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !131
  %i.h = zext i8 %i.g to i32
  br label %sz_size2index.exit

sz_size2index_compute.exit:                       ; preds = %bb.b
  %i.i = shl nuw nsw i64 %2, 1
  %i.j = add nsw i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.j, i1 true) ; 3 uses
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = sub nuw nsw i64 60, %i.k
  %i.n = ashr exact i64 -1152921504606846976, %i.k
  %i.o = add nsw i64 %2, -1
  %i.p = and i64 %i.n, %i.o
  %i.q = lshr i64 %i.p, %i.m
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 3
  %i.t = shl nuw nsw i32 %i.l, 2
  %reass.sub = sub nsw i32 %i.s, %i.t
  %i.u = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.c, %sz_size2index_compute.exit
  %.0.i = phi i32 [ %i.h, %bb.c ], [ %i.u, %sz_size2index_compute.exit ] ; 5 uses
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %bb.m, label %bb.d, !prof !132

bb.d:                                             ; preds = %sz_size2index.exit
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = zext nneg i32 %.0.i to i64               ; 3 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w ; 8 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85   ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !182 ; 2 uses
  %i.ae = trunc i64 %i.aa to i16
  %.not.i22 = icmp eq i16 %i.ad, %i.ae
  br i1 %.not.i22, label %bb.f, label %bb.e, !prof !132

end_hunk_3
begin_hunk_4_@je_arena_ralloc:bb.a
  %i.gy = add i64 %i.gx, -1
  %i.gz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.gy, i1 true) ; 3 uses
  %i.ha = trunc nuw nsw i64 %i.gz to i32
  %i.hb = sub nuw nsw i64 60, %i.gz
  %i.hc = ashr exact i64 -1152921504606846976, %i.gz
  %i.hd = add nsw i64 %3, -1
  %i.he = and i64 %i.hc, %i.hd
  %i.hf = lshr i64 %i.he, %i.hb
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = and i32 %i.hg, 3
  %i.hi = shl nuw nsw i32 %i.ha, 2
  %reass.sub88 = sub nsw i32 %i.hh, %i.hi
  %i.hj = add nsw i32 %reass.sub88, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.ba, %bb.ay
  %.0.i.i68 = phi i32 [ %i.gv, %bb.ay ], [ %i.hj, %bb.ba ] ; 4 uses
  %i.hk = icmp samesign ult i32 %.0.i.i68, 39
  br i1 %i.hk, label %bb.bb, label %sz_size2index.exit.i.thread, !prof !194

bb.bb:                                            ; preds = %sz_size2index.exit.i
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hm = zext nneg i32 %.0.i.i68 to i64          ; 2 uses
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %i.hm ; 6 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !85 ; 2 uses
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 18 ; 2 uses
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !93
  %i.hs = trunc i64 %i.hp to i16
  %i.ht = icmp eq i16 %i.hr, %i.hs
  br i1 %i.ht, label %cache_bin_dalloc_easy.exit22.i, label %cache_bin_dalloc_easy.exit22.i.thread, !prof !132

cache_bin_dalloc_easy.exit22.i.thread:            ; preds = %bb.bb
  %i.hu = getelementptr inbounds i8, ptr %i.ho, i64 -8 ; 2 uses
  store ptr %i.hu, ptr %i.hn, align 8, !tbaa !85
  store ptr %2, ptr %i.hu, align 8, !tbaa !116
  br label %arena_sdalloc.exit

cache_bin_dalloc_easy.exit22.i:                   ; preds = %bb.bb
  %i.hv = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !183
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %i.hm
  %.val73 = load i16, ptr %i.hw, align 2, !tbaa !91 ; 2 uses
  %i.hx = icmp eq i16 %.val73, 0
  br i1 %i.hx, label %bb.bc, label %bb.bd, !prof !132

bb.bc:                                            ; preds = %cache_bin_dalloc_easy.exit22.i
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %2)
  br label %arena_sdalloc.exit

bb.bd:                                            ; preds = %cache_bin_dalloc_easy.exit22.i
  %i.hy = zext i16 %.val73 to i32
  %i.hz = load i32, ptr @je_opt_lg_tcache_flush_small_div, align 4, !tbaa !7
  %i.ia = lshr i32 %i.hy, %i.hz
  call void @je_tcache_bin_flush_small(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %i.hn, i32 noundef %.0.i.i68, i32 noundef %i.ia) #15
  %i.ib = load ptr, ptr %i.hn, align 8, !tbaa !85 ; 2 uses
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = load i16, ptr %i.hq, align 2, !tbaa !93
  %i.ie = trunc i64 %i.ic to i16
  %i.if = icmp eq i16 %i.id, %i.ie
  br i1 %i.if, label %arena_sdalloc.exit, label %bb.be, !prof !132

bb.be:                                            ; preds = %bb.bd
  %i.ig = getelementptr inbounds i8, ptr %i.ib, i64 -8 ; 2 uses
  store ptr %i.ig, ptr %i.hn, align 8, !tbaa !85
  store ptr %2, ptr %i.ig, align 8, !tbaa !116
  br label %arena_sdalloc.exit

sz_size2index.exit.i.thread:                      ; preds = %bb.az, %sz_size2index.exit.i
  %.0.i.i6883 = phi i32 [ %.0.i.i68, %sz_size2index.exit.i ], [ 235, %bb.az ] ; 3 uses
  %i.ih = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %i.ii = icmp ult i32 %.0.i.i6883, %i.ih
  br i1 %i.ii, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %sz_size2index.exit.i.thread
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ik = zext nneg i32 %.0.i.i6883 to i64        ; 2 uses
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %i.ij, i64 %i.ik ; 6 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !85 ; 2 uses
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 18 ; 2 uses
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !93
  %i.iq = trunc i64 %i.in to i16
  %i.ir = icmp eq i16 %i.ip, %i.iq
  br i1 %i.ir, label %cache_bin_dalloc_easy.exit14.i, label %cache_bin_dalloc_easy.exit14.i.thread, !prof !132

cache_bin_dalloc_easy.exit14.i.thread:            ; preds = %bb.bf
  %i.is = getelementptr inbounds i8, ptr %i.im, i64 -8 ; 2 uses
  store ptr %i.is, ptr %i.il, align 8, !tbaa !85
  store ptr %2, ptr %i.is, align 8, !tbaa !116
  br label %arena_sdalloc.exit

cache_bin_dalloc_easy.exit14.i:                   ; preds = %bb.bf
  %i.it = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !183
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.it, i64 %i.ik
  %.val = load i16, ptr %i.iu, align 2, !tbaa !91
  %i.iv = zext i16 %.val to i32
  %i.iw = load i32, ptr @je_opt_lg_tcache_flush_large_div, align 4, !tbaa !7
  %i.ix = lshr i32 %i.iv, %i.iw
  call void @je_tcache_bin_flush_large(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %i.il, i32 noundef %.0.i.i6883, i32 noundef %i.ix) #15
  %i.iy = load ptr, ptr %i.il, align 8, !tbaa !85 ; 2 uses
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = load i16, ptr %i.io, align 2, !tbaa !93
  %i.jb = trunc i64 %i.iz to i16
  %i.jc = icmp eq i16 %i.ja, %i.jb
  br i1 %i.jc, label %arena_sdalloc.exit, label %bb.bg, !prof !132

bb.bg:                                            ; preds = %cache_bin_dalloc_easy.exit14.i
  %i.jd = getelementptr inbounds i8, ptr %i.iy, i64 -8 ; 2 uses
  store ptr %i.jd, ptr %i.il, align 8, !tbaa !85
  store ptr %2, ptr %i.jd, align 8, !tbaa !116
  br label %arena_sdalloc.exit

bb.bh:                                            ; preds = %sz_size2index.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  br i1 %i.go, label %bb.bi, label %bb.bj, !prof !132

bb.bi:                                            ; preds = %bb.bh
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %9) #15
  br label %tsdn_rtree_ctx.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.bj, %bb.bi
  %.0.i.i70 = phi ptr [ %9, %bb.bi ], [ %i.je, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.jf = ptrtoint ptr %2 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef %0, ptr noundef nonnull %.0.i.i70, i64 noundef %i.jf)
  %i.jg = load ptr, ptr %10, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.jg) #15
  br label %arena_sdalloc.exit

arena_sdalloc.exit:                               ; preds = %sz_s2u_compute.exit35.i, %bb.av, %cache_bin_alloc_impl.exit28.i, %bb.ad, %sz_sa2u.exit.i, %sz_s2u_compute.exit64, %bb.i, %bb.d, %bb.aw, %bb.bd, %bb.be, %cache_bin_dalloc_easy.exit22.i.thread, %bb.bc, %cache_bin_dalloc_easy.exit14.i.thread, %bb.bg, %cache_bin_dalloc_easy.exit14.i, %tsdn_rtree_ctx.exit.i, %bb.o, %arena_ralloc_move_helper.exit, %sz_s2u.exit, %bb.q
  %.2 = phi ptr [ %2, %bb.o ], [ %i.bq, %bb.q ], [ null, %sz_s2u.exit ], [ null, %sz_s2u_compute.exit64 ], [ null, %arena_ralloc_move_helper.exit ], [ %.0.i74, %bb.aw ], [ %.0.i74, %tsdn_rtree_ctx.exit.i ], [ %.0.i74, %cache_bin_dalloc_easy.exit14.i ], [ %.0.i74, %bb.bg ], [ %.0.i74, %cache_bin_dalloc_easy.exit14.i.thread ], [ %.0.i74, %bb.bc ], [ %.0.i74, %cache_bin_dalloc_easy.exit22.i.thread ], [ %.0.i74, %bb.be ], [ %.0.i74, %bb.bd ], [ null, %bb.d ], [ null, %bb.i ], [ null, %sz_sa2u.exit.i ], [ null, %bb.ad ], [ null, %cache_bin_alloc_impl.exit28.i ], [ null, %bb.av ], [ null, %sz_s2u_compute.exit35.i ]
  ret ptr %.2
}

declare void @je_hook_invoke_expand(i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @je_large_ralloc(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_hook_invoke_alloc(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @je_hook_invoke_dalloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @je_base_ehooks_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_set_extent_hooks(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 78928
  %.val = load i32, ptr %i.a, align 8, !tbaa !126
  %i.b = load ptr, ptr @je_background_thread_info, align 8, !tbaa !127
  %i.c = zext i32 %.val to i64
  %i.d = load i64, ptr @je_max_background_threads, align 8, !tbaa !14
  %i.e = urem i64 %i.c, %i.d
  %i.f = getelementptr inbounds nuw [208 x i8], ptr %i.b, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %i.h = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.g) #15
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.i) #15
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.o, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.n, align 8, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !77
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10648
  tail call void @je_pa_shard_disable_hpa(ptr noundef %0, ptr noundef nonnull %i.s) #15
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 78936
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.v = tail call ptr @je_base_extent_hooks_set(ptr noundef %i.u, ptr noundef %2) #15
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store atomic i8 0, ptr %i.w monotonic, align 8
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #15 ; 0 uses
  ret ptr %i.v
}

declare void @je_pa_shard_disable_hpa(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @je_base_extent_hooks_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @je_arena_dss_prec_set(ptr noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
atomic_store_u.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10520
  store atomic i32 %1, ptr %i.a release, align 4
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @je_arena_dirty_decay_ms_default_get() local_unnamed_addr #8 {
atomic_load_zd.exit:
  %i.a = load atomic i64, ptr @dirty_decay_ms_default.0 monotonic, align 8
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_arena_dirty_decay_ms_default_set(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @je_decay_ms_valid(i64 noundef %0) #15 ; 2 uses
  br i1 %i.a, label %atomic_store_zd.exit, label %bb.b

atomic_store_zd.exit:                             ; preds = %bb.a
  store atomic i64 %0, ptr @dirty_decay_ms_default.0 monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %atomic_store_zd.exit
  %.0 = xor i1 %i.a, true
  ret i1 %.0
}

declare zeroext i1 @je_decay_ms_valid(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @je_arena_muzzy_decay_ms_default_get() local_unnamed_addr #8 {
atomic_load_zd.exit:
  %i.a = load atomic i64, ptr @muzzy_decay_ms_default.0 monotonic, align 8
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_arena_muzzy_decay_ms_default_set(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @je_decay_ms_valid(i64 noundef %0) #15 ; 2 uses
  br i1 %i.a, label %atomic_store_zd.exit, label %bb.b

atomic_store_zd.exit:                             ; preds = %bb.a
  store atomic i64 %0, ptr @muzzy_decay_ms_default.0 monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %atomic_store_zd.exit
  %.0 = xor i1 %i.a, true
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_arena_retain_grow_limit_get_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10672
  %i.b = tail call zeroext i1 @je_pac_retain_grow_limit_get_set(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %3) #15
  ret i1 %i.b
}

declare zeroext i1 @je_pac_retain_grow_limit_get_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @je_arena_nthreads_inc(ptr noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
atomic_fetch_add_u.exit:
  %i.a = zext i1 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = atomicrmw add ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @je_arena_nthreads_dec(ptr noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
atomic_fetch_sub_u.exit:
  %i.a = zext i1 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_new(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.nstime_t, align 8           ; 2 uses
  %4 = alloca %struct.hpa_shard_opts_s, align 8   ; 5 uses
  %i.a = icmp eq i32 %1, 0                        ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @je_b0get() #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !195
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !198, !range !124, !noundef !125
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = tail call ptr @je_base_new(ptr noundef %0, i32 noundef %1, ptr noundef %i.c, i1 noundef zeroext %i.f) #15 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %post_reentrancy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.054 = phi ptr [ %i.b, %bb.b ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = load i32, ptr @nbins_total, align 4, !tbaa !7
  %i.j = zext i32 %i.i to i64
  %i.k = mul nuw nsw i64 %i.j, 224
  %i.l = add nuw nsw i64 %i.k, 78952
  %i.m = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %.054, i64 noundef %i.l, i64 noundef 64) #15 ; 20 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit, label %atomic_store_u.exit68

atomic_store_u.exit68:                            ; preds = %bb.d
  store atomic i32 0, ptr %i.m monotonic, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store atomic i32 0, ptr %i.o monotonic, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !199
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 10392
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 10408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.s = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.3, i32 noundef 15, i32 noundef 0) #15
  br i1 %i.s, label %.loopexit, label %atomic_store_u.exit66

atomic_store_u.exit66:                            ; preds = %atomic_store_u.exit68
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 10520
  %i.u = tail call i32 @je_extent_dss_prec_get() #15
  store atomic i32 %i.u, ptr %i.t monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 10528
  store ptr null, ptr %i.v, align 8, !tbaa !136
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 10536
  %i.x = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.4, i32 noundef 24, i32 noundef 0) #15
  br i1 %i.x, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %atomic_store_u.exit66
  call void @je_nstime_init_update(ptr noundef nonnull %3) #15
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 10648 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.aa = load i64, ptr @je_oversize_threshold, align 8, !tbaa !14
  %i.ab = load atomic i64, ptr @dirty_decay_ms_default.0 monotonic, align 8
  %i.ac = load atomic i64, ptr @muzzy_decay_ms_default.0 monotonic, align 8
  %i.ad = call zeroext i1 @je_pa_shard_init(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef nonnull @je_arena_pa_central_global, ptr noundef nonnull @je_arena_emap_global, ptr noundef %.054, i32 noundef %1, ptr noundef nonnull %i.z, ptr noundef null, ptr noundef nonnull %3, i64 noundef %i.aa, i64 noundef %i.ab, i64 noundef %i.ac) #15
  br i1 %i.ad, label %.loopexit, label %atomic_store_u.exit

atomic_store_u.exit:                              ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store atomic i32 0, ptr %i.ae release, align 8
  %i.af = load i32, ptr @nbins_total, align 4, !tbaa !7
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %atomic_store_u.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 78952
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr @nbins_total, align 4, !tbaa !7
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp samesign ult i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.g, label %._crit_edge, !llvm.loop !200

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [224 x i8], ptr %i.ag, i64 %indvars.iv
  %i.al = call zeroext i1 @je_bin_init(ptr noundef nonnull %i.ak) #15
  br i1 %i.al, label %.loopexit, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %atomic_store_u.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 78936
  store ptr %.054, ptr %i.am, align 8, !tbaa !16
  call void @je_arena_set(i32 noundef %1, ptr noundef nonnull %i.m) #15
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 78928
  store i32 %1, ptr %i.an, align 8, !tbaa !126
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 78944
  call void @je_nstime_init_update(ptr noundef nonnull %i.ao) #15
  %i.ap = load i8, ptr @je_opt_hpa, align 1, !tbaa !129, !range !124, !noundef !125
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %i.ar = call ptr @je_base_ehooks_get(ptr noundef %.054) #15
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load atomic ptr, ptr %i.as acquire, align 8
  %i.au = icmp eq ptr %i.at, @je_ehooks_default_extent_hooks
  %i.av = icmp ne i32 %1, 0
  %or.cond = and i1 %i.av, %i.au
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) @je_opt_hpa_opts, i64 40, i1 false), !tbaa.struct !201
  %i.aw = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !124, !noundef !125
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 %i.aw, ptr %i.ax, align 4, !tbaa !202
  %i.ay = call zeroext i1 @je_pa_shard_enable_hpa(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef nonnull %4, ptr noundef nonnull @je_opt_hpa_sec_opts) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %i.ay, label %.thread71, label %.thread

bb.j:                                             ; preds = %bb.h, %._crit_edge
  br i1 %i.a, label %post_reentrancy.exit, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !131
  %i.bb = icmp eq i8 %i.ba, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !131
  %i.be = add i8 %i.bd, 1
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !131
  br i1 %i.bb, label %bb.k, label %pre_reentrancy.exit

bb.k:                                             ; preds = %.thread
  call void @je_tsd_slow_update(ptr noundef nonnull %0) #15
  br label %pre_reentrancy.exit

pre_reentrancy.exit:                              ; preds = %.thread, %bb.k
  %i.bf = load ptr, ptr @je_test_hooks_arena_new_hook, align 8, !tbaa !116 ; 2 uses
  %.not62 = icmp eq ptr %i.bf, null
  br i1 %.not62, label %bb.m, label %bb.l

bb.l:                                             ; preds = %pre_reentrancy.exit
  call void (...) %i.bf() #15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %pre_reentrancy.exit
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !131
  %i.bh = add i8 %i.bg, -1                        ; 2 uses
  store i8 %i.bh, ptr %i.bc, align 1, !tbaa !131
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %post_reentrancy.exit

bb.n:                                             ; preds = %bb.m
  call void @je_tsd_slow_update(ptr noundef nonnull %0) #15
  br label %post_reentrancy.exit

.loopexit:                                        ; preds = %bb.g, %bb.e, %atomic_store_u.exit66, %atomic_store_u.exit68, %bb.d
  br i1 %i.a, label %post_reentrancy.exit, label %.thread71

.thread71:                                        ; preds = %bb.i, %.loopexit
  call void @je_base_delete(ptr noundef %0, ptr noundef %.054) #15
  br label %post_reentrancy.exit

post_reentrancy.exit:                             ; preds = %bb.n, %bb.m, %bb.j, %.thread71, %.loopexit, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %i.m, %bb.j ], [ null, %.loopexit ], [ null, %.thread71 ], [ %i.m, %bb.m ], [ %i.m, %bb.n ]
  ret ptr %.1
}

declare ptr @je_b0get() local_unnamed_addr #2

declare ptr @je_base_new(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @je_base_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @je_extent_dss_prec_get() local_unnamed_addr #2

declare void @je_nstime_init_update(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @je_pa_shard_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @je_bin_init(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @je_pa_shard_enable_hpa(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_choose_huge(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @huge_arena_ind, align 4, !tbaa !7
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.b
  %i.d = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %arena_get.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @huge_arena_ind, align 4, !tbaa !7 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.g
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %arena_get.exit14, label %arena_get.exit14.thread, !prof !132

arena_get.exit14:                                 ; preds = %bb.b
  %i.k = tail call ptr @je_arena_init(ptr noundef %0, i32 noundef %i.f, ptr noundef nonnull @je_arena_config_default) #15 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %arena_get.exit, label %arena_get.exit14.thread

arena_get.exit14.thread:                          ; preds = %bb.b, %arena_get.exit14
  %.0.i1318 = phi ptr [ %i.k, %arena_get.exit14 ], [ %i.i, %bb.b ] ; 4 uses
  %i.m = load atomic i64, ptr @dirty_decay_ms_default.0 monotonic, align 8
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %arena_get.exit14.thread
  %i.o = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !124, !noundef !125
  %i.p = trunc nuw i8 %i.o to i1
  %..i.i = select i1 %i.p, i32 1, i32 2
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i1318, i64 10648
  %i.r = tail call zeroext i1 @je_pa_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.q, i32 noundef 1, i64 noundef 0, i32 noundef %..i.i) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %arena_get.exit14.thread
  %i.s = load atomic i64, ptr @muzzy_decay_ms_default.0 monotonic, align 8
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %arena_get.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !124, !noundef !125
  %i.v = trunc nuw i8 %i.u to i1
  %..i.i15 = select i1 %i.v, i32 1, i32 2
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i1318, i64 10648
  %i.x = tail call zeroext i1 @je_pa_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.w, i32 noundef 2, i64 noundef 0, i32 noundef %..i.i15) #15 ; 0 uses
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %bb.a, %bb.e, %bb.d, %arena_get.exit14
  %.010 = phi ptr [ null, %arena_get.exit14 ], [ %.0.i1318, %bb.e ], [ %.0.i1318, %bb.d ], [ %i.d, %bb.a ]
  ret ptr %.010
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_arena_init_huge() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @je_opt_oversize_threshold, align 8, !tbaa !14
  %i.b = add i64 %i.a, -16384
  %or.cond = icmp ult i64 %i.b, 8070450532247912449 ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr @je_opt_oversize_threshold, align 8, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @je_narenas_total_get() #15
  store i32 %i.c, ptr @huge_arena_ind, align 4, !tbaa !7
  %i.d = load i64, ptr @je_opt_oversize_threshold, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ %i.d, %bb.c ], [ 8070450532247932928, %bb.b ]
  store i64 %storemerge, ptr @je_oversize_threshold, align 8, !tbaa !14
  ret i1 %or.cond
}

declare i32 @je_narenas_total_get() local_unnamed_addr #2

end_hunk_4
begin_hunk_5_@je_arena_boot:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !117 ; 2 uses
  %i.ae = add i32 %i.x, %i.ad
  %i.af = mul i32 %i.ad, 224
  %i.ag = add i32 %i.af, %i.z                     ; 2 uses
  %indvars.iv.next27.1 = add nuw nsw i64 %indvars.iv26, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %indvars.iv.next27.1
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !7
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %indvars.iv.next27.1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !117 ; 2 uses
  %i.al = add i32 %i.ae, %i.ak                    ; 2 uses
  %i.am = mul i32 %i.ak, 224
  %i.an = add i32 %i.am, %i.ag
  %indvars.iv.next27.2 = add nuw nsw i64 %indvars.iv26, 3 ; 2 uses
  %exitcond29.not.2 = icmp eq i64 %indvars.iv.next27.2, 39
  br i1 %exitcond29.not.2, label %bb.c, label %bb.d, !llvm.loop !208
}

declare void @je_div_init(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @je_pa_central_init(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_prefork0(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10648
  tail call void @je_pa_shard_prefork0(ptr noundef %0, ptr noundef nonnull %i.a) #15
  ret void
}

declare void @je_pa_shard_prefork0(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_prefork1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10408
  tail call void @je_malloc_mutex_prefork(ptr noundef %0, ptr noundef nonnull %i.a) #15
  ret void
}

declare void @je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_prefork2(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10648
  tail call void @je_pa_shard_prefork2(ptr noundef %0, ptr noundef nonnull %i.a) #15
  ret void
}

declare void @je_pa_shard_prefork2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_prefork3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10648
  tail call void @je_pa_shard_prefork3(ptr noundef %0, ptr noundef nonnull %i.a) #15
  ret void
}

declare void @je_pa_shard_prefork3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_prefork4(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10648
  tail call void @je_pa_shard_prefork4(ptr noundef %0, ptr noundef nonnull %i.a) #15
  ret void
}

declare void @je_pa_shard_prefork4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_prefork5(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10648
  tail call void @je_pa_shard_prefork5(ptr noundef %0, ptr noundef nonnull %i.a) #15
  ret void
}

declare void @je_pa_shard_prefork5(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_prefork6(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 78936
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  tail call void @je_base_prefork(ptr noundef %0, ptr noundef %i.b) #15
  ret void
}

declare void @je_base_prefork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_prefork7(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10536
  tail call void @je_malloc_mutex_prefork(ptr noundef %0, ptr noundef nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_prefork8(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nbins_total, align 4, !tbaa !7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 78952
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [224 x i8], ptr %i.b, i64 %indvars.iv
  tail call void @je_bin_prefork(ptr noundef %0, ptr noundef nonnull %i.c) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.d = load i32, ptr @nbins_total, align 4, !tbaa !7
  %i.e = zext i32 %i.d to i64
  %i.f = icmp samesign ult i64 %indvars.iv.next, %i.e
  br i1 %i.f, label %bb.b, label %._crit_edge, !llvm.loop !209
}

declare void @je_bin_prefork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_postfork_parent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nbins_total, align 4, !tbaa !7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 78952
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10536
  tail call void @je_malloc_mutex_postfork_parent(ptr noundef %0, ptr noundef nonnull %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 78936
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  tail call void @je_base_postfork_parent(ptr noundef %0, ptr noundef %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 10648
  tail call void @je_pa_shard_postfork_parent(ptr noundef %0, ptr noundef nonnull %i.f) #15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 10408
  tail call void @je_malloc_mutex_postfork_parent(ptr noundef %0, ptr noundef nonnull %i.g) #15
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [224 x i8], ptr %i.b, i64 %indvars.iv
  tail call void @je_bin_postfork_parent(ptr noundef %0, ptr noundef nonnull %i.h) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr @nbins_total, align 4, !tbaa !7
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !210
}

declare void @je_bin_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_base_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_pa_shard_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_arena_postfork_child(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
atomic_store_u.exit:
  store atomic i32 0, ptr %1 monotonic, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store atomic i32 0, ptr %i.a monotonic, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !160
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %bb.a, label %bb.b

bb.a:                                             ; preds = %atomic_store_u.exit
  %i.e = atomicrmw add ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %atomic_store_u.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10392 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = load i8, ptr %0, align 8, !tbaa !129, !range !124, !noundef !125
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %tcache_slow_get.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !211
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %bb.f, label %tcache_slow_get.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !215
  store ptr %i.q, ptr %i.q, align 8, !tbaa !216
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.q, ptr %i.t, align 8, !tbaa !217
  store ptr %i.q, ptr %i.j, align 8, !tbaa !218
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %i.u, align 8, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.u, ptr %i.w, align 8, !tbaa !219
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.v, ptr %i.x, align 8, !tbaa !81
  store ptr %i.u, ptr %i.k, align 8, !tbaa !78
  br label %tcache_slow_get.exit.thread

tcache_slow_get.exit.thread:                      ; preds = %bb.d, %bb.f, %bb.e
  %i.y = load i32, ptr @nbins_total, align 4, !tbaa !7
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %tcache_slow_get.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 78952
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %tcache_slow_get.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 10536
  tail call void @je_malloc_mutex_postfork_child(ptr noundef nonnull %0, ptr noundef nonnull %i.aa) #15
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 78936
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  tail call void @je_base_postfork_child(ptr noundef nonnull %0, ptr noundef %i.ac) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10648
  tail call void @je_pa_shard_postfork_child(ptr noundef nonnull %0, ptr noundef nonnull %i.ad) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 10408
  tail call void @je_malloc_mutex_postfork_child(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) #15
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.af = getelementptr inbounds nuw [224 x i8], ptr %i.z, i64 %indvars.iv
  tail call void @je_bin_postfork_child(ptr noundef nonnull %0, ptr noundef nonnull %i.af) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr @nbins_total, align 4, !tbaa !7
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.g, label %._crit_edge, !llvm.loop !220
}

declare void @je_bin_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_base_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_pa_shard_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

declare void @je_nstime_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @je_nstime_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_maybe_do_deferred_work(ptr noundef %0, i32 %.78928.val, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.nstime_t, align 8           ; 5 uses
  %i.a = load ptr, ptr @je_background_thread_info, align 8, !tbaa !127
  %i.b = zext i32 %.78928.val to i64
  %i.c = load i64, ptr @je_max_background_threads, align 8, !tbaa !14
  %i.d = urem i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw [208 x i8], ptr %i.a, i64 %i.d ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.f) #15
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %malloc_mutex_trylock.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !74
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.l, %0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !77
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !77
  br label %bb.d

malloc_mutex_trylock.exit:                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store atomic i8 1, ptr %i.p monotonic, align 1
  br label %bb.q

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.q = tail call zeroext i1 @je_background_thread_is_started(ptr noundef nonnull %i.e) #15
  br i1 %i.q, label %bb.e, label %arena_should_decay_early.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 172
  %i.s = load atomic i8, ptr %i.r acquire, align 4, !range !124, !noundef !125
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @je_background_thread_wakeup_early(ptr noundef nonnull %i.e, ptr noundef null) #15
  br label %arena_should_decay_early.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.v = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.u) #15
  %.not1.i = icmp eq i32 %i.v, 0
  br i1 %.not1.i, label %bb.h, label %malloc_mutex_trylock.exit.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !74
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.aa, %0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %0, ptr %i.z, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !77
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !77
  br label %bb.j

malloc_mutex_trylock.exit.i:                      ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  store atomic i8 1, ptr %i.ae monotonic, align 1
  br label %arena_should_decay_early.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ag = load atomic i64, ptr %i.af monotonic, align 8
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104
  store atomic i8 0, ptr %i.ai monotonic, align 8
  %i.aj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.u) #15 ; 0 uses
  br label %arena_should_decay_early.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.al = tail call i64 @je_nstime_ns(ptr noundef nonnull %i.ak) #15
  call void @je_nstime_init(ptr noundef nonnull %3, i64 noundef %i.al) #15
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.an = call i32 @je_nstime_compare(ptr noundef nonnull %3, ptr noundef nonnull %i.am) #15
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 104
  store atomic i8 0, ptr %i.ap monotonic, align 8
  %i.aq = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.u) #15 ; 0 uses
  br label %arena_should_decay_early.exit.thread

bb.n:                                             ; preds = %bb.l
  call void @je_nstime_subtract(ptr noundef nonnull %3, ptr noundef nonnull %i.am) #15
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %arena_should_decay_early.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = call i64 @je_decay_npages_purge_in(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef %2) #15
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !221
  %i.au = add i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.as, align 8, !tbaa !221
  br label %arena_should_decay_early.exit

arena_should_decay_early.exit:                    ; preds = %bb.n, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 104
  store atomic i8 0, ptr %i.av monotonic, align 8
  %i.aw = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.u) #15 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !221
  %i.az = icmp ugt i64 %i.ay, 1024
  br i1 %i.az, label %bb.p, label %arena_should_decay_early.exit.thread

bb.p:                                             ; preds = %arena_should_decay_early.exit
  store i64 0, ptr %i.ax, align 8, !tbaa !221
  call void @je_background_thread_wakeup_early(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #15
  br label %arena_should_decay_early.exit.thread

arena_should_decay_early.exit.thread:             ; preds = %malloc_mutex_trylock.exit.i, %bb.m, %bb.k, %bb.f, %bb.p, %arena_should_decay_early.exit, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store atomic i8 0, ptr %i.ba monotonic, align 8
  %i.bb = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #15 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %malloc_mutex_trylock.exit, %arena_should_decay_early.exit.thread
  ret void
}

declare zeroext i1 @je_background_thread_is_started(ptr noundef) local_unnamed_addr #2

declare void @je_background_thread_wakeup_early(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_nstime_init(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @je_decay_npages_purge_in(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @je_nstime_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @arena_decay_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #15
  %.not.i = icmp eq i32 %i.b, 0                   ; 2 uses
  br i1 %6, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %2) #15
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 104
  store atomic i8 1, ptr %i.c monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.h, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.g, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !77
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 10672
  tail call void @je_pac_decay_all(ptr noundef %0, ptr noundef nonnull %i.l, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext true) #15
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 104
  store atomic i8 0, ptr %i.m monotonic, align 8
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #15 ; 0 uses
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %malloc_mutex_trylock.exit

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !74
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76
  %.not.i.i36 = icmp eq ptr %i.s, %0
  br i1 %.not.i.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.r, align 8, !tbaa !76
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !77
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !77
  br label %bb.i

malloc_mutex_trylock.exit:                        ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 104
  store atomic i8 1, ptr %i.w monotonic, align 1
  br label %bb.n

bb.i:                                             ; preds = %bb.g, %bb.h
  br i1 %5, label %arena_decide_unforced_purge_eagerness.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !124, !noundef !125
  %i.y = trunc nuw i8 %i.x to i1
  %..i = select i1 %i.y, i32 1, i32 2
  br label %arena_decide_unforced_purge_eagerness.exit

arena_decide_unforced_purge_eagerness.exit:       ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %..i, %bb.j ], [ 0, %bb.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 10672
  %i.aa = tail call zeroext i1 @je_pac_maybe_decay_purge(ptr noundef %0, ptr noundef nonnull %i.z, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef %.0.i) #15 ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %arena_decide_unforced_purge_eagerness.exit
  %i.ab = getelementptr i8, ptr %2, i64 1768
  %.val = load i64, ptr %i.ab, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %arena_decide_unforced_purge_eagerness.exit
  %.0 = phi i64 [ %.val, %bb.k ], [ undef, %arena_decide_unforced_purge_eagerness.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 104
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.ae = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !124, !noundef !125
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond = and i1 %i.aa, %i.af
  %or.cond.not = xor i1 %or.cond, true
  %or.cond3 = or i1 %5, %or.cond.not
  br i1 %or.cond3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr i8, ptr %1, i64 78928
  %.val35 = load i32, ptr %i.ag, align 8, !tbaa !126
  tail call fastcc void @arena_maybe_do_deferred_work(ptr noundef %0, i32 %.val35, ptr noundef nonnull %2, i64 noundef %.0)
  br label %bb.n

bb.n:                                             ; preds = %malloc_mutex_trylock.exit, %bb.l, %bb.m, %malloc_mutex_lock.exit
  %.033 = phi i1 [ false, %malloc_mutex_lock.exit ], [ true, %malloc_mutex_trylock.exit ], [ false, %bb.m ], [ false, %bb.l ]
  ret i1 %.033
}

declare void @je_pac_decay_all(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @je_pac_maybe_decay_purge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @je_pac_decay_ms_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @je_eset_npages_get(ptr noundef) local_unnamed_addr #2

declare void @je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #2

declare ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @je_edata_heap_remove_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_prepare_base_deletion_sync(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.g, %0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.f, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !77
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  store atomic i8 0, ptr %i.k monotonic, align 8
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #15 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  store atomic i8 1, ptr %i.m monotonic, align 1
  %i.n = load i32, ptr %3, align 4, !tbaa !7      ; 2 uses
  %i.o = add i32 %i.n, 1                          ; 2 uses
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  store ptr %1, ptr %i.q, align 8, !tbaa !157
  %i.r = icmp eq i32 %i.o, 32
  br i1 %i.r, label %.lr.ph.i, label %arena_prepare_base_deletion_sync_finish.exit

.lr.ph.i:                                         ; preds = %bb.e, %malloc_mutex_lock.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %malloc_mutex_lock.exit.i ], [ 0, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !157  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.u) #15
  %.not.i.i14 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.t) #15
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store atomic i8 1, ptr %i.w monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !74
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.ab, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.aa, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !157 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store atomic i8 0, ptr %i.ag monotonic, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ah) #15 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %arena_prepare_base_deletion_sync_finish.exit, label %.lr.ph.i, !llvm.loop !158

arena_prepare_base_deletion_sync_finish.exit:     ; preds = %malloc_mutex_lock.exit.i, %bb.e
  %.0 = phi i32 [ %i.o, %bb.e ], [ 0, %malloc_mutex_lock.exit.i ]
  store i32 %.0, ptr %3, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %arena_prepare_base_deletion_sync_finish.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

declare void @je_bitmap_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #13 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !131
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !132

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #15
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !160  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.k, !prof !132

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #15 ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !129, !range !124, !noundef !125
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !211  ; 2 uses
  %.not43.i = icmp eq ptr %i.p, null
  br i1 %.not43.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not44.i = icmp eq ptr %i.p, %i.j
  br i1 %.not44.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #15
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.037.i = phi ptr [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.037.i, i64 78928 ; 2 uses
  %.037.val48.i = load i32, ptr %i.s, align 8, !tbaa !126
  %i.t = icmp eq i32 %i.q, 4
  %i.u = load i32, ptr @je_ncpus, align 4         ; 4 uses
  %i.v = icmp ugt i32 %i.u, 1
  %or.cond.i.i = and i1 %i.t, %i.v
  %i.w = and i32 %i.u, 1
  %i.x = lshr i32 %i.u, 1
  %spec.select.i = add nuw i32 %i.x, %i.w
  %.0.i.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.y = icmp ult i32 %.037.val48.i, %.0.i.i
  br i1 %i.y, label %bb.l, label %arena_choose_impl.exit

bb.l:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !199
  %.not45.i = icmp eq ptr %i.aa, %0
  br i1 %.not45.i, label %arena_choose_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i32 @sched_getcpu() #15       ; 3 uses
  %i.ac = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %percpu_arena_choose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr @je_ncpus, align 4, !tbaa !7
  %i.af = lshr i32 %i.ae, 1                       ; 2 uses
  %i.ag = icmp ult i32 %i.ab, %i.af
  %i.ah = select i1 %i.ag, i32 0, i32 %i.af
  %spec.select.i.i = sub nuw i32 %i.ab, %i.ah
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i47.i = phi i32 [ %i.ab, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 4 uses
  %.037.val.i = load i32, ptr %i.s, align 8, !tbaa !126
  %.not46.i = icmp eq i32 %.037.val.i, %.0.i47.i
  br i1 %.not46.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !160 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 78928
  %.val.i.i = load i32, ptr %i.aj, align 8, !tbaa !126
  %.not.i50.i = icmp eq i32 %.val.i.i, %.0.i47.i
  br i1 %.not.i50.i, label %percpu_arena_update.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = zext i32 %.0.i47.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ak
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.q, label %arena_get.exit.i.i, !prof !132

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i47.i, ptr noundef nonnull @je_arena_config_default) #15
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.q, %bb.p
  %.0.i18.i.i = phi ptr [ %i.ao, %bb.q ], [ %i.am, %bb.p ] ; 2 uses
  tail call void @je_arena_migrate(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, ptr noundef %.0.i18.i.i) #15
  %i.ap = load i8, ptr %0, align 8, !tbaa !129, !range !124, !noundef !125
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.r, label %percpu_arena_update.exit.i

bb.r:                                             ; preds = %arena_get.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ar, ptr noundef %.0.i18.i.i) #15
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.r, %arena_get.exit.i.i, %bb.o
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !160
  br label %bb.s

bb.s:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.at, %percpu_arena_update.exit.i ], [ %.037.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.au, align 8, !tbaa !199
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.k, %percpu_arena_ind_limit.exit.i, %bb.l, %bb.s
  %.0.i = phi ptr [ %1, %bb.a ], [ %.037.i, %percpu_arena_ind_limit.exit.i ], [ %.037.i, %bb.k ], [ %.1.i, %bb.s ], [ %.037.i, %bb.l ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.0.i
}

declare ptr @je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @je_tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #10

declare void @je_arena_migrate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @arena_bin_malloc_no_fresh_slab(ptr noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %arena_bin_slabs_full_insert.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.b, align 8, !tbaa !135
  %i.d = and i64 %.val, 274609471488
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 78928
  %.val.i = load i32, ptr %i.f, align 8, !tbaa !126
  %i.g = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.h = icmp ult i32 %.val.i, %i.g
  br i1 %i.h, label %arena_bin_slabs_full_insert.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !131
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  store ptr %i.b, ptr %i.k, align 8, !tbaa !131
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !136  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %edata_list_active_append.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !131
  store ptr %i.o, ptr %i.j, align 8, !tbaa !131
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !136
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.b, ptr %i.q, align 8, !tbaa !131
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !131
  store ptr %i.t, ptr %i.k, align 8, !tbaa !131
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !136  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr %i.u, ptr %i.x, align 8, !tbaa !131
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.b, ptr %i.z, align 8, !tbaa !131
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !131
  br label %edata_list_active_append.exit.i.i

edata_list_active_append.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.aa = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.b, %bb.d ]
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !136
  br label %arena_bin_slabs_full_insert.exit.i

arena_bin_slabs_full_insert.exit.i:               ; preds = %bb.a, %edata_list_active_append.exit.i.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ac = tail call ptr @je_edata_heap_remove_first(ptr noundef nonnull %i.ab) #15 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %arena_bin_refill_slabcur_no_fresh_slab.exit.thread, label %arena_bin_refill_slabcur_no_fresh_slab.exit

arena_bin_refill_slabcur_no_fresh_slab.exit.thread: ; preds = %arena_bin_slabs_full_insert.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !146
  br label %bb.g

arena_bin_refill_slabcur_no_fresh_slab.exit:      ; preds = %arena_bin_slabs_full_insert.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !166
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !166
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !167
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !167
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !146
  br label %bb.f

bb.f:                                             ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit, %bb.b
  %i.ak = phi ptr [ %i.ac, %arena_bin_refill_slabcur_no_fresh_slab.exit ], [ %i.b, %bb.b ] ; 4 uses
  %i.al = zext i32 %2 to i64
  %i.am = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 3 uses
  %.0101.i.i = load i64, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ao = icmp eq i64 %.0101.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i, label %arena_slab_reg_alloc.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.02.i.i = phi i32 [ %i.ap, %.lr.ph.i.i ], [ 0, %bb.f ]
  %i.ap = add i32 %.02.i.i, 1                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq
  %.010.i.i = load i64, ptr %i.ar, align 8, !tbaa !14 ; 2 uses
  %i.as = icmp eq i64 %.010.i.i, 0
  br i1 %i.as, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !181

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.at = shl i32 %i.ap, 6
  br label %arena_slab_reg_alloc.exit

arena_slab_reg_alloc.exit:                        ; preds = %bb.f, %._crit_edge.loopexit.i.i
  %.0.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.at, %._crit_edge.loopexit.i.i ]
  %.010.lcssa.i.i = phi i64 [ %.0101.i.i, %bb.f ], [ %.010.i.i, %._crit_edge.loopexit.i.i ]
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.010.lcssa.i.i, i1 true)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = or disjoint i32 %.0.lcssa.i.i, %i.av
  %i.ax = zext i32 %i.aw to i64                   ; 3 uses
  %i.ay = lshr i64 %i.ax, 6
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !14
  %i.bb = and i64 %i.ax, 63
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = xor i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.az, align 8, !tbaa !14
  %i.be = getelementptr i8, ptr %i.ak, i64 8
  %.val.i10 = load ptr, ptr %i.be, align 8, !tbaa !133
  %i.bf = ptrtoint ptr %.val.i10 to i64
  %i.bg = load i64, ptr %i.am, align 8, !tbaa !163
  %i.bh = mul i64 %i.bg, %i.ax
  %i.bi = add i64 %i.bh, %i.bf
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load i64, ptr %i.ak, align 8, !tbaa !135
  %i.bl = add i64 %i.bk, -268435456
  store i64 %i.bl, ptr %i.ak, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit.thread, %arena_slab_reg_alloc.exit
  %.0 = phi ptr [ %i.bj, %arena_slab_reg_alloc.exit ], [ null, %arena_bin_refill_slabcur_no_fresh_slab.exit.thread ]
  ret ptr %.0
}

declare void @je_tcache_bin_flush_stashed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @je_tcache_alloc_small_hard(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #13 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !137  ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !137
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !130

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !137
end_hunk_5
