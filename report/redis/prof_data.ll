Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/prof_data?download=true
inline.NumInlined: 156
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.mutex_prof_data_t, %union.pthread_mutex_t, %struct.atomic_b_t }
%struct.mutex_prof_data_t = type { %struct.nstime_t, %struct.nstime_t, i64, i64, i32, %struct.atomic_u32_t, i64, ptr, i64 }
%struct.nstime_t = type { i64 }
%struct.atomic_u32_t = type { i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.atomic_b_t = type { i8 }
%struct.emap_s = type { %struct.rtree_s }
%struct.rtree_s = type { ptr, %struct.malloc_mutex_s, [262144 x %struct.rtree_node_elm_s] }
%struct.rtree_node_elm_s = type { %struct.atomic_p_t }
%struct.atomic_p_t = type { ptr }
%struct.tsd_s = type { i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, %struct.ticker_geom_s, i8, %struct.tsd_binshards_s, %struct.tsd_link_t, i8, %struct.peak_s, %struct.activity_callback_thunk_s, %struct.tcache_slow_s, %struct.rtree_ctx_s, %struct.atomic_u8_t, i64, i64, i64, i64, %struct.tcache_s, %struct.witness_tsd_s }
%struct.ticker_geom_s = type { i32, i32 }
%struct.tsd_binshards_s = type { [39 x i8] }
%struct.tsd_link_t = type { ptr, ptr }
%struct.peak_s = type { i64, i64 }
%struct.activity_callback_thunk_s = type { ptr, ptr }
%struct.tcache_slow_s = type { %struct.anon.5, %struct.cache_bin_array_descriptor_s, ptr, i32, [39 x i8], [39 x i8], [39 x i8], ptr, ptr }
%struct.anon.5 = type { ptr, ptr }
%struct.cache_bin_array_descriptor_s = type { %struct.anon.6, ptr }
%struct.anon.6 = type { ptr, ptr }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }
%struct.atomic_u8_t = type { i8 }
%struct.tcache_s = type { ptr, [76 x %struct.cache_bin_s] }
%struct.cache_bin_s = type { ptr, %struct.cache_bin_stats_s, i16, i16, i16 }
%struct.cache_bin_stats_s = type { i64 }
%struct.witness_tsd_s = type { %struct.witness_list_t, i8 }
%struct.witness_list_t = type { ptr }
%struct.arena_config_s = type { ptr, i8 }
%struct.rtree_contents_s = type { ptr, %struct.rtree_metadata_s }
%struct.rtree_metadata_s = type { i32, i32, i8, i8 }
%struct.tdata_tree_path_entry_t = type { ptr, i32 }
%struct.tctx_tree_path_entry_t = type { ptr, i32 }

@tdatas = internal global %struct.prof_tdata_tree_t zeroinitializer, align 8, !guid !11
@bt2gctx = internal global %struct.ckh_t zeroinitializer, align 8, !guid !12
@je_tdatas_mtx = hidden global %struct.malloc_mutex_s zeroinitializer, align 8, !guid !13
@je_bt2gctx_mtx = hidden local_unnamed_addr global %struct.malloc_mutex_s zeroinitializer, align 8, !guid !14
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !15
@je_prof_dump_mtx = hidden global %struct.malloc_mutex_s zeroinitializer, align 8, !guid !16
@je_gctx_locks = hidden local_unnamed_addr global ptr null, align 8, !guid !17
@je_tdata_locks = hidden local_unnamed_addr global ptr null, align 8, !guid !18
@je_prof_unbiased_sz = hidden local_unnamed_addr global [1 x i64] zeroinitializer, align 8, !guid !19
@je_prof_shifted_unbiased_cnt = hidden local_unnamed_addr global [1 x i64] zeroinitializer, align 8, !guid !20
@je_sz_index2size_tab = external local_unnamed_addr global [235 x i64], align 16
@je_sz_size2index_tab = external local_unnamed_addr global [0 x i8], align 1
@je_arena_emap_global = external global %struct.emap_s, align 8
@je_arenas = external local_unnamed_addr global [0 x %struct.atomic_p_t], align 8
@je_tsd_booted = external local_unnamed_addr global i8, align 1
@je_tsd_tls = external thread_local(initialexec) global %struct.tsd_s, align 8
@je_arena_config_default = external constant %struct.arena_config_s, align 8
@je_opt_prof_accum = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_prof_data_init(ptr noundef %0) local_unnamed_addr #0 !guid !63 {
bb.a:
  store ptr null, ptr @tdatas, align 8, !tbaa !24
  %i.a = tail call zeroext i1 @je_ckh_new(ptr noundef %0, ptr noundef nonnull @bt2gctx, i64 noundef 64, ptr noundef nonnull @je_prof_bt_hash, ptr noundef nonnull @je_prof_bt_keycomp) #11
  ret i1 %i.a
}

