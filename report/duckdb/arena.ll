inline.NumInlined: 376
inline.NumDeleted: 126
begin_hunk_0_@duckdb_je_arena_reset:bb.a

malloc_mutex_lock.exit55.i:                       ; preds = %bb.bg, %bb.bf
  %.0.i38 = load ptr, ptr %i.gp, align 8, !tbaa !127 ; 2 uses
  %.not42.i = icmp eq ptr %.0.i38, null
  br i1 %.not42.i, label %arena_bin_reset.exit, label %bb.at

arena_bin_reset.exit:                             ; preds = %malloc_mutex_lock.exit55.i, %._crit_edge.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.i35, i64 136
  store i64 0, ptr %i.ip, align 8, !tbaa !136
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.i35, i64 176
  store i64 0, ptr %i.iq, align 8, !tbaa !137
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i35, i64 64
  store atomic i8 0, ptr %i.ir monotonic, align 8
  %i.is = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dk) #18 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.it = load i32, ptr %i.cz, align 4, !tbaa !104
  %i.iu = zext i32 %i.it to i64
  %i.iv = icmp samesign ult i64 %indvars.iv.next, %i.iu
  br i1 %i.iv, label %bb.p, label %._crit_edge57
}

declare void @duckdb_je_large_dalloc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_pa_shard_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10664
  tail call void @duckdb_je_pa_shard_destroy(ptr noundef %0, ptr noundef nonnull %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 78960 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !12
  %.val = load i32, ptr %i.e, align 8, !tbaa !138
  tail call void @duckdb_je_arena_set(i32 noundef %.val, ptr noundef null) #18
  %i.f = load i8, ptr @duckdb_je_opt_retain, align 1, !tbaa !118, !range !113, !noundef !114
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %arena_prepare_base_deletion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 16, !tbaa !12
  %.val.i = load i32, ptr %i.h, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.i = tail call i32 @duckdb_je_narenas_total_get() #18 ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %arena_prepare_base_deletion_sync_finish.exit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.j = zext i32 %.val.i to i64
  %wide.trip.count.i = zext i32 %i.i to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %arena_get.exit.thread.i
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !3 ; 2 uses
  %.not.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i, label %arena_prepare_base_deletion_sync_finish.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  %wide.trip.count.i.i = zext i32 %.pre.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %malloc_mutex_lock.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %malloc_mutex_lock.exit.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !141  ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.n = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.m) #18
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.l) #18
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store atomic i8 1, ptr %i.o monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !72
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74
  %.not.i.i.i.i = icmp eq ptr %i.t, %0
  br i1 %.not.i.i.i.i, label %malloc_mutex_lock.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.s, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !75
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !75
  br label %malloc_mutex_lock.exit.i.i

malloc_mutex_lock.exit.i.i:                       ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #18 ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %arena_prepare_base_deletion_sync_finish.exit.i, label %.lr.ph.i.i

arena_prepare_base_deletion_sync_finish.exit.i:   ; preds = %malloc_mutex_lock.exit.i.i, %._crit_edge.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %arena_prepare_base_deletion.exit

.lr.ph.i:                                         ; preds = %arena_get.exit.thread.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %arena_get.exit.thread.i ] ; 3 uses
  %i.z = icmp eq i64 %indvars.iv.i, %i.j
  br i1 %i.z, label %arena_get.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv.i
  %i.ab = load atomic ptr, ptr %i.aa acquire, align 8 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %arena_get.exit.thread.i, label %arena_get.exit.i, !prof !121

arena_get.exit.i:                                 ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 10744
  call fastcc void @arena_prepare_base_deletion_sync(ptr noundef %0, ptr noundef %i.ad, ptr noundef %i.a, ptr noundef %i.b)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 30184
  call fastcc void @arena_prepare_base_deletion_sync(ptr noundef %0, ptr noundef %i.ae, ptr noundef %i.a, ptr noundef %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 49624
  call fastcc void @arena_prepare_base_deletion_sync(ptr noundef %0, ptr noundef %i.af, ptr noundef %i.a, ptr noundef %i.b)
  br label %arena_get.exit.thread.i

arena_get.exit.thread.i:                          ; preds = %arena_get.exit.i, %bb.f, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

arena_prepare_base_deletion.exit:                 ; preds = %bb.a, %arena_prepare_base_deletion_sync_finish.exit.i
  %i.ag = load ptr, ptr %i.d, align 16, !tbaa !12
  tail call void @duckdb_je_base_delete(ptr noundef %0, ptr noundef %i.ag) #18
  ret void
}

