Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/arena?download=true
inline.NumInlined: 316
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@arena_bin_malloc_no_fresh_slab:bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr %i.u, ptr %i.x, align 8, !tbaa !106
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.b, ptr %i.z, align 8, !tbaa !106
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !106
  br label %edata_list_active_append.exit.i.i

edata_list_active_append.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.aa = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.b, %bb.d ]
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !111
  br label %arena_bin_slabs_full_insert.exit.i

arena_bin_slabs_full_insert.exit.i:               ; preds = %bb.a, %edata_list_active_append.exit.i.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ac = tail call ptr @je_edata_heap_remove_first(ptr noundef nonnull %i.ab) #16 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %arena_bin_refill_slabcur_no_fresh_slab.exit.thread, label %arena_bin_refill_slabcur_no_fresh_slab.exit

arena_bin_refill_slabcur_no_fresh_slab.exit.thread: ; preds = %arena_bin_slabs_full_insert.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !118
  br label %bb.g

arena_bin_refill_slabcur_no_fresh_slab.exit:      ; preds = %arena_bin_slabs_full_insert.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !125
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !125
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !126
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !126
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !118
  br label %bb.f

bb.f:                                             ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit, %bb.b
  %i.ak = phi ptr [ %i.ac, %arena_bin_refill_slabcur_no_fresh_slab.exit ], [ %i.b, %bb.b ] ; 4 uses
  %i.al = zext i32 %2 to i64
  %i.am = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 3 uses
  %.0101.i.i = load i64, ptr %i.an, align 8, !tbaa !20 ; 2 uses
  %i.ao = icmp eq i64 %.0101.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i, label %arena_slab_reg_alloc.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.02.i.i = phi i32 [ %i.ap, %.lr.ph.i.i ], [ 0, %bb.f ]
  %i.ap = add i32 %.02.i.i, 1                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq
  %.010.i.i = load i64, ptr %i.ar, align 8, !tbaa !20 ; 2 uses
  %i.as = icmp eq i64 %.010.i.i, 0
  br i1 %i.as, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !4

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.at = shl i32 %i.ap, 6
  %i.au = zext i32 %i.at to i64
  br label %arena_slab_reg_alloc.exit

arena_slab_reg_alloc.exit:                        ; preds = %bb.f, %._crit_edge.loopexit.i.i
  %.0.lcssa.i.i = phi i64 [ 0, %bb.f ], [ %i.au, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.010.lcssa.i.i = phi i64 [ %.0101.i.i, %bb.f ], [ %.010.i.i, %._crit_edge.loopexit.i.i ]
  %i.av = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.010.lcssa.i.i, i1 true) ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, %.0.lcssa.i.i
  %i.ax = lshr exact i64 %.0.lcssa.i.i, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !20
  %i.ba = shl nuw i64 1, %i.av
  %i.bb = xor i64 %i.ba, %i.az
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !20
  %i.bc = getelementptr i8, ptr %i.ak, i64 8
  %.val.i10 = load ptr, ptr %i.bc, align 8, !tbaa !109
  %i.bd = ptrtoint ptr %.val.i10 to i64
  %i.be = load i64, ptr %i.am, align 8, !tbaa !124
  %i.bf = mul i64 %i.be, %i.aw
  %i.bg = add i64 %i.bf, %i.bd
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.ak, align 8, !tbaa !110
  %i.bj = add i64 %i.bi, -268435456
  store i64 %i.bj, ptr %i.ak, align 8, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit.thread, %arena_slab_reg_alloc.exit
  %.0 = phi ptr [ %i.bh, %arena_slab_reg_alloc.exit ], [ null, %arena_bin_refill_slabcur_no_fresh_slab.exit.thread ]
  ret ptr %.0
}

declare void @je_tcache_bin_flush_stashed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @je_tcache_alloc_small_hard(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #14 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !114  ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !105

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !114
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !105

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !114
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !105

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !115  ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !114
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !115
  store ptr %i.u, ptr %i.r, align 8, !tbaa !115
  store i64 %i.c, ptr %i.d, align 8, !tbaa !114
  store ptr %i.s, ptr %i.t, align 8, !tbaa !115
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !114
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !105

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !114
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !105

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !114
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !105

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !114
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !105

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !114
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !105

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !114
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !105

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #16
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !115 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !114
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !114
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !115
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !115
  store i64 %i.e, ptr %i.at, align 8, !tbaa !114
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !115
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !115
  store i64 %i.c, ptr %i.d, align 8, !tbaa !114
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !115
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !227
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !228, !alias.scope !229
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !230, !alias.scope !229
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = lshr i8 %i.bh, 1
  %i.bl = and i8 %4, 1
  store i8 %i.bl, ptr %i.bk, align 8, !tbaa !231, !alias.scope !229
  %5 = trunc i64 %i.bd to i32
  %6 = lshr i32 %5, 2
  %i.bm = and i32 %6, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !232, !alias.scope !229
  %i.bo = shl i64 %i.bd, 16
  %i.bp = ashr exact i64 %i.bo, 16
  %i.bq = and i64 %i.bp, -128
  %i.br = inttoptr i64 %i.bq to ptr
  store ptr %i.br, ptr %0, align 8, !tbaa !139, !alias.scope !229
  ret void
}

