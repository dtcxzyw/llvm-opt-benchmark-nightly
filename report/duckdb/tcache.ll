inline.NumInlined: 256
inline.NumDeleted: 85
begin_hunk_0_@duckdb_je_tsd_tcache_data_init:bb.a
  %i.aj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ai, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.aj
  %i.ak = lshr i64 1152921504606846975, %i.aj
  %i.al = add nuw nsw i64 %i.ak, %i.g
  %i.am = and i64 %i.al, %notmask.i.i
  br label %sz_s2u.exit31.i

sz_s2u.exit31.i:                                  ; preds = %bb.j, %bb.i
  %.0.i35.i = phi i64 [ %i.am, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.an = icmp ult i64 %.0.i35.i, %i.g
  br i1 %i.an, label %sz_sa2u.exit.i, label %.thread44.i

.thread44.i:                                      ; preds = %sz_s2u.exit31.i, %bb.h, %sz_s2u.exit.i
  %.0.i.i = phi i64 [ %.0.i35.i, %sz_s2u.exit31.i ], [ 16384, %bb.h ], [ 16384, %sz_s2u.exit.i ] ; 3 uses
  %i.ao = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !8
  %i.ap = add nuw nsw i64 %i.h, 4095
  %i.aq = and i64 %i.ap, 9223372036854771712
  %i.ar = add nsw i64 %i.aq, -4096
  %i.as = add i64 %i.ar, %.0.i.i
  %i.at = add i64 %i.as, %i.ao
  %i.au = icmp ult i64 %i.at, %.0.i.i
  %..0.i.i = select i1 %i.au, i64 0, i64 %.0.i.i
  br label %sz_sa2u.exit.i

sz_sa2u.exit.i:                                   ; preds = %.thread44.i, %sz_s2u.exit31.i, %bb.g, %sz_s2u.exit.i, %bb.e
  %.018.i.i = phi i64 [ 0, %bb.g ], [ %.0.i29.i, %sz_s2u.exit.i ], [ %..0.i.i, %.thread44.i ], [ 0, %sz_s2u.exit31.i ], [ 0, %bb.e ] ; 3 uses
  store i64 %.018.i.i, ptr %i.a, align 8, !tbaa !8
  %i.av = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.k, label %tsdn_witness_tsdp_get.exit.i.i, !prof !7

bb.k:                                             ; preds = %sz_sa2u.exit.i
  %i.ax = call ptr @duckdb_je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default) #15
  br label %tsdn_witness_tsdp_get.exit.i.i

tsdn_witness_tsdp_get.exit.i.i:                   ; preds = %bb.k, %sz_sa2u.exit.i
  %.0.i40.i = phi ptr [ %i.ax, %bb.k ], [ %i.av, %sz_sa2u.exit.i ]
  %i.ay = icmp samesign ult i64 %.018.i.i, 14337
  %i.az = call ptr @duckdb_je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i40.i, i64 noundef %.018.i.i, i64 noundef %i.h, i1 noundef zeroext true, i1 noundef zeroext %i.ay, ptr noundef null) #15 ; 3 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %tsd_tcache_data_init_impl.exit, label %ipallocztm_explicit_slab.exit.thread46.i, !prof !7

ipallocztm_explicit_slab.exit.thread46.i:         ; preds = %tsdn_witness_tsdp_get.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %0, ptr noundef nonnull %i.ba, i64 noundef %i.bb)
  %i.bc = load ptr, ptr %3, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.val39.i = load i64, ptr %i.bc, align 8, !tbaa !40
  %i.bd = and i64 %.val39.i, 4095
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.bd
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8
  %i.bg = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.ba, i64 noundef %i.bb)
  %.fca.0.extract.i.i.i = extractvalue { i64, i32 } %i.bg, 0
  %i.bh = and i64 %.fca.0.extract.i.i.i, 4294967295
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bl = atomicrmw add ptr %i.bk, i64 %i.bj monotonic, align 8 ; 0 uses
  br label %bb.l

ipallocztm_explicit_slab.exit.i:                  ; preds = %bb.a
  %i.bm = call ptr @duckdb_je_b0_alloc_tcache_stack(ptr noundef nonnull %0, i64 noundef %i.g) #15 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %tsd_tcache_data_init_impl.exit, label %bb.l

