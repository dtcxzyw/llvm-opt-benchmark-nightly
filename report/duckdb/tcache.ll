Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/tcache?download=true
inline.NumInlined: 257
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@duckdb_je_tcache_create_explicit:bb.a

ipallocztm_explicit_slab.exit.thread:             ; preds = %tsdn_witness_tsdp_get.exit.i, %tsdn_witness_tsdp_get.exit.i.thread, %arena_ichoose.exit
  %.0 = phi ptr [ %i.bp, %arena_ichoose.exit ], [ null, %tsdn_witness_tsdp_get.exit.i.thread ], [ null, %tsdn_witness_tsdp_get.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.0
}

declare void @duckdb_je_cache_bin_info_compute_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_init(ptr noundef %0, ptr noundef initializes((0, 8)) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr %0, ptr %1, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %1, ptr %i.b, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %2, ptr %i.e, align 8, !tbaa !133
  %i.f = getelementptr i8, ptr %0, i64 48
  %.val = load i32, ptr %i.f, align 8, !tbaa !35  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8, !tbaa !9
  call void @duckdb_je_cache_bin_preincrement(ptr noundef %3, i32 noundef %.val, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #15
  %.not4 = icmp eq i32 %.val, 0
  br i1 %.not4, label %.lr.ph3, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %wide.trip.count = zext i32 %.val to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.g
  %i.k = icmp ult i32 %.val, 73
  br i1 %i.k, label %.lr.ph3, label %._crit_edge

.lr.ph3:                                          ; preds = %bb.a, %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = zext nneg i32 %.val to i64
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 8 uses
  %i.n = icmp samesign ult i64 %indvars.iv, 36
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  store i8 1, ptr %i.o, align 1, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  store i8 0, ptr %i.p, align 1, !tbaa !11
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = load i64, ptr @duckdb_je_opt_tcache_gc_delay_bytes, align 8, !tbaa !9
  %i.t = udiv i64 %i.s, %i.r
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.t, i64 255)
  %i.u = trunc nuw i64 %spec.select.i to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  store i8 %i.u, ptr %i.v, align 1, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !134
  %.not = icmp eq i16 %i.y, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @duckdb_je_cache_bin_init(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @cache_bin_init_disabled(ptr noundef nonnull %i.w, i16 noundef zeroext 0) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b

._crit_edge:                                      ; preds = %bb.h, %.preheader
  call void @duckdb_je_cache_bin_postincrement(ptr noundef nonnull %2, ptr noundef nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.h:                                             ; preds = %.lr.ph3, %bb.h
  %indvars.iv6 = phi i64 [ %i.m, %.lr.ph3 ], [ %indvars.iv.next7, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv6
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv6
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !134
  call void @cache_bin_init_disabled(ptr noundef nonnull %i.z, i16 noundef zeroext %i.ab) #15
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 2 uses
  %i.ac = and i64 %indvars.iv.next7, 4294967295
  %exitcond9.not = icmp eq i64 %i.ac, 73
  br i1 %exitcond9.not, label %._crit_edge, label %bb.h
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_tsd_tcache_enabled_data_init(ptr noundef initializes((0, 1), (304, 308)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @duckdb_je_opt_tcache, align 1, !tbaa !11, !range !12, !noundef !13
  store i8 %i.a, ptr %0, align 1, !tbaa !11
  %i.b = load i32, ptr @duckdb_je_global_do_not_change_tcache_nbins, align 4, !tbaa !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %i.b, ptr %i.c, align 8, !tbaa !35
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %0) #15
  %i.d = load i8, ptr @duckdb_je_opt_tcache, align 1, !tbaa !11, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @opt_tcache_ncached_max)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 false
}

declare void @duckdb_je_tsd_slow_update(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 304
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @duckdb_je_cache_bin_info_compute_alloc(ptr noundef %2, i32 noundef %.val.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %i.f = call zeroext i1 @duckdb_je_cache_bin_stack_use_thp() #15
  %i.g = load i64, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  br i1 %i.f, label %ipallocztm_explicit_slab.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !tbaa !9    ; 6 uses
  %i.i = icmp ult i64 %i.g, 14337
  %i.j = icmp ult i64 %i.h, 4097
  %or.cond.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.g, -1
  %i.l = add nsw i64 %i.k, %i.h
  %i.m = sub nsw i64 0, %i.h
  %i.n = and i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, 4097
  br i1 %i.o, label %bb.d, label %bb.e, !prof !118

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.n, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !33
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !9
  br label %sz_s2u.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = icmp ugt i64 %i.n, 8070450532247928832
  br i1 %i.w, label %sz_sa2u.exit.i, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.x = shl nuw i64 %i.n, 1
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.y, i1 true) ; 2 uses
  %notmask.i36.i = ashr exact i64 -1152921504606846976, %i.z
  %i.aa = lshr i64 1152921504606846975, %i.z
  %i.ab = add nuw nsw i64 %i.aa, %i.n
  %i.ac = and i64 %i.ab, %notmask.i36.i
  br label %sz_s2u.exit.i

sz_s2u.exit.i:                                    ; preds = %bb.f, %bb.d
  %.0.i29.i = phi i64 [ %i.v, %bb.d ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ad = icmp ult i64 %.0.i29.i, 16384
  br i1 %i.ad, label %sz_sa2u.exit.i, label %.thread44.i

bb.g:                                             ; preds = %bb.b
  %i.ae = icmp ugt i64 %i.h, 8070450532247928832
  br i1 %i.ae, label %sz_sa2u.exit.i, label %bb.h, !prof !128

bb.h:                                             ; preds = %bb.g
  %i.af = icmp ult i64 %i.g, 16385
  br i1 %i.af, label %.thread44.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp ugt i64 %i.g, 8070450532247928832
  br i1 %i.ag, label %sz_sa2u.exit.i, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ah = shl nuw i64 %i.g, 1
  %i.ai = add i64 %i.ah, -1
  %i.aj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ai, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.aj
  %i.ak = lshr i64 1152921504606846975, %i.aj
  %i.al = add nuw nsw i64 %i.ak, %i.g
  %i.am = and i64 %i.al, %notmask.i.i             ; 2 uses
  %4 = icmp samesign ult i64 %i.am, %i.g
  br i1 %4, label %sz_sa2u.exit.i, label %.thread44.i

.thread44.i:                                      ; preds = %bb.j, %bb.h, %sz_s2u.exit.i
  %.0.i.i = phi i64 [ %i.am, %bb.j ], [ 16384, %bb.h ], [ 16384, %sz_s2u.exit.i ] ; 3 uses
  %i.an = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !9
  %i.ao = add nuw nsw i64 %i.h, 4095
  %i.ap = and i64 %i.ao, 9223372036854771712
  %i.aq = add nsw i64 %i.ap, -4096
  %i.ar = add i64 %i.aq, %.0.i.i
  %i.as = add i64 %i.ar, %i.an
  %i.at = icmp ult i64 %i.as, %.0.i.i
  %..0.i.i = select i1 %i.at, i64 0, i64 %.0.i.i
  br label %sz_sa2u.exit.i

sz_sa2u.exit.i:                                   ; preds = %.thread44.i, %bb.j, %bb.i, %bb.g, %sz_s2u.exit.i, %bb.e
  %.018.i.i = phi i64 [ 0, %bb.g ], [ %.0.i29.i, %sz_s2u.exit.i ], [ %..0.i.i, %.thread44.i ], [ 0, %bb.j ], [ 0, %bb.e ], [ 0, %bb.i ] ; 3 uses
  store i64 %.018.i.i, ptr %i.a, align 8, !tbaa !9
  %i.au = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.k, label %tsdn_witness_tsdp_get.exit.i.i, !prof !7

bb.k:                                             ; preds = %sz_sa2u.exit.i
  %i.aw = call ptr @duckdb_je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default) #15
  br label %tsdn_witness_tsdp_get.exit.i.i

tsdn_witness_tsdp_get.exit.i.i:                   ; preds = %bb.k, %sz_sa2u.exit.i
  %.0.i40.i = phi ptr [ %i.aw, %bb.k ], [ %i.au, %sz_sa2u.exit.i ]
  %i.ax = icmp samesign ult i64 %.018.i.i, 14337
  %i.ay = call ptr @duckdb_je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i40.i, i64 noundef %.018.i.i, i64 noundef %i.h, i1 noundef zeroext true, i1 noundef zeroext %i.ax, ptr noundef null) #15 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %tsd_tcache_data_init_impl.exit, label %ipallocztm_explicit_slab.exit.thread46.i, !prof !7

ipallocztm_explicit_slab.exit.thread46.i:         ; preds = %tsdn_witness_tsdp_get.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %0, ptr noundef nonnull %i.az, i64 noundef %i.ba)
  %i.bb = load ptr, ptr %3, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.val39.i = load i64, ptr %i.bb, align 8, !tbaa !42
  %i.bc = and i64 %.val39.i, 4095
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.bc
  %i.be = load atomic ptr, ptr %i.bd monotonic, align 8
  %i.bf = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.az, i64 noundef %i.ba)
  %.fca.0.extract.i.i.i = extractvalue { i64, i32 } %i.bf, 0
  %i.bg = and i64 %.fca.0.extract.i.i.i, 4294967295
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bk = atomicrmw add ptr %i.bj, i64 %i.bi monotonic, align 8 ; 0 uses
  br label %bb.l

ipallocztm_explicit_slab.exit.i:                  ; preds = %bb.a
  %i.bl = call ptr @duckdb_je_b0_alloc_tcache_stack(ptr noundef nonnull %0, i64 noundef %i.g) #15 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %tsd_tcache_data_init_impl.exit, label %bb.l

bb.l:                                             ; preds = %ipallocztm_explicit_slab.exit.i, %ipallocztm_explicit_slab.exit.thread46.i
  %.048.i = phi ptr [ %i.ay, %ipallocztm_explicit_slab.exit.thread46.i ], [ %i.bl, %ipallocztm_explicit_slab.exit.i ]
  call fastcc void @tcache_init(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %.048.i, ptr noundef %2)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr null, ptr %i.bn, align 8, !tbaa !39
  %i.bo = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !6
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.m, label %arena_get.exit42.i

arena_get.exit42.i:                               ; preds = %bb.l
  %i.bq = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8
  br label %ipallocztm_explicit_slab.exit.thread.sink.split.i

bb.m:                                             ; preds = %bb.l
  %i.br = icmp eq ptr %1, null
  br i1 %i.br, label %bb.n, label %ipallocztm_explicit_slab.exit.thread.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !33
  %i.bu = icmp sgt i8 %i.bt, 0
  br i1 %i.bu, label %bb.o, label %bb.q, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.bv = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.p, label %arena_choose.exit.i, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.bx = call ptr @duckdb_je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default) #15
  br label %arena_choose.exit.i

