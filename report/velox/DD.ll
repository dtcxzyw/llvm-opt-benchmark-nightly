inline.NumInlined: 56
inline.NumDeleted: 3
begin_hunk_0_@_ZNK4geos4math2DD10reciprocalEv:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { double, double } @_ZNK4geos4math2DD5floorEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !7   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.d = fcmp uno double %i.a, 0.000000e+00
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call double @llvm.floor.f64(double %i.a) ; 2 uses
  %i.f = fcmp oeq double %i.e, %i.a
  %i.g = tail call double @llvm.floor.f64(double %i.c)
  %.0 = select i1 %i.f, double %i.g, double 0.000000e+00
  br label %bb.c
end_hunk_0
begin_hunk_1_@llvm.floor.f64
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { double, double } @_ZNK4geos4math2DD4ceilEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !7   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.d = fcmp uno double %i.a, 0.000000e+00
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call double @llvm.ceil.f64(double %i.a) ; 2 uses
  %i.f = fcmp oeq double %i.e, %i.a
  %i.g = tail call double @llvm.ceil.f64(double %i.c)
  %.0 = select i1 %i.f, double %i.g, double 0.000000e+00
  br label %bb.c
end_hunk_1
begin_hunk_2_@_ZNK4geos4math2DD4rintEv:bb.a
  %i.l = fadd double %i.e, %i.k                   ; 3 uses
  %i.m = fsub double %i.e, %i.l
  %i.n = fadd double %i.k, %i.m                   ; 2 uses
  %i.o = fadd double %i.l, %i.n                   ; 5 uses
  %i.p = fsub double %i.l, %i.o
  %i.q = fadd double %i.n, %i.p                   ; 2 uses
  %i.r = fcmp uno double %i.o, 0.000000e+00
  br i1 %i.r, label %_ZNK4geos4math2DD5floorEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call double @llvm.floor.f64(double %i.o) ; 2 uses
  %i.t = fcmp oeq double %i.s, %i.o
  %i.u = tail call double @llvm.floor.f64(double %i.q)
  %.0.i = select i1 %i.t, double %i.u, double 0.000000e+00
  br label %_ZNK4geos4math2DD5floorEv.exit
end_hunk_2
begin_hunk_3_@_ZNK4geos4math2DD4rintEv:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { double, double } @_ZN4geos4math2DD5truncERKS1_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload9 = load double, ptr %0, align 8, !tbaa !11 ; 8 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !11 ; 4 uses
  %i.a = fcmp uno double %.sroa.0.0.copyload9, 0.000000e+00
end_hunk_3
begin_hunk_4_@_ZN4geos4math2DD5truncERKS1_:bb.a
  br i1 %or.cond, label %_ZNK4geos4math2DD5floorEv.exit, label %_ZNK4geos4math2DD4ceilEv.exit

_ZNK4geos4math2DD5floorEv.exit:                   ; preds = %bb.c, %bb.b
  %i.e = tail call double @llvm.floor.f64(double %.sroa.0.0.copyload9) ; 2 uses
  %i.f = fcmp oeq double %i.e, %.sroa.0.0.copyload9
  %i.g = tail call double @llvm.floor.f64(double %.sroa.8.0.copyload)
  %.0.i = select i1 %i.f, double %i.g, double 0.000000e+00
  br label %bb.d

_ZNK4geos4math2DD4ceilEv.exit:                    ; preds = %bb.c
  %i.h = tail call double @llvm.ceil.f64(double %.sroa.0.0.copyload9) ; 2 uses
  %i.i = fcmp oeq double %i.h, %.sroa.0.0.copyload9
  %i.j = tail call double @llvm.ceil.f64(double %.sroa.8.0.copyload)
  %.0.i1 = select i1 %i.i, double %i.j, double 0.000000e+00
  br label %bb.d
end_hunk_4
begin_hunk_5_@_ZN4geos4math2DD3powERKS1_i:bb.a
; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_5