declare zeroext i1 @je_ckh_new(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @je_prof_bt_hash(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #2 !guid !64 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @je_prof_bt_keycomp(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #2 !guid !65 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden noalias noundef nonnull ptr @je_prof_lookup(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #2 !guid !66 {
bb.a:
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define hidden i64 @je_prof_tdata_count() local_unnamed_addr #0 !guid !67 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !26
  %i.b = load i8, ptr @je_tsd_booted, align 1, !tbaa !28, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %tsdn_fetch.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load i8, ptr %i.e, align 8, !tbaa !31
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #11
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.g, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 64)) #11
  %.not.i3 = icmp eq i32 %i.h, 0
  br i1 %.not.i3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %tsdn_fetch.exit
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_tdatas_mtx) #11
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 104) monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %tsdn_fetch.exit
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 56), align 8, !tbaa !37
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 56), align 8, !tbaa !37
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 48), align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.k, %.0.i
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 48), align 8, !tbaa !38
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 40), align 8, !tbaa !39
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 40), align 8, !tbaa !39
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  %i.n = load ptr, ptr @tdatas, align 8, !tbaa !24
  %i.o = call fastcc ptr @tdata_tree_iter_recurse(ptr noundef %i.n, ptr noundef nonnull @prof_tdata_count_iter, ptr noundef nonnull %i.a) ; 0 uses
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 104) monotonic, align 8
  %i.p = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 64)) #11 ; 0 uses
  %i.q = load i64, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noalias noundef ptr @prof_tdata_count_iter(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2) #4 !guid !68 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !26
  %i.b = add i64 %i.a, 1
  store i64 %i.b, ptr %2, align 8, !tbaa !26
  ret ptr null
}

; Function Attrs: noreturn nounwind uwtable
define hidden noundef i64 @je_prof_bt_count() local_unnamed_addr #5 !guid !69 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls)
  %i.b = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #11 ; 0 uses
  unreachable
}

declare i64 @je_ckh_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden ptr @je_prof_thread_name_alloc(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 !guid !70 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %4 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %iallocztm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12 ; 4 uses
  %i.c = add i64 %i.b, 1                          ; 6 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %iallocztm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %i.c, 4097
  br i1 %i.e, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i64 %i.b, 8
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !31
  %i.j = zext i8 %i.i to i32
  br label %sz_size2index.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.c, 8070450532247928832
  br i1 %i.k, label %sz_size2index.exit, label %bb.f, !prof !40

bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw i64 %i.c, 1
  %i.m = add i64 %i.l, -1
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.m, i1 true) ; 2 uses
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = sub nuw nsw i64 60, %i.n
  %i.q = lshr i64 %i.b, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 3
  %i.t = shl nuw nsw i32 %i.o, 2
  %reass.sub = sub nsw i32 %i.s, %i.t
  %i.u = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i32 [ %i.j, %bb.d ], [ %i.u, %bb.f ], [ 235, %bb.e ] ; 2 uses
  %i.v = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %arena_get.exit, !prof !40

bb.g:                                             ; preds = %sz_size2index.exit
  %i.x = tail call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #11
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %sz_size2index.exit, %bb.g
  %.0.i18 = phi ptr [ %i.x, %bb.g ], [ %i.v, %sz_size2index.exit ] ; 2 uses
  %i.y = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.y, label %tsdn_witness_tsdp_get.exit.thread, label %tsdn_witness_tsdp_get.exit

