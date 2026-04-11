inline.NumInlined: 578
inline.NumDeleted: 321
begin_hunk_0_@_ZNK4geos4geom8Geometry5equalERKNS0_10CoordinateES4_d
define noundef zeroext i1 @_ZNK4geos4geom8Geometry5equalERKNS0_10CoordinateES4_d(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, double noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = fcmp oeq double %3, 0.000000e+00
  %4 = load double, ptr %1, align 8, !tbaa !40    ; 2 uses
  %5 = load double, ptr %2, align 8, !tbaa !40    ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load double, ptr %6, align 8               ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %9 = load double, ptr %8, align 8               ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %10 = fcmp oeq double %4, %5
  %11 = fcmp oeq double %7, %9
  %.0.i.i = select i1 %10, i1 %11, i1 false
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %12 = fsub double %4, %5                        ; 2 uses
  %13 = fsub double %7, %9                        ; 2 uses
  %14 = fmul double %12, %12
  %15 = fmul double %13, %13
  %16 = fadd double %14, %15
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %16)
  %i.b = fcmp ole double %sqrt.i, %3
  br label %bb.d

end_hunk_0
