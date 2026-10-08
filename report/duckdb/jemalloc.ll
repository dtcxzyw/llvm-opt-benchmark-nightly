Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/jemalloc?download=true
inline.NumInlined: 639
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@duckdb_je_free_default:bb.a

bb.w:                                             ; preds = %bb.v
  %i.dj = ptrtoint ptr %.val to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 18 ; 2 uses
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !122
  %i.dm = trunc i64 %i.dj to i16
  %i.dn = icmp eq i16 %i.dl, %i.dm
  br i1 %i.dn, label %cache_bin_dalloc_easy.exit12.i, label %cache_bin_dalloc_easy.exit12.i.thread, !prof !9

cache_bin_dalloc_easy.exit12.i.thread:            ; preds = %bb.w
  %i.do = getelementptr inbounds i8, ptr %.val, i64 -8 ; 2 uses
  store ptr %i.do, ptr %i.dg, align 8, !tbaa !90
  store ptr %0, ptr %i.do, align 8, !tbaa !91
  br label %arena_dalloc.exit

cache_bin_dalloc_easy.exit12.i:                   ; preds = %bb.w
  %.val63 = load i16, ptr %i.di, align 2, !tbaa !123
  %i.dp = zext i16 %.val63 to i32
  %i.dq = load i32, ptr @duckdb_je_opt_lg_tcache_flush_large_div, align 4, !tbaa !8
  %i.dr = lshr i32 %i.dp, %i.dq
  call void @duckdb_je_tcache_bin_flush_large(ptr noundef nonnull %i.e, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.dg, i32 noundef %.sroa.075.0.extract.trunc, i32 noundef %i.dr) #21
  %i.ds = load ptr, ptr %i.dg, align 8, !tbaa !90 ; 2 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = load i16, ptr %i.dk, align 2, !tbaa !122
  %i.dv = trunc i64 %i.dt to i16
  %i.dw = icmp eq i16 %i.du, %i.dv
  br i1 %i.dw, label %arena_dalloc.exit, label %bb.x, !prof !9

bb.x:                                             ; preds = %cache_bin_dalloc_easy.exit12.i
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  store ptr %i.dx, ptr %i.dg, align 8, !tbaa !90
  store ptr %0, ptr %i.dx, align 8, !tbaa !91
  br label %arena_dalloc.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bz, i64 noundef %i.by)
  %i.dy = load ptr, ptr %3, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @duckdb_je_large_dalloc(ptr noundef nonnull %i.e, ptr noundef %i.dy) #21
  br label %arena_dalloc.exit

arena_dalloc.exit:                                ; preds = %bb.t, %bb.s, %cache_bin_dalloc_easy.exit28.thread, %bb.r, %cache_bin_dalloc_easy.exit12.i.thread, %bb.x, %cache_bin_dalloc_easy.exit12.i, %tsdn_rtree_ctx.exit, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 0, ptr %2, align 8, !tbaa !110
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 848 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !111
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !112
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !113
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 856
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !114
  %i.eh = load i64, ptr %i.dz, align 8, !tbaa !24 ; 2 uses
  %i.ei = add i64 %i.eh, %i.cd
  store i64 %i.ei, ptr %i.dz, align 8, !tbaa !24
  %i.ej = load i64, ptr %i.ed, align 8, !tbaa !24
  %i.ek = sub i64 %i.ej, %i.eh
  %i.el = icmp ult i64 %i.cd, %i.ek
  br i1 %i.el, label %te_event_advance.exit, label %bb.y, !prof !11

bb.y:                                             ; preds = %arena_dalloc.exit
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #21
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %arena_dalloc.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.z

bb.z:                                             ; preds = %te_event_advance.exit48, %te_event_advance.exit, %bb.a
  ret void
}

declare void @duckdb_je_hook_invoke_dalloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @duckdb_je_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !126
  %.not.i.i.not = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not, label %emap_alloc_ctx_try_lookup_fast.exit, label %emap_alloc_ctx_try_lookup_fast.exit.thread, !prof !11

emap_alloc_ctx_try_lookup_fast.exit:              ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127
  %i.k = lshr i64 %i.c, 12
  %i.l = and i64 %i.k, 262143
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !149
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.b, label %emap_alloc_ctx_try_lookup_fast.exit.thread, !prof !150

bb.b:                                             ; preds = %emap_alloc_ctx_try_lookup_fast.exit
  %i.q = lshr i64 %i.o, 48                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 848 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 856
  %i.u = load i64, ptr %i.t, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.q
  %i.w = load i64, ptr %i.v, align 8, !tbaa !24
  %i.x = add i64 %i.w, %i.s                       ; 2 uses
  %.not27.i = icmp ult i64 %i.x, %i.u
  br i1 %.not27.i, label %bb.c, label %emap_alloc_ctx_try_lookup_fast.exit.thread, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 872
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.q ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !90  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !122
  %i.ae = trunc i64 %i.ab to i16
  %i.af = icmp eq i16 %i.ad, %i.ae
  br i1 %i.af, label %emap_alloc_ctx_try_lookup_fast.exit.thread, label %free_fastpath.exit, !prof !9

free_fastpath.exit:                               ; preds = %bb.c
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !90
  store ptr %0, ptr %i.ag, align 8, !tbaa !91
  store i64 %i.x, ptr %i.r, align 8, !tbaa !24
  br label %je_free_impl.exit

emap_alloc_ctx_try_lookup_fast.exit.thread:       ; preds = %bb.a, %emap_alloc_ctx_try_lookup_fast.exit, %bb.b, %bb.c
  tail call void @duckdb_je_free_default(ptr noundef %0)
  br label %je_free_impl.exit

je_free_impl.exit:                                ; preds = %free_fastpath.exit, %emap_alloc_ctx_try_lookup_fast.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_je_free_sized(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.b = icmp ugt i64 %1, 4096
  br i1 %i.b, label %bb.d, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i64 %1, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 848 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 856
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  %i.k = zext i8 %i.f to i64                      ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24
  %i.n = add i64 %i.m, %i.h                       ; 2 uses
  %.not27.i = icmp ult i64 %i.n, %i.j
  br i1 %.not27.i, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 872
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  %i.t = load i16, ptr %i.s, align 2, !tbaa !122
  %i.u = trunc i64 %i.r to i16
  %i.v = icmp eq i16 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %free_fastpath.exit, !prof !9

free_fastpath.exit:                               ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  store ptr %i.w, ptr %i.p, align 8, !tbaa !90
  store ptr %0, ptr %i.w, align 8, !tbaa !91
  store i64 %i.n, ptr %i.g, align 8, !tbaa !24
  br label %duckdb_je_je_sdallocx_noflags.exit

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  tail call void @duckdb_je_sdallocx_default(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  br label %duckdb_je_je_sdallocx_noflags.exit

duckdb_je_je_sdallocx_noflags.exit:               ; preds = %free_fastpath.exit, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_je_free_aligned_sized(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %1, 2147483647
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not5 = icmp eq i64 %1, 0
  br i1 %.not5, label %.split.i.i, label %bb.d, !prof !151

bb.c:                                             ; preds = %bb.a
  %i.b = lshr i64 %1, 32                          ; 2 uses
  %i.c = trunc nuw i64 %i.b to i32
  %cttz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.c, i1 true)
  %.not = icmp eq i64 %i.b, 0
  %i.d = or disjoint i32 %cttz, 32
  %i.e = select i1 %.not, i32 31, i32 %i.d, !prof !151
  br label %.split.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = trunc nuw nsw i64 %1 to i32
  %cttz4 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.f, i1 true) ; 2 uses
  %.not.i.i = icmp eq i32 %cttz4, 0
  br i1 %.not.i.i, label %bb.e, label %.split.i.i

.split.i.i:                                       ; preds = %bb.b, %bb.c, %bb.d
  %i.g = phi i32 [ %cttz4, %bb.d ], [ %i.e, %bb.c ], [ -1, %bb.b ]
  tail call void @duckdb_je_sdallocx_default(ptr noundef %0, i64 noundef %2, i32 noundef %i.g)
  br label %duckdb_je_sdallocx.exit

bb.e:                                             ; preds = %bb.d
  %i.h = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.i = icmp ugt i64 %2, 4096
  br i1 %i.i, label %.split5.i.i, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw nsw i64 %2, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 848 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 856
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  %i.r = zext i8 %i.m to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24
  %i.u = add i64 %i.t, %i.o                       ; 2 uses
  %.not27.i.i = icmp ult i64 %i.u, %i.q
  br i1 %.not27.i.i, label %bb.g, label %.split5.i.i, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 872
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.r ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !90   ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 18
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !122
  %i.ab = trunc i64 %i.y to i16
  %i.ac = icmp eq i16 %i.aa, %i.ab
  br i1 %i.ac, label %.split5.i.i, label %free_fastpath.exit.i, !prof !9

free_fastpath.exit.i:                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 -8 ; 2 uses
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !90
  store ptr %0, ptr %i.ad, align 8, !tbaa !91
  store i64 %i.u, ptr %i.n, align 8, !tbaa !24
  br label %duckdb_je_sdallocx.exit

.split5.i.i:                                      ; preds = %bb.g, %bb.f, %bb.e
  tail call void @duckdb_je_sdallocx_default(ptr noundef %0, i64 noundef %2, i32 noundef 0)
  br label %duckdb_je_sdallocx.exit

duckdb_je_sdallocx.exit:                          ; preds = %.split.i.i, %free_fastpath.exit.i, %.split5.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_sdallocx(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %bb.b, label %.split.i

.split.i:                                         ; preds = %bb.a
  tail call void @duckdb_je_sdallocx_default(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br label %je_sdallocx_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.b = icmp ugt i64 %1, 4096
  br i1 %i.b, label %.split5.i, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw nsw i64 %1, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 848 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 856
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  %i.k = zext i8 %i.f to i64                      ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24
  %i.n = add i64 %i.m, %i.h                       ; 2 uses
  %.not27.i = icmp ult i64 %i.n, %i.j
  br i1 %.not27.i, label %bb.d, label %.split5.i, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 872
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  %i.t = load i16, ptr %i.s, align 2, !tbaa !122
  %i.u = trunc i64 %i.r to i16
  %i.v = icmp eq i16 %i.t, %i.u
  br i1 %i.v, label %.split5.i, label %free_fastpath.exit, !prof !9

free_fastpath.exit:                               ; preds = %bb.d
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  store ptr %i.w, ptr %i.p, align 8, !tbaa !90
  store ptr %0, ptr %i.w, align 8, !tbaa !91
  store i64 %i.n, ptr %i.g, align 8, !tbaa !24
  br label %je_sdallocx_impl.exit

.split5.i:                                        ; preds = %bb.b, %bb.c, %bb.d
  tail call void @duckdb_je_sdallocx_default(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  br label %je_sdallocx_impl.exit

je_sdallocx_impl.exit:                            ; preds = %free_fastpath.exit, %.split.i, %.split5.i
  ret void
}

; Function Attrs: nounwind uwtable
define noalias ptr @duckdb_je_valloc(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca [3 x i64], align 16               ; 5 uses
  %i.b = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 824
  %i.d = load i8, ptr %i.c, align 8, !tbaa !12
  %.not.i75 = icmp eq i8 %i.d, 0
  br i1 %.not.i75, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !11

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.e = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false) #21 ; 12 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 824
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !12
  %i.f = icmp eq i8 %.pre, 0
  br i1 %i.f, label %tsd_fetch_impl.exit.thread, label %bb.j, !prof !83

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i76254 = phi ptr [ %i.e, %tsd_fetch_impl.exit ], [ %i.b, %bb.a ] ; 7 uses
  %i.g = icmp ult i64 %0, 14337
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.h = add nuw nsw i64 %0, 4095
  %i.i = and i64 %i.h, 28672                      ; 4 uses
  %i.j = icmp samesign ult i64 %i.i, 4097
  br i1 %i.j, label %bb.c, label %sz_s2u_compute.exit.i99, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.k = lshr exact i64 %i.i, 3
  %i.l = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24
  br label %sz_s2u.exit25.i101

sz_s2u_compute.exit.i99:                          ; preds = %bb.b
  %i.q = shl nuw nsw i64 %i.i, 1
  %i.r = add nsw i64 %i.q, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.r, i1 true) ; 2 uses
  %notmask.i.i98 = ashr exact i64 -1152921504606846976, %i.s
  %i.t = lshr i64 1152921504606846975, %i.s
  %i.u = add nuw nsw i64 %i.i, %i.t
  %i.v = and i64 %i.u, %notmask.i.i98
  br label %sz_s2u.exit25.i101

sz_s2u.exit25.i101:                               ; preds = %sz_s2u_compute.exit.i99, %bb.c
  %.0.i24.i102 = phi i64 [ %i.p, %bb.c ], [ %i.v, %sz_s2u_compute.exit.i99 ] ; 2 uses
  %i.w = icmp ult i64 %.0.i24.i102, 16384
  br i1 %i.w, label %aligned_usize_get.exit.i, label %.thread

bb.d:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.x = icmp ult i64 %0, 16385
  br i1 %i.x, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.y, label %sz_s2u_compute.exit29.i91, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.z = shl nuw i64 %0, 1
  %i.aa = add i64 %i.z, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.aa, i1 true) ; 2 uses
  %notmask.i27.i90 = ashr exact i64 -1152921504606846976, %i.ab
  %i.ac = lshr i64 1152921504606846975, %i.ab
  %i.ad = add nuw nsw i64 %0, %i.ac
  %i.ae = and i64 %i.ad, %notmask.i27.i90
  br label %sz_s2u_compute.exit29.i91

sz_s2u_compute.exit29.i91:                        ; preds = %bb.f, %bb.e
  %.0.i28.i92 = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.af = icmp ult i64 %.0.i28.i92, %0
  br i1 %i.af, label %imalloc.exit, label %.thread

.thread:                                          ; preds = %sz_s2u.exit25.i101, %sz_s2u_compute.exit29.i91, %bb.d
  %.0.i95 = phi i64 [ %.0.i28.i92, %sz_s2u_compute.exit29.i91 ], [ 16384, %bb.d ], [ 16384, %sz_s2u.exit25.i101 ] ; 2 uses
  %i.ag = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !24
  %i.ah = xor i64 %.0.i95, -1
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  %..0.i96 = select i1 %i.ai, i64 0, i64 %.0.i95
end_hunk_0
begin_hunk_1_@duckdb_je_mallocx:bb.a
bb.w:                                             ; preds = %arena_get.exit
  %i.cv = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !8
  %.not.i.i77 = icmp ult i32 %.sroa.60.0, %i.cv
  br i1 %.not.i.i77, label %arena_get.exit.thread, label %imalloc.exit

arena_get.exit.thread:                            ; preds = %bb.w, %bb.v, %tcache_get_from_ind.exit.i41, %arena_get.exit
  %.1.ph = phi ptr [ %i.cr, %bb.v ], [ %i.ct, %arena_get.exit ], [ null, %tcache_get_from_ind.exit.i41 ], [ null, %bb.w ] ; 4 uses
  br i1 %i.v, label %iallocztm_explicit_slab.exit.i47, label %ipallocztm_explicit_slab.exit83, !prof !11

ipallocztm_explicit_slab.exit83:                  ; preds = %arena_get.exit.thread
  %i.cw = tail call ptr @duckdb_je_arena_palloc(ptr noundef nonnull %.0.i85329, ptr noundef %.1.ph, i64 noundef %.0214236, i64 noundef %.sroa.32.0, i1 noundef zeroext %i.u, i1 noundef zeroext %i.ch, ptr noundef %.0.i.i42) #21
  br label %imalloc_no_sample.exit78

iallocztm_explicit_slab.exit.i47:                 ; preds = %arena_get.exit.thread
  %.not.i22.i48 = icmp eq ptr %.0.i.i42, null
  br i1 %.not.i22.i48, label %.critedge.i.i49, label %bb.x, !prof !9

bb.x:                                             ; preds = %iallocztm_explicit_slab.exit.i47
  br i1 %i.ch, label %bb.y, label %bb.ah, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 8
  %i.cy = zext nneg i32 %.0215235 to i64          ; 2 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.cy ; 9 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !90 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !91 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.df = load i16, ptr %i.de, align 8, !tbaa !92 ; 2 uses
  %i.dg = trunc i64 %i.dc to i16
  %.not.i26.i64 = icmp eq i16 %i.df, %i.dg
  br i1 %.not.i26.i64, label %bb.aa, label %bb.z, !prof !9

bb.z:                                             ; preds = %bb.y
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !90
  br label %cache_bin_alloc_impl.exit.i65.thread

bb.aa:                                            ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.di = load i16, ptr %i.dh, align 4, !tbaa !93
  %.not21.i.i74 = icmp eq i16 %i.di, %i.df
  br i1 %.not21.i.i74, label %cache_bin_alloc_impl.exit.i65, label %bb.ab, !prof !9

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !90
  %i.dj = ptrtoint ptr %i.dd to i64
  %i.dk = trunc i64 %i.dj to i16
  store i16 %i.dk, ptr %i.de, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i65.thread

cache_bin_alloc_impl.exit.i65:                    ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.dl = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i85329, ptr noundef %.1.ph) ; 3 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.thread247, label %bb.ac, !prof !9

bb.ac:                                            ; preds = %cache_bin_alloc_impl.exit.i65
  %.val = load ptr, ptr %i.cz, align 8, !tbaa !90
  %i.dn = icmp eq ptr %.val, @duckdb_je_disabled_bin
  br i1 %i.dn, label %bb.ad, label %bb.ae, !prof !9

bb.ad:                                            ; preds = %bb.ac
  %i.do = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %.0.i85329, ptr noundef nonnull %i.dl, i64 noundef %0, i32 noundef %.0215235, i1 noundef zeroext %i.u, i1 noundef zeroext true) #21
  br label %.thread247

.thread247:                                       ; preds = %cache_bin_alloc_impl.exit.i65, %bb.ad
  %.0.i24.i70.ph = phi ptr [ %i.do, %bb.ad ], [ null, %cache_bin_alloc_impl.exit.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %imalloc_no_sample.exit78

bb.ae:                                            ; preds = %bb.ac
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i85329, ptr noundef nonnull %.0.i.i42, ptr noundef nonnull %i.cz, i32 noundef %.0215235, i1 noundef zeroext true) #21
  %i.dp = call ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i85329, ptr noundef nonnull %i.dl, ptr noundef nonnull %.0.i.i42, ptr noundef nonnull %i.cz, i32 noundef %.0215235, ptr noundef nonnull %i.a) #21
  %i.dq = load i8, ptr %i.a, align 1, !tbaa !94, !range !95, !noundef !96
  %.not307 = icmp eq i8 %i.dq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not307, label %imalloc.exit, label %cache_bin_alloc_impl.exit.i65.thread

cache_bin_alloc_impl.exit.i65.thread:             ; preds = %bb.ab, %bb.z, %bb.ae
  %.132.i.i73 = phi ptr [ %i.dp, %bb.ae ], [ %i.db, %bb.z ], [ %i.db, %bb.ab ] ; 2 uses
  br i1 %i.u, label %bb.af, label %bb.ag, !prof !9

bb.af:                                            ; preds = %cache_bin_alloc_impl.exit.i65.thread
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.cy
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i73, i8 0, i64 %i.ds, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %cache_bin_alloc_impl.exit.i65.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !97
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !97
  br label %imalloc_no_sample.exit78

bb.ah:                                            ; preds = %bb.x
  %i.dw = load ptr, ptr %.0.i.i42, align 8, !tbaa !99
  %i.dx = getelementptr i8, ptr %i.dw, i64 48
  %.val119 = load i32, ptr %i.dx, align 8, !tbaa !106
  %i.dy = icmp ult i32 %.0215235, %.val119
  br i1 %i.dy, label %bb.ai, label %.critedge.i.i49, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 8
  %i.ea = zext nneg i32 %.0215235 to i64          ; 2 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.ea ; 7 uses
  %.val114 = load ptr, ptr %i.eb, align 8, !tbaa !90 ; 4 uses
  %.not306 = icmp eq ptr %.val114, @duckdb_je_disabled_bin
  br i1 %.not306, label %.critedge.i.i49, label %bb.aj, !prof !9

bb.aj:                                            ; preds = %bb.ai
  %i.ec = load ptr, ptr %.val114, align 8, !tbaa !91 ; 2 uses
  %i.ed = ptrtoint ptr %.val114 to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %.val114, i64 8 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 8, !tbaa !92 ; 2 uses
  %i.eh = trunc i64 %i.ed to i16
  %.not.i28.i53 = icmp eq i16 %i.eg, %i.eh
  br i1 %.not.i28.i53, label %bb.al, label %bb.ak, !prof !9

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !90
  br label %bb.ar

bb.al:                                            ; preds = %bb.aj
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %i.ej = load i16, ptr %i.ei, align 4, !tbaa !93
  %.not21.i30.i63 = icmp eq i16 %i.ej, %i.eg
  br i1 %.not21.i30.i63, label %cache_bin_alloc_impl.exit31.i54, label %bb.am, !prof !9

bb.am:                                            ; preds = %bb.al
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !90
  %i.ek = ptrtoint ptr %i.ee to i64
  %i.el = trunc i64 %i.ek to i16
  store i16 %i.el, ptr %i.ef, align 8, !tbaa !92
  br label %bb.ar

cache_bin_alloc_impl.exit31.i54:                  ; preds = %bb.al
  %i.em = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i85329, ptr noundef %.1.ph) ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %imalloc.exit, label %bb.an, !prof !9

bb.an:                                            ; preds = %cache_bin_alloc_impl.exit31.i54
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i85329, ptr noundef nonnull %.0.i.i42, ptr noundef nonnull %i.eb, i32 noundef %.0215235, i1 noundef zeroext false) #21
  %i.eo = icmp samesign ult i64 %0, 4097
  br i1 %i.eo, label %bb.ao, label %bb.ap, !prof !11

bb.ao:                                            ; preds = %bb.an
  %i.ep = add nuw nsw i64 %0, 7
  %i.eq = lshr i64 %i.ep, 3
  %i.er = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !12
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !24
  br label %sz_s2u.exit.i59

bb.ap:                                            ; preds = %bb.an
  %i.ew = icmp samesign ugt i64 %0, 8070450532247928832
  br i1 %i.ew, label %sz_s2u.exit.i59, label %bb.aq, !prof !9

bb.aq:                                            ; preds = %bb.ap
  %i.ex = shl nuw i64 %0, 1
  %i.ey = add i64 %i.ex, -1
  %i.ez = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ey, i1 true) ; 2 uses
  %notmask.i.i56 = ashr exact i64 -1152921504606846976, %i.ez
  %i.fa = lshr i64 1152921504606846975, %i.ez
  %i.fb = add nuw nsw i64 %0, %i.fa
  %i.fc = and i64 %i.fb, %notmask.i.i56
  br label %sz_s2u.exit.i59

sz_s2u.exit.i59:                                  ; preds = %bb.ap, %bb.aq, %bb.ao
  %.0.i32.i60 = phi i64 [ %i.ev, %bb.ao ], [ %i.fc, %bb.aq ], [ 0, %bb.ap ]
  %i.fd = tail call ptr @duckdb_je_large_malloc(ptr noundef nonnull %.0.i85329, ptr noundef nonnull %i.em, i64 noundef %.0.i32.i60, i1 noundef zeroext %i.u) #21
  br label %imalloc_no_sample.exit78

bb.ar:                                            ; preds = %bb.ak, %bb.am
  br i1 %i.u, label %bb.as, label %bb.at, !prof !9

bb.as:                                            ; preds = %bb.ar
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ea
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ec, i8 0, i64 %i.ff, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !97
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !97
  br label %imalloc_no_sample.exit78

.critedge.i.i49:                                  ; preds = %bb.ai, %bb.ah, %iallocztm_explicit_slab.exit.i47
  %i.fj = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %.0.i85329, ptr noundef %.1.ph, i64 noundef %0, i32 noundef %.0215235, i1 noundef zeroext %i.u, i1 noundef zeroext %i.ch) #21
  br label %imalloc_no_sample.exit78

imalloc_no_sample.exit78:                         ; preds = %.critedge.i.i49, %.thread247, %bb.ag, %bb.at, %sz_s2u.exit.i59, %ipallocztm_explicit_slab.exit83
  %.0.i46 = phi ptr [ %i.fd, %sz_s2u.exit.i59 ], [ %i.cw, %ipallocztm_explicit_slab.exit83 ], [ %i.fj, %.critedge.i.i49 ], [ %.0.i24.i70.ph, %.thread247 ], [ %.132.i.i73, %bb.ag ], [ %i.ec, %bb.at ] ; 2 uses
  %i.fk = icmp eq ptr %.0.i46, null
  br i1 %i.fk, label %imalloc.exit, label %bb.au, !prof !152

bb.au:                                            ; preds = %imalloc_no_sample.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 1, ptr %2, align 8, !tbaa !110
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i85329, i64 832 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !111
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i85329, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !112
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i85329, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !113
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i85329, i64 840
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !114
  %i.ft = load i64, ptr %i.fl, align 8, !tbaa !24 ; 2 uses
  %i.fu = add i64 %i.ft, %.0214236
  store i64 %i.fu, ptr %i.fl, align 8, !tbaa !24
  %i.fv = load i64, ptr %i.fp, align 8, !tbaa !24
  %i.fw = sub i64 %i.fv, %i.ft
  %i.fx = icmp ult i64 %.0214236, %i.fw
  br i1 %i.fx, label %bb.aw, label %bb.av, !prof !11

bb.av:                                            ; preds = %bb.au
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i85329, ptr noundef nonnull %2) #21
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %imalloc.exit

bb.ax:                                            ; preds = %tsd_fetch_impl.exit
  %i.fy = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !8
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %compute_size_with_overflow.exit, label %bb.ay, !prof !11

bb.ay:                                            ; preds = %bb.ax
  %i.ga = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.ga, label %imalloc_init_check.exit, label %compute_size_with_overflow.exit, !prof !115

imalloc_init_check.exit:                          ; preds = %bb.ay
  %i.gb = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.gb, align 4, !tbaa !8
  br label %imalloc.exit

compute_size_with_overflow.exit:                  ; preds = %bb.ax, %bb.ay
  %i.gc = load i8, ptr @duckdb_je_opt_zero, align 1, !range !95
  %i.gd = or i8 %i.gc, %.sroa.42.0
  %.0.i.i18 = icmp ne i8 %i.gd, 0                 ; 7 uses
  %i.ge = icmp eq i64 %.sroa.32.0, 0              ; 2 uses
  br i1 %i.ge, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %compute_size_with_overflow.exit
  %i.gf = icmp ult i64 %0, 4097
  br i1 %i.gf, label %bb.ba, label %bb.bb, !prof !11

bb.ba:                                            ; preds = %bb.az
  %i.gg = add nuw nsw i64 %0, 7
  %i.gh = lshr i64 %i.gg, 3
  %i.gi = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !12
  %i.gk = zext i8 %i.gj to i32
  br label %sz_size2index.exit.i28

bb.bb:                                            ; preds = %bb.az
  %i.gl = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.gl, label %aligned_usize_get.exit.i22.thread, label %bb.bc, !prof !9

bb.bc:                                            ; preds = %bb.bb
  %i.gm = shl nuw i64 %0, 1
  %i.gn = add i64 %i.gm, -1
  %i.go = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gn, i1 true) ; 3 uses
  %i.gp = trunc nuw nsw i64 %i.go to i32
  %i.gq = sub nuw nsw i64 60, %i.go
  %i.gr = ashr exact i64 -1152921504606846976, %i.go
  %i.gs = add nsw i64 %0, -1
  %i.gt = and i64 %i.gr, %i.gs
  %i.gu = lshr i64 %i.gt, %i.gq
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = and i32 %i.gv, 3
  %i.gx = shl nuw nsw i32 %i.gp, 2
  %reass.sub = sub nsw i32 %i.gw, %i.gx
  %i.gy = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i28