declare void @duckdb_je_pa_shard_destroy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_arena_set(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_base_delete(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @duckdb_je_arena_bin_choose(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readnone captures(ret: address, provenance) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !120
  %i.i = zext i8 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.0, ptr %3, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = zext i32 %2 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 2 uses
  %i.o = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %i.p = icmp ult i32 %2, %i.o
  %i.q = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw [648 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw [256 x i8], ptr %i.n, i64 %i.q
  %.0.i = select i1 %i.p, ptr %i.r, ptr %i.s
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_cache_bin_fill_small(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %5 = alloca [16 x %struct.bin_remote_free_data_s], align 16 ; 4 uses
  %6 = alloca %struct.arena_bin_flush_batch_state_s, align 8 ; 10 uses
  %i.f = zext i32 %3 to i64                       ; 4 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.f ; 3 uses
  %.val100 = load ptr, ptr %2, align 8, !tbaa !90 ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %.val101 = load i16, ptr %i.h, align 4, !tbaa !96
  %i.i = ptrtoint ptr %.val100 to i64
  %i.j = trunc i64 %i.i to i16
  %i.k = sub i16 %.val101, %i.j
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.val100, i64 %i.l
  %i.n = zext i16 %4 to i64
  %i.o = sub nsw i64 0, %i.n                      ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  %i.q = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.q, label %duckdb_je_arena_bin_choose.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !142
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %duckdb_je_arena_bin_choose.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f
  %i.w = load i8, ptr %i.v, align 1, !tbaa !120
  %i.x = zext i8 %i.w to i32
  br label %duckdb_je_arena_bin_choose.exit

duckdb_je_arena_bin_choose.exit:                  ; preds = %bb.a, %bb.b, %bb.c
  %.0.i111 = phi i32 [ %i.x, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %i.f
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %i.ad = icmp ult i32 %3, %i.ac
  %i.ae = zext nneg i32 %.0.i111 to i64           ; 2 uses
  %i.af = getelementptr inbounds nuw [648 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ae
  %.0.i.i = select i1 %i.ad, ptr %i.af, ptr %i.ag ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_binind_div_info, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 256 ; 4 uses
  %i.au = getelementptr i8, ptr %.0.i.i, i64 392
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 224 ; 7 uses
  %i.aw = getelementptr i8, ptr %1, i64 78952     ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 248 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 232 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 184 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 176 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 192 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 208 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 216 ; 2 uses
  %i.be = zext i16 %4 to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 168 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 160 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 120 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 136 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %arena_bin_flush_batch_after_unlock.exit, %duckdb_je_arena_bin_choose.exit
  %.081 = phi i16 [ 0, %duckdb_je_arena_bin_choose.exit ], [ %.182166, %arena_bin_flush_batch_after_unlock.exit ] ; 3 uses
  %.074 = phi ptr [ null, %duckdb_je_arena_bin_choose.exit ], [ %i.qy, %arena_bin_flush_batch_after_unlock.exit ] ; 2 uses
  %.073 = phi i1 [ true, %duckdb_je_arena_bin_choose.exit ], [ false, %arena_bin_flush_batch_after_unlock.exit ]
  %i.bj = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ah) #18
  %.not.i113 = icmp eq i32 %i.bj, 0
  br i1 %.not.i113, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %.0.i.i) #18
  store atomic i8 1, ptr %i.ai monotonic, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bk = load i64, ptr %i.aj, align 8, !tbaa !72
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.aj, align 8, !tbaa !72
  %i.bm = load ptr, ptr %i.ak, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.bm, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.ak, align 8, !tbaa !74
  %i.bn = load i64, ptr %i.al, align 8, !tbaa !75
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.al, align 8, !tbaa !75
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.f, %bb.g
  %i.bp = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %.not.i = icmp ult i32 %3, %i.bp
  br i1 %.not.i, label %bb.h, label %arena_bin_flush_batch_after_lock.exit

bb.h:                                             ; preds = %malloc_mutex_lock.exit
  %i.bq = load i32, ptr %i.am, align 4, !tbaa !3
  store i32 %i.bq, ptr %6, align 8, !tbaa !3
  %i.br = load i32, ptr %i.an, align 8, !tbaa !144
  store i32 %i.br, ptr %i.ao, align 4, !tbaa !145
  store i64 0, ptr %i.ap, align 8, !tbaa !148
  store i32 0, ptr %i.aq, align 8, !tbaa !149
  store ptr null, ptr %i.ar, align 8, !tbaa !127
  %i.bs = call i64 @duckdb_je_batcher_pop_begin(ptr noundef %0, ptr noundef nonnull %i.at) #18 ; 6 uses
  %i.bt = icmp eq i64 %i.bs, -1
  br i1 %i.bt, label %arena_bin_flush_batch_after_lock.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = call i64 @duckdb_je_batcher_pop_get_pushes(ptr noundef %0, ptr noundef nonnull %i.at) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %.not191 = icmp eq i64 %i.bs, 0
  br i1 %.not191, label %._crit_edge.thread, label %.lr.ph163.preheader

._crit_edge.thread:                               ; preds = %bb.i
  call void @batcher_pop_end(ptr noundef %0, ptr noundef nonnull %i.at) #18
  br label %._crit_edge164

.lr.ph163.preheader:                              ; preds = %bb.i
  %i.bv = shl nuw i64 %i.bs, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 8 %i.au, i64 %i.bv, i1 false)
  call void @batcher_pop_end(ptr noundef %0, ptr noundef nonnull %i.at) #18
  %.val102.pre209 = load i32, ptr %6, align 8, !tbaa !151
  br label %.lr.ph163

._crit_edge164:                                   ; preds = %arena_dalloc_bin_locked_step.exit, %._crit_edge.thread
  %.lcssa160 = phi i32 [ 0, %._crit_edge.thread ], [ %i.gg, %arena_dalloc_bin_locked_step.exit ]
  store i64 %i.bs, ptr %i.ap, align 8
  store i32 %.lcssa160, ptr %i.aq, align 8
  %i.bw = load i64, ptr %i.bb, align 8, !tbaa !152
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bb, align 8, !tbaa !152
  %i.by = load i64, ptr %i.bc, align 8, !tbaa !153
  %i.bz = add i64 %i.by, %i.bu
  store i64 %i.bz, ptr %i.bc, align 8, !tbaa !153
  %i.ca = load i64, ptr %i.bd, align 8, !tbaa !108
  %i.cb = add i64 %i.ca, %i.bs
  store i64 %i.cb, ptr %i.bd, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %arena_bin_flush_batch_after_lock.exit

.lr.ph163:                                        ; preds = %.lr.ph163.preheader, %arena_dalloc_bin_locked_step.exit
  %.val102 = phi i32 [ %.val102210, %arena_dalloc_bin_locked_step.exit ], [ %.val102.pre209, %.lr.ph163.preheader ] ; 8 uses
  %.0.i96161 = phi i64 [ %i.gh, %arena_dalloc_bin_locked_step.exit ], [ 0, %.lr.ph163.preheader ] ; 2 uses
  %i.cc = phi i32 [ %i.gg, %arena_dalloc_bin_locked_step.exit ], [ 0, %.lr.ph163.preheader ] ; 7 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.0.i96161 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !154 ; 26 uses
  %i.cg = load ptr, ptr %i.cd, align 16, !tbaa !156
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = getelementptr i8, ptr %i.cf, i64 8
  %.val = load ptr, ptr %i.ci, align 8, !tbaa !122
  %i.cj = ptrtoint ptr %.val to i64
  %i.ck = sub i64 %i.ch, %i.cj
  %i.cl = zext i32 %.val102 to i64
  %i.cm = mul i64 %i.ck, %i.cl                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.cp = lshr i64 %i.cm, 38
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !10
  %i.cs = and i64 %i.cn, 63
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = xor i64 %i.ct, %i.cr
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !10
  %i.cv = load i64, ptr %i.cf, align 8, !tbaa !124 ; 2 uses
  %i.cw = add i64 %i.cv, 268435456                ; 2 uses
  store i64 %i.cw, ptr %i.cf, align 8, !tbaa !124
  %i.cx = lshr i64 %i.cw, 28
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = and i32 %i.cy, 1023                     ; 2 uses
  %i.da = load i32, ptr %i.an, align 8, !tbaa !144
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.j, label %bb.u

bb.j:                                             ; preds = %.lr.ph163
  %i.dc = load ptr, ptr %i.av, align 8, !tbaa !135
  %i.dd = icmp eq ptr %i.cf, %i.dc
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.av, align 8, !tbaa !135
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit

bb.l:                                             ; preds = %bb.j
  %i.de = lshr i64 %i.cv, 20
  %i.df = and i64 %i.de, 255
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !144
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %.val10.i.i = load i32, ptr %i.aw, align 8, !tbaa !115
  %i.dk = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.dl = icmp ult i32 %.val10.i.i, %i.dk
  br i1 %i.dl, label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cf
  br i1 %i.dn, label %bb.o, label %.thread.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !120 ; 2 uses
  store ptr %i.dp, ptr %i.ax, align 8, !tbaa !127
  %i.dq = icmp eq ptr %i.dp, %i.cf
  br i1 %i.dq, label %bb.p, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.o, %bb.n
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !120
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !120
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 4 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !120
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !120
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !120 ; 2 uses
  %i.dz = load ptr, ptr %i.dr, align 8, !tbaa !120
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  store ptr %i.dy, ptr %i.ea, align 8, !tbaa !120
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !120
  store ptr %i.ec, ptr %i.dv, align 8, !tbaa !120
  %i.ed = load ptr, ptr %i.dr, align 8, !tbaa !120 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  store ptr %i.ed, ptr %i.eg, align 8, !tbaa !120
  %i.eh = load ptr, ptr %i.dv, align 8, !tbaa !120
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store ptr %i.cf, ptr %i.ei, align 8, !tbaa !120
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.ax, align 8, !tbaa !127
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit

bb.q:                                             ; preds = %bb.l
  call void @duckdb_je_edata_heap_remove(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.cf) #18
  %i.ej = load i64, ptr %i.az, align 8, !tbaa !157
  %i.ek = add i64 %i.ej, -1
  store i64 %i.ek, ptr %i.az, align 8, !tbaa !157
  %.val102.pre = load i32, ptr %6, align 8, !tbaa !151
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit

duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit: ; preds = %bb.k, %bb.m, %.thread.i.i.i.i, %bb.p, %bb.q
  %.val102211 = phi i32 [ %.val102, %bb.k ], [ %.val102, %bb.m ], [ %.val102, %.thread.i.i.i.i ], [ %.val102, %bb.p ], [ %.val102.pre, %bb.q ] ; 2 uses
  %i.el = load i64, ptr %i.ba, align 8, !tbaa !137
  %i.em = add i64 %i.el, -1
  store i64 %i.em, ptr %i.ba, align 8, !tbaa !137
  %i.en = icmp ult i32 %i.cc, 8
  br i1 %i.en, label %bb.r, label %bb.s

bb.r:                                             ; preds = %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit
  %i.eo = zext nneg i32 %i.cc to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.eo
  store ptr %i.cf, ptr %i.ep, align 8, !tbaa !158
  %i.eq = add nuw nsw i32 %i.cc, 1
  br label %arena_dalloc_bin_locked_step.exit

bb.s:                                             ; preds = %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 3 uses
  store ptr %i.cf, ptr %i.er, align 8, !tbaa !120
  %i.es = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 4 uses
  store ptr %i.cf, ptr %i.es, align 8, !tbaa !120
  %i.et = load ptr, ptr %i.ar, align 8, !tbaa !127 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %edata_list_active_append.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 48 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !120
  store ptr %i.ew, ptr %i.er, align 8, !tbaa !120
  store ptr %i.cf, ptr %i.ev, align 8, !tbaa !120
  %i.ex = load ptr, ptr %i.es, align 8, !tbaa !120
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !120
  store ptr %i.ez, ptr %i.es, align 8, !tbaa !120
  %i.fa = load ptr, ptr %i.ev, align 8, !tbaa !120
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  store ptr %i.et, ptr %i.fb, align 8, !tbaa !120
  %i.fc = load ptr, ptr %i.es, align 8, !tbaa !120
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  store ptr %i.cf, ptr %i.fd, align 8, !tbaa !120
  %.pre.i = load ptr, ptr %i.er, align 8, !tbaa !120
  br label %edata_list_active_append.exit

edata_list_active_append.exit:                    ; preds = %bb.s, %bb.t
  %i.fe = phi ptr [ %.pre.i, %bb.t ], [ %i.cf, %bb.s ]
  store ptr %i.fe, ptr %i.ar, align 8, !tbaa !127
  br label %arena_dalloc_bin_locked_step.exit

bb.u:                                             ; preds = %.lr.ph163
  %i.ff = icmp eq i32 %i.cz, 1
  br i1 %i.ff, label %bb.v, label %arena_dalloc_bin_locked_step.exit

bb.v:                                             ; preds = %bb.u
  %i.fg = load ptr, ptr %i.av, align 8, !tbaa !135
  %.not.i97 = icmp eq ptr %i.cf, %i.fg
  br i1 %.not.i97, label %arena_dalloc_bin_locked_step.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i = load i32, ptr %i.aw, align 8, !tbaa !115
  %i.fh = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.fi = icmp ult i32 %.val.i, %i.fh
  br i1 %i.fi, label %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fj = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.cf
  br i1 %i.fk, label %bb.y, label %.thread.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !120 ; 2 uses
  store ptr %i.fm, ptr %i.ax, align 8, !tbaa !127
  %i.fn = icmp eq ptr %i.fm, %i.cf
  br i1 %i.fn, label %bb.z, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.y, %bb.x
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !120
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !120
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !120
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  store ptr %i.fr, ptr %i.fu, align 8, !tbaa !120
  %i.fv = load ptr, ptr %i.fs, align 8, !tbaa !120 ; 2 uses
  %i.fw = load ptr, ptr %i.fo, align 8, !tbaa !120
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  store ptr %i.fv, ptr %i.fx, align 8, !tbaa !120
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !120
  store ptr %i.fz, ptr %i.fs, align 8, !tbaa !120
  %i.ga = load ptr, ptr %i.fo, align 8, !tbaa !120 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !120
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  store ptr %i.ga, ptr %i.gd, align 8, !tbaa !120
  %i.ge = load ptr, ptr %i.fs, align 8, !tbaa !120
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  store ptr %i.cf, ptr %i.gf, align 8, !tbaa !120
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %i.ax, align 8, !tbaa !127
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit

duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit: ; preds = %bb.w, %.thread.i.i.i, %bb.z
  call fastcc void @arena_bin_lower_slab(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.cf, ptr noundef nonnull %.0.i.i)
  br label %arena_dalloc_bin_locked_step.exit

arena_dalloc_bin_locked_step.exit:                ; preds = %bb.r, %edata_list_active_append.exit, %bb.u, %bb.v, %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit
  %.val102210 = phi i32 [ %.val102211, %bb.r ], [ %.val102211, %edata_list_active_append.exit ], [ %.val102, %bb.u ], [ %.val102, %bb.v ], [ %.val102, %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit ]
  %i.gg = phi i32 [ %i.eq, %bb.r ], [ %i.cc, %edata_list_active_append.exit ], [ %i.cc, %bb.u ], [ %i.cc, %bb.v ], [ %i.cc, %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit ] ; 2 uses
  %i.gh = add nuw i64 %.0.i96161, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.gh, %i.bs
  br i1 %exitcond.not, label %._crit_edge164, label %.lr.ph163

arena_bin_flush_batch_after_lock.exit:            ; preds = %._crit_edge164, %bb.h, %malloc_mutex_lock.exit
  %i.gi = icmp ult i16 %.081, %4
  br i1 %i.gi, label %.lr.ph169, label %.thread140.thread

.lr.ph169:                                        ; preds = %arena_bin_flush_batch_after_lock.exit, %bb.ag
  %.1168 = phi i1 [ %.2, %bb.ag ], [ %.073, %arena_bin_flush_batch_after_lock.exit ] ; 3 uses
  %.175167 = phi ptr [ %.276, %bb.ag ], [ %.074, %arena_bin_flush_batch_after_lock.exit ] ; 4 uses
  %.182166 = phi i16 [ %.283, %bb.ag ], [ %.081, %arena_bin_flush_batch_after_lock.exit ] ; 7 uses
  %i.gj = zext i16 %.182166 to i32
  %i.gk = load ptr, ptr %i.av, align 8, !tbaa !135 ; 12 uses
  %.not = icmp eq ptr %i.gk, null
  br i1 %.not, label %arena_bin_slabs_full_insert.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph169
  %.val105 = load i64, ptr %i.gk, align 8, !tbaa !124 ; 2 uses
  %i.gl = lshr i64 %.val105, 28
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = and i32 %i.gm, 1023                     ; 2 uses
  %.not88 = icmp eq i32 %i.gn, 0
  br i1 %.not88, label %bb.ab, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.aa
  %i.go = sub nsw i32 %i.be, %i.gj
  %i.gp = call i32 @llvm.umin.i32(i32 %i.go, i32 %i.gn) ; 5 uses
  %i.gq = zext i16 %.182166 to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gq ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 64 ; 4 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !10
  %i.gu = getelementptr i8, ptr %i.gk, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge47.i, %.preheader.lr.ph.i
  %.052.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge47.i ] ; 2 uses
  %.02751.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.lcssa262, %._crit_edge47.i ] ; 5 uses
  %.03750.i = phi i64 [ %i.gt, %.preheader.lr.ph.i ], [ %.lcssa263, %._crit_edge47.i ] ; 2 uses
  %i.gv = icmp eq i64 %.03750.i, 0
  br i1 %i.gv, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.139.i = phi i32 [ %i.gw, %.lr.ph.i ], [ %.052.i, %.preheader.i ]
  %i.gw = add i32 %.139.i, 1                      ; 3 uses
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gx
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !10 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.138.lcssa.i = phi i64 [ %.03750.i, %.preheader.i ], [ %i.gz, %.lr.ph.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.052.i, %.preheader.i ], [ %i.gw, %.lr.ph.i ] ; 4 uses
  %i.hb = shl i32 %.1.lcssa.i, 6
  %i.hc = zext i32 %i.hb to i64                   ; 3 uses
  %.val.i114 = load ptr, ptr %i.gu, align 8, !tbaa !122
  %i.hd = ptrtoint ptr %.val.i114 to i64          ; 3 uses
  %i.he = load i64, ptr %i.g, align 8, !tbaa !159 ; 3 uses
  %.not41.i = icmp eq i32 %i.gp, %.02751.i
  br i1 %.not41.i, label %._crit_edge47.thread.i, label %.lr.ph46.preheader.i

._crit_edge47.thread.i:                           ; preds = %._crit_edge.i
  %i.hf = zext i32 %.1.lcssa.i to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.hf
  store i64 %.138.lcssa.i, ptr %i.hg, align 8, !tbaa !10
  br label %arena_slab_reg_alloc_batch.exit

.lr.ph46.preheader.i:                             ; preds = %._crit_edge.i
  %i.hh = sub i32 %i.gp, %.02751.i
  %i.hi = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %.138.lcssa.i)
  %i.hj = trunc nuw nsw i64 %i.hi to i32
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.hh, i32 %i.hj) ; 2 uses
  %.029.i = zext nneg i32 %spec.select.i to i64   ; 3 uses
  %xtraiter = and i64 %.029.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph46.i.prol.loopexit, label %.lr.ph46.i.prol

