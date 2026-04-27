inline.NumInlined: 106
inline.NumDeleted: 42
begin_hunk_0_@_ZL6createP6node_tii3v_tS1_d:bb.a

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %2, -9
  %11 = sdiv i32 %i.i, 9
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %11, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN7basis_tC2ERK3v_t(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.j = fdiv double %5, 3.000000e+00             ; 3 uses
end_hunk_0
begin_hunk_1_@_ZL6createP6node_tii3v_tS1_d:bb.a
  store double %i.do, ptr %i.w, align 8, !tbaa !23, !alias.scope !77
  store <2 x double> %i.di, ptr %8, align 16, !tbaa !25
  store double %i.dd, ptr %.sroa.7109.0..sroa_idx, align 16, !tbaa !25
  %i.dp = call fastcc noundef ptr @_ZL6createP6node_tii3v_tS1_d(ptr noundef nonnull %.036126, i32 noundef %i.p, i32 noundef %.sroa.speculated, ptr noundef nonnull byval(%struct.v_t) align 8 %7, ptr noundef nonnull byval(%struct.v_t) align 8 %8, double noundef %i.j) ; 2 uses
  %i.dq = fadd double %.034127, 0x3FF0C152382D7365 ; 2 uses
  %i.dr = add nuw nsw i32 %.033128, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dr, 6
end_hunk_1
begin_hunk_2_@_ZL6createP6node_tii3v_tS1_d:bb.a
  store double %i.hf, ptr %i.z, align 8, !tbaa !23, !alias.scope !101
  store <2 x double> %i.gz, ptr %10, align 16, !tbaa !25
  store double %i.gu, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !25
  %i.hg = call fastcc noundef ptr @_ZL6createP6node_tii3v_tS1_d(ptr noundef nonnull %.137129, i32 noundef %i.p, i32 noundef %.sroa.speculated, ptr noundef nonnull byval(%struct.v_t) align 8 %9, ptr noundef nonnull byval(%struct.v_t) align 8 %10, double noundef %i.j) ; 2 uses
  %i.hh = fadd double %.1130, 0x4000C152382D7365
  %i.hi = add nuw nsw i32 %.0131, 1               ; 2 uses
  %exitcond144.not = icmp eq i32 %i.hi, 3
end_hunk_2
begin_hunk_3_@llvm.fabs.f64
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_3