sz_size2index.exit.i28:                           ; preds = %bb.bc, %bb.ba
  %.0.i50.i29 = phi i32 [ %i.gk, %bb.ba ], [ %i.gy, %bb.bc ] ; 3 uses
  %i.gz = icmp samesign ugt i32 %.0.i50.i29, 231
  br i1 %i.gz, label %aligned_usize_get.exit.i22.thread, label %aligned_usize_get.exit.i22.thread263, !prof !84

aligned_usize_get.exit.i22.thread263:             ; preds = %sz_size2index.exit.i28
  %i.ha = zext nneg i32 %.0.i50.i29 to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !24
  br label %bb.bk

bb.bd:                                            ; preds = %compute_size_with_overflow.exit
  %i.hd = icmp ult i64 %0, 14337
  %i.he = icmp ult i64 %.sroa.32.0, 4097
  %or.cond.i91 = and i1 %i.hd, %i.he
  br i1 %or.cond.i91, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.hf = add nsw i64 %0, -1
  %i.hg = add nsw i64 %i.hf, %.sroa.32.0
  %i.hh = sub nsw i64 0, %.sroa.32.0
  %i.hi = and i64 %i.hg, %i.hh                    ; 4 uses
  %i.hj = icmp samesign ult i64 %i.hi, 4097
  br i1 %i.hj, label %bb.bf, label %sz_s2u_compute.exit.i96, !prof !11

bb.bf:                                            ; preds = %bb.be
  %i.hk = add nuw nsw i64 %i.hi, 6
  %i.hl = lshr i64 %i.hk, 3
  %i.hm = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !12
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ho
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !24
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i96:                          ; preds = %bb.be
  %i.hr = shl nuw nsw i64 %i.hi, 1
  %i.hs = add nsw i64 %i.hr, -1
  %i.ht = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.hs, i1 true) ; 2 uses
  %notmask.i.i95 = ashr exact i64 -1152921504606846976, %i.ht
  %i.hu = lshr i64 1152921504606846975, %i.ht
  %i.hv = add nuw nsw i64 %i.hi, %i.hu
  %i.hw = and i64 %i.hv, %notmask.i.i95
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i96, %bb.bf
  %.0.i24.i97 = phi i64 [ %i.hq, %bb.bf ], [ %i.hw, %sz_s2u_compute.exit.i96 ] ; 2 uses
  %i.hx = icmp ult i64 %.0.i24.i97, 16384
  br i1 %i.hx, label %aligned_usize_get.exit.i22, label %.thread259

bb.bg:                                            ; preds = %bb.bd
  %i.hy = icmp ugt i64 %.sroa.32.0, 8070450532247928832
  br i1 %i.hy, label %aligned_usize_get.exit.i22.thread, label %bb.bh, !prof !119

bb.bh:                                            ; preds = %bb.bg
  %i.hz = icmp ult i64 %0, 16385
  br i1 %i.hz, label %.thread259, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ia = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ia, label %sz_s2u_compute.exit29.i, label %bb.bj, !prof !9

bb.bj:                                            ; preds = %bb.bi
  %i.ib = shl nuw i64 %0, 1
  %i.ic = add i64 %i.ib, -1
  %i.id = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ic, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.id
  %i.ie = lshr i64 1152921504606846975, %i.id
  %i.if = add nuw nsw i64 %0, %i.ie
  %i.ig = and i64 %i.if, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.bj, %bb.bi
  %.0.i28.i = phi i64 [ %i.ig, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  %i.ih = icmp ult i64 %.0.i28.i, %0
  br i1 %i.ih, label %aligned_usize_get.exit.i22.thread, label %.thread259

.thread259:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.bh
  %.0.i94 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.bh ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.ii = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !24
  %i.ij = add nuw nsw i64 %.sroa.32.0, 4094
  %i.ik = and i64 %i.ij, 9223372036854771712
  %i.il = add nsw i64 %i.ik, -4096
  %i.im = add i64 %i.il, %.0.i94
  %i.in = add i64 %i.im, %i.ii
  %i.io = icmp ult i64 %i.in, %.0.i94
  %..0.i = select i1 %i.io, i64 0, i64 %.0.i94
  br label %aligned_usize_get.exit.i22

aligned_usize_get.exit.i22:                       ; preds = %.thread259, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread259 ], [ %.0.i24.i97, %sz_s2u.exit25.i ] ; 2 uses
  %i.ip = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i21 = icmp ult i64 %i.ip, -8070450532247928832
  br i1 %spec.select.i.i21, label %aligned_usize_get.exit.i22.thread, label %bb.bk

bb.bk:                                            ; preds = %aligned_usize_get.exit.i22.thread263, %aligned_usize_get.exit.i22
  %.0217268 = phi i64 [ %i.hc, %aligned_usize_get.exit.i22.thread263 ], [ %.018.i, %aligned_usize_get.exit.i22 ] ; 5 uses
  %.0218267 = phi i32 [ %.0.i50.i29, %aligned_usize_get.exit.i22.thread263 ], [ 0, %aligned_usize_get.exit.i22 ] ; 8 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !12
  %i.is = icmp sgt i8 %i.ir, 0
  %i.it = icmp ult i64 %.0217268, 14337           ; 3 uses
  br i1 %i.is, label %tcache_get_from_ind.exit.i.thread, label %bb.bl, !prof !117

bb.bl:                                            ; preds = %bb.bk
  switch i32 %.sroa.54166.0, label %bb.bn [
    i32 -2, label %bb.bm
    i32 -1, label %tcache_get_from_ind.exit.i
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.iu = load i8, ptr %i.s, align 8, !tbaa !94, !range !95, !noundef !96
  %i.iv = trunc nuw i8 %i.iu to i1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.s, i64 864
end_hunk_1
begin_hunk_2_@duckdb_je_mallocx:bb.a
  %i.lq = and i64 %i.lp, %notmask.i.i
  br label %sz_s2u.exit.i

sz_s2u.exit.i:                                    ; preds = %bb.cj, %bb.ck, %bb.ci
  %.0.i32.i = phi i64 [ %i.lj, %bb.ci ], [ %i.lq, %bb.ck ], [ 0, %bb.cj ]
  %i.lr = tail call ptr @duckdb_je_large_malloc(ptr noundef nonnull %i.s, ptr noundef nonnull %i.la, i64 noundef %.0.i32.i, i1 noundef zeroext %.0.i.i18) #21
  br label %imalloc_no_sample.exit

bb.cl:                                            ; preds = %bb.ce, %bb.cg
  br i1 %.0.i.i18, label %bb.cm, label %bb.cn, !prof !9

bb.cm:                                            ; preds = %bb.cl
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ko
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.kq, i8 0, i64 %i.lt, i1 false)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !97
  %i.lw = add i64 %i.lv, 1
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !97
  br label %imalloc_no_sample.exit

.critedge.i.i:                                    ; preds = %bb.cc, %bb.cb, %iallocztm_explicit_slab.exit.i
  %i.lx = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %i.s, ptr noundef %.1221.ph, i64 noundef %0, i32 noundef %.0218267, i1 noundef zeroext %.0.i.i18, i1 noundef zeroext %i.it) #21
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %.critedge.i.i, %.thread292, %bb.ca, %bb.cn, %sz_s2u.exit.i, %ipallocztm_explicit_slab.exit
  %.0.i40 = phi ptr [ %i.lr, %sz_s2u.exit.i ], [ %i.jk, %ipallocztm_explicit_slab.exit ], [ %i.lx, %.critedge.i.i ], [ %.0.i24.i.ph, %.thread292 ], [ %.132.i.i, %bb.ca ], [ %i.kq, %bb.cn ] ; 4 uses
  %i.ly = icmp eq ptr %.0.i40, null
  br i1 %i.ly, label %aligned_usize_get.exit.i22.thread, label %bb.co, !prof !118

bb.co:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i8 1, ptr %3, align 8, !tbaa !110
  %i.lz = getelementptr inbounds nuw i8, ptr %i.s, i64 832 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.lz, ptr %i.ma, align 8, !tbaa !111
  %i.mb = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !112
  %i.md = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.md, ptr %i.me, align 8, !tbaa !113
  %i.mf = getelementptr inbounds nuw i8, ptr %i.s, i64 840
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !114
  %i.mh = load i64, ptr %i.lz, align 8, !tbaa !24 ; 2 uses
  %i.mi = add i64 %i.mh, %.0217268
  store i64 %i.mi, ptr %i.lz, align 8, !tbaa !24
  %i.mj = load i64, ptr %i.md, align 8, !tbaa !24
  %i.mk = sub i64 %i.mj, %i.mh
  %i.ml = icmp ult i64 %.0217268, %i.mk
  br i1 %i.ml, label %bb.cq, label %bb.cp, !prof !11

bb.cp:                                            ; preds = %bb.co
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %i.s, ptr noundef nonnull %3) #21
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not.i26 = xor i1 %.0.i.i18, true
  %i.mm = load i8, ptr @duckdb_je_opt_junk_alloc, align 1, !range !95
  %i.mn = trunc nuw i8 %i.mm to i1
  %or.cond45.i27 = select i1 %.not.i26, i1 %i.mn, i1 false, !prof !117
  br i1 %or.cond45.i27, label %bb.cr, label %aligned_usize_get.exit.i22.thread, !prof !117

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i40, i8 -91, i64 %.0217268, i1 false)
  br label %aligned_usize_get.exit.i22.thread

aligned_usize_get.exit.i22.thread:                ; preds = %cache_bin_alloc_impl.exit31.i, %bb.by, %bb.bq, %sz_s2u_compute.exit29.i, %bb.bg, %bb.bb, %sz_size2index.exit.i28, %aligned_usize_get.exit.i22, %imalloc_no_sample.exit, %bb.cq, %bb.cr
  %.0224.ph = phi ptr [ null, %cache_bin_alloc_impl.exit31.i ], [ %.0.i40, %bb.cr ], [ null, %bb.bb ], [ null, %sz_s2u_compute.exit29.i ], [ null, %aligned_usize_get.exit.i22 ], [ null, %imalloc_no_sample.exit ], [ %.0.i40, %bb.cq ], [ null, %sz_size2index.exit.i28 ], [ null, %bb.bg ], [ null, %bb.bq ], [ null, %bb.by ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 %0, ptr %i.c, align 16, !tbaa !24
  %i.mo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.mp = sext i32 %1 to i64
  store i64 %i.mp, ptr %i.mo, align 8, !tbaa !24
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !24
  %i.mq = ptrtoint ptr %.0224.ph to i64
  call void @duckdb_je_hook_invoke_alloc(i32 noundef 7, ptr noundef %.0224.ph, i64 noundef %i.mq, ptr noundef nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %cache_bin_alloc_impl.exit31.i54, %bb.ae, %bb.w, %sz_s2u_compute.exit29.i100, %bb.m, %bb.h, %sz_size2index.exit.i, %aligned_usize_get.exit.i, %imalloc_no_sample.exit78, %bb.aw, %imalloc_init_check.exit, %aligned_usize_get.exit.i22.thread
  %.0224303 = phi ptr [ %.0224.ph, %aligned_usize_get.exit.i22.thread ], [ null, %imalloc_init_check.exit ], [ null, %cache_bin_alloc_impl.exit31.i54 ], [ null, %aligned_usize_get.exit.i ], [ %.0.i46, %bb.aw ], [ null, %imalloc_no_sample.exit78 ], [ null, %sz_s2u_compute.exit29.i100 ], [ null, %bb.h ], [ null, %sz_size2index.exit.i ], [ null, %bb.m ], [ null, %bb.w ], [ null, %bb.ae ]
  ret ptr %.0224303
}

; Function Attrs: nounwind allocsize(1) uwtable
define ptr @duckdb_je_rallocx(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @do_rallocx(ptr noundef %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @do_rallocx(ptr noundef %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %5 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %6 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %7 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %8 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %9 = alloca %struct.hook_ralloc_args_s, align 8 ; 9 uses
  %i.a = zext i1 %3 to i8
  %i.b = and i32 %2, 63
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %i.e = and i64 %i.d, -2                         ; 10 uses
  %i.f = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 824
  %i.h = load i8, ptr %i.g, align 8, !tbaa !12
  %.not.i51 = icmp eq i8 %i.h, 0
  br i1 %.not.i51, label %tsd_fetch_impl.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i52 = phi ptr [ %i.i, %bb.b ], [ %i.f, %bb.a ] ; 26 uses
  %i.j = and i32 %2, 64
  %i.k = icmp ne i32 %i.j, 0
  %i.l = load i8, ptr @duckdb_je_opt_zero, align 1, !range !95
  %i.m = trunc nuw i8 %i.l to i1
  %.0.i45 = or i1 %i.k, %i.m                      ; 3 uses
  %.not.i = icmp ult i32 %2, 1048576
  br i1 %.not.i, label %mallocx_arena_get.exit.thread, label %mallocx_arena_get.exit, !prof !11

mallocx_arena_get.exit:                           ; preds = %tsd_fetch_impl.exit
  %i.n = lshr i32 %2, 20
  %i.o = add nsw i32 %i.n, -1                     ; 3 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.p
  %i.r = load atomic ptr, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %arena_get.exit, label %mallocx_arena_get.exit.thread, !prof !9

arena_get.exit:                                   ; preds = %mallocx_arena_get.exit
  %i.t = tail call ptr @duckdb_je_arena_init(ptr noundef %.0.i52, i32 noundef %i.o, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !0 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.c, label %mallocx_arena_get.exit.thread, !prof !10

bb.c:                                             ; preds = %arena_get.exit
  %i.v = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !8
  %.not.i48 = icmp ult i32 %i.o, %i.v
  br i1 %.not.i48, label %mallocx_arena_get.exit.thread, label %arena_get_from_ind.exit

mallocx_arena_get.exit.thread:                    ; preds = %bb.c, %mallocx_arena_get.exit, %tsd_fetch_impl.exit, %arena_get.exit
  %.1.ph = phi ptr [ %i.r, %mallocx_arena_get.exit ], [ null, %tsd_fetch_impl.exit ], [ null, %bb.c ], [ %i.t, %arena_get.exit ] ; 2 uses
  %i.w = and i32 %2, 1048320                      ; 2 uses
  switch i32 %i.w, label %mallocx_tcache_get.exit [
    i32 0, label %mallocx_tcache_get.exit.thread
    i32 256, label %tcache_get_from_ind.exit
  ], !prof !128

mallocx_tcache_get.exit:                          ; preds = %mallocx_arena_get.exit.thread
  %i.x = lshr exact i32 %i.w, 8
  %i.y = add nsw i32 %i.x, -2                     ; 3 uses
  switch i32 %i.y, label %bb.d [
    i32 -2, label %mallocx_tcache_get.exit.thread
    i32 -1, label %tcache_get_from_ind.exit
  ]

mallocx_tcache_get.exit.thread:                   ; preds = %mallocx_arena_get.exit.thread, %mallocx_tcache_get.exit
  %i.z = load i8, ptr %.0.i52, align 1, !tbaa !94, !range !95, !noundef !96
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i52, i64 864
  %spec.select = select i1 %i.aa, ptr %i.ab, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  br label %bb.h

bb.d:                                             ; preds = %mallocx_tcache_get.exit
  %i.ac = load ptr, ptr @duckdb_je_tcaches, align 8, !tbaa !130
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.af to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !131

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.178, i32 noundef range(i32 0, -2) %i.y) #21
  tail call void @abort() #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ag = tail call ptr @duckdb_je_tcache_create_explicit(ptr noundef %.0.i52) #21 ; 2 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !12
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.f, %bb.d, %mallocx_arena_get.exit.thread, %mallocx_tcache_get.exit
  %.0.i = phi ptr [ null, %mallocx_tcache_get.exit ], [ null, %mallocx_arena_get.exit.thread ], [ %i.af, %bb.d ], [ %i.ag, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ah = icmp eq ptr %.0.i52, null
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !153

bb.g:                                             ; preds = %tcache_get_from_ind.exit
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %8) #21
  br label %tsdn_rtree_ctx.exit81

bb.h:                                             ; preds = %mallocx_tcache_get.exit.thread, %tcache_get_from_ind.exit
  %.0.i106 = phi ptr [ %spec.select, %mallocx_tcache_get.exit.thread ], [ %.0.i, %tcache_get_from_ind.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i52, i64 440
  br label %tsdn_rtree_ctx.exit81

tsdn_rtree_ctx.exit81:                            ; preds = %bb.g, %bb.h
  %i.aj = phi i1 [ true, %bb.g ], [ false, %bb.h ]
  %.0.i105 = phi ptr [ %.0.i, %bb.g ], [ %.0.i106, %bb.h ] ; 8 uses
  %.0.i80 = phi ptr [ %8, %bb.g ], [ %i.ai, %bb.h ]
  %i.ak = ptrtoint ptr %0 to i64                  ; 4 uses
  %i.al = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %.0.i52, ptr noundef nonnull %.0.i80, i64 noundef %i.ak)
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.al, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.am = and i64 %.fca.0.extract.i, 4294967295
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !24 ; 13 uses
  %i.ap = icmp eq i64 %i.e, 0                     ; 2 uses
  br i1 %i.ap, label %bb.i, label %bb.m

bb.i:                                             ; preds = %tsdn_rtree_ctx.exit81
  %i.aq = icmp ult i64 %1, 4097
  br i1 %i.aq, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ar = add nuw nsw i64 %1, 7
  %i.as = lshr i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !12
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !24
  br label %aligned_usize_get.exit

bb.k:                                             ; preds = %bb.i
  %i.ay = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.ay, label %arena_get_from_ind.exit, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  %i.az = shl nuw i64 %1, 1
  %i.ba = add i64 %i.az, -1
  %i.bb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ba, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.bb
  %i.bc = lshr i64 1152921504606846975, %i.bb
  %i.bd = add nuw nsw i64 %1, %i.bc
  %i.be = and i64 %i.bd, %notmask.i
  br label %aligned_usize_get.exit

bb.m:                                             ; preds = %tsdn_rtree_ctx.exit81
  %i.bf = icmp ult i64 %1, 14337
  %i.bg = icmp ult i64 %i.e, 4097
  %or.cond.i61 = and i1 %i.bf, %i.bg
  br i1 %or.cond.i61, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bh = add nsw i64 %i.e, -1
  %i.bi = add nuw nsw i64 %i.bh, %1
  %i.bj = sub nsw i64 0, %i.e
  %i.bk = and i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp samesign ult i64 %i.bk, 4097
  br i1 %i.bl, label %bb.o, label %sz_s2u_compute.exit.i70, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.bm = add nuw nsw i64 %i.bk, 6
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !12
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !24
  br label %sz_s2u.exit25.i72

sz_s2u_compute.exit.i70:                          ; preds = %bb.n
  %i.bt = shl nuw nsw i64 %i.bk, 1
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bu, i1 true) ; 2 uses
  %notmask.i.i69 = ashr exact i64 -1152921504606846976, %i.bv
  %i.bw = lshr i64 1152921504606846975, %i.bv
  %i.bx = add nuw nsw i64 %i.bk, %i.bw
  %i.by = and i64 %i.bx, %notmask.i.i69
  br label %sz_s2u.exit25.i72

sz_s2u.exit25.i72:                                ; preds = %sz_s2u_compute.exit.i70, %bb.o
  %.0.i24.i73 = phi i64 [ %i.bs, %bb.o ], [ %i.by, %sz_s2u_compute.exit.i70 ] ; 2 uses
  %i.bz = icmp ult i64 %.0.i24.i73, 16384
  br i1 %i.bz, label %aligned_usize_get.exit, label %.thread107

bb.p:                                             ; preds = %bb.m
  %i.ca = icmp ugt i64 %i.e, 8070450532247928832
  br i1 %i.ca, label %arena_get_from_ind.exit, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  %i.cb = icmp ult i64 %1, 16385
  br i1 %i.cb, label %.thread107, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.cc, label %sz_s2u_compute.exit29.i63, label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.cd = shl nuw i64 %1, 1
  %i.ce = add i64 %i.cd, -1
  %i.cf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ce, i1 true) ; 2 uses
  %notmask.i27.i62 = ashr exact i64 -1152921504606846976, %i.cf
  %i.cg = lshr i64 1152921504606846975, %i.cf
  %i.ch = add nuw nsw i64 %1, %i.cg
  %i.ci = and i64 %i.ch, %notmask.i27.i62
  br label %sz_s2u_compute.exit29.i63

sz_s2u_compute.exit29.i63:                        ; preds = %bb.s, %bb.r
  %.0.i28.i64 = phi i64 [ %i.ci, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.cj = icmp ult i64 %.0.i28.i64, %1
  br i1 %i.cj, label %arena_get_from_ind.exit, label %.thread107

.thread107:                                       ; preds = %sz_s2u.exit25.i72, %sz_s2u_compute.exit29.i63, %bb.q
  %.0.i66 = phi i64 [ %.0.i28.i64, %sz_s2u_compute.exit29.i63 ], [ 16384, %bb.q ], [ 16384, %sz_s2u.exit25.i72 ] ; 3 uses
  %i.ck = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !24
  %i.cl = add nuw i64 %i.d, 4094
  %i.cm = and i64 %i.cl, 9223372036854771712
  %i.cn = add nsw i64 %i.cm, -4096
  %i.co = add i64 %i.cn, %.0.i66
  %i.cp = add i64 %i.co, %i.ck
  %i.cq = icmp ult i64 %i.cp, %.0.i66
  %..0.i67 = select i1 %i.cq, i64 0, i64 %.0.i66
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread107, %sz_s2u.exit25.i72, %bb.j, %bb.l
  %storemerge.i = phi i64 [ %.0.i24.i73, %sz_s2u.exit25.i72 ], [ %i.ax, %bb.j ], [ %i.be, %bb.l ], [ %..0.i67, %.thread107 ] ; 6 uses
  %i.cr = add i64 %storemerge.i, -8070450532247928833
  %spec.select.i = icmp ult i64 %i.cr, -8070450532247928832
  br i1 %spec.select.i, label %arena_get_from_ind.exit, label %tsdn_witness_tsdp_get.exit.i

tsdn_witness_tsdp_get.exit.i:                     ; preds = %aligned_usize_get.exit
  store i8 %i.a, ptr %9, align 8, !tbaa !155
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cs, i8 0, i64 7, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.ak, ptr %i.ct, align 8, !tbaa !24
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %1, ptr %i.cu, align 8, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cw = sext i32 %2 to i64
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !24
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 0, ptr %i.cx, align 8, !tbaa !24
  %i.cy = icmp samesign ult i64 %storemerge.i, 14337 ; 2 uses
  br i1 %i.ap, label %iralloct_explicit_slab.exit, label %bb.t

bb.t:                                             ; preds = %tsdn_witness_tsdp_get.exit.i
  %i.cz = add nsw i64 %i.e, -1                    ; 2 uses
  %i.da = and i64 %i.cz, %i.ak
  %.not25.i = icmp eq i64 %i.da, 0
  br i1 %.not25.i, label %iralloct_explicit_slab.exit, label %tsdn_witness_tsdp_get.exit.i56

tsdn_witness_tsdp_get.exit.i56:                   ; preds = %bb.t
  %i.db = icmp samesign ult i64 %1, 14337
  %i.dc = icmp samesign ult i64 %i.e, 4097
  %or.cond.i = and i1 %i.db, %i.dc
  br i1 %or.cond.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %tsdn_witness_tsdp_get.exit.i56
  %i.dd = add nuw nsw i64 %i.cz, %1
  %i.de = sub nsw i64 0, %i.e
  %i.df = and i64 %i.dd, %i.de                    ; 4 uses
  %i.dg = icmp samesign ult i64 %i.df, 4097
  br i1 %i.dg, label %bb.v, label %sz_s2u_compute.exit.i, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.dh = add nuw nsw i64 %i.df, 6
  %i.di = lshr i64 %i.dh, 3
  %i.dj = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !12
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !24
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i:                            ; preds = %bb.u
  %i.do = shl nuw nsw i64 %i.df, 1
  %i.dp = add nsw i64 %i.do, -1
  %i.dq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dp, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.dq
  %i.dr = lshr i64 1152921504606846975, %i.dq
  %i.ds = add nuw nsw i64 %i.df, %i.dr
  %i.dt = and i64 %i.ds, %notmask.i.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i, %bb.v
  %.0.i24.i = phi i64 [ %i.dn, %bb.v ], [ %i.dt, %sz_s2u_compute.exit.i ] ; 2 uses
  %i.du = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.du, label %sz_sa2u.exit, label %.thread110

bb.w:                                             ; preds = %tsdn_witness_tsdp_get.exit.i56
  %i.dv = icmp samesign ult i64 %1, 16385
  br i1 %i.dv, label %.thread110, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dw = icmp samesign ugt i64 %1, 8070450532247928832
  br i1 %i.dw, label %sz_s2u_compute.exit29.i, label %bb.y, !prof !9

bb.y:                                             ; preds = %bb.x
  %i.dx = shl nuw i64 %1, 1
  %i.dy = add i64 %i.dx, -1
  %i.dz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dy, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.dz
  %i.ea = lshr i64 1152921504606846975, %i.dz
  %i.eb = add nuw nsw i64 %1, %i.ea
  %i.ec = and i64 %i.eb, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.y, %bb.x
  %.0.i28.i = phi i64 [ %i.ec, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.ed = icmp samesign ult i64 %.0.i28.i, %1
  br i1 %i.ed, label %arena_get_from_ind.exit, label %.thread110

.thread110:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.w
  %.0.i60 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.w ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.ee = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !24
  %i.ef = add nuw i64 %i.d, 4094
  %i.eg = and i64 %i.ef, 9223372036854771712
  %i.eh = add nsw i64 %i.eg, -4096
  %i.ei = add i64 %i.eh, %.0.i60
  %i.ej = add i64 %i.ei, %i.ee
  %i.ek = icmp ult i64 %i.ej, %.0.i60
  %..0.i = select i1 %i.ek, i64 0, i64 %.0.i60
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %sz_s2u.exit25.i, %.thread110
  %.018.i = phi i64 [ %..0.i, %.thread110 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 2 uses
  %i.el = add nsw i64 %.018.i, -8070450532247928833
  %i.em = icmp ult i64 %i.el, -8070450532247928832
  br i1 %i.em, label %arena_get_from_ind.exit, label %ipallocztm_explicit_slab.exit.i, !prof !83

ipallocztm_explicit_slab.exit.i:                  ; preds = %sz_sa2u.exit
  %i.en = call ptr @duckdb_je_arena_palloc(ptr noundef %.0.i52, ptr noundef %.1.ph, i64 noundef %.018.i, i64 noundef range(i64 0, -9223372036854775807) %i.e, i1 noundef zeroext %.0.i45, i1 noundef zeroext %i.cy, ptr noundef %.0.i105) #21 ; 13 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %arena_get_from_ind.exit, label %isdalloct.exit

isdalloct.exit:                                   ; preds = %ipallocztm_explicit_slab.exit.i
  %i.ep = call i64 @llvm.umin.i64(i64 %1, i64 %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.en, ptr align 1 %0, i64 %i.ep, i1 false)
  %i.eq = load i8, ptr %9, align 8, !tbaa !155, !range !95, !noundef !96
  %i.er = trunc nuw i8 %i.eq to i1
  %i.es = select i1 %i.er, i32 8, i32 9
  %i.et = ptrtoint ptr %i.en to i64
  call void @duckdb_je_hook_invoke_alloc(i32 noundef %i.es, ptr noundef nonnull %i.en, i64 noundef %i.et, ptr noundef nonnull %i.ct) #21
  %i.eu = load i8, ptr %9, align 8, !tbaa !155, !range !95, !noundef !96
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = select i1 %i.ev, i32 3, i32 4
  call void @duckdb_je_hook_invoke_dalloc(i32 noundef %i.ew, ptr noundef %0, ptr noundef nonnull %i.ct) #21
  %i.ex = icmp eq ptr %.0.i105, null
  br i1 %i.ex, label %bb.z, label %bb.aa, !prof !9

bb.z:                                             ; preds = %isdalloct.exit
  call fastcc void @arena_sdalloc_no_tcache(ptr noundef %.0.i52, ptr noundef %0, i64 noundef %i.ao)
  br label %iralloct_explicit_slab.exit.thread

bb.aa:                                            ; preds = %isdalloct.exit
  %i.ey = icmp ult i64 %i.ao, 4097
  br i1 %i.ey, label %bb.ab, label %bb.ac, !prof !11

bb.ab:                                            ; preds = %bb.aa
  %i.ez = add nuw nsw i64 %i.ao, 7
  %i.fa = lshr i64 %i.ez, 3
  %i.fb = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !12
  %i.fd = zext i8 %i.fc to i32
  br label %sz_size2index.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.fe = icmp ugt i64 %i.ao, 8070450532247928832
  br i1 %i.fe, label %sz_size2index.exit.i.thread, label %bb.ad, !prof !9

bb.ad:                                            ; preds = %bb.ac
  %i.ff = shl nuw i64 %i.ao, 1
  %i.fg = add i64 %i.ff, -1
  %i.fh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fg, i1 true) ; 3 uses
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = sub nuw nsw i64 60, %i.fh
  %i.fk = ashr exact i64 -1152921504606846976, %i.fh
  %i.fl = add nsw i64 %i.ao, -1
  %i.fm = and i64 %i.fk, %i.fl
  %i.fn = lshr i64 %i.fm, %i.fj
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = and i32 %i.fo, 3
  %i.fq = shl nuw nsw i32 %i.fi, 2
  %reass.sub = sub nsw i32 %i.fp, %i.fq
  %i.fr = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.ad, %bb.ab
  %.0.i.i77 = phi i32 [ %i.fd, %bb.ab ], [ %i.fr, %bb.ad ] ; 4 uses
  %i.fs = icmp samesign ult i32 %.0.i.i77, 36
  br i1 %i.fs, label %bb.ae, label %sz_size2index.exit.i.thread, !prof !132

bb.ae:                                            ; preds = %sz_size2index.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i105, i64 8
  %i.fu = zext nneg i32 %.0.i.i77 to i64
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %i.fu ; 7 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !90 ; 3 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 18 ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !122
  %i.ga = trunc i64 %i.fx to i16
  %i.gb = icmp eq i16 %i.fz, %i.ga
  br i1 %i.gb, label %cache_bin_dalloc_easy.exit18.i, label %cache_bin_dalloc_easy.exit18.i.thread, !prof !9

cache_bin_dalloc_easy.exit18.i.thread:            ; preds = %bb.ae
  %i.gc = getelementptr inbounds i8, ptr %i.fw, i64 -8 ; 2 uses
  store ptr %i.gc, ptr %i.fv, align 8, !tbaa !90
  store ptr %0, ptr %i.gc, align 8, !tbaa !91
  br label %iralloct_explicit_slab.exit.thread

cache_bin_dalloc_easy.exit18.i:                   ; preds = %bb.ae
  %i.gd = icmp eq ptr %i.fw, @duckdb_je_disabled_bin
  br i1 %i.gd, label %bb.af, label %bb.ag, !prof !9

bb.af:                                            ; preds = %cache_bin_dalloc_easy.exit18.i
  call void @duckdb_je_arena_dalloc_small(ptr noundef %.0.i52, ptr noundef %0) #21
  br label %iralloct_explicit_slab.exit.thread

bb.ag:                                            ; preds = %cache_bin_dalloc_easy.exit18.i
  %i.ge = getelementptr i8, ptr %i.fv, i64 22
  %.val89 = load i16, ptr %i.ge, align 2, !tbaa !123
  %i.gf = zext i16 %.val89 to i32
  %i.gg = load i32, ptr @duckdb_je_opt_lg_tcache_flush_small_div, align 4, !tbaa !8
  %i.gh = lshr i32 %i.gf, %i.gg
  call void @duckdb_je_tcache_bin_flush_small(ptr noundef %.0.i52, ptr noundef nonnull %.0.i105, ptr noundef nonnull %i.fv, i32 noundef %.0.i.i77, i32 noundef %i.gh) #21
  %i.gi = load ptr, ptr %i.fv, align 8, !tbaa !90 ; 2 uses
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = load i16, ptr %i.fy, align 2, !tbaa !122
  %i.gl = trunc i64 %i.gj to i16
  %i.gm = icmp eq i16 %i.gk, %i.gl
  br i1 %i.gm, label %iralloct_explicit_slab.exit.thread, label %bb.ah, !prof !9

bb.ah:                                            ; preds = %bb.ag
  %i.gn = getelementptr inbounds i8, ptr %i.gi, i64 -8 ; 2 uses
  store ptr %i.gn, ptr %i.fv, align 8, !tbaa !90
  store ptr %0, ptr %i.gn, align 8, !tbaa !91
  br label %iralloct_explicit_slab.exit.thread

sz_size2index.exit.i.thread:                      ; preds = %bb.ac, %sz_size2index.exit.i
  %.0.i.i77113 = phi i32 [ %.0.i.i77, %sz_size2index.exit.i ], [ 232, %bb.ac ] ; 3 uses
  %i.go = load ptr, ptr %.0.i105, align 8, !tbaa !99
  %i.gp = getelementptr i8, ptr %i.go, i64 48
  %.val86 = load i32, ptr %i.gp, align 8, !tbaa !106
  %i.gq = icmp ult i32 %.0.i.i77113, %.val86
  br i1 %i.gq, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %sz_size2index.exit.i.thread
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i105, i64 8
  %i.gs = zext nneg i32 %.0.i.i77113 to i64
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.gs ; 7 uses
  %.val83 = load ptr, ptr %i.gt, align 8, !tbaa !90 ; 3 uses
  %i.gu = icmp eq ptr %.val83, @duckdb_je_disabled_bin
  %i.gv = getelementptr i8, ptr %i.gt, i64 22
  br i1 %i.gu, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gw = ptrtoint ptr %.val83 to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 18 ; 2 uses
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !122
  %i.gz = trunc i64 %i.gw to i16
  %i.ha = icmp eq i16 %i.gy, %i.gz
  br i1 %i.ha, label %cache_bin_dalloc_easy.exit12.i.i, label %cache_bin_dalloc_easy.exit12.i.i.thread, !prof !9

cache_bin_dalloc_easy.exit12.i.i.thread:          ; preds = %bb.aj
  %i.hb = getelementptr inbounds i8, ptr %.val83, i64 -8 ; 2 uses
  store ptr %i.hb, ptr %i.gt, align 8, !tbaa !90
  store ptr %0, ptr %i.hb, align 8, !tbaa !91
  br label %iralloct_explicit_slab.exit.thread

cache_bin_dalloc_easy.exit12.i.i:                 ; preds = %bb.aj
  %.val90 = load i16, ptr %i.gv, align 2, !tbaa !123
  %i.hc = zext i16 %.val90 to i32
  %i.hd = load i32, ptr @duckdb_je_opt_lg_tcache_flush_large_div, align 4, !tbaa !8
  %i.he = lshr i32 %i.hc, %i.hd
  call void @duckdb_je_tcache_bin_flush_large(ptr noundef %.0.i52, ptr noundef nonnull %.0.i105, ptr noundef nonnull %i.gt, i32 noundef %.0.i.i77113, i32 noundef %i.he) #21
  %i.hf = load ptr, ptr %i.gt, align 8, !tbaa !90 ; 2 uses
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = load i16, ptr %i.gx, align 2, !tbaa !122
  %i.hi = trunc i64 %i.hg to i16
  %i.hj = icmp eq i16 %i.hh, %i.hi
  br i1 %i.hj, label %iralloct_explicit_slab.exit.thread, label %bb.ak, !prof !9

bb.ak:                                            ; preds = %cache_bin_dalloc_easy.exit12.i.i
  %i.hk = getelementptr inbounds i8, ptr %i.hf, i64 -8 ; 2 uses
  store ptr %i.hk, ptr %i.gt, align 8, !tbaa !90
  store ptr %0, ptr %i.hk, align 8, !tbaa !91
  br label %iralloct_explicit_slab.exit.thread

bb.al:                                            ; preds = %bb.ai, %sz_size2index.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  br i1 %i.aj, label %bb.am, label %bb.an, !prof !9

bb.am:                                            ; preds = %bb.al
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %6) #21
  br label %tsdn_rtree_ctx.exit

bb.an:                                            ; preds = %bb.al
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i52, i64 440
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.am, %bb.an
  %.0.i79 = phi ptr [ %6, %bb.am ], [ %i.hl, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef %.0.i52, ptr noundef nonnull %.0.i79, i64 noundef %i.ak)
  %i.hm = load ptr, ptr %7, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @duckdb_je_large_dalloc(ptr noundef %.0.i52, ptr noundef %i.hm) #21
  br label %iralloct_explicit_slab.exit.thread

iralloct_explicit_slab.exit:                      ; preds = %tsdn_witness_tsdp_get.exit.i, %bb.t
  %i.hn = call ptr @duckdb_je_arena_ralloc(ptr noundef %.0.i52, ptr noundef %.1.ph, ptr noundef %0, i64 noundef %i.ao, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775807) %i.e, i1 noundef zeroext %.0.i45, i1 noundef zeroext %i.cy, ptr noundef %.0.i105, ptr noundef nonnull %9) #21 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %arena_get_from_ind.exit, label %iralloct_explicit_slab.exit.thread, !prof !83

iralloct_explicit_slab.exit.thread:               ; preds = %bb.z, %bb.ag, %bb.ah, %cache_bin_dalloc_easy.exit18.i.thread, %bb.af, %cache_bin_dalloc_easy.exit12.i.i.thread, %bb.ak, %cache_bin_dalloc_easy.exit12.i.i, %tsdn_rtree_ctx.exit, %iralloct_explicit_slab.exit
  %.0.i55117 = phi ptr [ %i.hn, %iralloct_explicit_slab.exit ], [ %i.en, %tsdn_rtree_ctx.exit ], [ %i.en, %cache_bin_dalloc_easy.exit12.i.i ], [ %i.en, %bb.ak ], [ %i.en, %cache_bin_dalloc_easy.exit12.i.i.thread ], [ %i.en, %bb.af ], [ %i.en, %cache_bin_dalloc_easy.exit18.i.thread ], [ %i.en, %bb.ah ], [ %i.en, %bb.ag ], [ %i.en, %bb.z ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i8 1, ptr %4, align 8, !tbaa !110
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i52, i64 832 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !111
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i52, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !112
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i52, i64 16 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !113
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i52, i64 840
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !114
  %i.hx = load i64, ptr %i.hp, align 8, !tbaa !24 ; 2 uses
  %i.hy = add i64 %i.hx, %storemerge.i
  store i64 %i.hy, ptr %i.hp, align 8, !tbaa !24
  %i.hz = load i64, ptr %i.ht, align 8, !tbaa !24
  %i.ia = sub i64 %i.hz, %i.hx
  %i.ib = icmp ult i64 %storemerge.i, %i.ia
  br i1 %i.ib, label %te_event_advance.exit82, label %bb.ao, !prof !11

bb.ao:                                            ; preds = %iralloct_explicit_slab.exit.thread
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i52, ptr noundef nonnull %4) #21
  br label %te_event_advance.exit82

te_event_advance.exit82:                          ; preds = %iralloct_explicit_slab.exit.thread, %bb.ao
end_hunk_2
begin_hunk_3_@duckdb_je_realloc:bb.a
.thread:                                          ; preds = %cache_bin_alloc_impl.exit.i69, %bb.n
  %.0.i24.i74.ph = phi ptr [ %i.bd, %bb.n ], [ null, %cache_bin_alloc_impl.exit.i69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %imalloc_no_sample.exit82

bb.o:                                             ; preds = %bb.m
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i89302, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ao, i32 noundef %.0.i50.i, i1 noundef zeroext true) #21
  %i.be = call ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i89302, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ao, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #21
  %i.bf = load i8, ptr %i.a, align 1, !tbaa !94, !range !95, !noundef !96
  %.not283 = icmp eq i8 %i.bf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not283, label %aligned_usize_get.exit.i.thread, label %cache_bin_alloc_impl.exit.i69.thread

cache_bin_alloc_impl.exit.i69.thread:             ; preds = %bb.l, %bb.j, %bb.o
  %.132.i.i77 = phi ptr [ %i.be, %bb.o ], [ %i.aq, %bb.j ], [ %i.aq, %bb.l ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !97
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !97
  br label %imalloc_no_sample.exit82

bb.p:                                             ; preds = %iallocztm_explicit_slab.exit.i51
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !99
  %i.bk = getelementptr i8, ptr %i.bj, i64 48
  %.val123 = load i32, ptr %i.bk, align 8, !tbaa !106
  %i.bl = icmp ult i32 %.0.i50.i, %.val123
  br i1 %i.bl, label %bb.q, label %.critedge.i.i53, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i89302, i64 872
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ai ; 7 uses
  %.val118 = load ptr, ptr %i.bn, align 8, !tbaa !90 ; 4 uses
  %.not282 = icmp eq ptr %.val118, @duckdb_je_disabled_bin
  br i1 %.not282, label %.critedge.i.i53, label %bb.r, !prof !9

bb.r:                                             ; preds = %bb.q
  %i.bo = load ptr, ptr %.val118, align 8, !tbaa !91
  %i.bp = ptrtoint ptr %.val118 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.val118, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !92 ; 2 uses
  %i.bt = trunc i64 %i.bp to i16
  %.not.i28.i57 = icmp eq i16 %i.bs, %i.bt
  br i1 %.not.i28.i57, label %bb.t, label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !90
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !93
  %.not21.i30.i67 = icmp eq i16 %i.bv, %i.bs
  br i1 %.not21.i30.i67, label %cache_bin_alloc_impl.exit31.i58, label %bb.u, !prof !9

bb.u:                                             ; preds = %bb.t
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !90
  %i.bw = ptrtoint ptr %i.bq to i64
  %i.bx = trunc i64 %i.bw to i16
  store i16 %i.bx, ptr %i.br, align 8, !tbaa !92
  br label %bb.x

cache_bin_alloc_impl.exit31.i58:                  ; preds = %bb.t
  %i.by = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i89302, ptr noundef null) ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %aligned_usize_get.exit.i.thread, label %bb.v, !prof !9

bb.v:                                             ; preds = %cache_bin_alloc_impl.exit31.i58
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i89302, ptr noundef nonnull %i.am, ptr noundef nonnull %i.bn, i32 noundef %.0.i50.i, i1 noundef zeroext false) #21
  br i1 %i.n, label %bb.w, label %sz_s2u_compute.exit.i61, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.ca = add nuw nsw i64 %1, 7
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !12
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !24
  br label %sz_s2u.exit.i63

sz_s2u_compute.exit.i61:                          ; preds = %bb.v
  %i.ch = shl nuw i64 %1, 1
  %i.ci = add i64 %i.ch, -1
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ci, i1 true) ; 2 uses
  %notmask.i.i60 = ashr exact i64 -1152921504606846976, %i.cj
  %i.ck = lshr i64 1152921504606846975, %i.cj
  %i.cl = add nuw nsw i64 %1, %i.ck
  %i.cm = and i64 %i.cl, %notmask.i.i60
  br label %sz_s2u.exit.i63

