inline.NumInlined: 580
inline.NumDeleted: 115
begin_hunk_0_@unescape_nonascii0:bb.a
  store ptr %i.f, ptr %i.b, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %9 = and i32 %7, -3
  %10 = trunc nuw i32 %8 to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.h = icmp ult ptr %i.f, %1
  br i1 %i.h, label %.lr.ph388.lr.ph, label %.loopexit229._crit_edge
end_hunk_0
begin_hunk_1_@unescape_nonascii0:bb.a
  store ptr %i.t, ptr %i.b, align 8
  %i.bq = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #29 ; 0 uses
  %i.br = icmp eq i32 %.4149394, 0
  %or.cond3 = select i1 %i.br, i1 %10, i1 false
  br i1 %or.cond3, label %bb.ap, label %.loopexit229.loopexit

bb.ap:                                            ; preds = %bb.ao
end_hunk_1
begin_hunk_2_@unescape_nonascii0:bb.a
bb.ar:                                            ; preds = %bb.i
  store ptr %i.t, ptr %i.b, align 8
  %i.bu = ptrtoint ptr %i.j to i64
  %.not192 = icmp eq i32 %.4149394, 0
  br i1 %.not192, label %bb.as, label %bb.bl

bb.as:                                            ; preds = %bb.ar
end_hunk_2
begin_hunk_3_@unescape_nonascii0:bb.a

bb.bi:                                            ; preds = %bb.bh
  %masksel = select i1 %i.cw, i32 2, i32 0
  %.0137 = or disjoint i32 %masksel, %9
  %i.cy = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #29 ; 0 uses
  %i.cz = call fastcc i32 @unescape_nonascii0(ptr noundef %i.b, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %.0137, i32 noundef 1)
  %i.da = icmp slt i32 %i.cz, 0
end_hunk_3
begin_hunk_4_@unescape_nonascii0:bb.a
  br i1 %exitcond.not, label %.thread215, label %.lr.ph, !llvm.loop !132

bb.bl:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %or.cond9 = phi i32 [ %8, %bb.at ], [ %8, %bb.as ], [ 0, %bb.ar ]
  %spec.select210 = add i32 %or.cond9, %.5155393
  br label %.thread215

.thread215.loopexit316:                           ; preds = %bb.i
end_hunk_4
