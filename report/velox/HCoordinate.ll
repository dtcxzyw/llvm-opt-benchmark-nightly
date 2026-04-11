inline.NumInlined: 19
inline.NumDeleted: 8
begin_hunk_0_@_ZN4geos9algorithm11HCoordinate12intersectionERKNS_4geom10CoordinateES5_S5_S5_RS3_
define void @_ZN4geos9algorithm11HCoordinate12intersectionERKNS_4geom10CoordinateES5_S5_S5_RS3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load double, ptr %i.a, align 8, !tbaa !7 ; 2 uses
  %7 = load double, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.d = load double, ptr %1, align 8, !tbaa !10  ; 2 uses
  %i.e = load double, ptr %0, align 8, !tbaa !10  ; 2 uses
  %8 = load double, ptr %6, align 8, !tbaa !7     ; 2 uses
  %9 = load double, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %10 = load double, ptr %3, align 8, !tbaa !10   ; 2 uses
  %11 = load double, ptr %2, align 8, !tbaa !10   ; 2 uses
  %i.f = fmul double %7, %i.e
  %12 = fmul double %9, %11
  %13 = fmul double %i.c, %i.d
  %14 = fmul double %8, %10
  %15 = fsub double %i.c, %7                      ; 2 uses
  %16 = fsub double %8, %9                        ; 2 uses
  %i.g = fsub double %i.d, %i.e                   ; 2 uses
  %17 = fsub double %i.f, %13                     ; 2 uses
  %18 = fsub double %12, %14                      ; 2 uses
  %i.h = fsub double %10, %11                     ; 2 uses
  %i.i = fmul double %17, %16
  %i.j = fmul double %i.g, %18
  %19 = fmul double %15, %18
  %i.k = fmul double %17, %i.h
  %20 = fsub double %i.i, %19
  %i.l = fsub double %i.j, %i.k
  %i.m = fmul double %15, %i.h
  %i.n = fmul double %i.g, %16
  %i.o = fsub double %i.m, %i.n
  %21 = insertelement <2 x double> poison, double %i.l, i64 0
  %22 = insertelement <2 x double> %21, double %20, i64 1
  %23 = insertelement <2 x double> poison, double %i.o, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = fdiv <2 x double> %22, %24                ; 2 uses
  %26 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %25)
  %27 = fcmp one <2 x double> %26, splat (double 0x7FF0000000000000) ; 2 uses
  %28 = extractelement <2 x i1> %27, i64 0
  %29 = extractelement <2 x i1> %27, i64 1
  %or.cond = select i1 %28, i1 %29, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4geos9algorithm11HCoordinate12intersectionERKNS_4geom10CoordinateES5_S5_S5_RS3_:bb.a
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.a
  store <2 x double> %25, ptr %4, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 0x7FF8000000000000, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  ret void
end_hunk_1
begin_hunk_2_@llvm.fabs.f64
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_2