sz_s2u.exit.i63:                                  ; preds = %sz_s2u_compute.exit.i61, %bb.w
  %.0.i32.i64 = phi i64 [ %i.cg, %bb.w ], [ %i.cm, %sz_s2u_compute.exit.i61 ]
  %i.cn = tail call ptr @duckdb_je_large_malloc(ptr noundef nonnull %.0.i89302, ptr noundef nonnull %i.by, i64 noundef %.0.i32.i64, i1 noundef zeroext false) #21
  br label %imalloc_no_sample.exit82

bb.x:                                             ; preds = %bb.u, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !97
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !97
  br label %imalloc_no_sample.exit82

.critedge.i.i53:                                  ; preds = %bb.q, %bb.p
  %i.cr = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %.0.i89302, ptr noundef null, i64 noundef %1, i32 noundef %.0.i50.i, i1 noundef zeroext false, i1 noundef zeroext false) #21
  br label %imalloc_no_sample.exit82

imalloc_no_sample.exit82:                         ; preds = %.critedge.i.i53, %.thread, %cache_bin_alloc_impl.exit.i69.thread, %bb.x, %sz_s2u.exit.i63
  %.0.i23.i55 = phi ptr [ %i.cr, %.critedge.i.i53 ], [ %.0.i24.i74.ph, %.thread ], [ %.132.i.i77, %cache_bin_alloc_impl.exit.i69.thread ], [ %i.bo, %bb.x ], [ %i.cn, %sz_s2u.exit.i63 ] ; 2 uses
  %i.cs = icmp eq ptr %.0.i23.i55, null
  br i1 %i.cs, label %aligned_usize_get.exit.i.thread, label %bb.y, !prof !107

bb.y:                                             ; preds = %imalloc_no_sample.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 1, ptr %2, align 8, !tbaa !110
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i89302, i64 832 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !111
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i89302, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !112
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i89302, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !113
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i89302, i64 840
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !114
  %i.db = load i64, ptr %i.ct, align 8, !tbaa !24 ; 2 uses
  %i.dc = add i64 %i.db, %i.ak
  store i64 %i.dc, ptr %i.ct, align 8, !tbaa !24
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !24
  %i.de = sub i64 %i.dd, %i.db
  %i.df = icmp ult i64 %i.ak, %i.de
  br i1 %i.df, label %bb.aa, label %bb.z, !prof !11

bb.z:                                             ; preds = %bb.y
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i89302, ptr noundef nonnull %2) #21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %imalloc.exit

aligned_usize_get.exit.i.thread:                  ; preds = %cache_bin_alloc_impl.exit31.i58, %bb.o, %bb.g, %sz_size2index.exit.i, %imalloc_no_sample.exit82
  %i.dg = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.dg, align 4, !tbaa !8
  br label %imalloc.exit

bb.ab:                                            ; preds = %tsd_fetch_impl.exit
  %i.dh = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !8
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ad, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.dj = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.dj, label %imalloc_init_check.exit, label %bb.ad, !prof !115

imalloc_init_check.exit:                          ; preds = %bb.ac
  %i.dk = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.dk, align 4, !tbaa !8
  br label %imalloc.exit

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dl = load i8, ptr @duckdb_je_opt_zero, align 1, !range !95
  %i.dm = trunc nuw i8 %i.dl to i1                ; 6 uses
  %i.dn = icmp ult i64 %1, 4097                   ; 2 uses
  br i1 %i.dn, label %bb.ae, label %bb.af, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.do = add nuw nsw i64 %1, 7
  %i.dp = lshr i64 %i.do, 3
  %i.dq = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !12
  %i.ds = zext i8 %i.dr to i32
  br label %sz_size2index.exit.i32

bb.af:                                            ; preds = %bb.ad
  %i.dt = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.dt, label %aligned_usize_get.exit.i26.thread, label %bb.ag, !prof !9

bb.ag:                                            ; preds = %bb.af
  %i.du = shl nuw i64 %1, 1
  %i.dv = add i64 %i.du, -1
  %i.dw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dv, i1 true) ; 3 uses
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = sub nuw nsw i64 60, %i.dw
  %i.dz = ashr exact i64 -1152921504606846976, %i.dw
  %i.ea = add nsw i64 %1, -1
  %i.eb = and i64 %i.dz, %i.ea
  %i.ec = lshr i64 %i.eb, %i.dy
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = and i32 %i.ed, 3
  %i.ef = shl nuw nsw i32 %i.dx, 2
  %reass.sub = sub nsw i32 %i.ee, %i.ef
  %i.eg = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i32

sz_size2index.exit.i32:                           ; preds = %bb.ag, %bb.ae
  %.0.i50.i33 = phi i32 [ %i.ds, %bb.ae ], [ %i.eg, %bb.ag ] ; 8 uses
  %i.eh = icmp samesign ugt i32 %.0.i50.i33, 231
  br i1 %i.eh, label %aligned_usize_get.exit.i26.thread, label %bb.ah, !prof !156

bb.ah:                                            ; preds = %sz_size2index.exit.i32
  %i.ei = zext nneg i32 %.0.i50.i33 to i64        ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ei ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !24 ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !12
  %i.en = icmp sgt i8 %i.em, 0
  br i1 %i.en, label %bb.aj, label %bb.ai, !prof !117

bb.ai:                                            ; preds = %bb.ah
  %i.eo = load i8, ptr %i.l, align 8, !tbaa !94, !range !95, !noundef !96
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 864 ; 4 uses
  br i1 %i.ep, label %bb.al, label %iallocztm_explicit_slab.exit.i.thread

bb.aj:                                            ; preds = %bb.ah
  %i.er = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %arena_get.exit137, label %iallocztm_explicit_slab.exit.i.thread, !prof !9

arena_get.exit137:                                ; preds = %bb.aj
  %i.et = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %i.l, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !0 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.ak, label %iallocztm_explicit_slab.exit.i.thread, !prof !10

bb.ak:                                            ; preds = %arena_get.exit137
  %i.ev = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !8
  %.not.i.i.not = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i26.thread, label %iallocztm_explicit_slab.exit.i.thread

iallocztm_explicit_slab.exit.i.thread:            ; preds = %bb.aj, %arena_get.exit137, %bb.ai, %bb.ak
  %.1226.ph.ph = phi ptr [ null, %bb.ak ], [ null, %bb.ai ], [ %i.et, %arena_get.exit137 ], [ %i.er, %bb.aj ]
  %.ph307 = icmp ult i64 %i.ek, 14337
  br label %.critedge.i.i

bb.al:                                            ; preds = %bb.ai
  %.ph = icmp ult i64 %i.ek, 14337
  br i1 %.ph, label %bb.am, label %bb.av, !prof !11

bb.am:                                            ; preds = %bb.al
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 872
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.ei ; 9 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !90 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !91 ; 2 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 8, !tbaa !92 ; 2 uses
  %i.fe = trunc i64 %i.fa to i16
  %.not.i26.i = icmp eq i16 %i.fd, %i.fe
  br i1 %.not.i26.i, label %bb.ao, label %bb.an, !prof !9

bb.an:                                            ; preds = %bb.am
  store ptr %i.fb, ptr %i.ex, align 8, !tbaa !90
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ao:                                            ; preds = %bb.am
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.fg = load i16, ptr %i.ff, align 4, !tbaa !93
  %.not21.i.i = icmp eq i16 %i.fg, %i.fd
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.ap, !prof !9

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.fb, ptr %i.ex, align 8, !tbaa !90
  %i.fh = ptrtoint ptr %i.fb to i64
  %i.fi = trunc i64 %i.fh to i16
  store i16 %i.fi, ptr %i.fc, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.fj = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.l, ptr noundef null) ; 3 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %.thread269, label %bb.aq, !prof !9

bb.aq:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val119 = load ptr, ptr %i.ex, align 8, !tbaa !90
  %i.fl = icmp eq ptr %.val119, @duckdb_je_disabled_bin
  br i1 %i.fl, label %bb.ar, label %bb.as, !prof !9

bb.ar:                                            ; preds = %bb.aq
  %i.fm = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %i.l, ptr noundef nonnull %i.fj, i64 noundef %1, i32 noundef %.0.i50.i33, i1 noundef zeroext %i.dm, i1 noundef zeroext true) #21
  br label %.thread269

.thread269:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.ar
  %.0.i24.i.ph = phi ptr [ %i.fm, %bb.ar ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %imalloc_no_sample.exit

bb.as:                                            ; preds = %bb.aq
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %i.l, ptr noundef nonnull %i.eq, ptr noundef nonnull %i.ex, i32 noundef %.0.i50.i33, i1 noundef zeroext true) #21
  %i.fn = call ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef nonnull %i.l, ptr noundef nonnull %i.fj, ptr noundef nonnull %i.eq, ptr noundef nonnull %i.ex, i32 noundef %.0.i50.i33, ptr noundef nonnull %i.b) #21
  %i.fo = load i8, ptr %i.b, align 1, !tbaa !94, !range !95, !noundef !96
  %.not281 = icmp eq i8 %i.fo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not281, label %aligned_usize_get.exit.i26.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.ap, %bb.an, %bb.as
  %.132.i.i = phi ptr [ %i.fn, %bb.as ], [ %i.ez, %bb.an ], [ %i.ez, %bb.ap ] ; 2 uses
  br i1 %i.dm, label %bb.at, label %bb.au, !prof !9

bb.at:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.fp = load i64, ptr %i.ej, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.fp, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %cache_bin_alloc_impl.exit.i.thread
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !97
  %i.fs = add i64 %i.fr, 1
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !97
  br label %imalloc_no_sample.exit

bb.av:                                            ; preds = %bb.al
  %i.ft = load ptr, ptr %i.eq, align 8, !tbaa !99
  %i.fu = getelementptr i8, ptr %i.ft, i64 48
  %.val126 = load i32, ptr %i.fu, align 8, !tbaa !106
  %i.fv = icmp ult i32 %.0.i50.i33, %.val126
  br i1 %i.fv, label %bb.aw, label %.critedge.i.i, !prof !11

bb.aw:                                            ; preds = %bb.av
  %i.fw = getelementptr inbounds nuw i8, ptr %i.l, i64 872
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %i.ei ; 7 uses
  %.val120 = load ptr, ptr %i.fx, align 8, !tbaa !90 ; 4 uses
  %.not = icmp eq ptr %.val120, @duckdb_je_disabled_bin
  br i1 %.not, label %.critedge.i.i, label %bb.ax, !prof !9

bb.ax:                                            ; preds = %bb.aw
  %i.fy = load ptr, ptr %.val120, align 8, !tbaa !91 ; 2 uses
  %i.fz = ptrtoint ptr %.val120 to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %.val120, i64 8 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.gc = load i16, ptr %i.gb, align 8, !tbaa !92 ; 2 uses
  %i.gd = trunc i64 %i.fz to i16
  %.not.i28.i = icmp eq i16 %i.gc, %i.gd
  br i1 %.not.i28.i, label %bb.az, label %bb.ay, !prof !9

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.ga, ptr %i.fx, align 8, !tbaa !90
  br label %bb.bd

bb.az:                                            ; preds = %bb.ax
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 20
  %i.gf = load i16, ptr %i.ge, align 4, !tbaa !93
  %.not21.i30.i = icmp eq i16 %i.gf, %i.gc
  br i1 %.not21.i30.i, label %cache_bin_alloc_impl.exit31.i, label %bb.ba, !prof !9

bb.ba:                                            ; preds = %bb.az
  store ptr %i.ga, ptr %i.fx, align 8, !tbaa !90
  %i.gg = ptrtoint ptr %i.ga to i64
  %i.gh = trunc i64 %i.gg to i16
  store i16 %i.gh, ptr %i.gb, align 8, !tbaa !92
  br label %bb.bd

cache_bin_alloc_impl.exit31.i:                    ; preds = %bb.az
  %i.gi = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.l, ptr noundef null) ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %aligned_usize_get.exit.i26.thread, label %bb.bb, !prof !9

bb.bb:                                            ; preds = %cache_bin_alloc_impl.exit31.i
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %i.l, ptr noundef nonnull %i.eq, ptr noundef nonnull %i.fx, i32 noundef %.0.i50.i33, i1 noundef zeroext false) #21
  br i1 %i.dn, label %bb.bc, label %sz_s2u_compute.exit.i, !prof !11

bb.bc:                                            ; preds = %bb.bb
  %i.gk = add nuw nsw i64 %1, 7
  %i.gl = lshr i64 %i.gk, 3
  %i.gm = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !12
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.go
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !24
  br label %sz_s2u.exit.i

