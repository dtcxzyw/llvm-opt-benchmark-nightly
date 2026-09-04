Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/tcache?download=true
inline.NumInlined: 171
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@je_tcache_arena_reassociate
define hidden void @je_tcache_arena_reassociate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @tcache_arena_dissociate(ptr noundef %0, ptr noundef %1)
  tail call void @je_tcache_arena_associate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_arena_dissociate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10472 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.c) #13
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 10408
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10512
  store atomic i8 1, ptr %i.f monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 10464 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 10456 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.k, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.j, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 10448 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !62
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !62
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 10392 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128  ; 2 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !126  ; 2 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !128
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %bb.f, label %.thread

.thread:                                          ; preds = %malloc_mutex_lock.exit, %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !126
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !127  ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !tbaa !126
  %i.y = load ptr, ptr %1, align 8, !tbaa !126    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !127
  store ptr %i.v, ptr %i.w, align 8, !tbaa !127
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !127
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !126
  store ptr %1, ptr %i.v, align 8, !tbaa !126
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.o, align 8, !tbaa !128
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 10400 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !131 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.h, label %.thread7

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !129 ; 2 uses
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !131
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %bb.i, label %.thread7

.thread7:                                         ; preds = %bb.g, %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !133
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !132 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !129
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !133 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !130
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !132
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !130
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !129
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !129
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.ab, align 8, !tbaa !131
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread7
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !134
  tail call void @je_tcache_stats_merge(ptr noundef %0, ptr noundef %i.aq, ptr noundef nonnull %i.b)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 10512
  store atomic i8 0, ptr %i.ar monotonic, align 8
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #13 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_tsd_tcache_enabled_data_init(ptr noundef initializes((0, 1)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @je_opt_tcache, align 1, !tbaa !20, !range !21, !noundef !22
  store i8 %i.a, ptr %0, align 1, !tbaa !20
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #13
  %i.b = load i8, ptr @je_opt_tcache, align 1, !tbaa !20, !range !21, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @je_tsd_tcache_data_init(ptr noundef nonnull %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 false
}

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_tsd_tcache_data_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %2 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.c = load i64, ptr @tcache_bin_alloc_alignment, align 8, !tbaa !18 ; 7 uses
  %i.d = load i64, ptr @tcache_bin_alloc_size, align 8, !tbaa !18 ; 7 uses
  %i.e = icmp ult i64 %i.d, 14337
  %i.f = icmp ult i64 %i.c, 4097
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.c, -1
  %i.h = add nsw i64 %i.g, %i.d
  %i.i = sub nsw i64 0, %i.c
  %i.j = and i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp ult i64 %i.j, 4097
  br i1 %i.k, label %bb.c, label %bb.d, !prof !135

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw nsw i64 %i.j, 7
  %i.m = lshr i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !40
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  br label %sz_s2u.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %i.j, 8070450532247928832
  br i1 %i.s, label %sz_sa2u.exit, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.t = shl nuw i64 %i.j, 1
  %i.u = add nsw i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %notmask.i31 = ashr exact i64 -1152921504606846976, %i.v
  %i.w = lshr i64 1152921504606846975, %i.v
  %i.x = add nuw nsw i64 %i.j, %i.w
  %i.y = and i64 %i.x, %notmask.i31
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.e, %bb.c
  %.0.i25 = phi i64 [ %i.r, %bb.c ], [ %i.y, %bb.e ] ; 2 uses
  %i.z = icmp ult i64 %.0.i25, 16384
  br i1 %i.z, label %sz_sa2u.exit, label %.thread38

bb.f:                                             ; preds = %bb.a
  %i.aa = icmp ugt i64 %i.c, 8070450532247928832
  br i1 %i.aa, label %sz_sa2u.exit, label %bb.g, !prof !136

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp ult i64 %i.d, 16385
  br i1 %i.ab, label %.thread38, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp ugt i64 %i.d, 8070450532247928832
  br i1 %i.ac, label %sz_sa2u.exit, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.ad = shl nuw i64 %i.d, 1
  %i.ae = add i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.af
  %i.ag = lshr i64 1152921504606846975, %i.af
  %i.ah = add nuw nsw i64 %i.d, %i.ag
  %i.ai = and i64 %i.ah, %notmask.i               ; 2 uses
  %4 = icmp samesign ult i64 %i.ai, %i.d
  br i1 %4, label %sz_sa2u.exit, label %.thread38