.lr.ph46.i.prol:                                  ; preds = %.lr.ph46.preheader.i
  %i.hk = add nsw i64 %.029.i, -1
  %i.hl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.138.lcssa.i, i1 true) ; 2 uses
  %i.hm = shl nuw i64 1, %i.hl
  %i.hn = xor i64 %i.hm, %.138.lcssa.i            ; 2 uses
  %i.ho = or disjoint i64 %i.hl, %i.hc
  %i.hp = mul i64 %i.ho, %i.he
  %i.hq = add i64 %i.hp, %i.hd
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = zext i32 %.02751.i to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hs
  store ptr %i.hr, ptr %i.ht, align 8, !tbaa !103
  %i.hu = add i32 %.02751.i, 1                    ; 2 uses
  br label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol.loopexit:                         ; preds = %.lr.ph46.i.prol, %.lr.ph46.preheader.i
  %.lcssa263.unr = phi i64 [ poison, %.lr.ph46.preheader.i ], [ %i.hn, %.lr.ph46.i.prol ]
  %.lcssa262.unr = phi i32 [ poison, %.lr.ph46.preheader.i ], [ %i.hu, %.lr.ph46.i.prol ]
  %.12844.i.unr = phi i32 [ %.02751.i, %.lr.ph46.preheader.i ], [ %i.hu, %.lr.ph46.i.prol ]
  %.13043.i.unr = phi i64 [ %.029.i, %.lr.ph46.preheader.i ], [ %i.hk, %.lr.ph46.i.prol ]
  %.242.i.unr = phi i64 [ %.138.lcssa.i, %.lr.ph46.preheader.i ], [ %i.hn, %.lr.ph46.i.prol ]
  %i.hv = icmp eq i32 %spec.select.i, 1
  br i1 %i.hv, label %._crit_edge47.i, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i
  %.12844.i = phi i32 [ %i.is, %.lr.ph46.i ], [ %.12844.i.unr, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  %.13043.i = phi i64 [ %i.ih, %.lr.ph46.i ], [ %.13043.i.unr, %.lr.ph46.i.prol.loopexit ]
  %.242.i = phi i64 [ %i.il, %.lr.ph46.i ], [ %.242.i.unr, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %i.hw = icmp ne i64 %.242.i, 0
  call void @llvm.assume(i1 %i.hw)
  %i.hx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.242.i, i1 true) ; 2 uses
  %i.hy = shl nuw i64 1, %i.hx                    ; 2 uses
  %i.hz = xor i64 %i.hy, %.242.i                  ; 2 uses
  %i.ia = or disjoint i64 %i.hx, %i.hc
  %i.ib = mul i64 %i.ia, %i.he
  %i.ic = add i64 %i.ib, %i.hd
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = zext i32 %.12844.i to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ie
  store ptr %i.id, ptr %i.if, align 8, !tbaa !103
  %i.ig = add i32 %.12844.i, 1
  %i.ih = add nsw i64 %.13043.i, -2               ; 2 uses
  %i.ii = icmp ne i64 %i.hy, %.242.i
  call void @llvm.assume(i1 %i.ii)
  %i.ij = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.hz, i1 true) ; 2 uses
  %i.ik = shl nuw i64 1, %i.ij
  %i.il = xor i64 %i.ik, %i.hz                    ; 2 uses
  %i.im = or disjoint i64 %i.ij, %i.hc
  %i.in = mul i64 %i.im, %i.he
  %i.io = add i64 %i.in, %i.hd
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = zext i32 %i.ig to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.iq
  store ptr %i.ip, ptr %i.ir, align 8, !tbaa !103
  %i.is = add i32 %.12844.i, 2                    ; 2 uses
  %.not.i115.1 = icmp eq i64 %i.ih, 0
  br i1 %.not.i115.1, label %._crit_edge47.i, label %.lr.ph46.i

