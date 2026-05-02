inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@bignew_1:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef 16394, i32 noundef 0, i64 noundef %spec.store.select.i.i) #24 ; 3 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %3 = load i64, ptr %i.j, align 8, !tbaa !13     ; 2 uses
  %4 = and i64 %3, -8193
  %5 = shl nuw nsw i32 %2, 13
  %masksel.i = zext nneg i32 %5 to i64
  %.sink.i = or disjoint i64 %4, %masksel.i       ; 2 uses
  store i64 %.sink.i, ptr %i.j, align 8, !tbaa !13
  %i.k = and i64 %3, 16384
end_hunk_0
begin_hunk_1_@bignew_1:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i22, i64 noundef %0, i64 noundef 10, i32 noundef 0, i64 noundef 32) #24 ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %6 = load i64, ptr %i.s, align 8, !tbaa !13
  %7 = and i64 %6, -8193
  %8 = shl nuw nsw i32 %2, 13
  %masksel.i23 = zext nneg i32 %8 to i64
  %.sink.i24 = or disjoint i64 %7, %masksel.i23
  store i64 %.sink.i24, ptr %i.s, align 8, !tbaa !13
  %i.t = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %1, i64 noundef 4) #25
  %i.u = getelementptr i8, ptr %i.s, i64 16
end_hunk_1
begin_hunk_2_@bary_unpack_internal:bb.a
  br i1 %i.cy, label %.lr.ph.i216.epil, label %._crit_edge363, !llvm.loop !187

._crit_edge363:                                   ; preds = %._crit_edge363.loopexit.unr-lcssa, %.lr.ph.i216.epil, %.lr.ph362.epil.preheader, %bb.ac
  %.not161 = trunc nuw i32 %i.bx to i1
  %i.cz = icmp ult ptr %0, %i.b
  %or.cond370 = and i1 %i.cz, %.not161
  br i1 %or.cond370, label %.lr.ph366.preheader, label %.loopexit

bb.ad:                                            ; preds = %bary_swap.exit
end_hunk_2
