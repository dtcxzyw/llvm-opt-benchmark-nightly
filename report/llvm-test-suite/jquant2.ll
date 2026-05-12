inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0_@init_error_limit:.lr.ph41
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 32, ptr %i.aq, align 4, !tbaa !4
  %1 = xor i64 %indvars.iv, -2
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.g, i64 %1
  store i32 -32, ptr %i.ar, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 32, ptr %i.at, align 4, !tbaa !4
  %2 = xor i64 %indvars.iv, -3
  %i.au = getelementptr inbounds [4 x i8], ptr %i.g, i64 %2
  store i32 -32, ptr %i.au, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
end_hunk_0