sz_s2u_compute.exit.i:                            ; preds = %bb.bb
  %i.gr = shl nuw i64 %1, 1
  %i.gs = add i64 %i.gr, -1
  %i.gt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gs, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gt
  %i.gu = lshr i64 1152921504606846975, %i.gt
  %i.gv = add nuw nsw i64 %1, %i.gu
  %i.gw = and i64 %i.gv, %notmask.i.i
  br label %sz_s2u.exit.i

sz_s2u.exit.i:                                    ; preds = %sz_s2u_compute.exit.i, %bb.bc
  %.0.i32.i = phi i64 [ %i.gq, %bb.bc ], [ %i.gw, %sz_s2u_compute.exit.i ]
  %i.gx = tail call ptr @duckdb_je_large_malloc(ptr noundef nonnull %i.l, ptr noundef nonnull %i.gi, i64 noundef %.0.i32.i, i1 noundef zeroext %i.dm) #21
  br label %imalloc_no_sample.exit

bb.bd:                                            ; preds = %bb.ay, %bb.ba
  br i1 %i.dm, label %bb.be, label %bb.bf, !prof !9

bb.be:                                            ; preds = %bb.bd
  %i.gy = load i64, ptr %i.ej, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fy, i8 0, i64 %i.gy, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !97
  %i.hb = add i64 %i.ha, 1
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !97
  br label %imalloc_no_sample.exit

.critedge.i.i:                                    ; preds = %iallocztm_explicit_slab.exit.i.thread, %bb.aw, %bb.av
  %.ph310 = phi i1 [ %.ph307, %iallocztm_explicit_slab.exit.i.thread ], [ false, %bb.aw ], [ false, %bb.av ]
  %.1226.ph309 = phi ptr [ %.1226.ph.ph, %iallocztm_explicit_slab.exit.i.thread ], [ null, %bb.aw ], [ null, %bb.av ]
  %i.hc = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %i.l, ptr noundef %.1226.ph309, i64 noundef %1, i32 noundef %.0.i50.i33, i1 noundef zeroext %i.dm, i1 noundef zeroext %.ph310) #21
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %.critedge.i.i, %.thread269, %bb.au, %bb.bf, %sz_s2u.exit.i
  %.0.i44 = phi ptr [ %i.gx, %sz_s2u.exit.i ], [ %i.hc, %.critedge.i.i ], [ %.0.i24.i.ph, %.thread269 ], [ %.132.i.i, %bb.au ], [ %i.fy, %bb.bf ] ; 4 uses
  %i.hd = icmp eq ptr %.0.i44, null
  br i1 %i.hd, label %aligned_usize_get.exit.i26.thread, label %bb.bg, !prof !157

bb.bg:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i8 1, ptr %3, align 8, !tbaa !110
  %i.he = getelementptr inbounds nuw i8, ptr %i.l, i64 832 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !111
  %i.hg = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !112
  %i.hi = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %i.l, i64 840
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.hk, ptr %i.hl, align 8, !tbaa !114
  %i.hm = load i64, ptr %i.he, align 8, !tbaa !24 ; 2 uses
  %i.hn = add i64 %i.hm, %i.ek
  store i64 %i.hn, ptr %i.he, align 8, !tbaa !24
  %i.ho = load i64, ptr %i.hi, align 8, !tbaa !24
  %i.hp = sub i64 %i.ho, %i.hm
  %i.hq = icmp ult i64 %i.ek, %i.hp
  br i1 %i.hq, label %bb.bi, label %bb.bh, !prof !11

bb.bh:                                            ; preds = %bb.bg
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %i.l, ptr noundef nonnull %3) #21
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not.i30 = xor i1 %i.dm, true
  %i.hr = load i8, ptr @duckdb_je_opt_junk_alloc, align 1, !range !95
  %i.hs = trunc nuw i8 %i.hr to i1
  %or.cond45.i31 = select i1 %.not.i30, i1 %i.hs, i1 false, !prof !117
  br i1 %or.cond45.i31, label %bb.bj, label %bb.bk, !prof !117

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i44, i8 -91, i64 %i.ek, i1 false)
  br label %bb.bk

aligned_usize_get.exit.i26.thread:                ; preds = %cache_bin_alloc_impl.exit31.i, %bb.as, %bb.ak, %bb.af, %sz_size2index.exit.i32, %imalloc_no_sample.exit
  %i.ht = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.ht, align 4, !tbaa !8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %aligned_usize_get.exit.i26.thread
  %.0229.ph = phi ptr [ %.0.i44, %bb.bj ], [ %.0.i44, %bb.bi ], [ null, %aligned_usize_get.exit.i26.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.hu = ptrtoint ptr %0 to i64
  store i64 %i.hu, ptr %i.c, align 16, !tbaa !24
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.hv, align 8, !tbaa !24
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !24
  %i.hw = ptrtoint ptr %.0229.ph to i64
  call void @duckdb_je_hook_invoke_alloc(i32 noundef 8, ptr noundef %.0229.ph, i64 noundef %i.hw, ptr noundef nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.bk, %imalloc_init_check.exit, %aligned_usize_get.exit.i.thread, %bb.aa, %bb.d, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.d ], [ %.0229.ph, %bb.bk ], [ null, %imalloc_init_check.exit ], [ %.0.i23.i55, %bb.aa ], [ null, %aligned_usize_get.exit.i.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @do_realloc_nonnull_zero(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %2 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = alloca [3 x i64], align 16               ; 5 uses
  %i.b = atomicrmw add ptr @duckdb_je_zero_realloc_count, i64 1 monotonic, align 8 ; 0 uses
  %i.c = load i32, ptr @duckdb_je_opt_zero_realloc_action, align 4, !tbaa !8
  switch i32 %i.c, label %bb.r [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @do_rallocx(ptr noundef nonnull %0, i64 noundef 1, i32 noundef 256, i1 noundef zeroext true)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.e = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 824
  %i.g = load i8, ptr %i.f, align 8, !tbaa !12
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.e, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.c, %bb.d
  %.0.i18 = phi ptr [ %i.h, %bb.d ], [ %i.e, %bb.c ] ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i18, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !12
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %tcache_get_from_ind.exit, !prof !11

bb.e:                                             ; preds = %tsd_fetch_impl.exit
  %i.l = load i8, ptr %.0.i18, align 1, !tbaa !94, !range !95, !noundef !96
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i18, i64 864
  %spec.select = select i1 %i.m, ptr %i.n, ptr null
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.e, %tsd_fetch_impl.exit
  %.0.i = phi ptr [ null, %tsd_fetch_impl.exit ], [ %spec.select, %bb.e ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.o = ptrtoint ptr %0 to i64                   ; 3 uses
  store i64 %i.o, ptr %i.a, align 16, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  call void @duckdb_je_hook_invoke_dalloc(i32 noundef 3, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #21
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i18, i64 440 ; 2 uses
  %i.r = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %.0.i18, ptr noundef nonnull %i.q, i64 noundef %i.o) ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.r, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.r, 1
  %i.s = and i64 %.fca.0.extract.i, 4294967295    ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !24   ; 3 uses
  %i.v = load i8, ptr @duckdb_je_opt_junk_free, align 1, !range !95
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %idalloctm.exit

bb.f:                                             ; preds = %tcache_get_from_ind.exit
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 90, i64 %i.u, i1 false)
  br label %idalloctm.exit

idalloctm.exit:                                   ; preds = %tcache_get_from_ind.exit, %bb.f
  %i.x = icmp eq ptr %.0.i, null
  br i1 %i.x, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %idalloctm.exit
  call fastcc void @arena_dalloc_no_tcache(ptr noundef nonnull %.0.i18, ptr noundef nonnull %0)
  br label %arena_dalloc.exit

bb.h:                                             ; preds = %idalloctm.exit
  %.sroa.032.0.extract.trunc = trunc i64 %.fca.0.extract.i to i32 ; 3 uses
  %i.y = and i32 %.fca.1.extract.i, 256
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.m, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.s ; 7 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !90 ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 18 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !122
  %i.af = trunc i64 %i.ac to i16
  %i.ag = icmp eq i16 %i.ae, %i.af
  br i1 %i.ag, label %cache_bin_dalloc_easy.exit16, label %cache_bin_dalloc_easy.exit16.thread, !prof !9

cache_bin_dalloc_easy.exit16.thread:              ; preds = %bb.i
  %i.ah = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 2 uses
  store ptr %i.ah, ptr %i.aa, align 8, !tbaa !90
  store ptr %0, ptr %i.ah, align 8, !tbaa !91
  br label %arena_dalloc.exit

cache_bin_dalloc_easy.exit16:                     ; preds = %bb.i
  %i.ai = icmp eq ptr %i.ab, @duckdb_je_disabled_bin
  br i1 %i.ai, label %bb.j, label %bb.k, !prof !9

bb.j:                                             ; preds = %cache_bin_dalloc_easy.exit16
  call void @duckdb_je_arena_dalloc_small(ptr noundef nonnull %.0.i18, ptr noundef nonnull %0) #21
  br label %arena_dalloc.exit

bb.k:                                             ; preds = %cache_bin_dalloc_easy.exit16
  %i.aj = getelementptr i8, ptr %i.aa, i64 22
  %.val30 = load i16, ptr %i.aj, align 2, !tbaa !123
  %i.ak = zext i16 %.val30 to i32
  %i.al = load i32, ptr @duckdb_je_opt_lg_tcache_flush_small_div, align 4, !tbaa !8
  %i.am = lshr i32 %i.ak, %i.al
  call void @duckdb_je_tcache_bin_flush_small(ptr noundef nonnull %.0.i18, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.aa, i32 noundef %.sroa.032.0.extract.trunc, i32 noundef %i.am) #21
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !90 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = load i16, ptr %i.ad, align 2, !tbaa !122
  %i.aq = trunc i64 %i.ao to i16
  %i.ar = icmp eq i16 %i.ap, %i.aq
  br i1 %i.ar, label %arena_dalloc.exit, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  store ptr %i.as, ptr %i.aa, align 8, !tbaa !90
  store ptr %0, ptr %i.as, align 8, !tbaa !91
  br label %arena_dalloc.exit

bb.m:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %.0.i, align 8, !tbaa !99
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %.val25 = load i32, ptr %i.au, align 8, !tbaa !106
  %i.av = icmp ugt i32 %.val25, %.sroa.032.0.extract.trunc
  br i1 %i.av, label %bb.n, label %tsdn_rtree_ctx.exit

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.s ; 7 uses
  %.val = load ptr, ptr %i.ax, align 8, !tbaa !90 ; 3 uses
  %i.ay = icmp eq ptr %.val, @duckdb_je_disabled_bin
end_hunk_3
begin_hunk_4_@duckdb_je_sdallocx_default:bb.a
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = load i16, ptr %i.hk, align 2, !tbaa !122
  %i.hv = trunc i64 %i.ht to i16
  %i.hw = icmp eq i16 %i.hu, %i.hv
  br i1 %i.hw, label %arena_sdalloc.exit, label %bb.ar, !prof !9

bb.ar:                                            ; preds = %cache_bin_dalloc_easy.exit12.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.hs, i64 -8 ; 2 uses
  store ptr %i.hx, ptr %i.hg, align 8, !tbaa !90
  store ptr %0, ptr %i.hx, align 8, !tbaa !91
  br label %arena_sdalloc.exit

tsdn_rtree_ctx.exit52:                            ; preds = %bb.ap, %sz_size2index.exit.i.thread
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i30, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull %.0.i30, ptr noundef nonnull %i.hy, i64 noundef %i.ff)
  %i.hz = load ptr, ptr %6, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @duckdb_je_large_dalloc(ptr noundef nonnull %.0.i30, ptr noundef %i.hz) #21
  br label %arena_sdalloc.exit

arena_sdalloc.exit:                               ; preds = %tsdn_rtree_ctx.exit52, %cache_bin_dalloc_easy.exit12.i.i, %bb.ar, %cache_bin_dalloc_easy.exit12.i.i.thread, %bb.am, %cache_bin_dalloc_easy.exit18.i.thread, %bb.ao, %bb.an, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i8 0, ptr %3, align 8, !tbaa !110
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i30, i64 848 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !111
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i30, i64 24
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !112
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i30, i64 32 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !113
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i30, i64 856
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !114
  %i.ii = load i64, ptr %i.ia, align 8, !tbaa !24 ; 2 uses
  %i.ij = add i64 %i.ii, %storemerge.i
  store i64 %i.ij, ptr %i.ia, align 8, !tbaa !24
  %i.ik = load i64, ptr %i.ie, align 8, !tbaa !24
  %i.il = sub i64 %i.ik, %i.ii
  %i.im = icmp ult i64 %storemerge.i, %i.il
  br i1 %i.im, label %te_event_advance.exit53, label %bb.as, !prof !11

bb.as:                                            ; preds = %arena_sdalloc.exit
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i30, ptr noundef nonnull %3) #21
  br label %te_event_advance.exit53

te_event_advance.exit53:                          ; preds = %arena_sdalloc.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.at

bb.at:                                            ; preds = %te_event_advance.exit53, %te_event_advance.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define range(i64 0, 8070450532247928833) i64 @duckdb_je_nallocx(i64 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !94, !range !95, !noundef !96
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %tsdn_fetch.exit

bb.c:                                             ; preds = %malloc_init.exit
  %i.f = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 824
  %i.h = load i8, ptr %i.g, align 8, !tbaa !12
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false) #21 ; 0 uses
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.d, %bb.c, %malloc_init.exit
  %i.j = and i32 %1, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k                      ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 5 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.i

bb.e:                                             ; preds = %tsdn_fetch.exit
  %i.o = icmp ult i64 %0, 4097
  br i1 %i.o, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %0, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24
  br label %aligned_usize_get.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.w, label %malloc_init.exit.thread, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.x = shl nuw i64 %0, 1
  %i.y = add i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.y, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.z
  %i.aa = lshr i64 1152921504606846975, %i.z
  %i.ab = add nuw nsw i64 %0, %i.aa
  %i.ac = and i64 %i.ab, %notmask.i
  br label %aligned_usize_get.exit

bb.i:                                             ; preds = %tsdn_fetch.exit
  %i.ad = icmp ult i64 %0, 14337
  %i.ae = icmp ult i64 %i.m, 4097
  %or.cond.i = and i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = add nsw i64 %0, -1
  %i.ag = add nsw i64 %i.af, %i.m
  %i.ah = sub nsw i64 0, %i.m
  %i.ai = and i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp samesign ult i64 %i.ai, 4097
  br i1 %i.aj, label %bb.k, label %sz_s2u_compute.exit.i, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.ak = add nuw nsw i64 %i.ai, 6
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i:                            ; preds = %bb.j
  %i.ar = shl nuw nsw i64 %i.ai, 1
  %i.as = add nsw i64 %i.ar, -1
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.as, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.at
  %i.au = lshr i64 1152921504606846975, %i.at
  %i.av = add nuw nsw i64 %i.ai, %i.au
  %i.aw = and i64 %i.av, %notmask.i.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i, %bb.k
  %.0.i24.i = phi i64 [ %i.aq, %bb.k ], [ %i.aw, %sz_s2u_compute.exit.i ] ; 2 uses
  %i.ax = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.ax, label %malloc_init.exit.thread, label %.thread15

bb.l:                                             ; preds = %bb.i
  %i.ay = icmp ugt i64 %i.m, 8070450532247928832
  br i1 %i.ay, label %malloc_init.exit.thread, label %bb.m, !prof !119

bb.m:                                             ; preds = %bb.l
  %i.az = icmp ult i64 %0, 16385
  br i1 %i.az, label %.thread15, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ba, label %sz_s2u_compute.exit29.i, label %bb.o, !prof !9

bb.o:                                             ; preds = %bb.n
  %i.bb = shl nuw i64 %0, 1
  %i.bc = add i64 %i.bb, -1
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bc, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.bd
  %i.be = lshr i64 1152921504606846975, %i.bd
  %i.bf = add nuw nsw i64 %0, %i.be
  %i.bg = and i64 %i.bf, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.o, %bb.n
  %.0.i28.i = phi i64 [ %i.bg, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.bh = icmp ult i64 %.0.i28.i, %0
  br i1 %i.bh, label %malloc_init.exit.thread, label %.thread15

.thread15:                                        ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.m
  %.0.i13 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.m ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bi = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !24
  %i.bj = add nuw i64 %i.l, 4094
  %i.bk = and i64 %i.bj, 9223372036854771712
  %i.bl = add nsw i64 %i.bk, -4096
  %i.bm = add i64 %i.bl, %.0.i13
  %i.bn = add i64 %i.bm, %i.bi
  %i.bo = icmp ult i64 %i.bn, %.0.i13
  br i1 %i.bo, label %malloc_init.exit.thread, label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread15, %bb.f, %bb.h
  %storemerge.i = phi i64 [ %.0.i13, %.thread15 ], [ %i.v, %bb.f ], [ %i.ac, %bb.h ] ; 2 uses
  %i.bp = icmp ugt i64 %storemerge.i, 8070450532247928832
  %spec.select = select i1 %i.bp, i64 0, i64 %storemerge.i, !prof !158
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %aligned_usize_get.exit, %.thread15, %sz_s2u_compute.exit29.i, %sz_s2u.exit25.i, %bb.l, %bb.g, %bb.b
  %.0 = phi i64 [ %spec.select, %aligned_usize_get.exit ], [ 0, %.thread15 ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %sz_s2u_compute.exit29.i ], [ %.0.i24.i, %sz_s2u.exit25.i ], [ 0, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i32 @duckdb_je_mallctl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 824
  %i.f = load i8, ptr %i.e, align 8, !tbaa !12
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i9 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @duckdb_je_ctl_byname(ptr noundef %.0.i9, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #21
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @duckdb_je_ctl_byname(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @duckdb_je_mallctlnametomib(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 824
  %i.f = load i8, ptr %i.e, align 8, !tbaa !12
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i7 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @duckdb_je_ctl_nametomib(ptr noundef %.0.i7, ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @duckdb_je_ctl_nametomib(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @duckdb_je_mallctlbymib(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 824
  %i.f = load i8, ptr %i.e, align 8, !tbaa !12
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i10 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @duckdb_je_ctl_bymib(ptr noundef %.0.i10, ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #21
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @duckdb_je_ctl_bymib(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @duckdb_je_malloc_stats_print(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.buf_writer_t, align 8       ; 5 uses
  %i.a = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !94, !range !95, !noundef !96
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.e = load i8, ptr %i.d, align 8, !tbaa !12
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #21
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.g = call zeroext i1 @duckdb_je_buf_writer_init(ptr noundef %.0.i, ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef 65536) #21 ; 0 uses
  call void @duckdb_je_stats_print(ptr noundef nonnull @duckdb_je_buf_writer_cb, ptr noundef nonnull %3, ptr noundef %2) #21
  call void @duckdb_je_buf_writer_terminate(ptr noundef %.0.i, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

declare zeroext i1 @duckdb_je_buf_writer_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @duckdb_je_stats_print(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_buf_writer_cb(ptr noundef, ptr noundef) #5

declare void @duckdb_je_buf_writer_terminate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i64 @duckdb_je_malloc_usable_size(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %i.a = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !94, !range !95, !noundef !96
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.e = load i8, ptr %i.d, align 8, !tbaa !12
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #21
  br label %tsdn_fetch.exit.i

tsdn_fetch.exit.i:                                ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %je_malloc_usable_size_impl.exit, label %bb.d, !prof !9

tsdn_fetch.exit.i.thread:                         ; preds = %bb.a
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %je_malloc_usable_size_impl.exit, label %.thread, !prof !9

.thread:                                          ; preds = %tsdn_fetch.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  br label %bb.e

bb.d:                                             ; preds = %tsdn_fetch.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.i = icmp eq ptr %.0.i.i, null
  br i1 %i.i, label %bb.e, label %bb.f, !prof !83

bb.e:                                             ; preds = %.thread, %bb.d
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %1) #21
  br label %arena_salloc.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 440
  br label %arena_salloc.exit

arena_salloc.exit:                                ; preds = %bb.e, %bb.f
  %.0.i.i46 = phi ptr [ null, %bb.e ], [ %.0.i.i, %bb.f ]
  %.0.i.i2 = phi ptr [ %1, %bb.e ], [ %i.j, %bb.f ]
  %i.k = ptrtoint ptr %0 to i64
  %i.l = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %.0.i.i46, ptr noundef nonnull %.0.i.i2, i64 noundef %i.k)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.l, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.m = and i64 %.fca.0.extract.i.i, 4294967295
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !24
  br label %je_malloc_usable_size_impl.exit

je_malloc_usable_size_impl.exit:                  ; preds = %tsdn_fetch.exit.i.thread, %tsdn_fetch.exit.i, %arena_salloc.exit
  %.0.i = phi i64 [ %i.o, %arena_salloc.exit ], [ 0, %tsdn_fetch.exit.i ], [ 0, %tsdn_fetch.exit.i.thread ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @duckdb_je_batch_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.te_ctx_s, align 8           ; 6 uses
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12
  %.not.i131 = icmp eq i8 %i.c, 0
  br i1 %.not.i131, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !11

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.d = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #21 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %tsd_fetch_impl.exit.thread, !prof !10

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i132152 = phi ptr [ %i.d, %tsd_fetch_impl.exit ], [ %i.a, %bb.a ] ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %i.h = icmp sgt i8 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.b, !prof !9

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.i = and i32 %3, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 5 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %2, 4097
  br i1 %i.n, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw nsw i64 %2, 7
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !24
  br label %aligned_usize_get.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.v, label %.critedge, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %2, 1
  %i.x = add i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.x, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.y
  %i.z = lshr i64 1152921504606846975, %i.y
  %i.aa = add nuw nsw i64 %2, %i.z
  %i.ab = and i64 %i.aa, %notmask.i
  br label %aligned_usize_get.exit

bb.g:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %2, 14337
  %i.ad = icmp ult i64 %i.l, 4097
  %or.cond.i = and i1 %i.ac, %i.ad
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i64 %2, -1
  %i.af = add nsw i64 %i.ae, %i.l
  %i.ag = sub nsw i64 0, %i.l
  %i.ah = and i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp samesign ult i64 %i.ah, 4097
  br i1 %i.ai, label %bb.i, label %sz_s2u_compute.exit.i, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.aj = add nuw nsw i64 %i.ah, 6
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !12
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !24
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i:                            ; preds = %bb.h
  %i.aq = shl nuw nsw i64 %i.ah, 1
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ar, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.as
  %i.at = lshr i64 1152921504606846975, %i.as
  %i.au = add nuw nsw i64 %i.ah, %i.at
  %i.av = and i64 %i.au, %notmask.i.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i, %bb.i
  %.0.i24.i = phi i64 [ %i.ap, %bb.i ], [ %i.av, %sz_s2u_compute.exit.i ] ; 2 uses
  %i.aw = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.aw, label %aligned_usize_get.exit, label %.thread153

bb.j:                                             ; preds = %bb.g
  %i.ax = icmp ugt i64 %i.l, 8070450532247928832
  br i1 %i.ax, label %.critedge, label %bb.k, !prof !119

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp ult i64 %2, 16385
  br i1 %i.ay, label %.thread153, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.az, label %sz_s2u_compute.exit29.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.ba = shl nuw i64 %2, 1
  %i.bb = add i64 %i.ba, -1
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bb, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.bc
  %i.bd = lshr i64 1152921504606846975, %i.bc
  %i.be = add nuw nsw i64 %2, %i.bd
  %i.bf = and i64 %i.be, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.m, %bb.l
  %.0.i28.i = phi i64 [ %i.bf, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.bg = icmp ult i64 %.0.i28.i, %2
  br i1 %i.bg, label %.critedge, label %.thread153

.thread153:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.k
  %.0.i134 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.k ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bh = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !24
  %i.bi = add nuw i64 %i.k, 4094
  %i.bj = and i64 %i.bi, 9223372036854771712
  %i.bk = add nsw i64 %i.bj, -4096
  %i.bl = add i64 %i.bk, %.0.i134
  %i.bm = add i64 %i.bl, %i.bh
  %i.bn = icmp ult i64 %i.bm, %.0.i134
  %..0.i = select i1 %i.bn, i64 0, i64 %.0.i134
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread153, %sz_s2u.exit25.i, %bb.d, %bb.f
  %storemerge.i = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.u, %bb.d ], [ %i.ab, %bb.f ], [ %..0.i, %.thread153 ] ; 15 uses
  %i.bo = add i64 %storemerge.i, -8070450532247928833
  %spec.select.i = icmp ult i64 %i.bo, -8070450532247928832
  br i1 %spec.select.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %aligned_usize_get.exit
  %i.bp = icmp samesign ult i64 %storemerge.i, 4097
  br i1 %i.bp, label %bb.o, label %sz_size2index_compute.exit, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.bq = add nuw nsw i64 %storemerge.i, 7
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !12
  %i.bu = zext i8 %i.bt to i32
  br label %sz_size2index.exit

sz_size2index_compute.exit:                       ; preds = %bb.n
  %i.bv = shl nuw i64 %storemerge.i, 1
  %i.bw = add i64 %i.bv, -1
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bw, i1 true) ; 3 uses
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = sub nuw nsw i64 60, %i.bx
  %i.ca = ashr exact i64 -1152921504606846976, %i.bx
  %i.cb = add nsw i64 %storemerge.i, -1
  %i.cc = and i64 %i.ca, %i.cb
  %i.cd = lshr i64 %i.cc, %i.bz
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 3
  %i.cg = shl nuw nsw i32 %i.by, 2
  %reass.sub = sub nsw i32 %i.cf, %i.cg
  %i.ch = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.o, %sz_size2index_compute.exit
  %.0.i125 = phi i32 [ %i.bu, %bb.o ], [ %i.ch, %sz_size2index_compute.exit ] ; 4 uses
  %i.ci = and i32 %3, 64
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = load i8, ptr @duckdb_je_opt_zero, align 1, !range !95
  %i.cl = trunc nuw i8 %i.ck to i1
  %.0.i123 = or i1 %i.cj, %i.cl                   ; 2 uses
  %i.cm = zext nneg i32 %.0.i125 to i64           ; 2 uses
  %i.cn = icmp samesign ugt i32 %.0.i125, 35      ; 2 uses
  br i1 %i.cn, label %bb.q, label %bb.p, !prof !9

bb.p:                                             ; preds = %sz_size2index.exit
  %i.co = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !160
  %i.cr = zext i32 %i.cq to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %sz_size2index.exit
  %.098 = phi i64 [ %i.cr, %bb.p ], [ 0, %sz_size2index.exit ] ; 2 uses
  %.not.i = icmp ult i32 %3, 1048576
  %i.cs = lshr i32 %3, 20
  %i.ct = add nsw i32 %i.cs, -1                   ; 3 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 144
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 256 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 864 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 296
  %i.da = and i32 %3, 1048320                     ; 2 uses
  %i.db = lshr exact i32 %i.da, 8
  %i.dc = add nsw i32 %i.db, -2                   ; 3 uses
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 832 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 840
  %i.dk = insertelement <2 x ptr> poison, ptr %i.de, i64 0
  %i.dl = insertelement <2 x ptr> %i.dk, ptr %i.dg, i64 1
  %i.dm = insertelement <2 x ptr> poison, ptr %i.dh, i64 0
  %i.dn = insertelement <2 x ptr> %i.dm, ptr %i.dj, i64 1
  br label %bb.r

bb.r:                                             ; preds = %select.unfold, %bb.q
  %.0146 = phi ptr [ null, %bb.q ], [ %.5, %select.unfold ] ; 3 uses
  %.0103 = phi i64 [ 0, %bb.q ], [ %.6, %select.unfold ] ; 8 uses
  %.099 = phi ptr [ null, %bb.q ], [ %.3102, %select.unfold ] ; 9 uses
  %i.do = icmp ult i64 %.0103, %1
  br i1 %i.do, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.dp = sub nuw i64 %1, %.0103                  ; 6 uses
  %.not = icmp ult i64 %i.dp, %.098
  %or.cond = select i1 %i.cn, i1 true, i1 %.not, !prof !161
  br i1 %or.cond, label %bb.ae, label %bb.t, !prof !161

bb.t:                                             ; preds = %bb.s
  %i.dq = icmp eq ptr %.0146, null
  br i1 %i.dq, label %bb.u, label %arena_get_from_ind.exit.thread168

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i, label %mallocx_arena_get.exit.thread, label %mallocx_arena_get.exit, !prof !11

mallocx_arena_get.exit:                           ; preds = %bb.u
  %i.dr = load atomic ptr, ptr %i.cv acquire, align 8 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %arena_get.exit, label %arena_get_from_ind.exit.thread168, !prof !9

arena_get.exit:                                   ; preds = %mallocx_arena_get.exit
  %i.dt = call ptr @duckdb_je_arena_init(ptr noundef nonnull %.0.i132152, i32 noundef %i.ct, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !0 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.v, label %arena_get_from_ind.exit.thread168, !prof !10

bb.v:                                             ; preds = %arena_get.exit
  %i.dv = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !8
  %.not.i127 = icmp ult i32 %i.ct, %i.dv
  br i1 %.not.i127, label %mallocx_arena_get.exit.thread, label %.critedge

mallocx_arena_get.exit.thread:                    ; preds = %bb.v, %bb.u
  %i.dw = load i8, ptr %i.f, align 1, !tbaa !12
  %i.dx = icmp sgt i8 %i.dw, 0
  br i1 %i.dx, label %bb.w, label %bb.y, !prof !9

bb.w:                                             ; preds = %mallocx_arena_get.exit.thread
  %i.dy = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.x, label %arena_get_from_ind.exit.thread168, !prof !9

bb.x:                                             ; preds = %bb.w
  %i.ea = call ptr @duckdb_je_arena_init(ptr noundef nonnull %.0.i132152, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !0
  br label %arena_get_from_ind.exit

bb.y:                                             ; preds = %mallocx_arena_get.exit.thread
  %i.eb = load ptr, ptr %i.cw, align 8, !tbaa !33 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.z, label %arena_get_from_ind.exit.thread168, !prof !9

bb.z:                                             ; preds = %bb.y
  %i.ed = call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %.0.i132152, i1 noundef zeroext false) ; 7 uses
  %i.ee = load i8, ptr %.0.i132152, align 8, !tbaa !94, !range !95, !noundef !96
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.aa, label %arena_get_from_ind.exit

bb.aa:                                            ; preds = %bb.z
  %i.eg = load ptr, ptr %i.cz, align 8, !tbaa !134 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.eg, null
  br i1 %.not30.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not31.i.i = icmp eq ptr %i.eg, %i.ed
  br i1 %.not31.i.i, label %arena_get_from_ind.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @duckdb_je_tcache_arena_reassociate(ptr noundef nonnull %.0.i132152, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cy, ptr noundef %i.ed) #21
  br label %arena_get_from_ind.exit

bb.ad:                                            ; preds = %bb.aa
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %.0.i132152, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cy, ptr noundef %i.ed) #21
  br label %arena_get_from_ind.exit

arena_get_from_ind.exit:                          ; preds = %bb.x, %bb.z, %bb.ab, %bb.ac, %bb.ad
  %.1147 = phi ptr [ %i.ed, %bb.z ], [ %i.ed, %bb.ab ], [ %i.ed, %bb.ac ], [ %i.ed, %bb.ad ], [ %i.ea, %bb.x ] ; 2 uses
  %.not195 = icmp eq ptr %.1147, null
  br i1 %.not195, label %select.unfold, label %arena_get_from_ind.exit.thread168

arena_get_from_ind.exit.thread168:                ; preds = %mallocx_arena_get.exit, %bb.y, %bb.w, %arena_get.exit, %arena_get_from_ind.exit, %bb.t
  %.3148 = phi ptr [ %.1147, %arena_get_from_ind.exit ], [ %.0146, %bb.t ], [ %i.eb, %bb.y ], [ %i.dy, %bb.w ], [ %i.dt, %arena_get.exit ], [ %i.dr, %mallocx_arena_get.exit ] ; 2 uses
  %i.eh = urem i64 %i.dp, %.098
  %i.ei = sub nuw i64 %i.dp, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0103
  %i.ek = call i64 @duckdb_je_arena_fill_small_fresh(ptr noundef nonnull %.0.i132152, ptr noundef nonnull %.3148, i32 noundef %.0.i125, ptr noundef %i.ej, i64 noundef %i.ei, i1 noundef zeroext %.0.i123) #21 ; 2 uses
  %i.el = add i64 %i.ek, %.0103
  br label %bb.ae

bb.ae:                                            ; preds = %arena_get_from_ind.exit.thread168, %bb.s
  %.4 = phi ptr [ %.0146, %bb.s ], [ %.3148, %arena_get_from_ind.exit.thread168 ] ; 2 uses
  %.1104 = phi i64 [ %.0103, %bb.s ], [ %i.el, %arena_get_from_ind.exit.thread168 ] ; 8 uses
  %.095 = phi i64 [ 0, %bb.s ], [ %i.ek, %arena_get_from_ind.exit.thread168 ] ; 9 uses
  switch i32 %i.da, label %mallocx_tcache_get.exit [
    i32 0, label %mallocx_tcache_get.exit.thread
    i32 256, label %.critedge119
  ], !prof !128

mallocx_tcache_get.exit:                          ; preds = %bb.ae
  switch i32 %i.dc, label %bb.af [
    i32 -2, label %mallocx_tcache_get.exit.thread
    i32 -1, label %.critedge119
  ]

mallocx_tcache_get.exit.thread:                   ; preds = %bb.ae, %mallocx_tcache_get.exit
  %i.em = load i8, ptr %.0.i132152, align 1, !tbaa !94, !range !95, !noundef !96
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %tcache_get_from_ind.exit.thread177, label %.critedge119

bb.af:                                            ; preds = %mallocx_tcache_get.exit
  %i.eo = load ptr, ptr @duckdb_je_tcaches, align 8, !tbaa !130
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.dd ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !12 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.eq to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.ag
    i64 1, label %bb.ah
  ], !prof !131

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.178, i32 noundef range(i32 0, -2) %i.dc) #21
  call void @abort() #22
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.er = call ptr @duckdb_je_tcache_create_explicit(ptr noundef nonnull %.0.i132152) #21 ; 2 uses
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !12
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.ah, %bb.af
  %i.es = phi ptr [ %i.er, %bb.ah ], [ %i.eq, %bb.af ] ; 2 uses
  %.not113 = icmp eq ptr %i.es, null
  br i1 %.not113, label %.critedge119, label %tcache_get_from_ind.exit.thread177, !prof !83

tcache_get_from_ind.exit.thread177:               ; preds = %mallocx_tcache_get.exit.thread, %tcache_get_from_ind.exit
  %.0.i180 = phi ptr [ %i.es, %tcache_get_from_ind.exit ], [ %i.cy, %mallocx_tcache_get.exit.thread ] ; 2 uses
  %i.et = load ptr, ptr %.0.i180, align 8, !tbaa !99
  %i.eu = getelementptr i8, ptr %i.et, i64 48
  %.val136 = load i32, ptr %i.eu, align 8, !tbaa !106
  %i.ev = icmp ult i32 %.0.i125, %.val136
  br i1 %i.ev, label %bb.ai, label %.critedge119, !prof !11

bb.ai:                                            ; preds = %tcache_get_from_ind.exit.thread177
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i180, i64 8
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.cm ; 2 uses
  %.val = load ptr, ptr %i.ex, align 8, !tbaa !90
  %i.ey = icmp ne ptr %.val, @duckdb_je_disabled_bin
  %i.ez = icmp ult i64 %.095, %i.dp
  %or.cond120 = select i1 %i.ey, i1 %i.ez, i1 false, !prof !13
  br i1 %or.cond120, label %bb.aj, label %.critedge119, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.fa = icmp eq ptr %.099, null
  %.1100 = select i1 %i.fa, ptr %i.ex, ptr %.099  ; 7 uses
  %i.fb = sub nuw i64 %i.dp, %.095
  %i.fc = getelementptr [8 x i8], ptr %0, i64 %.1104 ; 10 uses
  %.1100.val = load ptr, ptr %.1100, align 8, !tbaa !90 ; 2 uses
  %i.fd = getelementptr i8, ptr %.1100, i64 20    ; 2 uses
  %.1100.val138 = load i16, ptr %i.fd, align 4, !tbaa !93
  %i.fe = ptrtoint ptr %.1100.val to i64
  %i.ff = trunc i64 %i.fe to i16
  %i.fg = sub i16 %.1100.val138, %i.ff
  %i.fh = lshr i16 %i.fg, 3
  %i.fi = zext nneg i16 %i.fh to i64
  %spec.select.i128196 = call i64 @llvm.umin.i64(i64 %i.fb, i64 %i.fi) ; 9 uses
  %i.fj = shl nuw nsw i64 %spec.select.i128196, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.fc, ptr align 8 %.1100.val, i64 %i.fj, i1 false)
  %i.fk = load ptr, ptr %.1100, align 8, !tbaa !90
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %spec.select.i128196 ; 2 uses
  store ptr %i.fl, ptr %.1100, align 8, !tbaa !90
  %.val3.i = load i16, ptr %i.fd, align 4, !tbaa !93 ; 2 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = trunc i64 %i.fm to i16                  ; 2 uses
  %i.fo = sub i16 %.val3.i, %i.fn
  %i.fp = lshr i16 %i.fo, 3
  %i.fq = getelementptr i8, ptr %.1100, i64 16    ; 2 uses
  %.val4.i = load i16, ptr %i.fq, align 8, !tbaa !92
  %i.fr = sub i16 %.val3.i, %.val4.i
  %i.fs = lshr i16 %i.fr, 3
  %i.ft = icmp samesign ult i16 %i.fp, %i.fs
  br i1 %i.ft, label %bb.ak, label %cache_bin_low_water_adjust.exit

bb.ak:                                            ; preds = %bb.aj
  store i16 %i.fn, ptr %i.fq, align 8, !tbaa !92
  br label %cache_bin_low_water_adjust.exit

cache_bin_low_water_adjust.exit:                  ; preds = %bb.aj, %bb.ak
  %i.fu = getelementptr inbounds nuw i8, ptr %.1100, i64 8 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !97
  %i.fw = add i64 %i.fv, %spec.select.i128196
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !97
  %i.fx = icmp ne i64 %spec.select.i128196, 0
  %or.cond198 = and i1 %.0.i123, %i.fx
  br i1 %or.cond198, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %cache_bin_low_water_adjust.exit
  %xtraiter = and i64 %spec.select.i128196, 7     ; 3 uses
  %i.fy = icmp samesign ult i64 %spec.select.i128196, 8
  br i1 %i.fy, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select.i128196, 8184
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0197 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gw, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.fz = getelementptr [8 x i8], ptr %i.fc, i64 %.0197
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.ga, i8 0, i64 %storemerge.i, i1 false)
  %i.gb = getelementptr [8 x i8], ptr %i.fc, i64 %.0197
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gd, i8 0, i64 %storemerge.i, i1 false)
  %i.ge = getelementptr [8 x i8], ptr %i.fc, i64 %.0197
  %i.gf = getelementptr i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gg, i8 0, i64 %storemerge.i, i1 false)
  %i.gh = getelementptr [8 x i8], ptr %i.fc, i64 %.0197
  %i.gi = getelementptr i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gj, i8 0, i64 %storemerge.i, i1 false)
  %i.gk = getelementptr [8 x i8], ptr %i.fc, i64 %.0197
  %i.gl = getelementptr i8, ptr %i.gk, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gm, i8 0, i64 %storemerge.i, i1 false)
  %i.gn = getelementptr [8 x i8], ptr %i.fc, i64 %.0197
  %i.go = getelementptr i8, ptr %i.gn, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gp, i8 0, i64 %storemerge.i, i1 false)
  %i.gq = getelementptr [8 x i8], ptr %i.fc, i64 %.0197
  %i.gr = getelementptr i8, ptr %i.gq, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gs, i8 0, i64 %storemerge.i, i1 false)
  %i.gt = getelementptr [8 x i8], ptr %i.fc, i64 %.0197
  %i.gu = getelementptr i8, ptr %i.gt, i64 56
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gv, i8 0, i64 %storemerge.i, i1 false)
  %i.gw = add nuw nsw i64 %.0197, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0197.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gw, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod218 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod218)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0197.epil = phi i64 [ %i.gz, %.lr.ph.epil ], [ %.0197.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gx = getelementptr [8 x i8], ptr %i.fc, i64 %.0197.epil
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gy, i8 0, i64 %storemerge.i, i1 false)
  %i.gz = add nuw nsw i64 %.0197.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !159

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %cache_bin_low_water_adjust.exit
  %i.ha = add i64 %spec.select.i128196, %.095
  %i.hb = add i64 %spec.select.i128196, %.1104
  br label %.critedge119

.critedge119:                                     ; preds = %bb.ae, %mallocx_tcache_get.exit.thread, %mallocx_tcache_get.exit, %tcache_get_from_ind.exit.thread177, %tcache_get_from_ind.exit, %.loopexit, %bb.ai
  %.2105 = phi i64 [ %i.hb, %.loopexit ], [ %.1104, %tcache_get_from_ind.exit.thread177 ], [ %.1104, %bb.ai ], [ %.1104, %tcache_get_from_ind.exit ], [ %.1104, %mallocx_tcache_get.exit ], [ %.1104, %mallocx_tcache_get.exit.thread ], [ %.1104, %bb.ae ] ; 4 uses
  %.2101 = phi ptr [ %.1100, %.loopexit ], [ %.099, %tcache_get_from_ind.exit.thread177 ], [ %.099, %bb.ai ], [ %.099, %tcache_get_from_ind.exit ], [ %.099, %mallocx_tcache_get.exit ], [ %.099, %mallocx_tcache_get.exit.thread ], [ %.099, %bb.ae ] ; 2 uses
  %.196 = phi i64 [ %i.ha, %.loopexit ], [ %.095, %tcache_get_from_ind.exit.thread177 ], [ %.095, %bb.ai ], [ %.095, %tcache_get_from_ind.exit ], [ %.095, %mallocx_tcache_get.exit ], [ %.095, %mallocx_tcache_get.exit.thread ], [ %.095, %bb.ae ] ; 2 uses
  %i.hc = mul i64 %.196, %storemerge.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i8 1, ptr %4, align 8, !tbaa !110
  store <2 x ptr> %i.dl, ptr %i.df, align 8, !tbaa !163
  store <2 x ptr> %i.dn, ptr %i.di, align 8, !tbaa !163
  %i.hd = load i64, ptr %i.de, align 8, !tbaa !24 ; 2 uses
  %i.he = add i64 %i.hd, %i.hc
  store i64 %i.he, ptr %i.de, align 8, !tbaa !24
  %i.hf = load i64, ptr %i.dh, align 8, !tbaa !24
  %i.hg = sub i64 %i.hf, %i.hd
  %i.hh = icmp ult i64 %i.hc, %i.hg
  br i1 %i.hh, label %te_event_advance.exit, label %bb.al, !prof !11

bb.al:                                            ; preds = %.critedge119
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i132152, ptr noundef nonnull %4) #21
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %.critedge119, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.hi = icmp ult i64 %.196, %i.dp
  br i1 %i.hi, label %bb.am, label %select.unfold

bb.am:                                            ; preds = %te_event_advance.exit
  %i.hj = call noalias ptr @duckdb_je_mallocx(i64 noundef %2, i32 noundef %3) #24 ; 2 uses
  %.not115 = icmp eq ptr %i.hj, null
  br i1 %.not115, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hk = add i64 %.2105, 1
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2105
  store ptr %i.hj, ptr %i.hl, align 8, !tbaa !91
  br label %select.unfold

select.unfold:                                    ; preds = %bb.an, %te_event_advance.exit, %arena_get_from_ind.exit
  %.5 = phi ptr [ %.4, %bb.an ], [ %.4, %te_event_advance.exit ], [ null, %arena_get_from_ind.exit ]
  %.6 = phi i64 [ %i.hk, %bb.an ], [ %.2105, %te_event_advance.exit ], [ %.0103, %arena_get_from_ind.exit ] ; 2 uses
  %.3102 = phi ptr [ %.2101, %bb.an ], [ %.2101, %te_event_advance.exit ], [ %.099, %arena_get_from_ind.exit ]
  %i.hm = phi i1 [ true, %bb.an ], [ true, %te_event_advance.exit ], [ false, %arena_get_from_ind.exit ]
  br i1 %i.hm, label %bb.r, label %.critedge

.critedge:                                        ; preds = %bb.am, %bb.v, %select.unfold, %bb.r, %sz_s2u_compute.exit29.i, %bb.j, %bb.e, %tsd_fetch_impl.exit, %aligned_usize_get.exit, %tsd_fetch_impl.exit.thread
  %.7 = phi i64 [ 0, %tsd_fetch_impl.exit.thread ], [ 0, %aligned_usize_get.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %tsd_fetch_impl.exit ], [ 0, %sz_s2u_compute.exit29.i ], [ %.2105, %bb.am ], [ %.0103, %bb.v ], [ %.6, %select.unfold ], [ %.0103, %bb.r ]
  ret i64 %.7
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #11 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !0
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %arena_choose_impl.exit, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !94, !range !95, !noundef !96
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %arena_choose_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134  ; 2 uses
  %.not30.i = icmp eq ptr %i.p, null
  br i1 %.not30.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not31.i = icmp eq ptr %i.p, %i.j
  br i1 %.not31.i, label %arena_choose_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @duckdb_je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #21
  br label %arena_choose_impl.exit

bb.j:                                             ; preds = %bb.g
  tail call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #21
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j
  %.025.i = phi ptr [ %1, %bb.a ], [ %i.j, %bb.j ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.025.i
}

declare i64 @duckdb_je_arena_fill_small_fresh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal void @jemalloc_constructor() #2 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 84) #21 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  %i.c = trunc i64 %i.a to i32
  %i.d = select i1 %i.b, i32 1, i32 %i.c          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (...) @duckdb_malloc_ncpus() #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %.0 = zext i32 %.0.in to i64                    ; 2 uses
  %i.g = icmp eq i32 %.0.in, 0
  %spec.store.select = select i1 %i.g, i64 1, i64 %.0
  %i.h = lshr i64 %.0, 4
  %spec.store.select1 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @duckdb_je_JE_MALLOC_CONF_BUFFER, i64 noundef 200, ptr noundef nonnull @.str.78, i64 noundef 1000, i64 noundef 1000, i64 noundef %spec.store.select, i64 noundef %spec.store.select1) #21 ; 0 uses
  store ptr @duckdb_je_JE_MALLOC_CONF_BUFFER, ptr @duckdb_je_malloc_conf, align 8, !tbaa !136
  %i.j = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %malloc_init.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc zeroext i1 @malloc_init_hard() ; 0 uses
  br label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.d, %bb.c
  ret void
}

