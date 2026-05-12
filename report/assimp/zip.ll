inline.NumInlined: 193
inline.NumDeleted: 34
begin_hunk_0_@tdefl_flush_block:bb.a
.thread345:                                       ; preds = %.preheader360, %.preheader360, %.thread345.fold.split594, %.thread345.fold.split591, %.thread345.fold.split590
  %.0284 = phi i16 [ 30912, %.thread345.fold.split594 ], [ 30720, %.preheader360 ], [ 30720, %.preheader360 ], [ 30784, %.thread345.fold.split590 ], [ 30848, %.thread345.fold.split591 ] ; 2 uses
  %i.ax = urem i16 %.0284, 31
  %reass.sub = or disjoint i16 %.0284, 31
  %narrow = sub nuw nsw i16 %reass.sub, %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 4            ; 3 uses
  %i.ba = shl i32 120, %i.az
end_hunk_0
begin_hunk_1_@tdefl_flush_block:bb.a
._crit_edge:                                      ; preds = %bb.j, %.thread345
  %i.bs = phi i32 [ %i.bd, %.thread345 ], [ %i.bp, %bb.j ]
  %storemerge.lcssa = phi i32 [ %i.be, %.thread345 ], [ %i.bq, %bb.j ] ; 2 uses
  %.0284.masked = and i16 %narrow, 223
  %i.bt = zext nneg i16 %.0284.masked to i32
  %i.bu = shl nuw nsw i32 %i.bt, %storemerge.lcssa
  %i.bv = or i32 %i.bs, %i.bu                     ; 2 uses
  store i32 %i.bv, ptr %i.bb, align 8
end_hunk_1
