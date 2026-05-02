inline.NumInlined: 1950
inline.NumDeleted: 848
begin_hunk_0_@_ZN2v88internal8compiler9Scheduler28PropagateImmediateDominatorsEPNS1_10BasicBlockE:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i8, ptr %i.x, align 8, !range !10, !noundef !11
  %i.z = trunc nuw i8 %i.y to i1
  %1 = select i1 %i.z, i8 %.03042, i8 0
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.2 = phi ptr [ %.03241, %.lr.ph ], [ %.133, %bb.f ] ; 2 uses
  %.131 = phi i8 [ %.03042, %.lr.ph ], [ %1, %bb.f ] ; 2 uses
  %.1 = phi ptr [ %.043, %.lr.ph ], [ %i.v, %bb.f ]
  %.035 = getelementptr inbounds nuw i8, ptr %.03544, i64 8 ; 2 uses
  %.not36 = icmp eq ptr %.035, %i.d
end_hunk_0
