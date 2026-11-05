Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/arena?download=true
inline.NumInlined: 328
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@je_arena_dalloc_small:bb.a
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.q = getelementptr inbounds nuw [224 x i8], ptr %i.p, i64 %i.l ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.s = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.r) #18
  %.not.i26.i = icmp eq i32 %i.s, 0
  br i1 %.not.i26.i, label %malloc_mutex_trylock_final.exit.i.i, label %bb.d

malloc_mutex_trylock_final.exit.i.i:              ; preds = %tsdn_rtree_ctx.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store atomic i8 1, ptr %i.t monotonic, align 1
  br label %bb.e

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.q) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %malloc_mutex_trylock_final.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !72
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73
  %.not.i.i.i = icmp eq ptr %i.y, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.x, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !74
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @je_arena_binind_div_info, i64 %i.j
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr i8, ptr %i.h, i64 80640
  %.val22.i = load i32, ptr %i.ag, align 64, !tbaa !98
  %i.ah = load i32, ptr @je_manual_arena_base, align 4, !tbaa !13
  %i.ai = icmp ult i32 %.val22.i, %i.ah           ; 2 uses
  %i.aj = getelementptr i8, ptr %i.e, i64 8
  %.val.i9 = load ptr, ptr %i.aj, align 8, !tbaa !106
  %i.ak = ptrtoint ptr %.val.i9 to i64
  %i.al = sub i64 %i.d, %i.ak
  %i.am = zext i32 %i.ad to i64
  %i.an = mul i64 %i.al, %i.am                    ; 2 uses
  %i.ao = lshr i64 %i.an, 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.aq = lshr i64 %i.an, 38
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !18
  %i.at = and i64 %i.ao, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = xor i64 %i.au, %i.as
  store i64 %i.av, ptr %i.ar, align 8, !tbaa !18
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !107
  %i.ax = add i64 %i.aw, 268435456                ; 2 uses
  store i64 %i.ax, ptr %i.e, align 8, !tbaa !107
  %i.ay = lshr i64 %i.ax, 28
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 1023                     ; 2 uses
  %i.bb = load i32, ptr %i.af, align 8, !tbaa !125
  %i.bc = icmp eq i32 %i.ba, %i.bb                ; 2 uses
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %malloc_mutex_lock.exit.i
  call void @je_bin_dalloc_locked_handle_newly_empty(ptr noundef %0, i1 noundef zeroext %i.ai, ptr noundef nonnull %i.e, ptr noundef nonnull %i.q) #18
  br label %bin_dalloc_locked_step.exit.i

bb.h:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.bd = icmp eq i32 %i.ba, 1
  br i1 %i.bd, label %bb.i, label %bin_dalloc_locked_step.exit.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.e, %i.bf
  br i1 %.not.i.i, label %bin_dalloc_locked_step.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @je_bin_dalloc_locked_handle_newly_nonempty(ptr noundef %0, i1 noundef zeroext %i.ai, ptr noundef nonnull %i.e, ptr noundef nonnull %i.q) #18
  br label %bin_dalloc_locked_step.exit.i

bin_dalloc_locked_step.exit.i:                    ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !111
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !111
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 136 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !114
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !114
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store atomic i8 0, ptr %i.bm monotonic, align 8
  %i.bn = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #18 ; 0 uses
  br i1 %i.bc, label %bb.k, label %arena_dalloc_bin.exit

bb.k:                                             ; preds = %bin_dalloc_locked_step.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !101
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 12288
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #18
  %i.bp = load i8, ptr %i.a, align 1, !tbaa !101, !range !96, !noundef !97
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.l, label %je_arena_slab_dalloc.exit.i

bb.l:                                             ; preds = %bb.k
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %i.h)
  br label %je_arena_slab_dalloc.exit.i

je_arena_slab_dalloc.exit.i:                      ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %arena_dalloc_bin.exit

