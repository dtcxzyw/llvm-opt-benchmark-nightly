inline.NumInlined: 432
inline.NumDeleted: 226
begin_hunk_0_@_ZN4geos9algorithm21MinimumBoundingCircle14farthestPointsERSt6vectorINS_4geom10CoordinateESaIS4_EE
define void @_ZN4geos9algorithm21MinimumBoundingCircle14farthestPointsERSt6vectorINS_4geom10CoordinateESaIS4_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !13     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %6 = load <2 x double>, ptr %i.a, align 8, !tbaa !15 ; 4 uses
  %7 = load <2 x double>, ptr %i.b, align 8, !tbaa !15 ; 3 uses
  %8 = load double, ptr %3, align 8, !tbaa !53
  %9 = load <2 x double>, ptr %4, align 8, !tbaa !15 ; 3 uses
  %10 = load double, ptr %5, align 8, !tbaa !53
  %foldExtExtBinop = fsub <2 x double> %7, %9     ; 2 uses
  %11 = fsub double %8, %10                       ; 2 uses
  %foldExtExtBinop148 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %12 = extractelement <2 x double> %foldExtExtBinop148, i64 0
  %13 = fmul double %11, %11
  %14 = fadd double %12, %13
  %sqrt.i24 = tail call noundef double @llvm.sqrt.f64(double %14) ; 2 uses
  %15 = shufflevector <2 x double> %6, <2 x double> %9, <2 x i32> <i32 0, i32 2>
  %16 = shufflevector <2 x double> %7, <2 x double> %6, <2 x i32> <i32 0, i32 2>
  %17 = fsub <2 x double> %15, %16                ; 2 uses
  %18 = shufflevector <2 x double> %6, <2 x double> %9, <2 x i32> <i32 1, i32 3>
  %19 = shufflevector <2 x double> %7, <2 x double> %6, <2 x i32> <i32 1, i32 3>
  %20 = fsub <2 x double> %18, %19                ; 2 uses
  %21 = fmul <2 x double> %17, %17
  %22 = fmul <2 x double> %20, %20
  %23 = fadd <2 x double> %21, %22
  %24 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %23) ; 4 uses
  %25 = extractelement <2 x double> %24, i64 0
  %26 = fcmp ult double %25, %sqrt.i24
  %shift = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %27 = fcmp ult <2 x double> %24, %shift
  %28 = extractelement <2 x i1> %27, i64 0
  %or.cond = or i1 %26, %28
  br i1 %or.cond, label %bb.b, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4geos9algorithm21MinimumBoundingCircle14farthestPointsERSt6vectorINS_4geom10CoordinateESaIS4_EE:bb.a
  resume { ptr, i32 } %lpad.thr_comm137

bb.b:                                             ; preds = %bb.a
  %29 = insertelement <2 x double> poison, double %sqrt.i24, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = fcmp ult <2 x double> %30, %24            ; 2 uses
  %shift150 = shufflevector <2 x i1> %31, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop151 = or <2 x i1> %31, %shift150
  %or.cond23 = extractelement <2 x i1> %foldExtExtBinop151, i64 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 11 uses
end_hunk_1
begin_hunk_2_@_ZN4geos9algorithm21MinimumBoundingCircle14farthestPointsERSt6vectorINS_4geom10CoordinateESaIS4_EE:bb.a

.lr.ph.i.i.i.i.i.i65.preheader:                   ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !54, !alias.scope !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #16
end_hunk_2
begin_hunk_3_@_ZN4geos9algorithm21MinimumBoundingCircle14farthestPointsERSt6vectorINS_4geom10CoordinateESaIS4_EE:bb.a
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit42

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i93: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !54
  store ptr %i.m, ptr %0, align 8, !tbaa !13
  store ptr %i.n, ptr %i.k, align 8, !tbaa !41
  store ptr %i.n, ptr %i.l, align 8, !tbaa !55
end_hunk_3
begin_hunk_4_@llvm.memset.p0.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_4
