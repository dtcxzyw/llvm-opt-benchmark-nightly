inline.NumInlined: 2124
inline.NumDeleted: 685
begin_hunk_0_@_ZN4absl4Cord13ChunkIterator19AdvanceAndReadBytesEm:bb.a
  call void @_ZN4absl4Cord9InlineRep9UnrefTreeEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN4absl4CordaSEOS0_.exit

_ZN4absl4CordaSEOS0_.exit:                        ; preds = %bb.w, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bn = icmp ult i64 %2, %i.bg
end_hunk_0