._crit_edge47.i:                                  ; preds = %.lr.ph46.i, %.lr.ph46.i.prol.loopexit
  %.lcssa263 = phi i64 [ %.lcssa263.unr, %.lr.ph46.i.prol.loopexit ], [ %i.il, %.lr.ph46.i ] ; 2 uses
  %.lcssa262 = phi i32 [ %.lcssa262.unr, %.lr.ph46.i.prol.loopexit ], [ %i.is, %.lr.ph46.i ] ; 2 uses
  %i.it = zext i32 %.1.lcssa.i to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.it
  store i64 %.lcssa263, ptr %i.iu, align 8, !tbaa !10
  %i.iv = icmp ult i32 %.lcssa262, %i.gp
  br i1 %i.iv, label %.preheader.i, label %arena_slab_reg_alloc_batch.exit

arena_slab_reg_alloc_batch.exit:                  ; preds = %._crit_edge47.i, %._crit_edge47.thread.i
  %i.iw = zext nneg i32 %i.gp to i64
  %i.ix = shl nuw nsw i64 %i.iw, 28
  %i.iy = sub i64 %.val105, %i.ix
  store i64 %i.iy, ptr %i.gk, align 8, !tbaa !124
  %i.iz = trunc nuw nsw i32 %i.gp to i16
  %i.ja = add i16 %.182166, %i.iz
  br label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %.val.i117 = load i32, ptr %i.aw, align 8, !tbaa !115
  %i.jb = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.jc = icmp ult i32 %.val.i117, %i.jb
  br i1 %i.jc, label %arena_bin_slabs_full_insert.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gk, i64 40 ; 3 uses
  store ptr %i.gk, ptr %i.jd, align 8, !tbaa !120
  %i.je = getelementptr inbounds nuw i8, ptr %i.gk, i64 48 ; 4 uses
  store ptr %i.gk, ptr %i.je, align 8, !tbaa !120
  %i.jf = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %edata_list_active_append.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !120
  store ptr %i.ji, ptr %i.jd, align 8, !tbaa !120
  %i.jj = load ptr, ptr %i.ax, align 8, !tbaa !127
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  store ptr %i.gk, ptr %i.jk, align 8, !tbaa !120
  %i.jl = load ptr, ptr %i.je, align 8, !tbaa !120
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !120
  store ptr %i.jn, ptr %i.je, align 8, !tbaa !120
  %i.jo = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !120
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  store ptr %i.jo, ptr %i.jr, align 8, !tbaa !120
  %i.js = load ptr, ptr %i.je, align 8, !tbaa !120
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  store ptr %i.gk, ptr %i.jt, align 8, !tbaa !120
  %.pre.i.i.i = load ptr, ptr %i.jd, align 8, !tbaa !120
  br label %edata_list_active_append.exit.i.i

