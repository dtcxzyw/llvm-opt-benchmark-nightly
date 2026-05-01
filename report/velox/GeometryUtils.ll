inline.NumInlined: 1539
inline.NumDeleted: 799
begin_hunk_0_@_ZN8facebook5velox9functions10geospatial14CartesianPointC2Edd
define void @_ZN8facebook5velox9functions10geospatial14CartesianPointC2Edd(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, double noundef %1, double noundef %2) unnamed_addr #13 align 2 {
bb.a:
  %i.a = fsub double 9.000000e+01, %2
  %3 = fmul double %i.a, 0x400921FB54442D18
  %4 = fdiv double %3, 1.800000e+02               ; 2 uses
  %5 = tail call double @sin(double noundef %4) #27, !tbaa !3
  %6 = fmul double %1, 0x400921FB54442D18
  %7 = fdiv double %6, 1.800000e+02               ; 2 uses
  %i.b = fmul double %5, 6.371010e+03             ; 2 uses
  %i.c = tail call double @cos(double noundef %7) #27, !tbaa !3
  %i.d = fmul double %i.b, %i.c
  store double %i.d, ptr %0, align 8, !tbaa !245
  %i.e = tail call double @sin(double noundef %7) #27, !tbaa !3
  %i.f = fmul double %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.f, ptr %i.g, align 8, !tbaa !246
  %i.h = tail call double @cos(double noundef %4) #27, !tbaa !3
  %i.i = fmul double %i.h, 6.371010e+03
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.i, ptr %i.j, align 8, !tbaa !239
end_hunk_0
