inline.NumInlined: 133
inline.NumDeleted: 75
begin_hunk_0_@_ZN4YAML15ostream_wrapper5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.aa = load ptr, ptr %1, align 8, !tbaa !21    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
end_hunk_0
begin_hunk_1_@_ZN4YAML15ostream_wrapper5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.aj = add i64 %.promoted, 1                   ; 2 uses
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !25
end_hunk_1
begin_hunk_2_@_ZN4YAML15ostream_wrapper5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ar = phi i64 [ %i.bh, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.as = phi i64 [ %i.bi, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.unr26, %.prol.loopexit ]
  %i.at = phi i64 [ %i.bd, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.unr27, %.prol.loopexit ] ; 2 uses
  %.sroa.012.021 = phi ptr [ %i.bj, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.sroa.012.021.unr, %.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.012.021) ]
  %i.au = load i8, ptr %.sroa.012.021, align 1, !tbaa !28
  %i.av = add i64 %i.at, 1
  store i64 %i.av, ptr %i.ae, align 8, !tbaa !25
end_hunk_2
begin_hunk_3_@llvm.assume
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
