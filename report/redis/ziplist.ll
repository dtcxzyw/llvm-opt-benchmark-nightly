inline.NumInlined: 61
inline.NumDeleted: 7
begin_hunk_0_@ziplistRandomPairsUnique:bb.a
  %.03552.us = phi i32 [ %.136.us, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
  %.03751.us = phi i32 [ %i.ar, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %i.ab = call i32 @rand() #18
  %i.ac = sitofp i32 %i.ab to double
  %5 = fdiv double %i.ac, 0x41DFFFFFFFC00000
  %6 = uitofp i32 %.03353.us to double
  %7 = sub i32 %i.w, %.03751.us
  %8 = uitofp i32 %7 to double
  %9 = fdiv double %6, %8
  %i.ad = fcmp ugt double %5, %9
  br i1 %i.ad, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
end_hunk_0
begin_hunk_1_@ziplistRandomPairsUnique:bb.a
  %.03552 = phi i32 [ %.136, %bb.q ], [ 0, %.lr.ph ] ; 3 uses
  %.03751 = phi i32 [ %i.bs, %bb.q ], [ 0, %.lr.ph ] ; 2 uses
  %i.av = call i32 @rand() #18
  %i.aw = sitofp i32 %i.av to double
  %10 = fdiv double %i.aw, 0x41DFFFFFFFC00000
  %11 = uitofp i32 %.03353 to double
  %12 = sub i32 %i.w, %.03751
  %13 = uitofp i32 %12 to double
  %14 = fdiv double %11, %13
  %i.ax = fcmp ugt double %10, %14
  br i1 %i.ax, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
end_hunk_1
