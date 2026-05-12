inline.NumInlined: 6973
inline.NumDeleted: 2254
begin_hunk_0_@_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 576460752303423487, %i.g   ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_0