declare i32 @duckdb_malloc_ncpus(...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define void @duckdb_je_jemalloc_prefork() #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 19 uses
  %i.e = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 2624
  tail call void @duckdb_je_witness_prefork(ptr noundef nonnull %i.f) #21
  tail call void @duckdb_je_ctl_prefork(ptr noundef %.0.i) #21
  tail call void @duckdb_je_tcache_prefork(ptr noundef %.0.i) #21
  tail call void @duckdb_je_malloc_mutex_prefork(ptr noundef %.0.i, ptr noundef nonnull @duckdb_je_arenas_lock) #21
  tail call void @duckdb_je_background_thread_prefork0(ptr noundef %.0.i) #21
  tail call void @duckdb_je_prof_prefork0(ptr noundef %.0.i) #21
  tail call void @duckdb_je_background_thread_prefork1(ptr noundef %.0.i) #21
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03541 = phi i32 [ %i.j, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread, label %arena_get.exit, !prof !9

arena_get.exit:                                   ; preds = %bb.c
  switch i32 %.03541, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
  ]

bb.d:                                             ; preds = %arena_get.exit
  tail call void @duckdb_je_arena_prefork0(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
end_hunk_4
begin_hunk_5_@malloc_init_hard_a0_locked:bb.a
.thread.sink.split.i.i:                           ; preds = %bb.n, %bb.m
  %.sink.i.i = phi i8 [ 1, %bb.m ], [ 0, %bb.n ]
  store i8 %.sink.i.i, ptr @duckdb_je_opt_confirm_conf, align 1, !tbaa !94
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.sink.split.i.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !12
  %.not.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.critedge.i.i:                                    ; preds = %.thread.i.i, %.lr.ph.i.i, %.preheader.i.i
  call fastcc void @validate_hpa_settings()
  %i.am = load i8, ptr @duckdb_je_opt_abort_conf, align 1, !tbaa !94, !range !95, !noundef !96
  %i.an = trunc nuw i8 %i.am to i1
  %.b.i.i = load i1, ptr @had_conf_error, align 1
  %or.cond331.i.i = select i1 %i.an, i1 %.b.i.i, i1 false
  br i1 %or.cond331.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge.i.i
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.176) #21
  call void @abort()
  unreachable

bb.p:                                             ; preds = %.critedge.i.i, %obtain_malloc_conf.exit.i.i, %obtain_malloc_conf.exit.thread.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 5
  br i1 %exitcond.not.i.i, label %malloc_conf_init_helper.specialized.1.exit.i, label %bb.b

malloc_conf_init_helper.specialized.1.exit.i:     ; preds = %bb.p
  store atomic i8 1, ptr @duckdb_je_log_init_done release, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call fastcc void @malloc_conf_init_helper(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i1 noundef zeroext false, ptr noundef %i.f, ptr noundef null)
  %i.ao = load i8, ptr @duckdb_je_opt_prof_leak_error, align 1, !tbaa !94, !range !95, !noundef !96
  %i.ap = trunc nuw i8 %i.ao to i1
  %.not.i4.i = xor i1 %i.ap, true
  %i.aq = load i8, ptr @duckdb_je_opt_prof_final, align 1, !range !95
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i.i = select i1 %.not.i4.i, i1 true, i1 %i.ar
  br i1 %or.cond.i.i, label %malloc_conf_init_check_deps.exit.thread.i, label %malloc_conf_init_check_deps.exit.i

malloc_conf_init_check_deps.exit.thread.i:        ; preds = %malloc_conf_init_helper.specialized.1.exit.i
  store i32 0, ptr @duckdb_je_opt_debug_double_free_max_scan, align 4, !tbaa !8
  br label %malloc_conf_init.exit

malloc_conf_init_check_deps.exit.i:               ; preds = %malloc_conf_init_helper.specialized.1.exit.i
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.175) #21
  %i.as = load i8, ptr @duckdb_je_opt_abort_conf, align 1, !range !95
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.q, label %malloc_conf_init.exit

bb.q:                                             ; preds = %malloc_conf_init_check_deps.exit.i
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.176) #21
  call void @abort()
  unreachable

malloc_conf_init.exit:                            ; preds = %malloc_conf_init_check_deps.exit.thread.i, %malloc_conf_init_check_deps.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  %i.au = load i64, ptr @duckdb_je_opt_lg_san_uaf_align, align 8, !tbaa !24
  call void @duckdb_je_san_init(i64 noundef %i.au) #21
  %i.av = load i8, ptr @duckdb_je_opt_cache_oblivious, align 1, !tbaa !94, !range !95, !noundef !96
  %i.aw = trunc nuw i8 %i.av to i1
  call void @duckdb_je_sz_boot(ptr noundef nonnull %0, i1 noundef zeroext %i.aw) #21
  call void @duckdb_je_bin_info_boot(ptr noundef nonnull %0, ptr noundef nonnull %i.g) #21
  %i.ax = load i8, ptr @duckdb_je_opt_stats_print, align 1, !tbaa !94, !range !95, !noundef !96
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.r, label %bb.u

bb.r:                                             ; preds = %malloc_conf_init.exit
  %i.az = call i32 @atexit(ptr noundef nonnull @stats_print_atexit) #21
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @duckdb_je_malloc_write(ptr noundef nonnull @.str.80) #21
  %i.ba = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !94, !range !95, !noundef !96
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @abort() #22
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.s, %malloc_conf_init.exit
  %i.bc = call zeroext i1 @duckdb_je_stats_boot() #21
  br i1 %i.bc, label %bb.ar, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = call zeroext i1 @duckdb_je_pages_boot() #21
  br i1 %i.bd, label %bb.ar, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = call zeroext i1 @duckdb_je_base_boot(ptr noundef null) #21
  br i1 %i.be, label %bb.ar, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = call ptr @duckdb_je_b0get() #21
  %i.bg = call zeroext i1 @duckdb_je_emap_init(ptr noundef nonnull @duckdb_je_arena_emap_global, ptr noundef %i.bf, i1 noundef zeroext true) #21
  br i1 %i.bg, label %bb.ar, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = call zeroext i1 @duckdb_je_extent_boot() #21
  br i1 %i.bh, label %bb.ar, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = call zeroext i1 @duckdb_je_ctl_boot() #21
  br i1 %i.bi, label %bb.ar, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = load i8, ptr @duckdb_je_opt_hpa, align 1, !tbaa !94, !range !95, !noundef !96
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.bl = call zeroext i1 @duckdb_je_hpa_supported() #21
  br i1 %i.bl, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = load i8, ptr @duckdb_je_opt_abort_conf, align 1, !tbaa !94, !range !95, !noundef !96
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = select i1 %i.bn, ptr @.str.82, ptr @.str.83
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.81, ptr noundef nonnull %i.bo) #21
  %i.bp = load i8, ptr @duckdb_je_opt_abort_conf, align 1, !tbaa !94, !range !95, !noundef !96
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.176) #21
  call void @abort()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  store i8 0, ptr @duckdb_je_opt_hpa, align 1, !tbaa !94
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab, %bb.aa
  %i.br = call ptr @duckdb_je_b0get() #21
  %i.bs = load i8, ptr @duckdb_je_opt_hpa, align 1, !tbaa !94, !range !95, !noundef !96
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = call zeroext i1 @duckdb_je_arena_boot(ptr noundef nonnull %0, ptr noundef %i.br, i1 noundef zeroext %i.bt) #21
  br i1 %i.bu, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bv = call ptr @duckdb_je_b0get() #21
  %i.bw = call zeroext i1 @duckdb_je_tcache_boot(ptr noundef null, ptr noundef %i.bv) #21
  br i1 %i.bw, label %bb.ar, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = call zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef nonnull @duckdb_je_arenas_lock, ptr noundef nonnull @.str.84, i32 noundef 4, i32 noundef 0) #21
  br i1 %i.bx, label %bb.ar, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = call zeroext i1 @duckdb_je_hook_boot() #21 ; 0 uses
  store i32 1, ptr @duckdb_je_narenas_auto, align 4, !tbaa !8
  store i32 2, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !8
  store i64 0, ptr @duckdb_je_arenas, align 64
  %i.bz = call ptr @duckdb_je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default)
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.ar, label %arena_get.exit

arena_get.exit:                                   ; preds = %bb.ai
  %i.cb = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64
  store ptr %i.cb, ptr @a0, align 8, !tbaa !33
  %i.cc = load i8, ptr @duckdb_je_opt_hpa, align 1, !tbaa !94, !range !95, !noundef !96
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %arena_get.exit
  %i.ce = call zeroext i1 @duckdb_je_hpa_supported() #21
  br i1 %i.ce, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cf = load i8, ptr @duckdb_je_opt_abort_conf, align 1, !tbaa !94, !range !95, !noundef !96
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = select i1 %i.cg, ptr @.str.82, ptr @.str.83
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.81, ptr noundef nonnull %i.ch) #21
  %i.ci = load i8, ptr @duckdb_je_opt_abort_conf, align 1, !tbaa !94, !range !95, !noundef !96
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.176) #21
  call void @abort()
  unreachable

