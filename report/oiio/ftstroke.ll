inline.NumInlined: 59
inline.NumDeleted: 19
begin_hunk_0_@FT_Stroker_LineTo:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.ag = load <2 x i64>, ptr %2, align 16, !tbaa !43 ; 3 uses
  %4 = extractelement <2 x i64> %i.ag, i64 0
  %5 = sub nsw i64 0, %4
  store i64 %5, ptr %2, align 16, !tbaa !37
  %i.ah = extractelement <2 x i64> %i.ag, i64 1
  %6 = sub nsw i64 0, %i.ah
  store i64 %6, ptr %i.l, align 8, !tbaa !39
  %i.ai = load <2 x i64>, ptr %1, align 8, !tbaa !43
  %i.aj = sub nsw <2 x i64> %i.ai, %i.ag
  store <2 x i64> %i.aj, ptr %3, align 16, !tbaa !43
end_hunk_0
