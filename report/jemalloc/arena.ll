Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/arena?download=true
inline.NumInlined: 328
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@je_arena_ralloc:bb.a
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef %0, ptr noundef nonnull %.0.i.i71, i64 noundef %i.ki)
  %i.kj = load ptr, ptr %11, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.kj) #19
  br label %arena_sdalloc.exit

arena_sdalloc.exit:                               ; preds = %sz_s2u_compute.exit25.i, %bb.bh, %sz_s2u.exit.i.i, %cache_bin_alloc_impl.exit35.i, %bb.aj, %sz_sa2u.exit.i, %sz_s2u_compute.exit64, %bb.m, %bb.d, %bb.bk, %bb.bp, %bb.bq, %cache_bin_dalloc_easy.exit23.i.thread, %bb.bo, %cache_bin_dalloc_easy.exit26.i.thread, %bb.bt, %cache_bin_dalloc_easy.exit26.i, %tsdn_rtree_ctx.exit.i, %bb.u, %arena_ralloc_move_helper.exit, %sz_s2u.exit, %bb.w
  %.2 = phi ptr [ %2, %bb.u ], [ %i.cb, %bb.w ], [ null, %sz_s2u.exit ], [ null, %sz_s2u_compute.exit64 ], [ null, %arena_ralloc_move_helper.exit ], [ %.0.i84, %bb.bk ], [ %.0.i84, %tsdn_rtree_ctx.exit.i ], [ %.0.i84, %cache_bin_dalloc_easy.exit26.i ], [ %.0.i84, %bb.bt ], [ %.0.i84, %cache_bin_dalloc_easy.exit26.i.thread ], [ %.0.i84, %bb.bo ], [ %.0.i84, %cache_bin_dalloc_easy.exit23.i.thread ], [ %.0.i84, %bb.bq ], [ %.0.i84, %bb.bp ], [ null, %bb.d ], [ null, %bb.m ], [ null, %sz_sa2u.exit.i ], [ null, %bb.aj ], [ null, %cache_bin_alloc_impl.exit35.i ], [ null, %sz_s2u.exit.i.i ], [ null, %bb.bh ], [ null, %sz_s2u_compute.exit25.i ]
  ret ptr %.2
}