arena_dalloc_bin.exit:                            ; preds = %bin_dalloc_locked_step.exit.i, %je_arena_slab_dalloc.exit.i
  br i1 %i.b, label %arena_decay_ticks.exit, label %bb.m, !prof !104

bb.m:                                             ; preds = %arena_dalloc_bin.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !103
  %i.bv = load i32, ptr %i.br, align 4, !tbaa !123 ; 2 uses
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !123
  %i.bx = icmp slt i32 %i.bv, 1
  br i1 %i.bx, label %bb.n, label %arena_decay_ticks.exit, !prof !104

bb.n:                                             ; preds = %bb.m
  %i.by = icmp sgt i8 %i.bu, 0
  br i1 %i.by, label %ticker_geom_ticks.exit, label %bb.o

ticker_geom_ticks.exit:                           ; preds = %bb.n
  store i32 0, ptr %i.br, align 4, !tbaa !123
  br label %arena_decay_ticks.exit

bb.o:                                             ; preds = %bb.n
  %i.bz = load i64, ptr %i.bs, align 8, !tbaa !18
  %i.ca = mul i64 %i.bz, 6364136223846793005
  %i.cb = add i64 %i.ca, 1442695040888963407      ; 2 uses
  store i64 %i.cb, ptr %i.bs, align 8, !tbaa !18
  %i.cc = lshr i64 %i.cb, 58
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !124
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.cc
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !103
  %i.ci = zext i8 %i.ch to i64
  %i.cj = mul nsw i64 %i.ci, %i.cf
  %i.ck = udiv i64 %i.cj, 61
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %i.br, align 8, !tbaa !123
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.m, %ticker_geom_ticks.exit, %arena_dalloc_bin.exit, %bb.o
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_ptr_array_flush(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %7 = alloca %struct.cache_bin_stats_s, align 8  ; 2 uses
  store i64 %6, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.f = zext i32 %1 to i64                       ; 4 uses
  %i.g = getelementptr i8, ptr %5, i64 -1024
  %i.h = getelementptr [56 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.f
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @je_arena_binind_div_info, i64 %i.f
  %i.q = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %arena_ptr_array_flush_impl.exit, %bb.a
  %.0113 = phi ptr [ %7, %bb.a ], [ null, %arena_ptr_array_flush_impl.exit ] ; 4 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.qx, %arena_ptr_array_flush_impl.exit ] ; 4 uses
  %i.z = sub i32 %3, %.0                          ; 2 uses
  %spec.store.select = call i32 @llvm.umin.i32(i32 %i.z, i32 255) ; 7 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.ab = zext i32 %.0 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab ; 6 uses
  %savedstack = call ptr @llvm.stacksave.p0()
  %i.ad = add nuw nsw i32 %spec.store.select, 1
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %8 = alloca %union.emap_batch_lookup_result_u, i64 %i.ae, align 16 ; 12 uses
  %i.af = zext nneg i32 %spec.store.select to i64 ; 4 uses
  %.not = icmp eq i32 %3, %.0
  br i1 %.not, label %emap_edata_lookup_batch.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %rtree_leaf_elm_lookup.exit.i
  %.025.i131 = phi i64 [ %i.cd, %rtree_leaf_elm_lookup.exit.i ], [ 0, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.025.i131
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !91
  %i.ai = ptrtoint ptr %i.ah to i64               ; 6 uses
  %i.aj = lshr i64 %i.ai, 30
  %i.ak = and i64 %i.aj, 15
  %i.al = and i64 %i.ai, -1073741824              ; 11 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ak ; 6 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !135 ; 3 uses
  %i.ao = icmp eq i64 %i.an, %i.al
  br i1 %i.ao, label %bb.c, label %bb.d, !prof !102

bb.c:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !136
  %i.ar = lshr i64 %i.ai, 12
  %i.as = and i64 %i.ar, 262143
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  br label %rtree_leaf_elm_lookup.exit.i

bb.d:                                             ; preds = %.lr.ph
  %i.au = load i64, ptr %i.d, align 8, !tbaa !135
  %i.av = icmp eq i64 %i.au, %i.al
  br i1 %i.av, label %bb.e, label %.preheader.preheader, !prof !102

.preheader.preheader:                             ; preds = %bb.d
  %i.aw = load i64, ptr %i.s, align 8, !tbaa !135
  %i.ax = icmp eq i64 %i.aw, %i.al
  br i1 %i.ax, label %bb.g, label %.preheader.1, !prof !102

bb.e:                                             ; preds = %bb.d
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !136 ; 2 uses
  store i64 %i.an, ptr %i.d, align 8, !tbaa !135
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !136
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !136
  store i64 %i.al, ptr %i.am, align 8, !tbaa !135
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !136
  %i.bb = lshr i64 %i.ai, 12
  %i.bc = and i64 %i.bb, 262143
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bc
  br label %rtree_leaf_elm_lookup.exit.i

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.be = load i64, ptr %i.t, align 8, !tbaa !135
  %i.bf = icmp eq i64 %i.be, %i.al
  br i1 %i.bf, label %bb.g, label %.preheader.2, !prof !102

.preheader.2:                                     ; preds = %.preheader.1
  %i.bg = load i64, ptr %i.u, align 8, !tbaa !135
  %i.bh = icmp eq i64 %i.bg, %i.al
  br i1 %i.bh, label %bb.g, label %.preheader.3, !prof !102

.preheader.3:                                     ; preds = %.preheader.2
  %i.bi = load i64, ptr %i.v, align 8, !tbaa !135
  %i.bj = icmp eq i64 %i.bi, %i.al
  br i1 %i.bj, label %bb.g, label %.preheader.4, !prof !102

.preheader.4:                                     ; preds = %.preheader.3
  %i.bk = load i64, ptr %i.w, align 8, !tbaa !135
  %i.bl = icmp eq i64 %i.bk, %i.al
  br i1 %i.bl, label %bb.g, label %.preheader.5, !prof !102

.preheader.5:                                     ; preds = %.preheader.4
  %i.bm = load i64, ptr %i.x, align 8, !tbaa !135
  %i.bn = icmp eq i64 %i.bm, %i.al
  br i1 %i.bn, label %bb.g, label %.preheader.6, !prof !102

.preheader.6:                                     ; preds = %.preheader.5
  %i.bo = load i64, ptr %i.y, align 8, !tbaa !135
  %i.bp = icmp eq i64 %i.bo, %i.al
  br i1 %i.bp, label %bb.g, label %bb.f, !prof !102

bb.f:                                             ; preds = %.preheader.6
  %i.bq = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef nonnull %0, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %i.c, i64 noundef %i.ai, i1 noundef zeroext true, i1 noundef zeroext false) #18
  br label %rtree_leaf_elm_lookup.exit.i

bb.g:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.s, %.preheader.preheader ], [ %i.t, %.preheader.1 ], [ %i.u, %.preheader.2 ], [ %i.v, %.preheader.3 ], [ %i.w, %.preheader.4 ], [ %i.x, %.preheader.5 ], [ %i.y, %.preheader.6 ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !136 ; 2 uses
  %i.bt = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !135
  store i64 %i.bu, ptr %.lcssa, align 8, !tbaa !135
  %i.bv = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !136
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !136
  store i64 %i.an, ptr %i.bt, align 8, !tbaa !135
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !136
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !136
  store i64 %i.al, ptr %i.am, align 8, !tbaa !135
  store ptr %i.bs, ptr %i.bx, align 8, !tbaa !136
  %i.bz = lshr i64 %i.ai, 12
  %i.ca = and i64 %i.bz, 262143
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  br label %rtree_leaf_elm_lookup.exit.i

rtree_leaf_elm_lookup.exit.i:                     ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.1.i.i = phi ptr [ %i.at, %bb.c ], [ %i.bd, %bb.e ], [ %i.bq, %bb.f ], [ %i.cb, %bb.g ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.025.i131
  store ptr %.1.i.i, ptr %i.cc, align 8, !tbaa !103
  %i.cd = add nuw nsw i64 %.025.i131, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %i.af
  br i1 %exitcond.not, label %.lr.ph133.preheader, label %.lr.ph, !llvm.loop !180

.lr.ph133.preheader:                              ; preds = %rtree_leaf_elm_lookup.exit.i
  %xtraiter = and i64 %i.af, 1
  %i.ce = icmp eq i32 %i.z, 1
  br i1 %i.ce, label %.lr.ph133.epil.preheader, label %.lr.ph133.preheader.new

.lr.ph133.preheader.new:                          ; preds = %.lr.ph133.preheader
  %unroll_iter = and i64 %i.af, 254
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133, %.lr.ph133.preheader.new
  %.0.i132 = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %i.cy, %.lr.ph133 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %niter.next.1, %.lr.ph133 ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.0.i132 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !103
  %i.ch = load atomic ptr, ptr %i.cg monotonic, align 8, !noalias !192
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = shl i64 %i.ci, 16
  %i.ck = ashr exact i64 %i.cj, 16
  %i.cl = and i64 %i.ck, -128
  %i.cm = inttoptr i64 %i.cl to ptr               ; 3 uses
  store ptr %i.cm, ptr %i.cf, align 16, !tbaa !103
  call void @llvm.prefetch.p0(ptr readonly %i.cm, i32 1, i32 3, i32 1)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  call void @llvm.prefetch.p0(ptr nonnull readonly %i.cn, i32 1, i32 3, i32 1)
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.0.i132
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !103
  %i.cr = load atomic ptr, ptr %i.cq monotonic, align 8, !noalias !192
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = shl i64 %i.cs, 16
  %i.cu = ashr exact i64 %i.ct, 16
  %i.cv = and i64 %i.cu, -128
  %i.cw = inttoptr i64 %i.cv to ptr               ; 3 uses
  store ptr %i.cw, ptr %i.cp, align 8, !tbaa !103
  call void @llvm.prefetch.p0(ptr readonly %i.cw, i32 1, i32 3, i32 1)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  call void @llvm.prefetch.p0(ptr nonnull readonly %i.cx, i32 1, i32 3, i32 1)
  %i.cy = add nuw nsw i64 %.0.i132, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %emap_edata_lookup_batch.exit.thread.unr-lcssa, label %.lr.ph133, !llvm.loop !183

emap_edata_lookup_batch.exit:                     ; preds = %bb.b
  br i1 %4, label %bb.h, label %._crit_edge143

emap_edata_lookup_batch.exit.thread.unr-lcssa:    ; preds = %.lr.ph133
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %emap_edata_lookup_batch.exit.thread, label %.lr.ph133.epil.preheader

.lr.ph133.epil.preheader:                         ; preds = %emap_edata_lookup_batch.exit.thread.unr-lcssa, %.lr.ph133.preheader
  %.0.i132.epil.init = phi i64 [ 0, %.lr.ph133.preheader ], [ %i.cy, %emap_edata_lookup_batch.exit.thread.unr-lcssa ]
  %lcmp.mod219 = trunc i32 %spec.store.select to i1
  call void @llvm.assume(i1 %lcmp.mod219)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.0.i132.epil.init ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !103
  %i.db = load atomic ptr, ptr %i.da monotonic, align 8, !noalias !192
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = shl i64 %i.dc, 16
  %i.de = ashr exact i64 %i.dd, 16
  %i.df = and i64 %i.de, -128
  %i.dg = inttoptr i64 %i.df to ptr               ; 3 uses
  store ptr %i.dg, ptr %i.cz, align 8, !tbaa !103
  call void @llvm.prefetch.p0(ptr readonly %i.dg, i32 1, i32 3, i32 1)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  call void @llvm.prefetch.p0(ptr nonnull readonly %i.dh, i32 1, i32 3, i32 1)
  br label %emap_edata_lookup_batch.exit.thread

emap_edata_lookup_batch.exit.thread:              ; preds = %emap_edata_lookup_batch.exit.thread.unr-lcssa, %.lr.ph133.epil.preheader
  br i1 %4, label %.thread, label %arena_get.exit45

.thread:                                          ; preds = %emap_edata_lookup_batch.exit.thread
  %savedstack15210 = call ptr @llvm.stacksave.p0() ; 2 uses
  %i.di = alloca ptr, i64 %i.ae, align 16         ; 2 uses
  br label %arena_get.exit

bb.h:                                             ; preds = %emap_edata_lookup_batch.exit
  %savedstack15 = call ptr @llvm.stacksave.p0()
  br label %._crit_edge165

.preheader127:                                    ; preds = %arena_decay_ticks.exit.i
  %.not170 = icmp eq i32 %.1.i.lcssa, 0
  br i1 %.not170, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %.preheader127
  %wide.trip.count194 = zext i32 %.1.i.lcssa to i64
  br label %.lr.ph164

arena_get.exit:                                   ; preds = %.thread, %arena_decay_ticks.exit.i
  %.0.i14160 = phi i32 [ %.1.i.lcssa, %arena_decay_ticks.exit.i ], [ 0, %.thread ] ; 2 uses
  %.099.i159 = phi i32 [ %.1100.i.lcssa, %arena_decay_ticks.exit.i ], [ 0, %.thread ] ; 5 uses
  %.2158 = phi ptr [ %.3, %arena_decay_ticks.exit.i ], [ %.0113, %.thread ] ; 3 uses
  %i.dj = zext nneg i32 %.099.i159 to i64         ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !103 ; 2 uses
  %.val28 = load i64, ptr %i.dl, align 8, !tbaa !107 ; 2 uses
  %i.dm = and i64 %.val28, 4095
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.dm
  %i.do = load atomic ptr, ptr %i.dn acquire, align 8 ; 25 uses
  %.val30 = load i64, ptr %i.dl, align 8, !tbaa !107 ; 2 uses
  %i.dp = lshr i64 %.val30, 38
  %i.dq = load i32, ptr %i.o, align 4, !tbaa !13
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dr
  %i.dt = and i64 %i.dp, 63
  %i.du = getelementptr inbounds nuw [224 x i8], ptr %i.ds, i64 %i.dt ; 14 uses
  %i.dv = add nuw nsw i32 %.099.i159, 1           ; 3 uses
  %i.dw = icmp samesign ult i32 %i.dv, %spec.store.select
  br i1 %i.dw, label %.lr.ph147.preheader, label %._crit_edge148

.lr.ph147.preheader:                              ; preds = %arena_get.exit
  %i.dx = add nuw nsw i64 %i.dj, 1
  br label %.lr.ph147

._crit_edge148:                                   ; preds = %bb.n, %arena_get.exit
  %.1100.i.lcssa = phi i32 [ %i.dv, %arena_get.exit ], [ %.2101.i, %bb.n ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 72 ; 2 uses
  %i.dz = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.dy) #18
  %.not.i36 = icmp eq i32 %i.dz, 0
  br i1 %.not.i36, label %malloc_mutex_trylock_final.exit.i, label %bb.i

malloc_mutex_trylock_final.exit.i:                ; preds = %._crit_edge148
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  store atomic i8 1, ptr %i.ea monotonic, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge148
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.du) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %malloc_mutex_trylock_final.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 56 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !72
  %i.ed = add i64 %i.ec, 1
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !72
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 48 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !73
  %.not.i.i37 = icmp eq ptr %i.ef, %0
  br i1 %.not.i.i37, label %malloc_mutex_lock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %0, ptr %i.ee, align 8, !tbaa !73
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !74
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.j, %bb.k
  %i.ej = icmp eq ptr %5, %i.do
  br i1 %i.ej, label %bb.o, label %bb.q

.lr.ph147:                                        ; preds = %.lr.ph147.preheader, %bb.n
  %indvars.iv182 = phi i64 [ %i.dx, %.lr.ph147.preheader ], [ %indvars.iv.next183, %bb.n ] ; 3 uses
  %.1100.i146 = phi i32 [ %i.dv, %.lr.ph147.preheader ], [ %.2101.i, %bb.n ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv182 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.val27 = load i64, ptr %i.el, align 8, !tbaa !107 ; 2 uses
  %i.em = xor i64 %.val27, %.val28
  %i.en = and i64 %i.em, 4095
  %i.eo = icmp eq i64 %i.en, 0
  %i.ep = ptrtoint ptr %i.el to i64
  br i1 %i.eo, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph147
  %i.eq = xor i64 %.val27, %.val30
  %i.er = and i64 %i.eq, 17317308137472
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.et = zext i32 %.1100.i146 to i64             ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.et ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.eu, align 8, !tbaa !103
  store i64 %i.ep, ptr %i.eu, align 8, !tbaa !103
  store ptr %.sroa.0.0.copyload.i, ptr %i.ek, align 8, !tbaa !103
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.et ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !91
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv182 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !91
  store ptr %i.ey, ptr %i.ev, align 8, !tbaa !91
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !91
  %i.ez = add i32 %.1100.i146, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph147
  %.2101.i = phi i32 [ %i.ez, %bb.m ], [ %.1100.i146, %bb.l ], [ %.1100.i146, %.lr.ph147 ] ; 2 uses
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next183, %i.af
  br i1 %exitcond185.not, label %._crit_edge148, label %.lr.ph147, !llvm.loop !184

bb.o:                                             ; preds = %malloc_mutex_lock.exit
  %.not106.i = icmp eq ptr %.2158, null
  br i1 %.not106.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fa = getelementptr inbounds nuw i8, ptr %i.du, i64 152 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !193
  %i.fc = add i64 %i.fb, 1
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !193
  %i.fd = load i64, ptr %.2158, align 8, !tbaa !194
  %i.fe = getelementptr inbounds nuw i8, ptr %i.du, i64 128 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !121
  %i.fg = add i64 %i.ff, %i.fd
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !121
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %malloc_mutex_lock.exit
  %.3 = phi ptr [ null, %bb.o ], [ null, %bb.p ], [ %.2158, %malloc_mutex_lock.exit ] ; 3 uses
  %i.fh = icmp ult i32 %.099.i159, %.1100.i.lcssa
  br i1 %i.fh, label %.lr.ph154, label %._crit_edge155

.lr.ph154:                                        ; preds = %bb.q
  %i.fi = load i32, ptr %i.p, align 4, !tbaa !13
  %i.fj = getelementptr i8, ptr %i.do, i64 80640
  %i.fk = zext i32 %i.fi to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.du, i64 192
  br label %bb.ag

._crit_edge155.loopexit:                          ; preds = %bin_dalloc_locked_step.exit.i.thread
  %i.fm = xor i32 %.099.i159, -1
  %i.fn = add i32 %.1100.i.lcssa, %i.fm
  %i.fo = zext i32 %i.fn to i64
  %i.fp = add nuw nsw i64 %i.fo, 1
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %bb.q
  %.sroa.6.0.lcssa = phi i64 [ 0, %bb.q ], [ %i.fp, %._crit_edge155.loopexit ] ; 2 uses
  %.1.i.lcssa = phi i32 [ %.0.i14160, %bb.q ], [ %.2.i, %._crit_edge155.loopexit ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.du, i64 120 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !111
  %i.fs = add i64 %i.fr, %.sroa.6.0.lcssa
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !111
  %i.ft = getelementptr inbounds nuw i8, ptr %i.du, i64 136 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !114
  %i.fv = sub i64 %i.fu, %.sroa.6.0.lcssa
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !114
  %i.fw = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  store atomic i8 0, ptr %i.fw monotonic, align 8
  %i.fx = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dy) #18 ; 0 uses
  %.neg126 = sub i32 %.099.i159, %.1100.i.lcssa
  %i.fy = load i8, ptr %i.m, align 1, !tbaa !103
  %i.fz = load i32, ptr %i.k, align 4, !tbaa !123
  %i.ga = add i32 %i.fz, %.neg126                 ; 2 uses
  store i32 %i.ga, ptr %i.k, align 4, !tbaa !123
  %i.gb = icmp slt i32 %i.ga, 0
  br i1 %i.gb, label %bb.r, label %arena_decay_ticks.exit.i, !prof !104

bb.r:                                             ; preds = %._crit_edge155
  %i.gc = icmp sgt i8 %i.fy, 0
  br i1 %i.gc, label %ticker_geom_ticks.exit, label %bb.s

ticker_geom_ticks.exit:                           ; preds = %bb.r
  store i32 0, ptr %i.k, align 4, !tbaa !123
  br label %arena_decay_ticks.exit.i

bb.s:                                             ; preds = %bb.r
  %i.gd = load i64, ptr %i.l, align 8, !tbaa !18
  %i.ge = mul i64 %i.gd, 6364136223846793005
  %i.gf = add i64 %i.ge, 1442695040888963407      ; 2 uses
  store i64 %i.gf, ptr %i.l, align 8, !tbaa !18
  %i.gg = lshr i64 %i.gf, 58
  %i.gh = load i32, ptr %i.n, align 4, !tbaa !124
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.gg
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !103
  %i.gl = zext i8 %i.gk to i64
  %i.gm = mul nsw i64 %i.gl, %i.gi
  %i.gn = udiv i64 %i.gm, 61
  %i.go = trunc i64 %i.gn to i32
  store i32 %i.go, ptr %i.k, align 8, !tbaa !123
  %i.gp = getelementptr inbounds nuw i8, ptr %i.do, i64 70944 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.do, i64 74520 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !95
  %i.gs = getelementptr inbounds nuw i8, ptr %i.do, i64 12352
  %i.gt = getelementptr inbounds nuw i8, ptr %i.do, i64 71016 ; 2 uses
  %i.gu = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.gt) #18
  %.not.i.i62 = icmp eq i32 %i.gu, 0
  br i1 %.not.i.i62, label %bb.t, label %arena_decay_ticks.exit.i

bb.t:                                             ; preds = %bb.s
  %i.gv = getelementptr inbounds nuw i8, ptr %i.do, i64 71008 ; 2 uses
  store atomic i8 1, ptr %i.gv monotonic, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.do, i64 71000 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !72
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !72
  %i.gz = getelementptr inbounds nuw i8, ptr %i.do, i64 70992 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !73
  %.not.i.i36.i64 = icmp eq ptr %i.ha, %0
  br i1 %.not.i.i36.i64, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %0, ptr %i.gz, align 8, !tbaa !73
  %i.hb = getelementptr inbounds nuw i8, ptr %i.do, i64 70984 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !74
  %i.hd = add i64 %i.hc, 1
  store i64 %i.hd, ptr %i.hb, align 8, !tbaa !74
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.he = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
  %i.hf = trunc nuw i8 %i.he to i1
  %..i.i65 = select i1 %i.hf, i32 1, i32 2
  %i.hg = getelementptr inbounds nuw i8, ptr %i.do, i64 12312 ; 3 uses
  %i.hh = call zeroext i1 @je_pac_maybe_decay_purge(ptr noundef nonnull %0, ptr noundef nonnull %i.hg, ptr noundef nonnull %i.gp, ptr noundef %i.gr, ptr noundef nonnull %i.gs, i32 noundef %..i.i65) #18 ; 2 uses
  br i1 %i.hh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hi = getelementptr i8, ptr %i.do, i64 72712
  %.val.i71 = load i64, ptr %i.hi, align 8, !tbaa !18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.i67 = phi i64 [ %.val.i71, %bb.w ], [ undef, %bb.v ]
  store atomic i8 0, ptr %i.gv monotonic, align 8
  %i.hj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gt) #18 ; 0 uses
  %i.hk = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
  %i.hl = trunc nuw i8 %i.hk to i1
  %or.cond.i68 = and i1 %i.hh, %i.hl
  br i1 %or.cond.i68, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hm = getelementptr i8, ptr %i.do, i64 80640
  %.val35.i70 = load i32, ptr %i.hm, align 64, !tbaa !98
  call fastcc void @arena_maybe_do_deferred_work(ptr noundef nonnull %0, i32 %.val35.i70, ptr noundef nonnull %i.gp, i64 noundef %.0.i67)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.hn = getelementptr inbounds nuw i8, ptr %i.do, i64 31904
  %i.ho = call i64 @je_eset_npages_get(ptr noundef nonnull %i.hn) #18
  %i.hp = getelementptr inbounds nuw i8, ptr %i.do, i64 41560
  %i.hq = call i64 @je_eset_npages_get(ptr noundef nonnull %i.hp) #18
  %i.hr = sub i64 0, %i.ho
  %i.hs = icmp eq i64 %i.hq, %i.hr
  br i1 %i.hs, label %pa_shard_dont_decay_muzzy.exit.i.i, label %pa_shard_dont_decay_muzzy.exit.thread.i.i

