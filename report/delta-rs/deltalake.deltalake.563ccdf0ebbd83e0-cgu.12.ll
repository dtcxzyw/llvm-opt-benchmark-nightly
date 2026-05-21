inline.NumInlined: 5547
inline.NumDeleted: 1701
begin_hunk_0_@_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake12wake_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake4wakeCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE25increment_strong_count_inCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE25increment_strong_count_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.f = insertvalue { ptr, ptr } { ptr @20, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE25increment_strong_count_inCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE25increment_strong_count_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.f = insertvalue { ptr, ptr } { ptr @21, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake19wake_by_ref_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  tail call fastcc void @_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENtNtB7_4wake4Wake11wake_by_refCs7p2uQeJxui2_9deltalake(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake19wake_by_ref_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  tail call fastcc void @_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake11wake_by_refCs7p2uQeJxui2_9deltalake(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB3W_5slice4iter4IterBK_EINtNtB3W_6option4IterBK_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !413, !noundef !4 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB52_5slice4iter4IterB1q_EINtNtB52_6option4IterB1q_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3Y_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB55_5slice4iter4IterB1q_EINtNtB55_6option4IterB1q_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCINvNtB26_5utils18find_exprs_in_exprNCINvB51_17find_window_exprsINtNtNtNtBW_4iter8adapters5chain5ChainINtNtNtBW_5slice4iter4IterB22_EINtBU_4IterB22_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4N_5slice4iter4IterB1m_EINtNtB4N_6option4IterB1m_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB58_17find_window_exprsINtNtNtNtB2e_4iter8adapters5chain5ChainINtNtNtB2e_5slice4iter4IterB1o_EINtB2c_4IterB1o_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB5b_17find_window_exprsINtNtNtNtB2y_4iter8adapters5chain5ChainINtNtNtB2y_5slice4iter4IterB1o_EINtB2w_4IterB1o_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB4e_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB5l_5slice4iter4IterB1q_EINtNtB5l_6option4IterB1q_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !165, !noundef !4
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1k_5utils18find_exprs_in_exprNCINvB24_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB3b_5slice4iter4IterB1g_EINtNtB3b_6option4IterB1g_EEE0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB52_5slice4iter4IterB1q_EINtNtB52_6option4IterB1q_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3L_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4S_5slice4iter4IterB1q_EINtNtB4S_6option4IterB1q_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4N_5slice4iter4IterB1m_EINtNtB4N_6option4IterB1m_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB3Z_5slice4iter4IterNtBM_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !413, !noundef !4 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB55_5slice4iter4IterNtB1s_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6u_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3Y_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB58_5slice4iter4IterNtB1s_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCINvNtB26_5utils18find_exprs_in_exprNCINvB51_20find_aggregate_exprsINtNtNtNtBW_4iter8adapters3map3MapINtNtNtBW_5slice4iter4IterNtB24_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB7j_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4Q_5slice4iter4IterNtB1o_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6f_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB58_20find_aggregate_exprsINtNtNtNtB2e_4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterB3e_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB7l_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB5b_20find_aggregate_exprsINtNtNtNtB2y_4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterB2g_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB7o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB5o_5slice4iter4IterNtB1s_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !165, !noundef !4
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1k_5utils18find_exprs_in_exprNCINvB24_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB3e_5slice4iter4IterNtB1i_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4D_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB55_5slice4iter4IterNtB1s_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6u_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3L_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4V_5slice4iter4IterNtB1s_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6k_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4Q_5slice4iter4IterNtB1o_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6f_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB3R_INtNtNtB3Z_5slice4iter4IterBK_EINtNtB3Z_6option4IterBK_EEB5i_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !413, !noundef !4 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4X_INtNtNtB55_5slice4iter4IterB1q_EINtNtB55_6option4IterB1q_EEB6p_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3Y_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB50_INtNtNtB58_5slice4iter4IterB1q_EINtNtB58_6option4IterB1q_EEB6s_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCINvNtB26_5utils18find_exprs_in_exprNCINvB51_20find_aggregate_exprsINtNtNtNtBW_4iter8adapters5chain5ChainIB63_INtNtNtBW_5slice4iter4IterB22_EINtBU_4IterB22_EEB7e_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4I_INtNtNtB4Q_5slice4iter4IterB1m_EINtNtB4Q_6option4IterB1m_EEB6a_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB58_20find_aggregate_exprsINtNtNtNtB2e_4iter8adapters5chain5ChainIB6a_INtNtNtB2e_5slice4iter4IterB1o_EINtB2c_4IterB1o_EEB7n_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB5b_20find_aggregate_exprsINtNtNtNtB2y_4iter8adapters5chain5ChainIB6d_INtNtNtB2y_5slice4iter4IterB1o_EINtB2w_4IterB1o_EEB7q_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB5g_INtNtNtB5o_5slice4iter4IterB1q_EINtNtB5o_6option4IterB1q_EEB6I_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !165, !noundef !4
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1k_5utils18find_exprs_in_exprNCINvB24_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB36_INtNtNtB3e_5slice4iter4IterB1g_EINtNtB3e_6option4IterB1g_EEB4y_EE0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4X_INtNtNtB55_5slice4iter4IterB1q_EINtNtB55_6option4IterB1q_EEB6p_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3L_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4N_INtNtNtB4V_5slice4iter4IterB1q_EINtNtB4V_6option4IterB1q_EEB6f_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4I_INtNtNtB4Q_5slice4iter4IterB1m_EINtNtB4Q_6option4IterB1m_EEB6a_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_20find_aggregate_exprsRSBK_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !413, !noundef !4 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_20find_aggregate_exprsRSB1q_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3Y_20find_aggregate_exprsRSB1q_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCINvNtB26_5utils18find_exprs_in_exprNCINvB51_20find_aggregate_exprsRSB22_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_20find_aggregate_exprsRSB1m_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB58_20find_aggregate_exprsRSB1o_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB5b_20find_aggregate_exprsRSB1o_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsRSB1q_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !165, !noundef !4
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1k_5utils18find_exprs_in_exprNCINvB24_20find_aggregate_exprsRSB1g_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_20find_aggregate_exprsRSB1q_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3L_20find_aggregate_exprsRSB1q_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_20find_aggregate_exprsRSB1m_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2S_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !413, !noundef !4 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3X_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB40_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB53_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3I_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5d_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4g_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !165, !noundef !4
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB26_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3X_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3I_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models1__NtB5_6ActionNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB29_4read9SliceReadEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [256 x i8], align 8               ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [136 x i8], align 8               ; 6 uses
  %i.e = alloca [240 x i8], align 8               ; 6 uses
  %i.f = alloca [272 x i8], align 8               ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [256 x i8], align 8               ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [256 x i8], align 8               ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [136 x i8], align 8               ; 6 uses
  %i.n = alloca [240 x i8], align 8               ; 6 uses
  %i.o = alloca [272 x i8], align 8               ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %i.q = alloca [256 x i8], align 8               ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 8 uses
  %i.x = alloca [272 x i8], align 8               ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5549
  call void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !5544
  %i.aa = load i8, ptr %i.z, align 8, !range !5, !noalias !5549, !noundef !4
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !5549, !nonnull !4, !align !32, !noundef !4
  br label %bb.by

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !range !5, !noalias !5549, !noundef !4
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ai = load i8, ptr %i.ah, align 2, !noalias !5549
  switch i8 %i.ai, label %bb.g [
    i8 123, label %bb.h
    i8 34, label %bb.i
  ], !prof !5550

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5549
  store i64 5, ptr %i.s, align 8, !noalias !5549
  %i.aj = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s), !noalias !5544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5549
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sink.i = phi ptr [ %i.al, %bb.g ], [ %i.aj, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.ak, align 8, !alias.scope !5544, !noalias !5547
  store i64 10, ptr %0, align 8, !alias.scope !5544, !noalias !5547
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models1__NtB2t_6ActionNtB1l_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5549
  store i64 10, ptr %i.t, align 8, !noalias !5549
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t), !noalias !5544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5549
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.an = load i8, ptr %i.am, align 8, !alias.scope !5547, !noalias !5544, !noundef !4
  %i.ao = add i8 %i.an, -1                        ; 2 uses
  store i8 %i.ao, ptr %i.am, align 8, !alias.scope !5547, !noalias !5544
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.aq, label %bb.ar, !prof !9

bb.i:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !5551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5554
  call void @_RINvXse_NtCseqDwI8vvjGQ_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de10EnumAccess12variant_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models1__NtB39_6ActionNtB1p_11Deserialize11deserialize7___FieldEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !5556
  %i.aq = load i8, ptr %i.r, align 8, !range !5557, !noalias !5554, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !5554, !nonnull !4, !align !32, !noundef !4 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5554
  switch i8 %i.aq, label %default.unreachable [
    i8 8, label %bb.j
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
    i8 5, label %bb.p
    i8 6, label %bb.q
    i8 7, label %bb.r
  ]

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !5556, !noalias !5558
  store i64 10, ptr %0, align 8, !alias.scope !5556, !noalias !5558
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models1__NtB2t_6ActionNtB1l_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit

default.unreachable:                              ; preds = %bb.ar, %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5554
  call void @_RINvXsf_NtCseqDwI8vvjGQ_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.as), !noalias !5556
  %i.au = load i64, ptr %i.q, align 8, !range !165, !noalias !5554, !noundef !4
  %i.av = icmp eq i64 %i.au, 2
  br i1 %i.av, label %bb.s, label %bb.t

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5554
  call void @_RINvXsf_NtCseqDwI8vvjGQ_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.as), !noalias !5556
  %i.aw = load i64, ptr %i.p, align 8, !range !2196, !noalias !5554, !noundef !4
  %i.ax = icmp eq i64 %i.aw, -9223372036854775807
  br i1 %i.ax, label %bb.v, label %bb.w

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5554
  call void @_RINvXsf_NtCseqDwI8vvjGQ_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.as), !noalias !5556
  %i.ay = load i64, ptr %i.o, align 8, !range !165, !noalias !5554, !noundef !4
  %i.az = icmp eq i64 %i.ay, 2
  br i1 %i.az, label %bb.y, label %bb.z

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5554
  call void @_RINvXsf_NtCseqDwI8vvjGQ_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(none) dereferenceable(240) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.as), !noalias !5556
  %i.ba = load i64, ptr %i.n, align 8, !range !165, !noalias !5554, !noundef !4
  %i.bb = icmp eq i64 %i.ba, 2
  br i1 %i.bb, label %bb.ab, label %bb.ac

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5554
end_hunk_0
