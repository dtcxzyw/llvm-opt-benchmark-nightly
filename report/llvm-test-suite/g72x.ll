inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@predictor_zero:bb.a
  %i.p = tail call fastcc i32 @fmult(i32 noundef %i.l, i32 noundef %i.o)
  %i.q = add nsw i32 %i.p, %i.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %1 = load i16, ptr %i.r, align 4, !tbaa !13
  %2 = ashr i16 %1, 2
  %i.s = sext i16 %2 to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i16, ptr %i.t, align 4, !tbaa !13
  %i.v = sext i16 %i.u to i32
  %3 = tail call fastcc i32 @fmult(i32 noundef %i.s, i32 noundef %i.v)
  %4 = add nsw i32 %3, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.x = load i16, ptr %i.w, align 2, !tbaa !13
  %5 = ashr i16 %i.x, 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 42
  %8 = load i16, ptr %7, align 2, !tbaa !13
  %i.y = sext i16 %8 to i32
  %i.z = tail call fastcc i32 @fmult(i32 noundef %6, i32 noundef %i.y)
  %i.aa = add nsw i32 %i.z, %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %10 = load i16, ptr %9, align 4, !tbaa !13
  %11 = ashr i16 %10, 2
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %14 = load i16, ptr %13, align 4, !tbaa !13
  %i.ab = sext i16 %14 to i32
  %i.ac = tail call fastcc i32 @fmult(i32 noundef %12, i32 noundef %i.ab)
  %i.ad = add nsw i32 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !13
  %15 = ashr i16 %i.af, 2
  %i.ag = sext i16 %15 to i32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 46
  %17 = load i16, ptr %16, align 2, !tbaa !13
  %i.ah = sext i16 %17 to i32
  %i.ai = tail call fastcc i32 @fmult(i32 noundef %i.ag, i32 noundef %i.ah)
  %i.aj = add nsw i32 %i.ai, %i.ad
  ret i32 %i.aj
}
end_hunk_0
