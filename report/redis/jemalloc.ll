inline.NumInlined: 520
inline.NumDeleted: 74
begin_hunk_0_@je_malloc_default:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i77272, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.al, i32 noundef %.0.i50.i, i1 noundef zeroext true) #21
  %i.bd = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i77272, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.al, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #21
  %i.be = load i8, ptr %i.a, align 1, !tbaa !104, !range !105, !noundef !106
  %.not259 = icmp eq i8 %i.be, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not259, label %aligned_usize_get.exit.i.thread, label %cache_bin_alloc_impl.exit.i57.thread

cache_bin_alloc_impl.exit.i57.thread:             ; preds = %bb.h, %bb.f, %bb.k
  %.131.i.i65 = phi ptr [ %i.bd, %bb.k ], [ %i.an, %bb.f ], [ %i.an, %bb.h ]
end_hunk_0
begin_hunk_1_@je_malloc_default:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.er, i32 noundef %.0.i50.i21, i1 noundef zeroext true) #21
  %i.fj = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fd, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.er, i32 noundef %.0.i50.i21, ptr noundef nonnull %i.b) #21
  %i.fk = load i8, ptr %i.b, align 1, !tbaa !104, !range !105, !noundef !106
  %.not258 = icmp eq i8 %i.fk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not258, label %aligned_usize_get.exit.i14.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.ah, %bb.af, %bb.ak
  %.131.i.i = phi ptr [ %i.fj, %bb.ak ], [ %i.et, %bb.af ], [ %i.et, %bb.ah ] ; 2 uses
end_hunk_1
begin_hunk_2_@je_calloc_internal:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i79279, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ap, i32 noundef %.0.i50.i, i1 noundef zeroext true) #21
  %i.bh = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i79279, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ap, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #21
  %i.bi = load i8, ptr %i.a, align 1, !tbaa !104, !range !105, !noundef !106
  %.not266 = icmp eq i8 %i.bi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not266, label %aligned_usize_get.exit.i.thread, label %.cache_bin_alloc_impl.exit.i59.thread_crit_edge

.cache_bin_alloc_impl.exit.i59.thread_crit_edge:  ; preds = %bb.m
  %.pre267 = load i64, ptr %i.ak, align 8, !tbaa !27
end_hunk_2
begin_hunk_3_@je_calloc_internal:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.eq, ptr noundef nonnull %i.ey, i32 noundef %.0.i50.i23, i1 noundef zeroext true) #21
  %i.fq = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fk, ptr noundef nonnull %i.eq, ptr noundef nonnull %i.ey, i32 noundef %.0.i50.i23, ptr noundef nonnull %i.b) #21
  %i.fr = load i8, ptr %i.b, align 1, !tbaa !104, !range !105, !noundef !106
  %.not262 = icmp eq i8 %i.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not262, label %aligned_usize_get.exit.i16.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.al, %bb.aj, %bb.ao
  %.131.i.i = phi ptr [ %i.fq, %bb.ao ], [ %i.fa, %bb.aj ], [ %i.fa, %bb.al ] ; 2 uses
end_hunk_3
begin_hunk_4_@je_mallocx:bb.a
  %i.f = shl nuw i64 1, %i.e
  %i.g = and i64 %i.f, -2                         ; 2 uses
  %i.h = trunc i32 %1 to i8
  %i.i = lshr i8 %i.h, 6
  %4 = and i8 %i.i, 1                             ; 2 uses
  %i.j = and i32 %1, 1048320                      ; 2 uses
  switch i32 %i.j, label %bb.d [
    i32 0, label %mallocx_tcache_get.exit
end_hunk_4
begin_hunk_5_@je_mallocx:bb.a
mallocx_arena_get.exit:                           ; preds = %bb.e, %mallocx_tcache_get.exit, %bb.a
  %.sroa.60.0 = phi i32 [ -1, %bb.a ], [ %i.n, %bb.e ], [ -1, %mallocx_tcache_get.exit ] ; 6 uses
  %.sroa.54152.0 = phi i32 [ -2, %bb.a ], [ %.0.i10, %bb.e ], [ %.0.i10, %mallocx_tcache_get.exit ] ; 6 uses
  %.sroa.42.0 = phi i8 [ 0, %bb.a ], [ %4, %bb.e ], [ %4, %mallocx_tcache_get.exit ] ; 2 uses
  %.sroa.32.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.e ], [ %i.g, %mallocx_tcache_get.exit ] ; 14 uses
  %i.o = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 832
end_hunk_5
begin_hunk_6_@je_mallocx:bb.a