.thread38:                                        ; preds = %sz_s2u.exit, %bb.i, %bb.g
  %.0.i = phi i64 [ %i.ai, %bb.i ], [ 16384, %bb.g ], [ 16384, %sz_s2u.exit ] ; 3 uses
  %i.aj = load i64, ptr @je_sz_large_pad, align 8, !tbaa !18
  %i.ak = add nuw nsw i64 %i.c, 4095
  %i.al = and i64 %i.ak, 9223372036854771712
  %i.am = add nsw i64 %i.al, -4096
  %i.an = add i64 %i.am, %.0.i
  %i.ao = add i64 %i.an, %i.aj
  %i.ap = icmp ult i64 %i.ao, %.0.i
  %..0.i = select i1 %i.ap, i64 0, i64 %.0.i
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %bb.h, %bb.d, %sz_s2u.exit, %bb.f, %bb.i, %.thread38
  %.018.i = phi i64 [ 0, %bb.f ], [ %.0.i25, %sz_s2u.exit ], [ %..0.i, %.thread38 ], [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %bb.h ] ; 2 uses
  %i.aq = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.j, label %arena_get.exit, !prof !16

bb.j:                                             ; preds = %sz_sa2u.exit
  %i.as = tail call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #13
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %sz_sa2u.exit, %bb.j
  %.0.i34 = phi ptr [ %i.as, %bb.j ], [ %i.aq, %sz_sa2u.exit ] ; 2 uses
  %i.at = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.at, label %tsdn_witness_tsdp_get.exit, label %tsdn_witness_tsdp_get.exit.thread

tsdn_witness_tsdp_get.exit:                       ; preds = %arena_get.exit
  %i.au = tail call ptr @je_arena_palloc(ptr noundef null, ptr noundef %.0.i34, i64 noundef %.018.i, i64 noundef %i.c, i1 noundef zeroext true, ptr noundef null) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %ipallocztm.exit.thread, label %bb.k, !prof !16

tsdn_witness_tsdp_get.exit.thread:                ; preds = %arena_get.exit
  %i.av = tail call ptr @je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i34, i64 noundef %.018.i, i64 noundef %i.c, i1 noundef zeroext true, ptr noundef null) #13 ; 2 uses
  %.not.i39 = icmp eq ptr %i.av, null
  br i1 %.not.i39, label %ipallocztm.exit.thread, label %bb.l, !prof !16

bb.k:                                             ; preds = %tsdn_witness_tsdp_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %1) #13
  br label %emap_edata_lookup.exit

bb.l:                                             ; preds = %tsdn_witness_tsdp_get.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %emap_edata_lookup.exit

emap_edata_lookup.exit:                           ; preds = %bb.k, %bb.l
  %i.ax = phi ptr [ %i.au, %bb.k ], [ %i.av, %bb.l ] ; 2 uses
  %.0.i.i29 = phi ptr [ %1, %bb.k ], [ %i.aw, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ay = ptrtoint ptr %i.ax to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, ptr noundef nonnull %.0.i.i29, i64 noundef %i.ay)
  %i.az = load ptr, ptr %2, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.val = load i64, ptr %i.az, align 8, !tbaa !55
  %i.ba = and i64 %.val, 4095
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ba
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  br i1 %i.at, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %emap_edata_lookup.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #13
  br label %bb.o

bb.n:                                             ; preds = %emap_edata_lookup.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.0.i.i = phi ptr [ %3, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.ay)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.be, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.bf = and i64 %.fca.0.extract.i.i, 4294967295
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bj = atomicrmw add ptr %i.bi, i64 %i.bh monotonic, align 8 ; 0 uses
  call fastcc void @tcache_init(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.ax)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !52
  %i.bl = load i32, ptr @je_malloc_init_state, align 4, !tbaa !15
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.p, label %arena_get.exit36

