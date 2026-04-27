inline.NumInlined: 191
inline.NumDeleted: 109
begin_hunk_0_@_ZN4geos9operation6relate13EdgeEndBundleC2EPNS_9geomgraph7EdgeEndE:_ZNKSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #13 ; 3 uses
  store ptr %1, ptr %i.m, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.m, ptr %i.l, align 8, !tbaa !19
  store ptr %i.n, ptr %i.o, align 8, !tbaa !23
  store ptr %i.n, ptr %2, align 8, !tbaa !24
  ret void
}

end_hunk_0
