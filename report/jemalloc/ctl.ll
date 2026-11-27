Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/ctl?download=true
inline.NumInlined: 915
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@arenas_create_ctl:bb.a

bb.k:                                             ; preds = %bb.j
  %i.n = load i64, ptr %4, align 8, !tbaa !15     ; 2 uses
  %.not35 = icmp eq i64 %i.n, 4
  br i1 %.not35, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %spec.select = call i64 @llvm.umin.i64(i64 %i.n, i64 4) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 4 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !15
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 %i.l, ptr %3, align 4, !tbaa !89
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.h, %bb.f, %.thread, %bb.l, %bb.m
  %.0 = phi i32 [ 0, %bb.m ], [ 22, %bb.f ], [ 22, %bb.h ], [ 22, %bb.l ], [ 22, %.thread ], [ 11, %bb.j ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.o = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @arenas_lookup_ctl(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %7 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #15
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !29
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !29
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !30
  %.not.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !30
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !31
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !31
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %.not35 = icmp eq i64 %6, 8
  br i1 %.not35, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %5, align 8, !tbaa !166
  %i.i = ptrtoint ptr %i.h to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %malloc_mutex_lock.exit
  %.0 = phi i64 [ %i.i, %bb.f ], [ 0, %malloc_mutex_lock.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.j = icmp eq ptr %0, null
  br i1 %i.j, label %bb.h, label %bb.i, !prof !146

bb.h:                                             ; preds = %bb.g
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %7) #15
  br label %tsdn_rtree_ctx.exit

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %7, %bb.h ], [ %i.k, %bb.i ]  ; 11 uses
  %i.l = lshr i64 %.0, 30
  %i.m = and i64 %i.l, 15
  %i.n = and i64 %.0, -1073741824                 ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %i.m ; 6 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !220  ; 3 uses
  %i.q = icmp eq i64 %i.p, %i.n
  br i1 %i.q, label %bb.j, label %bb.k, !prof !60

bb.j:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !221
  %i.t = lshr i64 %.0, 12
  %i.u = and i64 %i.t, 262143
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  br label %rtree_leaf_elm_lookup.exit.i

bb.k:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 256 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !220
  %i.y = icmp eq i64 %i.x, %i.n
  br i1 %i.y, label %bb.l, label %.preheader.preheader.i, !prof !60

.preheader.preheader.i:                           ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 272 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !220
  %i.ab = icmp eq i64 %i.aa, %i.n
  br i1 %i.ab, label %bb.n, label %.preheader.1.i, !prof !60

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 264 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !221 ; 2 uses
  store i64 %i.p, ptr %i.w, align 8, !tbaa !220
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !221
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !221
  store i64 %i.n, ptr %i.o, align 8, !tbaa !220
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !221
  %i.ag = lshr i64 %.0, 12
  %i.ah = and i64 %i.ag, 262143
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ah
  br label %rtree_leaf_elm_lookup.exit.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 288 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !220
  %i.al = icmp eq i64 %i.ak, %i.n
  br i1 %i.al, label %bb.n, label %.preheader.2.i, !prof !60

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 304 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !220
  %i.ao = icmp eq i64 %i.an, %i.n
  br i1 %i.ao, label %bb.n, label %.preheader.3.i, !prof !60

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 320 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !220
  %i.ar = icmp eq i64 %i.aq, %i.n
  br i1 %i.ar, label %bb.n, label %.preheader.4.i, !prof !60

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 336 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !220
  %i.au = icmp eq i64 %i.at, %i.n
  br i1 %i.au, label %bb.n, label %.preheader.5.i, !prof !60

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 352 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !220
  %i.ax = icmp eq i64 %i.aw, %i.n
  br i1 %i.ax, label %bb.n, label %.preheader.6.i, !prof !60

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 368 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !220
  %i.ba = icmp eq i64 %i.az, %i.n
  br i1 %i.ba, label %bb.n, label %bb.m, !prof !60

bb.m:                                             ; preds = %.preheader.6.i
  %i.bb = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %.0.i, i64 noundef %.0, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %rtree_leaf_elm_lookup.exit.i

bb.n:                                             ; preds = %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.lcssa.i = phi ptr [ %i.z, %.preheader.preheader.i ], [ %i.aj, %.preheader.1.i ], [ %i.am, %.preheader.2.i ], [ %i.ap, %.preheader.3.i ], [ %i.as, %.preheader.4.i ], [ %i.av, %.preheader.5.i ], [ %i.ay, %.preheader.6.i ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !221 ; 2 uses
  %i.be = getelementptr i8, ptr %.lcssa.i, i64 -16 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !220
  store i64 %i.bf, ptr %.lcssa.i, align 8, !tbaa !220
  %i.bg = getelementptr i8, ptr %.lcssa.i, i64 -8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !221
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !221
  store i64 %i.p, ptr %i.be, align 8, !tbaa !220
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !221
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !221
  store i64 %i.n, ptr %i.o, align 8, !tbaa !220
  store ptr %i.bd, ptr %i.bi, align 8, !tbaa !221
  %i.bk = lshr i64 %.0, 12
  %i.bl = and i64 %i.bk, 262143
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bl
  br label %rtree_leaf_elm_lookup.exit.i

rtree_leaf_elm_lookup.exit.i:                     ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %.1.i.i = phi ptr [ %i.v, %bb.j ], [ %i.ai, %bb.l ], [ %i.bb, %bb.m ], [ %i.bm, %bb.n ] ; 2 uses
  %i.bn = icmp eq ptr %.1.i.i, null
  br i1 %i.bn, label %emap_full_alloc_ctx_try_lookup.exit.thread, label %emap_full_alloc_ctx_try_lookup.exit

emap_full_alloc_ctx_try_lookup.exit.thread:       ; preds = %rtree_leaf_elm_lookup.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.t

emap_full_alloc_ctx_try_lookup.exit:              ; preds = %rtree_leaf_elm_lookup.exit.i
  %i.bo = load atomic ptr, ptr %.1.i.i acquire, align 8, !noalias !222
  %.fr.i = freeze ptr %i.bo
  %i.bp = ptrtoint ptr %.fr.i to i64
  %i.bq = shl i64 %i.bp, 16
  %i.br = ashr exact i64 %i.bq, 16
  %i.bs = and i64 %i.br, -128                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %bb.o

bb.o:                                             ; preds = %emap_full_alloc_ctx_try_lookup.exit
  %i.bu = inttoptr i64 %i.bs to ptr
  %.val.i = load i64, ptr %i.bu, align 128, !tbaa !224
  %i.bv = and i64 %.val.i, 4095
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.bv
  %i.bx = load atomic ptr, ptr %i.bw monotonic, align 8 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr i8, ptr %i.bx, i64 80640
  %.val = load i32, ptr %i.bz, align 64, !tbaa !145 ; 2 uses
  store i32 %.val, ptr %i.a, align 4, !tbaa !89
  %i.ca = icmp ne ptr %3, null
  %i.cb = icmp ne ptr %4, null
  %or.cond4 = and i1 %i.ca, %i.cb
  br i1 %or.cond4, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cc = load i64, ptr %4, align 8, !tbaa !15    ; 2 uses
  %.not36 = icmp eq i64 %i.cc, 4
  br i1 %.not36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %spec.select = call i64 @llvm.umin.i64(i64 %i.cc, i64 4) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 4 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !15
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store i32 %.val, ptr %3, align 4, !tbaa !89
  br label %bb.t

bb.t:                                             ; preds = %emap_full_alloc_ctx_try_lookup.exit.thread, %bb.p, %bb.s, %bb.e, %bb.r, %bb.o, %emap_full_alloc_ctx_try_lookup.exit
  %.027 = phi i32 [ 22, %bb.e ], [ 22, %emap_full_alloc_ctx_try_lookup.exit ], [ 22, %bb.o ], [ 22, %bb.r ], [ 0, %bb.s ], [ 0, %bb.p ], [ 22, %emap_full_alloc_ctx_try_lookup.exit.thread ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.cd = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.027
}

declare i64 @je_arena_dirty_decay_ms_default_get() local_unnamed_addr #2

declare i64 @je_arena_muzzy_decay_ms_default_get() local_unnamed_addr #2

declare zeroext i1 @je_arena_dirty_decay_ms_default_set(i64 noundef) local_unnamed_addr #2

declare zeroext i1 @je_arena_muzzy_decay_ms_default_set(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef ptr @arenas_bin_i_index(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 noundef %3) #3 {
bb.a:
  %i.a = icmp ugt i64 %3, 35
  %.super_arenas_bin_i_node = select i1 %i.a, ptr null, ptr @super_arenas_bin_i_node
  ret ptr %.super_arenas_bin_i_node
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 23) i32 @arenas_bin_i_size_ctl(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !225  ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !15
  %i.h = icmp ne ptr %3, null
  %i.i = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.h, %i.i
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %4, align 8, !tbaa !15     ; 2 uses
  %.not = icmp eq i64 %i.j, 8
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.j, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %i.g, ptr %3, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 23) i32 @arenas_bin_i_nregs_ctl(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !226  ; 2 uses
  store i32 %i.h, ptr %i.a, align 4, !tbaa !89
  %i.i = icmp ne ptr %3, null
  %i.j = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.i, %i.j
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %4, align 8, !tbaa !15     ; 2 uses
  %.not = icmp eq i64 %i.k, 4
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.k, i64 4) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 4 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %i.h, ptr %3, align 4, !tbaa !89
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 23) i32 @arenas_bin_i_slab_size_ctl(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !227  ; 2 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !15
  %i.i = icmp ne ptr %3, null
  %i.j = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.i, %i.j
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %4, align 8, !tbaa !15     ; 2 uses
  %.not = icmp eq i64 %i.k, 8
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.k, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %i.h, ptr %3, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 23) i32 @arenas_bin_i_nshards_ctl(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
end_hunk_0
