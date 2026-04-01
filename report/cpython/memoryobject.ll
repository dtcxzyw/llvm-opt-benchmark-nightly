begin_hunk_0
  br i1 %i.ec, label %.lr.ph.i49.i, label %init_strides_from_shape.exit.i

.lr.ph.i49.i:                                     ; preds = %bb.v
  %3 = sext i32 %i.eb to i64                      ; 2 uses
  %i.ed = getelementptr i8, ptr %i.aq, i64 104
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !63 ; 5 uses
  %i.ef = add nsw i64 %3, -1                      ; 2 uses
end_hunk_0
begin_hunk_1
  br i1 %i.bf, label %.lr.ph.i13, label %init_strides_from_shape.exit

.lr.ph.i13:                                       ; preds = %bb.e
  %4 = sext i32 %i.be to i64                      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63 ; 5 uses
  %i.bi = add nsw i64 %4, -1                      ; 2 uses
end_hunk_1
