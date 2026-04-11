inline.NumInlined: 432
inline.NumDeleted: 226
begin_hunk_0_@_ZN4geos9algorithm21MinimumBoundingCircle14farthestPointsERSt6vectorINS_4geom10CoordinateESaIS4_EE
define void @_ZN4geos9algorithm21MinimumBoundingCircle14farthestPointsERSt6vectorINS_4geom10CoordinateESaIS4_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !13     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %3 = load double, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %4 = load double, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %5 = fsub double %3, %4                         ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %7 = load double, ptr %6, align 8, !tbaa !53    ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %9 = load double, ptr %8, align 8, !tbaa !53    ; 2 uses
  %10 = fsub double %7, %9                        ; 2 uses
  %11 = fmul double %5, %5
  %12 = fmul double %10, %10
  %13 = fadd double %11, %12
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %13) ; 3 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %15 = load double, ptr %14, align 8, !tbaa !10  ; 2 uses
  %16 = fsub double %4, %15                       ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %18 = load double, ptr %17, align 8, !tbaa !53  ; 2 uses
  %19 = fsub double %9, %18                       ; 2 uses
  %20 = fmul double %16, %16
  %21 = fmul double %19, %19
  %22 = fadd double %20, %21
  %sqrt.i24 = tail call noundef double @llvm.sqrt.f64(double %22) ; 3 uses
  %23 = fsub double %15, %3                       ; 2 uses
  %24 = fsub double %18, %7                       ; 2 uses
  %25 = fmul double %23, %23
  %26 = fmul double %24, %24
  %27 = fadd double %25, %26
  %sqrt.i25 = tail call noundef double @llvm.sqrt.f64(double %27) ; 2 uses
  %28 = fcmp ult double %sqrt.i, %sqrt.i24
  %29 = fcmp ult double %sqrt.i, %sqrt.i25
  %or.cond = or i1 %28, %29
  br i1 %or.cond, label %bb.b, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4geos9algorithm21MinimumBoundingCircle14farthestPointsERSt6vectorINS_4geom10CoordinateESaIS4_EE:bb.a
  resume { ptr, i32 } %lpad.thr_comm137

bb.b:                                             ; preds = %bb.a
  %30 = fcmp ult double %sqrt.i24, %sqrt.i
  %31 = fcmp ult double %sqrt.i24, %sqrt.i25
  %or.cond23 = or i1 %30, %31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 11 uses
end_hunk_1
begin_hunk_2_@_ZN4geos9algorithm21MinimumBoundingCircle14farthestPointsERSt6vectorINS_4geom10CoordinateESaIS4_EE:bb.a

.lr.ph.i.i.i.i.i.i65.preheader:                   ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !54, !alias.scope !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #16
end_hunk_2
begin_hunk_3_@_ZN4geos9algorithm21MinimumBoundingCircle14farthestPointsERSt6vectorINS_4geom10CoordinateESaIS4_EE:bb.a
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit42

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i93: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !54
  store ptr %i.m, ptr %0, align 8, !tbaa !13
  store ptr %i.n, ptr %i.k, align 8, !tbaa !41
  store ptr %i.n, ptr %i.l, align 8, !tbaa !55
end_hunk_3
begin_hunk_4_@llvm.memset.p0.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_4
