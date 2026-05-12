inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@mi_is_in_heap_region:bb.a
  %.lcssa.sink.i.i = phi i64 [ %i.p, %bb.d ], [ %i.t, %bb.f ]
  %.140.i.i = phi i64 [ %.0.i.i.i, %bb.d ], [ %i.r, %bb.f ]
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.lcssa.sink.i.i, i1 true)
  %.neg12.i = sub i64 %.140.i.i, %.0.i.i.i
  %1 = add nuw nsw i64 %i.x, %.sink.i.i.i
  %.neg.i = shl i64 %.neg12.i, 31
  %i.y = shl nuw nsw i64 %1, 25
  %reass.sub.i = sub i64 %.neg.i, %i.y
  %i.z = getelementptr i8, ptr %i.e, i64 %reass.sub.i ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 2113929216 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_mi_segment_of.exit.thread.i, label %bb.h

end_hunk_0
begin_hunk_1_@mi_is_in_heap_region:bb.a
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2864), align 8, !tbaa !95
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = getelementptr i8, ptr %i.z, i64 2113929432
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !96
  %.not50.i.i = icmp eq i64 %i.ae, %i.ag
  br i1 %.not50.i.i, label %bb.i, label %_mi_segment_of.exit.thread.i, !prof !55

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %i.z, i64 2113929440
  %.val.i.i = load i64, ptr %i.ah, align 32, !tbaa !97
  %i.ai = shl i64 %.val.i.i, 16
  %i.aj = getelementptr i8, ptr %i.aa, i64 %i.ai
end_hunk_1
begin_hunk_2_@mi_segment_free:bb.a
bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i64 %i.k, -1                     ; 2 uses
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true) ; 2 uses
  %i.o = sub nuw nsw i64 61, %i.n
  %i.p = lshr i64 %i.m, %i.o
  %i.q = and i64 %i.p, 3
  %2 = shl nuw nsw i64 %i.n, 2
  %reass.sub = sub nsw i64 %i.q, %2
  %i.r = add nsw i64 %reass.sub, 248
  br label %mi_span_queue_for.exit.i

mi_span_queue_for.exit.i:                         ; preds = %bb.e, %bb.d
end_hunk_2
begin_hunk_3_@mi_segment_abandon:bb.a
bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.i, -1                     ; 2 uses
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true) ; 2 uses
  %i.m = sub nuw nsw i64 61, %i.l
  %i.n = lshr i64 %i.k, %i.m
  %i.o = and i64 %i.n, 3
  %2 = shl nuw nsw i64 %i.l, 2
  %reass.sub = sub nsw i64 %i.o, %2
  %i.p = add nsw i64 %reass.sub, 248
  br label %mi_span_queue_for.exit.i

mi_span_queue_for.exit.i:                         ; preds = %bb.c, %bb.b
end_hunk_3
begin_hunk_4_@mi_segments_page_alloc:bb.a
bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.f, -1                     ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = sub nuw nsw i64 61, %i.k
  %i.m = lshr i64 %i.j, %i.l
  %i.n = and i64 %i.m, 3
  %5 = shl nuw nsw i64 %i.k, 2
  %reass.sub = sub nsw i64 %i.n, %5
  %i.o = add nsw i64 %reass.sub, 248
  br label %mi_span_queue_for.exit.i

mi_span_queue_for.exit.i:                         ; preds = %bb.b, %bb.a
end_hunk_4
begin_hunk_5_@mi_segments_page_alloc:bb.a
bb.p:                                             ; preds = %bb.o
  %i.br = add nsw i64 %i.bj, -1                   ; 2 uses
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 true) ; 2 uses
  %i.bt = sub nuw nsw i64 61, %i.bs
  %i.bu = lshr i64 %i.br, %i.bt
  %i.bv = and i64 %i.bu, 3
  %6 = shl nuw nsw i64 %i.bs, 2
  %reass.sub59 = sub nsw i64 %i.bv, %6
  %i.bw = add nsw i64 %reass.sub59, 248
  br label %mi_span_queue_for.exit.i.i.i

mi_span_queue_for.exit.i.i.i:                     ; preds = %bb.p, %bb.o
end_hunk_5
begin_hunk_6_@mi_segment_span_free_coalesce:bb.a
bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true) ; 2 uses
  %i.ac = sub nuw nsw i64 61, %i.ab
  %i.ad = lshr i64 %i.aa, %i.ac
  %i.ae = and i64 %i.ad, 3
  %2 = shl nuw nsw i64 %i.ab, 2
  %reass.sub = sub nsw i64 %i.ae, %2
  %i.af = add nsw i64 %reass.sub, 248
  br label %mi_span_queue_for.exit.i

mi_span_queue_for.exit.i:                         ; preds = %bb.g, %bb.f
end_hunk_6
begin_hunk_7_@mi_segment_span_free_coalesce:bb.a
bb.q:                                             ; preds = %bb.p
  %i.bf = add nsw i64 %i.bc, -1                   ; 2 uses
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true) ; 2 uses
  %i.bh = sub nuw nsw i64 61, %i.bg
  %i.bi = lshr i64 %i.bf, %i.bh
  %i.bj = and i64 %i.bi, 3
  %3 = shl nuw nsw i64 %i.bg, 2
  %reass.sub50 = sub nsw i64 %i.bj, %3
  %i.bk = add nsw i64 %reass.sub50, 248
  br label %mi_span_queue_for.exit.i37

mi_span_queue_for.exit.i37:                       ; preds = %bb.q, %bb.p
end_hunk_7
begin_hunk_8_@mi_segment_span_free:bb.a
bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %2, -1                           ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = sub nuw nsw i64 61, %i.k
  %i.m = lshr i64 %i.j, %i.l
  %i.n = and i64 %i.m, 3
  %7 = shl nuw nsw i64 %i.k, 2
  %reass.sub = sub nsw i64 %i.n, %7
  %i.o = add nsw i64 %reass.sub, 248
  br label %mi_span_queue_for.exit

mi_span_queue_for.exit:                           ; preds = %bb.c, %bb.d
end_hunk_8
begin_hunk_9_@mi_segment_alloc:bb.a
bb.am:                                            ; preds = %bb.al
  %i.fg = add i64 %i.fc, -1                       ; 2 uses
  %i.fh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fg, i1 true) ; 2 uses
  %i.fi = sub nuw nsw i64 61, %i.fh
  %i.fj = lshr i64 %i.fg, %i.fi
  %i.fk = and i64 %i.fj, 3
  %8 = shl nuw nsw i64 %i.fh, 2
  %reass.sub = sub nsw i64 %i.fk, %8
  %i.fl = add nsw i64 %reass.sub, 248
  br label %mi_span_queue_for.exit.i

mi_span_queue_for.exit.i:                         ; preds = %bb.am, %bb.al
end_hunk_9