bb.am:                                            ; preds = %bb.ak
  store i8 0, ptr @duckdb_je_opt_hpa, align 1, !tbaa !94
  br label %.thread

bb.an:                                            ; preds = %bb.aj
  %.pre = load i8, ptr @duckdb_je_opt_hpa, align 1, !tbaa !94, !range !95
  %i.ck = trunc nuw i8 %.pre to i1
  br i1 %i.ck, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) @duckdb_je_opt_hpa_opts, i64 48, i1 false), !tbaa.struct !164
  %i.cl = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !95, !noundef !96
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.cl, ptr %i.cm, align 4, !tbaa !165
  %i.cn = load ptr, ptr @a0, align 8, !tbaa !33
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 10664
  %i.cp = call zeroext i1 @duckdb_je_pa_shard_enable_hpa(ptr noundef null, ptr noundef nonnull %i.co, ptr noundef nonnull %1, ptr noundef nonnull @duckdb_je_opt_hpa_sec_opts) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %i.cp, label %bb.ar, label %.thread

.thread:                                          ; preds = %arena_get.exit, %bb.an, %bb.ao, %bb.am
  store i32 2, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !8
  %i.cq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #25 ; 2 uses
  %.not10 = icmp eq i64 %i.cq, 0
  br i1 %.not10, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.cr = add i64 %i.cq, 1                        ; 2 uses
  %i.cs = call fastcc ptr @a0ialloc(i64 noundef %i.cr, i1 noundef zeroext false, i1 noundef zeroext true) ; 3 uses
  %.not11 = icmp eq ptr %i.cs, null
  br i1 %.not11, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull align 16 %i.h, i64 %i.cr, i1 false)
  store ptr %i.cs, ptr @duckdb_je_opt_malloc_conf_symlink, align 8, !tbaa !136
  br label %bb.ar

bb.ar:                                            ; preds = %.thread, %bb.aq, %bb.ap, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.ao
  %.1 = phi i1 [ true, %bb.ao ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.af ], [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.ai ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #14

declare void @duckdb_je_sc_boot(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_bin_shard_sizes_boot(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_san_init(i64 noundef) local_unnamed_addr #5

declare void @duckdb_je_sz_boot(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @duckdb_je_bin_info_boot(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal void @stats_print_atexit() #2 {
bb.a:
  %0 = alloca %struct.buf_writer_t, align 8       ; 5 uses
  %i.a = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !94, !range !95, !noundef !96
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.e = load i8, ptr %i.d, align 8, !tbaa !12
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #21
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.g = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %tsdn_fetch.exit
  %wide.trip.count = zext i32 %i.g to i64
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph32.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 10 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %arena_get.exit.thread, label %arena_get.exit, !prof !9

arena_get.exit:                                   ; preds = %.lr.ph32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 10496 ; 2 uses
  %i.l = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.k) #21
  %.not.i24 = icmp eq i32 %i.l, 0
  br i1 %.not.i24, label %bb.d, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %arena_get.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 10424
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.m) #21
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 10488
  store atomic i8 1, ptr %i.n monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %atomic_store_b.exit.i, %arena_get.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 10480 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !29
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 10472 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %.not.i.i = icmp eq ptr %i.s, %.0.i
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 10464 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !31
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 10408 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !166  ; 2 uses
  %.not2029 = icmp eq ptr %i.x, null
  br i1 %.not2029, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %malloc_mutex_lock.exit, %select.unfold
  %.030 = phi ptr [ %i.aa, %select.unfold ], [ %i.x, %malloc_mutex_lock.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.030, i64 176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !167
  tail call void @duckdb_je_tcache_stats_merge(ptr noundef %.0.i, ptr noundef %i.z, ptr noundef nonnull %i.i) #21
  %i.aa = load ptr, ptr %.030, align 8, !tbaa !168 ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !166
  %.not21 = icmp eq ptr %i.aa, %i.ab
  %.not2036 = icmp eq ptr %i.aa, null
  %.not20 = or i1 %.not21, %.not2036
  br i1 %.not20, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %malloc_mutex_lock.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 10488
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #21 ; 0 uses
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph32, %select.unfold._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph32

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsdn_fetch.exit
  %i.ae = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !94, !range !95, !noundef !96
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %duckdb_je_malloc_stats_print.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ag = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 824
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !12
  %.not.i.i26 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i26, label %duckdb_je_malloc_stats_print.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.ag, i1 noundef zeroext false) #21
  br label %duckdb_je_malloc_stats_print.exit

duckdb_je_malloc_stats_print.exit:                ; preds = %._crit_edge, %bb.f, %bb.g
  %.0.i.i = phi ptr [ null, %._crit_edge ], [ %i.aj, %bb.g ], [ %i.ag, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  %i.ak = call zeroext i1 @duckdb_je_buf_writer_init(ptr noundef %.0.i.i, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef 65536) #21 ; 0 uses
  call void @duckdb_je_stats_print(ptr noundef nonnull @duckdb_je_buf_writer_cb, ptr noundef nonnull %0, ptr noundef nonnull @duckdb_je_opt_stats_print_opts) #21
  call void @duckdb_je_buf_writer_terminate(ptr noundef %.0.i.i, ptr noundef nonnull %0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  ret void
}

declare void @duckdb_je_malloc_write(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_stats_boot() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_pages_boot() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_base_boot(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_emap_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @duckdb_je_b0get() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_extent_boot() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_ctl_boot() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_hpa_supported() local_unnamed_addr #5

declare void @duckdb_je_malloc_printf(ptr noundef, ...) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_arena_boot(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_tcache_boot(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_hook_boot() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare zeroext i1 @duckdb_je_pa_shard_enable_hpa(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal fastcc void @malloc_conf_init_helper(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 84 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 81 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca ptr, align 8                      ; 4 uses
  %i.w = alloca ptr, align 8                      ; 4 uses
  %i.x = alloca ptr, align 8                      ; 4 uses
  %i.y = alloca ptr, align 8                      ; 4 uses
  %i.z = alloca ptr, align 8                      ; 4 uses
  %i.aa = alloca ptr, align 8                     ; 4 uses
  %i.ab = alloca ptr, align 8                     ; 4 uses
  %i.ac = alloca ptr, align 8                     ; 4 uses
  %i.ad = alloca ptr, align 8                     ; 4 uses
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca ptr, align 8                     ; 4 uses
  %i.ag = alloca ptr, align 8                     ; 4 uses
  %i.ah = alloca ptr, align 8                     ; 4 uses
  %i.ai = alloca ptr, align 8                     ; 4 uses
  %i.aj = alloca ptr, align 8                     ; 4 uses
  %i.ak = alloca i32, align 4                     ; 4 uses
  %i.al = alloca ptr, align 8                     ; 4 uses
  %i.am = alloca ptr, align 8                     ; 4 uses
  %i.an = alloca ptr, align 8                     ; 4 uses
  %i.ao = alloca i32, align 4                     ; 4 uses
  %i.ap = alloca ptr, align 8                     ; 4 uses
  %i.aq = alloca ptr, align 8                     ; 4 uses
  %i.ar = alloca ptr, align 8                     ; 4 uses
  %i.as = alloca ptr, align 8                     ; 4 uses
  %i.at = alloca ptr, align 8                     ; 4 uses
  %i.au = alloca ptr, align 8                     ; 4 uses
  %i.av = alloca ptr, align 8                     ; 4 uses
  %i.aw = alloca i64, align 8                     ; 5 uses
  %i.ax = alloca i64, align 8                     ; 5 uses
  %i.ay = alloca i64, align 8                     ; 5 uses
  %i.az = alloca i64, align 8                     ; 5 uses
  %i.ba = alloca ptr, align 8                     ; 4 uses
  %i.bb = alloca ptr, align 8                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %.not937 = xor i1 %2, true                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.qs
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.qs ] ; 6 uses
  br i1 %2, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.bc, label %bb.k [
    i32 0, label %.thread
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.h
    i32 4, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.bd = load ptr, ptr @duckdb_je_malloc_conf, align 8, !tbaa !136
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.be = tail call ptr @__errno_location() #23   ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bg = call i64 @readlink(ptr noundef nonnull @.str.165, ptr noundef %4, i64 noundef 4096) #21 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, -1
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i64 [ 0, %bb.f ], [ %i.bg, %bb.e ]
  %i.bi = getelementptr inbounds i8, ptr %4, i64 %.0.i
  store i8 0, ptr %i.bi, align 1, !tbaa !12
  br label %.thread

bb.h:                                             ; preds = %bb.c
  %i.bj = call noundef ptr @getenv(ptr noundef nonnull @.str.166) #21 ; 3 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bj, ptr @duckdb_je_opt_malloc_conf_env_var, align 8, !tbaa !136
  br label %.thread

bb.j:                                             ; preds = %bb.c
  %i.bk = load ptr, ptr @duckdb_je_malloc_conf_2_conf_harder, align 8, !tbaa !136
  br label %.thread

bb.k:                                             ; preds = %bb.c
  unreachable

.thread:                                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c
  %.1.i = phi ptr [ %i.bk, %bb.j ], [ %i.bd, %bb.d ], [ @.str.91, %bb.c ], [ %4, %bb.g ], [ %i.bj, %bb.i ], [ null, %bb.h ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %.1.i, ptr %i.bl, align 8, !tbaa !136
  store ptr %.1.i, ptr %i.a, align 8, !tbaa !136
  br label %bb.n
end_hunk_5
begin_hunk_6_@malloc_conf_init_helper:bb.a
bb.lg:                                            ; preds = %.thread1135
  %i.adi = icmp eq i64 %i.bz, 17                  ; 2 uses
  br i1 %i.adi, label %bb.lh, label %bb.ln

bb.lh:                                            ; preds = %bb.lg
  %i.adj = call i32 @strncmp(ptr noundef nonnull dereferenceable(18) @.str.141, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 17) #25
  %i.adk = icmp eq i32 %i.adj, 0
  br i1 %i.adk, label %bb.li, label %.thread1163

bb.li:                                            ; preds = %bb.lh
  %i.adl = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  %.pre1377 = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  switch i64 %i.adl, label %.thread1147 [
    i64 4, label %bb.lj
    i64 5, label %bb.lk
  ]

bb.lj:                                            ; preds = %bb.li
  %i.adm = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.93, ptr noundef nonnull dereferenceable(1) %.pre1377, i64 noundef 4) #25
  %i.adn = icmp eq i32 %i.adm, 0
  br i1 %i.adn, label %bb.ll, label %.thread1147

bb.lk:                                            ; preds = %bb.li
  %i.ado = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str, ptr noundef nonnull dereferenceable(1) %.pre1377, i64 noundef 5) #25
  %i.adp = icmp eq i32 %i.ado, 0
  br i1 %i.adp, label %bb.ll, label %.thread1147

.thread1147:                                      ; preds = %bb.li, %bb.lk, %bb.lj
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef 17, ptr noundef %.pre1377, i64 noundef %i.adl)
  br label %malloc_conf_error.exit.thread

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %storemerge1256 = phi i8 [ 1, %bb.lj ], [ 0, %bb.lk ]
  store i8 %storemerge1256, ptr @duckdb_je_opt_background_thread, align 1, !tbaa !94
  %i.adq = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.adr = trunc nuw i8 %i.adq to i1
  br i1 %i.adr, label %bb.lm, label %malloc_conf_error.exit.thread

bb.lm:                                            ; preds = %bb.ll
  %i.ads = trunc nuw nsw i64 %i.adl to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef 17, ptr noundef nonnull %i.er, i32 noundef %i.ads, ptr noundef nonnull %.pre1377) #21
  br label %malloc_conf_error.exit.thread

bb.ln:                                            ; preds = %bb.lg
  switch i64 %i.bz, label %.thread1157 [
    i64 22, label %bb.lo
    i64 3, label %sub_0
  ]

bb.lo:                                            ; preds = %bb.ln
  %i.adt = call i32 @strncmp(ptr noundef nonnull dereferenceable(23) @.str.142, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 22) #25
  %i.adu = icmp eq i32 %i.adt, 0
  br i1 %i.adu, label %bb.lp, label %.thread1163

bb.lp:                                            ; preds = %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #21
  %i.adv = tail call ptr @__errno_location() #23  ; 2 uses
  store i32 0, ptr %i.adv, align 4, !tbaa !8
  %i.adw = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  %i.adx = call i64 @duckdb_je_malloc_strtoumax(ptr noundef %i.adw, ptr noundef nonnull %i.ah, i32 noundef 0) #21 ; 3 uses
  %i.ady = load i32, ptr %i.adv, align 4, !tbaa !8
  %.not833 = icmp eq i32 %i.ady, 0
  %.pre1346 = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  br i1 %.not833, label %bb.lq, label %.thread1152

bb.lq:                                            ; preds = %bb.lp
  %i.adz = load ptr, ptr %i.ah, align 8, !tbaa !136
  %i.aea = ptrtoint ptr %i.adz to i64
  %i.aeb = ptrtoint ptr %i.adw to i64
  %i.aec = sub i64 %i.aea, %i.aeb
  %.not834 = icmp eq i64 %i.aec, %.pre1346
  br i1 %.not834, label %bb.lr, label %.thread1152

.thread1152:                                      ; preds = %bb.lq, %bb.lp
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef 22, ptr noundef %i.adw, i64 noundef %.pre1346)
  br label %bb.lv

bb.lr:                                            ; preds = %bb.lq
  %i.aed = icmp eq i64 %i.adx, 0
  br i1 %i.aed, label %.sink.split, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.aee = load i64, ptr @duckdb_je_opt_max_background_threads, align 8, !tbaa !24
  %i.aef = icmp ugt i64 %i.adx, %i.aee
  br i1 %i.aef, label %bb.lt, label %.sink.split

.sink.split:                                      ; preds = %bb.ls, %bb.lr
  %.sink1431 = phi i64 [ 1, %bb.lr ], [ %i.adx, %bb.ls ]
  store i64 %.sink1431, ptr @duckdb_je_opt_max_background_threads, align 8, !tbaa !24
  br label %bb.lt

bb.lt:                                            ; preds = %.sink.split, %bb.ls
  %i.aeg = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.aeh = trunc nuw i8 %i.aeg to i1
  br i1 %i.aeh, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %bb.lt
  %i.aei = trunc i64 %.pre1346 to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef 22, ptr noundef nonnull %i.er, i32 noundef %i.aei, ptr noundef %i.adw) #21
  br label %bb.lv

bb.lv:                                            ; preds = %.thread1152, %bb.lu, %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #21
  br label %malloc_conf_error.exit.thread

sub_0:                                            ; preds = %bb.ln
  %i.aej = load i8, ptr %i.er, align 1            ; 2 uses
  %i.aek = zext i8 %i.aej to i32
  %i.ael = sub nsw i32 104, %i.aek
  %.not = icmp eq i8 %i.aej, 104
  br i1 %.not, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.aem = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  %i.aen = load i8, ptr %i.aem, align 1           ; 2 uses
  %i.aeo = zext i8 %i.aen to i32
  %i.aep = sub nsw i32 112, %i.aeo
  %.not1297 = icmp eq i8 %i.aen, 112
  br i1 %.not1297, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %i.aer = load i8, ptr %i.aeq, align 1
  %i.aes = zext i8 %i.aer to i32
  %i.aet = sub nsw i32 97, %i.aes
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.aeu = phi i32 [ %i.ael, %sub_0 ], [ %i.aep, %sub_1 ], [ %i.aet, %sub_2 ]
  %i.aev = icmp eq i32 %i.aeu, 0
  br i1 %i.aev, label %bb.lw, label %.thread1163

bb.lw:                                            ; preds = %.tail
  %i.aew = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  %.pre1344 = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  switch i64 %i.aew, label %.thread1159 [
    i64 4, label %bb.lx
    i64 5, label %bb.ly
  ]

bb.lx:                                            ; preds = %bb.lw
  %i.aex = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.93, ptr noundef nonnull dereferenceable(1) %.pre1344, i64 noundef 4) #25
  %i.aey = icmp eq i32 %i.aex, 0
  br i1 %i.aey, label %bb.lz, label %.thread1159

bb.ly:                                            ; preds = %bb.lw
  %i.aez = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str, ptr noundef nonnull dereferenceable(1) %.pre1344, i64 noundef 5) #25
  %i.afa = icmp eq i32 %i.aez, 0
  br i1 %i.afa, label %bb.lz, label %.thread1159

.thread1159:                                      ; preds = %bb.lw, %bb.ly, %bb.lx
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef 3, ptr noundef %.pre1344, i64 noundef %i.aew)
  br label %malloc_conf_error.exit.thread

bb.lz:                                            ; preds = %bb.ly, %bb.lx
  %storemerge1250 = phi i8 [ 1, %bb.lx ], [ 0, %bb.ly ]
  store i8 %storemerge1250, ptr @duckdb_je_opt_hpa, align 1, !tbaa !94
  %i.afb = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.afc = trunc nuw i8 %i.afb to i1
  br i1 %i.afc, label %bb.ma, label %malloc_conf_error.exit.thread

bb.ma:                                            ; preds = %bb.lz
  %i.afd = trunc nuw nsw i64 %i.aew to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef 3, ptr noundef nonnull %i.er, i32 noundef %i.afd, ptr noundef nonnull %.pre1344) #21
  br label %malloc_conf_error.exit.thread

.thread1157:                                      ; preds = %bb.ln
  br i1 %i.mp, label %bb.mb, label %.thread1163

bb.mb:                                            ; preds = %.thread1157
  %i.afe = call i32 @strncmp(ptr noundef nonnull dereferenceable(19) @.str.144, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 18) #25
  %i.aff = icmp eq i32 %i.afe, 0
  br i1 %i.aff, label %bb.mc, label %.thread1163

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #21
  %i.afg = tail call ptr @__errno_location() #23  ; 2 uses
  store i32 0, ptr %i.afg, align 4, !tbaa !8
  %i.afh = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  %i.afi = call i64 @duckdb_je_malloc_strtoumax(ptr noundef %i.afh, ptr noundef nonnull %i.ai, i32 noundef 0) #21
  %i.afj = load i32, ptr %i.afg, align 4, !tbaa !8
  %.not831 = icmp eq i32 %i.afj, 0
  %.pre1376 = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  br i1 %.not831, label %bb.md, label %.thread1164

bb.md:                                            ; preds = %bb.mc
  %i.afk = load ptr, ptr %i.ai, align 8, !tbaa !136
  %i.afl = ptrtoint ptr %i.afk to i64
  %i.afm = ptrtoint ptr %i.afh to i64
  %i.afn = sub i64 %i.afl, %i.afm
  %.not832 = icmp eq i64 %i.afn, %.pre1376
  br i1 %.not832, label %bb.me, label %.thread1164

.thread1164:                                      ; preds = %bb.md, %bb.mc
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef 18, ptr noundef %i.afh, i64 noundef %.pre1376)
  br label %bb.mg

bb.me:                                            ; preds = %bb.md
  %i.afo = call i64 @llvm.umax.i64(i64 %i.afi, i64 4096)
  %.sink1432 = call i64 @llvm.umin.i64(i64 %i.afo, i64 2097152)
  store i64 %.sink1432, ptr @duckdb_je_opt_hpa_opts, align 8, !tbaa !169
  %i.afp = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.afq = trunc nuw i8 %i.afp to i1
  br i1 %i.afq, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.afr = trunc i64 %.pre1376 to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef 18, ptr noundef nonnull %i.er, i32 noundef %i.afr, ptr noundef %i.afh) #21
  br label %bb.mg

bb.mg:                                            ; preds = %.thread1164, %bb.mf, %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #21
  br label %malloc_conf_error.exit.thread

.thread1163:                                      ; preds = %bb.lo, %bb.lh, %.tail, %bb.mb, %.thread1157
  %i.afs = phi i1 [ false, %.thread1157 ], [ false, %bb.mb ], [ true, %.tail ], [ false, %bb.lh ], [ false, %bb.lo ]
  br i1 %i.acu, label %bb.mh, label %bb.mn

bb.mh:                                            ; preds = %.thread1163
  %i.aft = call i32 @strncmp(ptr noundef nonnull dereferenceable(27) @.str.145, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 26) #25
  %i.afu = icmp eq i32 %i.aft, 0
  br i1 %i.afu, label %bb.mi, label %bb.mn

bb.mi:                                            ; preds = %bb.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #21
  %i.afv = tail call ptr @__errno_location() #23  ; 2 uses
  store i32 0, ptr %i.afv, align 4, !tbaa !8
  %i.afw = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  %i.afx = call i64 @duckdb_je_malloc_strtoumax(ptr noundef %i.afw, ptr noundef nonnull %i.aj, i32 noundef 0) #21
  %i.afy = load i32, ptr %i.afv, align 4, !tbaa !8
  %.not829 = icmp eq i32 %i.afy, 0
  %.pre1374 = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  br i1 %.not829, label %bb.mj, label %.thread1168

bb.mj:                                            ; preds = %bb.mi
  %i.afz = load ptr, ptr %i.aj, align 8, !tbaa !136
  %i.aga = ptrtoint ptr %i.afz to i64
  %i.agb = ptrtoint ptr %i.afw to i64
  %i.agc = sub i64 %i.aga, %i.agb
  %.not830 = icmp eq i64 %i.agc, %.pre1374
  br i1 %.not830, label %bb.mk, label %.thread1168

.thread1168:                                      ; preds = %bb.mj, %bb.mi
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef %i.bz, ptr noundef %i.afw, i64 noundef %.pre1374)
  br label %bb.mm

bb.mk:                                            ; preds = %bb.mj
  %i.agd = call i64 @llvm.umax.i64(i64 %i.afx, i64 4096)
  %.sink1433 = call i64 @llvm.umin.i64(i64 %i.agd, i64 2097152)
  store i64 %.sink1433, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_opt_hpa_opts, i64 8), align 8, !tbaa !137
  %i.age = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.agf = trunc nuw i8 %i.age to i1
  br i1 %i.agf, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  %i.agg = trunc i64 %i.bz to i32
  %i.agh = trunc i64 %.pre1374 to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef %i.agg, ptr noundef nonnull %i.er, i32 noundef %i.agh, ptr noundef %i.afw) #21
  br label %bb.mm

bb.mm:                                            ; preds = %.thread1168, %bb.ml, %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #21
  br label %malloc_conf_error.exit.thread

bb.mn:                                            ; preds = %bb.mh, %.thread1163
  %i.agi = icmp eq i64 %i.bz, 32
  br i1 %i.agi, label %bb.mo, label %bb.mu

bb.mo:                                            ; preds = %bb.mn
  %i.agj = call i32 @strncmp(ptr noundef nonnull dereferenceable(33) @.str.146, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 32) #25
  %i.agk = icmp eq i32 %i.agj, 0
  br i1 %i.agk, label %bb.mp, label %bb.mu

bb.mp:                                            ; preds = %bb.mo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #21
  %i.agl = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  %i.agm = call zeroext i1 @duckdb_je_fxp_parse(ptr noundef nonnull %i.ak, ptr noundef %i.agl, ptr noundef nonnull %i.al) #21
  %.pre1372 = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  br i1 %i.agm, label %.thread1172, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.agn = load ptr, ptr %i.al, align 8, !tbaa !136
  %i.ago = ptrtoint ptr %i.agn to i64
  %i.agp = ptrtoint ptr %i.agl to i64
  %i.agq = sub i64 %i.ago, %i.agp
  %i.agr = icmp ne i64 %i.agq, %.pre1372
  %i.ags = load i32, ptr %i.ak, align 4           ; 2 uses
  %i.agt = icmp ugt i32 %i.ags, 65536
  %or.cond244 = select i1 %i.agr, i1 true, i1 %i.agt
  br i1 %or.cond244, label %.thread1172, label %bb.mr

.thread1172:                                      ; preds = %bb.mq, %bb.mp
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef 32, ptr noundef %i.agl, i64 noundef %.pre1372)
  br label %bb.mt

bb.mr:                                            ; preds = %bb.mq
  %i.agu = shl nuw nsw i32 %i.ags, 5
  %i.agv = zext nneg i32 %i.agu to i64
  store i64 %i.agv, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_opt_hpa_opts, i64 8), align 8, !tbaa !137
  %i.agw = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.agx = trunc nuw i8 %i.agw to i1
  br i1 %i.agx, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.agy = trunc i64 %.pre1372 to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef 32, ptr noundef nonnull %i.er, i32 noundef %i.agy, ptr noundef %i.agl) #21
  br label %bb.mt

bb.mt:                                            ; preds = %.thread1172, %bb.ms, %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #21
  br label %malloc_conf_error.exit.thread

bb.mu:                                            ; preds = %bb.mo, %bb.mn
  br i1 %i.ue, label %bb.mv, label %bb.nb

bb.mv:                                            ; preds = %bb.mu
  %i.agz = call i32 @strncmp(ptr noundef nonnull dereferenceable(20) @.str.147, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 19) #25
  %i.aha = icmp eq i32 %i.agz, 0
  br i1 %i.aha, label %bb.mw, label %bb.nb

bb.mw:                                            ; preds = %bb.mv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #21
  %i.ahb = tail call ptr @__errno_location() #23  ; 2 uses
  store i32 0, ptr %i.ahb, align 4, !tbaa !8
  %i.ahc = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  %i.ahd = call i64 @duckdb_je_malloc_strtoumax(ptr noundef %i.ahc, ptr noundef nonnull %i.am, i32 noundef 0) #21
  %i.ahe = load i32, ptr %i.ahb, align 4, !tbaa !8
  %.not827 = icmp eq i32 %i.ahe, 0
  %.pre1370 = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  br i1 %.not827, label %bb.mx, label %.thread1176

bb.mx:                                            ; preds = %bb.mw
  %i.ahf = load ptr, ptr %i.am, align 8, !tbaa !136
  %i.ahg = ptrtoint ptr %i.ahf to i64
  %i.ahh = ptrtoint ptr %i.ahc to i64
  %i.ahi = sub i64 %i.ahg, %i.ahh
  %.not828 = icmp eq i64 %i.ahi, %.pre1370
  br i1 %.not828, label %bb.my, label %.thread1176

.thread1176:                                      ; preds = %bb.mx, %bb.mw
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef %i.bz, ptr noundef %i.ahc, i64 noundef %.pre1370)
  br label %bb.na

bb.my:                                            ; preds = %bb.mx
  store i64 %i.ahd, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_opt_hpa_opts, i64 24), align 8, !tbaa !170
  %i.ahj = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.ahk = trunc nuw i8 %i.ahj to i1
  br i1 %i.ahk, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  %i.ahl = trunc i64 %i.bz to i32
  %i.ahm = trunc i64 %.pre1370 to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef %i.ahl, ptr noundef nonnull %i.er, i32 noundef %i.ahm, ptr noundef %i.ahc) #21
  br label %bb.na

bb.na:                                            ; preds = %.thread1176, %bb.mz, %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #21
  br label %malloc_conf_error.exit.thread

bb.nb:                                            ; preds = %bb.mv, %bb.mu
  br i1 %i.zm, label %bb.nc, label %bb.ni

bb.nc:                                            ; preds = %bb.nb
  %i.ahn = call i32 @strncmp(ptr noundef nonnull dereferenceable(26) @.str.148, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 25) #25
  %i.aho = icmp eq i32 %i.ahn, 0
  br i1 %i.aho, label %bb.nd, label %.thread1184

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #21
  %i.ahp = tail call ptr @__errno_location() #23  ; 2 uses
  store i32 0, ptr %i.ahp, align 4, !tbaa !8
  %i.ahq = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  %i.ahr = call i64 @duckdb_je_malloc_strtoumax(ptr noundef %i.ahq, ptr noundef nonnull %i.an, i32 noundef 0) #21
  %i.ahs = load i32, ptr %i.ahp, align 4, !tbaa !8
  %.not825 = icmp eq i32 %i.ahs, 0
  %.pre1368 = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  br i1 %.not825, label %bb.ne, label %.thread1180