pa_shard_dont_decay_muzzy.exit.i.i:               ; preds = %bb.z
  %i.ht = call i64 @je_pac_decay_ms_get(ptr noundef nonnull %i.hg, i32 noundef 2) #18
  %i.hu = icmp slt i64 %i.ht, 1
  br i1 %i.hu, label %arena_decay_ticks.exit.i, label %pa_shard_dont_decay_muzzy.exit.thread.i.i

pa_shard_dont_decay_muzzy.exit.thread.i.i:        ; preds = %pa_shard_dont_decay_muzzy.exit.i.i, %bb.z
  %i.hv = getelementptr inbounds nuw i8, ptr %i.do, i64 72728 ; 2 uses
  %i.hw = load ptr, ptr %i.gq, align 8, !tbaa !95
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = getelementptr inbounds nuw i8, ptr %i.do, i64 31792
  %i.hz = getelementptr inbounds nuw i8, ptr %i.do, i64 72800 ; 2 uses
  %i.ia = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.hz) #18
  %.not.i.i58 = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i58, label %bb.aa, label %arena_decay_ticks.exit.i

bb.aa:                                            ; preds = %pa_shard_dont_decay_muzzy.exit.thread.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.do, i64 72792 ; 2 uses
  store atomic i8 1, ptr %i.ib monotonic, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.do, i64 72784 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !72
  %i.ie = add i64 %i.id, 1
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !72
  %i.if = getelementptr inbounds nuw i8, ptr %i.do, i64 72776 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !73
  %.not.i.i36.i = icmp eq ptr %i.ig, %0
  br i1 %.not.i.i36.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %0, ptr %i.if, align 8, !tbaa !73
  %i.ih = getelementptr inbounds nuw i8, ptr %i.do, i64 72768 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !74
  %i.ij = add i64 %i.ii, 1
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !74
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ik = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
  %i.il = trunc nuw i8 %i.ik to i1
  %..i.i = select i1 %i.il, i32 1, i32 2
  %i.im = call zeroext i1 @je_pac_maybe_decay_purge(ptr noundef nonnull %0, ptr noundef nonnull %i.hg, ptr noundef nonnull %i.hv, ptr noundef nonnull %i.hx, ptr noundef nonnull %i.hy, i32 noundef %..i.i) #18 ; 2 uses
  br i1 %i.im, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.in = getelementptr i8, ptr %i.do, i64 74496
  %.val.i61 = load i64, ptr %i.in, align 8, !tbaa !18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0.i60 = phi i64 [ %.val.i61, %bb.ad ], [ undef, %bb.ac ]
  store atomic i8 0, ptr %i.ib monotonic, align 8
  %i.io = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.hz) #18 ; 0 uses
  %i.ip = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
end_hunk_0