bb.l:                                             ; preds = %ipallocztm_explicit_slab.exit.i, %ipallocztm_explicit_slab.exit.thread46.i
  %.048.i = phi ptr [ %i.az, %ipallocztm_explicit_slab.exit.thread46.i ], [ %i.bm, %ipallocztm_explicit_slab.exit.i ]
  call fastcc void @tcache_init(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %.048.i, ptr noundef %2)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !39
  %i.bp = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %arena_get.exit42.i

arena_get.exit42.i:                               ; preds = %bb.l
  %i.br = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8
  br label %ipallocztm_explicit_slab.exit.thread.sink.split.i

bb.m:                                             ; preds = %bb.l
  %i.bs = icmp eq ptr %1, null
  br i1 %i.bs, label %bb.n, label %ipallocztm_explicit_slab.exit.thread.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !33
  %i.bv = icmp sgt i8 %i.bu, 0
  br i1 %i.bv, label %bb.o, label %bb.q, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.bw = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.p, label %arena_choose.exit.i, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.by = call ptr @duckdb_je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default) #15
  br label %arena_choose.exit.i

bb.q:                                             ; preds = %bb.n
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load ptr, ptr %.in.i.i.i, align 8, !tbaa !135 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.r, label %arena_choose.exit.i, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.cb = call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #15 ; 6 uses
  %i.cc = load i8, ptr %0, align 1, !tbaa !10, !range !12, !noundef !13
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.s, label %arena_choose.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.bo, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not30.i.i.i = icmp eq ptr %i.ce, %i.cb
  br i1 %.not30.i.i.i, label %tsd_tcache_data_init_impl.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call fastcc void @tcache_arena_dissociate(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.cb)
  br label %arena_choose.exit.i

bb.v:                                             ; preds = %bb.s
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.cb)
  br label %arena_choose.exit.i

arena_choose.exit.i:                              ; preds = %bb.v, %bb.u, %bb.r, %bb.q, %bb.p, %bb.o
  %.027.ph.ph.i = phi ptr [ %i.cb, %bb.v ], [ %i.bz, %bb.q ], [ %i.cb, %bb.r ], [ %i.cb, %bb.u ], [ %i.by, %bb.p ], [ %i.bw, %bb.o ]
  %.pr.pr.i = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.cf = icmp eq ptr %.pr.pr.i, null
  br i1 %i.cf, label %ipallocztm_explicit_slab.exit.thread.sink.split.i, label %tsd_tcache_data_init_impl.exit

ipallocztm_explicit_slab.exit.thread.sink.split.i: ; preds = %arena_choose.exit.i, %bb.m, %arena_get.exit42.i
  %.02750.sink.i = phi ptr [ %i.br, %arena_get.exit42.i ], [ %.027.ph.ph.i, %arena_choose.exit.i ], [ %1, %bb.m ]
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %.02750.sink.i)
  br label %tsd_tcache_data_init_impl.exit

tsd_tcache_data_init_impl.exit:                   ; preds = %tsdn_witness_tsdp_get.exit.i.i, %ipallocztm_explicit_slab.exit.i, %bb.t, %arena_choose.exit.i, %ipallocztm_explicit_slab.exit.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_enabled_set(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %.not = xor i1 %i.b, true                       ; 2 uses
  %or.cond = and i1 %1, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @opt_tcache_ncached_max)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %or.cond4 = or i1 %1, %.not
  br i1 %or.cond4, label %bb.d, label %duckdb_je_tcache_cleanup.exit

duckdb_je_tcache_cleanup.exit:                    ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  tail call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1752) %i.d, i8 0, i64 1752, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %duckdb_je_tcache_cleanup.exit, %bb.b
  %i.e = zext i1 %1 to i8
  store i8 %i.e, ptr %0, align 1, !tbaa !10
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  tail call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1752) %i.d, i8 0, i64 1752, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_thread_tcache_max_set(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [73 x %struct.cache_bin_info_s], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(146) %2, i8 0, i64 146, i1 false)
  %i.c = load i8, ptr %0, align 8, !tbaa !10, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.d, label %bb.b, label %duckdb_je_tcache_cleanup.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.i = getelementptr i8, ptr %i.h, i64 30
  %.val.i = load i16, ptr %i.i, align 2, !tbaa !34
  call void @duckdb_je_cache_bin_info_init(ptr noundef nonnull %i.g, i16 noundef zeroext %.val.i) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 73
  br i1 %exitcond.not.i, label %tcache_bin_settings_backup.exit, label %bb.c

