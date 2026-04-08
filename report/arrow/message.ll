inline.NumInlined: 3211
inline.NumDeleted: 1159
begin_hunk_0_@_ZNK5arrow3ipc7Message11SerializeToEPNS_2io12OutputStreamERKNS0_15IpcWriteOptionsEPl:bb.a
  br i1 %i.bw, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit64

bb.r:                                             ; preds = %.noexc
  %i.bx = sub nsw i64 %.020.i, %.sroa.speculated.i ; 2 uses
  %10 = icmp sgt i64 %i.bx, 0
  br i1 %10, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit64.loopexit

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNK5arrow3ipc7Message11body_lengthEv.exit, %bb.r
  %.020.i = phi i64 [ %i.bx, %bb.r ], [ %i.bv, %_ZNK5arrow3ipc7Message11body_lengthEv.exit ] ; 2 uses
end_hunk_0
