inline.NumInlined: 239
inline.NumDeleted: 57
begin_hunk_0_@deque_item
define internal noundef ptr @deque_item(ptr noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val37.i = load i64, ptr %i.a, align 8, !tbaa !56 ; 4 uses
  %.not.i = icmp ult i64 %1, %.val37.i
  br i1 %.not.i, label %bb.c, label %bb.b

end_hunk_0
begin_hunk_1_@deque_item:bb.a
  br i1 %i.c, label %.loopexit.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add i64 %.val37.i, -1
  %i.e = icmp eq i64 %1, %i.d
  br i1 %i.e, label %.loopexit.sink.split.i, label %bb.e

end_hunk_1
begin_hunk_2_@deque_item:bb.a
  br i1 %i.z, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !81

bb.g:                                             ; preds = %bb.e
  %2 = add i64 %.val37.i, %i.g
  %i.aa = add i64 %2, -1
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = sub nsw i64 %i.ab, %i.i
  %i.ad = getelementptr i8, ptr %0, i64 32
end_hunk_2
begin_hunk_3_@deque_ass_item:bb.a
  br i1 %i.y, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !84

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %.val36.i, %i.h
  %i.aa = add i64 %i.z, -1
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = sub nsw i64 %i.ab, %i.j
  %i.ad = getelementptr i8, ptr %0, i64 32
end_hunk_3
begin_hunk_4_@deque___sizeof__:bb.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !56
  %i.f = add i64 %i.d, %.val.i
  %i.g = add i64 %i.f, 63
  %i.h = lshr i64 %i.g, 6
  %i.i = mul i64 %i.h, 528
  %i.j = add i64 %i.i, %.val6.i
end_hunk_4
begin_hunk_5_@_deque_rotate:bb.a

vector.memcheck:                                  ; preds = %bb.k
  %.1126287 = ptrtoaddr ptr %.1126 to i64
  %i.at = shl i64 %.1116, 3
  %i.au = add i64 %i.at, %.1126287
  %i.av = shl i64 %.0112206, 3
  %i.aw = add i64 %i.av, %.0120203288
  %i.ax = sub i64 %i.au, %i.aw
  %2 = add i64 %i.ax, -8
  %diff.check = icmp ult i64 %2, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
end_hunk_5
begin_hunk_6_@_deque_rotate:bb.a

vector.memcheck294:                               ; preds = %bb.r
  %.3123295 = ptrtoaddr ptr %.3123 to i64
  %i.dg = shl i64 %.3, 3
  %i.dh = add i64 %i.dg, %.3123295
  %i.di = shl i64 %.2117218, 3
  %i.dj = add i64 %i.di, %.2127215296
  %i.dk = sub i64 %i.dh, %i.dj
  %3 = add i64 %i.dk, 8
  %diff.check297 = icmp ult i64 %3, 32
  br i1 %diff.check297, label %scalar.ph298.preheader, label %vector.ph300

vector.ph300:                                     ; preds = %vector.memcheck294
end_hunk_6
begin_hunk_7_@deque_inplace_repeat_lock_held:bb.a
  br i1 %or.cond92, label %bb.u, label %.lr.ph.preheader

bb.u:                                             ; preds = %bb.t
  %i.cm = add nuw i64 %.val100, %i.ci
  %i.cn = add i64 %i.cm, -1
  %i.co = sdiv i64 %i.cn, %.val100                ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 1
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge
end_hunk_7
