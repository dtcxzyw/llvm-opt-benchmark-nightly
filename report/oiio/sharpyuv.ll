inline.NumInlined: 53
inline.NumDeleted: 15
begin_hunk_0_@SharpYuvConvertWithOptions:bb.a
  %i.ff = sext i32 %4 to i64                      ; 3 uses
  %i.fg = shl nuw nsw i32 %i.dl, 1                ; 2 uses
  %i.fh = zext nneg i32 %i.fg to i64              ; 5 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 range(i32 0, -1) %i.dl, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 9 uses
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %i.dv, i64 %i.dw ; 3 uses
  %invariant.gep13.i.i = getelementptr [2 x i8], ptr %i.dv, i64 %i.fh ; 3 uses
end_hunk_0
