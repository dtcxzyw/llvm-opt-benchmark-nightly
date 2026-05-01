inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb4Date8ToStringB5cxx11ENS_6date_tE:bb.a
  %i.ax = sub i32 %i.aw, %i.av
  %i.ay = icmp slt i32 %i.af, 1                   ; 3 uses
  %i.az = sub i32 1, %i.af
  %.sroa.026.0 = select i1 %i.ay, i32 %i.az, i32 %i.af ; 5 uses
  %.0.i.i = select i1 %i.ay, i64 11, i64 6
  %2 = icmp sgt i32 %.sroa.026.0, 9999
  %i.ba = select i1 %2, i64 5, i64 4
  %3 = icmp sgt i32 %.sroa.026.0, 99999
  %4 = zext i1 %3 to i64
  %5 = add nuw nsw i64 %i.ba, %4
  %6 = icmp sgt i32 %.sroa.026.0, 999999
  %7 = zext i1 %6 to i64
  %8 = add nuw nsw i64 %5, %7
  %9 = icmp sgt i32 %.sroa.026.0, 9999999
  %10 = zext i1 %9 to i64
  %11 = add nuw nsw i64 %8, %10                   ; 2 uses
  %i.bb = add nuw nsw i64 %11, %.0.i.i            ; 4 uses
  %i.bc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #51, !noalias !811 ; 4 uses
  invoke void @_ZN6duckdb16DateToStringCast6FormatEPciiimb(ptr noundef nonnull %i.bc, i32 noundef %.sroa.026.0, i32 noundef %i.ar, i32 noundef %i.ax, i64 noundef %11, i1 noundef zeroext %i.ay)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
