inline.NumInlined: 28
inline.NumDeleted: 4
begin_hunk_0_@SetupLargerBlocks:bb.a
; Function Attrs: nounwind uwtable
define dso_local void @SetupFastFullPelSearch(i16 noundef signext %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i16], align 2                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load ptr, ptr @BlockSAD, align 8, !tbaa !15
  %i.c = sext i32 %1 to i64                       ; 8 uses
end_hunk_0
begin_hunk_1_@SetupFastFullPelSearch:bb.a
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.c
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !161
  call void @SetMotionVectorPredictor(ptr noundef nonnull %i.a, ptr noundef %i.db, ptr noundef %i.df, i16 noundef signext %0, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #13
  %2 = load i16, ptr %i.a, align 2, !tbaa !162
  %3 = sdiv i16 %2, 4
  %4 = sext i16 %3 to i32
  %i.dg = load ptr, ptr @search_center_x, align 8, !tbaa !36
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.c
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !38
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.f ; 8 uses
  store i32 %4, ptr %i.dj, align 4, !tbaa !4
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !162
  %7 = sdiv i16 %6, 4
  %8 = sext i16 %7 to i32
  %i.dk = load ptr, ptr @search_center_y, align 8, !tbaa !36
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.c
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !38
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.f ; 7 uses
  store i32 %8, ptr %i.dn, align 4, !tbaa !4
  %i.do = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4168
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !163
end_hunk_1
