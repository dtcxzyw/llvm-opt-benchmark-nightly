begin_hunk_0
  %i.aj = ptrtoint ptr %i.ai to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.j
  %.033.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %i.ap, %bb.j ]
  %.02132.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.an, %bb.j ]
  %i.ak = add i64 %.033.i.i, -13
  %i.al = call ptr @memchr(ptr noundef nonnull %.02132.i.i, i32 noundef 47, i64 noundef %i.ak) #23 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.al, null
  br i1 %.not26.i.i, label %.lr.ph.i.i25, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

end_hunk_0
begin_hunk_1
  %.not.not = icmp eq i64 %i.as, -1
  br i1 %.not.not, label %.lr.ph.i.i25, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit

.lr.ph.i.i25:                                     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.j, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.au = ptrtoint ptr %i.at to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i26

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i26:   ; preds = %.lr.ph.i.i25, %bb.k
  %.033.i.i27 = phi i64 [ %i.ag, %.lr.ph.i.i25 ], [ %i.ba, %bb.k ]
  %.02132.i.i28 = phi ptr [ %i.af, %.lr.ph.i.i25 ], [ %i.ay, %bb.k ]
  %i.av = add i64 %.033.i.i27, -13
  %i.aw = call ptr @memchr(ptr noundef nonnull %.02132.i.i28, i32 noundef 92, i64 noundef %i.av) #23 ; 4 uses
  %.not26.i.i30 = icmp eq ptr %i.aw, null
  br i1 %.not26.i.i30, label %.lr.ph.i.i38, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31

end_hunk_1
begin_hunk_2
  %.not17.not = icmp eq i64 %i.bd, -1
  br i1 %.not17.not, label %.lr.ph.i.i38, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit

.lr.ph.i.i38:                                     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i26, %bb.k, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit34
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.bf = ptrtoint ptr %i.be to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i39

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i39:   ; preds = %.lr.ph.i.i38, %bb.l
  %.033.i.i40 = phi i64 [ %i.ag, %.lr.ph.i.i38 ], [ %i.bl, %bb.l ]
  %.02132.i.i41 = phi ptr [ %i.af, %.lr.ph.i.i38 ], [ %i.bj, %bb.l ]
  %i.bg = add i64 %.033.i.i40, -13
  %i.bh = call ptr @memchr(ptr noundef nonnull %.02132.i.i41, i32 noundef 47, i64 noundef %i.bg) #23 ; 4 uses
  %.not26.i.i43 = icmp eq ptr %i.bh, null
  br i1 %.not26.i.i43, label %.lr.ph.i.i51, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i44

end_hunk_2
begin_hunk_3
  %.not18.not = icmp eq i64 %i.bo, -1
  br i1 %.not18.not, label %.lr.ph.i.i51, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit

.lr.ph.i.i51:                                     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i39, %bb.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit47
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.bq = ptrtoint ptr %i.bp to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i52

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i52:   ; preds = %.lr.ph.i.i51, %bb.n
  %.033.i.i53 = phi i64 [ %i.ag, %.lr.ph.i.i51 ], [ %i.ca, %bb.n ]
  %.02132.i.i54 = phi ptr [ %i.af, %.lr.ph.i.i51 ], [ %i.by, %bb.n ]
  %i.br = add i64 %.033.i.i53, -13
  %i.bs = call ptr @memchr(ptr noundef nonnull %.02132.i.i54, i32 noundef 92, i64 noundef %i.br) #23 ; 4 uses
  %.not26.i.i56 = icmp eq ptr %i.bs, null
  br i1 %.not26.i.i56, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i57

end_hunk_3
