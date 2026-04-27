inline.NumInlined: 137
inline.NumDeleted: 56
begin_hunk_0_@_ZN10CArcInfoExC2ERKS_:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !55
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55
  %2 = load i64, ptr %i.ai, align 8, !tbaa !54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr align 1 %i.an, i64 %2, i1 false)
  br label %_ZN7CBufferIhEC2ERKS0_.exit

_ZN7CBufferIhEC2ERKS0_.exit:                      ; preds = %.noexc, %_ZN13CObjectVectorI11CArcExtInfoEC2ERKS1_.exit
end_hunk_0
