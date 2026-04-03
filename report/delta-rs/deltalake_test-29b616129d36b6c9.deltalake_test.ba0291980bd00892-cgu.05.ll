begin_hunk_0
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !54, !noalias !55
  %.sroa.0.0.copyload8.i = load i64, ptr %i.ax, align 8, !noalias !58 ; 4 uses
  %.sroa.5.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.323.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx9.i, i64 32, i1 false), !noalias !46
  store i64 %.sroa.0.0.copyload8.i, ptr %i.v, align 8, !alias.scope !43, !noalias !46
  %i.bb = icmp ne i64 %.sroa.0.0.copyload8.i, 4
  call void @llvm.assume(i1 %i.bb)
  %.not67 = icmp eq i64 %.sroa.0.0.copyload8.i, 3
end_hunk_0
begin_hunk_1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12
end_hunk_1
