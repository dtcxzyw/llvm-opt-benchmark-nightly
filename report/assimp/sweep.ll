inline.NumInlined: 129
inline.NumDeleted: 49
begin_hunk_0_@_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE:bb.a

tailrecurse.i:                                    ; preds = %bb.e, %bb.c
  %i.ab = phi ptr [ %i.ac, %bb.e ], [ %i.i, %bb.c ]
  tail call void @_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ab)
  %i.ac = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load ptr, ptr %2, align 8               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3p2t5Sweep24FillRightConvexEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE:bb.a

tailrecurse.i:                                    ; preds = %bb.c, %tailrecurse._crit_edge
  %i.an = phi ptr [ %i.ao, %bb.c ], [ %.lcssa46, %tailrecurse._crit_edge ]
  tail call void @_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  %i.ao = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load ptr, ptr %2, align 8               ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3p2t5Sweep22FillLeftBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE:bb.a

tailrecurse.i:                                    ; preds = %bb.e, %bb.c
  %i.aa = phi ptr [ %i.ab, %bb.e ], [ %i.i, %bb.c ]
  tail call void @_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.aa)
  %i.ab = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = load ptr, ptr %2, align 8               ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3p2t5Sweep23FillLeftConvexEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE:bb.a

tailrecurse.i:                                    ; preds = %bb.c, %tailrecurse._crit_edge
  %i.ag = phi ptr [ %i.ah, %bb.c ], [ %.lcssa46, %tailrecurse._crit_edge ]
  tail call void @_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ag)
  %i.ah = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = load ptr, ptr %2, align 8               ; 2 uses
end_hunk_3
begin_hunk_4_@llvm.assume
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
end_hunk_4
