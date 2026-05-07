inline.NumInlined: 2245
inline.NumDeleted: 444
begin_hunk_0_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT0_iii:bb.a
.lr.ph.i28.preheader.i760:                        ; preds = %._crit_edge.i756
  %i.jaf = mul nuw nsw i32 %i.jad, 24
  %i.jag = zext nneg i32 %i.jaf to i64            ; 3 uses
  %i.jah = add nsw i64 %i.jag, -8                 ; 2 uses
  %i.jai = udiv i64 %i.jah, 24
  %i.jaj = add nuw nsw i64 %i.jai, 1              ; 2 uses
  %min.iters.check1749 = icmp ult i64 %i.jah, 456
  br i1 %min.iters.check1749, label %.lr.ph.i28.i761.preheader, label %vector.memcheck1741

vector.memcheck1741:                              ; preds = %.lr.ph.i28.preheader.i760
  %i.jak = add nsw i64 %i.jag, -8
  %i.jal = udiv i64 %i.jak, 24                    ; 2 uses
  %i.jam = shl nuw nsw i64 %i.jal, 2
  %i.jan = getelementptr i8, ptr %.026.lcssa.i757, i64 %i.jam
end_hunk_0
begin_hunk_1_@llvm.smin.i32
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