bb.ne:                                            ; preds = %bb.nd
  %i.aht = load ptr, ptr %i.an, align 8, !tbaa !136
  %i.ahu = ptrtoint ptr %i.aht to i64
  %i.ahv = ptrtoint ptr %i.ahq to i64
  %i.ahw = sub i64 %i.ahu, %i.ahv
  %.not826 = icmp eq i64 %i.ahw, %.pre1368
  br i1 %.not826, label %bb.nf, label %.thread1180

.thread1180:                                      ; preds = %bb.ne, %bb.nd
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef 25, ptr noundef %i.ahq, i64 noundef %.pre1368)
  br label %bb.nh

bb.nf:                                            ; preds = %bb.ne
  store i64 %i.ahr, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_opt_hpa_opts, i64 32), align 8, !tbaa !171
  %i.ahx = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.ahy = trunc nuw i8 %i.ahx to i1
  br i1 %i.ahy, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.ahz = trunc i64 %.pre1368 to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef 25, ptr noundef nonnull %i.er, i32 noundef %i.ahz, ptr noundef %i.ahq) #21
  br label %bb.nh

bb.nh:                                            ; preds = %.thread1180, %bb.ng, %bb.nf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #21
  br label %malloc_conf_error.exit.thread

bb.ni:                                            ; preds = %bb.nb
  %i.aia = icmp eq i64 %i.bz, 29
  br i1 %i.aia, label %bb.nj, label %.thread1184

bb.nj:                                            ; preds = %bb.ni
  %i.aib = call i32 @strncmp(ptr noundef nonnull dereferenceable(30) @.str.149, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 29) #25
  %i.aic = icmp eq i32 %i.aib, 0
  br i1 %i.aic, label %bb.nk, label %.thread1184

bb.nk:                                            ; preds = %bb.nj
  %i.aid = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  %.pre1347 = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  switch i64 %i.aid, label %.thread1186 [
    i64 4, label %bb.nl
    i64 5, label %bb.nm
  ]

bb.nl:                                            ; preds = %bb.nk
  %i.aie = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.93, ptr noundef nonnull dereferenceable(1) %.pre1347, i64 noundef 4) #25
  %i.aif = icmp eq i32 %i.aie, 0
  br i1 %i.aif, label %bb.nn, label %.thread1186

bb.nm:                                            ; preds = %bb.nk
  %i.aig = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str, ptr noundef nonnull dereferenceable(1) %.pre1347, i64 noundef 5) #25
  %i.aih = icmp eq i32 %i.aig, 0
  br i1 %i.aih, label %bb.nn, label %.thread1186

.thread1186:                                      ; preds = %bb.nk, %bb.nm, %bb.nl
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef 29, ptr noundef %.pre1347, i64 noundef %i.aid)
  br label %malloc_conf_error.exit.thread

bb.nn:                                            ; preds = %bb.nm, %bb.nl
  %storemerge1251 = phi i8 [ 1, %bb.nl ], [ 0, %bb.nm ]
  store i8 %storemerge1251, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_opt_hpa_opts, i64 40), align 8, !tbaa !172
  %i.aii = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.aij = trunc nuw i8 %i.aii to i1
  br i1 %i.aij, label %bb.no, label %malloc_conf_error.exit.thread

bb.no:                                            ; preds = %bb.nn
  %i.aik = trunc nuw nsw i64 %i.aid to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef 29, ptr noundef nonnull %i.er, i32 noundef %i.aik, ptr noundef nonnull %.pre1347) #21
  br label %malloc_conf_error.exit.thread

.thread1184:                                      ; preds = %bb.nc, %bb.nj, %bb.ni
  br i1 %i.uf, label %bb.np, label %bb.ny

bb.np:                                            ; preds = %.thread1184
  %i.ail = call i32 @strncmp(ptr noundef nonnull dereferenceable(15) @.str.150, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 14) #25
  %i.aim = icmp eq i32 %i.ail, 0
  br i1 %i.aim, label %bb.nq, label %bb.ny

bb.nq:                                            ; preds = %bb.np
  %i.ain = load i64, ptr %i.e, align 8, !tbaa !24
  %i.aio = icmp eq i64 %i.ain, 2
  %.pre1364 = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  br i1 %i.aio, label %sub_01262, label %bb.nt

sub_01262:                                        ; preds = %bb.nq
  %i.aip = load i8, ptr %.pre1364, align 1        ; 2 uses
  %i.aiq = zext i8 %i.aip to i32
  %i.air = sub nsw i32 45, %i.aiq
  %.not1300 = icmp eq i8 %i.aip, 45
  br i1 %.not1300, label %sub_11263, label %.tail1261

sub_11263:                                        ; preds = %sub_01262
  %i.ais = getelementptr inbounds nuw i8, ptr %.pre1364, i64 1
  %i.ait = load i8, ptr %i.ais, align 1
  %i.aiu = zext i8 %i.ait to i32
  %i.aiv = sub nsw i32 49, %i.aiu
  br label %.tail1261

.tail1261:                                        ; preds = %sub_01262, %sub_11263
  %i.aiw = phi i32 [ %i.air, %sub_01262 ], [ %i.aiv, %sub_11263 ]
  %i.aix = icmp eq i32 %i.aiw, 0
  br i1 %i.aix, label %bb.nr, label %bb.nt

bb.nr:                                            ; preds = %.tail1261
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_opt_hpa_opts, i64 16), align 8, !tbaa !173
  %i.aiy = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.aiz = trunc nuw i8 %i.aiy to i1
  br i1 %i.aiz, label %bb.ns, label %malloc_conf_error.exit.thread

bb.ns:                                            ; preds = %bb.nr
  %i.aja = trunc i64 %i.bz to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef %i.aja, ptr noundef nonnull %i.er, i32 noundef 2, ptr noundef nonnull %.pre1364) #21
  br label %malloc_conf_error.exit.thread

bb.nt:                                            ; preds = %.tail1261, %bb.nq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #21
  %i.ajb = call zeroext i1 @duckdb_je_fxp_parse(ptr noundef nonnull %i.ao, ptr noundef %.pre1364, ptr noundef nonnull %i.ap) #21
  %.pre1365 = load ptr, ptr %i.c, align 8, !tbaa !136 ; 3 uses
  %.pre1366 = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  br i1 %i.ajb, label %.thread1190, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.ajc = load ptr, ptr %i.ap, align 8, !tbaa !136
  %i.ajd = ptrtoint ptr %i.ajc to i64
  %i.aje = ptrtoint ptr %.pre1365 to i64
  %i.ajf = sub i64 %i.ajd, %i.aje
  %.not824 = icmp eq i64 %i.ajf, %.pre1366
  br i1 %.not824, label %bb.nv, label %.thread1190

.thread1190:                                      ; preds = %bb.nu, %bb.nt
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef %i.bz, ptr noundef %.pre1365, i64 noundef %.pre1366)
  br label %bb.nx

bb.nv:                                            ; preds = %bb.nu
  %i.ajg = load i32, ptr %i.ao, align 4, !tbaa !8
  store i32 %i.ajg, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_opt_hpa_opts, i64 16), align 8, !tbaa !173
  %i.ajh = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.aji = trunc nuw i8 %i.ajh to i1
  br i1 %i.aji, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  %i.ajj = trunc i64 %i.bz to i32
  %i.ajk = trunc i64 %.pre1366 to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef %i.ajj, ptr noundef nonnull %i.er, i32 noundef %i.ajk, ptr noundef %.pre1365) #21
  br label %bb.nx

bb.nx:                                            ; preds = %.thread1190, %bb.nw, %bb.nv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #21
  br label %malloc_conf_error.exit.thread

bb.ny:                                            ; preds = %bb.np, %.thread1184
  br i1 %i.eu, label %bb.nz, label %bb.of

bb.nz:                                            ; preds = %bb.ny
  %i.ajl = call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.152, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 15) #25
  %i.ajm = icmp eq i32 %i.ajl, 0
  br i1 %i.ajm, label %bb.oa, label %bb.of

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #21
  %i.ajn = tail call ptr @__errno_location() #23  ; 2 uses
  store i32 0, ptr %i.ajn, align 4, !tbaa !8
  %i.ajo = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  %i.ajp = call i64 @duckdb_je_malloc_strtoumax(ptr noundef %i.ajo, ptr noundef nonnull %i.aq, i32 noundef 0) #21
  %i.ajq = load i32, ptr %i.ajn, align 4, !tbaa !8
  %.not822 = icmp eq i32 %i.ajq, 0
  %.pre1363 = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  br i1 %.not822, label %bb.ob, label %.thread1194

bb.ob:                                            ; preds = %bb.oa
  %i.ajr = load ptr, ptr %i.aq, align 8, !tbaa !136
  %i.ajs = ptrtoint ptr %i.ajr to i64
  %i.ajt = ptrtoint ptr %i.ajo to i64
  %i.aju = sub i64 %i.ajs, %i.ajt
  %.not823 = icmp eq i64 %i.aju, %.pre1363
  br i1 %.not823, label %bb.oc, label %.thread1194

.thread1194:                                      ; preds = %bb.ob, %bb.oa
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef %i.bz, ptr noundef %i.ajo, i64 noundef %.pre1363)
  br label %bb.oe

bb.oc:                                            ; preds = %bb.ob
  store i64 %i.ajp, ptr @duckdb_je_opt_hpa_sec_opts, align 8, !tbaa !174
  %i.ajv = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.ajw = trunc nuw i8 %i.ajv to i1
  br i1 %i.ajw, label %bb.od, label %bb.oe

bb.od:                                            ; preds = %bb.oc
  %i.ajx = trunc i64 %i.bz to i32
  %i.ajy = trunc i64 %.pre1363 to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef %i.ajx, ptr noundef nonnull %i.er, i32 noundef %i.ajy, ptr noundef %i.ajo) #21
  br label %bb.oe

bb.oe:                                            ; preds = %.thread1194, %bb.od, %bb.oc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #21
  br label %malloc_conf_error.exit.thread

bb.of:                                            ; preds = %bb.nz, %bb.ny
  br i1 %i.adi, label %bb.og, label %bb.os

bb.og:                                            ; preds = %bb.of
  %i.ajz = call i32 @strncmp(ptr noundef nonnull dereferenceable(18) @.str.153, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 17) #25
  %i.aka = icmp eq i32 %i.ajz, 0
  br i1 %i.aka, label %bb.oh, label %bb.om

bb.oh:                                            ; preds = %bb.og
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #21
  %i.akb = tail call ptr @__errno_location() #23  ; 2 uses
  store i32 0, ptr %i.akb, align 4, !tbaa !8
  %i.akc = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  %i.akd = call i64 @duckdb_je_malloc_strtoumax(ptr noundef %i.akc, ptr noundef nonnull %i.ar, i32 noundef 0) #21
  %i.ake = load i32, ptr %i.akb, align 4, !tbaa !8
  %.not820 = icmp eq i32 %i.ake, 0
  %.pre1361 = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  br i1 %.not820, label %bb.oi, label %.thread1198

bb.oi:                                            ; preds = %bb.oh
  %i.akf = load ptr, ptr %i.ar, align 8, !tbaa !136
  %i.akg = ptrtoint ptr %i.akf to i64
  %i.akh = ptrtoint ptr %i.akc to i64
  %i.aki = sub i64 %i.akg, %i.akh
  %.not821 = icmp eq i64 %i.aki, %.pre1361
  br i1 %.not821, label %bb.oj, label %.thread1198

.thread1198:                                      ; preds = %bb.oi, %bb.oh
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef 17, ptr noundef %i.akc, i64 noundef %.pre1361)
  br label %bb.ol

bb.oj:                                            ; preds = %bb.oi
  %.1273 = call i64 @llvm.umax.i64(i64 %i.akd, i64 4096)
  store i64 %.1273, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_opt_hpa_sec_opts, i64 8), align 8, !tbaa !175
  %i.akj = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.akk = trunc nuw i8 %i.akj to i1
  br i1 %i.akk, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  %i.akl = trunc i64 %.pre1361 to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef 17, ptr noundef nonnull %i.er, i32 noundef %i.akl, ptr noundef %i.akc) #21
  br label %bb.ol

bb.ol:                                            ; preds = %.thread1198, %bb.ok, %bb.oj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #21
  br label %malloc_conf_error.exit.thread

bb.om:                                            ; preds = %bb.og
  %i.akm = call i32 @strncmp(ptr noundef nonnull dereferenceable(18) @.str.154, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 17) #25
  %i.akn = icmp eq i32 %i.akm, 0
  br i1 %i.akn, label %bb.on, label %.thread1207

bb.on:                                            ; preds = %bb.om
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #21
  %i.ako = tail call ptr @__errno_location() #23  ; 2 uses
  store i32 0, ptr %i.ako, align 4, !tbaa !8
  %i.akp = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  %i.akq = call i64 @duckdb_je_malloc_strtoumax(ptr noundef %i.akp, ptr noundef nonnull %i.as, i32 noundef 0) #21
  %i.akr = load i32, ptr %i.ako, align 4, !tbaa !8
  %.not818 = icmp eq i32 %i.akr, 0
  %.pre1359 = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  br i1 %.not818, label %bb.oo, label %.thread1203

bb.oo:                                            ; preds = %bb.on
  %i.aks = load ptr, ptr %i.as, align 8, !tbaa !136
  %i.akt = ptrtoint ptr %i.aks to i64
  %i.aku = ptrtoint ptr %i.akp to i64
  %i.akv = sub i64 %i.akt, %i.aku
  %.not819 = icmp eq i64 %i.akv, %.pre1359
  br i1 %.not819, label %bb.op, label %.thread1203

.thread1203:                                      ; preds = %bb.oo, %bb.on
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef 17, ptr noundef %i.akp, i64 noundef %.pre1359)
  br label %bb.or

bb.op:                                            ; preds = %bb.oo
  %.1274 = call i64 @llvm.umax.i64(i64 %i.akq, i64 4096)
  store i64 %.1274, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_opt_hpa_sec_opts, i64 16), align 8, !tbaa !176
  %i.akw = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.akx = trunc nuw i8 %i.akw to i1
  br i1 %i.akx, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op
  %i.aky = trunc i64 %.pre1359 to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef 17, ptr noundef nonnull %i.er, i32 noundef %i.aky, ptr noundef %i.akp) #21
  br label %bb.or

bb.or:                                            ; preds = %.thread1203, %bb.oq, %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #21
  br label %malloc_conf_error.exit.thread

bb.os:                                            ; preds = %bb.of
  br i1 %i.zm, label %bb.ot, label %.thread1207

bb.ot:                                            ; preds = %bb.os
  %i.akz = call i32 @strncmp(ptr noundef nonnull dereferenceable(26) @.str.155, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 25) #25
  %i.ala = icmp eq i32 %i.akz, 0
  br i1 %i.ala, label %bb.ou, label %.thread1207

bb.ou:                                            ; preds = %bb.ot
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #21
  %i.alb = tail call ptr @__errno_location() #23  ; 2 uses
  store i32 0, ptr %i.alb, align 4, !tbaa !8
  %i.alc = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  %i.ald = call i64 @duckdb_je_malloc_strtoumax(ptr noundef %i.alc, ptr noundef nonnull %i.at, i32 noundef 0) #21
  %i.ale = load i32, ptr %i.alb, align 4, !tbaa !8
  %.not816 = icmp eq i32 %i.ale, 0
  %.pre1349 = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  br i1 %.not816, label %bb.ov, label %.thread1208

bb.ov:                                            ; preds = %bb.ou
  %i.alf = load ptr, ptr %i.at, align 8, !tbaa !136
  %i.alg = ptrtoint ptr %i.alf to i64
  %i.alh = ptrtoint ptr %i.alc to i64
  %i.ali = sub i64 %i.alg, %i.alh
  %.not817 = icmp eq i64 %i.ali, %.pre1349
  br i1 %.not817, label %bb.ow, label %.thread1208

.thread1208:                                      ; preds = %bb.ov, %bb.ou
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef 25, ptr noundef %i.alc, i64 noundef %.pre1349)
  br label %bb.oy

bb.ow:                                            ; preds = %bb.ov
  %.1275 = call i64 @llvm.umax.i64(i64 %i.ald, i64 4096)
  store i64 %.1275, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_opt_hpa_sec_opts, i64 24), align 8, !tbaa !177
  %i.alj = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.alk = trunc nuw i8 %i.alj to i1
  br i1 %i.alk, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  %i.all = trunc i64 %.pre1349 to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef 25, ptr noundef nonnull %i.er, i32 noundef %i.all, ptr noundef %i.alc) #21
  br label %bb.oy

bb.oy:                                            ; preds = %.thread1208, %bb.ox, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #21
  br label %malloc_conf_error.exit.thread

.thread1207:                                      ; preds = %bb.om, %bb.ot, %bb.os
  br i1 %i.act, label %bb.oz, label %bb.pf

bb.oz:                                            ; preds = %.thread1207
  %i.alm = call i32 @strncmp(ptr noundef nonnull dereferenceable(25) @.str.156, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 24) #25
  %i.aln = icmp eq i32 %i.alm, 0
  br i1 %i.aln, label %bb.pa, label %bb.pf

bb.pa:                                            ; preds = %bb.oz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #21
  %i.alo = tail call ptr @__errno_location() #23  ; 2 uses
  store i32 0, ptr %i.alo, align 4, !tbaa !8
  %i.alp = load ptr, ptr %i.c, align 8, !tbaa !136 ; 4 uses
  %i.alq = call i64 @duckdb_je_malloc_strtoumax(ptr noundef %i.alp, ptr noundef nonnull %i.au, i32 noundef 0) #21
  %i.alr = load i32, ptr %i.alo, align 4, !tbaa !8
  %.not814 = icmp eq i32 %i.alr, 0
  %.pre1357 = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  br i1 %.not814, label %bb.pb, label %.thread1212

bb.pb:                                            ; preds = %bb.pa
  %i.als = load ptr, ptr %i.au, align 8, !tbaa !136
  %i.alt = ptrtoint ptr %i.als to i64
  %i.alu = ptrtoint ptr %i.alp to i64
  %i.alv = sub i64 %i.alt, %i.alu
  %.not815 = icmp eq i64 %i.alv, %.pre1357
  br i1 %.not815, label %bb.pc, label %.thread1212

.thread1212:                                      ; preds = %bb.pb, %bb.pa
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef %i.bz, ptr noundef %i.alp, i64 noundef %.pre1357)
  br label %bb.pe

bb.pc:                                            ; preds = %bb.pb
  %.1276 = call i64 @llvm.umin.i64(i64 %i.alq, i64 512)
  store i64 %.1276, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_opt_hpa_sec_opts, i64 32), align 8, !tbaa !178
  %i.alw = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.alx = trunc nuw i8 %i.alw to i1
  br i1 %i.alx, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc
  %i.aly = trunc i64 %i.bz to i32
  %i.alz = trunc i64 %.pre1357 to i32
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef %i.aly, ptr noundef nonnull %i.er, i32 noundef %i.alz, ptr noundef %i.alp) #21
  br label %bb.pe

bb.pe:                                            ; preds = %.thread1212, %bb.pd, %bb.pc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #21
  br label %malloc_conf_error.exit.thread

bb.pf:                                            ; preds = %bb.oz, %.thread1207
  br i1 %i.et, label %bb.pg, label %bb.pr

bb.pg:                                            ; preds = %bb.pf
  %i.ama = call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.157, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 10) #25
  %i.amb = icmp eq i32 %i.ama, 0
  br i1 %i.amb, label %bb.ph, label %bb.pr

bb.ph:                                            ; preds = %bb.pg
  %i.amc = load i64, ptr %i.e, align 8, !tbaa !24 ; 2 uses
  %i.amd = icmp eq i64 %i.amc, 7
  %.pre1355 = load ptr, ptr %i.c, align 8, !tbaa !136 ; 2 uses
  br i1 %i.amd, label %bb.pi, label %bb.pl

bb.pi:                                            ; preds = %bb.ph
  %i.ame = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.104, ptr noundef nonnull dereferenceable(1) %.pre1355, i64 noundef 7) #25
  %i.amf = icmp eq i32 %i.ame, 0
  br i1 %i.amf, label %bb.pj, label %bb.pl

bb.pj:                                            ; preds = %bb.pi
  call void @duckdb_je_sc_data_init(ptr noundef %0) #21
  %i.amg = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.amh = trunc nuw i8 %i.amg to i1
  br i1 %i.amh, label %bb.pk, label %malloc_conf_error.exit.thread

bb.pk:                                            ; preds = %bb.pj
  %i.ami = trunc i64 %i.bz to i32
  %i.amj = load i64, ptr %i.e, align 8, !tbaa !24
  %i.amk = trunc i64 %i.amj to i32
  %i.aml = load ptr, ptr %i.c, align 8, !tbaa !136
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef %i.ami, ptr noundef nonnull %i.er, i32 noundef %i.amk, ptr noundef %i.aml) #21
  br label %malloc_conf_error.exit.thread

bb.pl:                                            ; preds = %bb.pi, %bb.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #21
  store ptr %.pre1355, ptr %i.av, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #21
  store i64 %i.amc, ptr %i.aw, align 8, !tbaa !24
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pn, %bb.pl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #21
  %i.amm = call zeroext i1 @duckdb_je_multi_setting_parse_next(ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az) #21
  br i1 %i.amm, label %.thread1220, label %bb.pn

.thread1220:                                      ; preds = %bb.pm
  %i.amn = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.amo = load i64, ptr %i.e, align 8, !tbaa !24
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.158, ptr noundef %i.er, i64 noundef %i.bz, ptr noundef %i.amn, i64 noundef %i.amo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #21
  br label %bb.pq

bb.pn:                                            ; preds = %bb.pm
  %i.amp = load i64, ptr %i.ax, align 8, !tbaa !24
  %i.amq = load i64, ptr %i.ay, align 8, !tbaa !24
  %i.amr = load i64, ptr %i.az, align 8, !tbaa !24
  %i.ams = trunc i64 %i.amr to i32
  call void @duckdb_je_sc_data_update_slab_size(ptr noundef %0, i64 noundef %i.amp, i64 noundef %i.amq, i32 noundef %i.ams) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #21
  %i.amt = load i64, ptr %i.aw, align 8
  %i.amu = icmp eq i64 %i.amt, 0
  br i1 %i.amu, label %bb.po, label %bb.pm

bb.po:                                            ; preds = %bb.pn
  %i.amv = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !95
  %i.amw = trunc nuw i8 %i.amv to i1
  %or.cond307 = select i1 %.not937, i1 %i.amw, i1 false
  br i1 %or.cond307, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  %i.amx = trunc i64 %i.bz to i32
  %i.amy = load i64, ptr %i.e, align 8, !tbaa !24
  %i.amz = trunc i64 %i.amy to i32
  %i.ana = load ptr, ptr %i.c, align 8, !tbaa !136
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.95, i32 noundef %i.amx, ptr noundef %i.er, i32 noundef %i.amz, ptr noundef %i.ana) #21
  br label %bb.pq

bb.pq:                                            ; preds = %.thread1220, %bb.pp, %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #21
  br label %malloc_conf_error.exit.thread

bb.pr:                                            ; preds = %bb.pg, %bb.pf
  br i1 %i.afs, label %sub_01266, label %bb.pv

sub_01266:                                        ; preds = %bb.pr
  %i.anb = load i8, ptr %i.er, align 1            ; 2 uses
  %i.anc = zext i8 %i.anb to i32
  %i.and = sub nsw i32 116, %i.anc
  %.not1298 = icmp eq i8 %i.anb, 116
  br i1 %.not1298, label %sub_11267, label %.tail1265

sub_11267:                                        ; preds = %sub_01266
  %i.ane = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  %i.anf = load i8, ptr %i.ane, align 1           ; 2 uses
  %i.ang = zext i8 %i.anf to i32
  %i.anh = sub nsw i32 104, %i.ang
  %.not1299 = icmp eq i8 %i.anf, 104
  br i1 %.not1299, label %sub_21268, label %.tail1265

sub_21268:                                        ; preds = %sub_11267
  %i.ani = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %i.anj = load i8, ptr %i.ani, align 1
  %i.ank = zext i8 %i.anj to i32
  %i.anl = sub nsw i32 112, %i.ank
  br label %.tail1265

.tail1265:                                        ; preds = %sub_01266, %sub_11267, %sub_21268
  %i.anm = phi i32 [ %i.and, %sub_01266 ], [ %i.anh, %sub_11267 ], [ %i.anl, %sub_21268 ]
  %i.ann = icmp eq i32 %i.anm, 0
  br i1 %i.ann, label %.preheader1279, label %bb.pv

.preheader1279:                                   ; preds = %.tail1265
  %i.ano = load ptr, ptr %i.c, align 8, !tbaa !136 ; 5 uses
  %i.anp = load i64, ptr %i.e, align 8, !tbaa !24 ; 5 uses
  %i.anq = load ptr, ptr @duckdb_je_thp_mode_names, align 8, !tbaa !136
  %i.anr = call i32 @strncmp(ptr noundef %i.anq, ptr noundef %i.ano, i64 noundef %i.anp) #25
  %i.ans = icmp eq i32 %i.anr, 0
  br i1 %i.ans, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %bb.pu, %bb.pt, %.preheader1279
  %.01289.lcssa.wide = phi i32 [ 0, %.preheader1279 ], [ 1, %bb.pt ], [ 2, %bb.pu ]
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.160, ptr noundef nonnull %i.er, i64 noundef %i.bz, ptr noundef %i.ano, i64 noundef %i.anp)
  store i32 %.01289.lcssa.wide, ptr @duckdb_je_opt_thp, align 4, !tbaa !8
  br label %malloc_conf_error.exit.thread

bb.pt:                                            ; preds = %.preheader1279
  %i.ant = load ptr, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_thp_mode_names, i64 8), align 8, !tbaa !136
  %i.anu = call i32 @strncmp(ptr noundef %i.ant, ptr noundef %i.ano, i64 noundef %i.anp) #25
  %i.anv = icmp eq i32 %i.anu, 0
  br i1 %i.anv, label %bb.ps, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.anw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_thp_mode_names, i64 16), align 8, !tbaa !136
  %i.anx = call i32 @strncmp(ptr noundef %i.anw, ptr noundef %i.ano, i64 noundef %i.anp) #25
  %i.any = icmp eq i32 %i.anx, 0
  br i1 %i.any, label %bb.ps, label %.critedge888

.critedge888:                                     ; preds = %bb.pu
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef %i.bz, ptr noundef %i.ano, i64 noundef %i.anp)
  br label %malloc_conf_error.exit.thread

bb.pv:                                            ; preds = %.tail1265, %bb.pr
  br i1 %i.ca, label %bb.pw, label %bb.qd

bb.pw:                                            ; preds = %bb.pv
  %i.anz = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.161, ptr noundef nonnull dereferenceable(1) %i.er, i64 noundef 12) #25
  %i.aoa = icmp eq i32 %i.anz, 0
  br i1 %i.aoa, label %bb.px, label %bb.qd

bb.px:                                            ; preds = %bb.pw
  %i.aob = load i64, ptr %i.e, align 8, !tbaa !24 ; 3 uses
  %.pre1354 = load ptr, ptr %i.c, align 8, !tbaa !136 ; 5 uses
  switch i64 %i.aob, label %.thread1227 [
    i64 5, label %bb.py
    i64 4, label %bb.pz
  ]

bb.py:                                            ; preds = %bb.px
  %i.aoc = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.1, ptr noundef nonnull dereferenceable(1) %.pre1354, i64 noundef 5) #25
  %i.aod = icmp eq i32 %i.aoc, 0
  br i1 %i.aod, label %bb.qb, label %bb.qa

