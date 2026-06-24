inline.NumInlined: 376
inline.NumDeleted: 126
begin_hunk_0_@duckdb_je_arena_new:bb.a
  %i.au = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %i.av = zext i32 %i.au to i64
  %i.aw = icmp samesign ult i64 %indvars.iv95, %i.av
  %i.ax = getelementptr inbounds nuw [648 x i8], ptr %i.at, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw [256 x i8], ptr %i.at, i64 %indvars.iv
  %.0.i = select i1 %i.aw, ptr %i.ax, ptr %i.ay
  %i.az = call zeroext i1 @duckdb_je_bin_init(ptr noundef nonnull %.0.i, i32 noundef %i.an) #18
  br i1 %i.az, label %.loopexit, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next96, 36
  br i1 %exitcond.not, label %.thread88, label %.preheader

.thread88:                                        ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 78960
  store ptr %.067, ptr %i.ba, align 16, !tbaa !12
  call void @duckdb_je_arena_set(i32 noundef %1, ptr noundef nonnull %i.q) #18
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 78952
  store i32 %1, ptr %i.bb, align 8, !tbaa !115
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 78976
  %i.bd = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.be = icmp ult i32 %1, %i.bd
  %i.bf = select i1 %i.be, ptr @.str.6, ptr @.str.7
  %i.bg = call i64 (ptr, i64, ptr, ...) @duckdb_je_malloc_snprintf(ptr noundef nonnull %i.bc, i64 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.bf, i32 noundef %1) #18 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 79007
  store i8 0, ptr %i.bh, align 1, !tbaa !120
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 78968
  call void @duckdb_je_nstime_init_update(ptr noundef nonnull %i.bi) #18
  %i.bj = load i8, ptr @duckdb_je_opt_hpa, align 1, !tbaa !118, !range !113, !noundef !114
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.thread88
  %i.bl = call ptr @duckdb_je_base_ehooks_get(ptr noundef %.067) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load atomic ptr, ptr %i.bm acquire, align 8
  %i.bo = icmp eq ptr %i.bn, @duckdb_je_ehooks_default_extent_hooks
  %i.bp = icmp ne i32 %1, 0
  %or.cond = and i1 %i.bp, %i.bo
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) @duckdb_je_opt_hpa_opts, i64 48, i1 false), !tbaa.struct !192
  %i.bq = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !113, !noundef !114
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 %i.bq, ptr %i.br, align 4, !tbaa !193
  %i.bs = call zeroext i1 @duckdb_je_pa_shard_enable_hpa(ptr noundef %0, ptr noundef nonnull %i.ac, ptr noundef nonnull %4, ptr noundef nonnull @duckdb_je_opt_hpa_sec_opts) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %i.bs, label %.thread91, label %.thread90

bb.j:                                             ; preds = %bb.h, %.thread88
  br i1 %i.a, label %post_reentrancy.exit, label %.thread90

.thread90:                                        ; preds = %bb.i, %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !120
  %i.bv = icmp eq i8 %i.bu, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !120
  %i.by = add i8 %i.bx, 1
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !120
  br i1 %i.bv, label %bb.k, label %pre_reentrancy.exit

bb.k:                                             ; preds = %.thread90
  call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %0) #18
  br label %pre_reentrancy.exit

pre_reentrancy.exit:                              ; preds = %.thread90, %bb.k
  %i.bz = load ptr, ptr @duckdb_je_test_hooks_arena_new_hook, align 8, !tbaa !103 ; 2 uses
  %.not77 = icmp eq ptr %i.bz, null
  br i1 %.not77, label %bb.m, label %bb.l

bb.l:                                             ; preds = %pre_reentrancy.exit
  call void %i.bz() #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %pre_reentrancy.exit
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !120
  %i.cb = add i8 %i.ca, -1                        ; 2 uses
  store i8 %i.cb, ptr %i.bw, align 1, !tbaa !120
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.n, label %post_reentrancy.exit

bb.n:                                             ; preds = %bb.m
  call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %0) #18
  br label %post_reentrancy.exit

.loopexit:                                        ; preds = %bb.g, %bb.e, %atomic_store_u.exit81, %atomic_store_u.exit83, %bb.d
  br i1 %i.a, label %post_reentrancy.exit, label %.thread91

.thread91:                                        ; preds = %bb.i, %.loopexit
  call void @duckdb_je_base_delete(ptr noundef %0, ptr noundef %.067) #18
  br label %post_reentrancy.exit

post_reentrancy.exit:                             ; preds = %bb.n, %bb.m, %bb.j, %.thread91, %.loopexit, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %i.q, %bb.j ], [ %i.q, %bb.n ], [ null, %.loopexit ], [ null, %.thread91 ], [ %i.q, %bb.m ]
  ret ptr %.1
}

declare ptr @duckdb_je_b0get() local_unnamed_addr #3

