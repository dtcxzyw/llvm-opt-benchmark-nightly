inline.NumInlined: 24
inline.NumDeleted: 14
begin_hunk_0_@_ZN2v88internal10DateParser12KeywordTable6LookupEPKji:bb.a
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.critedge.thread.us.1
  %indvars.iv34 = phi i64 [ %indvars.iv.next35.1, %.critedge.thread.us.1 ], [ 0, %.preheader.us.preheader ] ; 10 uses
  %i.d = mul nuw nsw i64 %indvars.iv34, 5
  %scevgep65.a = getelementptr i8, ptr @_ZN2v88internal10DateParser12KeywordTable5arrayE, i64 %i.d
  %i.e = load i8, ptr %scevgep65.a, align 2
end_hunk_0
begin_hunk_1_@_ZN2v88internal10DateParser12KeywordTable6LookupEPKji:bb.a
  br i1 %i.g, label %bb.d, label %.critedge.thread.us

.critedge.thread.us:                              ; preds = %.preheader.us, %bb.d, %bb.e
  %.not.us = icmp eq i64 %indvars.iv34, 26
  br i1 %.not.us, label %.split24.us.loopexit, label %.preheader.us.1

end_hunk_1
begin_hunk_2_@_ZN2v88internal10DateParser12KeywordTable6LookupEPKji:bb.a

..critedge.us_crit_edge:                          ; preds = %bb.c
  %indvars.iv34.lcssa68 = phi i64 [ %indvars.iv34, %bb.c ]
  %i.af = add i64 %indvars.iv34.lcssa68, 1
  br label %.critedge.us

end_hunk_2