bb.pz:                                            ; preds = %bb.px
  %i.aoe = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.2, ptr noundef nonnull dereferenceable(1) %.pre1354, i64 noundef 4) #25
  %i.aof = icmp eq i32 %i.aoe, 0
  br i1 %i.aof, label %bb.qb, label %.thread1227

bb.qa:                                            ; preds = %bb.py
  %i.aog = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.3, ptr noundef nonnull dereferenceable(1) %.pre1354, i64 noundef 5) #25
  %i.aoh = icmp eq i32 %i.aog, 0
  br i1 %i.aoh, label %bb.qb, label %.thread1227

.thread1227:                                      ; preds = %bb.px, %bb.qa, %bb.pz
  call fastcc void @malloc_conf_error(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.er, i64 noundef 12, ptr noundef %.pre1354, i64 noundef %i.aob)
  br label %malloc_conf_error.exit.thread

bb.qb:                                            ; preds = %bb.qa, %bb.pz, %bb.py
  %.sink1434 = phi i32 [ 0, %bb.py ], [ 1, %bb.pz ], [ 2, %bb.qa ]
  store i32 %.sink1434, ptr @duckdb_je_opt_zero_realloc_action, align 4, !tbaa !8
end_hunk_6
begin_hunk_7_@arena_dalloc_large_no_tcache:bb.a
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @duckdb_je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #21
  ret void
}

declare void @duckdb_je_large_dalloc(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_tcache_bin_flush_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @duckdb_je_tcache_bin_flush_large(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @duckdb_je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #18

declare ptr @duckdb_je_arena_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #18

declare zeroext i1 @duckdb_je_background_thread_create(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @duckdb_je_arena_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

declare ptr @duckdb_je_tsd_fetch_slow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @duckdb_je_tcache_create_explicit(ptr noundef) local_unnamed_addr #5

declare ptr @duckdb_je_arena_ralloc(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = zext i8 %i.e to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %sz_size2index.exit.thread, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j
  %i.m = ashr exact i64 -1152921504606846976, %i.j
  %i.n = add nsw i64 %2, -1
  %i.o = and i64 %i.m, %i.n
  %i.p = lshr i64 %i.o, %i.l
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 3
  %i.s = shl nuw nsw i32 %i.k, 2
  %reass.sub = sub nsw i32 %i.r, %i.s
  %i.t = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.t, %bb.d ]
  %i.u = icmp samesign ult i32 %.0.i, 36
  br i1 %i.u, label %bb.e, label %sz_size2index.exit.thread, !prof !132

bb.e:                                             ; preds = %sz_size2index.exit
  tail call void @duckdb_je_arena_dalloc_small(ptr noundef %0, ptr noundef %1) #21
  br label %bb.f

sz_size2index.exit.thread:                        ; preds = %bb.c, %sz_size2index.exit
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %sz_size2index.exit.thread, %bb.e
  ret void
}

declare void @duckdb_je_safety_check_fail(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !126  ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !126
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !11

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !126
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !127  ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !126
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !127
  store ptr %i.u, ptr %i.r, align 8, !tbaa !127
  store i64 %i.c, ptr %i.d, align 8, !tbaa !126
  store ptr %i.s, ptr %i.t, align 8, !tbaa !127
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !126
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !11

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !126
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !11

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !126
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !11

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !126
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !11

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !126
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !11

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !126
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @duckdb_je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @duckdb_je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #21
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !127 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !126
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !126
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !127
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !127
  store i64 %i.e, ptr %i.at, align 8, !tbaa !126
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !127
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !127
  store i64 %i.c, ptr %i.d, align 8, !tbaa !126
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !127
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !183
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !184, !alias.scope !185
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !186, !alias.scope !185
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !187, !alias.scope !185
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !188, !alias.scope !185
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !19, !alias.scope !185
  ret void
}

declare void @duckdb_je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #5

declare ptr @duckdb_je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = lshr i64 %2, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %2, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !126  ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127
  %i.i = lshr i64 %2, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !126
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !11

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !126
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !127  ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !126
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !127
  store ptr %i.u, ptr %i.r, align 8, !tbaa !127
  store i64 %i.c, ptr %i.d, align 8, !tbaa !126
  store ptr %i.s, ptr %i.t, align 8, !tbaa !127
  %i.v = lshr i64 %2, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !126
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !11

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !126
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !11

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !126
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !11

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !126
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !11

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !126
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !11

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !126
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @duckdb_je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef nonnull @duckdb_je_arena_emap_global, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext true, i1 noundef zeroext false) #21
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !127 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !126
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !126
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !127
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !127
  store i64 %i.e, ptr %i.at, align 8, !tbaa !126
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !127
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !127
  store i64 %i.c, ptr %i.d, align 8, !tbaa !126
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !127
  %i.az = lshr i64 %2, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !191
  %i.bd = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bg = and i8 %i.bf, 1
  %.sroa.6.17.insert.ext = zext nneg i8 %i.bg to i32
  %.sroa.6.17.insert.shift = shl nuw nsw i32 %.sroa.6.17.insert.ext, 8
  %i.bh = lshr i8 %i.bf, 1
  %i.bi = and i8 %i.bh, 1
  %.sroa.6.16.insert.ext = zext nneg i8 %i.bi to i32
  %.sroa.6.16.insert.insert = or disjoint i32 %.sroa.6.17.insert.shift, %.sroa.6.16.insert.ext
  %i.bj = shl i64 %i.bd, 30
  %.sroa.3.12.insert.shift = and i64 %i.bj, 30064771072
  %.sroa.3.12.insert.insert = or disjoint i64 %.sroa.3.12.insert.shift, %i.be
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.3.12.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.6.16.insert.insert, 1
  ret { i64, i32 } %.fca.1.insert
}

declare zeroext i1 @duckdb_je_arena_ralloc_no_move(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_te_event_trigger(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @malloc_init_hard() unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #21
  %.not.i13 = icmp eq i32 %i.b, 0
  br i1 %.not.i13, label %bb.b, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @init_lock) #21
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %atomic_store_b.exit.i, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !29
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !29
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !30
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !30
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !31
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !31
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.b, %bb.c
  %i.h = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !8 ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %malloc_mutex_lock.exit
  %i.j = load i64, ptr @malloc_initializer, align 8, !tbaa !24 ; 2 uses
  %i.k = tail call i64 @pthread_self() #23
  %i.l = icmp eq i64 %i.j, %i.k                   ; 2 uses
  %i.m = icmp eq i32 %i.h, 1
  %or.cond.i = and i1 %i.m, %i.l
  br i1 %or.cond.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i14 = icmp eq i64 %i.j, 0
  %brmerge.i = or i1 %.not.i14, %i.l
  br i1 %brmerge.i, label %malloc_init_hard_needed.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %malloc_mutex_lock.exit.i
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %malloc_mutex_lock.exit.i ], [ 0, %bb.e ] ; 5 uses
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = icmp ult i32 %.sroa.0.0.i, 5
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.i
  store volatile i32 0, ptr %i.a, align 4, !tbaa !8
  %.0..0..0..0..0..0..0..0.5.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %.0..highbits6.i.i = lshr i32 %.0..0..0..0..0..0..0..0.5.i.i, %.sroa.0.0.i
  %i.p = icmp eq i32 %.0..highbits6.i.i, 0
  br i1 %i.p, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !192
  %.0..0..0..0..0..0..0..0.1.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.q = add i32 %.0..0..0..0..0..0..0..0.1.i.i, 1
  store volatile i32 %i.q, ptr %i.a, align 4, !tbaa !8
  %.0..0..0..0..0..0..0..0..i.i = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %.0..highbits.i.i = lshr i32 %.0..0..0..0..0..0..0..0..i.i, %.sroa.0.0.i
  %i.r = icmp eq i32 %.0..highbits.i.i, 0
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.f
  %i.s = add nuw nsw i32 %.sroa.0.0.i, 1
  br label %spin_adaptive.exit.i

bb.g:                                             ; preds = %.preheader.i
  %i.t = tail call i32 @sched_yield() #21         ; 0 uses
  br label %spin_adaptive.exit.i

spin_adaptive.exit.i:                             ; preds = %bb.g, %._crit_edge.i.i
  %.sroa.0.1.i = phi i32 [ %i.s, %._crit_edge.i.i ], [ %.sroa.0.0.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #21
  %.not.i.i15 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i15, label %bb.h, label %atomic_store_b.exit.i.i

atomic_store_b.exit.i.i:                          ; preds = %spin_adaptive.exit.i
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @init_lock) #21
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %atomic_store_b.exit.i.i, %spin_adaptive.exit.i
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !29
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !29
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !30
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !30
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !31
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !31
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.i, %bb.h
  %i.aa = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.preheader.i

.loopexit:                                        ; preds = %malloc_mutex_lock.exit.i, %malloc_mutex_lock.exit, %bb.d
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #21 ; 0 uses
  br label %malloc_init_hard_cleanup.exit

malloc_init_hard_needed.exit:                     ; preds = %bb.e
  %.not = icmp eq i32 %i.h, 2
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %malloc_init_hard_needed.exit
  %i.ad = tail call fastcc zeroext i1 @malloc_init_hard_a0_locked()
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #21 ; 0 uses
  br label %malloc_init_hard_cleanup.exit

bb.l:                                             ; preds = %bb.j, %malloc_init_hard_needed.exit
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #21 ; 0 uses
  %i.ag = tail call ptr @duckdb_je_malloc_tsd_boot0() #21 ; 10 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %malloc_init_hard_cleanup.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !8
  %i.ai = tail call i64 @sysconf(i32 noundef 84) #21 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = trunc i64 %i.ai to i32
  %i.al = select i1 %i.aj, i32 1, i32 %i.ak
  store i32 %i.al, ptr @duckdb_je_ncpus, align 4, !tbaa !8
  %i.am = load i32, ptr @duckdb_je_opt_percpu_arena, align 4, !tbaa !8
  %.not2.i = icmp eq i32 %i.am, 2
  br i1 %.not2.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = tail call i64 @sysconf(i32 noundef 84) #21
  %i.ao = tail call i64 @sysconf(i32 noundef 83) #21
  %.not.i.i18 = icmp eq i64 %i.an, %i.ao
  %i.ap = load i32, ptr @duckdb_je_opt_narenas, align 4
  %i.aq = icmp ne i32 %i.ap, 0
  %or.cond.not.i = select i1 %.not.i.i18, i1 true, i1 %i.aq
  br i1 %or.cond.not.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr @duckdb_je_opt_percpu_arena, align 4, !tbaa !8
  tail call void @duckdb_je_malloc_write(ptr noundef nonnull @.str.180) #21
  %i.ar = load i8, ptr @duckdb_je_opt_abort_conf, align 1, !tbaa !94, !range !95, !noundef !96
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.176) #21
  tail call void @abort()
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.at = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !94, !range !95, !noundef !96
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @abort() #22
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.n, %bb.m
  %i.av = tail call i32 @pthread_atfork(ptr noundef nonnull @duckdb_je_jemalloc_prefork, ptr noundef nonnull @duckdb_je_jemalloc_postfork_parent, ptr noundef nonnull @duckdb_je_jemalloc_postfork_child) #21
  %.not.i19 = icmp eq i32 %i.av, 0
  br i1 %.not.i19, label %malloc_init_hard_recursible.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @duckdb_je_malloc_write(ptr noundef nonnull @.str.181) #21
  %i.aw = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !94, !range !95, !noundef !96
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.u, label %malloc_init_hard_cleanup.exit

bb.u:                                             ; preds = %bb.t
  tail call void @abort() #22
  unreachable

malloc_init_hard_recursible.exit:                 ; preds = %bb.s
  %i.ay = tail call zeroext i1 @duckdb_je_background_thread_boot0() #21
  br i1 %i.ay, label %malloc_init_hard_cleanup.exit, label %bb.v

bb.v:                                             ; preds = %malloc_init_hard_recursible.exit
  %i.az = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #21
  %.not.i21 = icmp eq i32 %i.az, 0
  br i1 %.not.i21, label %bb.w, label %atomic_store_b.exit.i22

atomic_store_b.exit.i22:                          ; preds = %bb.v
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @init_lock) #21
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  br label %bb.w

bb.w:                                             ; preds = %atomic_store_b.exit.i22, %bb.v
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !29
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !29
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !30
  %.not.i.i23 = icmp eq ptr %i.bc, %i.ag
  br i1 %.not.i.i23, label %malloc_mutex_lock.exit24, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !30
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !31
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !31
  br label %malloc_mutex_lock.exit24

malloc_mutex_lock.exit24:                         ; preds = %bb.w, %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 824
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !12
  %i.bh = icmp eq i8 %i.bg, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 8 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !12
  %i.bk = add i8 %i.bj, 1
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !12
  br i1 %i.bh, label %bb.y, label %pre_reentrancy.exit

bb.y:                                             ; preds = %malloc_mutex_lock.exit24
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %i.ag) #21
  br label %pre_reentrancy.exit

pre_reentrancy.exit:                              ; preds = %malloc_mutex_lock.exit24, %bb.y
  %i.bl = load i32, ptr @duckdb_je_opt_percpu_arena, align 4, !tbaa !8
  %.not.i25 = icmp eq i32 %i.bl, 2
  br i1 %.not.i25, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %pre_reentrancy.exit
  store i32 2, ptr @duckdb_je_opt_percpu_arena, align 4, !tbaa !8
  %i.bm = load i32, ptr @duckdb_je_opt_narenas, align 4, !tbaa !8 ; 2 uses
  %.not1.i = icmp eq i32 %i.bm, 0
  br i1 %.not1.i, label %bb.aa, label %malloc_narenas_default.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.bn = load i32, ptr @duckdb_je_ncpus, align 4, !tbaa !8 ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, 1
  br i1 %i.bo, label %bb.ab, label %malloc_narenas_default.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.bp = shl i32 %i.bn, 16
  %i.bq = load i32, ptr @duckdb_je_opt_narenas_ratio, align 4, !tbaa !8
  %i.br = zext i32 %i.bp to i64
  %i.bs = zext i32 %i.bq to i64
  %i.bt = mul nuw i64 %i.bs, %i.br
  %i.bu = lshr exact i64 %i.bt, 16
  %i.bv = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bw = lshr i32 %i.bv, 15
  %.lobit.i.i.i = and i32 %i.bw, 1
  %i.bx = lshr i32 %i.bv, 16
  %i.by = add nuw nsw i32 %.lobit.i.i.i, %i.bx
end_hunk_7
begin_hunk_8_@llvm.cttz.i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!6, !6, i64 0}
!13 = !{!"branch_weights", i32 2000, i32 2002}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTS7edata_s", !14, i64 0}
!16 = !{!"_Bool", !6, i64 0}
!17 = !{!"rtree_metadata_s", !7, i64 0, !7, i64 4, !16, i64 8, !16, i64 9}
!18 = !{!"rtree_contents_s", !15, i64 0, !17, i64 8}
!19 = !{!18, !15, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!"p1 _ZTS8hpdata_s", !14, i64 0}
!22 = !{!"edata_s", !20, i64 0, !14, i64 8, !6, i64 16, !21, i64 24, !20, i64 32, !6, i64 40, !6, i64 64}
!23 = !{!22, !20, i64 0}
!24 = !{!20, !20, i64 0}
!25 = !{!"", !20, i64 0}
!26 = !{!"", !7, i64 0}
!27 = !{!"p1 _ZTS6tsdn_s", !14, i64 0}
!28 = !{!"", !25, i64 0, !25, i64 8, !20, i64 16, !20, i64 24, !7, i64 32, !26, i64 36, !20, i64 40, !27, i64 48, !20, i64 56}
!29 = !{!28, !20, i64 56}
!30 = !{!28, !27, i64 48}
!31 = !{!28, !20, i64 40}
!32 = !{!"p1 _ZTS7arena_s", !14, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"bitmap_info_s", !20, i64 0, !20, i64 8}
!35 = !{!"bin_info_s", !20, i64 0, !20, i64 8, !7, i64 16, !7, i64 20, !34, i64 24}
!36 = !{!"locked_u64_s", !25, i64 0}
!37 = !{!"pac_decay_stats_s", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"pac_stats_s", !37, i64 0, !37, i64 24, !20, i64 48, !25, i64 56, !25, i64 64}
!39 = !{!"pa_shard_stats_s", !20, i64 0, !38, i64 8}
!40 = !{!"arena_stats_s", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !25, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !39, i64 104, !20, i64 184, !20, i64 192, !6, i64 200, !6, i64 968, !25, i64 10376}
!41 = !{!"p1 _ZTS13tcache_slow_s", !14, i64 0}
!42 = !{!"", !41, i64 0}
!43 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !14, i64 0}
!44 = !{!"", !43, i64 0}
!45 = !{!"malloc_mutex_s", !6, i64 0}
!46 = !{!"", !15, i64 0}
!47 = !{!"", !46, i64 0}
!48 = !{!"p1 _ZTS12pa_central_s", !14, i64 0}
!49 = !{!"", !16, i64 0}
!50 = !{!"pai_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!51 = !{!"eset_s", !6, i64 0, !6, i64 32, !6, i64 6432, !47, i64 9632, !25, i64 9640, !7, i64 9648}
!52 = !{!"ecache_s", !45, i64 0, !51, i64 112, !51, i64 9768, !7, i64 19424, !7, i64 19428, !16, i64 19432}
!53 = !{!"p1 _ZTS6base_s", !14, i64 0}
!54 = !{!"p1 _ZTS6emap_s", !14, i64 0}
!55 = !{!"p1 _ZTS13edata_cache_s", !14, i64 0}
!56 = !{!"exp_grow_s", !7, i64 0, !7, i64 4}
!57 = !{!"san_bump_alloc_s", !45, i64 0, !15, i64 112}
!58 = !{!"decay_s", !45, i64 0, !16, i64 112, !25, i64 120, !25, i64 128, !25, i64 136, !20, i64 144, !25, i64 152, !20, i64 160, !20, i64 168, !6, i64 176, !20, i64 1776}
!59 = !{!"p1 _ZTS14malloc_mutex_s", !14, i64 0}
!60 = !{!"p1 _ZTS11pac_stats_s", !14, i64 0}
!61 = !{!"pac_s", !50, i64 0, !52, i64 56, !52, i64 19496, !52, i64 38936, !53, i64 58376, !54, i64 58384, !55, i64 58392, !56, i64 58400, !45, i64 58408, !57, i64 58520, !25, i64 58640, !58, i64 58648, !58, i64 60432, !59, i64 62216, !60, i64 62224, !25, i64 62232}
!62 = !{!"p1 _ZTS5pai_s", !14, i64 0}
!63 = !{!"sec_opts_s", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32}
!64 = !{!"p1 _ZTS11sec_shard_s", !14, i64 0}
!65 = !{!"sec_s", !50, i64 0, !62, i64 56, !63, i64 64, !64, i64 104, !7, i64 112}
!66 = !{!"p1 _ZTS13hpa_central_s", !14, i64 0}
!67 = !{!"edata_cache_fast_s", !47, i64 0, !55, i64 8, !16, i64 16}
!68 = !{!"psset_bin_stats_s", !20, i64 0, !20, i64 8, !20, i64 16}
!69 = !{!"psset_stats_s", !6, i64 0, !6, i64 3072, !6, i64 3120}
!70 = !{!"", !21, i64 0}
!71 = !{!"", !70, i64 0}
!72 = !{!"psset_s", !6, i64 0, !6, i64 1024, !68, i64 1032, !69, i64 1056, !71, i64 4224, !6, i64 4232, !6, i64 5256, !71, i64 5272}
!73 = !{!"hpa_shard_opts_s", !20, i64 0, !20, i64 8, !7, i64 16, !16, i64 20, !20, i64 24, !20, i64 32, !16, i64 40}
!74 = !{!"hpa_shard_nonderived_stats_s", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!75 = !{!"hpa_shard_s", !50, i64 0, !66, i64 56, !45, i64 64, !45, i64 176, !53, i64 288, !67, i64 296, !72, i64 320, !20, i64 5600, !7, i64 5608, !54, i64 5616, !73, i64 5624, !20, i64 5672, !74, i64 5680, !25, i64 5712}
!76 = !{!"ph_s", !14, i64 0, !20, i64 8}
!77 = !{!"", !76, i64 0}
!78 = !{!"edata_cache_s", !77, i64 0, !25, i64 16, !45, i64 24, !53, i64 136}
!79 = !{!"p1 _ZTS16pa_shard_stats_s", !14, i64 0}
!80 = !{!"pa_shard_s", !48, i64 0, !25, i64 8, !49, i64 16, !16, i64 17, !61, i64 24, !65, i64 62264, !75, i64 62384, !78, i64 68104, !7, i64 68248, !59, i64 68256, !79, i64 68264, !54, i64 68272, !53, i64 68280}
!81 = !{!"arena_s", !6, i64 0, !26, i64 8, !27, i64 16, !40, i64 24, !42, i64 10408, !44, i64 10416, !45, i64 10424, !26, i64 10536, !47, i64 10544, !45, i64 10552, !80, i64 10664, !7, i64 78952, !53, i64 78960, !25, i64 78968, !6, i64 78976, !6, i64 79040}
!82 = !{!81, !7, i64 78952}
!83 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!84 = !{!"branch_weights", !"expected", i32 1072669, i32 2146410979}
!85 = !{!"any p2 pointer", !14, i64 0}
!86 = !{!"cache_bin_stats_s", !20, i64 0}
!87 = !{!"short", !6, i64 0}
!88 = !{!"cache_bin_info_s", !87, i64 0}
!89 = !{!"cache_bin_s", !85, i64 0, !86, i64 8, !87, i64 16, !87, i64 18, !87, i64 20, !88, i64 22}
!90 = !{!89, !85, i64 0}
!91 = !{!14, !14, i64 0}
!92 = !{!89, !87, i64 16}
!93 = !{!89, !87, i64 20}
!94 = !{!16, !16, i64 0}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = !{!89, !20, i64 8}
!98 = !{!"tcache_s", !41, i64 0, !6, i64 8}
!99 = !{!98, !41, i64 0}
!100 = !{!"", !41, i64 0, !41, i64 8}
!101 = !{!"", !43, i64 0, !43, i64 8}
!102 = !{!"p1 _ZTS11cache_bin_s", !14, i64 0}
!103 = !{!"cache_bin_array_descriptor_s", !101, i64 0, !102, i64 16}
!104 = !{!"p1 _ZTS8tcache_s", !14, i64 0}
!105 = !{!"tcache_slow_s", !100, i64 0, !103, i64 16, !32, i64 40, !7, i64 48, !7, i64 52, !6, i64 56, !6, i64 92, !6, i64 128, !14, i64 168, !104, i64 176}
!106 = !{!105, !7, i64 48}
!107 = !{!"branch_weights", !"expected", i32 805941, i32 2146677707}
!108 = !{!"p1 long", !14, i64 0}
!109 = !{!"te_ctx_s", !16, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32}
!110 = !{!109, !16, i64 0}
!111 = !{!109, !108, i64 8}
!112 = !{!109, !108, i64 16}
!113 = !{!109, !108, i64 24}
!114 = !{!109, !108, i64 32}
!115 = !{!"branch_weights", i32 1073205, i32 2146410443}
!116 = !{!"branch_weights", !"expected", i32 1072668, i32 2146410980}
!117 = !{!"branch_weights", i32 1, i32 4001}
!118 = !{!"branch_weights", !"expected", i32 470597, i32 2147013051}
!119 = !{!"branch_weights", !"expected", i32 1609807, i32 2145873841}
!120 = !{!"branch_weights", !"expected", i32 737943, i32 2146745705}
!121 = !{!"branch_weights", !"expected", i32 1073741824, i32 1073741824}
!122 = !{!89, !87, i64 18}
!123 = !{!89, !87, i64 22}
!124 = !{!"p1 _ZTS16rtree_leaf_elm_s", !14, i64 0}
!125 = !{!"rtree_ctx_cache_elm_s", !20, i64 0, !124, i64 8}
!126 = !{!125, !20, i64 0}
!127 = !{!125, !124, i64 8}
!128 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!129 = !{!"p1 _ZTS9tcaches_s", !14, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!132 = !{!"branch_weights", !"expected", i32 2146410979, i32 1072669}
!133 = !{!"branch_weights", !"expected", i32 2146410741, i32 1072907}
!134 = !{!105, !32, i64 40}
!135 = !{!"p1 omnipotent char", !14, i64 0}
!136 = !{!135, !135, i64 0}
!137 = !{!73, !20, i64 8}
!138 = !{!35, !7, i64 20}
!139 = !{!"branch_weights", i32 4001, i32 4000000}
!140 = !{!"branch_weights", !"expected", i32 1609806, i32 2145873842}
!141 = !{!"branch_weights", i32 4000000, i32 4001}
!142 = !{!"branch_weights", i32 1321934945, i32 -1321934945}
!143 = !{!"branch_weights", !"expected", i32 1321934945, i32 825548703}
!144 = !{!"branch_weights", !"expected", i32 2146409369, i32 1074279}
!145 = !{!"branch_weights", i32 2144668, i32 -2144668}
!146 = !{!"branch_weights", !"expected", i32 2144668, i32 2145338980}
!147 = distinct !{!147, i1 false, !"rtree_leaf_elm_read"}
!148 = distinct !{!148, !147, !"rtree_leaf_elm_read: argument 0"}
!149 = !{!148}
!150 = !{!"branch_weights", i32 2146410443, i32 1073205}
!151 = !{!"branch_weights", i32 1, i32 1048575}
!152 = !{!"branch_weights", !"expected", i32 470596, i32 2147013052}
!153 = !{!"branch_weights", !"expected", i32 1609941, i32 2145873707}
!154 = !{!"hook_ralloc_args_s", !16, i64 0, !6, i64 8}
!155 = !{!154, !16, i64 0}
!156 = !{!"branch_weights", !"expected", i32 1072667, i32 2146410981}
!157 = !{!"branch_weights", !"expected", i32 470600, i32 2147013048}
!158 = !{!"branch_weights", !"expected", i32 1948825, i32 2145534823}
!159 = distinct !{!159, !162}
!160 = !{!35, !7, i64 16}
!161 = !{!"branch_weights", i32 2002, i32 2000}
!162 = !{!"llvm.loop.unroll.disable"}
!163 = !{!108, !108, i64 0}
!164 = !{i64 0, i64 8, !24, i64 8, i64 8, !24, i64 16, i64 4, !8, i64 20, i64 1, !94, i64 24, i64 8, !24, i64 32, i64 8, !24, i64 40, i64 1, !94}
!165 = !{!73, !16, i64 20}
!166 = !{!81, !41, i64 10408}
!167 = !{!105, !104, i64 176}
!168 = !{!105, !41, i64 0}
!169 = !{!73, !20, i64 0}
!170 = !{!73, !20, i64 24}
!171 = !{!73, !20, i64 32}
!172 = !{!73, !16, i64 40}
!173 = !{!73, !7, i64 16}
!174 = !{!63, !20, i64 0}
!175 = !{!63, !20, i64 8}
!176 = !{!63, !20, i64 16}
!177 = !{!63, !20, i64 24}
!178 = !{!63, !20, i64 32}
!179 = distinct !{!179, i1 false, !"rtree_leaf_elm_read"}
!180 = distinct !{!180, !179, !"rtree_leaf_elm_read: argument 0"}
!181 = distinct !{!181, i1 false, !"rtree_leaf_elm_bits_decode"}
!182 = distinct !{!182, !181, !"rtree_leaf_elm_bits_decode: argument 0"}
!183 = !{!180}
!184 = !{!18, !7, i64 8}
!185 = !{!182}
!186 = !{!18, !16, i64 17}
!187 = !{!18, !16, i64 16}
!188 = !{!18, !7, i64 12}
!189 = distinct !{!189, i1 false, !"rtree_leaf_elm_read"}
!190 = distinct !{!190, !189, !"rtree_leaf_elm_read: argument 0"}
!191 = !{!190}
!192 = !{i64 2151180949}
end_hunk_8
