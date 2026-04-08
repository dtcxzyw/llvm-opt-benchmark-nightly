inline.NumInlined: 165
inline.NumDeleted: 65
begin_hunk_0_@_ZN2v86bigint12_GLOBAL__N_12BZ5D3n2nENS0_8RWDigitsES3_NS0_6DigitsES4_S4_:bb.a
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.d) ; 4 uses
  %.sroa.085.0.copyload = load ptr, ptr %7, align 8 ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.sroa.085.0.copyload, i64 %i.e ; 6 uses
  %10 = sub nuw i32 %i.c, %i.d
  %.sroa.speculated.i116 = tail call i32 @llvm.umin.i32(i32 %10, i32 %i.d) ; 6 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.e ; 5 uses
  %i.j = tail call i32 @llvm.usub.sat.i32(i32 %4, i32 %i.d)
end_hunk_0
