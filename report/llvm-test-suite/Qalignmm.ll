inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0_@match_calc:bb.a
bb.a:
  %i.a = alloca [26 x float], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not = trunc nuw i32 %7 to i1
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.b, %.not
  br i1 %or.cond, label %.preheader60.preheader, label %.loopexit

.preheader60.preheader:                           ; preds = %bb.a
end_hunk_0
