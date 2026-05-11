inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@_mi_os_alloc_aligned_at_offset:bb.a
; Function Attrs: nounwind uwtable
define hidden ptr @_mi_os_alloc_aligned(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef writeonly captures(none) initializes((0, 24)) %4, ptr readnone captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@_mi_os_alloc_aligned:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !40  ; 5 uses
  %.not25.i = icmp eq ptr %i.an, null
  br i1 %.not25.i, label %mi_os_prim_alloc.exit.thread24, label %bb.s

end_hunk_1
begin_hunk_2_@_mi_os_alloc_aligned:bb.a
  br label %_mi_stat_increase.exit.i

_mi_stat_increase.exit.i:                         ; preds = %bb.w, %bb.v
  br i1 %2, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_mi_stat_increase.exit.i
  %i.ay = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %.0.i.i monotonic, align 8
end_hunk_2
begin_hunk_3_@_mi_os_alloc_aligned:bb.a

bb.aa:                                            ; preds = %mi_atomic_maxi64_relaxed.exit.i.i27.i
  %i.bf = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 %.0.i.i monotonic, align 8 ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %mi_atomic_maxi64_relaxed.exit.i.i27.i
  %i.bg = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %.0.i.i monotonic, align 8 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %_mi_stat_increase.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.bh = ptrtoint ptr %i.an to i64
  %i.bi = add i64 %.0.i16, -1                     ; 2 uses
  %i.bj = and i64 %i.bi, %i.bh
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %mi_os_prim_alloc_aligned.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = tail call i32 @munmap(ptr noundef nonnull %i.an, i64 noundef %.0.i.i) #56
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %_mi_prim_free.exit.i.i, label %_mi_prim_free.exit.thread.i.i

end_hunk_3
begin_hunk_4_@_mi_os_alloc_aligned:bb.a
  br i1 %.not.i.i, label %_mi_prim_free.exit.thread.i.i, label %bb.ae

bb.ae:                                            ; preds = %_mi_prim_free.exit.i.i
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.94, i32 noundef %i.bo, i32 noundef %i.bo, i64 noundef %.0.i.i, ptr noundef nonnull %i.an)
  br label %_mi_prim_free.exit.thread.i.i

_mi_prim_free.exit.thread.i.i:                    ; preds = %bb.ae, %_mi_prim_free.exit.i.i, %bb.ad
end_hunk_4
begin_hunk_5_@_mi_os_alloc_aligned:bb.a
mi_align_up_ptr.exit99.i:                         ; preds = %mi_os_prim_alloc.exit97.i
  %i.dp = add i64 %i.bi, %magicptr16.i
  %i.dq = sub i64 0, %.0.i16
  %i.dr = and i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = inttoptr i64 %i.dr to ptr               ; 4 uses
  %i.dt = sub i64 %i.dr, %magicptr16.i            ; 2 uses
  %i.du = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91 ; 4 uses
  %i.dv = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.du)
end_hunk_5
begin_hunk_6_@_mi_os_alloc_aligned:bb.a
  tail call fastcc void @mi_os_prim_free(ptr noundef %i.ef, i64 noundef %i.ee, i1 noundef zeroext %2)
  br label %mi_os_prim_alloc_aligned.exit

mi_os_prim_alloc_aligned.exit:                    ; preds = %bb.bg, %bb.bh, %bb.ac
  %.2.i = phi ptr [ %i.an, %bb.ac ], [ %i.ds, %bb.bg ], [ %i.ds, %bb.bh ] ; 3 uses
  %.not = icmp eq ptr %.2.i, null
  br i1 %.not, label %mi_os_prim_alloc_aligned.exit.thread, label %mi_os_prim_alloc_aligned.exit.thread29

mi_os_prim_alloc_aligned.exit.thread29:           ; preds = %mi_os_prim_alloc_aligned.exit
  %i.eg = load i8, ptr %i.c, align 1, !tbaa !125, !range !42, !noundef !43
  %i.eh = load i8, ptr %i.b, align 1, !tbaa !125, !range !42, !noundef !43
  %i.ei = zext i1 %2 to i8