declare void @je_tcache_bin_flush_large(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @je_edata_heap_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_edata_heap_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %bb.b, label %bb.c, !prof !105

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !106
  %i.f = zext i8 %i.e to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %sz_size2index.exit.thread, label %bb.d, !prof !107

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.i, i1 true) ; 3 uses
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
  %i.t = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.t, %bb.d ]
  %i.u = icmp samesign ult i32 %.0.i, 39
  br i1 %i.u, label %bb.e, label %sz_size2index.exit.thread, !prof !140

bb.e:                                             ; preds = %sz_size2index.exit
  tail call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %1)
  br label %bb.f

sz_size2index.exit.thread:                        ; preds = %bb.c, %sz_size2index.exit
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %sz_size2index.exit.thread, %bb.e
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !107

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #16
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #16
  ret void
}

declare void @je_tcache_bin_flush_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #3

declare ptr @je_arena_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !92}
!1 = distinct !{!1, !92}
!2 = distinct !{!2, !92}
!3 = distinct !{!3, !92}
!4 = distinct !{!4, !92}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !13, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"long", !13, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"", !14, i64 0}
!22 = !{!"p1 _ZTS6tsdn_s", !16, i64 0}
!23 = !{!"", !19, i64 0}
!24 = !{!"locked_u64_s", !23, i64 0}
!25 = !{!"pac_decay_stats_s", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"pac_stats_s", !25, i64 0, !25, i64 24, !19, i64 48, !23, i64 56, !23, i64 64}
!27 = !{!"pa_shard_stats_s", !19, i64 0, !26, i64 8}
!28 = !{!"arena_stats_s", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !23, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !27, i64 88, !19, i64 168, !19, i64 176, !13, i64 184, !13, i64 952, !23, i64 10360}
!29 = !{!"p1 _ZTS13tcache_slow_s", !16, i64 0}
!30 = !{!"", !29, i64 0}
!31 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !16, i64 0}
!32 = !{!"", !31, i64 0}
!33 = !{!"malloc_mutex_s", !13, i64 0}
!34 = !{!"p1 _ZTS7edata_s", !16, i64 0}
!35 = !{!"", !34, i64 0}
!36 = !{!"", !35, i64 0}
!37 = !{!"p1 _ZTS12pa_central_s", !16, i64 0}
!38 = !{!"_Bool", !13, i64 0}
!39 = !{!"", !38, i64 0}
!40 = !{!"pai_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48}
!41 = !{!"eset_s", !13, i64 0, !13, i64 32, !13, i64 6432, !36, i64 9632, !23, i64 9640, !14, i64 9648}
!42 = !{!"ecache_s", !33, i64 0, !41, i64 112, !41, i64 9768, !14, i64 19424, !14, i64 19428, !38, i64 19432}
!43 = !{!"p1 _ZTS6base_s", !16, i64 0}
!44 = !{!"p1 _ZTS6emap_s", !16, i64 0}
!45 = !{!"p1 _ZTS13edata_cache_s", !16, i64 0}
!46 = !{!"exp_grow_s", !14, i64 0, !14, i64 4}
!47 = !{!"san_bump_alloc_s", !33, i64 0, !34, i64 112}
!48 = !{!"decay_s", !33, i64 0, !38, i64 112, !23, i64 120, !23, i64 128, !23, i64 136, !19, i64 144, !23, i64 152, !19, i64 160, !19, i64 168, !13, i64 176, !19, i64 1776}
!49 = !{!"p1 _ZTS14malloc_mutex_s", !16, i64 0}
!50 = !{!"p1 _ZTS11pac_stats_s", !16, i64 0}
!51 = !{!"pac_s", !40, i64 0, !42, i64 56, !42, i64 19496, !42, i64 38936, !43, i64 58376, !44, i64 58384, !45, i64 58392, !46, i64 58400, !33, i64 58408, !47, i64 58520, !23, i64 58640, !48, i64 58648, !48, i64 60432, !49, i64 62216, !50, i64 62224, !23, i64 62232}
!52 = !{!"p1 _ZTS5pai_s", !16, i64 0}
!53 = !{!"sec_opts_s", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32}
!54 = !{!"p1 _ZTS11sec_shard_s", !16, i64 0}
!55 = !{!"sec_s", !40, i64 0, !52, i64 56, !53, i64 64, !54, i64 104, !14, i64 112}
!56 = !{!"p1 _ZTS13hpa_central_s", !16, i64 0}
end_hunk_0
