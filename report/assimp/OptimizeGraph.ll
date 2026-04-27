inline.NumInlined: 624
inline.NumDeleted: 303
begin_hunk_0_@_ZN6Assimp20OptimizeGraphProcess18CollectNewChildrenEP6aiNodeRNSt7__cxx114listIS2_SaIS2_EEE:bb.a
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv500
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ie ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.if) ]
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = icmp ugt i32 %i.ig, 1
  br i1 %i.ih, label %._crit_edge444, label %bb.ak
end_hunk_0
begin_hunk_1_@_ZN6Assimp20OptimizeGraphProcess7ExecuteEP7aiScene:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %.noexc118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.hm = load ptr, ptr %i.m, align 8
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv390 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hn) ]
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = add i32 %i.ho, 2
  store i32 %i.hp, ptr %i.hn, align 4
end_hunk_1
begin_hunk_2_@_ZN6Assimp13DefaultLogger3getEv

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN6Assimp20OptimizeGraphProcess19FindInstancedMeshesEP6aiNode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp20OptimizeGraphProcess19FindInstancedMeshesEP6aiNode:bb.a
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4
end_hunk_3
begin_hunk_4_@_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e
end_hunk_4
begin_hunk_5_@llvm.experimental.noalias.scope.decl
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19
end_hunk_5
begin_hunk_6_@llvm.fmuladd.v8f32
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
end_hunk_6