end_hunk_6
begin_hunk_7_@_mi_os_alloc_aligned:bb.a
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 3, ptr %.sroa.721.0..sroa_idx, align 4, !tbaa !7
  store ptr %.2.i, ptr %4, align 8, !tbaa !60
  %i.ej = getelementptr i8, ptr %4, i64 8
  store i64 %.0.i16, ptr %i.ej, align 8, !tbaa !60
  br label %mi_os_prim_alloc_aligned.exit.thread

mi_os_prim_alloc_aligned.exit.thread:             ; preds = %bb.ap, %mi_os_prim_alloc.exit97.i, %_mi_align_up.exit.i, %bb.as, %_mi_prim_alloc.exit109.i, %mi_os_prim_free.exit.i, %mi_os_prim_alloc.exit.thread24, %_mi_align_up.exit, %mi_os_prim_alloc_aligned.exit.thread29, %mi_os_prim_alloc_aligned.exit
  %.2.i23 = phi ptr [ null, %mi_os_prim_alloc_aligned.exit ], [ %.2.i, %mi_os_prim_alloc_aligned.exit.thread29 ], [ null, %_mi_align_up.exit ], [ null, %mi_os_prim_alloc.exit.thread24 ], [ null, %mi_os_prim_free.exit.i ], [ null, %_mi_prim_alloc.exit109.i ], [ null, %bb.as ], [ null, %_mi_align_up.exit.i ], [ null, %bb.ap ], [ null, %mi_os_prim_alloc.exit97.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  br label %bb.bi

bb.bi:                                            ; preds = %bb.a, %mi_os_prim_alloc_aligned.exit.thread
  %.0 = phi ptr [ %.2.i23, %mi_os_prim_alloc_aligned.exit.thread ], [ null, %bb.a ]
  ret ptr %.0
}

