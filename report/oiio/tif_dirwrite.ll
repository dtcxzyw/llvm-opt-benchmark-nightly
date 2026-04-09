inline.NumInlined: 125
inline.NumDeleted: 53
begin_hunk_0_@DoubleToRational:bb.a
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.g = tail call double @llvm.trunc.f64(double %0)
  %i.h = fcmp une double %i.g, %0                 ; 2 uses
  %i.i = fcmp olt double %0, 0x43D0000000000000
  %or.cond76.i = and i1 %i.i, %i.h
  br i1 %or.cond76.i, label %.lr.ph.i, label %.critedge.i
end_hunk_0
begin_hunk_1_@DoubleToRational:bb.a
  %.05577.i = phi i64 [ %i.j, %.lr.ph.i ], [ 1, %bb.i ] ; 2 uses
  %i.j = shl nuw nsw i64 %.05577.i, 1             ; 2 uses
  %i.k = fmul double %.05078.i, 2.000000e+00      ; 5 uses
  %i.l = tail call double @llvm.trunc.f64(double %i.k)
  %i.m = fcmp une double %i.l, %i.k
  %i.n = fcmp olt double %i.k, 0x43D0000000000000
  %or.cond.i = and i1 %i.n, %i.m
  %i.o = icmp samesign ult i64 %.05577.i, 2305843009213693952
end_hunk_1
begin_hunk_2_@DoubleToRational:bb.a
  %.05577.i59 = phi i64 [ %i.al, %.lr.ph.i57 ], [ 1, %ToRationalEuclideanGCD.exit ] ; 2 uses
  %i.al = shl nuw nsw i64 %.05577.i59, 1          ; 2 uses
  %i.am = fmul double %.05078.i58, 2.000000e+00   ; 5 uses
  %i.an = tail call double @llvm.trunc.f64(double %i.am)
  %i.ao = fcmp une double %i.an, %i.am
  %i.ap = fcmp olt double %i.am, 0x41CFFFFFFF800000
  %or.cond.i60 = and i1 %i.ap, %i.ao
  %i.aq = icmp samesign ult i64 %.05577.i59, 536870912
end_hunk_2
begin_hunk_3_@DoubleToRational:bb.a

declare void @TIFFErrorExt(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare float @_TIFFClampDoubleToFloat(double noundef) local_unnamed_addr #1

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1
end_hunk_3
begin_hunk_4_@DoubleToSrational:bb.a
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.k = tail call double @llvm.trunc.f64(double %.0)
  %i.l = fcmp une double %i.k, %.0                ; 2 uses
  %i.m = fcmp olt double %.0, 0x43D0000000000000
  %or.cond76.i = and i1 %i.m, %i.l
  br i1 %or.cond76.i, label %.lr.ph.i, label %.critedge.i
end_hunk_4
begin_hunk_5_@DoubleToSrational:bb.a
  %.05577.i = phi i64 [ %i.n, %.lr.ph.i ], [ 1, %bb.g ] ; 2 uses
  %i.n = shl nuw nsw i64 %.05577.i, 1             ; 2 uses
  %i.o = fmul double %.05078.i, 2.000000e+00      ; 5 uses
  %i.p = tail call double @llvm.trunc.f64(double %i.o)
  %i.q = fcmp une double %i.p, %i.o
  %i.r = fcmp olt double %i.o, 0x43D0000000000000
  %or.cond.i = and i1 %i.r, %i.q
  %i.s = icmp samesign ult i64 %.05577.i, 2305843009213693952
end_hunk_5
begin_hunk_6_@DoubleToSrational:bb.a
  %.05577.i63 = phi i64 [ %i.ap, %.lr.ph.i61 ], [ 1, %ToRationalEuclideanGCD.exit ] ; 2 uses
  %i.ap = shl nuw nsw i64 %.05577.i63, 1          ; 2 uses
  %i.aq = fmul double %.05078.i62, 2.000000e+00   ; 5 uses
  %i.ar = tail call double @llvm.trunc.f64(double %i.aq)
  %i.as = fcmp une double %i.ar, %i.aq
  %i.at = fcmp olt double %i.aq, 0x41CFFFFFFF800000
  %or.cond.i64 = and i1 %i.at, %i.as
  %i.au = icmp samesign ult i64 %.05577.i63, 536870912
end_hunk_6
begin_hunk_7_@TIFFSwabArrayOfDouble

declare i32 @_TIFFGetDirNumberFromOffset(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

end_hunk_7
