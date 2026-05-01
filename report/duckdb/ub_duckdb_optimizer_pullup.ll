inline.NumInlined: 548
inline.NumDeleted: 287
begin_hunk_0_@_ZN6duckdb12FilterPullup14PullupBothSideENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12FilterPullup18PullupSetOperationENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(26) initializes((24, 26)) %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 8     ; 11 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %6 = alloca %"class.duckdb::unique_ptr", align 8 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb12FilterPullup18PullupSetOperationENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a

.lr.ph:                                           ; preds = %bb.i
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  br label %bb.j
end_hunk_1
begin_hunk_2_@_ZN6duckdb12FilterPullup18PullupSetOperationENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i64 0, ptr %i.bf, align 8
  store i64 %i.bd, ptr %3, align 8, !tbaa !208
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_L23ReplaceFilterTableIndexES2_RNS0_19LogicalSetOperationEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_L23ReplaceFilterTableIndexES2_RNS0_19LogicalSetOperationEE3$_0E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.be, align 8, !tbaa !210
  invoke void @_ZN6duckdb18ExpressionIterator17EnumerateChildrenERNS_10ExpressionERKSt8functionIFvS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.m unwind label %bb.p, !inline_history !205

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !186 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.n

end_hunk_2
begin_hunk_3_@_ZN6duckdb12FilterPullup18PullupSetOperationENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
bb.p:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !186 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.bu, null
  br i1 %.not.i7.i, label %_ZNSt14_Function_baseD2Ev.exit8.i, label %bb.q

end_hunk_3
begin_hunk_4_@_ZN6duckdb12FilterPullup18PullupSetOperationENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3
  %i.cf = icmp ult i64 %i.by, %i.ce
  br i1 %i.cf, label %bb.j, label %.loopexit, !llvm.loop !211

.loopexit:                                        ; preds = %_ZN6duckdbL23ReplaceFilterTableIndexERNS_10ExpressionERNS_19LogicalSetOperationE.exit, %bb.i, %bb.h
  %i.cg = load i64, ptr %2, align 8, !tbaa !21
end_hunk_4
begin_hunk_5_@_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v:bb.a
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.29", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !212
  %.not = icmp eq i8 %i.b, 28
  br i1 %.not, label %bb.g, label %bb.b

end_hunk_5
begin_hunk_6_@llvm.memset.p0.i64
; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_L24ReplaceExpressionBindingERNS0_6vectorINS0_10unique_ptrIS1_St14default_deleteIS1_ELb1EEELb1ESaIS8_EEES2_mE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !213
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !215
  %.val2.val = load i64, ptr %.val2, align 8, !tbaa !69
  tail call fastcc void @_ZN6duckdbL24ReplaceExpressionBindingERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERS2_m(ptr noundef nonnull align 8 dereferenceable(24) %.val, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %.val2.val), !inline_history !216
  ret void
}

end_hunk_6
begin_hunk_7_@"_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_L24ReplaceExpressionBindingERNS0_6vectorINS0_10unique_ptrIS1_St14default_deleteIS1_ELb1EEELb1ESaIS8_EEES2_mE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation":bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdbL24ReplaceExpressionBindingERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERS2_mE3$_0", ptr %0, align 8, !tbaa !217
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL24ReplaceExpressionBindingERNS1_6vectorINS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEERS4_mE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !210
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL24ReplaceExpressionBindingERNS1_6vectorINS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEERS4_mE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@"_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_L23ReplaceFilterTableIndexES2_RNS0_19LogicalSetOperationEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation":bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdbL23ReplaceFilterTableIndexERNS_10ExpressionERNS_19LogicalSetOperationEE3$_0", ptr %0, align 8, !tbaa !217
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL23ReplaceFilterTableIndexERNS1_10ExpressionERNS1_19LogicalSetOperationEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !210
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL23ReplaceFilterTableIndexERNS1_10ExpressionERNS1_19LogicalSetOperationEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
end_hunk_8
begin_hunk_9_@llvm.experimental.noalias.scope.decl
!207 = !{!"_ZTSN6duckdb19LogicalSetOperationE", !53, i64 0, !51, i64 104, !51, i64 112, !16, i64 120, !16, i64 121}
!208 = !{!209, !209, i64 0}
!209 = !{!"p1 _ZTSN6duckdb19LogicalSetOperationE", !15, i64 0}
!210 = !{!15, !15, i64 0}
!211 = distinct !{!211, !40}
!212 = !{!140, !142, i64 9}
!213 = !{!214, !180, i64 0}
!214 = !{!"_ZTSZN6duckdbL24ReplaceExpressionBindingERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERS2_mE3$_0", !180, i64 0, !182, i64 8}
!215 = !{!214, !182, i64 8}
!216 = distinct !{null, null, null}
!217 = !{!218, !218, i64 0}
!218 = !{!"p1 _ZTSSt9type_info", !15, i64 0}
!219 = !{i64 0, i64 8, !179, i64 8, i64 8, !181}
!220 = !{!221, !209, i64 0}
!221 = !{!"_ZTSZN6duckdbL23ReplaceFilterTableIndexERNS_10ExpressionERNS_19LogicalSetOperationEE3$_0", !209, i64 0}
end_hunk_9
