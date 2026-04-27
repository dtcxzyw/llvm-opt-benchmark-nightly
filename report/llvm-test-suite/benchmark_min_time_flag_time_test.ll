inline.NumInlined: 135
inline.NumDeleted: 99
begin_hunk_0_@_ZN12_GLOBAL__N_112DoTestHelperEPiPPKcd:._crit_edge.i.i
  resume { ptr, i32 } %i.s

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !55   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load double, ptr %i.x, align 8, !tbaa !57
  %i.ac = fadd double %i.ab, -4.000000e+00
  %i.ad = call double @llvm.fabs.f64(double %i.ac)
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12
end_hunk_1