declare void @je_hook_invoke_expand(i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @je_large_ralloc(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_hook_invoke_alloc(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @je_hook_invoke_dalloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @je_base_ehooks_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_set_extent_hooks(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 80640
  %.val = load i32, ptr %i.a, align 64, !tbaa !98
  %i.b = load ptr, ptr @je_background_thread_info, align 8, !tbaa !100
  %i.c = zext i32 %.val to i64
  %i.d = load i64, ptr @je_max_background_threads, align 8, !tbaa !18
  %i.e = urem i64 %i.c, %i.d
  %i.f = getelementptr inbounds nuw [208 x i8], ptr %i.b, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.h = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.g) #19
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.j) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %i.o, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.n, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !74
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12288
  tail call void @je_pa_shard_disable_hpa(ptr noundef %0, ptr noundef nonnull %i.s) #19
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80648
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70
  %i.v = tail call ptr @je_base_extent_hooks_set(ptr noundef %i.u, ptr noundef %2) #19
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store atomic i8 0, ptr %i.w monotonic, align 8
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #19 ; 0 uses
  ret ptr %i.v
}

declare void @je_pa_shard_disable_hpa(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @je_base_extent_hooks_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden noundef zeroext i1 @je_arena_dss_prec_set(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
atomic_store_u.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12104
  store atomic i32 %1, ptr %i.a release, align 4
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @je_arena_name_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80664 ; 3 uses
  %i.b = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 0, i64 noundef 32) #20
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %reass.sub = sub i64 %i.c, %i.d
  %i.e = add i64 %reass.sub, 1
  %i.f = tail call ptr @strncpy(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef %i.e) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @je_arena_name_set(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80664
  %i.b = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 32) #19 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80695
  store i8 0, ptr %i.c, align 1, !tbaa !103
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @je_arena_dirty_decay_ms_default_get() local_unnamed_addr #11 {
atomic_load_zd.exit:
  %i.a = load atomic i64, ptr @dirty_decay_ms_default.0 monotonic, align 8
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_arena_dirty_decay_ms_default_set(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @je_decay_ms_valid(i64 noundef %0) #19 ; 2 uses
  br i1 %i.a, label %atomic_store_zd.exit, label %bb.b

atomic_store_zd.exit:                             ; preds = %bb.a
  store atomic i64 %0, ptr @dirty_decay_ms_default.0 monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %atomic_store_zd.exit
  %.0 = xor i1 %i.a, true
  ret i1 %.0
}

declare zeroext i1 @je_decay_ms_valid(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @je_arena_muzzy_decay_ms_default_get() local_unnamed_addr #11 {
atomic_load_zd.exit:
  %i.a = load atomic i64, ptr @muzzy_decay_ms_default.0 monotonic, align 8
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_arena_muzzy_decay_ms_default_set(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @je_decay_ms_valid(i64 noundef %0) #19 ; 2 uses
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
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12312
  %i.b = tail call zeroext i1 @je_pac_retain_grow_limit_get_set(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %3) #19
  ret i1 %i.b
}

declare zeroext i1 @je_pac_retain_grow_limit_get_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @je_arena_nthreads_inc(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
atomic_fetch_add_u.exit:
  %i.a = zext i1 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = atomicrmw add ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @je_arena_nthreads_dec(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
atomic_fetch_sub_u.exit:
  %i.a = zext i1 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_new(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.nstime_t, align 8           ; 2 uses
  %4 = alloca %struct.hpa_shard_opts_s, align 8   ; 5 uses
  %5 = icmp eq i32 %1, 0                          ; 3 uses
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @je_b0get() #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !207
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !208, !range !96, !noundef !97
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = tail call ptr @je_base_new(ptr noundef %0, i32 noundef %1, ptr noundef %i.b, i1 noundef zeroext %i.e) #19 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %post_reentrancy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.059 = phi ptr [ %i.a, %bb.b ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = load i32, ptr @nbins_total, align 4, !tbaa !13
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.i, 224
  %i.k = add nuw nsw i64 %i.j, 80704
  %i.l = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %.059, i64 noundef %i.k, i64 noundef 64) #19 ; 22 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %atomic_store_u.exit72

atomic_store_u.exit72:                            ; preds = %bb.d
  store atomic i32 0, ptr %i.l monotonic, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store atomic i32 0, ptr %i.n monotonic, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr null, ptr %i.o, align 16, !tbaa !141
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 11976
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 11992
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.3, i32 noundef 15, i32 noundef 0) #19
  br i1 %i.r, label %.loopexit, label %atomic_store_u.exit70

atomic_store_u.exit70:                            ; preds = %atomic_store_u.exit72
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 12104
  %i.t = tail call i32 @je_extent_dss_prec_get() #19
  store atomic i32 %i.t, ptr %i.s monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 12112
  store ptr null, ptr %i.u, align 16, !tbaa !112
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 12120
  %i.w = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.4, i32 noundef 24, i32 noundef 0) #19
  br i1 %i.w, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %atomic_store_u.exit70
  call void @je_nstime_init_update(ptr noundef nonnull %3) #19
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 12288 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.z = load i64, ptr @je_oversize_threshold, align 8, !tbaa !18
  %i.aa = load atomic i64, ptr @dirty_decay_ms_default.0 monotonic, align 8
  %i.ab = load atomic i64, ptr @muzzy_decay_ms_default.0 monotonic, align 8
  %i.ac = call zeroext i1 @je_pa_shard_init(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef nonnull @arena_pa_central_global, ptr noundef nonnull @je_arena_emap_global, ptr noundef %.059, i32 noundef %1, ptr noundef nonnull %i.y, ptr noundef null, ptr noundef nonnull %3, i64 noundef %i.z, i64 noundef %i.aa, i64 noundef %i.ab) #19
  br i1 %i.ac, label %.loopexit, label %atomic_store_u.exit

atomic_store_u.exit:                              ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store atomic i32 0, ptr %i.ad release, align 8
  %i.ae = load i32, ptr @nbins_total, align 4, !tbaa !13
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %atomic_store_u.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 80704
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr @nbins_total, align 4, !tbaa !13
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.g, label %._crit_edge, !llvm.loop !204

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [224 x i8], ptr %i.af, i64 %indvars.iv
  %i.ak = call zeroext i1 @je_bin_init(ptr noundef nonnull %i.aj) #19
  br i1 %i.ak, label %.loopexit, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %atomic_store_u.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 80648
  store ptr %.059, ptr %i.al, align 8, !tbaa !70
  call void @je_arena_set(i32 noundef %1, ptr noundef nonnull %i.l) #19
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 80640
  store i32 %1, ptr %i.am, align 64, !tbaa !98
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 80664
  %i.ao = load i32, ptr @je_manual_arena_base, align 4, !tbaa !13
  %i.ap = icmp ult i32 %1, %i.ao
  %i.aq = select i1 %i.ap, ptr @.str.6, ptr @.str.7
  %i.ar = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.an, i64 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.aq, i32 noundef %1) #19 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 80695
  store i8 0, ptr %i.as, align 1, !tbaa !103
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 80656
  call void @je_nstime_init_update(ptr noundef nonnull %i.at) #19
  %i.au = load i8, ptr @je_opt_hpa, align 1, !tbaa !101, !range !96, !noundef !97
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %i.aw = call ptr @je_base_ehooks_get(ptr noundef %.059) #19
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load atomic ptr, ptr %i.ax acquire, align 8
  %i.az = icmp eq ptr %i.ay, @je_ehooks_default_extent_hooks
  %6 = icmp ne i32 %1, 0
  %or.cond = and i1 %6, %i.az
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(80) @je_opt_hpa_opts, i64 80, i1 false), !tbaa.struct !209
  %i.ba = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 %i.ba, ptr %i.bb, align 4, !tbaa !210
  %i.bc = call zeroext i1 @je_pa_shard_enable_hpa(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef nonnull %4, ptr noundef nonnull @je_opt_hpa_sec_opts) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %i.bc, label %.thread75, label %.thread

bb.j:                                             ; preds = %bb.h, %._crit_edge
  br i1 %5, label %post_reentrancy.exit, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !103
  %i.bf = icmp eq i8 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !103
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !103
  br i1 %i.bf, label %bb.k, label %pre_reentrancy.exit

bb.k:                                             ; preds = %.thread
  call void @je_tsd_slow_update(ptr noundef nonnull %0) #19
  br label %pre_reentrancy.exit

pre_reentrancy.exit:                              ; preds = %.thread, %bb.k
  %i.bj = load ptr, ptr @je_test_hooks_arena_new_hook, align 8, !tbaa !91 ; 2 uses
  %.not66 = icmp eq ptr %i.bj, null
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %pre_reentrancy.exit
  call void %i.bj() #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %pre_reentrancy.exit
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !103
  %i.bl = add i8 %i.bk, -1                        ; 2 uses
  store i8 %i.bl, ptr %i.bg, align 1, !tbaa !103
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.n, label %post_reentrancy.exit

bb.n:                                             ; preds = %bb.m
  call void @je_tsd_slow_update(ptr noundef nonnull %0) #19
  br label %post_reentrancy.exit

.loopexit:                                        ; preds = %bb.g, %bb.e, %atomic_store_u.exit70, %atomic_store_u.exit72, %bb.d
  br i1 %5, label %post_reentrancy.exit, label %.thread75

.thread75:                                        ; preds = %bb.i, %.loopexit
  call void @je_base_delete(ptr noundef %0, ptr noundef %.059) #19
  br label %post_reentrancy.exit

post_reentrancy.exit:                             ; preds = %bb.n, %bb.m, %bb.j, %.thread75, %.loopexit, %bb.c
  %.161 = phi ptr [ null, %bb.c ], [ %i.l, %bb.j ], [ null, %.loopexit ], [ null, %.thread75 ], [ %i.l, %bb.m ], [ %i.l, %bb.n ]
  ret ptr %.161
}

