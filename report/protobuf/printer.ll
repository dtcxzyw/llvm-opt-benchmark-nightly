begin_hunk_0

bb.p:                                             ; preds = %.lr.ph429, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit183
  %.092427 = phi i1 [ true, %.lr.ph429 ], [ false, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit183 ]
  %.sroa.0211.0.copyload = load i64, ptr %i.aj, align 8, !tbaa !71 ; 10 uses
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !75 ; 8 uses
  %i.bw = load i8, ptr %i.be, align 8, !tbaa !16, !range !14, !noundef !15
  %i.bx = trunc nuw i8 %i.bw to i1
end_hunk_0
begin_hunk_1
  %i.ca = load i8, ptr %.sroa.244.0.copyload, align 1, !tbaa !76
  %i.cb = sext i8 %i.ca to i32
  %i.cc = ptrtoint ptr %i.bz to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.t, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.sroa.0211.0.copyload, %.lr.ph.i.i ], [ %i.ch, %bb.t ]
  %.02132.i.i = phi ptr [ %.sroa.11.0.copyload, %.lr.ph.i.i ], [ %i.cf, %bb.t ]
  %reass.sub = sub i64 %.033.i.i, %.sroa.043.0.copyload
  %i.cd = add i64 %reass.sub, 1
  %10 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i, i32 noundef %i.cb, i64 noundef %i.cd) #30 ; 4 uses
  %.not26.i.i.a = icmp eq ptr %10, null
  br i1 %.not26.i.i.a, label %.thread283, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %bcmp.i.i137 = call i32 @bcmp(ptr nonnull %10, ptr nonnull %.sroa.244.0.copyload, i64 %.sroa.043.0.copyload)
  %i.ce = icmp eq i32 %bcmp.i.i137, 0
  br i1 %i.ce, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.t
end_hunk_1
begin_hunk_2
          cleanup
  br label %bb.bf

.thread283:                                       ; preds = %bb.t, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.u, %bb.s, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.p
  %.sroa.0211.2 = phi i64 [ %.sroa.0211.0.copyload, %bb.p ], [ %.sroa.0211.0.copyload, %bb.s ], [ %.sroa.0211.0.copyload, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %.sroa.speculated.i, %bb.u ], [ %.sroa.0211.0.copyload, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ], [ %.sroa.0211.0.copyload, %bb.t ] ; 5 uses
  %i.cp = icmp eq i64 %.sroa.0211.2, 0
  %or.cond314399 = select i1 %.092427, i1 true, i1 %i.cp
  br i1 %or.cond314399, label %.critedge, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143.preheader
end_hunk_2
