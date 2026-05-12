inline.NumInlined: 361
inline.NumDeleted: 189
begin_hunk_0_@_ZN2v88internal22ConvertRelativeIndex_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES9_PNS1_18CodeAssemblerLabelESB_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #8
  %i.j = load ptr, ptr %19, align 8
  store ptr %i.j, ptr %23, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.l = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #9 ; 3 uses
  store ptr %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
end_hunk_0
