begin_hunk_0
inline.NumInlined: 2623
inline.NumDeleted: 1470
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN2v88internal20InstructionStreamMapD2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN2v88internal20InstructionStreamMap5ClearEv.exit, label %.lr.ph.i

end_hunk_1
begin_hunk_2_@_ZN2v88internal20InstructionStreamMapD2Ev:bb.a
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmN2v88internal20InstructionStreamMap16CodeEntryMapInfoEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.l)
  store ptr null, ptr %i.k, align 8
  store ptr %i.c, ptr %i.a, align 8
  ret void
}

end_hunk_2
