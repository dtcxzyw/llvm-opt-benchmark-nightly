inline.NumInlined: 125
inline.NumDeleted: 53
begin_hunk_0_@_TIFFmemcmp
; Function Attrs: nounwind uwtable
define internal fastcc void @DoubleToSrational(double noundef %0, ptr noundef nonnull writeonly captures(none) %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00         ; 2 uses
  %i.b = fneg double %0
  %.032 = select i1 %i.a, i32 -1, i32 1           ; 3 uses
  %.0 = select i1 %i.a, double %i.b, double %0    ; 16 uses
  %i.c = fcmp ogt double %.0, 0x41DFFFFFFFC00000
  br i1 %i.c, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@DoubleToSrational:bb.a
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %3 = sitofp i32 %.032 to double
  %i.g = fmul double %.0, %3
  %i.h = fptosi double %i.g to i32
  store i32 %i.h, ptr %1, align 4, !tbaa !3
  br label %bb.p
end_hunk_1
begin_hunk_2_@DoubleToSrational:bb.a
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %ToRationalEuclideanGCD.exit66
  %4 = sitofp i32 %.032 to double
  %i.br = fmul double %.0, %4
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExt(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, double noundef %i.br, i64 noundef %.sroa.5.3.lcssa.i, i64 noundef %.sroa.7.3.lcssa.i, i64 noundef %.sroa.5.3.lcssa.i55, i64 noundef %.sroa.7.3.lcssa.i56) #9
  br label %bb.o

end_hunk_2
begin_hunk_3_@DoubleToSrational:bb.a
  %i.ca = fsub double %.0, %i.bz
  %i.cb = tail call double @llvm.fabs.f64(double %i.ca)
  %i.cc = fcmp olt double %i.bw, %i.cb            ; 2 uses
  %. = select i1 %i.cc, i64 %.sroa.5.3.lcssa.i, i64 %.sroa.5.3.lcssa.i55
  %.pn = trunc i64 %. to i32
  %storemerge34 = mul i32 %.032, %.pn
  store i32 %storemerge34, ptr %1, align 4, !tbaa !3
  %storemerge.in.sroa.speculated = select i1 %i.cc, i64 %.sroa.7.3.lcssa.i, i64 %.sroa.7.3.lcssa.i56
  %storemerge = trunc i64 %storemerge.in.sroa.speculated to i32
end_hunk_3
