inline.NumInlined: 580
inline.NumDeleted: 115
begin_hunk_0_@unescape_unicode_list:bb.a
.lr.ph41.preheader:                               ; preds = %bb.e
  %scevgep49 = getelementptr i8, ptr %.145, i64 %i.a
  %i.w = sub i64 0, %.14550
  %scevgep51 = getelementptr i8, ptr %scevgep49, i64 %i.w ; 2 uses
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %bb.f
end_hunk_0
begin_hunk_1_@unescape_unicode_list:bb.a

bb.f:                                             ; preds = %.lr.ph41
  %i.ac = getelementptr i8, ptr %.240, i64 1      ; 2 uses
  %exitcond52.not = icmp eq ptr %i.ac, %scevgep51
  br i1 %exitcond52.not, label %.critedge2, label %.lr.ph41, !llvm.loop !133

.critedge2:                                       ; preds = %.lr.ph41, %bb.f, %bb.e
  %.2.lcssa = phi ptr [ %i.u, %bb.e ], [ %scevgep51, %bb.f ], [ %.240, %.lr.ph41 ] ; 4 uses
end_hunk_1
