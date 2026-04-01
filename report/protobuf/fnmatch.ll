begin_hunk_0
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.1029.078, i64 %.sroa.023.079
  %i.w = sext i8 %i.j to i32
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17.a: ; preds = %bb.i, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.sroa.023.079, %.lr.ph.i.i ], [ %i.ac, %bb.i ]
  %.02132.i.i = phi ptr [ %.sroa.1029.078, %.lr.ph.i.i ], [ %i.aa, %bb.i ]
  %reass.sub = sub i64 %.033.i.i, %.sroa.0.0
  %i.y = add i64 %reass.sub, 1
  %4 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i, i32 noundef %i.w, i64 noundef %i.y) #4 ; 4 uses
  %.not26.i.i.a = icmp eq ptr %4, null
  br i1 %.not26.i.i.a, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17.a
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %4, ptr nonnull %.sroa.12.076, i64 %.sroa.0.0)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.i
end_hunk_0
begin_hunk_1
  %i.aq = icmp eq i64 %.sroa.034.1, 0
  br i1 %i.aq, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !12

.critedge:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.j, %bb.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17.a, %._crit_edge, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit
  %.3 = phi i1 [ %spec.select, %._crit_edge ], [ %i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit ], [ false, %bb.i ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17.a ], [ false, %bb.j ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread ]
  ret i1 %.3
}

end_hunk_1
