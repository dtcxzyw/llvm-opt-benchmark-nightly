inline.NumInlined: 1703
inline.NumDeleted: 496
begin_hunk_0_@_ZN4absl12lts_202505124Cord23GetAppendBufferSlowPathEmmm:bb.a

bb.p:                                             ; preds = %bb.o
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.speculated.i.i, i1 true)
  %6 = lshr exact i64 -9223372036854775808, %i.aq
  br label %_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_.exit.i

_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_.exit.i: ; preds = %bb.p, %bb.o, %_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i, %bb.n, %bb.m
  %.0.i.i = phi i64 [ %.sroa.speculated21.i.i, %bb.m ], [ %3, %_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i ], [ %i.ah, %bb.n ], [ %6, %bb.p ], [ %i.ao, %bb.o ]
  %i.ar = add i64 %.0.i.i, -13                    ; 2 uses
  %i.as = icmp ult i64 %i.ar, 20
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 262131)
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202505124Cord23GetAppendBufferSlowPathEmmm:bb.a

bb.z:                                             ; preds = %bb.y
  %i.cp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.speculated.i.i.i, i1 true)
  %7 = lshr exact i64 -9223372036854775808, %i.cp
  br label %_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit.i

_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit.i: ; preds = %bb.z, %bb.y, %_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i.i, %bb.x, %bb.w
  %.0.i.i.i23 = phi i64 [ %.sroa.speculated21.i.i.i, %bb.w ], [ %i.cf, %_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i.i ], [ %i.cg, %bb.x ], [ %7, %bb.z ], [ %i.cn, %bb.y ]
  %i.cq = add i64 %.0.i.i.i23, -13                ; 2 uses
  %i.cr = icmp ult i64 %i.cq, 20
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 262131)
end_hunk_1
