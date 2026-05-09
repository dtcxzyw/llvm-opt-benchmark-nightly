inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@pm_range_node_create:bb.a
  %i.o = load i32, ptr %2, align 8, !tbaa !126    ; 2 uses
  %switch.selectcmp.case1 = icmp eq i32 %i.o, 44
  %switch.selectcmp.case2 = icmp eq i32 %i.o, 155
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2 ; 2 uses
  %i.p = select i1 %switch.selectcmp, i16 4, i16 0 ; 2 uses
  %i.q = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.e

end_hunk_0
begin_hunk_1_@pm_range_node_create:bb.a
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.f
  %4 = select i1 %switch.selectcmp, i16 6, i16 2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.h
end_hunk_1
begin_hunk_2_@pm_call_node_shorthand_create:bb.a

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %.val = load i16, ptr %1, align 8, !tbaa !115
  %i.f = icmp eq i16 %.val, 133                   ; 2 uses
  %i.g = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 14 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %pm_call_node_create.exit
end_hunk_2
begin_hunk_3_@pm_call_node_shorthand_create:bb.a
  unreachable

pm_call_node_create.exit:                         ; preds = %pm_assert_value_expression.exit
  %4 = select i1 %i.f, i16 32, i16 0
  %i.k = load i32, ptr %0, align 8, !tbaa !109
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %0, align 8, !tbaa !109
end_hunk_3
begin_hunk_4_@pm_call_node_shorthand_create:bb.a
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %5 = select i1 %i.f, i16 36, i16 4
  store i16 %5, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !116
  br label %bb.n

end_hunk_4
begin_hunk_5_@pm_call_node_call_create:bb.a

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %.val = load i16, ptr %1, align 8, !tbaa !115
  %i.f = icmp eq i16 %.val, 133                   ; 2 uses
  %i.g = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 15 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %pm_call_node_create.exit
end_hunk_5
begin_hunk_6_@pm_call_node_call_create:bb.a
  unreachable

pm_call_node_create.exit:                         ; preds = %pm_assert_value_expression.exit
  %5 = select i1 %i.f, i16 32, i16 0
  %i.k = load i32, ptr %0, align 8, !tbaa !109
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %0, align 8, !tbaa !109
end_hunk_6
begin_hunk_7_@pm_call_node_call_create:bb.a
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %6 = select i1 %i.f, i16 36, i16 4
  store i16 %6, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !116
  br label %bb.r

end_hunk_7
begin_hunk_8_@pm_call_node_aref_create:bb.a

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %.val = load i16, ptr %1, align 8, !tbaa !115
  %i.f = icmp eq i16 %.val, 133                   ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !314  ; 4 uses
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %3 = select i1 %i.f, i16 32, i16 0
  %i.j = load i16, ptr %i.h, align 8, !tbaa !115
  %i.k = icmp eq i16 %i.j, 12
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %pm_assert_value_expression.exit
  %4 = select i1 %i.f, i16 288, i16 256
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_8
