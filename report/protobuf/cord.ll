inline.NumInlined: 1703
inline.NumDeleted: 496
begin_hunk_0_@_ZN4absl12lts_202505124Cord13ChunkIterator19AdvanceAndReadBytesEm:bb.a
  call void @__clang_call_terminate(ptr %i.hh) #26
  unreachable

_ZN4absl12lts_202505124CordaSEOS1_.exit:          ; preds = %bb.ab, %bb.ae, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.hi = icmp ult i64 %2, %i.go
end_hunk_0