compute_size_with_overflow.exit37:                ; preds = %mallocx_arena_get.exit, %tsd_fetch_impl.exit
  %.0.i85310 = phi ptr [ %i.r, %tsd_fetch_impl.exit ], [ %i.o, %mallocx_arena_get.exit ] ; 17 uses
  %i.t = trunc nuw i8 %.sroa.42.0 to i1           ; 6 uses
  %i.u = icmp eq i64 %.sroa.32.0, 0               ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.j

end_hunk_6
begin_hunk_7_@je_mallocx:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i85310, ptr noundef nonnull %.0.i.i42, ptr noundef nonnull %i.da, i32 noundef %.0207222, i1 noundef zeroext true) #21
  %i.ds = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i85310, ptr noundef nonnull %i.dm, ptr noundef nonnull %.0.i.i42, ptr noundef nonnull %i.da, i32 noundef %.0207222, ptr noundef nonnull %i.a) #21
  %i.dt = load i8, ptr %i.a, align 1, !tbaa !104, !range !105, !noundef !106
  %.not291 = icmp eq i8 %i.dt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not291, label %imalloc.exit, label %cache_bin_alloc_impl.exit.i65.thread

cache_bin_alloc_impl.exit.i65.thread:             ; preds = %bb.ab, %bb.z, %bb.ae
  %.131.i.i73 = phi ptr [ %i.ds, %bb.ae ], [ %i.dc, %bb.z ], [ %i.dc, %bb.ab ] ; 2 uses
end_hunk_7
begin_hunk_8_@je_mallocx:bb.a
compute_size_with_overflow.exit:                  ; preds = %bb.av, %bb.aw
  %i.fw = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.fx = or i8 %i.fw, %.sroa.42.0
  %.0.i.i18 = icmp ne i8 %i.fx, 0                 ; 7 uses
  %i.fy = icmp eq i64 %.sroa.32.0, 0              ; 2 uses
  br i1 %i.fy, label %bb.ax, label %bb.bb

end_hunk_8
begin_hunk_9_@je_mallocx:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.r, ptr noundef nonnull %.0.i.i38266.ph, ptr noundef nonnull %i.jj, i32 noundef %.0204254, i1 noundef zeroext true) #21
  %i.kb = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.r, ptr noundef nonnull %i.jv, ptr noundef nonnull %.0.i.i38266.ph, ptr noundef nonnull %i.jj, i32 noundef %.0204254, ptr noundef nonnull %i.b) #21
  %i.kc = load i8, ptr %i.b, align 1, !tbaa !104, !range !105, !noundef !106
  %.not290 = icmp eq i8 %i.kc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not290, label %aligned_usize_get.exit.i22.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.bt, %bb.br, %bb.bw
  %.131.i.i = phi ptr [ %i.kb, %bb.bw ], [ %i.jl, %bb.br ], [ %i.jl, %bb.bt ] ; 2 uses
end_hunk_9
begin_hunk_10_@je_realloc_internal:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i100300, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ar, i32 noundef %.0.i50.i, i1 noundef zeroext true) #21
  %i.bj = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i100300, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ar, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #21
  %i.bk = load i8, ptr %i.a, align 1, !tbaa !104, !range !105, !noundef !106
  %.not283 = icmp eq i8 %i.bk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not283, label %aligned_usize_get.exit.i.thread, label %cache_bin_alloc_impl.exit.i80.thread

cache_bin_alloc_impl.exit.i80.thread:             ; preds = %bb.l, %bb.j, %bb.o
  %.131.i.i88 = phi ptr [ %i.bj, %bb.o ], [ %i.at, %bb.j ], [ %i.at, %bb.l ]
end_hunk_10
begin_hunk_11_@je_realloc_internal:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ep, ptr noundef nonnull %i.ex, i32 noundef %.0.i50.i44, i1 noundef zeroext true) #21
  %i.fp = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.m, ptr noundef nonnull %i.fj, ptr noundef nonnull %i.ep, ptr noundef nonnull %i.ex, i32 noundef %.0.i50.i44, ptr noundef nonnull %i.b) #21
  %i.fq = load i8, ptr %i.b, align 1, !tbaa !104, !range !105, !noundef !106
  %.not282 = icmp eq i8 %i.fq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not282, label %aligned_usize_get.exit.i37.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.al, %bb.aj, %bb.ao
  %.131.i.i = phi ptr [ %i.fp, %bb.ao ], [ %i.ez, %bb.aj ], [ %i.ez, %bb.al ] ; 2 uses
end_hunk_11
