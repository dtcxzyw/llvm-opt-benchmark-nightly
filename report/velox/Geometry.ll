inline.NumInlined: 578
inline.NumDeleted: 321
begin_hunk_0_@_ZNK4geos4geom8Geometry5equalERKNS0_10CoordinateES4_d
define noundef zeroext i1 @_ZNK4geos4geom8Geometry5equalERKNS0_10CoordinateES4_d(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, double noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = fcmp oeq double %3, 0.000000e+00
  %4 = load <2 x double>, ptr %1, align 8         ; 2 uses
  %5 = load <2 x double>, ptr %2, align 8         ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %6 = fcmp oeq <2 x double> %4, %5               ; 2 uses
  %7 = extractelement <2 x i1> %6, i64 0
  %8 = extractelement <2 x i1> %6, i64 1
  %.0.i.i = select i1 %7, i1 %8, i1 false
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %9 = fsub <2 x double> %4, %5                   ; 2 uses
  %10 = fmul <2 x double> %9, %9                  ; 2 uses
  %shift = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %10, %shift
  %11 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %11)
  %i.b = fcmp ole double %sqrt.i, %3
  br label %bb.d

end_hunk_0
