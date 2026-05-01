inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@geopolyFilter:bb.a
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca [4 x %union.RtreeCoord], align 16   ; 12 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !2474   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #71
  store ptr null, ptr %i.a, align 8, !tbaa !7929
end_hunk_0
begin_hunk_1_@geopolyFilter:bb.a
  store i32 66, ptr %i.ec, align 4, !tbaa !7943
  store i32 1, ptr %i.eb, align 8, !tbaa !7946
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 68, ptr %i.dh, align 4, !tbaa !7943
  store i32 2, ptr %i.dg, align 8, !tbaa !7946
  %6 = load <2 x float>, ptr %i.ed, align 4, !tbaa !227
  %7 = fpext <2 x float> %6 to <2 x double>       ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  store double %8, ptr %i.df, align 8, !tbaa !227
  %9 = extractelement <2 x double> %7, i64 1
  store double %9, ptr %i.di, align 8, !tbaa !227
  store i32 66, ptr %i.dk, align 4, !tbaa !7943
  store i32 3, ptr %i.dj, align 8, !tbaa !7946
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 12
end_hunk_1