bb.q:                                             ; preds = %bb.n
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.by = load ptr, ptr %.in.i.i.i, align 8, !tbaa !132 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.r, label %arena_choose.exit.i, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.ca = call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #15 ; 6 uses
  %i.cb = load i8, ptr %0, align 8, !tbaa !11, !range !12, !noundef !13
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.s, label %arena_choose.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not30.i.i.i = icmp eq ptr %i.cd, %i.ca
  br i1 %.not30.i.i.i, label %tsd_tcache_data_init_impl.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call fastcc void @tcache_arena_dissociate(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.ca)
  br label %arena_choose.exit.i

bb.v:                                             ; preds = %bb.s
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.ca)
  br label %arena_choose.exit.i

arena_choose.exit.i:                              ; preds = %bb.v, %bb.u, %bb.r, %bb.q, %bb.p, %bb.o
  %.027.ph.ph.i = phi ptr [ %i.ca, %bb.v ], [ %i.by, %bb.q ], [ %i.ca, %bb.r ], [ %i.ca, %bb.u ], [ %i.bx, %bb.p ], [ %i.bv, %bb.o ]
  %.pr.pr.i = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.ce = icmp eq ptr %.pr.pr.i, null
  br i1 %i.ce, label %ipallocztm_explicit_slab.exit.thread.sink.split.i, label %tsd_tcache_data_init_impl.exit

ipallocztm_explicit_slab.exit.thread.sink.split.i: ; preds = %arena_choose.exit.i, %bb.m, %arena_get.exit42.i
  %.02750.sink.i = phi ptr [ %i.bq, %arena_get.exit42.i ], [ %.027.ph.ph.i, %arena_choose.exit.i ], [ %1, %bb.m ]
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
  %i.a = load i8, ptr %0, align 1, !tbaa !11, !range !12, !noundef !13
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
  store i8 %i.e, ptr %0, align 1, !tbaa !11
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !11, !range !12, !noundef !13
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(146) %2, i8 0, i64 146, i1 false)
  %i.c = load i8, ptr %0, align 8, !tbaa !11, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
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
  %i.j = load i8, ptr %0, align 8, !tbaa !11, !range !12, !noundef !13
  %i.k = trunc nuw i8 %i.j to i1
end_hunk_0
