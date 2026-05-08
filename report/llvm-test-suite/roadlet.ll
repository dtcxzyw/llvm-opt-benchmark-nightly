inline.NumInlined: 6
inline.NumDeleted: 5
begin_hunk_0_@_ZN7roadlet4initEPKc:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr %i.b, align 8, !tbaa !13
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr %4, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr %i.c, align 8, !tbaa !13
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr %6, align 8, !tbaa !13
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @_Z11return_nullP7roadletP7vehicle9direction, ptr %7, align 8, !tbaa !13
  ret void
}

end_hunk_0