declare ptr @je_b0get() local_unnamed_addr #3

declare ptr @je_base_new(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @je_base_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @je_extent_dss_prec_get() local_unnamed_addr #3

declare void @je_nstime_init_update(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @je_pa_shard_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_bin_init(ptr noundef) local_unnamed_addr #3

declare i64 @je_malloc_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i1 @je_pa_shard_enable_hpa(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_choose_huge(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @je_huge_arena_ind, align 4, !tbaa !13
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.b
  %i.d = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %arena_get.exit, !prof !104

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @je_huge_arena_ind, align 4, !tbaa !13 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.g
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %arena_get.exit.i, label %arena_get.exit.thread.i, !prof !104

arena_get.exit.i:                                 ; preds = %bb.b
  %i.k = tail call ptr @je_arena_init(ptr noundef %0, i32 noundef %i.f, ptr noundef nonnull @je_arena_config_default) #19 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %arena_get.exit, label %arena_get.exit.thread.i

arena_get.exit.thread.i:                          ; preds = %arena_get.exit.i, %bb.b
  %.0.i14.i = phi ptr [ %i.k, %arena_get.exit.i ], [ %i.i, %bb.b ] ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 80664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.m, ptr noundef nonnull align 1 dereferenceable(32) @str, i64 noundef 31, i1 false) #19
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 80695
  store i8 0, ptr %i.n, align 1, !tbaa !103
  %i.o = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %arena_get.exit.thread.i
  %i.q = load atomic i64, ptr @dirty_decay_ms_default.0 monotonic, align 8
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
  %i.t = trunc nuw i8 %i.s to i1
  %..i.i.i = select i1 %i.t, i32 1, i32 2
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 12288
  %i.v = tail call zeroext i1 @je_pa_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.u, i32 noundef 1, i64 noundef 0, i32 noundef %..i.i.i) #19 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %arena_get.exit.thread.i
  %i.w = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %arena_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load atomic i64, ptr @muzzy_decay_ms_default.0 monotonic, align 8
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %arena_get.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
  %i.ab = trunc nuw i8 %i.aa to i1
  %..i.i12.i = select i1 %i.ab, i32 1, i32 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 12288
  %i.ad = tail call zeroext i1 @je_pa_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.ac, i32 noundef 2, i64 noundef 0, i32 noundef %..i.i12.i) #19 ; 0 uses
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %arena_get.exit.i, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ null, %arena_get.exit.i ], [ %.0.i14.i, %bb.g ], [ %.0.i14.i, %bb.f ], [ %.0.i14.i, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_arena_init_huge(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @je_opt_oversize_threshold, align 8, !tbaa !18
  %i.b = add i64 %i.a, -16384
  %or.cond = icmp ult i64 %i.b, 8070450532247912449 ; 2 uses
  br i1 %or.cond, label %atomic_store_zu.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr @je_opt_oversize_threshold, align 8, !tbaa !18
  store i64 8070450532247932928, ptr @je_oversize_threshold, align 8, !tbaa !18
  br label %bb.i

atomic_store_zu.exit:                             ; preds = %bb.a
  %i.c = tail call i32 @je_narenas_total_get() #19
  store i32 %i.c, ptr @je_huge_arena_ind, align 4, !tbaa !13
  %i.d = load i64, ptr @je_opt_oversize_threshold, align 8, !tbaa !18 ; 2 uses
  store i64 %i.d, ptr @je_oversize_threshold, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 70936
  store atomic i64 %i.d, ptr %i.e monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80648
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %i.i = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.h) #19
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.c

malloc_mutex_trylock_final.exit.i:                ; preds = %atomic_store_zu.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %bb.d

bb.c:                                             ; preds = %atomic_store_zu.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.k) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %malloc_mutex_trylock_final.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !72
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %i.p, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !74
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.t = load i8, ptr @je_opt_huge_arena_pac_thp, align 1, !tbaa !101, !range !96, !noundef !97
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %malloc_mutex_lock.exit
  %i.v = load i32, ptr @je_opt_metadata_thp, align 4, !tbaa !13
  %i.w = icmp ne i32 %i.v, 0
  %i.x = load i32, ptr @je_opt_thp, align 4
  %i.y = icmp eq i32 %i.x, 0
  %or.cond3 = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr @je_init_system_thp_mode, align 4, !tbaa !13
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %malloc_mutex_lock.exit
  %i.ac = phi i8 [ %i.ab, %bb.g ], [ 0, %bb.f ], [ 0, %malloc_mutex_lock.exit ]
  store i8 %i.ac, ptr @je_huge_arena_pac_thp, align 8, !tbaa !212
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !215, !range !96, !noundef !97
  store i8 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 120), align 8, !tbaa !216
  %i.af = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 8), ptr noundef nonnull @.str.8, i32 noundef 4096, i32 noundef 0) #19 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 128), align 8, !tbaa !112
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store atomic i8 0, ptr %i.ag monotonic, align 8
  %i.ah = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #19 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret i1 %or.cond
}

declare i32 @je_narenas_total_get() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_arena_boot(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @je_opt_dirty_decay_ms, align 8, !tbaa !18 ; 2 uses
  %i.b = tail call zeroext i1 @je_decay_ms_valid(i64 noundef %i.a) #19
  br i1 %i.b, label %atomic_store_zd.exit.i, label %je_arena_dirty_decay_ms_default_set.exit

atomic_store_zd.exit.i:                           ; preds = %bb.a
end_hunk_0
