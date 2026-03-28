begin_hunk_0
  br i1 %i.q, label %bb.u, label %_ZNK2v88internal10JSFunction15has_initial_mapEv.exit.thread

_ZNK2v88internal10JSFunction15has_initial_mapEv.exit.thread: ; preds = %bb.a, %_ZNK2v88internal10JSFunction15has_initial_mapEv.exit
  %i.r = tail call noundef i32 @_ZN2v88internal10JSFunction30CalculateExpectedNofPropertiesEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nonnull %1)
  %i.s = load i64, ptr %1, align 8
  %i.t = add i64 %i.s, 55
  %i.u = inttoptr i64 %i.t to ptr
end_hunk_0
begin_hunk_1
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.r) ; 3 uses
  %i.bj = shl i32 %.sroa.speculated.i, 3
  %3 = add nsw i32 %i.bj, %i.bf                   ; 2 uses
  %i.bk = add nsw i32 %.sroa.speculated.i, 268435456
  %4 = icmp ult i32 %i.bk, 536870912
  br i1 %4, label %bb.g, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.30) #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bl = icmp ult i32 %3, 2041
  br i1 %i.bl, label %_ZN2v88internal10JSFunction27CalculateInstanceSizeHelperENS0_12InstanceTypeEbiiPiS3_.exit, label %bb.h, !prof !26

bb.h:                                             ; preds = %bb.g
end_hunk_1
begin_hunk_2
  %i.ce = inttoptr i64 %i.cd to ptr
  store ptr %i.ce, ptr %i.bw, align 8
  store i64 %i.bv, ptr %.0.i.i, align 8
  %i.cf = tail call ptr @_ZN2v88internal7Factory16NewContextfulMapENS0_12DirectHandleINS0_13NativeContextEEENS0_12InstanceTypeEiNS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i.i, i16 noundef zeroext %.0, i32 noundef %3, i8 noundef zeroext 3, i32 noundef %.sroa.speculated.i, i8 noundef zeroext 3) #15 ; 4 uses
  %i.cg = load i64, ptr %1, align 8
  %i.ch = add i64 %i.cg, 55
  %i.ci = inttoptr i64 %i.ch to ptr
end_hunk_2
