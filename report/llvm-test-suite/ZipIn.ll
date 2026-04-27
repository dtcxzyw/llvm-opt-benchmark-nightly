inline.NumInlined: 218
inline.NumDeleted: 82
begin_hunk_0_@_ZN8NArchive4NZip10CInArchive15ReadLocalsAndCdER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtERyRi:bb.a
.noexc149:                                        ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i
  store ptr %i.hp, ptr %i.hk, align 8, !tbaa !34
  store i64 %i.ho, ptr %i.hn, align 8, !tbaa !33
  %7 = load ptr, ptr %i.cl, align 8, !tbaa !34
  %8 = load i64, ptr %i.bz, align 8, !tbaa !33
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hp, ptr align 1 %7, i64 %8, i1 false)
  br label %_ZN7CBufferIhEaSERKS0_.exit

_ZN7CBufferIhEaSERKS0_.exit:                      ; preds = %.noexc149, %_ZN7CBufferIhE4FreeEv.exit.i
end_hunk_0
begin_hunk_1_@_ZN8NArchive4NZip5CItemC2ERKS1_:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !34
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34
  %2 = load i64, ptr %i.ah, align 8, !tbaa !33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.am, i64 %2, i1 false)
  br label %_ZN7CBufferIhEC2ERKS0_.exit

_ZN7CBufferIhEC2ERKS0_.exit:                      ; preds = %.noexc, %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit
end_hunk_1
