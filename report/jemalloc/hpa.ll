Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/hpa?download=true
inline.NumInlined: 206
inline.NumDeleted: 94
begin_hunk_0_@je_hpa_shard_disable:bb.a
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !63
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @je_edata_cache_fast_disable(ptr noundef %0, ptr noundef nonnull %i.o) #7
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  store atomic i8 0, ptr %i.p monotonic, align 8
  %i.q = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #7 ; 0 uses
  ret void
}

declare void @je_edata_cache_fast_disable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_hpa_shard_flush(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.edata_list_active_t, align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store ptr null, ptr %2, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @je_sec_flush(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call fastcc void @hpa_dalloc_batch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_hpa_shard_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.edata_list_active_t, align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store ptr null, ptr %2, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @je_sec_flush(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call fastcc void @hpa_dalloc_batch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  %i.d = call ptr @je_psset_pick_alloc(ptr noundef nonnull %i.c, i64 noundef 4096) #7 ; 2 uses
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.f = phi ptr [ %i.d, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  call void @je_psset_remove(ptr noundef nonnull %i.c, ptr noundef nonnull %i.f) #7
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %.val = load ptr, ptr %i.f, align 8, !tbaa !83
  call void %i.i(ptr noundef %.val, i64 noundef 2097152) #7
  %i.j = call ptr @je_psset_pick_alloc(ptr noundef nonnull %i.c, i64 noundef 4096) #7 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @je_psset_pick_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @je_psset_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_hpa_shard_set_deferral_allowed(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.c = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.b) #7
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  store atomic i8 1, ptr %i.d monotonic, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.e) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %.not.i.i = icmp eq ptr %i.j, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.i, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !63
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 5740 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !86, !range !64, !noundef !87
  %i.p = trunc nuw i8 %i.o to i1
  store i8 %i.a, ptr %i.n, align 4, !tbaa !86
  %.not = xor i1 %i.p, true
  %or.cond = or i1 %2, %.not
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  tail call fastcc void @hpa_shard_maybe_do_deferred_work(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_lock.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  store atomic i8 0, ptr %i.q monotonic, align 8
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #7 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hpa_shard_maybe_do_deferred_work(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.nstime_t, align 8           ; 5 uses
  %4 = alloca %struct.nstime_t, align 8           ; 4 uses
  %5 = alloca %struct.nstime_t, align 8           ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %6 = alloca [16 x %struct.hpa_purge_item_t], align 16 ; 5 uses
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5740
  %i.c = load i8, ptr %i.b, align 4, !tbaa !86, !range !64, !noundef !87
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %hpa_try_hugify.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ 16, %bb.b ], [ -1, %bb.a ]     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 5856 ; 3 uses
  tail call void %i.i(ptr noundef nonnull %i.j, i1 noundef zeroext false) #7, !inline_history !89
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 5848 ; 2 uses
  %i.l = tail call i64 @je_nstime_ms_between(ptr noundef nonnull %i.k, ptr noundef nonnull %i.j) #7
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 5760
  %i.n = load i64, ptr %i.m, align 8, !tbaa !78
  %.not = icmp ult i64 %i.l, %i.n
  br i1 %.not, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5768
  %i.p = load i64, ptr %i.o, align 8, !tbaa !90   ; 2 uses
  %.029.a = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.p) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.r = load i64, ptr @je_opt_process_madvise_max_batch, align 8, !tbaa !44 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 8, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 7 uses
  %i.v = getelementptr i8, ptr %1, i64 1416       ; 2 uses
  %i.w = getelementptr i8, ptr %1, i64 5800       ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 5736 ; 3 uses
  %i.y = getelementptr i8, ptr %1, i64 1408       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5784 ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 5792      ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 5752 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 5816 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 5840 ; 2 uses
  %i.aj = getelementptr i8, ptr %1, i64 5728
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 5776
  %i.al = icmp eq i64 %i.p, 0
  br i1 %i.al, label %hpa_purge.exit, label %.lr.ph.preheader.i

.loopexit.loopexit.i:                             ; preds = %hpa_update_purge_hugify_eligibility.exit.i
  %i.am = icmp eq i64 %.sroa.28.177.i, %.029.a
  br i1 %i.am, label %hpa_purge.exit, label %.lr.ph.preheader.i, !llvm.loop !91

.lr.ph.preheader.i:                               ; preds = %bb.d, %.loopexit.loopexit.i
  %.sroa.28.0.i48 = phi i64 [ %.sroa.28.177.i, %.loopexit.loopexit.i ], [ 0, %bb.d ] ; 2 uses
  %i.an = add i64 %.sroa.28.0.i48, 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.preheader.i
  %.sroa.8.081.i = phi i64 [ %i.cv, %bb.p ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.16.080.i = phi i64 [ %i.db, %bb.p ], [ %.sroa.28.0.i48, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.20.079.i = phi i64 [ %i.cy, %bb.p ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.28.178.i = phi i64 [ %i.bz, %bb.p ], [ 0, %.lr.ph.preheader.i ] ; 5 uses
  %i.ao = icmp eq i64 %.sroa.28.178.i, 16
  br i1 %i.ao, label %.critedge.thread.i, label %hpa_batch_full.exit.i

hpa_batch_full.exit.i:                            ; preds = %.lr.ph.i
  %.not.i = icmp ult i64 %.sroa.20.079.i, %i.t
  br i1 %.not.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %hpa_batch_full.exit.i
  %i.ap = call ptr @je_psset_pick_purge(ptr noundef nonnull %i.u, ptr noundef null) #7
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i64, ptr %i.v, align 8, !tbaa !71
  %.val11.i.i = load i64, ptr %i.w, align 8, !tbaa !47
  %i.ar = sub i64 %.val.i.i, %.val11.i.i
  %i.as = load i32, ptr %i.x, align 8, !tbaa !72  ; 3 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %hpa_ndirty_max.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i = load i64, ptr %i.y, align 8, !tbaa !73 ; 3 uses
  %i.au = icmp ult i64 %.val.i.i.i, 281474976710656
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = zext i32 %i.as to i64
  %i.aw = mul i64 %.val.i.i.i, %i.av
  %i.ax = lshr i64 %i.aw, 16
  br label %hpa_ndirty_max.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ay = lshr i64 %.val.i.i.i, 16
  %i.az = zext i32 %i.as to i64
  %i.ba = mul i64 %i.ay, %i.az
  br label %hpa_ndirty_max.exit.i.i

hpa_ndirty_max.exit.i.i:                          ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i64 [ %i.ba, %bb.i ], [ %i.ax, %bb.h ]
  %i.bb = icmp ugt i64 %i.ar, %.0.i.i.i
  br i1 %i.bb, label %hpa_should_purge.exit.thread55.i, label %hpa_ndirty_max.exit.thread.i.i

hpa_ndirty_max.exit.thread.i.i:                   ; preds = %hpa_ndirty_max.exit.i.i, %bb.f
  %i.bc = call ptr @je_psset_pick_hugify(ptr noundef nonnull %i.u) #7 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %hpa_ndirty_max.exit.thread.i.i
  %.val.i12.i.i = load i64, ptr %i.v, align 8, !tbaa !71
  %.val11.i.i.i = load i64, ptr %i.w, align 8, !tbaa !47
  %i.be = getelementptr i8, ptr %i.bc, i64 176
  %.val12.i.i.i = load i64, ptr %i.be, align 8, !tbaa !74
  %.neg = add i64 %.val.i12.i.i, 512
  %i.bf = add i64 %.val11.i.i.i, %.val12.i.i.i
  %i.bg = sub i64 %.neg, %i.bf
  %i.bh = load i32, ptr %i.x, align 8, !tbaa !72  ; 3 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !73 ; 3 uses
  %i.bj = icmp ult i64 %.val.i.i.i.i, 281474976710656
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = zext i32 %i.bh to i64
  %i.bl = mul i64 %.val.i.i.i.i, %i.bk
  %i.bm = lshr i64 %i.bl, 16
  br label %hpa_should_purge.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bn = lshr i64 %.val.i.i.i.i, 16
  %i.bo = zext i32 %i.bh to i64
  %i.bp = mul i64 %i.bn, %i.bo
  br label %hpa_should_purge.exit.i

hpa_should_purge.exit.i:                          ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i64 [ %i.bp, %bb.m ], [ %i.bm, %bb.l ]
  %i.bq = icmp ugt i64 %i.bg, %.0.i.i.i.i
  br i1 %i.bq, label %hpa_should_purge.exit.thread55.i, label %.critedge.i

hpa_should_purge.exit.thread55.i:                 ; preds = %hpa_should_purge.exit.i, %hpa_ndirty_max.exit.i.i
  %i.br = load i64, ptr %i.z, align 8, !tbaa !92
  %.not.i.i = icmp eq i64 %i.br, 0
  %.sink.i.i = select i1 %.not.i.i, ptr null, ptr %i.j
  %i.bs = call ptr @je_psset_pick_purge(ptr noundef nonnull %i.u, ptr noundef %.sink.i.i) #7 ; 14 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %hpa_should_purge.exit.thread55.i
  call void @je_psset_update_begin(ptr noundef nonnull %i.u, ptr noundef nonnull %i.bs) #7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 33
  store i8 1, ptr %i.bu, align 1, !tbaa !93
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 19
  store i8 0, ptr %i.bv, align 1, !tbaa !94
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  store i8 0, ptr %i.bw, align 4, !tbaa !95
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 17
  store i8 0, ptr %i.bx, align 1, !tbaa !96
  call void @je_psset_update_end(ptr noundef nonnull %i.u, ptr noundef nonnull %i.bs) #7
  %i.by = getelementptr inbounds nuw [104 x i8], ptr %6, i64 %.sroa.28.178.i ; 5 uses
  %i.bz = add nuw nsw i64 %.sroa.28.178.i, 1      ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  store ptr %i.bs, ptr %i.ca, align 8, !tbaa !97
  %i.cb = load i32, ptr %i.aa, align 8, !tbaa !65
  %i.cc = icmp eq i32 %i.cb, 3
  br i1 %i.cc, label %hpa_is_hugify_lazy.exit.thread.i.i.i, label %hpa_is_hugify_lazy.exit.i.i.i

hpa_is_hugify_lazy.exit.i.i.i:                    ; preds = %bb.n
  %i.cd = load i8, ptr %i.ab, align 8, !tbaa !100, !range !64, !noundef !87
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = load i8, ptr @je_opt_experimental_hpa_enforce_hugify, align 1, !range !64
  %i.cg = trunc nuw i8 %i.cf to i1
  %or.cond.i.i.i = select i1 %i.ce, i1 true, i1 %i.cg
  br i1 %or.cond.i.i.i, label %hpa_is_hugify_lazy.exit.thread.i.i.i, label %hpa_needs_dehugify.exit.i.i

hpa_is_hugify_lazy.exit.thread.i.i.i:             ; preds = %hpa_is_hugify_lazy.exit.i.i.i, %bb.n
  %i.ch = getelementptr i8, ptr %i.bs, i64 16
  %.val.i.i30.i = load i8, ptr %i.ch, align 8, !tbaa !101, !range !64, !noundef !87
  %i.ci = trunc nuw i8 %.val.i.i30.i to i1
  br i1 %i.ci, label %hpa_needs_dehugify.exit.thread.i.i, label %hpa_needs_dehugify.exit.thread36.i.i

hpa_needs_dehugify.exit.thread36.i.i:             ; preds = %hpa_is_hugify_lazy.exit.thread.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  store i8 0, ptr %i.cj, align 8, !tbaa !102
  br label %hpa_purge_start_hp.exit.i

hpa_needs_dehugify.exit.thread.i.i:               ; preds = %hpa_is_hugify_lazy.exit.thread.i.i.i
  %i.ck = getelementptr i8, ptr %i.bs, i64 104
  %.val4.i.i.i = load i64, ptr %i.ck, align 8, !tbaa !103 ; 2 uses
  %i.cl = icmp ne i64 %.val4.i.i.i, 0
  %i.cm = zext i1 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  store i8 %i.cm, ptr %i.cn, align 8, !tbaa !102
  br label %bb.o

hpa_needs_dehugify.exit.i.i:                      ; preds = %hpa_is_hugify_lazy.exit.i.i.i
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.bs, i64 16
  %.val.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !101, !range !64
  %i.co = trunc nuw i8 %.val.pre.i.i to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  store i8 0, ptr %i.cp, align 8, !tbaa !102
  br i1 %i.co, label %hpa_needs_dehugify.exit.i._crit_edge.i, label %hpa_purge_start_hp.exit.i

hpa_needs_dehugify.exit.i._crit_edge.i:           ; preds = %hpa_needs_dehugify.exit.i.i
  %.phi.trans.insert.i = getelementptr i8, ptr %i.bs, i64 104
  %.val32.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %hpa_needs_dehugify.exit.i._crit_edge.i, %hpa_needs_dehugify.exit.thread.i.i
  %.val32.i.i = phi i64 [ %.val32.i.pre.i, %hpa_needs_dehugify.exit.i._crit_edge.i ], [ %.val4.i.i.i, %hpa_needs_dehugify.exit.thread.i.i ]
  %i.cq = icmp eq i64 %.val32.i.i, 0
  %i.cr = zext i1 %i.cq to i8
  br label %hpa_purge_start_hp.exit.i

hpa_purge_start_hp.exit.i:                        ; preds = %bb.o, %hpa_needs_dehugify.exit.i.i, %hpa_needs_dehugify.exit.thread36.i.i
  %i.cs = phi i8 [ 0, %hpa_needs_dehugify.exit.i.i ], [ %i.cr, %bb.o ], [ 0, %hpa_needs_dehugify.exit.thread36.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bs, i64 256
  store i8 %i.cs, ptr %i.ct, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.cu = call i64 @je_hpdata_purge_begin(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.by, ptr noundef nonnull %i.a) #7 ; 3 uses
  %i.cv = add i64 %i.cu, %.sroa.8.081.i           ; 3 uses
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.cx = icmp eq i64 %i.cu, 0
  br i1 %i.cx, label %.critedge.thread.i, label %bb.p

bb.p:                                             ; preds = %hpa_purge_start_hp.exit.i
  %i.cy = add i64 %i.cw, %.sroa.20.079.i
  %i.cz = load i64, ptr %i.w, align 8, !tbaa !47
  %i.da = add i64 %i.cz, %i.cu
  store i64 %i.da, ptr %i.w, align 8, !tbaa !47
  %i.db = add i64 %.sroa.16.080.i, 1              ; 2 uses
  %i.dc = icmp eq i64 %i.db, %.029.a
  br i1 %i.dc, label %.critedge.thread.i, label %.lr.ph.i

.critedge.i:                                      ; preds = %hpa_should_purge.exit.thread55.i, %hpa_should_purge.exit.i, %bb.j, %hpa_ndirty_max.exit.thread.i.i, %bb.e, %hpa_batch_full.exit.i
  %i.dd = icmp eq i64 %.sroa.28.178.i, 0
  br i1 %i.dd, label %hpa_purge.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.p, %hpa_purge_start_hp.exit.i, %.lr.ph.i, %.critedge.i
  %.sroa.28.177.i = phi i64 [ %.sroa.16.080.i, %.critedge.i ], [ %i.an, %.lr.ph.i ], [ %.sroa.16.080.i, %hpa_purge_start_hp.exit.i ], [ %.029.a, %bb.p ] ; 2 uses
  %.sroa.8.174.i = phi i64 [ %.sroa.8.081.i, %.critedge.i ], [ %.sroa.8.081.i, %.lr.ph.i ], [ %i.cv, %hpa_purge_start_hp.exit.i ], [ %i.cv, %bb.p ] ; 2 uses
  %.sroa.20.173.i = phi i64 [ %.sroa.28.178.i, %.critedge.i ], [ 16, %.lr.ph.i ], [ %i.bz, %hpa_purge_start_hp.exit.i ], [ %i.bz, %bb.p ] ; 2 uses
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.dg = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ad) #7 ; 0 uses
  call void @je_hpa_purge_batch(ptr noundef nonnull %i.df, ptr noundef nonnull %6, i64 noundef %.sroa.20.173.i) #7
  %i.dh = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ad) #7
  %.not.i31.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i31.i, label %malloc_mutex_trylock_final.exit.i.i, label %bb.q

malloc_mutex_trylock_final.exit.i.i:              ; preds = %.critedge.thread.i
  store atomic i8 1, ptr %i.ac monotonic, align 8
  br label %bb.r

bb.q:                                             ; preds = %.critedge.thread.i
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.q) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %malloc_mutex_trylock_final.exit.i.i
  %i.di = load i64, ptr %i.ae, align 8, !tbaa !58
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.ae, align 8, !tbaa !58
  %i.dk = load ptr, ptr %i.af, align 8, !tbaa !62
  %.not.i.i.i = icmp eq ptr %i.dk, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %0, ptr %i.af, align 8, !tbaa !62
  %i.dl = load i64, ptr %i.ag, align 8, !tbaa !63
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.ag, align 8, !tbaa !63
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.s, %bb.r
  %i.dn = load i64, ptr %i.w, align 8, !tbaa !47
  %i.do = sub i64 %i.dn, %.sroa.8.174.i
  store i64 %i.do, ptr %i.w, align 8, !tbaa !47
  %i.dp = load i64, ptr %i.ah, align 8, !tbaa !105
  %i.dq = add i64 %i.dp, %.sroa.8.174.i
  store i64 %i.dq, ptr %i.ah, align 8, !tbaa !105
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 176
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !88
  call void %i.dt(ptr noundef nonnull %i.k, i1 noundef zeroext false) #7, !inline_history !106
  br label %bb.t

bb.t:                                             ; preds = %hpa_update_purge_hugify_eligibility.exit.i, %malloc_mutex_lock.exit.i
  %.0107.i = phi i64 [ 0, %malloc_mutex_lock.exit.i ], [ %i.gi, %hpa_update_purge_hugify_eligibility.exit.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw [104 x i8], ptr %6, i64 %.0107.i ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !102, !range !64, !noundef !87
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dy = load i64, ptr %i.ai, align 16, !tbaa !107
  %i.dz = add i64 %i.dy, 1
  store i64 %i.dz, ptr %i.ai, align 16, !tbaa !107
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 88 ; 5 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !97
  call void @je_psset_update_begin(ptr noundef nonnull %i.u, ptr noundef %i.eb) #7
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !97 ; 3 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %.val.i32.i = load i8, ptr %i.ed, align 8, !tbaa !101, !range !64, !noundef !87
  %i.ee = trunc nuw i8 %.val.i32.i to i1
  br i1 %i.ee, label %bb.w, label %hpdata_changing_state_get.exit.i.i

bb.w:                                             ; preds = %bb.v
  call void @je_hpdata_dehugify(ptr noundef nonnull %i.ec) #7
  %.pre.i.i = load ptr, ptr %i.ea, align 8, !tbaa !97
  br label %hpdata_changing_state_get.exit.i.i

hpdata_changing_state_get.exit.i.i:               ; preds = %bb.w, %bb.v
  %i.ef = phi ptr [ %.pre.i.i, %bb.w ], [ %i.ec, %bb.v ]
  call void @je_hpdata_purge_end(ptr noundef %i.ef, ptr noundef nonnull %i.du) #7
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !97 ; 21 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 33
  store i8 0, ptr %i.eh, align 1, !tbaa !93
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 17
  store i8 1, ptr %i.ei, align 1, !tbaa !96
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 34
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !108, !range !64, !noundef !87
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %hpdata_changing_state_get.exit.thread.i.i, label %bb.x

hpdata_changing_state_get.exit.thread.i.i:        ; preds = %hpdata_changing_state_get.exit.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 19
  store i8 0, ptr %i.em, align 1, !tbaa !94
  br label %.sink.split.i.i

bb.x:                                             ; preds = %hpdata_changing_state_get.exit.i.i
  %.val32.i33.i = load i32, ptr %i.aa, align 8, !tbaa !65 ; 2 uses
  %.5792.val.off.i.i.i = add i32 %.val32.i33.i, -1
  %switch.i.i.i = icmp ult i32 %.5792.val.off.i.i.i, 2
  br i1 %switch.i.i.i, label %hpa_should_assume_huge.exit.i.i, label %hpa_assume_huge.exit.i.i

hpa_should_assume_huge.exit.i.i:                  ; preds = %bb.x
  %i.en = getelementptr i8, ptr %i.eg, i64 256
  %.val4.i.i37.i = load i8, ptr %i.en, align 8, !tbaa !104, !range !64, !noundef !87
  %i.eo = trunc nuw i8 %.val4.i.i37.i to i1
  br i1 %i.eo, label %bb.y, label %hpa_is_hugify_lazy.exit.i.i

bb.y:                                             ; preds = %hpa_should_assume_huge.exit.i.i
  %i.ep = getelementptr i8, ptr %i.eg, i64 16
  %.val.i.i38.i = load i8, ptr %i.ep, align 8, !tbaa !101, !range !64, !noundef !87
  %i.eq = trunc nuw i8 %.val.i.i38.i to i1
  br i1 %i.eq, label %hpa_is_hugify_lazy.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = getelementptr i8, ptr %i.eg, i64 104
  %.val6.i.i.i = load i64, ptr %i.er, align 8, !tbaa !103
  %i.es = icmp eq i64 %.val6.i.i.i, 0
  br i1 %i.es, label %hpa_is_hugify_lazy.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = getelementptr i8, ptr %i.eg, i64 176
  %.val7.i.i.i = load i64, ptr %i.et, align 8, !tbaa !74
  %.not.i.i39.i = icmp eq i64 %.val7.i.i.i, 512
  br i1 %.not.i.i39.i, label %hpa_is_hugify_lazy.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @je_hpdata_hugify(ptr noundef nonnull %i.eg) #7
  %.pr.pre.i.i = load i32, ptr %i.aa, align 8, !tbaa !65
  br label %hpa_assume_huge.exit.i.i

hpa_assume_huge.exit.i.i:                         ; preds = %bb.ab, %bb.x
  %i.eu = phi i32 [ %.val32.i33.i, %bb.x ], [ %.pr.pre.i.i, %bb.ab ]
  %i.ev = icmp eq i32 %i.eu, 3
  br i1 %i.ev, label %hpa_is_hugify_lazy.exit.thread.i.i, label %hpa_is_hugify_lazy.exit.i.i

hpa_is_hugify_lazy.exit.i.i:                      ; preds = %hpa_assume_huge.exit.i.i, %bb.aa, %bb.z, %bb.y, %hpa_should_assume_huge.exit.i.i
  %i.ew = load i8, ptr %i.ab, align 8, !tbaa !100, !range !64, !noundef !87
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = load i8, ptr @je_opt_experimental_hpa_enforce_hugify, align 1, !range !64
  %i.ez = trunc nuw i8 %i.ey to i1
  %or.cond.i.i = select i1 %i.ex, i1 true, i1 %i.ez
  br i1 %or.cond.i.i, label %hpa_is_hugify_lazy.exit.thread.i.i, label %bb.ae

hpa_is_hugify_lazy.exit.thread.i.i:               ; preds = %hpa_is_hugify_lazy.exit.i.i, %hpa_assume_huge.exit.i.i
  %.val34.i.i = load i64, ptr %i.aj, align 8, !tbaa !109
  %i.fa = getelementptr i8, ptr %i.eg, i64 104
  %.val35.i.i = load i64, ptr %i.fa, align 8, !tbaa !103
  %i.fb = shl i64 %.val35.i.i, 12
  %.not7.i.i = icmp ult i64 %i.fb, %.val34.i.i
  br i1 %.not7.i.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %hpa_is_hugify_lazy.exit.thread.i.i
  %i.fc = getelementptr i8, ptr %i.eg, i64 16
  %.val33.i.i = load i8, ptr %i.fc, align 8, !tbaa !101, !range !64, !noundef !87
  %i.fd = trunc nuw i8 %.val33.i.i to i1
  br i1 %i.fd, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.fe = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 176
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !88
  call void %i.fg(ptr noundef nonnull %4, i1 noundef zeroext true) #7, !inline_history !110
  %i.fh = load i64, ptr %4, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  store i8 1, ptr %i.fi, align 4, !tbaa !95
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store i64 %i.fh, ptr %i.fj, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %hpa_is_hugify_lazy.exit.thread.i.i, %hpa_is_hugify_lazy.exit.i.i
  %i.fk = load i32, ptr %i.x, align 8, !tbaa !72
  %i.fl = icmp eq i32 %i.fk, -1
  br i1 %i.fl, label %hpa_good_purge_candidate.exit.thread5.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fm = getelementptr i8, ptr %i.eg, i64 104
  %.val6.i37.i.i = load i64, ptr %i.fm, align 8, !tbaa !103 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.eg, i64 176
  %.val7.i38.i.i = load i64, ptr %i.fn, align 8, !tbaa !74 ; 2 uses
  %i.fo = icmp eq i64 %.val6.i37.i.i, 0
  %i.fp = icmp ne i64 %.val7.i38.i.i, 0
  %or.cond.i.i34.i = and i1 %i.fo, %i.fp
  br i1 %or.cond.i.i34.i, label %hpa_good_purge_candidate.exit.thread.i.i, label %hpa_good_purge_candidate.exit.i.i

hpa_good_purge_candidate.exit.i.i:                ; preds = %bb.af
  %i.fq = sub i64 %.val7.i38.i.i, %.val6.i37.i.i
  %i.fr = shl i64 %i.fq, 12
  %i.fs = load i64, ptr %i.ak, align 8, !tbaa !111
  %.not8.i.i = icmp ult i64 %i.fr, %i.fs
  br i1 %.not8.i.i, label %hpa_good_purge_candidate.exit.thread5.i.i, label %hpa_good_purge_candidate.exit.thread.i.i

hpa_good_purge_candidate.exit.thread.i.i:         ; preds = %hpa_good_purge_candidate.exit.i.i, %bb.af
  %i.ft = getelementptr i8, ptr %i.eg, i64 19
  %.val36.i.i = load i8, ptr %i.ft, align 1, !tbaa !94, !range !64, !noundef !87
  %i.fu = trunc nuw i8 %.val36.i.i to i1
  br i1 %i.fu, label %hpa_good_purge_candidate.exit.thread5.i.i, label %bb.ag

bb.ag:                                            ; preds = %hpa_good_purge_candidate.exit.thread.i.i
  %i.fv = load i64, ptr %i.z, align 8, !tbaa !92  ; 2 uses
  %.not.i35.i = icmp eq i64 %i.fv, 0
  br i1 %.not.i35.i, label %hpa_good_purge_candidate.exit.thread5.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.fw = mul i64 %i.fv, 1000000
  %i.fx = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 176
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !88
  call void %i.fz(ptr noundef nonnull %5, i1 noundef zeroext true) #7, !inline_history !110
  call void @je_nstime_iadd(ptr noundef nonnull %5, i64 noundef %i.fw) #7
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eg, i64 248
  call void @je_nstime_copy(ptr noundef nonnull %i.ga, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %hpa_good_purge_candidate.exit.thread5.i.i

hpa_good_purge_candidate.exit.thread5.i.i:        ; preds = %bb.ah, %bb.ag, %hpa_good_purge_candidate.exit.thread.i.i, %hpa_good_purge_candidate.exit.i.i, %bb.ae
  %.1.i3.i.i = phi i8 [ 1, %bb.ah ], [ 1, %bb.ag ], [ 1, %hpa_good_purge_candidate.exit.thread.i.i ], [ 0, %hpa_good_purge_candidate.exit.i.i ], [ 0, %bb.ae ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eg, i64 19
  store i8 %.1.i3.i.i, ptr %i.gb, align 1, !tbaa !94
  %i.gc = getelementptr i8, ptr %i.eg, i64 104
  %.val.i36.i = load i64, ptr %i.gc, align 8, !tbaa !103
  %i.gd = icmp eq i64 %.val.i36.i, 0
  br i1 %i.gd, label %bb.ai, label %hpa_update_purge_hugify_eligibility.exit.i

bb.ai:                                            ; preds = %hpa_good_purge_candidate.exit.thread5.i.i
  %.val31.i.i = load i32, ptr %i.aa, align 8, !tbaa !65
  %.5792.val.off.i39.i.i = add i32 %.val31.i.i, -1
  %switch.i40.i.i = icmp ult i32 %.5792.val.off.i39.i.i, 2
  br i1 %switch.i40.i.i, label %hpa_should_assume_huge.exit42.i.i, label %.sink.split.i.i

hpa_should_assume_huge.exit42.i.i:                ; preds = %bb.ai
  %i.ge = getelementptr i8, ptr %i.eg, i64 256
  %.val4.i41.i.i = load i8, ptr %i.ge, align 8, !tbaa !104, !range !64, !noundef !87
  %i.gf = trunc nuw i8 %.val4.i41.i.i to i1
  br i1 %i.gf, label %hpa_update_purge_hugify_eligibility.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %hpa_should_assume_huge.exit42.i.i, %bb.ai, %hpdata_changing_state_get.exit.thread.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  store i8 0, ptr %i.gg, align 4, !tbaa !95
  br label %hpa_update_purge_hugify_eligibility.exit.i

hpa_update_purge_hugify_eligibility.exit.i:       ; preds = %.sink.split.i.i, %hpa_should_assume_huge.exit42.i.i, %hpa_good_purge_candidate.exit.thread5.i.i
  %i.gh = load ptr, ptr %i.ea, align 8, !tbaa !97
  call void @je_psset_update_end(ptr noundef nonnull %i.u, ptr noundef %i.gh) #7
  %i.gi = add nuw i64 %.0107.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gi, %.sroa.20.173.i
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %bb.t, !llvm.loop !91

hpa_purge.exit:                                   ; preds = %.critedge.i, %.loopexit.loopexit.i, %bb.d
  %.sroa.28.1.lcssa128.i = phi i64 [ %.029.a, %bb.d ], [ %.029.a, %.loopexit.loopexit.i ], [ %.sroa.16.080.i, %.critedge.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 5808 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 16, !tbaa !77
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %i.gj, align 16, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.aj

bb.aj:                                            ; preds = %hpa_purge.exit, %bb.c
  %.0 = phi i64 [ %.sroa.28.1.lcssa128.i, %hpa_purge.exit ], [ 0, %bb.c ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 6 uses
  %i.go = getelementptr i8, ptr %1, i64 1416
  %i.gp = getelementptr i8, ptr %1, i64 5800
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 5736
  %i.gr = getelementptr i8, ptr %1, i64 1408
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 5744
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 5792
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 5752 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 5824 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 5832 ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %.0, i64 %i.e)
  br label %bb.ak

bb.ak:                                            ; preds = %hpa_try_hugify.exit, %bb.aj
  %.1 = phi i64 [ %.0, %bb.aj ], [ %i.iz, %hpa_try_hugify.exit ] ; 2 uses
  %i.hc = call ptr @je_psset_pick_hugify(ptr noundef nonnull %i.gn) #7 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %hpa_hugify_blocked_by_ndirty.exit.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val.i.i32 = load i64, ptr %i.go, align 8, !tbaa !71
  %.val11.i.i33 = load i64, ptr %i.gp, align 8, !tbaa !47
  %i.he = getelementptr i8, ptr %i.hc, i64 176
  %.val12.i.i = load i64, ptr %i.he, align 8, !tbaa !74
  %.neg44 = add i64 %.val.i.i32, 512
  %i.hf = add i64 %.val11.i.i33, %.val12.i.i
  %i.hg = sub i64 %.neg44, %i.hf
  %i.hh = load i32, ptr %i.gq, align 8, !tbaa !72 ; 3 uses
  %i.hi = icmp eq i32 %i.hh, -1
  br i1 %i.hi, label %hpa_hugify_blocked_by_ndirty.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val.i.i.i35 = load i64, ptr %i.gr, align 8, !tbaa !73 ; 3 uses
  %i.hj = icmp ult i64 %.val.i.i.i35, 281474976710656
  br i1 %i.hj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hk = zext i32 %i.hh to i64
  %i.hl = mul i64 %.val.i.i.i35, %i.hk
  %i.hm = lshr i64 %i.hl, 16
  br label %hpa_hugify_blocked_by_ndirty.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.hn = lshr i64 %.val.i.i.i35, 16
  %i.ho = zext i32 %i.hh to i64
  %i.hp = mul i64 %i.hn, %i.ho
  br label %hpa_hugify_blocked_by_ndirty.exit.i

hpa_hugify_blocked_by_ndirty.exit.i:              ; preds = %bb.ao, %bb.an
  %.0.i.i.i36 = phi i64 [ %i.hp, %bb.ao ], [ %i.hm, %bb.an ]
  %i.hq = icmp ugt i64 %i.hg, %.0.i.i.i36
  br i1 %i.hq, label %hpa_try_hugify.exit.thread, label %hpa_hugify_blocked_by_ndirty.exit.thread.i

hpa_hugify_blocked_by_ndirty.exit.thread.i:       ; preds = %hpa_hugify_blocked_by_ndirty.exit.i, %bb.al, %bb.ak
  %i.hr = call ptr @je_psset_pick_hugify(ptr noundef nonnull %i.gn) #7 ; 12 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %hpa_try_hugify.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %hpa_hugify_blocked_by_ndirty.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.ht = getelementptr i8, ptr %i.hr, i64 24
  %.val.i = load i64, ptr %i.ht, align 8, !tbaa !44
  store i64 %.val.i, ptr %3, align 8
  %i.hu = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 184
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !67
  %i.hx = call i64 %i.hw(ptr noundef nonnull %3) #7, !inline_history !112
  %i.hy = load i64, ptr %i.gs, align 8, !tbaa !70
  %.not43 = icmp ult i64 %i.hx, %i.hy
  br i1 %.not43, label %hpa_try_hugify.exit.thread42, label %bb.aq

hpa_try_hugify.exit.thread42:                     ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %hpa_try_hugify.exit.thread

bb.aq:                                            ; preds = %bb.ap
  call void @je_psset_update_begin(ptr noundef nonnull %i.gn, ptr noundef nonnull %i.hr) #7
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 34 ; 2 uses
  store i8 1, ptr %i.hz, align 2, !tbaa !108
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 19
  store i8 0, ptr %i.ia, align 1, !tbaa !94
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 20
  store i8 0, ptr %i.ib, align 4, !tbaa !95
  call void @je_psset_update_end(ptr noundef nonnull %i.gn, ptr noundef nonnull %i.hr) #7
  %i.ic = load i32, ptr %i.gt, align 8, !tbaa !65
  %i.id = icmp eq i32 %i.ic, 3
  br i1 %i.id, label %hpa_is_hugify_lazy.exit.thread.i, label %hpa_is_hugify_lazy.exit.i

hpa_is_hugify_lazy.exit.i:                        ; preds = %bb.aq
  %i.ie = load i8, ptr %i.gu, align 8, !tbaa !100, !range !64, !noundef !87
  %i.if = trunc nuw i8 %i.ie to i1
  %i.ig = load i8, ptr @je_opt_experimental_hpa_enforce_hugify, align 1, !range !64
  %i.ih = trunc nuw i8 %i.ig to i1
  %or.cond.i = select i1 %i.if, i1 true, i1 %i.ih
  br i1 %or.cond.i, label %hpa_is_hugify_lazy.exit.thread.i, label %hpa_try_hugify.exit

hpa_is_hugify_lazy.exit.thread.i:                 ; preds = %hpa_is_hugify_lazy.exit.i, %bb.aq
  store atomic i8 0, ptr %i.gv monotonic, align 8
  %i.ii = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gw) #7 ; 0 uses
  %i.ij = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 160
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !113
  %.val39.i = load ptr, ptr %i.hr, align 8, !tbaa !83
  %i.im = load i8, ptr %i.gu, align 8, !tbaa !100, !range !64, !noundef !87
  %i.in = trunc nuw i8 %i.im to i1
  %i.io = call zeroext i1 %i.il(ptr noundef %.val39.i, i64 noundef 2097152, i1 noundef zeroext %i.in) #7, !inline_history !112
  %i.ip = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.gw) #7
  %.not.i.i37 = icmp eq i32 %i.ip, 0
  br i1 %.not.i.i37, label %malloc_mutex_trylock_final.exit.i.i40, label %bb.ar

malloc_mutex_trylock_final.exit.i.i40:            ; preds = %hpa_is_hugify_lazy.exit.thread.i
  store atomic i8 1, ptr %i.gv monotonic, align 8
  br label %bb.as

bb.ar:                                            ; preds = %hpa_is_hugify_lazy.exit.thread.i
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.gm) #7
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %malloc_mutex_trylock_final.exit.i.i40
  %i.iq = load i64, ptr %i.gx, align 8, !tbaa !58
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.gx, align 8, !tbaa !58
  %i.is = load ptr, ptr %i.gy, align 8, !tbaa !62
  %.not.i.i.i38 = icmp eq ptr %i.is, %0
  br i1 %.not.i.i.i38, label %malloc_mutex_lock.exit.i39, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %0, ptr %i.gy, align 8, !tbaa !62
  %i.it = load i64, ptr %i.gz, align 8, !tbaa !63
  %i.iu = add i64 %i.it, 1
  store i64 %i.iu, ptr %i.gz, align 8, !tbaa !63
  br label %malloc_mutex_lock.exit.i39

malloc_mutex_lock.exit.i39:                       ; preds = %bb.at, %bb.as
  %i.iv = load i64, ptr %i.ha, align 16, !tbaa !114
  %i.iw = add i64 %i.iv, 1
  store i64 %i.iw, ptr %i.ha, align 16, !tbaa !114
  br i1 %i.io, label %bb.au, label %hpa_try_hugify.exit

bb.au:                                            ; preds = %malloc_mutex_lock.exit.i39
  %i.ix = load i64, ptr %i.hb, align 8, !tbaa !115
  %i.iy = add i64 %i.ix, 1
  store i64 %i.iy, ptr %i.hb, align 8, !tbaa !115
  br label %hpa_try_hugify.exit

hpa_try_hugify.exit:                              ; preds = %hpa_is_hugify_lazy.exit.i, %malloc_mutex_lock.exit.i39, %bb.au
  call void @je_psset_update_begin(ptr noundef nonnull %i.gn, ptr noundef nonnull %i.hr) #7
  call void @je_hpdata_hugify(ptr noundef nonnull %i.hr) #7
  store i8 0, ptr %i.hz, align 2, !tbaa !108
  call fastcc void @hpa_update_purge_hugify_eligibility(ptr noundef nonnull %1, ptr noundef nonnull %i.hr)
  call void @je_psset_update_end(ptr noundef nonnull %i.gn, ptr noundef nonnull %i.hr) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %i.iz = add i64 %.1, 1
  %exitcond.not = icmp eq i64 %.1, %umax
  br i1 %exitcond.not, label %hpa_try_hugify.exit.thread, label %bb.ak, !llvm.loop !116

hpa_try_hugify.exit.thread:                       ; preds = %hpa_hugify_blocked_by_ndirty.exit.thread.i, %hpa_hugify_blocked_by_ndirty.exit.i, %hpa_try_hugify.exit, %hpa_try_hugify.exit.thread42, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_hpa_shard_do_deferred_work(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #7
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  store atomic i8 1, ptr %i.c monotonic, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
end_hunk_0