end_hunk_7
begin_hunk_8_@mi_heap_malloc_zero_aligned_at_fallback:bb.a
; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @mi_arena_try_alloc_at(ptr noundef nonnull captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i1 noundef zeroext %2, ptr noundef writeonly captures(none) %3, ptr noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  %i.c = getelementptr i8, ptr %0, i64 136
end_hunk_8
begin_hunk_9_@mi_arena_try_alloc_at:bb.a
  %i.n = load i32, ptr %0, align 8, !tbaa !117
  %i.o = getelementptr i8, ptr %0, i64 92
  %i.p = load i8, ptr %i.o, align 4, !tbaa !118, !range !42, !noundef !43
  %i.q = load i64, ptr %i.a, align 8, !tbaa !105  ; 9 uses
  store i64 %i.q, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_9
begin_hunk_10_@mi_arena_try_alloc_at:bb.a
  br i1 %.not38, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = lshr i64 %i.q, 6                        ; 2 uses
  %i.bl = and i64 %i.q, 63                        ; 5 uses
  %i.bm = add nuw nsw i64 %i.bl, %1
  %i.bn = icmp samesign ult i64 %i.bm, 65
  br i1 %i.bn, label %bb.j, label %mi_bitmap_mask_.exit24.i.i39, !prof !55
end_hunk_10
begin_hunk_11_@mi_arena_try_alloc_at:bb.a
bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr i8, ptr %3, i64 17        ; 2 uses
  store i8 1, ptr %i.cz, align 1, !tbaa !162
  %i.da = lshr i64 %i.q, 6                        ; 2 uses
  %i.db = and i64 %i.q, 63                        ; 5 uses
  %i.dc = add nuw nsw i64 %i.db, %1
  %i.dd = icmp samesign ult i64 %i.dc, 65
  br i1 %i.dd, label %bb.r, label %mi_bitmap_mask_.exit24.i.i49, !prof !55
end_hunk_11
begin_hunk_12_@mi_arena_try_alloc_at:bb.a
  br label %mi_arena_try_claim.exit

bb.aa:                                            ; preds = %bb.p
  %i.eo = lshr i64 %i.q, 6                        ; 2 uses
  %i.ep = and i64 %i.q, 63                        ; 5 uses
  %i.eq = add nuw nsw i64 %i.ep, %1
  %i.er = icmp samesign ult i64 %i.eq, 65
  br i1 %i.er, label %bb.ab, label %mi_bitmap_mask_.exit24.i.i.i, !prof !55
end_hunk_12
begin_hunk_13_@mi_segment_purge:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.mi_commit_mask_s, align 16  ; 11 uses
  %5 = alloca %struct.mi_commit_mask_s, align 16  ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 25
  %i.d = load i8, ptr %i.c, align 1, !tbaa !309, !range !42, !noundef !43
end_hunk_13
begin_hunk_14_@mi_segment_purge:bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  call fastcc void @mi_segment_commit_mask(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef %1, i64 noundef %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %4)
  %i.f = load <2 x i64>, ptr %4, align 16         ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load <2 x i64>, ptr %i.g, align 16       ; 6 uses
  %i.i = shufflevector <2 x i64> %i.f, <2 x i64> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i64> %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = load <2 x i64>, ptr %i.j, align 16
  %.fr4 = freeze <2 x i64> %i.k                   ; 5 uses
  %i.l = extractelement <2 x i64> %.fr4, i64 0    ; 2 uses
  %i.m = extractelement <2 x i64> %.fr4, i64 1    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load i64, ptr %i.n, align 16             ; 5 uses
  %.not.6.i = icmp eq i64 %i.o, 0
  %i.p = icmp ne <4 x i64> %.fr, zeroinitializer
end_hunk_14
begin_hunk_15_@mi_segment_purge:bb.a
bb.d:                                             ; preds = %mi_commit_mask_is_empty.exit
  %i.z = getelementptr i8, ptr %0, i64 112        ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !105
  %i.ab = extractelement <2 x i64> %i.f, i64 0
  %i.ac = and i64 %i.aa, %i.ab
  %.not.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.not.i, label %bb.e, label %mi_commit_mask_any_set.exit.thread
end_hunk_15
begin_hunk_16_@mi_segment_purge:bb.a
bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %0, i64 120
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !105
  %i.af = extractelement <2 x i64> %i.f, i64 1
  %i.ag = and i64 %i.af, %i.ae
  %.not.1.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.1.not.i, label %bb.f, label %mi_commit_mask_any_set.exit.thread
end_hunk_16
begin_hunk_17_@mi_segment_purge:bb.a
bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %0, i64 128
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !105
  %i.aj = extractelement <2 x i64> %i.h, i64 0
  %i.ak = and i64 %i.aj, %i.ai
  %.not.2.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.2.not.i, label %bb.g, label %mi_commit_mask_any_set.exit.thread
end_hunk_17
begin_hunk_18_@mi_segment_purge:bb.a
bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %0, i64 136
  %i.am = load i64, ptr %i.al, align 8, !tbaa !105
  %i.an = extractelement <2 x i64> %i.h, i64 1
  %i.ao = and i64 %i.an, %i.am
  %.not.3.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.3.not.i, label %bb.h, label %mi_commit_mask_any_set.exit.thread
end_hunk_18
begin_hunk_19_@mi_segment_purge:bb.a
mi_commit_mask_any_set.exit.thread._crit_edge:    ; preds = %mi_commit_mask_any_set.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !105
  br label %bb.q

bb.k:                                             ; preds = %mi_commit_mask_any_set.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  %i.bf = load <2 x i64>, ptr %i.z, align 8, !tbaa !105
  %i.bg = and <2 x i64> %i.bf, %i.f
  store <2 x i64> %i.bg, ptr %5, align 16, !tbaa !105
  %i.bh = getelementptr i8, ptr %0, i64 128       ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16
end_hunk_19
begin_hunk_20_@mi_segment_purge:bb.a
  %i.bt = getelementptr i8, ptr %0, i64 168
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !105
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !105 ; 3 uses
  %i.bx = and i64 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !105
end_hunk_20
begin_hunk_21_@mi_segment_purge:bb.a
  br label %_mi_stat_increase.exit

_mi_stat_increase.exit:                           ; preds = %bb.k, %bb.o, %bb.p
  %i.cm = xor <2 x i64> %i.f, splat (i64 -1)
  %i.cn = load <2 x i64>, ptr %i.z, align 8, !tbaa !105
  %i.co = and <2 x i64> %i.cn, %i.cm
  store <2 x i64> %i.co, ptr %i.z, align 8, !tbaa !105
  %i.cp = xor <2 x i64> %i.h, splat (i64 -1)
  %i.cq = load <2 x i64>, ptr %i.bh, align 8, !tbaa !105
  %i.cr = and <2 x i64> %i.cq, %i.cp
  store <2 x i64> %i.cr, ptr %i.bh, align 8, !tbaa !105
  %i.cs = xor <2 x i64> %.fr4, splat (i64 -1)
  %i.ct = load <2 x i64>, ptr %i.bl, align 8, !tbaa !105
  %i.cu = and <2 x i64> %i.ct, %i.cs
  store <2 x i64> %i.cu, ptr %i.bl, align 8, !tbaa !105
  %6 = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %7 = insertelement <2 x i64> %6, i64 %i.bw, i64 1
  %i.cv = xor <2 x i64> %7, splat (i64 -1)
  %i.cw = load <2 x i64>, ptr %i.bp, align 8, !tbaa !105
  %i.cx = and <2 x i64> %i.cw, %i.cv
  store <2 x i64> %i.cx, ptr %i.bp, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  br label %bb.q

bb.q:                                             ; preds = %mi_commit_mask_any_set.exit.thread._crit_edge, %_mi_stat_increase.exit, %mi_commit_mask_any_set.exit
  %i.cy = phi i64 [ %.pre, %mi_commit_mask_any_set.exit.thread._crit_edge ], [ %i.bw, %_mi_stat_increase.exit ], [ %i.bb, %mi_commit_mask_any_set.exit ]
  %i.cz = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %8 = xor <2 x i64> %i.f, splat (i64 -1)
  %9 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !105
  %10 = and <2 x i64> %9, %8
  store <2 x i64> %10, ptr %i.cz, align 8, !tbaa !105
  %11 = xor <2 x i64> %i.h, splat (i64 -1)
  %i.da = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %12 = load <2 x i64>, ptr %i.da, align 8, !tbaa !105
  %13 = and <2 x i64> %12, %11
  store <2 x i64> %13, ptr %i.da, align 8, !tbaa !105
  %14 = xor <2 x i64> %.fr4, splat (i64 -1)
  %i.db = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %15 = load <2 x i64>, ptr %i.db, align 8, !tbaa !105
  %16 = and <2 x i64> %15, %14
  store <2 x i64> %16, ptr %i.db, align 8, !tbaa !105
  %i.dc = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %i.dd = insertelement <2 x i64> %i.dc, i64 %i.cy, i64 1
  %i.de = xor <2 x i64> %i.dd, splat (i64 -1)
  %i.df = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.dg = load <2 x i64>, ptr %i.df, align 8, !tbaa !105
end_hunk_21
begin_hunk_22_@mi_segment_span_allocate:bb.a
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.mi_commit_mask_s, align 16  ; 11 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %struct.mi_commit_mask_s, align 8   ; 11 uses
  %i.d = getelementptr i8, ptr %0, i64 264        ; 2 uses
  %i.e = getelementptr [80 x i8], ptr %i.d, i64 %1 ; 10 uses
end_hunk_22
begin_hunk_23_@mi_segment_span_allocate:bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  call fastcc void @mi_segment_commit_mask(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef %i.i, i64 noundef %i.j, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %4)
  %6 = load <2 x i64>, ptr %4, align 16           ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %7 = load <2 x i64>, ptr %i.aq, align 16        ; 4 uses
  %8 = shufflevector <2 x i64> %6, <2 x i64> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i64> %8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32
  %9 = load <2 x i64>, ptr %i.ar, align 16
  %.fr16 = freeze <2 x i64> %9                    ; 4 uses
  %10 = extractelement <2 x i64> %.fr16, i64 0    ; 5 uses
  %11 = extractelement <2 x i64> %.fr16, i64 1    ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48
  %12 = load i64, ptr %i.as, align 16             ; 7 uses
  %.not.4.i.i.i = icmp eq i64 %12, 0
  %13 = icmp ne <4 x i64> %.fr, zeroinitializer
  %14 = bitcast <4 x i1> %13 to i4
  %.not.5.i.i.i = icmp eq i4 %14, 0
  %15 = or i64 %11, %10
  %16 = icmp eq i64 %15, 0
  %17 = and i1 %.not.5.i.i.i, %16
  %or.cond36.i.i = select i1 %17, i1 %.not.4.i.i.i, i1 false
  br i1 %or.cond36.i.i, label %bb.o, label %mi_commit_mask_is_empty.exit.i.i

bb.o:                                             ; preds = %mi_commit_mask_is_full.exit.thread.i
end_hunk_23
begin_hunk_24_@mi_segment_span_allocate:bb.a

mi_commit_mask_is_empty.exit.i.i:                 ; preds = %bb.o, %mi_commit_mask_is_full.exit.thread.i
  %.not.lcssa.i.i.i = phi i1 [ false, %mi_commit_mask_is_full.exit.thread.i ], [ %.not.7.i.i.i, %bb.o ]
  %i.av = load i64, ptr %i.b, align 8             ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  %or.cond.i.i = select i1 %.not.lcssa.i.i.i, i1 true, i1 %i.aw
  br i1 %or.cond.i.i, label %mi_segment_ensure_committed.exit.thread2, label %bb.p

bb.p:                                             ; preds = %mi_commit_mask_is_empty.exit.i.i
  %i.ax = load i64, ptr %i.k, align 8, !tbaa !105
  %18 = extractelement <2 x i64> %6, i64 0        ; 4 uses
  %i.ay = and i64 %i.ax, %18                      ; 2 uses
  %.not.i13.i.i = icmp eq i64 %i.ay, %18
  %i.az = getelementptr i8, ptr %0, i64 120
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !105
  %19 = extractelement <2 x i64> %6, i64 1        ; 4 uses
  %i.bb = and i64 %i.ba, %19                      ; 2 uses
  %.not.1.i15.i.i = icmp eq i64 %i.bb, %19
  %or.cond64.i.i = select i1 %.not.i13.i.i, i1 %.not.1.i15.i.i, i1 false
  %i.bc = getelementptr i8, ptr %0, i64 128       ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !105
  %20 = extractelement <2 x i64> %7, i64 0        ; 4 uses
  %i.be = and i64 %i.bd, %20                      ; 2 uses
  %.not.2.i16.i.i = icmp eq i64 %i.be, %20
  %or.cond.i = select i1 %or.cond64.i.i, i1 %.not.2.i16.i.i, i1 false
  %i.bf = getelementptr i8, ptr %0, i64 136
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !105
  %21 = extractelement <2 x i64> %7, i64 1        ; 4 uses
  %i.bh = and i64 %i.bg, %21                      ; 2 uses
  %.not.3.i17.i.i = icmp eq i64 %i.bh, %21
  %or.cond = select i1 %or.cond.i, i1 %.not.3.i17.i.i, i1 false
  br i1 %or.cond, label %bb.q, label %mi_commit_mask_all_set.exit.thread.i.i

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr i8, ptr %0, i64 144
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !105
  %i.bk = and i64 %i.bj, %10
  %.not.4.i18.i.i = icmp eq i64 %i.bk, %10
  br i1 %.not.4.i18.i.i, label %bb.r, label %mi_commit_mask_all_set.exit.thread.i.i

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr i8, ptr %0, i64 152
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !105
  %i.bn = and i64 %i.bm, %11
  %.not.5.i19.i.i = icmp eq i64 %i.bn, %11
  br i1 %.not.5.i19.i.i, label %bb.s, label %mi_commit_mask_all_set.exit.thread.i.i

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr i8, ptr %0, i64 160
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !105
  %i.bq = and i64 %i.bp, %12
  %.not.6.i20.i.i = icmp eq i64 %i.bq, %12
  br i1 %.not.6.i20.i.i, label %mi_commit_mask_all_set.exit.i.i, label %mi_commit_mask_all_set.exit.thread.i.i

mi_commit_mask_all_set.exit.i.i:                  ; preds = %bb.s
end_hunk_24
begin_hunk_25_@mi_segment_span_allocate:bb.a

mi_commit_mask_all_set.exit.thread.i.i:           ; preds = %bb.p, %mi_commit_mask_all_set.exit.i.i, %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  store i64 %i.ay, ptr %5, align 8, !tbaa !105
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_25
begin_hunk_26_@mi_segment_span_allocate:bb.a
  %i.bz = getelementptr i8, ptr %0, i64 144       ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cb = load <2 x i64>, ptr %i.bz, align 8, !tbaa !105
  %i.cc = and <2 x i64> %i.cb, %.fr16
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !tbaa !105
  %i.cd = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !105
  %i.cf = and i64 %i.ce, %12
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !105
  %i.ch = getelementptr i8, ptr %0, i64 168       ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !105
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !105 ; 3 uses
  %i.cl = and i64 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !105
end_hunk_26
begin_hunk_27_@mi_segment_span_allocate:bb.a

_mi_stat_decrease.exit.i.i:                       ; preds = %bb.x, %bb.w, %mi_commit_mask_all_set.exit.thread.i.i
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.da = call zeroext i1 @_mi_os_commit(ptr noundef %i.cz, i64 noundef %i.av, ptr noundef nonnull %i.c, ptr readnone poison)
  br i1 %i.da, label %bb.y, label %mi_segment_ensure_committed.exit

bb.y:                                             ; preds = %_mi_stat_decrease.exit.i.i
  %i.db = load <2 x i64>, ptr %i.k, align 8, !tbaa !105
  %i.dc = or <2 x i64> %i.db, %6
  store <2 x i64> %i.dc, ptr %i.k, align 8, !tbaa !105
  %i.dd = load <2 x i64>, ptr %i.bc, align 8, !tbaa !105
  %i.de = or <2 x i64> %i.dd, %7
  store <2 x i64> %i.de, ptr %i.bc, align 8, !tbaa !105
  %i.df = load <2 x i64>, ptr %i.bz, align 8, !tbaa !105
  %i.dg = or <2 x i64> %i.df, %.fr16
  store <2 x i64> %i.dg, ptr %i.bz, align 8, !tbaa !105
  %22 = load i64, ptr %i.cd, align 8, !tbaa !105
  %23 = or i64 %22, %12
  store i64 %23, ptr %i.cd, align 8, !tbaa !105
  %24 = load i64, ptr %i.ch, align 8, !tbaa !105
  %25 = or i64 %24, %i.ck
  store i64 %25, ptr %i.ch, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %mi_commit_mask_all_set.exit.i.i
  %i.dh = phi i64 [ %i.ck, %bb.y ], [ %i.bu, %mi_commit_mask_all_set.exit.i.i ] ; 2 uses
  %i.di = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !105 ; 2 uses
  %i.dk = and i64 %i.dj, %18
  %.not.not.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.not.i.i.i, label %bb.aa, label %mi_commit_mask_any_set.exit.thread.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr i8, ptr %0, i64 56
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !105 ; 2 uses
  %i.dn = and i64 %i.dm, %19
  %.not.1.not.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.1.not.i.i.i, label %bb.ab, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.do = getelementptr i8, ptr %0, i64 64
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !105 ; 2 uses
  %i.dq = and i64 %i.dp, %20
  %.not.2.not.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.2.not.i.i.i, label %bb.ac, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr i8, ptr %0, i64 72
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !105 ; 2 uses
  %i.dt = and i64 %i.ds, %21
  %.not.3.not.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.3.not.i.i.i, label %bb.ad, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.du = getelementptr i8, ptr %0, i64 80
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !105 ; 2 uses
  %i.dw = and i64 %i.dv, %10
  %.not.4.not.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.4.not.i.i.i, label %bb.ae, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.dx = getelementptr i8, ptr %0, i64 88
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !105 ; 2 uses
  %i.dz = and i64 %i.dy, %11
  %.not.5.not.i.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not.5.not.i.i.i, label %bb.af, label %mi_commit_mask_any_set.exit.thread.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ea = getelementptr i8, ptr %0, i64 96
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !105 ; 2 uses
  %i.ec = and i64 %i.eb, %12
  %.not.6.not.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.6.not.i.i.i, label %mi_commit_mask_any_set.exit.i.i, label %mi_commit_mask_any_set.exit.thread.i.i

mi_commit_mask_any_set.exit.i.i:                  ; preds = %bb.af
  %i.ed = getelementptr i8, ptr %0, i64 104
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !105 ; 2 uses
  %i.ef = and i64 %i.ee, %i.dh
  %.not.7.not.i.not.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.7.not.i.not.i.i, label %bb.ah, label %mi_commit_mask_any_set.exit.thread.i.i

end_hunk_27
begin_hunk_28_@mi_segment_span_allocate:bb.a
  %i.ex = phi i64 [ %.pre41.i.i, %mi_option_get.exit.i.i ], [ %i.dp, %mi_commit_mask_any_set.exit.i.i ]
  %i.ey = phi i64 [ %.pre39.i.i, %mi_option_get.exit.i.i ], [ %i.dm, %mi_commit_mask_any_set.exit.i.i ]
  %i.ez = phi i64 [ %.pre37.i.i, %mi_option_get.exit.i.i ], [ %i.dj, %mi_commit_mask_any_set.exit.i.i ]
  %i.fa = xor i64 %18, -1
  %i.fb = and i64 %i.ez, %i.fa
  store i64 %i.fb, ptr %i.di, align 8, !tbaa !105
  %i.fc = xor i64 %19, -1
  %i.fd = getelementptr i8, ptr %0, i64 56
  %i.fe = and i64 %i.ey, %i.fc
  store i64 %i.fe, ptr %i.fd, align 8, !tbaa !105
  %i.ff = xor i64 %20, -1
  %i.fg = getelementptr i8, ptr %0, i64 64
  %i.fh = and i64 %i.ex, %i.ff
  store i64 %i.fh, ptr %i.fg, align 8, !tbaa !105
  %i.fi = xor i64 %21, -1
  %i.fj = getelementptr i8, ptr %0, i64 72
  %i.fk = and i64 %i.ew, %i.fi
  store i64 %i.fk, ptr %i.fj, align 8, !tbaa !105
  %i.fl = xor i64 %10, -1
  %i.fm = getelementptr i8, ptr %0, i64 80
  %i.fn = and i64 %i.ev, %i.fl
  store i64 %i.fn, ptr %i.fm, align 8, !tbaa !105
  %i.fo = xor i64 %11, -1
  %i.fp = getelementptr i8, ptr %0, i64 88
  %i.fq = and i64 %i.eu, %i.fo
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !105
  %i.fr = xor i64 %12, -1
  %i.fs = getelementptr i8, ptr %0, i64 96
  %i.ft = and i64 %i.et, %i.fr
  store i64 %i.ft, ptr %i.fs, align 8, !tbaa !105
  %i.fu = xor i64 %i.dh, -1
  %i.fv = getelementptr i8, ptr %0, i64 104
  %i.fw = and i64 %i.es, %i.fu
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !105
end_hunk_28
