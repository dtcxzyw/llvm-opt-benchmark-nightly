begin_hunk_0
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add i64 %4, 7
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %i.t = icmp slt i64 %4, %i.s
  br i1 %i.t, label %.lr.ph, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
end_hunk_0
begin_hunk_1
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add i64 %4, 7
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %i.t = icmp slt i64 %4, %i.s
  br i1 %i.t, label %.lr.ph, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
end_hunk_1