declare ptr @duckdb_je_base_new(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @duckdb_je_base_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @duckdb_je_extent_dss_prec_get() local_unnamed_addr #3

declare void @duckdb_je_nstime_init_update(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_pa_shard_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_bin_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @duckdb_je_malloc_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_pa_shard_enable_hpa(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_arena_choose_huge(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @huge_arena_ind, align 4, !tbaa !3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.b
  %i.d = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %arena_get.exit, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @huge_arena_ind, align 4, !tbaa !3 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.g
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %arena_get.exit.i, label %arena_get.exit.thread.i, !prof !121

arena_get.exit.i:                                 ; preds = %bb.b
  %i.k = tail call ptr @duckdb_je_arena_init(ptr noundef %0, i32 noundef %i.f, ptr noundef nonnull @duckdb_je_arena_config_default) #18 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %arena_get.exit, label %arena_get.exit.thread.i

arena_get.exit.thread.i:                          ; preds = %arena_get.exit.i, %bb.b
  %.0.i14.i = phi ptr [ %i.k, %arena_get.exit.i ], [ %i.i, %bb.b ] ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 78976
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.m, ptr noundef nonnull align 1 dereferenceable(32) @str, i64 noundef 31, i1 false) #18
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 79007
  store i8 0, ptr %i.n, align 1, !tbaa !120
  %i.o = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !113, !noundef !114
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %arena_get.exit.thread.i
  %i.q = load atomic i64, ptr @dirty_decay_ms_default.0 monotonic, align 8
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !113, !noundef !114
  %i.t = trunc nuw i8 %i.s to i1
  %..i.i.i = select i1 %i.t, i32 1, i32 2
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 10664
  %i.v = tail call zeroext i1 @duckdb_je_pa_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.u, i32 noundef 1, i64 noundef 0, i32 noundef %..i.i.i) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %arena_get.exit.thread.i
  %i.w = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !113, !noundef !114
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %arena_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load atomic i64, ptr @muzzy_decay_ms_default.0 monotonic, align 8
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %arena_get.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !113, !noundef !114
  %i.ab = trunc nuw i8 %i.aa to i1
  %..i.i12.i = select i1 %i.ab, i32 1, i32 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 10664
  %i.ad = tail call zeroext i1 @duckdb_je_pa_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.ac, i32 noundef 2, i64 noundef 0, i32 noundef %..i.i12.i) #18 ; 0 uses
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %arena_get.exit.i, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ null, %arena_get.exit.i ], [ %.0.i14.i, %bb.g ], [ %.0.i14.i, %bb.f ], [ %.0.i14.i, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_arena_init_huge(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @duckdb_je_opt_oversize_threshold, align 8, !tbaa !10
  %i.b = add i64 %i.a, -16384
  %or.cond = icmp ult i64 %i.b, 8070450532247912449 ; 2 uses
  br i1 %or.cond, label %atomic_store_zu.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr @duckdb_je_opt_oversize_threshold, align 8, !tbaa !10
  store i64 8070450532247932928, ptr @duckdb_je_oversize_threshold, align 8, !tbaa !10
  br label %bb.c

atomic_store_zu.exit:                             ; preds = %bb.a
  %i.c = tail call i32 @duckdb_je_narenas_total_get() #18
  store i32 %i.c, ptr @huge_arena_ind, align 4, !tbaa !3
  %i.d = load i64, ptr @duckdb_je_opt_oversize_threshold, align 8, !tbaa !10 ; 2 uses
  store i64 %i.d, ptr @duckdb_je_oversize_threshold, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 69328
  store atomic i64 %i.d, ptr %i.e monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %atomic_store_zu.exit, %bb.b
  ret i1 %or.cond
}

declare i32 @duckdb_je_narenas_total_get() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define zeroext i1 @duckdb_je_arena_boot(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @duckdb_je_opt_dirty_decay_ms, align 8, !tbaa !10 ; 2 uses
  %i.b = tail call zeroext i1 @duckdb_je_decay_ms_valid(i64 noundef %i.a) #18
  br i1 %i.b, label %atomic_store_zd.exit.i, label %duckdb_je_arena_dirty_decay_ms_default_set.exit

atomic_store_zd.exit.i:                           ; preds = %bb.a
  store atomic i64 %i.a, ptr @dirty_decay_ms_default.0 monotonic, align 8
  br label %duckdb_je_arena_dirty_decay_ms_default_set.exit

duckdb_je_arena_dirty_decay_ms_default_set.exit:  ; preds = %bb.a, %atomic_store_zd.exit.i
  %i.c = load i64, ptr @duckdb_je_opt_muzzy_decay_ms, align 8, !tbaa !10 ; 2 uses
  %i.d = tail call zeroext i1 @duckdb_je_decay_ms_valid(i64 noundef %i.c) #18
  br i1 %i.d, label %atomic_store_zd.exit.i22, label %duckdb_je_arena_muzzy_decay_ms_default_set.exit

atomic_store_zd.exit.i22:                         ; preds = %duckdb_je_arena_dirty_decay_ms_default_set.exit
  store atomic i64 %i.c, ptr @muzzy_decay_ms_default.0 monotonic, align 8
  br label %duckdb_je_arena_muzzy_decay_ms_default_set.exit

duckdb_je_arena_muzzy_decay_ms_default_set.exit:  ; preds = %duckdb_je_arena_dirty_decay_ms_default_set.exit, %atomic_store_zd.exit.i22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.f = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  br label %bb.d

bb.b:                                             ; preds = %duckdb_je_arena_muzzy_decay_ms_default_set.exit, %bb.b
  %indvars.iv = phi i64 [ 0, %duckdb_je_arena_muzzy_decay_ms_default_set.exit ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [28 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_binind_div_info, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !194
  %i.l = shl nuw i32 1, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !196
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !197
  %i.q = shl i32 %i.n, %i.p
  %i.r = add i32 %i.q, %i.l
  %i.s = zext i32 %i.r to i64
  tail call void @duckdb_je_div_init(ptr noundef nonnull %i.i, i64 noundef %i.s) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 36
  br i1 %exitcond.not, label %.preheader, label %bb.b

bb.c:                                             ; preds = %bb.d
  %i.t = tail call zeroext i1 @duckdb_je_pa_central_init(ptr noundef nonnull @duckdb_je_arena_pa_central_global, ptr noundef %1, i1 noundef zeroext %2, ptr noundef nonnull @duckdb_je_hpa_hooks_default) #18
  ret i1 %i.t

bb.d:                                             ; preds = %bb.d, %.preheader
  %indvars.iv27 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next28.1, %bb.d ] ; 5 uses
  %.01824 = phi i32 [ 79040, %.preheader ], [ %i.aj, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %indvars.iv27
  store i32 %.01824, ptr %i.u, align 8, !tbaa !3
  %i.v = icmp samesign ult i64 %indvars.iv27, %i.g
  %i.w = select i1 %i.v, i32 648, i32 256
  %i.x = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %indvars.iv27
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !104
  %i.aa = mul i32 %i.w, %i.z
  %i.ab = add i32 %i.aa, %.01824                  ; 2 uses
  %indvars.iv.next28 = or disjoint i64 %indvars.iv27, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %indvars.iv.next28
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = icmp samesign ult i64 %indvars.iv.next28, %i.g
  %i.ae = select i1 %i.ad, i32 648, i32 256
  %i.af = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %indvars.iv.next28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !104
  %i.ai = mul i32 %i.ae, %i.ah
  %i.aj = add i32 %i.ai, %i.ab
  %indvars.iv.next28.1 = add nuw nsw i64 %indvars.iv27, 2 ; 2 uses
  %exitcond30.not.1 = icmp eq i64 %indvars.iv.next28.1, 36
  br i1 %exitcond30.not.1, label %bb.c, label %bb.d
}

declare void @duckdb_je_div_init(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_pa_central_init(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_prefork0(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10664
  tail call void @duckdb_je_pa_shard_prefork0(ptr noundef %0, ptr noundef nonnull %i.a) #18
  ret void
}

declare void @duckdb_je_pa_shard_prefork0(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_prefork1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10424
  tail call void @duckdb_je_malloc_mutex_prefork(ptr noundef %0, ptr noundef nonnull %i.a) #18
  ret void
}

declare void @duckdb_je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_prefork2(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10664
  tail call void @duckdb_je_pa_shard_prefork2(ptr noundef %0, ptr noundef nonnull %i.a) #18
  ret void
}

declare void @duckdb_je_pa_shard_prefork2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_prefork3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10664
  tail call void @duckdb_je_pa_shard_prefork3(ptr noundef %0, ptr noundef nonnull %i.a) #18
  ret void
}

declare void @duckdb_je_pa_shard_prefork3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_prefork4(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10664
  tail call void @duckdb_je_pa_shard_prefork4(ptr noundef %0, ptr noundef nonnull %i.a) #18
  ret void
}

declare void @duckdb_je_pa_shard_prefork4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_prefork5(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10664
  tail call void @duckdb_je_pa_shard_prefork5(ptr noundef %0, ptr noundef nonnull %i.a) #18
  ret void
}

declare void @duckdb_je_pa_shard_prefork5(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_prefork6(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 78960
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !12
  tail call void @duckdb_je_base_prefork(ptr noundef %0, ptr noundef %i.b) #18
  ret void
}

declare void @duckdb_je_base_prefork(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_prefork7(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10552
  tail call void @duckdb_je_malloc_mutex_prefork(ptr noundef %0, ptr noundef nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_prefork8(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv15 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next16, %._crit_edge ] ; 4 uses
  %i.a = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %indvars.iv15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !104
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %indvars.iv15
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next16, 36
  br i1 %exitcond.not, label %bb.b, label %.preheader

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.h = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ult i64 %indvars.iv15, %i.i ; 2 uses
end_hunk_0