tcache_bin_settings_backup.exit:                  ; preds = %bb.c
  %i.j = load i8, ptr %0, align 1, !tbaa !10, !range !12, !noundef !13
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %duckdb_je_tcache_cleanup.exit

bb.d:                                             ; preds = %tcache_bin_settings_backup.exit
  call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i1 noundef zeroext true)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1752) %i.l, i8 0, i64 1752, i1 false)
  br label %duckdb_je_tcache_cleanup.exit

duckdb_je_tcache_cleanup.exit:                    ; preds = %bb.d, %tcache_bin_settings_backup.exit, %bb.a
  %.0 = phi ptr [ undef, %bb.a ], [ %i.f, %tcache_bin_settings_backup.exit ], [ %i.f, %bb.d ]
  %i.m = icmp ult i64 %1, 4097
  br i1 %i.m, label %bb.e, label %bb.f, !prof !119

bb.e:                                             ; preds = %duckdb_je_tcache_cleanup.exit
  %i.n = add nuw nsw i64 %1, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33
  %i.r = zext i8 %i.q to i32
  br label %tcache_max_set.exit

bb.f:                                             ; preds = %duckdb_je_tcache_cleanup.exit
  %i.s = call fastcc i32 @sz_size2index_compute(i64 noundef %1)
  br label %tcache_max_set.exit

tcache_max_set.exit:                              ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.r, %bb.e ], [ %i.s, %bb.f ]
  %i.t = add nuw nsw i32 %.0.i.i, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.t, ptr %i.u, align 8, !tbaa !35
  br i1 %i.d, label %bb.g, label %bb.h

bb.g:                                             ; preds = %tcache_max_set.exit
  call fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef nonnull %0, ptr noundef %.0, ptr noundef nonnull %2)
  br label %bb.h