arena_get.exit36:                                 ; preds = %bb.o
  %i.bn = load atomic ptr, ptr @je_arenas acquire, align 8
  br label %ipallocztm.exit.thread.sink.split

bb.p:                                             ; preds = %bb.o
  %i.bo = call fastcc ptr @arena_choose_impl(ptr noundef nonnull %0, i1 noundef zeroext false)
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !52
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %ipallocztm.exit.thread.sink.split, label %ipallocztm.exit.thread

ipallocztm.exit.thread.sink.split:                ; preds = %bb.p, %arena_get.exit36
  %.sink = phi ptr [ %i.bn, %arena_get.exit36 ], [ %i.bo, %bb.p ]
  call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %.sink)
  br label %ipallocztm.exit.thread

ipallocztm.exit.thread:                           ; preds = %ipallocztm.exit.thread.sink.split, %tsdn_witness_tsdp_get.exit, %tsdn_witness_tsdp_get.exit.thread, %bb.p
  %.not.i4147 = phi i1 [ true, %tsdn_witness_tsdp_get.exit ], [ false, %bb.p ], [ true, %tsdn_witness_tsdp_get.exit.thread ], [ false, %ipallocztm.exit.thread.sink.split ]
  ret i1 %.not.i4147
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_init(ptr noundef %0, ptr noundef initializes((0, 8)) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store ptr %0, ptr %1, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %1, ptr %i.c, align 8, !tbaa !134
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %2, ptr %i.f, align 8, !tbaa !140
  %i.g = load i32, ptr @je_nhbins, align 4, !tbaa !15 ; 2 uses
  %i.h = tail call i32 @llvm.umax.i32(i32 %i.g, i32 39)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = zext i32 %i.h to i64
  %i.k = mul nuw nsw i64 %i.j, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 0, i64 %i.k, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.l = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !43
  call void @je_cache_bin_preincrement(ptr noundef %i.l, i32 noundef %i.g, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #13
  %i.m = load i32, ptr @je_nhbins, align 4, !tbaa !15
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.lr.ph3.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 130
  br label %bb.b

.preheader:                                       ; preds = %bb.d
  %i.q = icmp ult i32 %i.af, 39
  br i1 %i.q, label %.lr.ph3.preheader, label %._crit_edge

.lr.ph3.preheader:                                ; preds = %bb.a, %.preheader
  %i.r = phi i32 [ %i.af, %.preheader ], [ 0, %bb.a ]
  %i.s = zext nneg i32 %i.r to i64
  br label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 8 uses
  %i.t = icmp samesign ult i64 %indvars.iv, 39
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  store i8 1, ptr %i.u, align 1, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv
  store i8 0, ptr %i.v, align 1, !tbaa !20
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18
  %i.y = load i64, ptr @je_opt_tcache_gc_delay_bytes, align 8, !tbaa !18
  %i.z = udiv i64 %i.y, %i.x
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.z, i64 255)
  %i.aa = trunc nuw i64 %spec.select.i to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv
  call void @je_cache_bin_init(ptr noundef nonnull %i.ac, ptr noundef %i.ae, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr @je_nhbins, align 4, !tbaa !15 ; 4 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.b, label %.preheader, !llvm.loop !150

._crit_edge.loopexit:                             ; preds = %.lr.ph3
  %.pre = load i32, ptr @je_nhbins, align 4, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ai = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.af, %.preheader ]
  %i.aj = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !43
  call void @je_cache_bin_postincrement(ptr noundef %i.aj, i32 noundef %i.ai, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %.lr.ph3
  %indvars.iv6 = phi i64 [ %i.s, %.lr.ph3.preheader ], [ %indvars.iv.next7, %.lr.ph3 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !18
  %i.al = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv6
  call void @je_cache_bin_init(ptr noundef nonnull %i.ak, ptr noundef %i.am, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 2 uses
  %i.an = and i64 %indvars.iv.next7, 4294967295
  %exitcond.not = icmp eq i64 %i.an, 39
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph3, !llvm.loop !151
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @je_tcache_create_explicit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %2 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
end_hunk_0
