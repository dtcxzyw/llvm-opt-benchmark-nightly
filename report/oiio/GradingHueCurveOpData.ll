inline.NumInlined: 326
inline.NumDeleted: 169
begin_hunk_0_@_ZNK16OpenColorIO_v2_521GradingHueCurveOpData7inverseEv:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  store ptr null, ptr %0, align 8, !tbaa !80, !alias.scope !94
  %i.a = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #20, !noalias !94 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !42, !noalias !94
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_521GradingHueCurveOpData7inverseEv:bb.a
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNK16OpenColorIO_v2_521GradingHueCurveOpData5cloneEv.exit
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 196
  store i32 %i.i, ptr %i.j, align 4, !tbaa !40
  ret void

end_hunk_1
