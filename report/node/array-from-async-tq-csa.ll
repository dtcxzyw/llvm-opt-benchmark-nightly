inline.NumInlined: 10150
inline.NumDeleted: 751
begin_hunk_0_@_ZN2v88internal39CreateArrayFromIterableAsynchronously_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %404) #10
  %i.yj = load ptr, ptr %315, align 8
  store ptr %i.yj, ptr %404, align 8
  %i.yk = getelementptr inbounds nuw i8, ptr %404, i64 8 ; 3 uses
  %i.yl = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #12 ; 3 uses
  store ptr %i.yl, ptr %i.yk, align 8
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 48 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal40CreateArrayFromArrayLikeAsynchronously_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %308) #10
  %i.rx = load ptr, ptr %240, align 8
  store ptr %i.rx, ptr %308, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %308, i64 8 ; 3 uses
  %i.rz = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #12 ; 3 uses
  store ptr %i.rz, ptr %i.ry, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 48 ; 2 uses
end_hunk_1
