inline.NumInlined: 1178
inline.NumDeleted: 271
begin_hunk_0_@_ZN2v88internal28kArrayIndexLengthBitsShift_0EPNS0_8compiler18CodeAssemblerStateE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #9
  br label %_ZN2v88internal17CodeStubAssembler17ConstexprInt31AddENS0_7int31_tES2_.exit

_ZN2v88internal17CodeStubAssembler17ConstexprInt31AddENS0_7int31_tES2_.exit: ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %1) #8
end_hunk_0
