inline.NumInlined: 6
inline.NumDeleted: 5
begin_hunk_0_@_ZN7roadlet4initEPKc:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x ptr> <ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr @_Z11return_nullP7roadletP7vehicle9direction>, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x ptr> <ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr @_Z11return_nullP7roadletP7vehicle9direction>, ptr %i.c, align 8, !tbaa !13
  ret void
}

end_hunk_0
