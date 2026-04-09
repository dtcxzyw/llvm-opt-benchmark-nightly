inline.NumInlined: 135
inline.NumDeleted: 39
begin_hunk_0_@complex_pow:bb.a
  br i1 %i.ab, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ac = call double @llvm.trunc.f64(double %.pre32)
  %i.ad = fcmp une double %i.ac, %.pre32
  %i.ae = call double @llvm.fabs.f64(double %.pre32)
  %i.af = fcmp ugt double %i.ae, 1.000000e+02
  %or.cond = or i1 %i.ad, %i.af
end_hunk_0
begin_hunk_1_@real_to_complex:bb.a
  ret i32 %.0.i
}

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #10

declare i64 @_Py_HashDouble(ptr noundef, double noundef) local_unnamed_addr #10
end_hunk_1
begin_hunk_2_@PyErr_Clear
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

end_hunk_2
