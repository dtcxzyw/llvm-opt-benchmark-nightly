inline.NumInlined: 19
inline.NumDeleted: 8
begin_hunk_0_@_ZN4geos9algorithm11HCoordinate12intersectionERKNS_4geom10CoordinateES5_S5_S5_RS3_
define void @_ZN4geos9algorithm11HCoordinate12intersectionERKNS_4geom10CoordinateES5_S5_S5_RS3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load double, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %6 = fsub double %5, %i.c                       ; 2 uses
  %i.d = load double, ptr %1, align 8, !tbaa !10  ; 2 uses
  %i.e = load double, ptr %0, align 8, !tbaa !10  ; 2 uses
  %7 = fsub double %i.d, %i.e                     ; 2 uses
  %8 = fmul double %i.c, %i.e
  %i.f = fmul double %5, %i.d
  %9 = fsub double %8, %i.f                       ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %11 = load double, ptr %10, align 8, !tbaa !7   ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %13 = load double, ptr %12, align 8, !tbaa !7   ; 2 uses
  %i.g = fsub double %11, %13                     ; 2 uses
  %14 = load double, ptr %3, align 8, !tbaa !10   ; 2 uses
  %15 = load double, ptr %2, align 8, !tbaa !10   ; 2 uses
  %i.h = fsub double %14, %15                     ; 2 uses
  %i.i = fmul double %13, %15
  %i.j = fmul double %11, %14
  %16 = fsub double %i.i, %i.j                    ; 2 uses
  %i.k = fmul double %7, %16
  %17 = fmul double %9, %i.h
  %i.l = fsub double %i.k, %17
  %i.m = fmul double %9, %i.g
  %i.n = fmul double %6, %16
  %i.o = fsub double %i.m, %i.n
  %18 = fmul double %6, %i.h
  %19 = fmul double %7, %i.g
  %20 = fsub double %18, %19                      ; 2 uses
  %21 = fdiv double %i.l, %20                     ; 2 uses
  %22 = fdiv double %i.o, %20                     ; 2 uses
  %23 = tail call double @llvm.fabs.f64(double %21)
  %24 = fcmp one double %23, 0x7FF0000000000000
  %25 = tail call double @llvm.fabs.f64(double %22)
  %26 = fcmp one double %25, 0x7FF0000000000000
  %or.cond = select i1 %24, i1 %26, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4geos9algorithm11HCoordinate12intersectionERKNS_4geom10CoordinateES5_S5_S5_RS3_:bb.a
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.a
  store double %21, ptr %4, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %22, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 0x7FF8000000000000, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  ret void
end_hunk_1
begin_hunk_2_@llvm.fabs.f64
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_2
