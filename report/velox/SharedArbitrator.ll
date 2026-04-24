inline.NumInlined: 7733
inline.NumDeleted: 3262
begin_hunk_0_@_ZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EE:bb.a
          to label %bb.f unwind label %bb.ag      ; 3 uses

bb.f:                                             ; preds = %bb.e
  %6 = icmp ne ptr %i.as, null                    ; 2 uses
  br i1 %6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EE:bb.a
          to label %bb.h unwind label %bb.ah

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.7.0 = phi i8 [ 0, %bb.f ], [ 1, %bb.g ]  ; 3 uses
  %.sroa.071.1 = phi i32 [ %.sroa.071.0101, %bb.f ], [ %i.aw, %bb.g ] ; 4 uses
  %i.ax = icmp eq i64 %indvars.iv, 0
  br i1 %i.ax, label %bb.i, label %bb.aj
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EE:bb.a
  br label %bb.bn

bb.aj:                                            ; preds = %bb.h
  %i.dz = icmp ne i8 %.sroa.7.0, %.sroa.6.0103
  %i.ea = icmp ne i32 %.sroa.071.1, %.sroa.088.0102
  %i.eb = select i1 %6, i1 %i.ea, i1 false
  %i.ec = select i1 %i.dz, i1 true, i1 %i.eb
  br i1 %i.ec, label %bb.ak, label %bb.bk

end_hunk_2
