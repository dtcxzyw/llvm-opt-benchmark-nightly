inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@mi_segment_alloc:bb.a

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
end_hunk_0
begin_hunk_1_@mi_segment_alloc:bb.a
  br i1 %.not.i, label %._crit_edge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add i64 %.0.i.i, 33554431
  %i.ae = and i64 %i.ad, -33554432                ; 2 uses
  %i.af = sub i64 %i.ae, %8
  %i.ag = add i64 %i.af, %0                       ; 2 uses
  %i.ah = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91 ; 4 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ah)
end_hunk_1
begin_hunk_2_@mi_segment_alloc:bb.a
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
end_hunk_2
