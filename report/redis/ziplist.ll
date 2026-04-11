inline.NumInlined: 61
inline.NumDeleted: 7
begin_hunk_0_@ziplistRandomPairsUnique:bb.a
  %.03552.us = phi i32 [ %.136.us, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
  %.03751.us = phi i32 [ %i.ar, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %i.ab = call i32 @rand() #18
  %5 = sub i32 %i.w, %.03751.us
  %6 = uitofp i32 %5 to double
  %7 = uitofp i32 %.03353.us to double
  %i.ac = sitofp i32 %i.ab to double
  %8 = insertelement <2 x double> poison, double %i.ac, i64 0
  %9 = insertelement <2 x double> %8, double %7, i64 1
  %10 = insertelement <2 x double> <double 0x41DFFFFFFFC00000, double poison>, double %6, i64 1
  %11 = fdiv <2 x double> %9, %10                 ; 2 uses
  %12 = extractelement <2 x double> %11, i64 0
  %13 = extractelement <2 x double> %11, i64 1
  %i.ad = fcmp ugt double %12, %13
  br i1 %i.ad, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
end_hunk_0
begin_hunk_1_@ziplistRandomPairsUnique:bb.a
  %.03552 = phi i32 [ %.136, %bb.q ], [ 0, %.lr.ph ] ; 3 uses
  %.03751 = phi i32 [ %i.bs, %bb.q ], [ 0, %.lr.ph ] ; 2 uses
  %i.av = call i32 @rand() #18
  %14 = sub i32 %i.w, %.03751
  %15 = uitofp i32 %14 to double
  %16 = uitofp i32 %.03353 to double
  %i.aw = sitofp i32 %i.av to double
  %17 = insertelement <2 x double> poison, double %i.aw, i64 0
  %18 = insertelement <2 x double> %17, double %16, i64 1
  %19 = insertelement <2 x double> <double 0x41DFFFFFFFC00000, double poison>, double %15, i64 1
  %20 = fdiv <2 x double> %18, %19                ; 2 uses
  %21 = extractelement <2 x double> %20, i64 0
  %22 = extractelement <2 x double> %20, i64 1
  %i.ax = fcmp ugt double %21, %22
  br i1 %i.ax, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
end_hunk_1
