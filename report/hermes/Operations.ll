inline.NumInlined: 2743
inline.NumDeleted: 1013
begin_hunk_0_@_ZN6hermes2vm23numberToStringWithRadixERNS0_7RuntimeEdj:bb.a
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store i8 %i.ad, ptr %i.ai, align 1
  %i.aj = load i32, ptr %i.i, align 8, !tbaa !57  ; 3 uses
  %i.ak = add i32 %i.aj, 1                        ; 4 uses
  store i32 %i.ak, ptr %i.i, align 8, !tbaa !57
  %i.al = uitofp i32 %i.aa to double
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm23numberToStringWithRadixERNS0_7RuntimeEdj:bb.a
  br i1 %.old68, label %.preheader92, label %bb.i

.preheader92:                                     ; preds = %bb.f, %bb.e
  %.lcssa174 = phi i32 [ %i.aj, %bb.f ], [ %i.aj, %bb.e ]
  %.lcssa170 = phi i32 [ %i.ak, %bb.f ], [ %i.ak, %bb.e ] ; 2 uses
  %i.ar = icmp eq i32 %.lcssa170, 0
  br i1 %i.ar, label %._crit_edge, label %.lr.ph98
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm23numberToStringWithRadixERNS0_7RuntimeEdj:bb.a
  br label %.thread86

bb.g:                                             ; preds = %.lr.ph98, %bb.h
  %lsr.iv174 = phi i32 [ %.lcssa174, %.lr.ph98 ], [ %lsr.iv.next, %bb.h ] ; 2 uses
  %lsr.iv = phi ptr [ %scevgep, %.lr.ph98 ], [ %scevgep172, %bb.h ] ; 3 uses
  %scevgep173 = getelementptr i8, ptr %lsr.iv, i64 -1
  %i.av = load i8, ptr %scevgep173, align 1, !tbaa !33 ; 2 uses
end_hunk_2