bb.h:                                             ; preds = %tcache_max_set.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @tcache_bin_info_default_init(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @tcache_bin_info_settings_parse(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @opt_tcache_ncached_max, ptr noundef nonnull @opt_tcache_ncached_max_set)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @tcache_bin_info_settings_parse(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !138
  store i64 %1, ptr %i.b, align 8, !tbaa !8
  %.not15 = icmp eq ptr %3, null
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.f = call zeroext i1 @duckdb_je_multi_setting_parse_next(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #15 ; 2 uses
  br i1 %i.f, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.d, align 8              ; 2 uses
  %i.h = icmp ugt i64 %i.g, 8388608
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 8388608, ptr %i.d, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i64 [ 8388608, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %i.j = load i64, ptr %i.c, align 8, !tbaa !8    ; 5 uses
  %i.k = icmp ugt i64 %i.j, 8388608
  %i.l = icmp ugt i64 %i.j, %i.i
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp samesign ult i64 %i.j, 9
  br i1 %i.m, label %sz_size2index_compute.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = shl nuw nsw i64 %i.j, 1
  %i.o = add nsw i64 %i.n, -1
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = xor i32 %i.q, 63                         ; 2 uses
  %i.s = call i32 @llvm.usub.sat.i32(i32 %i.r, i32 6)
  %i.t = shl nuw nsw i32 %i.s, 2
  %i.u = call i32 @llvm.umax.i32(i32 %i.r, i32 7)
  %i.v = add nsw i32 %i.u, -3
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = shl nsw i64 -1, %i.w
  %i.y = add nsw i64 %i.j, -1
  %i.z = and i64 %i.x, %i.y
  %i.aa = lshr i64 %i.z, %i.w
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 3
  %i.ad = or disjoint i32 %i.t, 1
  %i.ae = add nuw nsw i32 %i.ad, %i.ac
  br label %sz_size2index_compute.exit

sz_size2index_compute.exit:                       ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ %i.ae, %bb.g ], [ 0, %bb.f ]  ; 3 uses
  %i.af = icmp samesign ult i64 %i.i, 9
  br i1 %i.af, label %sz_size2index_compute.exit19, label %bb.h

bb.h:                                             ; preds = %sz_size2index_compute.exit
  %i.ag = shl nuw nsw i64 %i.i, 1
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = xor i32 %i.aj, 63                       ; 2 uses
  %i.al = call i32 @llvm.usub.sat.i32(i32 %i.ak, i32 6)
  %i.am = shl nuw nsw i32 %i.al, 2
  %i.an = call i32 @llvm.umax.i32(i32 %i.ak, i32 7)
  %i.ao = add nsw i32 %i.an, -3
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = shl nsw i64 -1, %i.ap
  %i.ar = add nsw i64 %i.i, -1
  %i.as = and i64 %i.aq, %i.ar
  %i.at = lshr i64 %i.as, %i.ap
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = and i32 %i.au, 3
  %i.aw = or disjoint i32 %i.am, 1
  %i.ax = add nuw nsw i32 %i.aw, %i.av
  br label %sz_size2index_compute.exit19

sz_size2index_compute.exit19:                     ; preds = %sz_size2index_compute.exit, %bb.h
  %.0.i18 = phi i32 [ %i.ax, %bb.h ], [ 0, %sz_size2index_compute.exit ] ; 3 uses
  %i.ay = load i64, ptr %i.e, align 8, !tbaa !8
  %i.az = icmp ugt i64 %i.ay, 8191
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %sz_size2index_compute.exit19
  store i64 8191, ptr %i.e, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sz_size2index_compute.exit19
  %.not23 = icmp samesign ugt i32 %.0.i, %.0.i18
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  br i1 %.not15, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.024.us = phi i32 [ %i.be, %.lr.ph.split.us ], [ %.0.i, %.lr.ph ] ; 3 uses
  %i.ba = zext nneg i32 %.024.us to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ba
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !8
  %i.bd = trunc i64 %i.bc to i16
  call void @duckdb_je_cache_bin_info_init(ptr noundef %i.bb, i16 noundef zeroext %i.bd) #15
  %i.be = add nuw nsw i32 %.024.us, 1
  %.not.us.not = icmp ult i32 %.024.us, %.0.i18
  br i1 %.not.us.not, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.024 = phi i32 [ %i.bk, %.lr.ph.split ], [ %.0.i, %.lr.ph ] ; 3 uses
  %i.bf = zext nneg i32 %.024 to i64              ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bf
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !8
  %i.bi = trunc i64 %i.bh to i16
  call void @duckdb_je_cache_bin_info_init(ptr noundef %i.bg, i16 noundef zeroext %i.bi) #15
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %i.bf
  store i8 1, ptr %i.bj, align 1, !tbaa !10
  %i.bk = add nuw nsw i32 %.024, 1
  %.not.not = icmp ult i32 %.024, %.0.i18
  br i1 %.not.not, label %.lr.ph.split, label %.loopexit

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %.loopexit21

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !8
  %.not16 = icmp eq i64 %i.bl, 0
  br i1 %.not16, label %.loopexit21, label %bb.b

.loopexit21:                                      ; preds = %.loopexit, %bb.k
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_tcache_bins_ncached_max_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [73 x %struct.cache_bin_info_s], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.d = getelementptr i8, ptr %i.c, i64 30
  %.val.i = load i16, ptr %i.d, align 2, !tbaa !34
  call void @duckdb_je_cache_bin_info_init(ptr noundef nonnull %i.b, i16 noundef zeroext %.val.i) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 73
  br i1 %exitcond.not.i, label %tcache_bin_settings_backup.exit, label %bb.b

tcache_bin_settings_backup.exit:                  ; preds = %bb.b
  %i.e = call fastcc zeroext i1 @tcache_bin_info_settings_parse(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3, ptr noundef null) ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %tcache_bin_settings_backup.exit
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = load i8, ptr %0, align 8, !tbaa !10, !range !12, !noundef !13
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %duckdb_je_tcache_cleanup.exit

bb.d:                                             ; preds = %bb.c
  call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i1 noundef zeroext true)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1752) %i.k, i8 0, i64 1752, i1 false)
  br label %duckdb_je_tcache_cleanup.exit

duckdb_je_tcache_cleanup.exit:                    ; preds = %bb.c, %bb.d
  call fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull %3)
end_hunk_0
