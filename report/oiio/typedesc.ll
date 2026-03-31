begin_hunk_0
  %i.e = load ptr, ptr %2, align 8, !tbaa !10     ; 40 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %.fr237 = freeze i64 %i.g                       ; 32 uses
  switch i64 %.fr237, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit127.thread [
    i64 8, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1
    i64 5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.4
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.7
    i64 11, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.15
    i64 9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.b
end_hunk_0
begin_hunk_1
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.10: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.6
  %bcmp.i.10 = call i32 @bcmp(ptr %i.e, ptr nonnull @.str.49, i64 %.fr237)
  %.not.i.i.10 = icmp eq i32 %bcmp.i.10, 0
  br i1 %.not.i.i.10, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %.thread249

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.11: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.9
  %bcmp.i.11 = call i32 @bcmp(ptr %i.e, ptr nonnull @.str.50, i64 %.fr237)
end_hunk_1
begin_hunk_2
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.15: ; preds = %bb.b
  %bcmp.i.15 = call i32 @bcmp(ptr %i.e, ptr nonnull @.str.32, i64 %.fr237)
  %.not.i.i.15 = icmp eq i32 %bcmp.i.15, 0
  br i1 %.not.i.i.15, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %.thread249

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.11
  %bcmp.i9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.e, ptr noundef nonnull dereferenceable(5) @.str.11, i64 5)
end_hunk_2
begin_hunk_3
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8
  %bcmp.i14 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.e, ptr noundef nonnull dereferenceable(5) @.str.12, i64 5)
  %.not.i.i15 = icmp eq i32 %bcmp.i14, 0
  br i1 %.not.i.i15, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %.thread249

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i18: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.13
  %bcmp.i19 = call i32 @bcmp(ptr %i.e, ptr nonnull @.str.13, i64 %.fr237)
end_hunk_3
begin_hunk_4
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43
  %bcmp.i49 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.e, ptr noundef nonnull dereferenceable(7) @.str.23, i64 7)
  %.not.i.i50 = icmp eq i32 %bcmp.i49, 0
  br i1 %.not.i.i50, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %.thread249

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i53: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i33
  %bcmp.i54 = call i32 @bcmp(ptr nonnull %i.e, ptr nonnull @.str.2, i64 %.fr237)
end_hunk_4
begin_hunk_5
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i58: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i53
  %bcmp.i59 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.e, ptr noundef nonnull dereferenceable(6) @.str.4, i64 6)
  %.not.i.i60 = icmp eq i32 %bcmp.i59, 0
  br i1 %.not.i.i60, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %.thread249

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i63: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38
  %bcmp.i64 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.e, ptr noundef nonnull dereferenceable(8) @.str, i64 8)
  %.not.i.i65 = icmp eq i32 %bcmp.i64, 0
  br i1 %.not.i.i65, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i68

.thread249:                                       ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.10, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.15, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i58, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i48, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13
  switch i64 %.fr237, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit127.thread [
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i88
    i64 9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73
    i64 5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i78
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i113
    i64 11, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i68: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i63
  %bcmp.i69 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.e, ptr noundef nonnull dereferenceable(8) @.str.15, i64 8)
  %.not.i.i70 = icmp eq i32 %bcmp.i69, 0
  br i1 %.not.i.i70, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i108

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73: ; preds = %.thread249, %bb.b
  %bcmp.i74 = call i32 @bcmp(ptr %i.e, ptr nonnull @.str.24, i64 %.fr237)
  %.not.i.i75 = icmp eq i32 %bcmp.i74, 0
  br i1 %.not.i.i75, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %bb.c

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i78: ; preds = %.thread249
  %bcmp.i79 = call i32 @bcmp(ptr %i.e, ptr nonnull @.str.25, i64 %.fr237)
  %.not.i.i80 = icmp eq i32 %bcmp.i79, 0
  br i1 %.not.i.i80, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i83

end_hunk_5
begin_hunk_6
  %.not.i.i85 = icmp eq i32 %bcmp.i84, 0
  br i1 %.not.i.i85, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i93

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i88: ; preds = %.thread249
  %bcmp.i89 = call i32 @bcmp(ptr %i.e, ptr nonnull @.str.27, i64 %.fr237)
  %.not.i.i90 = icmp eq i32 %bcmp.i89, 0
  br i1 %.not.i.i90, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i98
end_hunk_6
begin_hunk_7
  %.not.i.i110 = icmp eq i32 %bcmp.i109, 0
  br i1 %.not.i.i110, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i103, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i98, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i108
  switch i64 %.fr237, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit127.thread [
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i113
    i64 11, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i113: ; preds = %.thread249, %bb.c
  %bcmp.i114 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.e, ptr noundef nonnull dereferenceable(7) @.str.1, i64 7)
  %.not.i.i115 = icmp eq i32 %bcmp.i114, 0
  br i1 %.not.i.i115, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i118
end_hunk_7
begin_hunk_8
  %.not.i.i120 = icmp eq i32 %bcmp.i119, 0
  br i1 %.not.i.i120, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit127.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123: ; preds = %.thread249, %bb.c
  %bcmp.i124 = call i32 @bcmp(ptr %i.e, ptr nonnull @.str.32, i64 %.fr237)
  %.not.i.i125 = icmp eq i32 %bcmp.i124, 0
  br i1 %.not.i.i125, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit12, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit127.thread
end_hunk_8
begin_hunk_9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit127.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit127.thread: ; preds = %.thread249, %bb.b, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i118, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123, %.critedge, %bb.f
  %.1 = phi i64 [ %i.m, %bb.f ], [ 0, %.critedge ], [ 0, %bb.c ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i118 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.7 ], [ 0, %bb.b ], [ 0, %.thread249 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

end_hunk_9
begin_hunk_10
  ]

bb.g:                                             ; preds = %bb.f
  %trunc48 = trunc nuw i32 %i.q to i8
  switch i8 %trunc48, label %.thread [
    i8 4, label %bb.l
    i8 2, label %bb.l
  ]

bb.h:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.q, -2
  %or.cond9 = icmp ult i32 %i.t, 4
  br i1 %or.cond9, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %i.u = icmp eq i32 %i.r, 4
  %i.v = icmp eq i32 %i.r, 10
  %or.cond11 = or i1 %i.u, %i.v
end_hunk_10
begin_hunk_11
bb.k:                                             ; preds = %bb.i, %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %.thread, %bb.h, %bb.g, %bb.g, %.thread56, %bb.c, %bb.b, %bb.a, %bb.k
  %.0 = phi i32 [ 11, %bb.k ], [ %i.a, %bb.a ], [ %i.b, %bb.b ], [ %i.a, %bb.c ], [ %i.r, %.thread56 ], [ 6, %bb.g ], [ 7, %bb.h ], [ %i.r, %.thread ], [ 6, %bb.g ], [ %i.r, %bb.j ]
  ret i32 %.0
}

end_hunk_11
