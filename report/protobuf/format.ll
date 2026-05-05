inline.NumInlined: 211
inline.NumDeleted: 104
begin_hunk_0_@_ZN4absl12lts_202505129ParseTimeESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_8TimeZoneEPNS0_4TimeEPNSt7__cxx1112basic_stringIcS3_SaIcEEE:bb.a
  br i1 %i.i, label %.critedge44.1.loopexit161, label %.lr.ph.i, !llvm.loop !17

"_ZZN4absl12lts_202505129ParseTimeESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_8TimeZoneEPNS0_4TimeEPNSt7__cxx1112basic_stringIcS3_SaIcEEEENK3$_0clEPS4_.exit": ; preds = %.lr.ph.i
  %.sroa.6.0.lcssa173 = phi ptr [ %.sroa.6.0, %.lr.ph.i ]
  %.sroa.086.0.lcssa169 = phi i64 [ %.sroa.086.0, %.lr.ph.i ]
  %.sroa.6.0.lcssa166 = phi ptr [ %.sroa.6.0, %.lr.ph.i ]
  %.sroa.086.0.lcssa164 = phi i64 [ %.sroa.086.0, %.lr.ph.i ]
  %.sroa.086.0.lcssa = phi i64 [ %.sroa.086.0, %.lr.ph.i ] ; 7 uses
  %.sroa.6.0.lcssa = phi ptr [ %.sroa.6.0, %.lr.ph.i ] ; 7 uses
  %i.j = icmp ult i64 %.sroa.086.0.lcssa, 15
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202505129ParseTimeESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_8TimeZoneEPNS0_4TimeEPNSt7__cxx1112basic_stringIcS3_SaIcEEE:bb.a

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader, %bb.c
  %lsr.iv = phi i64 [ 15, %.lr.ph.i49.preheader ], [ %lsr.iv.next, %bb.c ] ; 2 uses
  %scevgep164 = getelementptr i8, ptr %.sroa.6.0.lcssa166, i64 %lsr.iv
  %i.v = load i8, ptr %scevgep164, align 1, !tbaa !14
  %i.w = sext i8 %i.v to i32
  %i.x = tail call i32 @isspace(i32 noundef %i.w) #12
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_202505129ParseTimeESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_8TimeZoneEPNS0_4TimeEPNSt7__cxx1112basic_stringIcS3_SaIcEEE:bb.a

bb.c:                                             ; preds = %.lr.ph.i49
  %lsr.iv.next = add i64 %lsr.iv, 1               ; 2 uses
  %i.y = icmp eq i64 %.sroa.086.0.lcssa164, %lsr.iv.next
  br i1 %i.y, label %.loopexit.loopexit160, label %.lr.ph.i49, !llvm.loop !17

.loopexit.loopexit:                               ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_202505129ParseTimeESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_8TimeZoneEPNS0_4TimeEPNSt7__cxx1112basic_stringIcS3_SaIcEEE:bb.a

.lr.ph.i49.1:                                     ; preds = %bb.d, %.lr.ph.i49.preheader.1
  %lsr.iv165 = phi i64 [ %lsr.iv.next166, %bb.d ], [ 13, %.lr.ph.i49.preheader.1 ] ; 2 uses
  %scevgep167 = getelementptr i8, ptr %.sroa.6.0.lcssa173, i64 %lsr.iv165
  %i.am = load i8, ptr %scevgep167, align 1, !tbaa !14
  %i.an = sext i8 %i.am to i32
  %i.ao = tail call i32 @isspace(i32 noundef %i.an) #12
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_202505129ParseTimeESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_8TimeZoneEPNS0_4TimeEPNSt7__cxx1112basic_stringIcS3_SaIcEEE:bb.a

bb.d:                                             ; preds = %.lr.ph.i49.1
  %lsr.iv.next166 = add i64 %lsr.iv165, 1         ; 2 uses
  %i.ap = icmp eq i64 %.sroa.086.0.lcssa169, %lsr.iv.next166
  br i1 %i.ap, label %.loopexit.loopexit, label %.lr.ph.i49.1, !llvm.loop !17

.critedge44.1.loopexit:                           ; preds = %.lr.ph.i49.1
end_hunk_4