tsdn_witness_tsdp_get.exit:                       ; preds = %arena_get.exit
  %i.z = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %0, ptr noundef %.0.i18, i64 noundef range(i64 2, 1) %i.c, i32 noundef range(i32 0, 256) %.0.i, i1 noundef zeroext false) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %iallocztm.exit.thread, label %bb.h, !prof !40

tsdn_witness_tsdp_get.exit.thread:                ; preds = %arena_get.exit
  %i.aa = tail call ptr @je_arena_malloc_hard(ptr noundef null, ptr noundef %.0.i18, i64 noundef range(i64 2, 1) %i.c, i32 noundef range(i32 0, 256) %.0.i, i1 noundef zeroext false) #11 ; 2 uses
  %.not.i19 = icmp eq ptr %i.aa, null
  br i1 %.not.i19, label %iallocztm.exit.thread, label %.thread, !prof !40

.thread:                                          ; preds = %tsdn_witness_tsdp_get.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #11
  br label %tsdn_rtree_ctx.exit

bb.h:                                             ; preds = %tsdn_witness_tsdp_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %.thread, %bb.h
  %i.ac = phi ptr [ %i.aa, %.thread ], [ %i.z, %bb.h ] ; 3 uses
  %.0.i16 = phi ptr [ %3, %.thread ], [ %i.ab, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ad = ptrtoint ptr %i.ac to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %0, ptr noundef nonnull %.0.i16, i64 noundef %i.ad)
  %i.ae = load ptr, ptr %4, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.val = load i64, ptr %i.ae, align 8, !tbaa !47
  %i.af = and i64 %.val, 4095
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.af
  %i.ah = load atomic ptr, ptr %i.ag monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  br i1 %i.y, label %bb.i, label %bb.j, !prof !40

bb.i:                                             ; preds = %tsdn_rtree_ctx.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #11
  br label %bb.k

bb.j:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %2, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.ad)
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.aj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.ak = and i64 %.fca.0.extract.i, 4294967295
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ao = atomicrmw add ptr %i.an, i64 %i.am monotonic, align 8 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %iallocztm.exit.thread

iallocztm.exit.thread:                            ; preds = %tsdn_witness_tsdp_get.exit, %tsdn_witness_tsdp_get.exit.thread, %bb.b, %bb.a, %bb.k
  %.0 = phi ptr [ %i.ac, %bb.k ], [ null, %bb.a ], [ @.str, %bb.b ], [ null, %tsdn_witness_tsdp_get.exit.thread ], [ null, %tsdn_witness_tsdp_get.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @je_prof_thread_name_set_impl(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #2 !guid !71 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @je_prof_unbias_map_init() local_unnamed_addr #2 !guid !72 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @je_prof_dump_impl(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #2 !guid !73 {
bb.a:
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @je_prof_cnt_all(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #5 !guid !74 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls)
  %i.b = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #11 ; 0 uses
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden noalias noundef nonnull ptr @je_prof_tdata_init_impl(ptr nofree noundef readnone captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readnone captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #2 !guid !75 {
bb.a:
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @je_prof_tdata_detach(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !76 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.b) #11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.a) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store atomic i8 1, ptr %i.d monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.i, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !39
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !55, !range !29, !noundef !30
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %.critedge

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = tail call i64 @je_ckh_count(ptr noundef nonnull %i.p) #11
  %.not4.i.i = icmp eq i64 %i.q, 0
  br i1 %.not4.i.i, label %.critedge13, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.m, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.r, align 8, !tbaa !77
  %i.s = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  store atomic i8 0, ptr %i.t monotonic, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  br label %bb.j

.critedge13:                                      ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.v, align 8, !tbaa !77
  %i.w = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  store atomic i8 0, ptr %i.x monotonic, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #11 ; 0 uses
  %i.aa = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 64)) #11
  %.not.i.i15 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge13
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_tdatas_mtx) #11
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 104) monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge13
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 56), align 8, !tbaa !37
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 56), align 8, !tbaa !37
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 48), align 8, !tbaa !38
  %.not.i.i.i = icmp eq ptr %i.ad, %0
end_hunk_0
