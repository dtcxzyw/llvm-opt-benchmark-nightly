inline.NumInlined: 158
inline.NumDeleted: 40
begin_hunk_0_@opj_dwt_encode_and_deinterleave_h_one_row_real:bb.a
  br label %opj_dwt_encode_step2.exit86.i

opj_dwt_encode_step2.exit86.i:                    ; preds = %bb.j, %.loopexit.i76.i
  %i.aim = tail call noundef i32 @llvm.umin.i32(i32 range(i32 0, -2147483648) %i.d, i32 %i.e) ; 15 uses
  %i.ain = icmp samesign ugt i32 %i.aim, 3        ; 2 uses
  br i1 %.not, label %bb.k, label %bb.o

end_hunk_0
