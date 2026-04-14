inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@_mi_heap_collect_retired:bb.a

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 15       ; 3 uses
  %i.i = load i8, ptr %i.h, align 1               ; 4 uses
  %.not31 = icmp ult i8 %i.i, 2
  br i1 %.not31, label %_PyMem_mi_page_maybe_free.exit, label %bb.d

end_hunk_0
begin_hunk_1_@_mi_heap_collect_retired:bb.a
  br i1 %i.k, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %2 = and i8 %i.i, -2
  %i.l = add i8 %2, -2                            ; 2 uses
  %3 = and i8 %i.i, 1
  %4 = or disjoint i8 %i.l, %3
  store i8 %4, ptr %i.h, align 1
  %5 = icmp eq i8 %i.l, 0
  %or.cond = or i1 %1, %5
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@mi_segment_alloc:bb.a

mi_segment_calculate_slices.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = add i64 %.0.i.i, 65535                   ; 2 uses
  %8 = and i64 %i.i, -65536                       ; 2 uses
  %i.j = icmp eq i64 %0, 0
  %9 = add i64 %0, 65535
  %i.k = add i64 %9, %8
  %i.l = lshr i64 %i.k, 16
  %i.m = select i1 %i.j, i64 512, i64 %i.l        ; 2 uses
  %i.n = icmp samesign ugt i64 %i.m, 4294967295
end_hunk_2
begin_hunk_3_@mi_segment_alloc:bb.a
  br i1 %.not.i, label %._crit_edge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add i64 %.0.i.i, 33554431
  %i.ae = and i64 %i.ad, -33554432                ; 2 uses
  %i.af = sub i64 %i.ae, %8
  %i.ag = add i64 %i.af, %0                       ; 2 uses
  %i.ah = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91 ; 4 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ah)
end_hunk_3
begin_hunk_4_@mi_segment_alloc:bb.a
mi_segment_calculate_slices.exit.i:               ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %i.am, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = add i64 %.0.i.i.i, 65535                ; 2 uses
  %10 = and i64 %i.ap, -65536
  %i.aq = icmp eq i64 %i.ag, 0
  %11 = add i64 %i.ag, 65535
  %i.ar = add i64 %11, %10
  %i.as = lshr i64 %i.ar, 16
  %i.at = select i1 %i.aq, i64 512, i64 %i.as     ; 2 uses
  %i.au = icmp samesign ult i64 %i.at, 4294967296
end_hunk_4
