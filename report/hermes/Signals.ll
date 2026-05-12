inline.NumInlined: 135
inline.NumDeleted: 82
begin_hunk_0_@_ZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %.not.i1 = icmp eq ptr %0, null
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !32, !alias.scope !29
  br i1 %.not.i1, label %bb.c, label %bb.d

end_hunk_0
begin_hunk_1_@_ZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !29
  %.val.pre = load ptr, ptr %3, align 8
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %.val = phi ptr [ %i.d, %bb.c ], [ %.val.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i ]
  %4 = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 4 uses
  %i.o = call noalias ptr @strdup(ptr noundef readonly %.val) #17
  store ptr %i.o, ptr %4, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !41
end_hunk_1
