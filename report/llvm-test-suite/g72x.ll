inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@predictor_zero:bb.a
  %i.p = tail call fastcc i32 @fmult(i32 noundef %i.l, i32 noundef %i.o)
  %i.q = add nsw i32 %i.p, %i.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = load i16, ptr %1, align 4, !tbaa !13
  %i.s = sext i16 %2 to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.u = load i16, ptr %i.t, align 2, !tbaa !13
  %i.v = sext i16 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.x = load i16, ptr %i.w, align 4, !tbaa !13
  %3 = sext i16 %i.x to i32
  %4 = load <4 x i16>, ptr %i.r, align 4, !tbaa !13
  %5 = ashr <4 x i16> %4, splat (i16 2)           ; 4 uses
  %6 = extractelement <4 x i16> %5, i64 0
  %i.y = sext i16 %6 to i32
  %i.z = tail call fastcc i32 @fmult(i32 noundef %i.y, i32 noundef %i.s)
  %i.aa = add nsw i32 %i.z, %i.q
  %7 = extractelement <4 x i16> %5, i64 1
  %8 = sext i16 %7 to i32
  %9 = tail call fastcc i32 @fmult(i32 noundef %8, i32 noundef %i.v)
  %10 = add nsw i32 %9, %i.aa
  %11 = extractelement <4 x i16> %5, i64 2
  %i.ab = sext i16 %11 to i32
  %i.ac = tail call fastcc i32 @fmult(i32 noundef %i.ab, i32 noundef %3)
  %i.ad = add nsw i32 %i.ac, %10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !13
  %i.ag = sext i16 %i.af to i32
  %12 = extractelement <4 x i16> %5, i64 3
  %i.ah = sext i16 %12 to i32
  %i.ai = tail call fastcc i32 @fmult(i32 noundef %i.ah, i32 noundef %i.ag)
  %i.aj = add nsw i32 %i.ai, %i.ad
  ret i32 %i.aj
}
end_hunk_0
