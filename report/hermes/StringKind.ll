inline.NumInlined: 56
inline.NumDeleted: 34
begin_hunk_0_@_ZN6hermes10StringKind11Accumulator9push_backENS0_4KindE:bb.a
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.aj, i64 -4
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %middle.block
end_hunk_0