edata_list_active_append.exit.i.i:                ; preds = %bb.ad, %bb.ac
  %i.ju = phi ptr [ %.pre.i.i.i, %bb.ad ], [ %i.gk, %bb.ac ]
  store ptr %i.ju, ptr %i.ax, align 8, !tbaa !127
  br label %arena_bin_slabs_full_insert.exit.i

arena_bin_slabs_full_insert.exit.i:               ; preds = %.lr.ph169, %edata_list_active_append.exit.i.i, %bb.ab
  %i.jv = call ptr @duckdb_je_edata_heap_remove_first(ptr noundef nonnull %i.ay) #18 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
end_hunk_0
begin_hunk_1_@arena_dalloc_large_no_tcache:bb.a
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @duckdb_je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #18
  ret void
}

declare void @duckdb_je_tcache_bin_flush_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @duckdb_je_tsd_slow_update(ptr noundef) local_unnamed_addr #3

declare ptr @duckdb_je_arena_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!13, !38, i64 78960}
!13 = !{!"arena_s", !5, i64 0, !14, i64 8, !15, i64 16, !16, i64 24, !22, i64 10408, !24, i64 10416, !26, i64 10424, !14, i64 10536, !27, i64 10544, !26, i64 10552, !30, i64 10664, !4, i64 78952, !38, i64 78960, !17, i64 78968, !5, i64 78976, !5, i64 79040}
!14 = !{!"", !4, i64 0}
!15 = !{!"p1 _ZTS6tsdn_s", !9, i64 0}
!16 = !{!"arena_stats_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !17, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !18, i64 104, !11, i64 184, !11, i64 192, !5, i64 200, !5, i64 968, !17, i64 10376}
!17 = !{!"", !11, i64 0}
!18 = !{!"pa_shard_stats_s", !11, i64 0, !19, i64 8}
!19 = !{!"pac_stats_s", !20, i64 0, !20, i64 24, !11, i64 48, !17, i64 56, !17, i64 64}
!20 = !{!"pac_decay_stats_s", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"locked_u64_s", !17, i64 0}
!22 = !{!"", !23, i64 0}
!23 = !{!"p1 _ZTS13tcache_slow_s", !9, i64 0}
!24 = !{!"", !25, i64 0}
!25 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !9, i64 0}
!26 = !{!"malloc_mutex_s", !5, i64 0}
!27 = !{!"", !28, i64 0}
!28 = !{!"", !29, i64 0}
!29 = !{!"p1 _ZTS7edata_s", !9, i64 0}
!30 = !{!"pa_shard_s", !31, i64 0, !17, i64 8, !32, i64 16, !33, i64 17, !34, i64 24, !46, i64 62264, !50, i64 62384, !61, i64 68104, !4, i64 68248, !44, i64 68256, !64, i64 68264, !39, i64 68272, !38, i64 68280}
!31 = !{!"p1 _ZTS12pa_central_s", !9, i64 0}
!32 = !{!"", !33, i64 0}
!33 = !{!"_Bool", !5, i64 0}
!34 = !{!"pac_s", !35, i64 0, !36, i64 56, !36, i64 19496, !36, i64 38936, !38, i64 58376, !39, i64 58384, !40, i64 58392, !41, i64 58400, !26, i64 58408, !42, i64 58520, !17, i64 58640, !43, i64 58648, !43, i64 60432, !44, i64 62216, !45, i64 62224, !17, i64 62232}
!35 = !{!"pai_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!36 = !{!"ecache_s", !26, i64 0, !37, i64 112, !37, i64 9768, !4, i64 19424, !4, i64 19428, !33, i64 19432}
!37 = !{!"eset_s", !5, i64 0, !5, i64 32, !5, i64 6432, !27, i64 9632, !17, i64 9640, !4, i64 9648}
!38 = !{!"p1 _ZTS6base_s", !9, i64 0}
!39 = !{!"p1 _ZTS6emap_s", !9, i64 0}
!40 = !{!"p1 _ZTS13edata_cache_s", !9, i64 0}
!41 = !{!"exp_grow_s", !4, i64 0, !4, i64 4}
!42 = !{!"san_bump_alloc_s", !26, i64 0, !29, i64 112}
!43 = !{!"decay_s", !26, i64 0, !33, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !11, i64 144, !17, i64 152, !11, i64 160, !11, i64 168, !5, i64 176, !11, i64 1776}
!44 = !{!"p1 _ZTS14malloc_mutex_s", !9, i64 0}
!45 = !{!"p1 _ZTS11pac_stats_s", !9, i64 0}
!46 = !{!"sec_s", !35, i64 0, !47, i64 56, !48, i64 64, !49, i64 104, !4, i64 112}
!47 = !{!"p1 _ZTS5pai_s", !9, i64 0}
!48 = !{!"sec_opts_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!49 = !{!"p1 _ZTS11sec_shard_s", !9, i64 0}
!50 = !{!"hpa_shard_s", !35, i64 0, !51, i64 56, !26, i64 64, !26, i64 176, !38, i64 288, !52, i64 296, !53, i64 320, !11, i64 5600, !4, i64 5608, !39, i64 5616, !59, i64 5624, !11, i64 5672, !60, i64 5680, !17, i64 5712}
!51 = !{!"p1 _ZTS13hpa_central_s", !9, i64 0}
!52 = !{!"edata_cache_fast_s", !27, i64 0, !40, i64 8, !33, i64 16}
!53 = !{!"psset_s", !5, i64 0, !5, i64 1024, !54, i64 1032, !55, i64 1056, !56, i64 4224, !5, i64 4232, !5, i64 5256, !56, i64 5272}
!54 = !{!"psset_bin_stats_s", !11, i64 0, !11, i64 8, !11, i64 16}
!55 = !{!"psset_stats_s", !5, i64 0, !5, i64 3072, !5, i64 3120}
!56 = !{!"", !57, i64 0}
!57 = !{!"", !58, i64 0}
!58 = !{!"p1 _ZTS8hpdata_s", !9, i64 0}
!59 = !{!"hpa_shard_opts_s", !11, i64 0, !11, i64 8, !4, i64 16, !33, i64 20, !11, i64 24, !11, i64 32, !33, i64 40}
!60 = !{!"hpa_shard_nonderived_stats_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!61 = !{!"edata_cache_s", !62, i64 0, !17, i64 16, !26, i64 24, !38, i64 136}
!62 = !{!"", !63, i64 0}
!63 = !{!"ph_s", !9, i64 0, !11, i64 8}
!64 = !{!"p1 _ZTS16pa_shard_stats_s", !9, i64 0}
!65 = !{!34, !45, i64 62224}
!66 = !{!16, !11, i64 40}
!67 = !{!16, !11, i64 24}
!68 = !{!16, !11, i64 0}
!69 = !{!16, !11, i64 8}
!70 = !{!16, !11, i64 16}
!71 = !{!16, !11, i64 32}
!72 = !{!73, !11, i64 56}
!73 = !{!"", !17, i64 0, !17, i64 8, !11, i64 16, !11, i64 24, !4, i64 32, !14, i64 36, !11, i64 40, !15, i64 48, !11, i64 56}
!74 = !{!73, !15, i64 48}
!75 = !{!73, !11, i64 40}
!76 = !{!13, !25, i64 10416}
!77 = !{!16, !11, i64 72}
!78 = !{!16, !11, i64 64}
!79 = !{!16, !11, i64 96}
!80 = !{!16, !11, i64 80}
!81 = !{!16, !11, i64 88}
!82 = !{!83, !11, i64 40}
!83 = !{!"arena_stats_large_s", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !11, i64 40}
!84 = !{!16, !11, i64 56}
!85 = !{!86, !88, i64 16}
!86 = !{!"cache_bin_array_descriptor_s", !87, i64 0, !88, i64 16}
!87 = !{!"", !25, i64 0, !25, i64 8}
!88 = !{!"p1 _ZTS11cache_bin_s", !9, i64 0}
!89 = !{!86, !25, i64 0}
!90 = !{!91, !92, i64 0}
!91 = !{!"cache_bin_s", !92, i64 0, !93, i64 8, !94, i64 16, !94, i64 18, !94, i64 20, !95, i64 22}
!92 = !{!"any p2 pointer", !9, i64 0}
!93 = !{!"cache_bin_stats_s", !11, i64 0}
!94 = !{!"short", !5, i64 0}
!95 = !{!"cache_bin_info_s", !94, i64 0}
!96 = !{!91, !94, i64 20}
!97 = !{!91, !94, i64 22}
!98 = !{!91, !94, i64 18}
!99 = !{!16, !11, i64 184}
!100 = !{!16, !11, i64 192}
!101 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !10, i64 32, i64 4, !3, i64 36, i64 4, !3, i64 40, i64 8, !10, i64 48, i64 8, !102, i64 56, i64 8, !10}
!102 = !{!15, !15, i64 0}
!103 = !{!9, !9, i64 0}
!104 = !{!105, !4, i64 20}
!105 = !{!"bin_info_s", !11, i64 0, !11, i64 8, !4, i64 16, !4, i64 20, !106, i64 24}
!106 = !{!"bitmap_info_s", !11, i64 0, !11, i64 8}
!107 = !{!73, !4, i64 32}
!108 = !{!109, !11, i64 216}
!109 = !{!"bin_s", !26, i64 0, !110, i64 112, !29, i64 224, !62, i64 232, !27, i64 248}
!110 = !{!"bin_stats_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104}
!111 = !{!110, !11, i64 104}
!112 = !{!13, !45, i64 72912}
!113 = !{i8 0, i8 2}
!114 = !{}
!115 = !{!13, !4, i64 78952}
!116 = !{!117, !117, i64 0}
!117 = !{!"p1 _ZTS24background_thread_info_s", !9, i64 0}
!118 = !{!33, !33, i64 0}
!119 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!120 = !{!5, !5, i64 0}
!121 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!122 = !{!123, !9, i64 8}
!123 = !{!"edata_s", !11, i64 0, !9, i64 8, !5, i64 16, !58, i64 24, !11, i64 32, !5, i64 40, !5, i64 64}
!124 = !{!123, !11, i64 0}
!125 = !{!109, !11, i64 112}
!126 = !{!109, !11, i64 120}
!127 = !{!27, !29, i64 0}
!128 = !{!129, !11, i64 0}
!129 = !{!"rtree_ctx_cache_elm_s", !11, i64 0, !130, i64 8}
!130 = !{!"p1 _ZTS16rtree_leaf_elm_s", !9, i64 0}
!131 = !{!129, !130, i64 8}
!132 = !{!133}
!133 = distinct !{!133, !134, !"rtree_leaf_elm_read: argument 0"}
!134 = distinct !{!134, !"rtree_leaf_elm_read"}
!135 = !{!109, !29, i64 224}
!136 = !{!109, !11, i64 136}
!137 = !{!109, !11, i64 176}
!138 = !{!139, !4, i64 0}
!139 = !{!"ehooks_s", !4, i64 0, !140, i64 8}
!140 = !{!"", !9, i64 0}
!141 = !{!44, !44, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"p1 _ZTS7arena_s", !9, i64 0}
!144 = !{!105, !4, i64 16}
!145 = !{!146, !4, i64 4}
!146 = !{!"arena_dalloc_bin_locked_info_s", !147, i64 0, !4, i64 4, !11, i64 8}
!147 = !{!"div_info_s", !4, i64 0}
!148 = !{!146, !11, i64 8}
!149 = !{!150, !4, i64 80}
!150 = !{!"arena_bin_flush_batch_state_s", !146, i64 0, !5, i64 16, !4, i64 80, !27, i64 88}
!151 = !{!147, !4, i64 0}
!152 = !{!109, !11, i64 192}
!153 = !{!109, !11, i64 208}
!154 = !{!155, !29, i64 8}
!155 = !{!"bin_remote_free_data_s", !9, i64 0, !29, i64 8}
!156 = !{!155, !9, i64 0}
!157 = !{!109, !11, i64 184}
!158 = !{!29, !29, i64 0}
!159 = !{!105, !11, i64 0}
!160 = !{!109, !11, i64 168}
!161 = !{!109, !11, i64 160}
!162 = !{!91, !11, i64 8}
!163 = !{!109, !11, i64 128}
!164 = !{!109, !11, i64 144}
!165 = !{!166, !4, i64 0}
!166 = !{!"ticker_geom_s", !4, i64 0, !4, i64 4}
!167 = !{!166, !4, i64 4}
!168 = !{!105, !11, i64 8}
!169 = !{!123, !11, i64 32}
!170 = !{!171, !143, i64 40}
!171 = !{!"tcache_slow_s", !172, i64 0, !86, i64 16, !143, i64 40, !4, i64 48, !4, i64 52, !5, i64 56, !5, i64 92, !5, i64 128, !9, i64 168, !173, i64 176}
!172 = !{!"", !23, i64 0, !23, i64 8}
!173 = !{!"p1 _ZTS8tcache_s", !9, i64 0}
!174 = !{!"branch_weights", !"expected", i32 1808549991, i32 338933657}
!175 = !{!91, !94, i64 16}
!176 = !{!177, !29, i64 0}
!177 = !{!"rtree_contents_s", !29, i64 0, !178, i64 8}
!178 = !{!"rtree_metadata_s", !4, i64 0, !4, i64 4, !33, i64 8, !33, i64 9}
!179 = !{!"branch_weights", !"expected", i32 2146410443, i32 1073205}
!180 = !{!"branch_weights", !"expected", i32 1609807, i32 2145873841}
!181 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!182 = !{!183, !33, i64 0}
!183 = !{!"hook_ralloc_args_s", !33, i64 0, !5, i64 8}
!184 = !{!185, !23, i64 0}
!185 = !{!"tcache_s", !23, i64 0, !5, i64 8}
!186 = !{!171, !4, i64 48}
!187 = !{!"branch_weights", !"expected", i32 2146410979, i32 1072669}
!188 = !{!189, !190, i64 0}
!189 = !{!"arena_config_s", !190, i64 0, !33, i64 8}
!190 = !{!"p1 _ZTS14extent_hooks_s", !9, i64 0}
!191 = !{!189, !33, i64 8}
!192 = !{!13, !15, i64 16}
!193 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 4, !3, i64 20, i64 1, !118, i64 24, i64 8, !10, i64 32, i64 8, !10, i64 40, i64 1, !118}
!194 = !{!59, !33, i64 20}
!195 = !{!196, !4, i64 4}
!196 = !{!"sc_s", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !33, i64 16, !33, i64 17, !4, i64 20, !4, i64 24}
!197 = !{!196, !4, i64 12}
!198 = !{!196, !4, i64 8}
!199 = !{!171, !173, i64 176}
!200 = !{!171, !23, i64 0}
!201 = !{!171, !23, i64 8}
!202 = !{!13, !23, i64 10408}
!203 = !{!86, !25, i64 8}
!204 = !{!205, !11, i64 184}
!205 = !{!"background_thread_info_s", !11, i64 0, !5, i64 8, !26, i64 56, !4, i64 168, !32, i64 172, !17, i64 176, !11, i64 184, !11, i64 192, !17, i64 200}
!206 = !{!207}
!207 = distinct !{!207, !208, !"rtree_leaf_elm_read: argument 0"}
!208 = distinct !{!208, !"rtree_leaf_elm_read"}
!209 = !{!177, !4, i64 8}
!210 = !{!211}
!211 = distinct !{!211, !212, !"rtree_leaf_elm_bits_decode: argument 0"}
!212 = distinct !{!212, !"rtree_leaf_elm_bits_decode"}
!213 = !{!177, !33, i64 17}
!214 = !{!177, !33, i64 16}
!215 = !{!177, !4, i64 12}
end_hunk_1
